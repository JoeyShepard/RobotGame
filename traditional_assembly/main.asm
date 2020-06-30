
;Main code
;=========
	;Unlimited lines per page in listing
	PAGE 0
DEBUG_MODE set "off"
	
	;Macros at very beginning
	include macros.asm
	include xmacros.asm
	
EEPROM set $C000
GENRAM set $200
	
OrgROM MACRO {GLOBALSYMBOLS}
GENRAM set *
	ORG EEPROM
	ENDM

OrgRAM MACRO {GLOBALSYMBOLS}
EEPROM set *
	ORG GENRAM
	ENDM	
	
;Variables in zero page
;======================
	ORG $0000
	BYTE RB1_copy
	BYTE RB2_copy
	BYTE RB3_copy
	BYTE RB4_copy
	ZP_locals: DFS 12
	BYTE saveA,saveX
	WORD ret_val
	WORD rand_val
	
;Beginning of EEPROM code
;========================
	;OrgROM			;wont work since overwrites starting RAM location of $200
	ORG $C000		;Set explicitly first time

	;System
	include emu.asm
	include chartable.asm
	include debug.asm
	;Game
	include const.asm
	include game.asm
	include tiles.asm
	include colors.asm
	
;Variables in main RAM
;=====================
	OrgRAM
	;Must come after include const.asm for constants
	include globals.asm
			
;System functions
;================
	
	FUNC EnableGfxRAM
		BANK2 #BANK_GFX_RAM1
		BANK3 #BANK_GFX_RAM2
	END
		
	FUNC EnableBankROM
		BANK2 #BANK_GEN_RAM2
		BANK3 #BANK_GEN_RAM3
	END

	FUNC Setup
		;Data stack (grows down. globals grow up)
		LDX #0
		
		;Banks
		BANK1 #BANK_GEN_RAM1
		;BANK2 #BANK_GEN_RAM2
		;BANK3 #BANK_GEN_RAM3
		CALL EnableGfxRAM
		
		;Init RNG
		MOV.W #$20, rand_val
	END
	
;Utility functions
;=================


	
;Graphics functions
;==================
	;329k cycles vs 1.3m for MOVE in Forth
	FUNC clrscr
		ARGS
			BYTE color
		VARS
			ZPWORD gfx_ptr
			BYTE rows
		END
		
		MOV.B #128,rows
		MOV.W #SCREEN_ADDRESS,gfx_ptr
		LDA color,X
		LDY #0
		.loop_outer:
			.loop_inner:
				STA (gfx_ptr),Y
				DEY
			BNE .loop_inner
			INC gfx_ptr+1
			DEC rows,X
		BNE .loop_outer
	END
	
;Tile functions
;==============
	FUNC CalcXY
		ARGS
			BYTE posx, posy
		END
		MOV posx,ret_val
		LDA #SCREEN_ADDRESS>>8
		CLC
		ADC posy,X
		STA ret_val+1
	END
	
	FUNC TileAddress
		ARGS
			BYTE tile_id
		END
		
		LDA tile_id,X
		ASL
		ADC #tiles#256
		STA ret_val
		LDA #0
		ADC #tiles>>8
		STA ret_val+1
		LDA (ret_val)
		PHA
		INC.W ret_val
		LDA (ret_val)
		STA ret_val+1
		PLA
		STA ret_val
		
	END
	
	FUNC CopyTile
		ARGS
			BYTE dest_id
			BYTE source_id
		VARS
			ZPWORD dest_ptr
			ZPWORD source_ptr
			ZPBYTE row_count
		END
		CALL TileAddress,dest_id
		MOV.W ret_val,dest_ptr
		CALL TileAddress,source_id
		MOV.W ret_val,source_ptr
		LDY #0
		LDA (source_ptr),Y				;width
		STA (dest_ptr),Y
		INY
		LDA (source_ptr),Y				;row_count
		STA (dest_ptr),Y
		STA row_count					;save row count
		INY
		ct.loop:
			LDA (source_ptr),Y
			STA (dest_ptr),Y
			IF_NOT_0
				;copy byte
				INY 
				LDA (source_ptr),Y
				STA (dest_ptr),Y
				INY
				BRA ct.loop				;could fall through and one BRA after endif but slower
			ELSE_IF
				;new row
				DEC row_count
				BEQ ct.done
				INY
				CPY #200				;check for Y overflow only once per row
				BCC ct.loop
					TYA
					SEC
					SBC #200
					TAY
					ADW.B #200,source_ptr
					ADW.B #200,dest_ptr
				BRA ct.loop
			END_IF
		ct.done:
	END
		
	FUNC DrawTile
		ARGS
			BYTE tile, xpos, ypos
		VARS
			ZPBYTE t_width, row_count, t_count, t_color
			ZPWORD gfx_ptr, tile_ptr
		END
		
		CALL CalcXY, xpos, ypos
		MOV.W ret_val, gfx_ptr
		MOV.W #tiles,tile_ptr
		CALL TileAddress, tile		
		MOV.W ret_val,tile_ptr
		LDA (tile_ptr)						;get tile width
		STA	t_width
		LDY #1								;get row count
		LDA (tile_ptr),Y
		STA	row_count
		INY
		dt.loop:
			;t_count=*tile_ptr++;
				;1. INC zp / BNE - 5+2 = 7
				;2. INY / BNE - 2+2 = 4
					;with 26 cycle zp penalty, need 8 iterations to be worth it
			LDA (tile_ptr),Y				;get count of count,color pair
			STA t_count					
			INY								;advance tile_ptr
			IF_EQ
				INC tile_ptr+1
			END_IF
			CMP #0							;count of 0 means new line
			IF_0
				DEC row_count				;decrease row_count
				BEQ dt.return
				LDA #0						;increase gfx_ptr by 256-width
				SEC
				SBC t_width
				ADW.B A,gfx_ptr
				BRA dt.loop
			ELSE_IF
				LDA (tile_ptr),Y			;count not 0. get color of count,color pair
				STA t_color
				INY							;advance tile_ptr
				IF_0
					INC tile_ptr+1
				END_IF
				CMP #COLOR_TRANSPARENT		
				IF_EQ
					ADW.B t_count,gfx_ptr	;if color transparent, advance gfx_ptr
					BRA dt.loop
				ELSE_IF
					;fill in color
					PHY						;save index into tile_ptr
					LDY t_count
					DEY
					LDA t_color
					color.for:
						STA (gfx_ptr),Y
						DEY
					BPL color.for
					LDA t_count				;advance gfx_ptr by number of pixels drawn
					CLC
					ADC gfx_ptr
					STA gfx_ptr
					;only if line of tile extends past screen and wraps (never happens)
					;CARRY gfx_ptr+1
					PLY						;restore index into tile_ptr
				END_IF
			END_IF
		BRA dt.loop
		dt.return:
	END
	
	FUNC DrawTile1bpp
		ARGS
			BYTE tile, xpos, ypos, color1, color2
		VARS
			ZPWORD gfx_ptr,tile_ptr
			ZPBYTE t_width,t_height,edge_style
			ZPBYTE row_count,byte_count,bit_count,t_pixel
			BYTE skip_pixel,trans_row
			BYTE t0,t1,t2,t3
		END
		
		MOV.B #0,byte_count
		MOV.B #0,bit_count
		
		CALL CalcXY, xpos, ypos
		MOV.W ret_val, gfx_ptr
		MOV.W #tiles,tile_ptr
		CALL TileAddress, tile		
		MOV.W ret_val,tile_ptr
		
		LDA (tile_ptr)
		STA	t_width
		LDY #1
		LDA (tile_ptr),Y
		STA t_height
		STA	row_count
		INY
		LDA (tile_ptr),Y
		STA	edge_style
		INY
		
		dt1.loop:
			LDA byte_count
			IF_0
				LDA (tile_ptr),Y
				STA t_pixel
				INY
				
				LDA bit_count
				IF_0
					LDA edge_style
					IF_0
						MOV.B #false,trans_row
					ELSE_IF
						LDA row_count
						CMP #1
						BEQ dt1.row1
						CMP t_height
						BNE dt1.row1_done
						dt1.row1:
							MOV.B #0,t0
							LDA t_width
							DEC
							STA t1,X
							LDA edge_style
							CMP #2
							IF_EQ
								MOV #1,t2
								LDA t_width
								DEC
								DEC
								STA t3,X
							ELSE_IF
								LDA #$FF
								STA t2,X
								STA t3,X
							END_IF
							MOV.B #true,trans_row
							BRA dt1.rows_done	
						dt1.row1_done:
						LDA row_count
						CMP #2
						BEQ dt1.row2a
						LDA t_height
						DEC
						CMP row_count
						BEQ dt1.row2a
						BRA dt1.row_else
						dt1.row2a:
						LDA edge_style
						CMP #2
						IF_EQ
							MOV.B #0,t0
							LDA t_width
							DEC
							STA t1,X
							LDA #$FF
							STA t2,X
							STA t3,X
							MOV.B #true,trans_row
						ELSE_IF
							BRA dt1.row_else
						END_IF
						BRA dt1.rows_done
						dt1.row_else:
							MOV.B #false,trans_row
						dt1.rows_done:
					END_IF
				END_IF
			END_IF
		
			MOV.B #false,skip_pixel
			LDA trans_row,X
			IF_TRUE
				WHICH bit_count
					LIKE t0, t1, t2, t3
						MOV.B #true,skip_pixel	
				END
			END_IF
			dt1.skip_false:
		
			LDA skip_pixel,X
			IF_FALSE
				LDA t_pixel
				IF_MINUS
					LDA color1,X
				ELSE_IF
					LDA color2,X
				END_IF
				
				CMP #COLOR_TRANSPARENT
				IF_NE
					STA (gfx_ptr)
				END_IF
			END_IF
			
			INC.W gfx_ptr
			ASL t_pixel
			
			INC bit_count
			LDA bit_count
			CMP t_width
			IF_EQ
				MOV #0,bit_count
				MOV #0,byte_count
				DEC row_count
				LDA #0
				SEC
				SBC t_width
				ADW.B A,gfx_ptr
			ELSE_IF
				LDA byte_count
				CMP #7
				IF_EQ
					MOV.B #0,byte_count
				ELSE_IF
					INC byte_count
				END_IF
			END_IF
		
			LDA row_count
			JNE dt1.loop
	END
	
	FUNC RotateTile90
		ARGS
			BYTE dest, src
		VARS
			ZPWORD gfx_ptr, dest_ptr
			ZPBYTE t_width, row_count
			ZPBYTE counter
			ZPBYTE new_color,new_count
		END
				
		;CALL CopyTile, dest, src
		CALL DrawTile, src, #0, #0
		CALL TileAddress, dest
		MOV.W ret_val, dest_ptr
		CALL TileAddress, src
		MOV.W ret_val, gfx_ptr			;reuse pointer just long enough to get two byte header from src
		LDY #1
		LDA (gfx_ptr),Y
		STA row_count
		STA (dest_ptr),Y
		DEY								;reverse order to save LDA
		LDA (gfx_ptr),Y
		STA t_width
		STA (dest_ptr),Y
		LDY #2							;point to color pairs of destination
		STZ gfx_ptr						;set X coord to 0
		rt.loop_outer:
			LDA t_width					;point to (0,width) pixel, ie bottom left pixel
			CLC
			ADC #SCREEN_ADDRESS>>8-1
			STA gfx_ptr+1
			MOV.B (gfx_ptr),new_color	;init pair counters
			MOV.B #1,new_count
			DEC gfx_ptr+1
			LDA t_width
			DEC
			STA counter
			rt.loop_inner:
				LDA (gfx_ptr)
				CMP new_color
				IF_EQ
					;same pixel color
					INC new_count
				ELSE_IF
					;new pixel color
					PHA
					LDA new_count
					STA (dest_ptr),Y
					INY
					LDA new_color
					STA (dest_ptr),Y
					INY
					PLA
					STA new_color
					LDA #1
					STA new_count
				END_IF
				DEC gfx_ptr+1
				DEC counter
				BNE rt.loop_inner
			LDA new_count				;write pair followed by 0 for end of row
			STA (dest_ptr),Y
			INY
			LDA new_color
			STA (dest_ptr),Y
			INY
			LDA #0
			STA (dest_ptr),Y
			INY
			INC gfx_ptr					;next column
			CPY #200
			IF_CS
				TYA
				SEC
				SBC #200
				TAY
				ADW.B #200,dest_ptr
			END_IF
			DEC row_count
			BNE rt.loop_outer
	END
	
	FUNC ColorTile
		ARGS
			BYTE tile, color_index
		VARS
			ZPWORD tile_ptr,color_table
			ZPBYTE row_count,t_color,c_size
		END
		
		;set tile_ptr
		CALL TileAddress, tile
		MOV.W ret_val, tile_ptr
		
		;set color_table to item_colors or tile_colors		
		WHICH tile
			LIKE #Robot_left, #Robot_right, #Menu_item_temp
				MOV.W #item_colors,color_table
			DEFAULT
				MOV.W #tile_colors,color_table
		END
		
		;Same in both
		;halt tile_ptr, color_table
		
		LDA color_index,X
		ASL
		ADW.B A,color_table
		LDA (color_table)
		PHA
		LDY #1
		LDA (color_table),Y
		STA color_table+1
		PLA 
		STA color_table
		
		;LDY #1
		LDA (tile_ptr),Y
		STA row_count
		LDA (color_table),Y
		ASL
		ADC #2
		STA c_size
		INY ;point to pixel data of tile_ptr
		
		color.loop1:
			LDA (tile_ptr),Y			
			IF_0
				;new row
				INY
				CPY #200
				IF_GE
					TYA
					SEC
					SBC #200
					TAY
					ADW.B #200,tile_ptr
				END_IF
				DEC row_count
				BNE color.loop1
			ELSE_IF
				;translatable color?
				INY
				LDA (tile_ptr),Y
				STA t_color
				CMP #COLOR_TRANSPARENT+1
				IF_GE
					;translatable color
					PHY			;save index into tile_ptr
					LDY #2		;skip past item type and count of pairs
					;loop through color pairs
					color.loop2:
						LDA t_color
						CMP (color_table),Y
						IF_EQ
							;color found
							INY
							LDA (color_table),Y
							PLY
							STA (tile_ptr),Y
							INY
							BRA color.loop1
						ELSE_IF
							INY
							INY
							TYA
							CMP c_size
							BNE color.loop2
							;restore index into tile_ptr
							PLY
						END_IF
				END_IF
				INY
				BRA color.loop1
			END_IF
	END
	
	tiles_to_color:	FCB Ground_0, Ground_90, Ground_180, Ground_270, Rock, Lava 
					FCB Crystal_red, Crystal_blue, Crystal_yellow
		
	FUNC LoadTiles
		VARS
			BYTE color_tile
		END
		
		CALL CopyTile, #Ground_0, #Ground_raw
		CALL RotateTile90, #Ground_90, #Ground_0
		CALL RotateTile90, #Ground_180, #Ground_90
		CALL RotateTile90, #Ground_270, #Ground_180
		CALL CopyTile, #Rock, #Ground_raw
		CALL CopyTile, #Lava, #Ground_raw
		CALL CopyTile, #Crystal_red, #Crystal_raw
		CALL CopyTile, #Crystal_blue, #Crystal_raw
		CALL CopyTile, #Crystal_yellow, #Crystal_raw
		
		LDY #0
		lt.loop:
			LDA tiles_to_color,Y
			STA color_tile,X
			PHY
			CALL ColorTile, color_tile, color_tile
			PLY
			INY
			CPY #9	;9 tile IDs to color
			BNE lt.loop
		
	END
	
	FUNC ColorHero
		CALL CopyTile, #Robot_left, #Robot_left_raw
		CALL ColorTile, #Robot_left, hero_equipped+head
		CALL ColorTile, #Robot_left, hero_equipped+body
		CALL ColorTile, #Robot_left, hero_equipped+legs
		CALL ColorTile, #Robot_left, hero_equipped+gun
		CALL ColorTile, #Robot_left, hero_equipped+tool
		
		CALL CopyTile, #Robot_right, #Robot_right_raw
		CALL ColorTile, #Robot_right, hero_equipped+head
		CALL ColorTile, #Robot_right, hero_equipped+body
		CALL ColorTile, #Robot_right, hero_equipped+legs
		CALL ColorTile, #Robot_right, hero_equipped+gun
		CALL ColorTile, #Robot_right, hero_equipped+tool
	END

	
;Game logic
;==========
	FUNC rand
		;r^=r<<7
		LDA rand_val+1
		CLC
		ROR
		LDA rand_val
		ROR
		EOR rand_val+1
		STA rand_val+1
		LDA #0
		ROR
		EOR rand_val
		STA rand_val
		;r^=r>>9
		LDA rand_val+1
		CLC
		ROR
		EOR rand_val
		STA rand_val
		;LDA #0
		;EOR rand_val+1
		;STA rand_val+1
		;r^=r<<8
		LDA rand_val
		EOR rand_val+1
		STA rand_val+1
		;LDA #0
		;EOR rand_val
		;STA rand_val
	END
	
	FUNC rand8
		ARGS
			BYTE max
		VARS
			WORD divisor
		END
		
		CALL rand
		MOV.W rand_val,ret_val
		LDA max,X
		STA divisor+1,X
		STZ divisor,X
		
		r8.loop:
			SBW.W divisor, ret_val
			BCS r8.loop
			;addback fall through
			ADW.W divisor, ret_val
			;rotate divisor
			CLC
			ROR.W divisor
			;if num>255, keep subtracting
			LDA ret_val+1
			BNE r8.loop
			;num>=divisor?
			LDA ret_val
			CMP max,X
			BCS r8.loop
		
	END
	
	FUNC rand5050
		CALL rand
		LDA rand_val
		AND #1
		STA ret_val
	END
	
	FUNC CalcStats
		VARS 
			BYTE Mine1s, Drill1s
			BYTE item_counter, stat_counter, stat_max, stat_ID, stat_val
			ZPWORD item_ptr, stat_ptr
		END
		
		;hero_HP_Max
		LDA hero_HP_Upgrade
		CLC
		ADC #2
		STA hero_HP_Max_temp
		;hero_Batt_Max
		LDA hero_Batt_Upgrade
		CLC
		ADC #3
		STA hero_Batt_Max
		
		MOV.B hero_Dmg_Upgrade,hero_Dmg
		MOV.B #8,hero_Mine_Speed
		MOV.B #12,hero_Drill_Speed
		MOV.B #1,hero_Batt_Recharge
		MOV.B #5,hero_Crit_Rate
		MOV.B #0,hero_HP_Recharge
		MOV.B #0,hero_Lava_Res
		MOV.W #4,hero_Lava_Dmg
		MOV.B #4,hero_Dmg_Cost
		MOV.B #2,hero_Mine_Cost
		MOV.B #2,hero_Drill_Cost
		MOV.B #false,Mine1s
		MOV.B #false,Drill1s
	
		MOV.B #0,item_counter
		cs.loop:
			LDY item_counter,X
			LDA hero_equipped,Y
			ASL
			TAY
			LDA item_stats,Y
			STA item_ptr
			LDA item_stats+1,Y
			STA item_ptr+1
			LDY #stat_count
			LDA (item_ptr),Y
			STA stat_max,X
			STZ stat_counter,X
			cs.stats:
				LDA stat_counter,X
				ASL
				ADC #stat_begin
				TAY
				LDA (item_ptr),Y
				PHY
				STA stat_ID,X
				ASL
				TAY
				LDA stat_pointers,Y
				STA stat_ptr
				LDA stat_pointers+1,Y
				STA stat_ptr+1
				PLY
				INY
				LDA (item_ptr),Y
				STA stat_val,X
				;check if stat_ptr == stat_special which is 0
				LDA stat_ptr
				ORA stat_ptr+1
				IF_0
					LDA stat_ID,X
					WHICH
						LIKE #stat_Mine
							LDA hero_Mine_Speed
							SEC
							SBC stat_val,X
							STA hero_Mine_Speed
						LIKE #stat_Mine1s
							MOV.B #true,Mine1s
						LIKE #stat_Drill
							LDA hero_Drill_Speed
							SEC
							SBC stat_val,X
							STA hero_Drill_Speed
						LIKE #stat_Drill1s
							MOV.B #true,Drill1s
						LIKE #stat_Lava_Heals
							MOV.W #$FFFF, hero_Lava_Dmg	;=-1
						LIKE #stat_Dmg_Cost_50
							MOV.B #2,hero_Dmg_Cost
						LIKE #stat_Mine_Cost_50
							MOV.B #1,hero_Mine_Cost
					END
				ELSE_IF
					LDA stat_val,X
					CLC
					ADC (stat_ptr)
					STA (stat_ptr)
				END_IF
				
				INC stat_counter,X
				LDA stat_counter,X
				CMP stat_max,X
				JNE cs.stats
			INC item_counter,X
			LDA item_counter,X
			CMP #SLOT_COUNT
			JNE cs.loop
		
			LDA skill_list+Fast_Digger
			IF_TRUE
				DEC hero_Mine_Speed
				DEC hero_Mine_Speed
				DEC hero_Drill_Speed
				DEC hero_Drill_Speed
			END_IF

		LDA Mine1s,X
		IF_TRUE
			MOV.B #1,hero_Mine_Speed
		END_IF
		
		LDA Drill1s,X
		IF_TRUE
			MOV.B #1,hero_Drill_Speed
		END_IF
		
		LDA skill_list+Lucky_Crit
		IF_TRUE
			LDA hero_Crit_Rate
			CLC
			ADC #20
			STA hero_Crit_Rate
		END_IF
		
		LDA hero_Lava_Dmg
		AND hero_Lava_Dmg+1
		CMP #$FF
		IF_NE
			WHICH hero_Lava_Res
				LIKE #25
					MOV.W #3,hero_Lava_Dmg
				LIKE #50
					MOV.W #2,hero_Lava_Dmg
			END
		END_IF
		
		MOV.B hero_HP_Max_temp,hero_HP_Max
		
		LDA hero_HP_Max
		CMP hero_HP
		IF_LT
			MOV.W hero_HP_Max,hero_HP
		END_IF
		
		LDA hero_Batt_Max
		CMP hero_Batt
		IF_LT
			MOV.B hero_Batt_Max,hero_Batt
		END_IF
	
	END
	
;Map functions
;=============
	FUNC MazeHorizStripe
		ARGS
			BYTE value
		VARS
			BYTE stripe_X, stripe_Y, stripe_width, stripe_height
			BYTE stripe_dx, stripe_dy
			ZPWORD map_ptr
			BYTE c_buff,counter
		END
		
		CALL rand8, #MAP_WIDTH
		MOV.B ret_val,stripe_X
		CALL rand8, #MAP_HEIGHT
		MOV.B ret_val,stripe_Y
		
		CALL rand8, #MAP_LAVA_SIZE-1
		LDA ret_val
		CLC
		ADC #1
		STA stripe_width,X
		
		CALL rand8, #MAP_LAVA_SIZE-1
		LDA ret_val
		CLC
		ADC #1
		STA stripe_height,X
		
		CALL rand5050
		MOV.B ret_val,stripe_dx
		CALL rand5050
		MOV.B ret_val,stripe_dy
				
		;MOV.W #map_data,map_ptr
		LDA #map_data#256
		CLC
		ADC stripe_X,X
		STA map_ptr
		LDA #map_data>>8
		ADC #0
		STA map_ptr+1
		
		LDY stripe_Y,X
		IF_NOT_0
			mhs.mult:
				ADW.B #MAP_WIDTH,map_ptr
				DEY
				BNE mhs.mult
		END_IF

		mhs.height:
			LDY stripe_width,X
			mhs.width:
				LDA stripe_X,X
				CMP #MAP_WIDTH
				BCS mhs.done
				LDA stripe_Y,X
				CMP #MAP_HEIGHT
				BCS mhs.done
					LDA value,X
					STA (map_ptr)
				LDA stripe_dx,X
				IF_NOT_0
					DEC stripe_X,X
					BMI mhs.done
					DEC.W map_ptr
				ELSE_IF
					INC stripe_X,X
					INC.W map_ptr
				END_IF
				DEY
				BNE mhs.width
			LDA stripe_dy,X
			IF_NOT_0
				DEC stripe_Y,X
				BMI mhs.done
				SBW.B #MAP_WIDTH,map_ptr
			ELSE_IF
				INC stripe_Y,X
				ADW.B #MAP_WIDTH,map_ptr
			END_IF
			DEC stripe_height,X
			BNE mhs.height
		mhs.done:
	END
	
	FUNC FillMap
		ARGS
			WORD ptr_in
			BYTE value
		VARS
			ZPWORD map_ptr
			BYTE counter
		END
		
		MOV.W ptr_in,map_ptr
		MOV.B #MAP_HEIGHT/5,counter			;instead of 20 loops of 40 do 4 loops of 200
		fm.loop_outer:
			LDA value,X
			LDY #MAP_WIDTH*5
			fm.loop:
				DEY
				STA (map_ptr),Y
				BNE fm.loop
			ADW.B #200,map_ptr
			DEC counter,X
			BNE fm.loop_outer
			
	END
	
	FUNC OffsetXY
		ARGS
			WORD map
			BYTE mX, mY
		END
		
		MOV.W map,ret_val
		LDY mY,X
		oxy.mult:
			IF_NOT_0
				ADW.B #MAP_WIDTH,ret_val
				DEY
				BRA oxy.mult
			END_IF
		ADW.B mX,ret_val
	END
	
	FUNC MapXY
		ARGS
			WORD map
			BYTE mX, mY
		END
		
		MOV.W map,ret_val
		LDY mY,X
		mxy.mult:
			IF_NOT_0
				ADW.B #MAP_WIDTH,ret_val
				DEY
				BRA mxy.mult
			END_IF
		LDY mX,X
		LDA (ret_val),Y
		STA ret_val
	END
	
	FUNC MakeMap
		VARS
			ZPWORD map_ptr
			BYTE counter
		END
		
		;Clear map
		CALL FillMap, #map_data, #MAP_BLANK

		;Lava stripes
		LDY #MAP_LAVA_COUNT
		mm.lava_loop:
			PHY
			CALL MazeHorizStripe, #MAP_LAVA
			PLY
			DEY
			BNE mm.lava_loop
			
		;Rock stripes
		LDY #MAP_WALL_COUNT
		mm.rock_loop:
			PHY
			CALL MazeHorizStripe, #MAP_ROCK
			PLY
			DEY
			BNE mm.rock_loop
	
		;Dirt variations
		MOV.W #map_data,map_ptr
		MOV.B #MAP_HEIGHT/5,counter			;instead of 20 loops of 40 do 4 loops of 200
		LDY #0
		mm.blank_loop:
			LDA (map_ptr),Y
			CMP #MAP_BLANK
			IF_EQ
				CALL rand8, #4
				LDA ret_val
				WHICH
					LIKE #1
						LDA #MAP_BLANK_90
					LIKE #2
						LDA #MAP_BLANK_180
					LIKE #3
						LDA #MAP_BLANK_270
					DEFAULT
						LDA #MAP_BLANK
				END
				STA (map_ptr),Y
			END_IF
			INY
			CPY #MAP_WIDTH*5
			BNE mm.blank_loop
		LDY #0
		ADW.B #MAP_WIDTH*5,map_ptr
		DEC counter,X
		BNE mm.blank_loop
		
		;Blank tile for hero
		CALL OffsetXY, #map_data, #HERO_START_X, #HERO_START_Y
		MOV.B #MAP_BLANK,(ret_val)
		
		;Exit
		CALL rand8, #MAP_HEIGHT/2
		LDA ret_val
		CLC 
		ADC #MAP_HEIGHT/2
		STA counter,X
		CALL rand8, #MAP_WIDTH/2
		LDA ret_val
		CLC
		ADC #MAP_WIDTH/2
		STA ret_val
		CALL OffsetXY, #map_data, ret_val, counter
		MOV.B #MAP_EXIT, (ret_val)
	END
	
	FUNC CheckForMonster
		ARGS
			BYTE mX, mY
		END
		
		CALL MapXY, #monster_map, mX, mY
		LDA ret_val
		STZ ret_val
		STA mX,X			;reuse variable
		CMP #NO_MONSTER
		
		IF_NE
			ASL
			CLC
			ADC mX,X
			ADC #MONSTER_ALIVE
			TAY
			LDA monster_list,Y
			STA ret_val
		END_IF
	END
		
	FUNC CheckForCrystal
		ARGS
			BYTE mX, mY
		END
		
		CALL MapXY, #crystal_map, mX, mY
		LDA ret_val
		STZ ret_val
		CMP #NO_CRYSTAL
		IF_NE
			ASL
			ASL
			CLC
			ADC #CRYSTAL_ACTIVE
			TAY
			LDA crystal_list,Y
			STA ret_val
		END_IF
	END	
		
	FUNC LoadMonsters
		VARS
			BYTE mX,mY,counter
		END
		CALL FillMap, #monster_map, #NO_MONSTER
		MOV.B #0,counter		;count of monsters
		lm.loop:
			CALL rand8, #MAP_WIDTH
			MOV.B ret_val,mX
			CALL rand8, #MAP_HEIGHT
			MOV.B ret_val,mY
			
			;Don't put monster on hero
			;(mY still in A)
			CMP #HERO_START_Y
			IF_EQ
				LDA mX,X
				CMP #HERO_START_X
				IF_EQ
					BRA lm.loop
				END_IF
			END_IF
			
			CALL CheckForMonster,mX,mY
			LDA ret_val
			IF_FALSE
				CALL MapXY, #map_data, mX, mY
				LDA ret_val
				WHICH
					LIKE #MAP_BLANK, #MAP_BLANK_90, #MAP_BLANK_180, #MAP_BLANK_270
						CALL OffsetXY, #monster_map, mX, mY
						LDA counter,X
						STA (ret_val)
						ASL
						ADC counter,X
						TAY
						LDA mX,X
						STA monster_list,Y
						INY 
						LDA mY,X
						STA monster_list,Y
						INY 
						LDA #true
						STA monster_list,Y
						LDA counter,X
						INC
						CMP #MONSTER_COUNT
						BEQ lm.done
						STA counter,X
						JMP lm.loop
				END
			END_IF
			JMP lm.loop
		lm.done:
		
	END
	
	FUNC LoadCrystals
		VARS
			BYTE mX,mY,counter
		END
		CALL FillMap, #crystal_map, #NO_CRYSTAL
		;LDY #0		;count of crystals
		MOV.B #0,counter
		lc.loop:
			CALL rand8, #MAP_WIDTH
			MOV.B ret_val,mX
			CALL rand8, #MAP_HEIGHT
			MOV.B ret_val,mY
			
			;Don't put crystal on hero
			;(mY still in A)
			CMP #HERO_START_Y
			IF_EQ
				LDA mX,X
				CMP #HERO_START_X
				IF_EQ
					BRA lc.loop
				END_IF
			END_IF
			
			CALL CheckForMonster, mX, mY
			LDA ret_val
			IF_FALSE
				CALL CheckForCrystal, mX, mY
				LDA ret_val
				IF_FALSE
					CALL MapXY, #map_data, mX, mY
					LDA ret_val
					WHICH
						LIKE #MAP_BLANK, #MAP_BLANK_90, #MAP_BLANK_180, #MAP_BLANK_270
							CALL OffsetXY, #crystal_map, mX, mY
							LDA counter,X
							STA (ret_val)
							ASL
							ASL
							TAY
							;X
							LDA mX,X
							STA crystal_list,Y
							INY 
							;Y
							LDA mY,X
							STA crystal_list,Y
							INY 
							;active
							LDA #true
							STA crystal_list,Y
							INY
							;color
							CALL rand8, #3
							WHICH ret_val
								LIKE #0
									LDA #CRYSTAL_RED_TYPE
								LIKE #1
									LDA #CRYSTAL_BLUE_TYPE
								LIKE #2
									LDA #CRYSTAL_YELLOW_TYPE
							END
							STA crystal_list,Y
							LDA counter,X
							INC
							CMP #CRYSTAL_COUNT
							BEQ lc.done
							STA counter,X
							JRA lc.loop
					END
				END_IF
			END_IF
			JMP lc.loop
		lc.done:
		
	END
	
	FUNC UpdateTarget
		VARS
			BYTE tX,tY
		END
		LDA display_X
		CLC
		ADC hero_X
		STA tX,X
		LDA display_Y
		CLC
		ADC hero_Y
		STA tY,X
		MOV.B #target_none,hero_target_type
		WHICH hero_target_direction
			LIKE #DIRECTION_UP
				LDA hero_Y
				JEQ ut.done
				DEC tY,X
			LIKE #DIRECTION_DOWN
				LDA hero_Y
				CMP #FRAME_HEIGHT-1
				JEQ ut.done
				INC tY,X
			LIKE #DIRECTION_LEFT
				LDA hero_X
				JEQ ut.done
				DEC tX,X
			LIKE #DIRECTION_RIGHT
				LDA hero_X
				CMP #FRAME_WIDTH-1
				JEQ ut.done
				INC tX,X
		END
		MOV.B tX,hero_target_index
		MOV.B tY,hero_target_index2
		CALL MapXY, #map_data, tX, tY
		WHICH ret_val
			LIKE #MAP_ROCK
				MOV.B #target_rock,hero_target_type
			LIKE #MAP_EXIT
				MOV.B #target_exit,hero_target_type
			DEFAULT
				CALL CheckForMonster, tX, tY
				LDA ret_val
				IF_TRUE
					MOV.B #target_monster,hero_target_type
					CALL MapXY, #monster_map, tX, tY
					MOV.B ret_val,hero_target_index
				ELSE_IF
					CALL CheckForCrystal, tX, tY
					LDA ret_val
					IF_TRUE
						MOV.B #target_crystal,hero_target_type
						CALL MapXY, #crystal_map, tX, tY
						MOV.B ret_val,hero_target_index
					END_IF						
				END_IF
		END
		ut.done:
	END
	
;Drawing functions
;=================
	FUNC DrawRect	;Note width of 256 will come in as 256#256=0. still works with Y index
		ARGS
			BYTE xpos, ypos, width, height, color
		VARS
			ZPWORD gfx_ptr
			ZPBYTE x_end	;since can't do CPY addr,X
		END
		LDA width,X
		BEQ dr.done
		CALL CalcXY, #0, ypos
		MOV.W ret_val, gfx_ptr
		LDA xpos,X
		CLC
		ADC width,X
		STA x_end
		dr.loop_outer:
			LDY xpos,X
			LDA color,X
			dr.loop:
				STA (gfx_ptr),Y
				INY
				CPY x_end
				BNE dr.loop
			INC gfx_ptr+1
			DEC height,X
			BNE dr.loop_outer
		dr.done:
	END

	FUNC DrawText
		ARGS
			STRING str_ptr
			BYTE arg1, arg2, ypos, fg_color, bg_color
		VARS
			ZPWORD gfx_ptr, char_ptr
			BYTE digit_count, digit, subtractor, character, original_X
		END
		
		MOV.B draw_X, original_X
		CALL CalcXY, draw_X, ypos
		MOV.W ret_val,gfx_ptr
		MOV #0,digit_count
		dtxt.loop:
			LDA digit_count,X
			IF_NOT_0
				;calculate digit to print
				LDA digit_count,X
				WHICH
					LIKE #1
						LDA #1
					LIKE #2
						LDA #10
					LIKE #3
						LDA #100
				END
				DEC digit_count,X
				STA subtractor,X
				MOV.B #'0', character
				dtxt.digit:
					LDA digit,X
					SEC
					SBC subtractor,X
					IF_CS
						STA digit,X
						INC character,X
						BRA dtxt.digit
					ELSE_IF
						;A already loaded
						CLC
						ADC subtractor,X
						STA digit,X
					END_IF
				LDA character,X
			ELSE_IF
				dtxt.next:
				LDA (str_ptr,X)
				JEQ dtxt.done
				INC.W str_ptr,X
				CMP #'$'
				IF_EQ
					MOV.B #1,digit_count
					MOV.B arg1,digit
					PHA
					MOV.B arg2,arg1
					PLA
					CMP #10
					BCC dtxt.loop
					INC digit_count,X
					CMP #100
					BCC dtxt.loop
					INC digit_count,X
					JRA dtxt.loop
				ELSE_IF
					CMP #'*'
					IF_EQ
						MOV.B original_X,gfx_ptr
						ADW.W #TEXT_SPACING_Y*SCREEN_WIDTH,gfx_ptr
						BRA dtxt.next
					END_IF
				END_IF
			END_IF
			
			;(char-32)*8
			SEC
			SBC #32	;32 is first printable character
			STZ char_ptr+1
			ASL
			ROL char_ptr+1
			ROL
			ROL char_ptr+1
			ROL
			ROL char_ptr+1
			
			;CLC already clear
			ADC #CharTable#256
			STA char_ptr
			LDA char_ptr+1
			ADC #CharTable>>8
			STA char_ptr+1
			
			;loop through rows of letter
			LDY #0
			dtxt.row:
				LDA (char_ptr),Y
				PHY
				LDY #6
				CLC
				dtxt.pixel:
					ROR
					PHA
					IF_CC
						LDA bg_color,X
					ELSE_IF
						CLC
						LDA fg_color,X
					END_IF
					STA (gfx_ptr)
					INC gfx_ptr
					PLA
					DEY
					BNE dtxt.pixel
				LDA gfx_ptr
				SEC
				SBC #6
				STA gfx_ptr
				INC gfx_ptr+1
				PLY
				INY
				CPY #8
				BNE dtxt.row
			LDA gfx_ptr
			CLC
			ADC #6
			STA gfx_ptr
			LDA gfx_ptr+1
			SEC
			SBC #8
			STA gfx_ptr+1
			JMP dtxt.loop
		dtxt.done:
	END

	FUNC DrawBar
		ARGS
			BYTE xpos, ypos, stat1, stat2, fg_color, bg_color
		VARS
			ZPWORD bar_width, mult_buff, div_buff
		END

		;multiply stat1 by BAR_WIDTH
		MOV.W stat1,bar_width
		;Hard code shifts and adds for BAR_WIDTH which is 80 = 64 + 16
		CLC
		ROL.W bar_width
		ROL.W bar_width
		ROL.W bar_width
		ROL.W bar_width
		MOV.W bar_width,mult_buff
		ROL.W bar_width
		ROL.W bar_width
		ADW.W bar_width,mult_buff
		;divide total by stat2
		MOV.W #0,bar_width			;final width of bar
		LDA stat2,X
		STA div_buff+1				;divisor
		STZ div_buff
		MOV.W #$100,ret_val			;added into result
		dbar.div1:
			SBW.W div_buff,mult_buff
			IF_CS
				;add to total
				ADW.W ret_val,bar_width
				BRA dbar.div1
			END_IF
			ADW.W div_buff,mult_buff
			CLC
			ROR.W div_buff
			CLC
			ROR.W ret_val
			LDA ret_val
			ORA ret_val+1
			BNE dbar.div1
		;bar_width is now correct
		
		;draw bar
		CALL DrawRect, xpos, ypos, bar_width, #BAR_HEIGHT, fg_color
		LDA xpos,X
		CLC
		ADC bar_width
		STA xpos,X
		LDA #BAR_WIDTH
		SEC
		SBC bar_width
		STA bar_width
		CALL DrawRect, xpos, ypos, bar_width, #BAR_HEIGHT, bg_color
			
	END

	FUNC DrawLegend	
		VARS
			ZPWORD gfx_ptr, map_ptr
			BYTE height, if_monster, if_crystal
			ZPBYTE mX, mY
		END
		
		;Background
		CALL DrawRect, #LEGEND_LEFT, #LEGEND_TOP, #LEGEND_WIDTH, #LEGEND_HEIGHT, #COLOR_LEGEND_BG
		
		;Draw stats
		MOV.B #LEGEND_LEFT+LEGEND_STATS_LEFT,draw_X
		CALL DrawText, "HP:$/$", hero_HP, hero_HP_Max, #LEGEND_HP_TOP, #COLOR_WHITE, #COLOR_LEGEND_BG
		CALL DrawBar, #LEGEND_LEFT+LEGEND_STATS_LEFT, #LEGEND_HP_BAR_TOP, hero_HP, hero_HP_Max, #COLOR_RED, #COLOR_DARK_RED	
		
		MOV.B #LEGEND_LEFT+LEGEND_STATS_LEFT,draw_X
		CALL DrawText, "Batt:$/$", hero_Batt, hero_Batt_Max, #LEGEND_BATT_TOP, #COLOR_WHITE, #COLOR_LEGEND_BG
		CALL DrawBar, #LEGEND_LEFT+LEGEND_STATS_LEFT, #LEGEND_BATT_BAR_TOP, hero_Batt, hero_Batt_Max, #COLOR_BLUE, #COLOR_DARK_BLUE
		
		MOV.B #LEGEND_LEFT+LEGEND_STATS_LEFT,draw_X
		CALL DrawText, "Exp:$/$", hero_Exp, hero_Exp_Max, #LEGEND_EXP_TOP, #COLOR_WHITE, #COLOR_LEGEND_BG
		CALL DrawBar, #LEGEND_LEFT+LEGEND_STATS_LEFT, #LEGEND_EXP_BAR_TOP, hero_Exp, hero_Exp_Max, #COLOR_GREEN, #COLOR_DARK_GREEN
		
		;Draw target
		WHICH hero_target_type
			LIKE #target_rock
				MOV.B #LEGEND_LEFT+LEGEND_STATS_LEFT,draw_X
				CALL DrawText,"Rock",#0,#0,#LEGEND_TARGET_TOP,#COLOR_ROCK,#COLOR_LEGEND_BG
			LIKE #target_exit
				MOV.B #LEGEND_LEFT+LEGEND_STATS_LEFT,draw_X
				CALL DrawText,"Exit",#0,#0,#LEGEND_TARGET_TOP,#COLOR_EXIT,#COLOR_LEGEND_BG
			LIKE #target_monster
				MOV.B #LEGEND_LEFT+LEGEND_STATS_LEFT,draw_X
				CALL DrawText,"Evil robot",#0,#0,#LEGEND_TARGET_TOP,#COLOR_MONSTER,#COLOR_LEGEND_BG
			LIKE #target_crystal
				MOV.B #LEGEND_LEFT+LEGEND_STATS_LEFT,draw_X
				LDA hero_target_index
				ASL
				ASL
				ADC #CRYSTAL_COLOR
				TAY
				LDA crystal_list,Y
				WHICH
					LIKE #CRYSTAL_RED_TYPE
						CALL DrawText,"Crystal",#0,#0,#LEGEND_TARGET_TOP,#COLOR_CRYSTAL_RED1,#COLOR_LEGEND_BG
					LIKE #CRYSTAL_BLUE_TYPE
						CALL DrawText,"Crystal",#0,#0,#LEGEND_TARGET_TOP,#COLOR_CRYSTAL_BLUE1,#COLOR_LEGEND_BG
					LIKE #CRYSTAL_YELLOW_TYPE
						CALL DrawText,"Crystal",#0,#0,#LEGEND_TARGET_TOP,#COLOR_CRYSTAL_YELLOW1,#COLOR_LEGEND_BG
				END
		END
		
		;Draw progress bar
		LDA hero_activity
		IF_TRUE
			CALL DrawBar, #LEGEND_LEFT+LEGEND_STATS_LEFT, #LEGEND_TARGET_BAR_TOP, hero_activity_ticks, hero_activity_ticks_max, #COLOR_PURPLE, #COLOR_DARK_PURPLE
		END_IF
		
		;Draw mini map
		MOV.W #map_data,map_ptr
		CALL CalcXY, #(LEGEND_LEFT+LEGEND_MAZE_LEFT),#LEGEND_MAZE_TOP
		MOV.W ret_val,gfx_ptr
		MOV.B #MAP_HEIGHT,height
		MOV.B #0,mX
		MOV.B #0,mY
		dl.loop_outer:
			LDY #0	;X pos into map
			dl.loop:
				MOV.B #false,if_monster
				MOV.B #false,if_crystal
				PHY
				CALL CheckForMonster, mX, mY
				MOV.B ret_val, if_monster
				CALL CheckForCrystal, mX, mY
				MOV.B ret_val, if_crystal
				PLY
				
				LDA mX
				INC
				CMP #MAP_WIDTH
				IF_NE
					STA mX
				ELSE_IF
					STZ mX
					INC mY
				END_IF
				
				LDA if_monster,X
				IF_TRUE
					LDA #COLOR_RED
					BRA dl.pixel
				END_IF
				
				LDA if_crystal,X
				IF_TRUE
					LDA #COLOR_YELLOW
					BRA dl.pixel
				END_IF
				
				
				LDA (map_ptr),Y
				WHICH
					LIKE #MAP_BLANK, #MAP_BLANK_90, #MAP_BLANK_180, #MAP_BLANK_270
						LDA #COLOR_DIRT
					LIKE #MAP_ROCK
						LDA #COLOR_ROCK
					LIKE #MAP_LAVA
						LDA #COLOR_LAVA
					LIKE #MAP_EXIT
						LDA #COLOR_EXIT
					DEFAULT
						LDA #COLOR_WHITE
				END
				
				dl.pixel:
				;Draw 2x2 square
				PHY
				PHA
				TYA
				ASL
				TAY
				PLA
				STA (gfx_ptr),Y
				INY
				STA (gfx_ptr),Y
				INC gfx_ptr+1
				STA (gfx_ptr),Y
				DEY
				STA (gfx_ptr),Y
				DEC gfx_ptr+1
				PLY
				INY
				CPY #MAP_WIDTH
				JNE dl.loop
			LDA #LEGEND_LEFT+LEGEND_MAZE_LEFT
			STA gfx_ptr
			INC gfx_ptr+1
			INC gfx_ptr+1
			ADW.B #MAP_WIDTH,map_ptr
			DEC height,X
			JNE dl.loop_outer
		
		;Draw green rectangle on mini map
		;(reuse map_ptr)
		LDA display_X
		ASL
		ADC #LEGEND_LEFT+LEGEND_MAZE_LEFT
		STA gfx_ptr
		STA map_ptr			;reuse as second gfx_ptr
		LDA display_Y
		ASL
		ADC #LEGEND_MAZE_TOP+(SCREEN_ADDRESS>>8)
		STA gfx_ptr+1
		ADC #FRAME_HEIGHT*2-1
		STA map_ptr+1
		
		;horizontal lines
		LDY #0
		LDA #COLOR_GREEN
		dl.hline:
			STA (gfx_ptr),Y
			STA (map_ptr),Y
			INY
			CPY #FRAME_WIDTH*2
			BNE dl.hline
		
		;vertical lines
		LDA gfx_ptr
		CLC
		ADC #FRAME_WIDTH*2-1
		STA map_ptr
		INC gfx_ptr+1
		MOV.B gfx_ptr+1,map_ptr+1
		LDY #(FRAME_HEIGHT-1)*2
		LDA #COLOR_GREEN
		dh.vline:
			STA (gfx_ptr)
			STA (map_ptr)
			INC gfx_ptr+1
			INC map_ptr+1
			DEY
			BNE dh.vline
	
	END
	
	FUNC DrawFrame
		VARS
			BYTE tile,i,j
			WORD map_ptr, monster_ptr, crystal_ptr
		END
		
		CALL OffsetXY, #map_data, display_X, display_Y
		MOV.W ret_val,map_ptr
		CALL OffsetXY, #monster_map, display_X, display_Y
		MOV.W ret_val,monster_ptr
		CALL OffsetXY, #crystal_map, display_X, display_Y
		MOV.W ret_val,crystal_ptr
		
		STZ i,X
		STZ j,X
		df.loop_y:
			df.loop_x:
				;Draw tiles
				LDA (map_ptr,X)
				WHICH 
					LIKE #MAP_BLANK
						MOV.B #Ground_0,tile
					LIKE #MAP_BLANK_90
						MOV.B #Ground_90,tile
					LIKE #MAP_BLANK_180
						MOV.B #Ground_180,tile
					LIKE #MAP_BLANK_270
						MOV.B #Ground_270,tile
					LIKE #MAP_ROCK
						MOV.B #Rock,tile
					LIKE #MAP_LAVA
						MOV.B #Lava,tile
					LIKE #MAP_EXIT
						MOV.B #ExitID,tile
				END
				CMP #ExitID
				IF_EQ
					CALL DrawTile1bpp, #ExitID, i, j, #COLOR_BLACK, #COLOR_BLUE
				ELSE_IF
					CALL DrawTile, tile, i, j
				END_IF
				INC.W map_ptr,X
				
				;Draw monsters
				LDA (monster_ptr,X)
				CMP #NO_MONSTER
				IF_NE
					ASL
					ADC (monster_ptr,X)
					ADC #MONSTER_ALIVE
					TAY
					LDA monster_list,Y
					IF_TRUE
						CALL DrawTile, #Monster, i, j
					ELSE_IF
						CALL DrawTile, #Monster_dead, i, j
					END_IF
				END_IF
				INC.W monster_ptr,X
				
				;Draw crystals
				LDA (crystal_ptr,X)
				CMP #NO_CRYSTAL
				IF_NE
					ASL
					ASL
					PHA
					ADC #CRYSTAL_ACTIVE
					TAY 
					LDA crystal_list,Y
					IF_TRUE
						PLA
						CLC
						ADC #CRYSTAL_COLOR
						TAY
						LDA crystal_list,Y
						WHICH
							LIKE #CRYSTAL_RED_TYPE
								CALL DrawTile, #Crystal_red, i, j
							LIKE #CRYSTAL_BLUE_TYPE
								CALL DrawTile, #Crystal_blue, i, j
							LIKE #CRYSTAL_YELLOW_TYPE
								CALL DrawTile, #Crystal_yellow, i, j
						END
					ELSE_IF
						PLA
						CALL DrawTile, #Crystal_base, i, j
					END_IF
				END_IF
				INC.W crystal_ptr,X
				
				LDA i,X
				CLC
				ADC #32
				STA i,X
				CMP #32*FRAME_WIDTH
				JNE df.loop_x
			ADW.B #MAP_WIDTH-FRAME_WIDTH,map_ptr
			ADW.B #MAP_WIDTH-FRAME_WIDTH,monster_ptr
			ADW.B #MAP_WIDTH-FRAME_WIDTH,crystal_ptr
			STZ i,X
			LDA j,X
			CLC
			ADC #32
			STA j,X
			CMP #32*FRAME_HEIGHT
						
		IF_NE
			JMP df.loop_y
		END_IF
		
		;Draw hero
		LDA hero_X
		ASL
		ASL
		ASL
		ASL
		ASL
		STA i,X
		LDA hero_Y
		ASL
		ASL
		ASL
		ASL
		ASL
		STA j,X
		LDA hero_facing
		CMP #DIRECTION_LEFT
		IF_EQ
			CALL DrawTile, #Robot_left, i, j
		ELSE_IF
			CALL DrawTile, #Robot_right, i, j
		END_IF
		
		;Draw target
		WHICH hero_target_direction
			LIKE #DIRECTION_UP
				LDA j,X
				BEQ df.no_draw
				SEC
				SBC #32
				STA j,X
			LIKE #DIRECTION_DOWN
				LDA j,X
				CMP #32*(FRAME_HEIGHT-1)
				BEQ df.no_draw
				CLC
				ADC #32
				STA j,X
			LIKE #DIRECTION_LEFT
				LDA i,X
				BEQ df.no_draw
				SEC
				SBC #32
				STA i,X
			LIKE #DIRECTION_RIGHT
				LDA i,X
				CMP #32*(FRAME_WIDTH-1)
				BEQ df.no_draw
				CLC
				ADC #32
				STA i,X
		END
		
		CALL DrawTile1bpp, #Hero_target, i, j, #COLOR_GREEN, #COLOR_TRANSPARENT
		df.no_draw:
	END
	
;Menu functions
;==============
	FUNC DrawBorder
		ARGS
			BYTE xpos, ypos, width, height, color
		VARS
			ZPWORD gfx_ptr1,gfx_ptr2
		END
		DEC width,X
		DEC height,X
		LDA xpos,X
		STA gfx_ptr1
		STA gfx_ptr2
		LDA ypos,X
		CLC
		ADC #SCREEN_ADDRESS>>8
		STA gfx_ptr1+1
		ADC height,X
		STA gfx_ptr2+1
		LDY width,X
		LDA color,X
		db.hline:
			STA (gfx_ptr1),Y
			STA (gfx_ptr2),Y
			DEY
			BNE db.hline
		LDA gfx_ptr1 
		CLC
		ADC width,X
		STA gfx_ptr2
		LDA gfx_ptr1+1
		STA gfx_ptr2+1
		LDY height,X
		INY
		LDA color,X
		db.vline:
			STA (gfx_ptr1)
			STA (gfx_ptr2)
			INC gfx_ptr1+1
			INC gfx_ptr2+1
			DEY
			BNE db.vline
		
	END

	FUNC DrawMenuBorder
		VARS
			BYTE counter,width,height
		END
		CALL DrawRect,#1,#1,#SCREEN_WIDTH-2,#MENU_BORDER_SIZE+TEXT_LINE_HEIGHT,#COLOR_MENU_BORDER
		CALL DrawRect,#1,#SCREEN_HEIGHT-MENU_BORDER_SIZE,#SCREEN_WIDTH-2,#MENU_BORDER_SIZE-1,#COLOR_MENU_BORDER
		;CALL DrawRect,#1,#MENU_BORDER_SIZE+TEXT_LINE_HEIGHT+1,#MENU_BORDER_SIZE-1,#SCREEN_HEIGHT-MENU_BORDER_SIZE*2-TEXT_LINE_HEIGHT-1,#COLOR_MENU_BORDER
		CALL DrawRect,#1,#MENU_BORDER_SIZE+TEXT_LINE_HEIGHT+1,#MENU_BORDER_SIZE-1,#$67,#COLOR_MENU_BORDER
		;CALL DrawRect,#SCREEN_WIDTH-MENU_BORDER_SIZE,#MENU_BORDER_SIZE+TEXT_LINE_HEIGHT+1,#MENU_BORDER_SIZE-1,#SCREEN_HEIGHT-MENU_BORDER_SIZE*2-TEXT_LINE_HEIGHT-1,#COLOR_MENU_BORDER
		CALL DrawRect,#SCREEN_WIDTH-MENU_BORDER_SIZE,#MENU_BORDER_SIZE+TEXT_LINE_HEIGHT+1,#MENU_BORDER_SIZE-1,#103,#COLOR_MENU_BORDER	
		CALL DrawBorder,#0,#0,#SCREEN_WIDTH,#SCREEN_HEIGHT,#COLOR_BLACK
		CALL DrawBorder,#MENU_BORDER_SIZE,#MENU_BORDER_SIZE,#SCREEN_WIDTH-MENU_BORDER_SIZE*2,#SCREEN_HEIGHT-MENU_BORDER_SIZE*2,#COLOR_BLACK
		
		MOV.B #1,counter
		dmb.loop:
			LDA #SCREEN_WIDTH#256
			CLC
			SBC counter,X
			STA width,X
			LDA #SCREEN_HEIGHT
			CLC
			SBC counter,X
			STA height,X
			CALL CalcXY,counter,counter
			MOV.B #COLOR_BLACK,(ret_val)
			CALL CalcXY,width,counter
			MOV.B #COLOR_BLACK,(ret_val)
			CALL CalcXY,width,height
			MOV.B #COLOR_BLACK,(ret_val)
			CALL CalcXY,counter,height
			MOV.B #COLOR_BLACK,(ret_val)
			LDA counter,X
			INC
			CMP #MENU_BORDER_SIZE
			STA counter,X
			BNE dmb.loop
		MOV.B #MENU_CHAR_LEFT,draw_X
		CALL DrawText,"[C]haracter",#0,#0,#MENU_TITLE_TOP,#COLOR_WHITE,#COLOR_MENU_CHAR
		MOV.B #MENU_SKILL_LEFT,draw_X
		CALL DrawText,"S[k]ills",#0,#0,#MENU_TITLE_TOP,#COLOR_WHITE,#COLOR_MENU_SKILLS
		MOV.B #MENU_RES_LEFT,draw_X
		CALL DrawText,"[R]esources",#0,#0,#MENU_TITLE_TOP,#COLOR_WHITE,#COLOR_MENU_RESOURCES
		CALL DrawRect,#MENU_SKILL_LEFT-1,#MENU_TITLE_TOP,#1,#TEXT_LINE_HEIGHT,#COLOR_MENU_SKILLS
	END
	
	tile_src:	FCB Menu_head,Menu_body,Menu_legs,Menu_gun,Menu_tool
	FUNC DrawItem
		ARGS
			BYTE tile, xpos, ypos
		VARS
			ZPWORD temp_ptr
		END
		LDA tile,X
		ASL
		TAY
		LDA item_stats,Y
		STA temp_ptr
		LDA item_stats+1,Y
		STA temp_ptr+1
		LDY #type
		LDA (temp_ptr),Y
		TAY
		LDA tile_src,Y
		STA temp_ptr
		CALL CopyTile, #Menu_item_temp, temp_ptr
		CALL ColorTile, #Menu_item_temp, tile
		CALL DrawTile, #Menu_item_temp, xpos, ypos
	END
	
	FUNC DrawItemStats
		ARGS
			BYTE item, xpos, ypos, bg_color
		VARS
			BYTE stat_y, count, counter, temp_color, temp_stat
			WORD title
			ZPWORD stat_ptr, item_ptr
		END
		
		LDA item,X
		ASL
		TAY
		LDA item_stats,Y
		STA stat_ptr
		LDA item_stats+1,Y
		STA stat_ptr+1
		LDY #type
		LDA (stat_ptr),Y
		CMP #stat_Res_Only
		IF_EQ
			;text
			LDY #description
			LDA (stat_ptr),Y
			ASL
			TAY
			LDA res_descriptions,Y
			STA stat_ptr
			LDA res_descriptions+1,Y
			STA stat_ptr+1
			
			;x, y
			LDA xpos,X
			INC
			INC
			STA draw_X
			INC ypos,X
			INC ypos,X
			
			;DrawTextNL(res_descriptions[item_stats[item][description]],x + 2,y + 2, TEXT_SPACING_Y, COLOR_WHITE, bg_color);
			CALL DrawText, stat_ptr, #0, #0, ypos, #COLOR_WHITE, bg_color
		ELSE_IF
			CALL DrawItem, item, xpos, ypos
			;title
			LDA item,X
			ASL
			TAY
			LDA item_titles,Y
			STA title,X
			LDA item_titles+1,Y
			STA title+1,X
			
			;x
			LDA xpos,X
			CLC
			ADC #MENU_CHAR_BOX_TITLE_OFFSET_X
			STA draw_X
			
			;y
			LDA ypos,X
			CLC
			ADC #MENU_CHAR_BOX_TITLE_OFFSET_Y
			STA stat_y,X
			
			;color
			LDA item,X
			ASL
			TAY
			LDA item_stats,Y
			STA stat_ptr
			LDA item_stats+1,Y
			STA stat_ptr+1
			LDY #quality
			LDA (stat_ptr),Y
			TAY
			LDA title_colors,Y
			STA temp_color,X
			
			CALL DrawText, title, #0, #0, stat_y, #COLOR_BLACK, temp_color
			
			;y
			LDA ypos,X
			CLC
			ADC #MENU_CHAR_BOX_STAT_OFFSET_Y
			STA stat_y,X
			
			;stat count
			LDA item,X
			ASL
			TAY
			LDA item_stats,Y
			STA item_ptr
			LDA item_stats+1,Y
			STA item_ptr+1
			LDY #stat_count
			LDA (item_ptr),Y
			STA count,X
			STZ counter,X
			dis.stats:
				;item_ptr still points to item_stats[item]
				;stat_ID
				LDA counter,X
				ASL
				ADC #stat_begin
				TAY
				LDA (item_ptr),Y
				;STA stat_ID,X
				TAY
				
				;color
				LDA stat_description_colors,Y
				STA temp_color,X
				
				;title
				TYA
				ASL
				TAY
				LDA stat_descriptions,Y
				STA title,X
				LDA stat_descriptions+1,Y
				STA title+1,X
				
				;stat
				LDA counter,X
				ASL
				ADC #stat_begin+1
				TAY
				LDA (item_ptr),Y
				STA temp_stat,X
				
				;x
				LDA xpos,X
				CLC
				ADC #MENU_CHAR_BOX_STAT_OFFSET_X
				
				;bg_color
				LDA temp_color,X
				CMP bg_color,X
				IF_EQ
					MOV.B #COLOR_RED,temp_color
				END_IF
				
				CALL DrawText, title, temp_stat, #0, stat_y, temp_color, bg_color
				
				LDA stat_y,X
				CLC
				ADC #10
				STA stat_y,X
			INC counter,X
			LDA counter,X
			CMP count,X
			BNE dis.stats
		END_IF
	END
	
	FUNC DrawMenuInventory
		VARS
			BYTE i,j,ypos,xpos,index,item_type
			ZPWORD item_ptr
		END
		
		CALL DrawRect, #MENU_CHAR_BOX_LEFT, #MENU_CHAR_BOX1_TOP, #MENU_CHAR_BOX_WIDTH, #MENU_CHAR_BOX_HEIGHT, #MENU_CHAR_BOX_COLOR
		CALL DrawRect, #MENU_CHAR_BOX_LEFT, #MENU_CHAR_BOX2_TOP, #MENU_CHAR_BOX_WIDTH, #MENU_CHAR_BOX_HEIGHT, #MENU_CHAR_BOX_COLOR
		
		STZ index,X
		MOV.B #0,i
		dmi.loopy:
			MOV.B #0,j
			dmi.loopx:
				LDA j,X
				ASL
				ASL
				ASL
				ASL
				ADC #MENU_CHAR_GRID_LEFT
				STA xpos,X
				LDA i,X
				ASL
				ASL
				ASL
				ASL
				ADC #MENU_CHAR_GRID_TOP
				STA ypos,X
				CALL DrawTile,#Menu_item_slot,xpos,ypos
				LDY index,X
				LDA hero_inventory,Y
				CMP #item_none
				IF_NE
					ASL
					TAY
					LDA item_stats,Y
					STA item_ptr
					LDA item_stats+1,Y
					STA item_ptr+1
					LDY #type
					LDA (item_ptr),Y
					CMP #stat_Res_Only
					IF_NE
						STA item_type,X
						LDY index,X
						LDA hero_inventory,Y
						STA item_ptr
						CALL DrawItem, item_ptr, xpos, ypos
						LDA menu_char_x
						CMP j,X
						IF_EQ
							LDA menu_char_y
							CMP i,X
							IF_EQ
								LDY item_type,X
								LDA hero_equipped,Y
								STA item_ptr
								CALL DrawItemStats, item_ptr, #MENU_CHAR_BOX_LEFT, #MENU_CHAR_BOX1_TOP, #MENU_CHAR_BOX_COLOR
								LDY index,X
								LDA hero_inventory,Y
								STA item_ptr
								CALL DrawItemStats, item_ptr, #MENU_CHAR_BOX_LEFT, #MENU_CHAR_BOX2_TOP, #MENU_CHAR_BOX_COLOR
								CALL DrawTile1bpp,#Menu_item_selector,#MENU_CHAR_BOX_LEFT,#MENU_CHAR_BOX2_TOP, #COLOR_TRANSPARENT, #COLOR_GREEN
							END_IF
						END_IF
					END_IF
				END_IF
				INC index,X
				INC j,X
				LDA j,X
				CMP #MENU_CHAR_BOX_X_COUNT
				JNE dmi.loopx
			INC i,X
			LDA i,X
			CMP #MENU_CHAR_BOX_Y_COUNT
			JNE dmi.loopy
		CALL DrawRect, #MENU_CHAR_GRID_LEFT, #MENU_CHAR_GRID_LINE_TOP, #MENU_CHAR_GRID_LINE_WIDTH, #1, #COLOR_BLACK
		CALL DrawRect, #MENU_CHAR_GRID_LINE_LEFT, #MENU_CHAR_GRID_TOP, #1, #MENU_CHAR_GRID_LINE_HEIGHT, #COLOR_BLACK
		LDA menu_char_x
		ASL
		ASL
		ASL
		ASL
		CLC
		ADC #MENU_CHAR_GRID_LEFT
		STA xpos,X
		LDA menu_char_y
		ASL
		ASL
		ASL
		ASL
		CLC
		ADC #MENU_CHAR_GRID_TOP
		STA ypos,X
		
		CALL DrawTile1bpp, #Menu_item_selector, xpos, ypos, #COLOR_TRANSPARENT, #COLOR_GREEN
	END
	
	ds.tops: 	FCB MENU_SKILL_BOX1_TOP,MENU_SKILL_BOX2_TOP,MENU_SKILL_BOX3_TOP
	ds.colors:	FCB MENU_SKILL_BOX1_COLOR,MENU_SKILL_BOX2_COLOR,MENU_SKILL_BOX3_COLOR
	ds.color1:	FCB 4,16,1
	ds.color2:	FCB 8,53,23
	FUNC DrawSkills
		VARS
			BYTE row, column, index, left, top, color, color2
			BYTE mult_buff, index_buff
			ZPWORD str_ptr
		END
		
		CALL DrawRect, #MENU_SKILL_DBOX_LEFT, #MENU_SKILL_DBOX_TOP, #MENU_SKILL_DBOX_WIDTH, #MENU_SKILL_DBOX_HEIGHT, #MENU_SKILL_DBOX_COLOR
		
		MOV.B #Skill0,index
		MOV.B #0,row
		ds.rows:
			LDY row,X
			LDA ds.tops,Y
			STA top,X
			LDA ds.colors,Y
			STA color,X
			CALL DrawRect, #MENU_SKILL_BOX_LEFT, top, #MENU_SKILL_BOX_WIDTH, #MENU_SKILL_BOX_HEIGHT, color
			MOV.B #0,column
			ds.columns:
				;left
				;hard code x*MENU_SKILL_X_SPACING = x*28
				LDA column,X
				ASL 	;*2
				ASL 	;*4
				STA mult_buff,X
				ASL 	;*8
				ASL 	;*16
				ASL 	;*32
				SEC
				SBC mult_buff,X
				CLC
				ADC #MENU_SKILL_SKILL_LEFT
				STA left,X
				
				;top
				;hard code y*MENU_SKILL_Y_SPACING = x*30
				LDA row,X
				ASL 	;*2
				STA mult_buff,X
				ASL		;*4
				ASL		;*8
				ASL		;*16
				ASL		;*32
				SEC
				SBC mult_buff,X
				CLC
				ADC #MENU_SKILL_SKILL_TOP
				STA top,X
				
				LDA index,X
				SEC
				SBC #Skill0
				TAY
				LDA skill_list,Y
				IF_TRUE
					LDY row,X
					LDA ds.color1,Y
					STA color,X
					LDA ds.color2,Y
					STA color2,X
					CALL DrawTile1bpp, index, left, top , color, color2
				ELSE_IF
					CALL DrawTile1bpp, index, left, top , #COLOR_GRAY_1, #COLOR_GRAY_2
				END_IF
				
				;skill selector
				LDA menu_skills_x
				CMP column,X
				IF_EQ
					LDA menu_skills_y
					CMP row,X
					IF_EQ
						CALL DrawTile1bpp, #Menu_skill_selector, left, top, #COLOR_TRANSPARENT, #COLOR_GREEN
					
						;skill title
						LDA menu_skills_y
						ASL
						ASL
						CLC
						ADC menu_skills_y
						ADC menu_skills_x
						ASL
						STA index_buff,X			;save index for skill description
						TAY
						LDA skill_titles,Y
						STA str_ptr
						LDA skill_titles+1,Y
						STA str_ptr+1
						LDY #0
						ds.title:
							LDA (str_ptr),Y
							BEQ ds.title_done
							INY
							BNE ds.title
						ds.title_done:
						;hard code x*6
						TYA
						ASL
						STA mult_buff,X
						ASL
						CLC
						ADC mult_buff,X
						STA mult_buff,X
						LDA #MENU_SKILL_DBOX_WIDTH
						SEC
						SBC mult_buff,X
						LSR
						CLC
						ADC #MENU_SKILL_DBOX_LEFT
						STA draw_X
						LDY menu_skills_y
						LDA ds.color2,Y
						STA color,X
						CALL DrawText, str_ptr, #0, #0, #MENU_SKILL_DBOX_TITLE_TOP, #COLOR_WHITE, color
						
						;skill description
						LDY index_buff,X
						LDA skill_descriptions,Y
						STA str_ptr
						LDA skill_descriptions+1,Y
						STA str_ptr+1
						MOV.B #MENU_SKILL_DBOX_TEXT_LEFT,draw_X
						CALL DrawText, str_ptr, #0, #0, #MENU_SKILL_DBOX_TEXT_TOP, #COLOR_WHITE, #MENU_SKILL_DBOX_COLOR
						
						;Upgrade[Enter]
						LDA index_buff,X
						LSR
						TAY
						LDA skill_list,Y
						IF_FALSE
							LDA menu_skills_x
							BEQ ds.upgrade
							DEY
							LDA skill_list,Y
							IF_TRUE
								ds.upgrade:
								MOV.B #MENU_SKILL_UPGRADE_LEFT,draw_X
								CALL DrawText, "[Enter]Upgrade", #0, #0, #MENU_SKILL_UPGRADE_TOP, #COLOR_YELLOW, #MENU_SKILL_DBOX_COLOR
							END_IF
						END_IF
					END_IF
				END_IF
					
				INC index,X
				INC column,X
				LDA column,X
				CMP #5
				JNE ds.columns
			INC row,X
			LDA row,X
			CMP #3
			JNE ds.rows
	END
		
	;multiply with Y as iterator. returns in A
DresMult MACRO num1, num2
	LDA #0
	CLC
	LDY num2,X
	loop:
		BEQ done
		ADC num1
		DEY
		BNE loop
	done:
	ENDM	
		
	dres.colors: 	FCB 8,53,50,10,42,42
	dres.items:		FCB Res_HP_Heal, Res_Batt_Heal, Res_Exp_Upgrade, Res_HP_Upgrade, Res_Batt_Upgrade, Res_Dmg_Upgrade
	FUNC DrawResources
		VARS
			BYTE row, column, tile_index, draw_item
			BYTE left, top, color, color2, item
			BYTE temp_cost, mult_buff
			ZPWORD item_ptr
		END
		LDA #item_none
		STA menu_res_target
		STA draw_item,X
		CALL DrawRect, #MENU_RES_BOX_LEFT, #MENU_RES_BOX_TOP, #MENU_RES_BOX_WIDTH, #MENU_RES_BOX_HEIGHT, #MENU_RES_BOX_COLOR
		MOV.B #0,row
		dres.rows:
			LDA row,X
			INC
			STA tile_index,X
			
			;left
			DresMult #MENU_RES_BLOCK_WIDTH,row
			ADC #MENU_RES_BLOCK_LEFT
			STA left,X
			
			;color
			LDY row,X
			LDA dres.colors,Y
			STA color,X
			
			CALL DrawRect, left, #MENU_RES_BLOCK_TOP, #MENU_RES_BLOCK_WIDTH, #2+MENU_RES_BLOCK_HEIGHT*5, color
			
			MOV.B #0,column
			dres.columns:
				LDA row,X
				CMP #4
				IF_LT
					;left
					DresMult #MENU_RES_BLOCK_WIDTH,row
					ADC #MENU_RES_ITEM_LEFT
					STA left,X
					
					;top
					DresMult #MENU_RES_BLOCK_HEIGHT,column
					ADC #MENU_RES_ITEM_TOP
					STA top,X
					
					CALL DrawItem, tile_index, left, top
					
					MOV.B tile_index,draw_item
					LDA tile_index,X
					CLC
					ADC #5
					STA tile_index,X
				ELSE_IF
					LDA column,X
					CMP #3
					IF_LT
						;item
						LDA row,X
						SEC
						SBC #4
						STA mult_buff,X
						ASL
						ADC mult_buff,X
						ADC column,X
						TAY
						LDA dres.items,Y
						STA item,X
						
						;left
						DresMult #MENU_RES_BLOCK_WIDTH,row
						ADC #MENU_RES_ITEM_LEFT
						STA left,X
						
						;top
						DresMult #MENU_RES_BLOCK_HEIGHT,column
						ADC #MENU_RES_ITEM_TOP
						STA top,X
						
						;colors
						LDA item,X
						WHICH
							LIKE #Res_HP_Heal, #Res_HP_Upgrade
								MOV.B #MENU_RES_HP_COLOR1,color
								MOV.B #MENU_RES_HP_COLOR2,color2
							LIKE #Res_Batt_Heal, #Res_Batt_Upgrade
								MOV.B #MENU_RES_BATT_COLOR1,color
								MOV.B #MENU_RES_BATT_COLOR2,color2
							LIKE #Res_Exp_Upgrade, #Res_Dmg_Upgrade
								MOV.B #MENU_RES_EXP_COLOR1,color
								MOV.B #MENU_RES_EXP_COLOR2,color2
						END
						
						CALL DrawTile1bpp, item, left, top, color, color2
						
						LDA column,X
						ASL
						CLC
						ADC row,X
						;SEC
						;SBC #4
						;CLC
						;ADC #25
						CLC
						ADC #21				;Skip past items to Res_only section
						STA draw_item,X
					ELSE_IF
						MOV.B #item_none,draw_item
					END_IF
				END_IF
				
				LDA row,X
				CMP menu_res_x
				IF_EQ
					LDA column,X
					CMP menu_res_y
					IF_EQ
						;;left
						;DresMult #MENU_RES_BLOCK_WIDTH,row
						;ADC #MENU_RES_ITEM_LEFT
						;STA left,X
						
						;top
						DresMult #MENU_RES_BLOCK_HEIGHT,column
						ADC #MENU_RES_ITEM_TOP
						STA top,X
						
						CALL DrawTile1bpp, #Menu_item_selector, left, top, #COLOR_TRANSPARENT, #COLOR_GREEN 
						
						LDA draw_item,X
						CMP #item_none
						IF_NE
							CALL DrawItemStats, draw_item, #MENU_RES_BOX_LEFT, #MENU_RES_BOX_TOP, #MENU_RES_BOX_COLOR
							MOV.B draw_item,menu_res_target
						END_IF
					END_IF
				END_IF
				
				INC column,X
				LDA column,X
				CMP #5
				JNE dres.columns
			INC row,X
			LDA row,X
			CMP #6
			JNE dres.rows
		
		LDA menu_res_target
		CMP #item_none
		IF_NE
			;cost
			ASL
			TAY
			LDA item_stats,Y
			STA item_ptr
			LDA item_stats+1,Y
			STA item_ptr+1
			LDY #cost
			LDA (item_ptr),Y
			STA temp_cost,X
			
			;color
			LDY #cost_type
			LDA (item_ptr),Y
			TAY
			LDA crystal_colors,Y
			STA color,X
			
			MOV.B #MENU_RES_COST_LEFT,draw_X
			CALL DrawText, "Cost: $",temp_cost, #0, #MENU_RES_COST_TOP, color, #MENU_RES_BOX_COLOR
		END_IF
	END
	
	FUNC DrawMenu
		VARS
			BYTE stat_y, counter, temp_stat, temp_color
			WORD stat_ptr
		END
		
		WHICH output_mode
			LIKE #OUTPUT_CHARACTER
				CALL DrawRect,#MENU_BG_LEFT,#MENU_BG_TOP,#MENU_BG_WIDTH,#MENU_BG_HEIGHT,#COLOR_MENU_CHAR
				
				;Robot
				CALL DrawTile,#Robot_right,#MENU_CHAR_ROBOT_LEFT,#MENU_CHAR_ROBOT_TOP
				
				;Stats
				MOV.B #MENU_CHAR_HP_TOP,stat_y
				STZ counter,X
				dm.loop:
					LDA counter,X
					ASL
					TAY
					LDA hero_stat_pointers,Y
					STA stat_ptr,X
					LDA hero_stat_pointers+1,Y
					STA stat_ptr+1,X
					ORA hero_stat_pointers,Y
					IF_0
						MOV.B hero_HP_Max,temp_stat
					ELSE_IF
						LDA (stat_ptr,X)
						STA temp_stat,X
					END_IF
					LDA hero_stat_texts,Y
					STA stat_ptr,X
					LDA hero_stat_texts+1,Y
					STA stat_ptr+1,X
					LDY counter,X
					LDA hero_stat_colors,Y
					STA temp_color,X
					MOV.B #MENU_CHAR_STAT_LEFT,draw_X
					CALL DrawText,stat_ptr,temp_stat,#0,stat_y,temp_color,#COLOR_MENU_CHAR
					LDA stat_y,X
					CLC
					ADC #9
					STA stat_y,X
					LDA counter,X
					INC
					STA counter,X
					CMP #HERO_STAT_COUNT
					BNE dm.loop
				
				CALL DrawMenuInventory
				
			LIKE #OUTPUT_SKILLS
				CALL DrawRect, #MENU_BG_LEFT, #MENU_BG_TOP, #MENU_BG_WIDTH, #MENU_BG_HEIGHT, #COLOR_MENU_SKILLS
				MOV.B #MENU_SKILL_POINTS_LEFT,draw_X
				CALL DrawText, "Points: $", hero_Points, #0, #MENU_SKILL_POINTS_TOP, #COLOR_WHITE, #COLOR_MENU_SKILLS
				CALL DrawSkills
				
			LIKE #OUTPUT_RESOURCES
				CALL DrawRect, #MENU_BG_LEFT, #MENU_BG_TOP, #MENU_BG_WIDTH, #MENU_BG_HEIGHT, #COLOR_MENU_RESOURCES
				CALL DrawRect, #MENU_RES_MONEY_LEFT, #MENU_RES_MONEY_TOP, #MENU_RES_MONEY_WIDTH, #MENU_RES_MONEY_HEIGHT, #COLOR_BLACK
				MOV.B #MENU_RES_MONEY_RED_LEFT,draw_X
				CALL DrawText, "$", hero_Red, #0, #MENU_RES_MONEY_VAL_TOP, #COLOR_CRYSTAL_RED1, #COLOR_BLACK
				MOV.B #MENU_RES_MONEY_BLUE_LEFT,draw_X
				CALL DrawText, "$", hero_Blue, #0, #MENU_RES_MONEY_VAL_TOP, #COLOR_CRYSTAL_BLUE1, #COLOR_BLACK
				MOV.B #MENU_RES_MONEY_YELLOW_LEFT,draw_X
				CALL DrawText, "$", hero_Yellow, #0, #MENU_RES_MONEY_VAL_TOP, #COLOR_CRYSTAL_YELLOW1, #COLOR_BLACK
				
				CALL DrawResources
				
		END
	END

;Tick handler functions
;======================
	FUNC CheckHP
		VARS
			WORD temp
		END

		LDA hero_HP+1
		BMI chp.dead
		ORA hero_HP
		BEQ chp.dead
		BRA chp.alive
		chp.dead:
			MOV.W #0,hero_HP
			CALL DrawFrame
			CALL DrawLegend
			CALL DrawRect, #DEAD_LEFT, #DEAD_TOP, #DEAD_WIDTH, #DEAD_HEIGHT, #COLOR_BLACK
			MOV.B #DEAD_MSG_LEFT,draw_X
			CALL DrawText, "You died", #0, #0, #DEAD_MSG_TOP, #COLOR_WHITE, #COLOR_BLACK
			JMP *
		chp.alive:
		LDA hero_HP_Max
		CMP hero_HP
		IF_LT
			MOV.W hero_HP_Max,hero_HP
		END_IF
		chp.done:
	END
	
	FUNC CheckLavaExit
		VARS
			BYTE mX, mY
		END
		
		LDA display_X
		CLC
		ADC hero_X
		STA mX,X
		LDA display_Y
		CLC
		ADC hero_Y
		STA mY,X
		
		CALL MapXY, #map_data, mX, mY
		WHICH ret_val
			LIKE #MAP_LAVA
				;LDA hero_Lava_Dmg
				;AND hero_Lava_Dmg
				;CMP #$FF
				;IF_EQ
				;	INC hero_HP
				;ELSE_IF
				;	SBW.B hero_Lava_Dmg,hero_HP
				;END_IF
				SBW.W hero_Lava_Dmg,hero_HP
				CALL CheckHP
				MOV.B #true,ret_val
				BRA cle.done
			LIKE #MAP_EXIT
				CALL MakeMap
				CALL LoadMonsters
				CALL LoadCrystals
				CALL ResetGame
				MOV.B #true,ret_val
				BRA cle.done
		END
		MOV.B #false,ret_val
		cle.done:
	END
	
	FUNC AddExp
		ARGS
			BYTE exp
		END
		
		LDA hero_Exp
		CLC
		ADC exp,X
		STA hero_Exp
		CMP hero_Exp_Max
		IF_GE
			LDA hero_Exp
			SEC
			SBC hero_Exp_Max
			STA hero_Exp
			LDA hero_Exp_Max
			CLC
			ADC #10
			STA hero_Exp_Max
			INC hero_Level
			INC hero_Points
			MOV.W hero_HP_Max,hero_HP
			MOV.B hero_Batt_Max,hero_Batt
			
			LDA skill_list+Wise_Rewards
			IF_TRUE
				CALL rand8, #3
				WHICH ret_val
					LIKE #0
						LDA hero_Blue
						CLC
						ADC #5
						STA hero_Blue
					LIKE #1
						LDA hero_Red
						CLC
						ADC #5
						STA hero_Red
					LIKE #2
						LDA hero_Yellow
						CLC
						ADC #5
						STA hero_Yellow
				END
			END_IF
		END_IF
		
	END
	
	FUNC TickHandler
		VARS
			BYTE redraw, original_hp, original_batt, temp_rand, mult_buff, index5
			ZPWORD list_ptr
		END
		MOV.B #false,redraw
		MOV.B hero_HP,original_hp
		MOV.B hero_Batt,original_batt
		
		ADW.B hero_HP_Recharge,hero_HP
		ADW.B hero_Batt_Recharge,hero_Batt
		LDA hero_activity
		IF_TRUE
		
			WHICH hero_target_type
				LIKE #target_crystal
					LDA hero_Batt
					CMP hero_Mine_Cost
					IF_GE
						LDA skill_list+Battery_Saver
						BEQ th.batt_saver
						CALL rand8, #5
						LDA ret_val
						BEQ th.batt_saver_done
						th.batt_saver:
							LDA hero_Batt
							SEC
							SBC hero_Mine_Cost
							STA hero_Batt
						th.batt_saver_done:
												
						INC hero_activity_ticks
						MOV.B #true,redraw
						LDA hero_activity_ticks
						CMP hero_activity_ticks_max
						IF_EQ
							;color
							LDA hero_target_index
							;hard code multiply by 4
							ASL
							ASL
							CLC
							STA index5,X
							ADC #CRYSTAL_COLOR
							TAY
							LDA crystal_list,Y
							WHICH
								LIKE #CRYSTAL_RED_TYPE
									INC hero_Red
								LIKE #CRYSTAL_BLUE_TYPE
									INC hero_Blue
								LIKE #CRYSTAL_YELLOW_TYPE
									INC hero_Yellow
							END
							LDA skill_list+Master_Miner
							IF_TRUE
								LDA crystal_list,Y
								WHICH
									LIKE #CRYSTAL_RED_TYPE
										INC hero_Red
									LIKE #CRYSTAL_BLUE_TYPE
										INC hero_Blue
									LIKE #CRYSTAL_YELLOW_TYPE
										INC hero_Yellow
								END
								CALL AddExp, #2
							END_IF
							LDA index5,X
							CLC
							ADC #CRYSTAL_ACTIVE
							TAY
							LDA #false
							STA crystal_list,Y
							CALL AddExp,#2
							MOV.B #target_none,hero_target_type
							MOV.B #false,hero_activity
							CALL DrawFrame
							MOV.B #true,redraw
						END_IF
					END_IF
				LIKE #target_rock
					LDA hero_Batt
					CMP hero_Drill_Cost
					IF_GE
						LDA hero_Batt
						SEC
						SBC hero_Drill_Cost
						STA hero_Batt
						INC hero_activity_ticks
						MOV.B #true,redraw
						LDA hero_activity_ticks
						CMP hero_activity_ticks_max
						IF_EQ
							CALL OffsetXY, #map_data, hero_target_index, hero_target_index2
							LDA #MAP_BLANK
							STA (ret_val)
							CALL AddExp, #1
							MOV.B #target_none,hero_target_type
							MOV.B #false,hero_activity
							LDA skill_list+Lucky_Driller
							IF_TRUE
								CALL rand8, #4
								LDA ret_val
								IF_0
									CALL rand8, #3
									WHICH ret_val
										LIKE #0
											INC hero_Red
										LIKE #1
											INC hero_Blue
										LIKE #2
											INC hero_Yellow
									END
									CALL AddExp, #2
								END_IF
							END_IF
							CALL DrawFrame
							MOV.B #true,redraw
						END_IF
					END_IF
				LIKE #target_monster
					LDA hero_Batt
					CMP hero_Dmg_Cost
					IF_GE
						LDA hero_Batt
						SEC
						SBC hero_Dmg_Cost
						STA hero_Batt
						LDA skill_list+Instakill
						IF_TRUE
							CALL rand8,#20
							LDA ret_val
							IF_0
								MOV.B #0,hero_activity_ticks
							END_IF
						END_IF
						LDA hero_activity_ticks
						IF_NOT_0
							SBW.B hero_Dmg,hero_activity_ticks
							CALL rand8, #100
							LDA ret_val
							CMP hero_Crit_Rate
							IF_LT
								LDA skill_list+Crit_Lord
								IF_TRUE
									SBW.B hero_Dmg,hero_activity_ticks
								ELSE_IF
									LDA hero_Dmg
									LSR
									STA mult_buff,X
									SBW.B mult_buff,hero_activity_ticks
								END_IF
							END_IF
						END_IF
						;monster health has gone negative if bit 8 of high byte set
						LDA hero_activity_ticks+1
						BMI th.mob_dead
						;also dead if 0
						ORA hero_activity_ticks
						BEQ th.mob_dead
						;BRA th.mob_done
						JMP th.mob_done
						th.mob_dead:
							LDA hero_target_index
							ASL
							CLC
							ADC hero_target_index
							ADC #MONSTER_ALIVE
							TAY
							LDA #false
							STA monster_list,Y
							LDA skill_list+Experienced
							IF_TRUE
								CALL AddExp, #11
							ELSE_IF
								CALL AddExp, #10
							END_IF
							MOV.B #target_none,hero_target_type
							MOV.B #false,hero_activity
							LDA skill_list+Bounty_Hunter
							IF_TRUE
								CALL rand8, #10
								LDA ret_val
								IF_0
									CALL rand8, #3
									WHICH ret_val
										LIKE #0
											INC hero_Red
										LIKE #1
											INC hero_Blue
										LIKE #2
											INC hero_Yellow
									END
								END_IF
							END_IF
							CALL DrawFrame
						th.mob_done:
						MOV.B #true,redraw
					END_IF
					
					;damage to hero
					CALL rand5050
					LDA ret_val
					IF_NOT_0
						SBW.B #2,hero_HP
					END_IF
			END
		END_IF
		
		LDA hero_Batt_Max
		CMP hero_Batt
		IF_LT
			MOV.B hero_Batt_Max,hero_Batt
		END_IF
		LDA hero_Batt
		CMP original_batt,X
		IF_NE
			MOV.B #true,redraw
		END_IF
		CALL CheckHP
		LDA hero_HP
		CMP original_hp,X
		IF_NE
			MOV.B #true,redraw
		END_IF
		CALL CheckLavaExit
		LDA ret_val
		IF_TRUE
			MOV.B #true,redraw
		END_IF
		LDA redraw,X
		IF_TRUE
			CALL DrawLegend
		END_IF
	END
	
;Input functions
;===============		
	FUNC KeyHandlerGame
		VARS
			BYTE key
			BYTE redraw, mX, mY, or_buff, moved
		END
		
		MOV.B KB_INPUT,key
		WHICH key
			LIKE #'m', #'c'
				MOV.B #OUTPUT_CHARACTER,output_mode
			LIKE #'k'
				MOV.B #OUTPUT_SKILLS,output_mode
			LIKE #'r'
				MOV.B #OUTPUT_RESOURCES,output_mode
		END
		
		LDA output_mode
		CMP #OUTPUT_GAME
		IF_NE
			CALL DrawMenuBorder
			CALL DrawMenu
		ELSE_IF
			MOV.B #false,redraw
			MOV.B #false,moved
			LDA hero_activity
			IF_FALSE
				WHICH key
					LIKE #'w'
						LDA hero_target_direction
						CMP #DIRECTION_UP
						IF_NE
							MOV.B #DIRECTION_UP,hero_target_direction
							MOV.B #true,redraw
						ELSE_IF					
							LDA display_Y
							CLC
							ADC hero_Y
							CMP #1
							IF_GE
								DEC
								STA mY,X
								LDA display_X
								CLC
								ADC hero_X
								STA mX,X
								CALL MapXY, #map_data, mX, mY
								LDA ret_val
								CMP #MAP_ROCK
								IF_NE
									CALL CheckForMonster, mX, mY
									LDA ret_val
									EOR #$FF
									STA or_buff,X
									LDY #SKILL_GHOST
									LDA skill_list,Y
									ORA or_buff,X
									IF_TRUE
										LDA hero_Y
										CMP #2
										IF_GE
											DEC hero_Y
											MOV.B #true,moved
										ELSE_IF
											;LDA hero_Y
											CMP #1
											IF_EQ
												LDA display_Y
												IF_EQ
													MOV.B #0,hero_Y
													MOV.B #true,moved
												ELSE_IF
													DEC display_Y
													MOV.B #true,moved
												END_IF
											END_IF
										END_IF
									END_IF
									LDA moved,X
									IF_TRUE
										CALL CheckLavaExit
									END_IF
								END_IF
							END_IF
						END_IF
					LIKE #'s'
						LDA hero_target_direction
						CMP #DIRECTION_DOWN
						IF_NE
							MOV.B #DIRECTION_DOWN,hero_target_direction
							MOV.B #1,redraw
						ELSE_IF
							LDA display_Y
							SEC
							ADC hero_Y
							CMP #MAP_HEIGHT
							IF_LT
								STA mY,X
								LDA display_X
								CLC
								ADC hero_X
								STA mX,X
								CALL MapXY, #map_data, mX, mY
								LDA ret_val
								CMP #MAP_ROCK
								IF_NE
									CALL CheckForMonster, mX, mY
									LDA ret_val
									EOR #$FF
									STA or_buff,X
									LDY #SKILL_GHOST
									LDA skill_list,Y
									ORA or_buff,X
									IF_TRUE
										LDA hero_Y
										CMP #FRAME_HEIGHT-2
										IF_LT
											INC hero_Y
											MOV.B #true,moved
										ELSE_IF
											;LDA hero_Y
											CMP #FRAME_HEIGHT-2
											IF_EQ
												LDA display_Y
												CMP #MAP_HEIGHT-FRAME_HEIGHT
												IF_EQ
													MOV.B #FRAME_HEIGHT-1,hero_Y
													MOV.B #true,moved
												ELSE_IF
													INC display_Y
													MOV.B #true,moved
												END_IF
											END_IF
										END_IF
									END_IF
									LDA moved,X
									IF_TRUE
										CALL CheckLavaExit
									END_IF
								END_IF
							END_IF
						END_IF
					LIKE #'a'
						LDA hero_facing
						CMP #DIRECTION_RIGHT
						IF_EQ
							MOV.B #DIRECTION_LEFT,hero_facing
							MOV.B #1,redraw
						END_IF
						LDA hero_target_direction
						CMP #DIRECTION_LEFT
						IF_NE
							MOV.B #DIRECTION_LEFT,hero_target_direction
							MOV.B #1,redraw
						ELSE_IF
							LDA display_X
							CLC
							ADC hero_X
							CMP #1
							IF_GE
								DEC
								STA mX,X
								LDA display_Y
								CLC
								ADC hero_Y
								STA mY,X
								CALL MapXY, #map_data, mX, mY
								LDA ret_val
								CMP #MAP_ROCK
								IF_NE
									CALL CheckForMonster, mX, mY
									LDA ret_val
									EOR #$FF
									STA or_buff,X
									LDY #SKILL_GHOST
									LDA skill_list,Y
									ORA or_buff,X
									IF_TRUE
										LDA hero_X
										CMP #2
										IF_GE
											DEC hero_X
											MOV.B #true,moved
										ELSE_IF
											;LDA hero_X
											CMP #1
											IF_EQ
												LDA display_X
												IF_0
													MOV.B #0,hero_X
													MOV.B #true,moved
												ELSE_IF
													DEC display_X
													MOV.B #true,moved
												END_IF
											END_IF
										END_IF
									END_IF
									LDA moved,X
									IF_TRUE
										CALL CheckLavaExit
									END_IF
								END_IF
							END_IF
						END_IF
					LIKE #'d'
						LDA hero_facing
						CMP #DIRECTION_LEFT
						IF_EQ
							MOV.B #DIRECTION_RIGHT,hero_facing
							MOV.B #1,redraw
						END_IF
						LDA hero_target_direction
						CMP #DIRECTION_RIGHT
						IF_NE
							MOV.B #DIRECTION_RIGHT,hero_target_direction
							MOV.B #1,redraw
						ELSE_IF
							LDA display_X
							SEC
							ADC hero_X
							CMP #MAP_WIDTH
							IF_LT
								STA mX,X
								LDA display_Y
								CLC
								ADC hero_Y
								STA mY,X
								CALL MapXY, #map_data, mX, mY
								LDA ret_val
								CMP #MAP_ROCK
								IF_NE
									CALL CheckForMonster, mX, mY
									LDA ret_val
									EOR #$FF
									STA or_buff,X
									LDY #SKILL_GHOST
									LDA skill_list,Y
									ORA or_buff,X
									IF_TRUE
										LDA hero_X
										CMP #3
										IF_LT
											INC hero_X
											MOV.B #true,moved
										ELSE_IF
											;LDA hero_X
											CMP #FRAME_WIDTH-2
											IF_EQ
												LDA display_X
												CMP #MAP_WIDTH-FRAME_WIDTH
												IF_EQ
													MOV.B #FRAME_WIDTH-1,hero_X
													MOV.B #true,moved
												ELSE_IF
													INC display_X
													MOV.B #true,moved
												END_IF
											END_IF
										END_IF
									END_IF
									LDA moved,X
									IF_TRUE
										CALL CheckLavaExit
									END_IF
								END_IF
							END_IF
						END_IF
					LIKE #' '
						WHICH hero_target_type
							LIKE #target_crystal
								MOV.W hero_Mine_Speed,hero_activity_ticks_max
								MOV.W #0,hero_activity_ticks
								MOV.B #true,hero_activity
								MOV.B #true,redraw
							LIKE #target_rock
								MOV.W hero_Drill_Speed,hero_activity_ticks_max
								MOV.W #0,hero_activity_ticks
								MOV.B #true,hero_activity
								MOV.B #true,redraw
							LIKE #target_monster
								MOV.W #MONSTER_HP,hero_activity_ticks_max
								MOV.W #MONSTER_HP,hero_activity_ticks
								MOV.B #true,hero_activity
								MOV.B #true,redraw
						END
				END
			END_IF
		
			LDA redraw,X
			ORA moved,X
			IF_TRUE
				CALL UpdateTarget
				CALL DrawFrame
				CALL DrawLegend
			END_IF
		END_IF
	END
	
	FUNC KeyHandlerMenu
		VARS
			BYTE key
			BYTE temp_item, temp_index, discount, bought
			BYTE redraw, redraw_skills, redraw_resources
			WORD res_total
			ZPWORD item_ptr
		END
		
		MOV.B #false,bought
		MOV.B #false,redraw
		MOV.B #false,redraw_skills
		MOV.B #false,redraw_resources
		
		;Common to all menus
		MOV.B KB_INPUT,key
		WHICH
			LIKE #'m'
				MOV.B #OUTPUT_GAME,output_mode
				CALL DrawFrame
				CALL DrawLegend
				JMP khm.done
			LIKE #'c'
				MOV.B #OUTPUT_CHARACTER,output_mode
				CALL DrawMenu
				JMP khm.done
			LIKE #'k'
				MOV.B #OUTPUT_SKILLS,output_mode
				CALL DrawMenu
				JMP khm.done
			LIKE #'r'
				MOV.B #OUTPUT_RESOURCES,output_mode
				CALL DrawMenu
				JMP khm.done
		END
		
		WHICH output_mode
			LIKE #OUTPUT_CHARACTER
				LDA key,X
				WHICH
					LIKE #'w'
						LDA menu_char_y
						CMP #1
						IF_GE
							DEC menu_char_y
							CALL DrawMenuInventory
						END_IF
					LIKE #'s'
						LDA menu_char_y
						CMP #MENU_CHAR_BOX_Y_COUNT-1
						IF_LT
							INC menu_char_y
							CALL DrawMenuInventory
						END_IF
					LIKE #'d'
						LDA menu_char_x
						CMP #MENU_CHAR_BOX_X_COUNT-1
						IF_LT
							INC menu_char_x
							CALL DrawMenuInventory
						ELSE_IF
							LDA menu_char_y
							CMP #MENU_CHAR_BOX_Y_COUNT-1
							IF_LT
								STZ menu_char_x
								INC menu_char_y
								CALL DrawMenuInventory
							END_IF
						END_IF
					LIKE #'a'
						LDA menu_char_x
						CMP #1
						IF_GE
							DEC menu_char_x
							CALL DrawMenuInventory
						ELSE_IF
							LDA menu_char_y
							CMP #1
							IF_GE
								MOV.B #MENU_CHAR_BOX_X_COUNT-1,menu_char_x
								DEC menu_char_y
								CALL DrawMenuInventory
							END_IF
						END_IF
					LIKE #KEY_ENTER
						LDA menu_char_y
						ASL
						ASL
						ADC menu_char_y
						ADC menu_char_x
						TAY
						LDA hero_inventory,Y
						CMP #item_none
						IF_NE
							STA temp_item,X
							STY temp_index,X
							ASL
							TAY
							LDA item_stats,Y
							STA item_ptr
							LDA item_stats+1,Y
							STA item_ptr+1
							LDY #type
							LDA (item_ptr),Y
							TAY
							LDA hero_equipped,Y
							PHY
							LDY temp_index,X
							STA hero_inventory,Y
							LDA temp_item,X
							PLY
							STA hero_equipped,Y
							CALL ColorHero
							CALL CalcStats
							CALL DrawMenu
						END_IF
				END
			LIKE #OUTPUT_SKILLS
				LDA key,X
				WHICH
					LIKE #'w'
						LDA menu_skills_y
						IF_NOT_0
							DEC menu_skills_y
							CALL DrawSkills
						END_IF
					LIKE #'s'
						LDA menu_skills_y
						CMP #2
						IF_LT
							INC menu_skills_y
							CALL DrawSkills
						END_IF
					LIKE #'a'
						LDA menu_skills_x
						IF_NOT_0
							DEC menu_skills_x
							CALL DrawSkills
						END_IF
					LIKE #'d'
						LDA menu_skills_x
						CMP #4
						IF_LT
							INC menu_skills_x
							CALL DrawSkills
						END_IF
					LIKE #KEY_ENTER
						LDA hero_Points
						IF_NOT_0
							LDA menu_skills_y
							ASL
							ASL
							CLC
							ADC menu_skills_y
							ADC menu_skills_x
							TAY
							LDA skill_list,Y
							IF_FALSE
								LDA menu_skills_x
								BEQ khm.skills
								LDA skill_list-1,Y
								BEQ khm.skills_done
								khm.skills:
									DEC hero_Points
									LDA #true
									STA skill_list,Y
									CALL CalcStats
									MOV.B #true,redraw
								khm.skills_done:
							END_IF
						END_IF
				END
			LIKE #OUTPUT_RESOURCES
				LDA key,X
				WHICH
					LIKE #'w'
						LDA menu_res_y
						IF_NOT_0
							DEC menu_res_y
							CALL DrawResources
						END_IF
					LIKE #'s'
						LDA menu_res_y
						CMP #4
						IF_LT
							INC menu_res_y
							CALL DrawResources
						END_IF
					LIKE #'a'
						LDA menu_res_x
						IF_NOT_0
							DEC menu_res_x
							CALL DrawResources
						END_IF
					LIKE #'d'
						LDA menu_res_x
						CMP #5
						IF_LT
							INC menu_res_x
							CALL DrawResources
						END_IF
					LIKE #KEY_ENTER
						LDA menu_res_target
						CMP #item_none
						IF_NE
							MOV.B #0,discount
							LDA menu_res_x
							CMP #4
							IF_LT
								LDA skill_list+Big_Discount
								IF_TRUE
									MOV.B #1,discount
								END_IF
							END_IF
							
							;setup pointer since needed for both cases below
							LDA menu_res_target
							ASL
							TAY
							LDA item_stats,Y
							STA item_ptr
							LDA item_stats+1,Y
							STA item_ptr+1
							
							LDA skill_list+Crystalsmith
							IF_TRUE
								STZ res_total+1,X
								LDA hero_Red
								CLC
								ADC hero_Blue
								CARRY res_total
								CLC
								ADC hero_Yellow
								CARRY res_total
								STA res_total,X
								
								;if high byte more than 0, total is definitely enough
								LDA res_total+1,X
								BNE khm.res_enough
								;item_ptr already points to item_stat
								LDY #cost
								LDA (item_ptr),Y
								SEC
								SBC discount,X
								STA temp_index,X
								LDA res_total,X
								CMP temp_index,X
								IF_GE
									khm.res_enough:
									LDA skill_list+Free_Lunch
									BEQ khm.res_csmith
									CALL rand8, #5
									LDA ret_val
									BEQ khm.res_csmith_done
										khm.res_csmith:
										LDY #cost
										LDA (item_ptr),Y
										SEC
										SBC discount,X
										STA res_total,X
										
										khm.res_loop_red:
											LDA res_total,X
											BEQ khm.res_loop_blue
											LDA hero_Red
											BEQ khm.res_loop_blue
											DEC res_total,X
											DEC hero_Red
											BRA khm.res_loop_red

										khm.res_loop_blue:
											LDA res_total,X
											BEQ khm.res_loop_yellow
											LDA hero_Blue
											BEQ khm.res_loop_yellow
											DEC res_total,X
											DEC hero_Blue
											BRA khm.res_loop_blue

										khm.res_loop_yellow:
											LDA res_total,X
											BEQ khm.res_csmith_done
											LDA hero_Yellow
											BEQ khm.res_csmith_done
											DEC res_total,X
											DEC hero_Yellow
											BRA khm.res_loop_yellow
											
									khm.res_csmith_done:
									MOV.B #true,bought
									MOV.B #true,redraw
								END_IF
							ELSE_IF
								LDY #cost_type
								LDA (item_ptr),Y
								;above value is for WHICH
								PHA
								;common to all three cases
								LDY #cost
								LDA (item_ptr),Y
								CLC						;extra -1 for <= not <
								SBC discount,X
								TAY
								PLA
								WHICH
									LIKE #CRYSTAL_RED_TYPE
										TYA
										CMP hero_Red
										IF_LT
											STA temp_index,X
											LDA skill_list+Free_Lunch
											BEQ khm.res_red
											CALL rand8, #5
											LDA ret_val
											BEQ khm.res_red_done
												khm.res_red:
												LDA hero_Red
												CLC					;extra -1 for <= not <
												SBC temp_index,X
												STA hero_Red
											khm.res_red_done:
											MOV.B #true,bought
											MOV.B #true,redraw
										END_IF
									LIKE #CRYSTAL_BLUE_TYPE
										TYA
										CMP hero_Blue
										IF_LT
											STA temp_index,X
											LDA skill_list+Free_Lunch
											BEQ khm.res_blue
											CALL rand8, #5
											LDA ret_val
											BEQ khm.res_blue_done
												khm.res_blue:
												LDA hero_Blue
												CLC					;extra -1 for <= not <
												SBC temp_index,X
												STA hero_Blue
											khm.res_blue_done:
											MOV.B #true,bought
											MOV.B #true,redraw
										END_IF
									LIKE #CRYSTAL_YELLOW_TYPE
										TYA
										CMP hero_Yellow
										IF_LT
											STA temp_index,X
											LDA skill_list+Free_Lunch
											BEQ khm.res_yellow
											CALL rand8, #5
											LDA ret_val
											BEQ khm.res_yellow_done
												khm.res_yellow:
												LDA hero_Yellow
												CLC					;extra -1 for <= not <
												SBC temp_index,X
												STA hero_Yellow
											khm.res_yellow_done:
											MOV.B #true,bought
											MOV.B #true,redraw
										END_IF
								END
							END_IF
						END_IF
						
						LDA bought,X
						IF_TRUE
							WHICH menu_res_target
								LIKE #Res_HP_Heal_ID
									MOV.W hero_HP_Max,hero_HP
								LIKE #Res_HP_Upgrade_ID
									INC hero_HP_Upgrade
									CALL CalcStats
									MOV.W hero_HP_Max,hero_HP
								LIKE #Res_Batt_Heal_ID
									MOV.B hero_Batt_Max,hero_Batt
								LIKE #Res_Batt_Upgrade_ID
									INC hero_Batt_Upgrade
									CALL CalcStats
									MOV.B hero_Batt_Max,hero_Batt
								LIKE #Res_Exp_Upgrade_ID
									CALL AddExp, #10
								LIKE #Res_Dmg_Upgrade_ID
									INC hero_Dmg_Upgrade
									CALL CalcStats
								DEFAULT
									LDY #0
									khm.loop:
										LDA hero_inventory,Y
										CMP #item_none
										IF_EQ
											LDA skill_list+Only_the_Best
											IF_TRUE											
												CALL rand8, #10
												LDA ret_val
												BNE khm.no_upgrade
												PHY
												LDA menu_res_target
												ASL
												TAY
												LDA item_stats,Y
												STA item_ptr
												LDA item_stats+1,Y
												STA item_ptr+1
												LDY #type
												LDA (item_ptr),Y
												WHICH
													LIKE #head
														LDA #Lightning
													LIKE #body
														LDA #Fortress
													LIKE #legs
														LDA #Mustang
													LIKE #gun
														LDA #Death_Ray
													LIKE #tool
														LDA #Laser_Bit
												END
												PLY
												STA hero_inventory,Y
											ELSE_IF
												khm.no_upgrade:
												LDA menu_res_target
												STA hero_inventory,Y
											END_IF
											BRA khm.loop_done
										END_IF
										INY
										CPY #INVENTORY_COUNT
										JNE khm.loop
									khm.loop_done:
							END
						END_IF
				END		;which key
		END				;which menu
		
		khm.done:
		LDA redraw,X
		IF_TRUE
			CALL DrawMenu
		END_IF
		LDA redraw_skills,X
		IF_TRUE
			CALL DrawSkills
		END_IF
		LDA redraw_resources,X
		IF_TRUE
			CALL DrawResources
		END_IF
	END

;Init functions
;==============
	FUNC InitHero
		MOV.B #0,hero_Exp
		MOV.B #40,hero_Exp_Max
		MOV.B #0,hero_HP_Upgrade
		MOV.B #0,hero_Batt_Upgrade
		MOV.B #0,hero_Dmg_Upgrade
		MOV.B #1,hero_Level
		MOV.B #0,hero_Red
		MOV.B #0,hero_Blue
		MOV.B #0,hero_Yellow
		MOV.B #0,hero_Points
		MOV.B #false,hero_activity
		MOV.B #Basic_Head,hero_equipped+head
		MOV.B #Basic_Body,hero_equipped+body
		MOV.B #Basic_Legs,hero_equipped+legs
		MOV.B #Basic_Gun,hero_equipped+gun
		MOV.B #Basic_Tool,hero_equipped+tool
		
		LDA #item_none
		LDY #0
		ih.iloop:
			STA hero_inventory,Y
			INY
			CPY #INVENTORY_COUNT
			BNE ih.iloop
		
		LDY #SKILL_COUNT
		LDA #false
		ih.sloop:
			STA skill_list,Y
			DEY
			BNE ih.sloop
		
		;;JUST FOR DEBUGGING
		;LDY #0
		;ih.debug:
		;	TYA
		;	STA hero_inventory,Y
		;	INY
		;	CPY #25
		;	BNE ih.debug
	END
	
	FUNC ResetGame
		MOV.B #0,display_X
		MOV.B #0,display_Y
		MOV.B #HERO_START_X,hero_X
		MOV.B #HERO_START_Y,hero_Y
		MOV.B #false,hero_activity
		MOV.B hero_HP_Max,hero_HP
		MOV.B hero_Batt_Max,hero_Batt
		MOV.B #DIRECTION_RIGHT,hero_facing
		MOV.B #DIRECTION_RIGHT,hero_target_direction
		MOV.B #OUTPUT_GAME,output_mode
	
		CALL UpdateTarget
	END

;Main function
;=============	
	FUNC main	
		VARS
			BYTE timer_save
		END
								
		CALL Setup
		CALL LoadTiles
		CALL MakeMap
		CALL LoadMonsters
		CALL LoadCrystals
		CALL InitHero
		CALL CalcStats
		CALL ColorHero
		CALL ResetGame
		CALL DrawFrame
		CALL DrawLegend
		
		m.loop:
			LDA TIMER_S
			CMP timer_save,X
			IF_NE
				STA timer_save,X
				LDA output_mode
				CMP #OUTPUT_GAME
				IF_EQ
					CALL TickHandler
				END_IF
			END_IF
			LDA output_mode
			CMP #OUTPUT_GAME
			IF_EQ
				CALL KeyHandlerGame,KB_INPUT
			ELSE_IF
				CALL KeyHandlerMenu,KB_INPUT
			END_IF
			BRA m.loop
	END
				
	OrgROM

;Reset vector
	;.RES $FFFC-*
	ORG $FFFC
	FDB main

AddCommas MACRO num
comma_ret set "\{num}"
	IF num<1000
		EXITM
	ELSE
comma_ret set "\{substr(comma_ret,0,strlen(comma_ret)-3)},\{substr(comma_ret,strlen(comma_ret)-3,strlen(comma_ret))}"
	ENDIF
	ENDM

;Display memory usage in console
;===============================
	MESSAGE " "
	MESSAGE "Memory usage"
	MESSAGE "============"
	AddCommas EEPROM-$C000
	MESSAGE "ROM size:	\{comma_ret} bytes (\{100*(EEPROM-$C000)/$4000}%) of 16k bank"
	AddCommas GENRAM-$200
	MESSAGE "RAM size:	\{comma_ret} bytes (\{100*(GENRAM-$200)/($4000-$200)}%) of 15.8k bank"
	;Tell script that prints assembler output to stop outputting
	;Eliminates double output (because of multiple passes???)
	MESSAGE "END"


20 20 COLOR_RED COLOR_BLUE Skill_temp DrawTile1bppSkills
			[ EnableGameROM ]
			break
		EnableGameROM
		
		DrawFrame
		DrawLegend
						
		begin
			EnableBankROM
				output_mode c@ OUTPUT_GAME = if
					KeyHandlerGame
				else
					KeyHandlerMenu
				then
			EnableGfxRAM
			dup DO_DRAW_FRAME and if DrawFrame then
			dup DO_DRAW_LEGEND and if DrawLegend then
			dup DO_DRAW_MENU_BORDER and if DrawMenuBorder then
			dup DO_DRAW_MENU and if DrawMenu then
			dup DO_DRAW_INVENTORY and if DrawMenuInventory then
			dup DO_DRAW_SKILLS and if DrawMenuSkills then
			    QUIT_TO_FORTH and if 0 no_print ! exit then
		again
		;
	
	EnableGfxRAM
	\ startup values (immediate to save code space)
	FFE0 100 - cp_dict_common_menu @ code_end @		\ Bank 4 common menu
	FFE0 100 - cp_dict_res_menu @ code_end @		\ Bank 4 res menu
	FFE0 100 - cp_dict_skills_menu @ code_end @		\ Bank 4 skill menu
	FFE0 100 - cp_dict_char_menu @ code_end @		\ Bank 4 character menu
	FFE0 100 - cp_dict_game @ code_end @			\ Bank 4 game
	C000 100 - cp_banked @ 4000						\ Bank 2
	\ 4000 54 - here 400							\ Main RAM (54 is pad size)
	4000 100 - here 400								\ Main RAM (100 is space after cp)
	code_end @ C000 -								\ Tali Forth 2
	startup
	run
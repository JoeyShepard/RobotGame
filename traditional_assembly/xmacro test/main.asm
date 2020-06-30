
;Main code
;=========
	;Unlimited lines per page in listing
	PAGE 0
	
	;Variables in zero page
	ORG $0000
	RB1_copy:
		DFS 1
	RB2_copy:
		DFS 1
	RB3_copy:
		DFS 1
	RB4_copy:
		DFS 1
	ZP_locals:
		DFS 12
	X_save:
		DFS 1
	
	;Beginning of EEPROM code
	ORG $C000

CodeBegin:

	include const.asm
	include macros.asm
	include debug.asm
	include xmacros.asm

	setup:
		;Data stack (grows down. globals grow up)
		LDX #0
		
		;Banks
		BANK1 #BANK_GEN_RAM1
		BANK2 #BANK_GEN_RAM2
		BANK3 #BANK_GEN_RAM3
		RTS
	
	FUNC test1
		BEGIN_VARS
			BYTE foo
			BYTE bar
			WORD baz
		END_VARS
		
		MOV.W #$1234,baz
		MOV.B baz,A
		CLC
		ADC #$13
		MOV A,foo
		ADC #$12
		MOV A,bar
	END_FUNC

	FUNC test2
		BEGIN_ARGS
			BYTE a1
			BYTE a2
			WORD a3
		BEGIN_VARS
			WORD b1
			BYTE b2
			ZPBYTE z1
			ZPWORD z2
		END_VARS
		
		MOV.W #$ABCD,b1
		MOV.B #$EF,b2
		MOV.B a1,b2
		MOV.B a2,b2
		MOV.W a3,b1
		MOV.B a1,z1
		MOV.W a3,z2
		
	END_FUNC
		
	FUNC main
		JSR setup
		BEGIN_VARS
			BYTE foo
			BYTE bar
			WORD baz
			WORD cat
		END_VARS
		
		MOV.W #$5678, ZP_locals
		MOV.W #$1234, ZP_locals+2
		
		JSR test1
		
		MOV #7,foo
		
		CALL test2, foo, #$34, #$5678
			
		JMP *
CodeEnd:


;Reset vector
	;.RES $FFFC-*
	ORG $FFFC
	FDB main

;Display memory usage in console
;===============================
	;Re-evaluate here since must be resolvable after first pass
CodeSize set CodeEnd-CodeBegin
	
	MESSAGE " "
	MESSAGE "Memory usage"
	MESSAGE "============"
	HexToDec CodeSize
tempstr set hexstr
	HexToDec (100*CodeSize/$4000)
	MESSAGE "Code size: \{tempstr} bytes (\{hexstr}% of 16k bank)"
	
	;Tell script that prints assembler output to stop outputting
	;Eliminates double output (because of multiple passes???)
	MESSAGE "END"


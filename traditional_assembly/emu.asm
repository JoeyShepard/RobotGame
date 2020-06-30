;Constants
;=========

;Hardware
RAM_BANK1 = 	$FFE0		;0x200- 0x3FFF
RAM_BANK2 = 	$FFE1		;0x4000-0x7FFF
RAM_BANK3 = 	$FFE2		;0x8000-0xBFFF
ROM_BANK =		$FFE3		;0xC000-0xFFFF
KB_INPUT =		$FFE4
TIMER_MS4 =		$FFE5		;Current milliseconds divided by 4
TIMER_S =		$FFE6		;Current seconds
DEBUG =			$FFE7
DEBUG_HEX = 	$FFE8
DEBUG_DEC = 	$FFE9
DEBUG_DEC16 = 	$FFEA
DEBUG_TIMING =	$FFEB
LOG_ON =		$FFEC; 		;Turn instruction logging on
LOG_OFF = 		$FFED; 		;Turn instruction logging off
LOG_SEND =		$FFEE; 		;Send instruction log file


;RAM/ROM bank indexes
BANK_GEN_RAM1 =	0
BANK_GEN_RAM2 =	1
BANK_GEN_RAM3 =	2
BANK_GEN_RAM4 =	3
BANK_GFX_RAM1 = 4
BANK_GFX_RAM2 = 5
BANK_GEN_ROM =	14

;RAM/ROM bank addresses
RB1 = 	$0200		;Address of RAM bank 1
RB2 = 	$4000		;Address of RAM bank 2
RB3 = 	$8000		;Address of RAM bank 3
ROMB = 	$C000		;Address of ROM bank


;Colors
R0 = 0
R1 = 1
R2 = 2
R3 = 3
G0 = 0
G1 = 4
G2 = 8
G3 = 12
B0 = 0
B1 = 16
B2 = 32
B3 = 48

;Already defined in const.asm
;============================
;COLOR_RED =			R3|G0|B0
;COLOR_GREEN =		R0|G3|B0
;COLOR_BLUE =		R0|G0|B3
;COLOR_BLACK =		R0|G0|B0
;COLOR_WHITE =		R3|G3|B3
;COLOR_GRAY1 =		R1|G1|B1
;COLOR_GRAY2 =		R2|G2|B2
;COLOR_TRANSPARENT =	64

;Text mode
TEXT_COLUMNS =	42
TEXT_ROWS =		16
;Text mode draw mode flags
TEXT_MODE_OPAQUE = 0
TEXT_MODE_TRANSPARENT = 1

;Character codes
CHAR_ENTER =	13







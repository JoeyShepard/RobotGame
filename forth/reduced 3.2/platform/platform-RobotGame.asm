.org $C000

; I/O facilities are handled in the separate kernel files because of their
; hardware dependencies. See docs/memorymap.txt for a discussion of Tali's
; memory layout.


; MEMORY MAP OF RAM

; Drawing is not only very ugly, but also not to scale. See the manual for
; details on the memory map. Note that some of the values are hard-coded in
; the testing routines, especially the size of the input history buffer, the
; offset for PAD, and the total RAM size. If these are changed, the tests will
; have to be changed as well


;    $0000  +-------------------+  ram_start, zpage, user0
;           |  User varliables  |
;           +-------------------+
;           |                   |
;           |                   |
;           +~~~~~~~~~~~~~~~~~~~+  <-- dsp
;           |                   |
;           |  ^  Data Stack    |
;           |  |                |
;    $0078  +-------------------+  dsp0, stack
;           |                   |
;           |   (Reserved for   |
;           |      kernel)      |
;           |                   |
;    $0100  +-------------------+
;           |                   |
;           |  ^  Return Stack  |  <-- rsp
;           |  |                |
;    $0200  +-------------------+  rsp0, buffer, buffer0
;           |  |                |
;           |  v  Input Buffer  |
;           |                   |
;    $0300  +-------------------+  cp0
;           |  |                |
;           |  v  Dictionary    |
;           |       (RAM)       |
;           |                   |
;   (...)   ~~~~~~~~~~~~~~~~~~~~~  <-- cp
;           |                   |
;           |                   |
;           |                   |
;           |                   |
;           |                   |
;           |                   |
;    $7C00  +-------------------+  hist_buff, cp_end
;           |   Input History   |
;           |    for ACCEPT     |
;           |  8x128B buffers   |
;    $7fff  +-------------------+  ram_end


; HARD PHYSICAL ADDRESSES

; Some of these are somewhat silly for the 65c02, where for example
; the location of the Zero Page is fixed by hardware. However, we keep
; these for easier comparisons with Liara Forth's structure and to
; help people new to these things.

.alias ram_start $0000          ; start of installed 32 KiB of RAM
;.alias ram_end   $4000-1        ; end of installed RAM
.alias ram_end   $FFE0-1        ; end of installed RAM
.alias zpage     ram_start      ; begin of Zero Page ($0000-$00ff)
.alias stack0    $0100          ; begin of Return Stack ($0100-$01ff)
;.alias hist_buff ram_end-$03ff  ; begin of history buffers
.alias hist_buff $4000-$03ff  ; begin of history buffers


; SOFT PHYSICAL ADDRESSES

; Tali currently doesn't have separate user variables for multitasking. To
; prepare for this, though, we've already named the location of the user
; variables user0. Note cp0 starts one byte further down so that it currently
; has the address $300 and not $2FF. This avoids crossing the page boundry when
; accessing the user table, which would cost an extra cycle.

.alias user0     zpage            ; user and system variables
.alias rsp0      $ff              ; initial Return Stack Pointer (65c02 stack)
.alias bsize     $ff              ; size of input/output buffers
.alias buffer0   stack0+$100      ; input buffer ($0200-$027f)
.alias cp0       buffer0+bsize+1  ; Dictionary starts after last buffer
;.alias cp_end    hist_buff        ; Last RAM byte available for code
.alias cp_end    ram_end
;.alias padoffset $ff              ; offset from CP to PAD (holds number strings)
.alias padoffset $54              ; offset from CP to PAD (holds number strings)


.require "../taliforth.asm" ; zero page variables, definitions

; =====================================================================
; FINALLY

; Of the 32 KiB we use, 24 KiB are reserved for Tali (from $8000 to $DFFF)
; and the last eight (from $E000 to $FFFF) are left for whatever the user
; wants to use them for.

;.advance $e000
platform_bye:
    brk

; Default kernel file for Tali Forth 2
; Scot W. Stevenson <scot.stevenson@gmail.com>
; First version: 19. Jan 2014
; This version: 18. Feb 2018
;
; This section attempts to isolate the hardware-dependent parts of Tali
; Forth 2 to make it easier for people to port it to their own machines.
; Ideally, you shouldn't have to touch any other files. There are three
; routines and one string that must be present for Tali to run:
;
;       kernel_init - Initialize the low-level hardware
;       kernel_getc - Get single character in A from the keyboard (blocks)
;       kernel_putc - Prints the character in A to the screen
;       s_kernel_id - The zero-terminated string printed at boot
;
; This default version Tali ships with is written for the py65mon machine
; monitor (see docs/MANUAL.md for details).

; The main file of Tali got us to $e000. However, py65mon by default puts
; the basic I/O routines at the beginning of $f000. We don't want to change
; that because it would make using it out of the box harder, so we just
; advance past the virtual hardware addresses.
;.advance $f010

; All vectors currently end up in the same place - we restart the system
; hard. If you want to use them on actual hardware, you'll have to redirect
; them all.
v_nmi:
v_reset:
v_irq:
kernel_init:
        ; """Initialize the hardware. This is called with a JMP and not
        ; a JSR because we don't have anything set up for that yet. With
        ; py65mon, of course, this is really easy. -- At the end, we JMP
        ; back to the label forth to start the Forth system.
        ; """
.scope
                ; Since the default case for Tali is the py65mon emulator, we
                ; have no use for interrupts. If you are going to include
                ; them in your system in any way, you're going to have to
                ; do it from scratch. Sorry.
                sei             ; Disable interrupts

				;Added to set up banks
				LDA #0		;*RAM_BANK1=BANK_GEN_RAM1;
				STA $FFE0	
				;LDA #1		;*RAM_BANK1=BANK_GEN_RAM2;
				LDA #4		;*RAM_BANK2=BANK_GFX_RAM1;
				STA $FFE1	
				;LDA #2		;*RAM_BANK3=BANK_GEN_RAM3;
				LDA #5		;*RAM_BANK3=BANK_GFX_RAM2;
				STA $FFE2	
				
				;Initialize screen
				LDA #0
				STA screen_x
				STA screen_y
				
				;Mark graphics mode, not banked
				LDA #0
				STA bank_mode
				
				;Turn off screen output while loading file
				LDA #1
				STA no_print
				
				;Store end of code for use with other dictionaries
				LDA #<code_end
				STA eoc
				LDA #>code_end
				STA eoc+1
				
				;Use same character data for game
				LDA #<kernal_putc_chartable
				STA chartable
				LDA #>kernal_putc_chartable
				STA chartable+1
				
				;Disable xt debugging
				STZ debug_xt
				
                ; We've successfully set everything up, so print the kernel
                ; string
                ldx #0
*               lda s_kernel_id,x
                beq _done
                jsr kernel_putc
                inx
                bra -
_done:
                jmp forth
.scend

kernel_getc:
        ; """Get a single character from the keyboard. By default, py65mon
        ; is set to $f004, which we just keep. Note that py65mon's getc routine
        ; is non-blocking, so it will return '00' even if no key has been
        ; pressed. We turn this into a blocking version by waiting for a
        ; non-zero character.
        ; """
.scope
_loop:
                ;lda $f004
                ;beq _loop
                ;rts
				
				LDA $FFE4
				BEQ _loop
				CMP #10		;filter out 10 since TaliForth looks for 13 on enter
				BEQ _loop
kernal_getc_done:
				RTS
				
.scend


kernel_putc:
        ; """Print a single character to the console. By default, py65mon
        ; is set to $f001, which we just keep.
        ; """
                ;sta $f001
                ;rts
				
				CMP #7
				BNE kernal_putc_bell
				STA $FFEF
				RTS
kernal_putc_bell:
				STA $FFE7
				
				PHA
				LDA no_print
				BEQ kernal_putc_no_print
				PLA
				RTS
kernal_putc_no_print:
				PLA
				
				PHA 
				LDA bank_mode
				BEQ kernal_putc_bank_switch
				PLA
				RTS
kernal_putc_bank_switch:
				PLA
				
				JMP kernal_putc_code
kernal_putc_chartable:
				.require "..\\chartable.asm"
kernal_putc_code:
				;Save copy for return
				PHX
				PHY
				PHA
				
				;Save character and calculator pointers first
				PHA
				
				;Y screen offset 
				CLC
				LDA #$40
				LDX screen_Y
kernal_putc_Y_loop:
				BEQ kernal_putc_Y_done
				ADC #8
				DEX
				BRA kernal_putc_Y_loop
kernal_putc_Y_done:
				STA screen_ptr+1 
				
				;X screen offset
				LDA #0
				LDX screen_X
kernal_putc_X_loop:
				BEQ kernal_putc_X_done
				ADC #6
				DEX
				BRA kernal_putc_X_loop
kernal_putc_X_done:
				STA screen_ptr
				
				;Character
				PLA
				;STA $FFE7
				CMP #10
				BEQ kernal_putc_adjust
				
				CMP #8
				BNE kernal_putc_not_backspace
				LDA screen_X
				BEQ kernal_putc_trampoline
				DEC screen_X
kernal_putc_trampoline:
				JMP kernal_putc_done
kernal_putc_not_backspace:
					
				;Skip unprintable characters
				CMP #'~+1		;Up to and including ~ character
				BCS kernal_putc_print_done
				SEC
				SBC #32			;Space character (can't use #' ')
				BCC kernal_putc_print_done
				TAX
				
				;Calaculate character data pointer
				LDA #>kernal_putc_chartable
				STA char_ptr+1
				LDA #<kernal_putc_chartable
				CPX #0
				CLC
kernal_putc_char_ptr:
				BEQ kernal_putc_char_ptr_done
				ADC #8
				BCC kernal_putc_char_ptr_loop
				INC char_ptr+1
				CLC
kernal_putc_char_ptr_loop:
				DEX
				BRA kernal_putc_char_ptr
kernal_putc_char_ptr_done:
				STA char_ptr
								
				;Draw character
				LDY #8
kernal_putc_loop_outer:				
				LDA (char_ptr)
				ROR
				ROR
				ROR
				LDX #5
kernal_putc_loop_inner:
				ROR
				PHA
				LDA #$3F
				BCS kernal_putc_fgcolor
				LDA #0
kernal_putc_fgcolor:
				STA (screen_ptr)
				INC screen_ptr
				PLA
				DEX
				BNE kernal_putc_loop_inner
				;Advance character data pointer
				LDA char_ptr
				CLC
				ADC #1
				STA char_ptr
				LDA char_ptr+1
				ADC #0
				STA char_ptr+1
				;Advance screen pointer
				LDA screen_ptr+1
				ADC #1
				STA screen_ptr+1
				LDA screen_ptr
				SEC
				SBC #5
				STA screen_ptr
				;Reload column counter
				DEY
				BNE kernal_putc_loop_outer
kernal_putc_print_done:
				
				;Advance coordinates
				LDA screen_X
				INA
				CMP #42
				BNE kernal_putc_no_adjust
kernal_putc_adjust:
				INC screen_Y
				;LDA #'\\
				;STA $FFE7
				;LDA #'n
				;STA $FFE7
				
				;Scroll screen up
				LDA screen_Y
				CMP #16
				BNE kernal_putc_no_scroll
				;Reuse char and screen pointers
				LDA #$40
				STA screen_ptr+1
				LDA #$48
				STA char_ptr+1
				STZ screen_ptr
				STZ char_ptr
				LDX #120
				LDY #0
kernal_putc_scroll:
				LDA (char_ptr),Y
				STA (screen_ptr),Y
				INY
				BNE kernal_putc_scroll
				INC char_ptr+1
				INC screen_ptr+1
				DEX 
				BNE kernal_putc_scroll
				DEC screen_Y
				LDX #8
				LDA #0
kernal_putc_blank:
				;Blank bottom line of display
				STA (screen_ptr),Y
				INY
				BNE kernal_putc_blank
				INC screen_ptr+1
				DEX
				BNE kernal_putc_blank
				
kernal_putc_no_scroll:
				LDA #0
kernal_putc_no_adjust:
				STA screen_X
kernal_putc_done:
				PLA
				PLY
				PLX
				RTS

; Leave the following string as the last entry in the kernel routine so it
; is easier to see where the kernel ends in hex dumps. This string is
; displayed after a successful boot
s_kernel_id:
        ;.byte "Tali Forth 2 default kernel for py65mon (18. Feb 2018)", AscLF, 0
		.byte "Tali Forth 2 for Robot Game", AscLF, 0

; Code end where extra dictionary can be placed
code_end:

; Add the interrupt vectors
.advance $fffa

.word v_nmi
.word v_reset
.word v_irq

; END


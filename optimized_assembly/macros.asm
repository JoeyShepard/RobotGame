;Constants
;=========
false set 0
true set $FF


;Banking macros
;==============

	%macro BANK1 1
		LDA %1
		STA RAM_BANK1
		STA RB1_COPY
	%endmacro
	
	%macro BANK2 1
		LDA %1
		STA RAM_BANK2
		STA RB2_COPY
	%endmacro
	
	%macro BANK3 1
		LDA %1
		STA RAM_BANK3
		STA RB3_COPY
	%endmacro
	

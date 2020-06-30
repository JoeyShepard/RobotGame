;debug_nl
;debug_puts

;Constants
;=========
;debug_puts
TIMING_INSTR_BEGIN =	1
TIMING_INSTR_END =		2
TIMING_INSTR_RESET =	3
TIMING_TIME_BEGIN =		4
TIMING_TIME_END =		5
TIMING_TIME_RESET =		6
TIMING_ECHO_ON =		7
TIMING_ECHO_OFF =		8

	FUNC debug_nl
		PHA
		LDA #'\\'
		STA DEBUG
		LDA #'n'
		STA DEBUG
		PLA
		RTS
	END_FUNC
	
	FUNC debug_puts
		ARGS
			WORD dbg_ptr
		END_VARS
		LDA (dbg_ptr,X)
		.loop:
			BEQ .done
				STA DEBUG
				INC dbg_ptr,X
				BNE .no_carry
					INC dbg_ptr+1,X
				.no_carry:
				LDA (dbg_ptr,X)
		BRA .loop
		.done:
	END_FUNC
	
	;FUNC debug_hex8
		;ARGS
		
halt_helper MACRO arg	
halt_ret set "other"

	IF substr("arg",0,1)=="#"
halt_ret set "immed"
		EXITM
	ENDIF

semi_symbol set ";"

temp_list set byte_list	
	WHILE temp_list<>""
temp_arg1 set "\{substr(temp_list,0,strstr(temp_list,semi_symbol))}"
		IF "arg"==temp_arg1
halt_ret set "byte"
			EXITM
		ENDIF
temp_list set "\{substr(temp_list,strstr(temp_list,semi_symbol)+1,strlen(temp_list))}"
	ENDM

temp_list set word_list	
	WHILE temp_list<>""
temp_arg1 set "\{substr(temp_list,0,strstr(temp_list,semi_symbol))}"
		IF "arg"==temp_arg1
halt_ret set "word"
			EXITM
		ENDIF
temp_list set "\{substr(temp_list,strstr(temp_list,semi_symbol)+1,strlen(temp_list))}"
	ENDM

temp_list set zpbyte_list	
	WHILE temp_list<>""
temp_arg1 set "\{substr(temp_list,0,strstr(temp_list,semi_symbol))}"
		IF "arg"==temp_arg1
halt_ret set "zpbyte"
			EXITM
		ENDIF
temp_list set "\{substr(temp_list,strstr(temp_list,semi_symbol)+1,strlen(temp_list))}"
	ENDM

temp_list set zpword_list	
	WHILE temp_list<>""
temp_arg1 set "\{substr(temp_list,0,strstr(temp_list,semi_symbol))}"
		IF "arg"==temp_arg1
halt_ret set "zpword"
			EXITM
		ENDIF
temp_list set "\{substr(temp_list,strstr(temp_list,semi_symbol)+1,strlen(temp_list))}"
	ENDM
	
	ENDM
		
halt_arg MACRO arg1
	IF "arg1"<>""
		BRA skip1
			msg1:
			FCB "arg1: $",0
			msg2:
			FCB " $",0
		skip1:
		CALL debug_puts, #msg1
		halt_helper arg1	
		IF halt_ret=="byte"
			LDA arg1,X
			STA DEBUG_HEX
		ELSEIF halt_ret=="word"
			LDA arg1+1,X
			STA DEBUG_HEX
			LDA arg1,X
			STA DEBUG_HEX
		ELSEIF halt_ret=="zpbyte"
			LDA arg1
			STA DEBUG_HEX
		ELSEIF halt_ret=="zpword"
			LDA arg1+1
			STA DEBUG_HEX
			LDA arg1
			STA DEBUG_HEX
		ELSEIF halt_ret=="immed"
			LDA arg1#256
			STA DEBUG_HEX
			CALL debug_puts, #msg2
			LDA arg1>>8
			STA DEBUG_HEX
		ELSEIF halt_ret=="other"
			LDA arg1
			STA DEBUG_HEX
			CALL debug_puts, #msg2
			LDA arg1+1
			STA DEBUG_HEX
		ENDIF
		CALL debug_nl
	ENDIF
	ENDM
			
halt MACRO arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8
	IF "arg1"<>""
		PHP
		PHA	
		halt_arg arg1
		halt_arg arg2
		halt_arg arg3
		halt_arg arg4
		halt_arg arg5
		halt_arg arg6
		halt_arg arg7
		halt_arg arg8
		PLA
		PLP
	ENDIF
	BRK
	BRK
	ENDM
			

	
;X-based memory addressing macros
;================================

;TODO
	;multiple args to byte and word
	;change DEX scheme

var_state set "done"
xcounter set 0
argcounter set 0
zpcounter set 0
byte_counter set 0
word_counter set 0

byte_list set ""
word_list set ""
args_list set ""
funcs_list set ""
func_name set ""

FUNC MACRO fname, {GLOBALSYMBOLS}
fname:
	IF var_state<>"done"
		ERROR "FUNC within FUNC not allowed!"
	ENDIF
func_name set "fname"
var_state set "func"
	ENDM
	
;called from begin_vars and begin_args only!
setup_vars MACRO
xcounter set 0
	ENDM

BEGIN_ARGS MACRO
	IF var_state=="func"
		setup_vars
	ELSE
		ERROR "BEGIN_ARGS without FUNC!"
	ENDIF
var_state set "args"
	ENDM

BEGIN_VARS MACRO
	IF var_state=="args"
		;do nothing. already setup in BEGIN_VARS!
	ELSEIF var_state=="func"
		setup_vars
	ELSE
		ERROR "BEGIN_VARS without FUNC!"
	ENDIF
var_state set "vars"
	ENDM
	
END_VARS MACRO
	IF ((var_state=="args")||(var_state=="vars"))
		PHX
		IF xcounter<=7
			REPT xcounter
				DEX
			ENDM
		ELSE
			PHA				;3
			TXA				;2
			SEC				;2
			SBC #xcounter	;2
			TAX				;2
			PLA				;3
							;total = 14
		ENDIF
		IF zpcounter>0
			STX X_save
			LDX #zpcounter
			ZP_push:
				LDA ZP_locals-1,X
				PHA
				DEX
			BNE ZP_push
			LDX X_save
		ENDIF
	ELSE
		ERROR "END_VARS without BEGIN_ARGS or BEGIN_VARS!"
	ENDIF
var_state set "end"
	ENDM
	
END_FUNC MACRO
	IF var_state=="end"
		IF zpcounter>0
			STX X_save
			LDX #0
			ZP_pull:
				PLA
				STA ZP_locals,X
				INX
				CPX #zpcounter
			BNE ZP_pull
			LDX X_save
		ENDIF
		PLX
	ELSEIF var_state=="func"
		;fine since means no locals
	ELSE
		ERROR "END_FUNC without END_VARS"
	ENDIF
	
	IF args_list<>""
funcs_list set ":\{func_name},\{args_list}.\{xcounter};\{funcs_list}"
	ENDIF
	RTS
xcounter set 0
zpcounter set 0
byte_list set ""
word_list set ""
var_state set "done"
args_list set ""
	ENDM
		
BYTE MACRO arg
arg set xcounter
xcounter set xcounter+1
byte_list set "arg;\{byte_list}"
	IF var_state=="args"
args_list set "\{args_list}b"
	ELSE
;xoffset set xoffset+1
	ENDIF
	ENDM
	
WORD MACRO arg
arg set xcounter
xcounter set xcounter+2
word_list set "arg;\{word_list}"
	IF var_state=="args"
args_list set "\{args_list}w"
	ELSE
;xoffset set xoffset+2
	ENDIF
	ENDM
	
ZPBYTE MACRO arg
arg set zpcounter+ZP_locals
zpcounter set zpcounter+1
	ENDM

ZPWORD MACRO arg
arg set zpcounter+ZP_locals
zpcounter set zpcounter+2
	ENDM
	
mov_ret set ""
	
mov_helper MACRO arg
mov_ret set "other"
semi_symbol set ";"
temp_list set byte_list
	IF ((UPSTRING("arg")=="A") || (UPSTRING("arg")=="X") || (UPSTRING("arg")=="Y") || (UPSTRING("arg")=="S"))
mov_ret set "arg"
		EXITM
	ELSEIF substr("arg",0,1)=="#"
mov_ret set "immed"
		EXITM
	ENDIF

	WHILE temp_list<>""
		;message "debug: \{substr(temp_list,0,strstr(temp_list,semi_symbol))}"
temp_arg1 set "\{substr(temp_list,0,strstr(temp_list,semi_symbol))}"
		;message "byte: \{temp_arg}"
		IF "arg"==temp_arg1
mov_ret set "byte"
			EXITM
		ENDIF
temp_list set "\{substr(temp_list,strstr(temp_list,semi_symbol)+1,strlen(temp_list))}"
	ENDM

temp_list set word_list	
	WHILE temp_list<>""
temp_arg1 set "\{substr(temp_list,0,strstr(temp_list,semi_symbol))}"
		;message "byte: \{temp_arg}"
		IF "arg"==temp_arg1
mov_ret set "word"
			EXITM
		ENDIF
temp_list set "\{substr(temp_list,strstr(temp_list,semi_symbol)+1,strlen(temp_list))}"
	ENDM
	
	ENDM
	
MOV.B MACRO arg1,arg2,arg3
	mov_helper arg1
arg1type set mov_ret
	mov_helper arg2
arg2type set mov_ret
	
	IF "arg3"==""
		;good. argument is optional
	ELSEIF upstring("arg3")=="X"
		IF arg2type=="other"
arg2type set "other,X"
		ELSE
			message "Invalid third argument: arg3"
		ENDIF
	ELSE
		message "Invalid third argument: arg3"
	ENDIF
	
	;message "arg1 is \{arg1type} and arg2 is \{arg2type}"
	IF (arg1type=="A")
		IF (arg2type=="X")
			TAX
			EXITM
		ELSEIF (arg2type=="Y")
			TAY
			EXITM
		ELSEIF (arg2type=="byte")
			STA arg2,X
			EXITM
		ELSEIF (arg2type=="word")
			STA arg2,X
			STZ arg2+1,X
			EXITM
		ELSEIF (arg2type=="other")
			STA arg2
			EXITM
		ELSEIF (arg2type=="other,X")
			STA arg2,X
			EXITM
		ENDIF
	ELSEIF (arg1type=="X")
		IF (arg2type=="A")
			TXA
			EXITM
		ELSEIF (arg2type=="Y")
			PHX
			PLY
			EXITM
		ELSEIF (arg2type=="other")
			STX arg2
			EXITM
		ENDIF
	ELSEIF (arg1type=="Y")
		IF (arg2type=="A")
			TYA
			EXITM
		ELSEIF (arg2type=="X")
			PHY
			PLX
			EXITM
		ELSEIF (arg2type=="byte")
			STY arg2,X
			EXITM
		ELSEIF (arg2type=="word")
			STY arg2,X
			STZ arg2+1,X
			EXITM
		ELSEIF (arg2type=="other")
			STY arg2
			EXITM
		ELSEIF (arg2type=="other,X")
			STY arg2,X
			EXITM
		ENDIF
	ELSEIF (arg1type=="byte")
		IF (arg2type=="A")
			LDA arg1,X
			EXITM
		ELSEIF (arg2type=="Y")
			LDY arg1,X
			EXITM
		ELSEIF (arg2type=="byte")
			LDA arg1,X
			STA arg2,X
			EXITM
		ELSEIF (arg2type=="word")
			LDA arg1,X
			STA arg2,X
			STZ arg2+1,X
			EXITM
		ELSEIF (arg2type=="other")
			LDA arg1,X
			STA arg2
			EXITM
		ELSEIF (arg2type=="other,X")
			LDA arg1,X
			STA arg2,X
			EXITM
		ENDIF
	ELSEIF (arg1type=="word")
		IF (arg2type=="A")
			LDA arg1,X
			EXITM
		ELSEIF (arg2type=="Y")
			LDY arg1,X
			EXITM
		ELSEIF (arg2type=="byte")
			LDA arg1,X
			STA arg2,X
			EXITM
		ELSEIF (arg2type=="word")
			LDA arg1,X
			STA arg2,X
			STZ arg2+1,X
			EXITM
		ELSEIF (arg2type=="other")
			LDA arg1,X
			STA arg2
			EXITM
		ELSEIF (arg2type=="other,X")
			LDA arg1,X
			STA arg2,X
			EXITM	
		ENDIF
	ELSEIF (arg1type=="immed")
		IF (arg2type=="A")
			LDA arg1#256
			EXITM
		ELSEIF (arg2type=="X")
			LDX arg1#256
			EXITM	
		ELSEIF (arg2type=="Y")
			LDY arg1#256
			EXITM
		ELSEIF (arg2type=="byte")
			LDA arg1#256
			STA arg2,X
			EXITM
		ELSEIF (arg2type=="word")
			LDA arg1#256
			STA arg2,X
			STZ arg2+1,X
			EXITM
		ELSEIF (arg2type=="other")
			LDA arg1#256
			STA arg2
			EXITM
		ELSEIF (arg2type=="other,X")
			LDA arg1#256
			STA arg2,X
			EXITM
		ENDIF
	ELSEIF (arg1type=="other")
		IF (arg2type=="A")
			LDA arg1
			EXITM
		ELSEIF (arg2type=="X")
			LDX arg1
			EXITM	
		ELSEIF (arg2type=="Y")
			LDY arg1
			EXITM
		ELSEIF (arg2type=="byte")
			LDA arg1
			STA arg2,X
			EXITM
		ELSEIF (arg2type=="word")
			LDA arg1
			STA arg2,X
			STZ arg2+1,X
			EXITM
		ELSEIF (arg2type=="other")
			LDA arg1
			STA arg2
			EXITM
		ELSEIF (arg2type=="other,X")
			LDA arg1
			STA arg2,X
			EXITM
		ENDIF
	ENDIF
	error "Unknown combination: MOV.B \{arg1type}, \{arg2type}"
	ENDM

MOV MACRO arg1,arg2
	MOV.B arg1,arg2
	ENDM

MOV.W MACRO arg1,arg2,arg3
	mov_helper arg1
arg1type set mov_ret
	mov_helper arg2
arg2type set mov_ret

	IF "arg3"==""
		;good. argument is optional
	ELSEIF upstring("arg3")=="X"
		IF arg2type=="other"
arg2type set "other,X"
		ELSE
			message "Invalid third argument: arg3"
		ENDIF
	ELSE
		message "Invalid third argument: arg3"
	ENDIF
	
	;message "arg1 is \{arg1type} and arg2 is \{arg2type}"
	IF (arg1type=="A")
		IF (arg2type=="X")
			TAX
			EXITM
		ELSEIF (arg2type=="Y")
			TAY
			EXITM
		ELSEIF (arg2type=="byte")
			STA arg2,X
			EXITM
		ELSEIF (arg2type=="word")
			STA arg2,X
			STZ arg2+1,X
			EXITM
		ELSEIF (arg2type=="other")
			STA arg2
			STZ arg2+1
			EXITM
		ELSEIF (arg2type=="other,X")
			STA arg2,X
			STZ arg2+1,X
			EXITM
		ENDIF
	ELSEIF (arg1type=="X")
		IF (arg2type=="A")
			TXA
			EXITM
		ELSEIF (arg2type=="Y")
			PHX
			PLY
			EXITM
		ELSEIF (arg2type=="other")
			STX arg2
			STZ arg2+1
			EXITM
		ENDIF
	ELSEIF (arg1type=="Y")
		IF (arg2type=="A")
			TYA
			EXITM
		ELSEIF (arg2type=="X")
			PHY
			PLX
			EXITM
		ELSEIF (arg2type=="byte")
			STY arg2,X
			EXITM
		ELSEIF (arg2type=="word")
			STY arg2,X
			STZ arg2+1,X
			EXITM
		ELSEIF (arg2type=="other")
			STY arg2
			STZ arg2+1
			EXITM
		ELSEIF (arg2type=="other,X")
			STY arg2,X
			STZ arg2+1,X
			EXITM
		ENDIF
	ELSEIF (arg1type=="byte")
		IF (arg2type=="A")
			LDA arg1,X
			EXITM
		ELSEIF (arg2type=="Y")
			LDY arg1,X
			EXITM
		ELSEIF (arg2type=="byte")
			LDA arg1,X
			STA arg2,X
			EXITM
		ELSEIF (arg2type=="word")
			LDA arg1,X
			STA arg2,X
			STZ arg2+1,X
			EXITM
		ELSEIF (arg2type=="other")
			LDA arg1,X
			STA arg2
			EXITM
		ELSEIF (arg2type=="other,X")
			LDA arg1,X
			STA arg2,X
			EXITM
		ENDIF
	ELSEIF (arg1type=="word")
		IF (arg2type=="A")
			LDA arg1,X
			EXITM
		ELSEIF (arg2type=="Y")
			LDY arg1,X
			EXITM
		ELSEIF (arg2type=="byte")
			LDA arg1,X
			STA arg2,X
			EXITM
		ELSEIF (arg2type=="word")
			LDA arg1,X
			STA arg2,X
			LDA arg1+1,X
			STA arg2+1,X
			EXITM
		ELSEIF (arg2type=="other")
			LDA arg1,X
			STA arg2
			LDA arg1+1,X
			STA arg2+1
			EXITM
		ELSEIF (arg2type=="other,X")
			LDA arg1,X
			STA arg2,X
			LDA arg1+1,X
			STA arg2+1,X
			EXITM
		ENDIF
	ELSEIF (arg1type=="immed")
		IF (arg2type=="A")
			LDA arg1
			EXITM
		ELSEIF (arg2type=="X")
			LDX arg1
			EXITM	
		ELSEIF (arg2type=="Y")
			LDY arg1
			EXITM
		ELSEIF (arg2type=="byte")
			LDA arg1
			STA arg2,X
			EXITM
		ELSEIF (arg2type=="word")
			LDA arg1#256
			STA arg2,X
			LDA arg1>>8
			STA arg2+1,X
			EXITM
		ELSEIF (arg2type=="other")
			LDA arg1#256
			STA arg2
			LDA arg1>>8
			STA arg2+1
			EXITM
		ELSEIF (arg2type=="other,X")
			LDA arg1#256
			STA arg2,X
			LDA arg1>>8
			STA arg2+1,X
			EXITM
		ENDIF
	ELSEIF (arg1type=="other")
		IF (arg2type=="A")
			LDA arg1
			EXITM
		ELSEIF (arg2type=="X")
			LDX arg1
			EXITM	
		ELSEIF (arg2type=="Y")
			LDY arg1
			EXITM
		ELSEIF (arg2type=="byte")
			LDA arg1
			STA arg2,X
			EXITM
		ELSEIF (arg2type=="word")
			LDA arg1
			STA arg2,X
			LDA arg1+1
			STA arg2+1,X
			EXITM
		ELSEIF (arg2type=="other")
			LDA arg1
			STA arg2
			LDA arg1+1
			STA arg2+1
			EXITM
		ELSEIF (arg2type=="other,X")
			LDA arg1
			STA arg2,X
			LDA arg1+1
			STA arg2+1,X
			EXITM
		ENDIF
	ENDIF
	error "Unknown combination: MOV.W \{arg1type}, \{arg2type}"
	ENDM

call_offset set 0

call_helper MACRO arg, which, list
	IF "arg"<>""
		IF strlen(list)>=which
			;message "\{list} - arg \{charfromstr(list,which-1)}"
			IF charfromstr(list,which-1)=='b'
				MOV.B arg, call_offset,X
call_offset set call_offset+1
			ELSEIF charfromstr(list,which-1)=='w'
				MOV.W arg, call_offset,X
call_offset set call_offset+2
			ENDIF
		ENDIF
	ENDIF
	ENDM

CALL MACRO func, arg1, arg2, arg3 , arg4, arg5, arg6, arg7, arg8
funcs_list set ":derp,wbw.15;\{funcs_list}:werp,bwb.15;"
	;message funcs_list
temp_str set substr(funcs_list,strstr(funcs_list,":func,"),strlen(funcs_list))
	;message temp_str
temp_str set substr(temp_str,0,strstr(temp_str,";"))
	;message temp_str
temp_str set substr(temp_str,strlen(":func,"),strlen(temp_str))
	;message temp_str
arg_str set substr(temp_str,0,strstr(temp_str,"."))
	;message arg_str
num_str set val(substr(temp_str,strstr(temp_str,".")+1,strlen(temp_str)))
	;message "\{num_str}"
	
call_offset set $100-num_str
	IF "arg1"<>""
		call_helper arg1, 1, arg_str
	ENDIF
	IF "arg2"<>""
		call_helper arg2, 2, arg_str
	ENDIF
	IF "arg3"<>""
		call_helper arg3, 3, arg_str
	ENDIF
	IF "arg4"<>""
		call_helper arg4, 4, arg_str
	ENDIF
	IF "arg5"<>""
		call_helper arg5, 5, arg_str
	ENDIF
	IF "arg6"<>""
		call_helper arg6, 6, arg_str
	ENDIF
	IF "arg7"<>""
		call_helper arg7, 7, arg_str
	ENDIF
	IF "arg8"<>""
		call_helper arg8, 8, arg_str
	ENDIF
	JSR func
	ENDM
	
		
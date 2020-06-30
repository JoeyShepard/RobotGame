;X-based memory addressing macros
;================================

	OUTRADIX 10		;necessary so val will work. otherwise generates hex which is not compatiable :(

xcounter set 0
argcounter set 0
zpcounter set 0
byte_counter set 0
word_counter set 0

byte_list set ""			;One function at a time
word_list set ""			;One function at a time
zpbyte_list set ""			;One function at a time
zpword_list set ""			;One function at a time
args_list set ""			;One function at a time
funcs_list1 set ""			;EXCEEDS LIMIT OF 255!!!
funcs_list2 set ""
funcs_list3 set ""
funcs_list4 set ""
funcs_list5 set ""
func_name set ""			;One function at a time
if_stack set ""				;Enough for nested IFs, so 255 should be enough
if_counter set 0			
do_stack set ""				;Enough for nested DOs, so 255 should be enough
do_counter set 0
case_stack set ""
which_stack set ""
which_counter set 0
back_counter set 0
case_counter set 0
switch_counter set 0
switch_max set 0
var_state set "done"

mov_ret set ""
call_offset set 0

FUNC MACRO fname,{GLOBALSYMBOLS}
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

ARGS MACRO
	IF var_state=="func"
		setup_vars
	ELSE
		ERROR "BEGIN_ARGS without FUNC!"
	ENDIF
var_state set "args"
	ENDM

VARS MACRO
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
		;IF xcounter<=7
		IF xcounter<=4
			REPT xcounter
				DEX
			ENDM
		ELSE
			;PHA			;3
			;TXA			;2
			;SEC			;2
			;SBC #xcounter	;2
			;TAX			;2
			;PLA			;4
			;				;total = 15
			TXA				;2
			SEC				;2
			SBC #xcounter	;2
			TAX				;2
							;total = 8
		ENDIF
		IF zpcounter>0
			STX saveX
			LDX #zpcounter
			ZP_push:
				LDA ZP_locals-1,X
				PHA
				DEX
			BNE ZP_push
			LDX saveX
		ENDIF
	ELSE
		ERROR "END_VARS without BEGIN_ARGS or BEGIN_VARS!"
	ENDIF
var_state set "end"
	ENDM
	
END_FUNC MACRO
	IF var_state=="end"
		IF zpcounter>0
			STX saveX
			LDX #0
			ZP_pull:
				PLA
				STA ZP_locals,X
				INX
				CPX #zpcounter
			BNE ZP_pull
			LDX saveX
		ENDIF
		PLX
	ELSEIF var_state=="func"
		;fine since means no locals
	ELSE
		ERROR "END_FUNC without END_VARS"
	ENDIF
	
	IF args_list<>""
new_info set ":\{func_name},\{args_list}.\{xcounter};"
		IF strlen(funcs_list1)+strlen(new_info)<255
funcs_list1 set "\{new_info}\{funcs_list1}"
		ELSEIF strlen(funcs_list2)+strlen(new_info)<255
funcs_list2 set "\{new_info}\{funcs_list2}"
		ELSEIF strlen(funcs_list3)+strlen(new_info)<255
funcs_list3 set "\{new_info}\{funcs_list3}"
		ELSEIF strlen(funcs_list4)+strlen(new_info)<255
funcs_list4 set "\{new_info}\{funcs_list4}"
		ELSEIF strlen(funcs_list5)+strlen(new_info)<255
funcs_list5 set "\{new_info}\{funcs_list5}"
		ELSE
			error "Out of string space for function info!"
		ENDIF
	ENDIF
	RTS
xcounter set 0
zpcounter set 0
byte_list set ""
word_list set ""
zpbyte_list set ""
zpword_list set ""
var_state set "done"
args_list set ""
	ENDM
		
BYTE MACRO arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, {GLOBALSYMBOLS}
	IF "arg1"<>""
		IF ((var_state=="vars")||(var_state=="args"))
byte_list set "arg1;\{byte_list}"
arg1 set xcounter
xcounter set xcounter+1
			IF var_state=="args"
args_list set "\{args_list}b"
			ENDIF
		ELSE
arg1:
			DFS 1
		ENDIF
		IF "arg2"<>""
			BYTE arg2, arg3, arg4, arg5, arg6, arg7, arg8
		ENDIF
	ENDIF
	ENDM
	
WORD MACRO arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, {GLOBALSYMBOLS}
	IF "arg1"<>""
		IF ((var_state=="vars")||(var_state=="args"))
word_list set "arg1;\{word_list}"
arg1 set xcounter
xcounter set xcounter+2
			IF var_state=="args"
args_list set "\{args_list}w"
			ENDIF
		ELSE
arg1:
			DFS 2
		ENDIF
		IF "arg2"<>""
			WORD arg2, arg3, arg4, arg5, arg6, arg7, arg8
		ENDIF
	ENDIF
	ENDM
	
STRING MACRO arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8
	IF "arg1"<>""
		IF ((var_state=="vars")||(var_state=="args"))
arg1 set xcounter
xcounter set xcounter+2
word_list set "arg1;\{word_list}"
			IF var_state=="args"
args_list set "\{args_list}s"
			ENDIF
			IF "arg2"<>""
				STRING arg2, arg3, arg4, arg5, arg6, arg7, arg8
			ENDIF
		ELSE
			DFS 2
		ENDIF
	ENDIF
	
	ENDM
		
	
ZPBYTE MACRO arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8
	IF "arg1"<>""
arg1 set zpcounter+ZP_locals
zpcounter set zpcounter+1
zpbyte_list set "arg;\{zpbyte_list}"
		IF "arg2"<>""
			ZPBYTE arg2, arg3, arg4, arg5, arg6, arg7, arg8
		ENDIF
	ENDIF
	ENDM

ZPWORD MACRO arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8
	IF "arg1"<>""
arg1 set zpcounter+ZP_locals
zpcounter set zpcounter+2
zpword_list set "arg1;\{zpword_list}"
		IF "arg2"<>""
			ZPWORD arg2, arg3, arg4, arg5, arg6, arg7, arg8
		ENDIF
	ENDIF
	ENDM
	
	
mov_helper MACRO arg
mov_ret set "other"
	
	;Couldnt get this to work :(
;	IF exprtype(arg)==2
;mov_ret set "string"
;		EXITM
;	ENDIF
	
	IF ((UPSTRING("arg")=="A") || (UPSTRING("arg")=="X") || (UPSTRING("arg")=="Y") || (UPSTRING("arg")=="S"))
mov_ret set "arg"
		EXITM
	ELSEIF substr("arg",0,1)=="#"
mov_ret set "immed"
		EXITM
	ENDIF
	
semi_symbol set ";"
temp_list set byte_list
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
			error "Invalid third argument: arg3"
		ENDIF
	ELSE
		error "Invalid third argument: arg3"
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
			IF "arg1"=="#0"
				STZ arg2,X
			ELSE
				LDA arg1#256
				STA arg2,X
			ENDIF
			EXITM
		ELSEIF (arg2type=="word")
			IF "arg1"=="#0"
				STZ arg2,X
			ELSE
				LDA arg1#256
				STA arg2,X
			ENDIF
			STZ arg2+1,X
			EXITM
		ELSEIF (arg2type=="other")
			IF "arg1"=="#0"
				STZ arg2
			ELSE
				LDA arg1#256
				STA arg2
			ENDIF
			EXITM
		ELSEIF (arg2type=="other,X")
			IF "arg1"=="#0"
				STZ arg2,X
			ELSE
				LDA arg1#256
				STA arg2,X
			ENDIF
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
			error "Invalid third argument: arg3"
		ENDIF
	ELSE
		error "Invalid third argument: arg3"
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
			IF "arg1"=="#0"
				STZ arg2,X
			ELSE
				LDA arg1#256
				STA arg2,X
			ENDIF
			EXITM
		ELSEIF (arg2type=="word")
			IF "arg1"=="#0"
				STZ arg2,X
				STZ arg2+1,X
			ELSE
				LDA arg1#256
				STA arg2,X
				LDA arg1>>8
				STA arg2+1,X
			ENDIF
			EXITM
		ELSEIF (arg2type=="other")
			IF "arg1"=="#0"
				STZ arg2
				STZ arg2+1
			ELSE
				LDA arg1#256
				STA arg2
				LDA arg1>>8
				STA arg2+1
			ENDIF
			EXITM
		ELSEIF (arg2type=="other,X")
			IF "arg1"=="#0"
				STZ arg2,X
				STZ arg2+1,X
			ELSE
				LDA arg1#256
				STA arg2,X
				LDA arg1>>8
				STA arg2+1,X
			ENDIF
			EXITM
		ENDIF
	;ELSEIF arg1type=="string"
	;	BRA str_after
	;	str_name:
	;	FCC arg1
	;	str_after:
	;	message "\{str_name} \{arg2} \{arg3}"
	;	;MOV.W #str_name,arg2,arg3
	;	EXITM
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

call_helper MACRO arg, index, list
	IFNB arg
		IF strlen(list)>=index
			;message "\{list} - arg \{charfromstr(list,index-1)}"
			IF charfromstr(list,index-1)=='b'
				MOV.B arg, call_offset,X
call_offset set call_offset+1
			ELSEIF charfromstr(list,index-1)=='w'
				MOV.W arg, call_offset,X
call_offset set call_offset+2
			ELSEIF charfromstr(list,index-1)=='s'
				IF exprtype(arg)==2	;literal string
					BRA str_skip
					str_addr:
					FCB arg,0
					str_skip:
					MOV.W #str_addr, call_offset,X
				ELSE
					MOV.W arg, call_offset,X
				ENDIF
call_offset set call_offset+2
			ENDIF
		ENDIF
	ENDIF
	ENDM



CALL MACRO fname, arg1, arg2, arg3 , arg4, arg5, arg6, arg7, arg8		
temp_str set ""
	IF strstr(funcs_list1,":fname,")<>-1
temp_str set substr(funcs_list1,strstr(funcs_list1,":fname,"),strlen(funcs_list1))
	ELSEIF strstr(funcs_list2,":fname,")<>-1
temp_str set substr(funcs_list2,strstr(funcs_list2,":fname,"),strlen(funcs_list2))
	ELSEIF strstr(funcs_list3,":fname,")<>-1
temp_str set substr(funcs_list3,strstr(funcs_list3,":fname,"),strlen(funcs_list3))
	ELSEIF strstr(funcs_list5,":fname,")<>-1
temp_str set substr(funcs_list4,strstr(funcs_list4,":fname,"),strlen(funcs_list4))
	ELSEIF strstr(funcs_list5,":fname,")<>-1
temp_str set substr(funcs_list5,strstr(funcs_list5,":fname,"),strlen(funcs_list5))
	ENDIF

	IF temp_str<>""
temp_str set substr(temp_str,0,strstr(temp_str,";"))
temp_str set substr(temp_str,strlen(":fname,"),strlen(temp_str))
arg_str set substr(temp_str,0,strstr(temp_str,"."))
num_str set val(substr(temp_str,strstr(temp_str,".")+1,strlen(temp_str)))
	ELSE
		;error "fname not defined!"
arg_str set ""
num_str set 0
	ENDIF

call_offset set $100-num_str
	IF upstring(DEBUG_MODE)=="ON"
		OUTRADIX 16
		message "CALL fname:"
		message "   funcs_list1 = \{funcs_list1}"
		IF funcs_list2<>""
			message "   funcs_list2 = \{funcs_list2}"
		ENDIF
		IF funcs_list3<>""
			message "   funcs_list3 = \{funcs_list3}"
		ENDIF
		IF funcs_list4<>""
			message "   funcs_list4 = \{funcs_list4}"
		ENDIF
		IF funcs_list5<>""
			message "   funcs_list5 = \{funcs_list5}"
		ENDIF
		message "   arg_str = \{arg_str}"
		message "   num_str = \{num_str}"
		message "   initial call_offset = \{call_offset}"
		OUTRADIX 10
	ENDIF
	
	call_helper arg1, 1, arg_str
	call_helper arg2, 2, arg_str
	call_helper arg3, 3, arg_str
	call_helper arg4, 4, arg_str
	call_helper arg5, 5, arg_str
	call_helper arg6, 6, arg_str
	call_helper arg7, 7, arg_str
	call_helper arg8, 8, arg_str
	
	IF upstring(DEBUG_MODE)=="ON"
		OUTRADIX 16
		message "   ending call_offset = \{call_offset}"
		message "   "
		OUTRADIX 10
	ENDIF
	JSR fname
	ENDM
	
INC.W MACRO arg1
	mov_helper arg1
	IF mov_ret=="word"
		INC arg1,X
		BNE no_carry1
			INC arg1+1,X
		no_carry1:
	ELSE
		INC arg1
		BNE no_carry2
			INC arg1+1
		no_carry2:
	ENDIF
	ENDM
	
DEC.W MACRO arg1
	mov_helper arg1
	IF mov_ret=="word"
		LDA arg1,X
		SEC
		SBC #1
		STA arg1,X
		BCS no_carry1
			DEC arg1+1,X
		no_carry1:
	ELSE
		LDA arg1
		SEC
		SBC #1
		STA arg1
		BCS no_carry2
			DEC arg1+1
		no_carry2:
	ENDIF
	ENDM

WHICH MACRO arg1,{GLOBALSYMBOLS}
	IF "arg1"<>""
		mov_helper arg1
		IF ((mov_ret=="byte")||(mov_ret=="word"))
			LDA arg1,X
		ELSE
			LDA arg1
		ENDIF
	ENDIF
	
which_stack set "\{case_counter};\{back_counter};\{switch_counter};\{which_stack}"
case_counter set 0
back_counter set 0

switch_counter set switch_counter+1
	IF switch_counter>switch_max
switch_max set switch_counter
	ELSE
switch_counter set switch_max+1
switch_max set switch_max+1
	ENDIF

tc set "\{case_counter}"
ts set "\{switch_counter}"
	BRA s{ts}c{tc}
which_counter set which_counter+1
	ENDM

like_helper MACRO arg1,{GLOBALSYMBOLS}
	IF "arg1"<>""
tb set "\{back_counter}"
ts set "\{switch_counter}"
		BRA s{ts}b{tb}
tc set "\{case_counter}"
		s{ts}c{tc}:
		mov_helper arg1
		IF ((mov_ret=="byte")||(mov_ret=="word"))
			CMP arg1,X
		ELSE
			CMP arg1
		ENDIF
case_counter set case_counter+1
tc set "\{case_counter}"
		BNE s{ts}c{tc}
		BRA s{ts}b{tb}
	ENDIF
	ENDM
	
LIKE MACRO arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,{GLOBALSYMBOLS}
back_counter set back_counter+1
ts set "\{switch_counter}"
	;BRA s{ts}		;Only takes one being too long for all to be converted to JMP :/
	JMP s{ts}done
tc set "\{case_counter}"
ts set "\{switch_counter}"
	s{ts}c{tc}:
	mov_helper arg1
	IF ((mov_ret=="byte")||(mov_ret=="word"))
		CMP arg1,X
	ELSE
		CMP arg1
	ENDIF
case_counter set case_counter+1
tc set "\{case_counter}"
	JNE s{ts}c{tc}
	like_helper arg2
	like_helper arg3
	like_helper arg4
	like_helper arg5
	like_helper arg6
	like_helper arg7
	like_helper arg8
tb set "\{back_counter}"
	s{ts}b{tb}:
	ENDM

DEFAULT MACRO {GLOBALSYMBOLS}
ts set "\{switch_counter}"
	JRA s{ts}done
tc set "\{case_counter}"
	s{ts}c{tc}:
case_counter set case_counter+1
	ENDM

END_WHICH MACRO {GLOBALSYMBOLS}
ts set "\{switch_counter}"
tc set "\{case_counter}"
	s{ts}c{tc}:
	s{ts}done:

semi set ";"
case_counter set val("\{substr(which_stack,0,strstr(which_stack,semi))}")
which_stack set "\{substr(which_stack,strstr(which_stack,semi)+1,strlen(which_stack))}"
back_counter set val("\{substr(which_stack,0,strstr(which_stack,semi))}")
which_stack set "\{substr(which_stack,strstr(which_stack,semi)+1,strlen(which_stack))}"
switch_counter set val("\{substr(which_stack,0,strstr(which_stack,semi))}")
which_stack set "\{substr(which_stack,strstr(which_stack,semi)+1,strlen(which_stack))}"

which_counter set which_counter-1
	ENDM
	
;BREAK MACRO
;ts set "\{switch_counter}"
;	BRA s{ts}
;	ENDM
	
ADW.B MACRO arg1,arg2
	mov_helper arg1
arg1type set mov_ret
	mov_helper arg2
arg2type set mov_ret
	IF upstring("arg1")=="A"
		;value already loaded
	ELSEIF ((arg1type=="byte")||(arg1type=="word"))
		LDA arg1,X
	ELSEIF arg1type="immed"
		LDA arg1#256
	ELSE
		LDA arg1
	ENDIF
	
	CLC
	IF arg2type=="byte"
		ADC arg2,X
		STA arg2,X
		EXITM
	ELSEIF arg2type=="word"
		ADC arg2,X
		STA arg2,X
		BCC .no_carry
			INC arg2+1,X
		.no_carry:
	ELSE
		ADC arg2
		STA arg2
		BCC .no_carry
			INC arg2+1
		.no_carry:
	ENDIF
	ENDM
	
SBW.B MACRO arg1,arg2
	mov_helper arg1
arg1type set mov_ret
	mov_helper arg2
arg2type set mov_ret
	IF upstring("arg1")=="A"
		STA saveA
	ENDIF
	
	IF ((arg2type=="byte")||(arg2type=="word"))
		LDA arg2,X
	ELSE
		LDA arg2
	ENDIF
	
	SEC
	IF upstring("arg1")=="A"
		SBC saveA
	ELSEIF ((arg1type=="byte")||(arg1type=="word"))
		SBC arg1,X		
	ELSE
		SBC arg1
	ENDIF
	
	IF ((arg2type=="byte")||(arg2type=="word"))
		STA arg2,X
		BCS .no_carry
			DEC arg2+1,X
		.no_carry:
	ELSE
		STA arg2
		BCS .no_carry
			DEC arg2+1
		.no_carry:
	ENDIF
	
	ENDM	
	
ADW.W MACRO arg1,arg2
	mov_helper arg1
arg1type set mov_ret
	mov_helper arg2
arg2type set mov_ret
	IF (arg1type=="word")
		IF arg2type=="word"
			LDA arg1,X
			CLC
			ADC arg2,X
			STA arg2,X
			LDA arg1+1,X
			ADC arg2+1,X
			STA arg2+1,X
		ELSE
			LDA arg1,X
			CLC
			ADC arg2
			STA arg2
			LDA arg1+1,X
			ADC arg2+1
			STA arg2+1
		ENDIF
	ELSEIF arg1type="immed"
		IF arg2type=="word"
			LDA arg1#256
			CLC
			ADC arg2,X
			STA arg2,X
			LDA arg1>>8
			ADC arg2+1,X
			STA arg2+1,X
		ELSE
			LDA arg1#256
			CLC
			ADC arg2
			STA arg2
			LDA arg1>>8
			ADC arg2+1
			STA arg2+1
		ENDIF
	ELSE
		IF arg2type=="word"
			LDA arg1
			CLC
			ADC arg2,X
			STA arg2,X
			LDA arg1+1
			ADC arg2+1,X
			STA arg2+1,X
		ELSE
			LDA arg1
			CLC
			ADC arg2
			STA arg2
			LDA arg1+1
			ADC arg2+1
			STA arg2+1
		ENDIF
	ENDIF
	
	ENDM

SBW.W MACRO arg1,arg2
	mov_helper arg1
arg1type set mov_ret
	mov_helper arg2
arg2type set mov_ret
	IF (arg1type=="word")
		IF arg2type=="word"
			LDA arg2,X
			SEC
			SBC arg1,X
			STA arg2,X
			LDA arg2+1,X
			SBC arg1+1,X
			STA arg2+1,X
		ELSE
			LDA arg2
			SEC
			SBC arg1,X
			STA arg2
			LDA arg2+1
			SBC arg1+1,X
			STA arg2+1
		ENDIF
	ELSEIF arg1type="immed"
		IF arg2type=="word"
			LDA arg2,X
			SEC
			SBC arg1#256
			STA arg2,X
			LDA arg2+1,X
			SBC arg1>>8
			STA arg2+1,X
		ELSE
			LDA arg2
			SEC
			SBC arg1#256
			STA arg2
			LDA arg2+1
			SBC arg1>>8
			STA arg2+1
		ENDIF
	ELSE
		IF arg2type=="word"
			LDA arg2,X
			SEC
			SBC arg1
			STA arg2,X
			LDA arg2+1,X
			SBC arg1+1
			STA arg2+1,X
		ELSE
			LDA arg2
			SEC
			SBC arg1
			STA arg2
			LDA arg2+1
			SBC arg1+1
			STA arg2+1
		ENDIF
	ENDIF
	
	ENDM
	
ROL.W MACRO arg1
	mov_helper arg1
	IF mov_ret=="word"
		ROL arg1,X
		ROL arg1+1,X
	ELSE
		ROL arg1
		ROL arg1+1
	ENDIF
	ENDM

ROR.W MACRO arg1
	mov_helper arg1
	IF mov_ret=="word"
		ROR arg1+1,X
		ROR arg1,X
	ELSE
		ROR arg1+1
		ROR arg1
	ENDIF
	ENDM
		
JEQ MACRO arg1
	BNE skip
		JMP arg1
	skip:
	ENDM

JNE MACRO arg1
	BEQ skip
		JMP arg1
	skip:
	ENDM
	
JCC MACRO arg1
	BCS skip
		JMP arg1
	skip:
	ENDM

JCS MACRO arg1
	BCC skip
		JMP arg1
	skip:
	ENDM
	
JPL MACRO arg1
	BMI skip
		JMP arg1
	skip:
	ENDM

JMI MACRO arg1
	BPL skip
		JMP arg1
	skip:
	ENDM
		
	
JRA MACRO arg1
	JMP arg1
	ENDM
		
IF_EQ MACRO {GLOBALSYMBOLS}
if_stack set "\{if_counter};\{if_stack}"
temp set "\{if_counter}"
	;BNE if{temp}
	JNE if{temp}
if_counter set if_counter+1
	ENDM

;Same as IF_EQ but makes source slightly more readable
IF_0 MACRO {GLOBALSYMBOLS}
	IF_EQ
	ENDM

IF_FALSE MACRO {GLOBALSYMBOLS}
	IF_0
	ENDM

IF_NE MACRO {GLOBALSYMBOLS}
if_stack set "\{if_counter};\{if_stack}"
temp set "\{if_counter}"
	;BEQ if{temp}
	JEQ if{temp}
if_counter set if_counter+1
	ENDM
	
;Same as IF_NE but makes source slightly more readable
IF_NOT_0 MACRO {GLOBALSYMBOLS}
	IF_NE
	ENDM
	
IF_TRUE MACRO {GLOBALSYMBOLS}
	IF_NE
	ENDM
	
IF_CC MACRO {GLOBALSYMBOLS}
if_stack set "\{if_counter};\{if_stack}"
temp set "\{if_counter}"
	;BCS if{temp}
	JCS if{temp}
if_counter set if_counter+1
	ENDM
	
IF_LT MACRO {GLOBALSYMBOLS}
	IF_CC
	ENDM
	
IF_CS MACRO {GLOBALSYMBOLS}
if_stack set "\{if_counter};\{if_stack}"
temp set "\{if_counter}"
	;BCC if{temp}
	JCC if{temp}
if_counter set if_counter+1
	ENDM
	
IF_GE MACRO {GLOBALSYMBOLS}
	IF_CS
	ENDM
	
IF_MINUS MACRO {GLOBALSYMBOLS}
if_stack set "\{if_counter};\{if_stack}"
temp set "\{if_counter}"
	;BPL if{temp}
	JPL if{temp}
if_counter set if_counter+1
	ENDM	

IF_PLUS MACRO {GLOBALSYMBOLS}
if_stack set "\{if_counter};\{if_stack}"
temp set "\{if_counter}"
	;BMI if{temp}
	JMI if{temp}
if_counter set if_counter+1
	ENDM
	
ELSE_IF MACRO {GLOBALSYMBOLS}
semi set ";"
temp1 set "\{substr(if_stack,0,strstr(if_stack,semi))}"
if_stack set "\{if_counter};\{substr(if_stack,strstr(if_stack,semi)+1,strlen(if_stack))}"
temp2 set "\{if_counter}"
if_counter set if_counter+1
	JMP if{temp2}
	if{temp1}:
	ENDM
	
END_IF MACRO {GLOBALSYMBOLS}
semi set ";"
temp set "\{substr(if_stack,0,strstr(if_stack,semi))}"
if_stack set "\{substr(if_stack,strstr(if_stack,semi)+1,strlen(if_stack))}"
	if{temp}:
	ENDM

CARRY MACRO arg1
	mov_helper arg1
	BCC skip
	IF mov_ret=="word"
		INC arg1+1,X
	ELSEIF move_ret=="other"
		INC arg1+1
	ELSE
		ERROR "Invalid argument: arg1"
	ENDIF
	skip:
	ENDM
	
DO MACRO {GLOBALSYMBOLS}
do_stack set "\{do_counter};\{do_stack}"
temp set "\{do_counter}"		
	do{temp}:
do_counter set do_counter+1
	ENDM

LOOP MACRO
semi set ";"
temp set "\{substr(do_stack,0,strstr(do_stack,semi))}"
do_stack set "\{substr(do_stack,strstr(do_stack,semi)+1,strlen(do_stack))}"
	IF *-do{temp}<-130
		JMP do{temp}
	ELSE
		BRA do{temp}
	ENDIF

	ENDM

END MACRO {GLOBALSYMBOLS}
	IF which_counter>0
		END_WHICH
	ELSE
		IF var_state=="func"
			END_FUNC
		ELSEIF var_state=="end"
			END_FUNC
		ELSE
			END_VARS
		ENDIF
	ENDIF
	ENDM
	
	
;Optimizer macros
;================
;Macros for optimizing source or setting flag for external optimizer


;Initialize macro variables
;==========================

;For local variables
LOCALS_BEGIN set $00
LOCALS_END set $FF


;From xmacros
;============
	%assign xcounter 0
	%assign argcounter 0
	%assign byte_counter 0
	%assign word_counter 0

	%xdefine byte_list ""	
    %xdefine word_list ""	
    %xdefine zpbyte_list ""	
    %xdefine zpword_list ""	
    %xdefine args_list ""	
    %xdefine funcs_list ""
    %xdefine func_name ""	
    %xdefine if_stack ""	
    %assign if_counter 0	
    %xdefine do_stack ""	
    %assign do_counter 0
    %xdefine case_stack ""
    %xdefine which_stack ""
    %assign which_counter 0
    %assign back_counter 0
    %assign case_counter 0
    %assign switch_counter 0
    %assign switch_max 0
    %xdefine var_state "done"
    
    %xdefine mov_ret ""
    %assign call_offset 0

;Variables
;=========
;called from begin_vars and begin_args only!
	%macro setup_vars 0
		%assign xcounter 0
	%endmacro

	%macro ARGS 0
		%if var_state=="func"
			setup_vars
		%else
			%error "BEGIN_ARGS without FUNC!"
			%error var_state
		%endif
		%xdefine var_state "args"
	%endmacro
	
	%macro VARS 0
		%if var_state=="args"
			;do nothing. already setup in BEGIN_VARS!
		%elif var_state=="func"
			setup_vars
		%else
			%error "BEGIN_VARS without FUNC!"
		%endif
		%xdefine var_state "vars"
	%endmacro
	
	%macro END_VARS 0
		%if ((var_state="args")||(var_state="vars"))
			;nothing to do since not adjusting X
		%else
			error "END_VARS without BEGIN_ARGS or BEGIN_VARS!"
		%endif
		%xdefine var_state "end"
	%endmacro
	
	%macro BYTE 1-8
		%if ((var_state=="vars")||(var_state=="args"))
			%rep %0
				%defstr %%temp %1
				%strcat byte_list, %%temp ";" byte_list
				%assign xcounter xcounter+1
				%1 set ASSIGN_LOCAL_BYTE
				%if var_state=="args"
					%strcat args_list args_list "b"
					%defstr %%temp_counter local_counter
					%strcat %%temp_local func_name,".a",%%temp_counter
					%deftok %%temp_tok %%temp_local
					%defstr %%temp_arg %1
					%strcat %%temp_local2 func_name,".",%%temp_arg
					%deftok %%temp_tok2 %%temp_local2
					%%temp_tok set %%temp_tok2
					%assign local_counter local_counter+1
				%endif
				%rotate 1
			%endrep
		%else
			%rep %0
				%1:
					DFS 1
				%rotate 1
			%endrep
		%endif
	%endmacro

	%macro WORD 1-8
		%if ((var_state=="vars")||(var_state=="args"))
			%rep %0
				%defstr %%temp %1
				%strcat word_list, %%temp ";" word_list
				%assign xcounter xcounter+2
				%1 set ASSIGN_LOCAL_WORD
				%if var_state=="args"
					%strcat args_list args_list "w"
					%defstr %%temp_counter local_counter
					%strcat %%temp_local func_name,".a",%%temp_counter
					%deftok %%temp_tok %%temp_local
					%defstr %%temp_arg %1
					%strcat %%temp_local2 func_name,".",%%temp_arg
					%deftok %%temp_tok2 %%temp_local2
					%%temp_tok set %%temp_tok2
					%assign local_counter local_counter+1
				%endif
				%rotate 1
			%endrep
		%else
			%rep %0
				%1:
					DFS 2
				%rotate 1
			%endrep
		%endif
	%endmacro

	%macro STRING 1-8
		%if ((var_state=="vars")||(var_state=="args"))
			%rep %0
				%defstr %%temp %1
				%strcat word_list, %%temp ";" word_list
				%assign xcounter xcounter+2
				%1 set ASSIGN_LOCAL_WORD
				%if var_state=="args"
					%strcat args_list args_list "s"
					%defstr %%temp_counter local_counter
					%strcat %%temp_local func_name,".a",%%temp_counter
					%deftok %%temp_tok %%temp_local
					%defstr %%temp_arg %1
					%strcat %%temp_local2 func_name,".",%%temp_arg
					%deftok %%temp_tok2 %%temp_local2
					%%temp_tok set %%temp_tok2
					%assign local_counter local_counter+1
				%endif
				%rotate 1
			%endrep
		%else
			%rep %0
				%1:
					DFS 2
				%rotate 1
			%endrep
		%endif
	%endmacro
	

;Synthesized instructions
;========================
	%macro mov_helper 1
		%xdefine mov_ret "other"
		upper %1
		%defstr %%a1 %1
		%if upper_ret="A"
			%xdefine mov_ret "A"
		%elif upper_ret="X"
			%xdefine mov_ret "X"
		%elif upper_ret="Y"
			%xdefine mov_ret "Y"
		%elif upper_ret="S"
			%xdefine mov_ret "S"
		%else
			%substr %%temp upper_ret 1
			%if %%temp="#"
				%xdefine mov_ret "immed"
			%else
				%xdefine %%temp_list byte_list
				%rep 1000	;infinite loops not allowed so loop 1,000 times
					%if %%temp_list=""
						%exitrep
					%else
						;%warning "========"
						strstr %%temp_list, ";"
						;%warning strstr_ret
						%substr %%temp_arg %%temp_list 0,strstr_ret-1
						;%warning %%temp_arg
						%ifidn %%temp_arg,%%a1
							%xdefine mov_ret "byte"
							%xdefine %%temp_list ""
							%exitrep
						%else
							%strlen %%temp_len %%temp_list
							;%warning %%temp_len
							%substr %%temp_list %%temp_list strstr_ret+1,%%temp_len
							;%warning %%temp_list
							%strlen %%temp_len %%temp_list
							;%warning %%temp_len
						%endif
					%endif
				%endrep
				%if %%temp_list<>""
					%fatal "More than 1,000 symbols in function. Something is definitely wrong."
				%endif
				
				%if mov_ret="other"				
					%xdefine %%temp_list word_list
					%rep 1000	;infinite loops not allowed so loop 1,000 times
						%if %%temp_list=""
							%exitrep
						%else
							;%warning "========"
							strstr %%temp_list, ";"
							;%warning strstr_ret		
							%substr %%temp_arg %%temp_list 0,strstr_ret-1
							;%warning %%temp_arg
							%ifidn %%temp_arg,%%a1
								%xdefine mov_ret "word"
								%xdefine %%temp_list ""
								%exitrep
							%else
								%strlen %%temp_len %%temp_list
								;%warning %%temp_len
								%substr %%temp_list %%temp_list strstr_ret+1,%%temp_len
								;%warning %%temp_list
								%strlen %%temp_len %%temp_list
								;%warning %%temp_len
							%endif
						%endif
					%endrep
					%if %%temp_list<>""
						%fatal "More than 1,000 symbols in function. Something is definitely wrong."
					%endif
				%endif
			%endif
		%endif
	%endmacro

	%macro MOV.B 2-3
		upper %1
		%xdefine %%arg1 upper_ret
		upper %2
		%xdefine %%arg2 upper_ret
		
		mov_helper %1
		%xdefine %%arg1type mov_ret
		mov_helper %2
		%xdefine %%arg2type mov_ret
	
		upper %3
		%xdefine %%temp_arg upper_ret
		
		%if %%temp_arg=""
			;good. argument is optional
		%elif %%temp_arg="X"
			%if %%arg2type="other"
				%xdefine %%arg2type "other,X"
			%else
				%%strcat %%temp_msg "Invalid third argument: ",%3
				%fatal %%temp_msg
			%endif
		%else
			%%strcat %%temp_msg "Invalid third argument: ",%3
			%fatal %%temp_msg
		%endif
		
		;message "arg1 is \{arg1type} and arg2 is \{arg2type}"
		%if %%arg1type="A"
			%if %%arg2type="X"
				TAX
			%elif %%arg2type="Y"
				TAY
			%elif %%arg2type="byte"
				STA %2
			%elif %%arg2type="word"
				STA %2	
				STZ %2+1
			%elif %%arg2type="other"
				STA %2
			%elif %%arg2type="other,X"
				STA %2,X
			%endif
		%elif %%arg1type="X"
			%if %%arg2type="A"
				TXA
			%elif %%arg2type="Y"
				PHX
				PLY
			%elif %%arg2type="other"
				STX %2
			%endif
		%elif %%arg1type="Y"
			%if %%arg2type="A"
				TYA
			%elif %%arg2type="X"
				PHY
				PLX
			%elif %%arg2type="byte"
				STY %2
			%elif %%arg2type="word"
				STY %2
				STZ %2+1
			%elif %%arg2type="other"
				STY %2
			%elif %%arg2type="other,X"
				STY %2,X
			%endif
		%elif %%arg1type="byte"
			%if %%arg2type="A"
				LDA %1
			%elif %%arg2type="Y"
				LDY %1
			%elif %%arg2type="byte"
				LDA %1
				STA %2
			%elif %%arg2type="word"
				LDA %1
				STA %2
				STZ %2+1
			%elif %%arg2type="other"
				LDA %1
				STA %2
			%elif %%arg2type="other,X"
				LDA %1
				STA %2,X
			%endif
		%elif %%arg1type="word"
			%if %%arg2type="A"
				LDA %1
			%elif %%arg2type="Y"
				LDY %1
			%elif %%arg2type="byte"
				LDA %1
				STA %2
			%elif %%arg2type="word"
				LDA %1
				STA %2
				STZ %2+1
			%elif %%arg2type="other"
				LDA %1
				STA %2
			%elif %%arg2type="other,X"
				LDA %1
				STA %2,X
			%endif
		%elif %%arg1type="immed"
			%defstr %%immed_str %1
			%strlen %%immed_len %%immed_str
			%substr %%immed_temp %%immed_str 2,%%immed_len
			%deftok %%immed_temp %%immed_temp
			%if %%arg2type="A"
				LDA #(%%immed_temp) % 256
			%elif %%arg2type="X"
				LDX #(%%immed_temp) % 256
			%elif %%arg2type="Y"
				LDY #(%%immed_temp) % 256
			%elif %%arg2type="byte"
				%if %%arg1="#0"
					STZ %2
				%else
					LDA #(%%immed_temp) % 256
					STA %2
				%endif
			%elif %%arg2type="word"
				%if %%arg1="#0"
					STZ %2
				%else
					LDA #(%%immed_temp) % 256
					STA %2
				%endif
			%elif %%arg2type="other"
				%if %%arg1="#0"
					STZ %2
				%else
					LDA #(%%immed_temp) % 256
					STA %2
				%endif
			%elif %%arg2type="other,X"
				%if %%arg1="#0"
					STZ %2,X
				%else
					LDA #(%%immed_temp) % 256
					STA %2,X
				%endif
			%endif
		%elif %%arg1type="other"
			%if %%arg2type="A"
				LDA %1
			%elif %%arg2type="X"
				LDX %1
			%elif %%arg2type="Y"
				LDY %1
			%elif %%arg2type="byte"
				LDA %1
				STA %2
			%elif %%arg2type="word"
				LDA %1
				STA %2
				STZ %2+1
			%elif %%arg2type="other"
				LDA %1
				STA %2
			%elif %%arg2type="other,X"
				LDA %1
				STA %2,X
			%endif
		%endif
	%endmacro

	%macro MOV 2
		MOV.B %1,%2
	%endmacro

	%macro MOV 3
		MOV.B %1,%2,%3
	%endmacro

	%macro MOV.W 2-3
	
		upper %1
		%xdefine %%arg1 upper_ret
		upper %2
		%xdefine %%arg2 upper_ret
		
		mov_helper %1
		%xdefine %%arg1type mov_ret
		mov_helper %2
		%xdefine %%arg2type mov_ret
	
		upper %3
		%xdefine %%temp_arg upper_ret
		
		%if %%temp_arg=""
			;good. argument is optional
		%elif %%temp_arg="X"
			%if %%arg2type="other"
				%xdefine %%arg2type "other,X"
			%else
				%%strcat %%temp_msg "Invalid third argument: ",%3
				%fatal %%temp_msg
			%endif
		%else
			%%strcat %%temp_msg "Invalid third argument: ",%3
			%fatal %%temp_msg
		%endif
		
		;message "arg1 is \{arg1type} and arg2 is \{arg2type}"
		%if %%arg1type="A"
			%if %%arg2type="X"
				TAX
			%elif %%arg2type="Y"
				TAY
			%elif %%arg2type="byte"
				STA %2
			%elif %%arg2type="word"
				STA %2	
				STZ %2+1
			%elif %%arg2type="other"
				STA %2
				STZ %2+1
			%elif %%arg2type="other,X"
				STA %2,X
				STZ %2+1,X
			%endif
		%elif %%arg1type="X"
			%if %%arg2type="A"
				TXA
			%elif %%arg2type="Y"
				PHX
				PLY
			%elif %%arg2type="other"
				STA %2
				STZ %2+1
			%endif
		%elif %%arg1type="Y"
			%if %%arg2type="A"
				TYA
			%elif %%arg2type="X"
				PHY
				PLX
			%elif %%arg2type="byte"
				STY %2
			%elif %%arg2type="word"
				STY %2	
				STZ %2+1
			%elif %%arg2type="other"
				STY %2
				STZ %2+1
			%elif %%arg2type="other,X"
				STY %2,X
				STZ %2+1,X
			%endif
		%elif %%arg1type="byte"
			%if %%arg2type="A"
				LDA %1
			%elif %%arg2type="Y"
				LDY %1
			%elif %%arg2type="byte"
				LDA %1
				STA %2
			%elif %%arg2type="word"
				LDA %1
				STA %2
				STZ %2+1
			%elif %%arg2type="other"
				LDA %1
				STA %2
			%elif %%arg2type="other,X"
				LDA %1
				STA %2,X
			%endif
		%elif %%arg1type="word"
			%if %%arg2type="A"
				LDA %1
			%elif %%arg2type="Y"
				LDY %1
			%elif %%arg2type="byte"
				LDA %1
				STA %2
			%elif %%arg2type="word"
				LDA %1
				STA %2
				LDA %1+1
				STA %2+1
			%elif %%arg2type="other"
				LDA %1
				STA %2
				LDA %1+1
				STA %2+1
			%elif %%arg2type="other,X"
				LDA %1
				STA %2,X
				LDA %1+1
				STA %2+1,X
			%endif
		%elif %%arg1type="immed"
			%defstr %%immed_str %1
			%strlen %%immed_len %%immed_str
			%substr %%immed_temp %%immed_str 2,%%immed_len
			%deftok %%immed_temp %%immed_temp
			%if %%arg2type="A"
				LDA %1
			%elif %%arg2type="X"
				LDX %1
			%elif %%arg2type="Y"
				LDY %1
			%elif %%arg2type="byte"
				%if %%arg1="#0"
					STZ %2
				%else
					LDA #(%%immed_temp) % 256
					STA %2
				%endif
			%elif %%arg2type="word"
				%if %%arg1="#0"
					STZ %2
					STZ %2+1
				%else
					LDA #(%%immed_temp) % 256
					STA %2
					LDA #(%%immed_temp) / 256
					STA %2+1
				%endif
			%elif %%arg2type="other"
				%if %%arg1=="#0"
					STZ %2
					STZ %2+1
				%else
					LDA #(%%immed_temp) % 256
					STA %2
					LDA #(%%immed_temp) / 256
					STA %2+1
				%endif
			%elif %%arg2type="other,X"
				%if %%arg1=="#0"
					STZ %2,X
					STZ %2+1,X
				%else
					LDA #(%%immed_temp) % 256
					STA %2,X
					LDA #(%%immed_temp) / 256
					STA %2+1,X
				%endif
			%endif
		%elif %%arg1type="string"
			BRA %%str_after
			%%str_name:
			FCC %%arg1
			%%str_after:
		%elif %%arg1type="other"
			%if %%arg2type="A"
				LDA %1
			%elif %%arg2type="X"
				LDX %1
			%elif %%arg2type="Y"
				LDY %1
			%elif %%arg2type="byte"
				LDA %1
				STA %2
			%elif %%arg2type="word"
				LDA %1
				STA %2
				LDA %1+1
				STA %2+1
			%elif %%arg2type="other"
				LDA %1
				STA %2
				LDA %1+1
				STA %2+1
			%elif %%arg2type="other,X"
				LDA %1
				STA %2,X
				LDA %1+1
				STA %2+1,X
			%endif
		%endif
	%endmacro

	%macro INC.W 1
		INC %1
		BNE %%no_carry
			INC %1+1
		%%no_carry:
	%endmacro
	
	%macro INC.W 2
		INC %1,X
		BNE %%no_carry
			INC %1+1,X
		%%no_carry:
	%endmacro
	
	%macro DEC.W 1
		LDA %1
		SEC
		SBC #1
		STA %1
		BCS %%no_underflow
			DEC %1+1
		%%no_underflow:
	%endmacro
	
	%macro WHICH 0-1
		%ifnempty %1
			LDA %1
		%endif
		
		%defstr %%temp_case case_counter
		%defstr %%temp_back back_counter
		%defstr %%temp_switch switch_counter
		%strcat which_stack %%temp_case,";",%%temp_back,";",%%temp_switch,";",which_stack 
		%assign case_counter 0
		%assign back_counter 0
		%assign switch_counter switch_counter+1
		%if switch_counter>switch_max
			%assign switch_max switch_counter
		%else
			%assign switch_counter switch_max+1
			%assign switch_max switch_max+1
		%endif
		%defstr %%tc case_counter
		%defstr %%ts switch_counter
		%strcat %%temp_label ".s",%%ts,"c",%%tc
		%deftok %%temp_label %%temp_label
		BRA %%temp_label
		%assign which_counter which_counter+1
	%endmacro
	
	%macro like_helper 1
		%ifnempty %1
			%defstr %%tb back_counter
			%defstr %%ts switch_counter
			%strcat %%temp_label ".s",%%ts,"b",%%tb
			%deftok %%temp_label %%temp_label
			BRA %%temp_label
			%defstr %%tc case_counter
			%strcat %%temp_label ".s",%%ts,"c",%%tc
			%deftok %%temp_label %%temp_label
			%%temp_label:
			CMP %1
			%assign case_counter case_counter+1
			%defstr %%tc case_counter
			%strcat %%temp_label ".s",%%ts,"c",%%tc
			%deftok %%temp_label %%temp_label
			BNE %%temp_label
			%strcat %%temp_label ".s",%%ts,"b",%%tb
			%deftok %%temp_label %%temp_label
			BRA %%temp_label
		%endif
	%endmacro

	%macro LIKE 1-8
		%assign back_counter back_counter+1
		%defstr %%ts switch_counter
		%strcat %%temp_label ".s",%%ts,"done"
		%deftok %%temp_label %%temp_label
		JMP %%temp_label
		%defstr %%tc case_counter
		%strcat %%temp_label ".s",%%ts,"c",%%tc
		%deftok %%temp_label %%temp_label
		%%temp_label:
		CMP %1
		%assign case_counter case_counter+1
		%defstr %%tc case_counter
		%strcat %%temp_label ".s",%%ts,"c",%%tc
		%deftok %%temp_label %%temp_label
		JNE %%temp_label
		
		like_helper %2
		like_helper %3
		like_helper %4
		like_helper %5
		like_helper %6
		like_helper %7
		like_helper %8
		
		%defstr %%tb back_counter
		%strcat %%temp_label ".s",%%ts,"b",%%tb
		%deftok %%temp_label %%temp_label
		%%temp_label:
	%endmacro

	%macro DEFAULT 0
		%defstr %%ts switch_counter
		%strcat %%temp_label ".s",%%ts,"done"
		%deftok %%temp_label %%temp_label
		JRA %%temp_label
		%defstr %%tc case_counter
		%strcat %%temp_label ".s",%%ts,"c",%%tc
		%deftok %%temp_label %%temp_label
		%%temp_label:
		%assign case_counter case_counter+1
	%endmacro
	
	%macro END_WHICH 0
		%defstr %%ts switch_counter
		%defstr %%tc case_counter
		%strcat %%temp_label ".s",%%ts,"c",%%tc
		%deftok %%temp_label %%temp_label
		%%temp_label:
		%strcat %%temp_label ".s",%%ts,"done"
		
		%deftok %%temp_label %%temp_label
		%%temp_label:
		
		strstr which_stack,";"
		%substr %%temp_str which_stack 1,strstr_ret-1
		%deftok case_counter %%temp_str
		
		%strlen %%temp_len which_stack
		%substr which_stack which_stack strstr_ret+1,%%temp_len
		strstr which_stack,";"
		%substr %%temp_str which_stack 1,strstr_ret-1
		%deftok back_counter %%temp_str
	
		%strlen %%temp_len which_stack
		%substr which_stack which_stack strstr_ret+1,%%temp_len
		strstr which_stack,";"
		%substr %%temp_str which_stack 1,strstr_ret-1
		%deftok switch_counter %%temp_str
		
		%strlen %%temp_len which_stack
		%substr which_stack which_stack strstr_ret+1,%%temp_len
		
		%assign which_counter which_counter-1
	%endmacro

	%macro ADW.B 2
		mov_helper %1
		%xdefine %%arg1type mov_ret
		mov_helper %2
		%xdefine %%arg2type mov_ret
		upper %1
		%if upper_ret="A"
			;value already loaded`
		%elif (%%arg1type="byte")||(%%arg1type="word")
			LDA %1
		%elif %%arg1type="immed"
			%defstr %%immed_str %1
			%strlen %%immed_len %%immed_str
			%substr %%immed_temp %%immed_str 2,%%immed_len
			%deftok %%immed_temp %%immed_temp
			LDA #(%%immed_temp)  % 256
		%else
			LDA %1
		%endif
		
		CLC
		%if %%arg2type="byte"
			ADC %2
			STA %2
		%elif %%arg2type="word"
			ADC %2
			STA %2
			BCC %%skip
				INC %2+1
			%%skip:
		%else
			ADC %2
			STA %2
			BCC %%skip
				INC %2+1
			%%skip:
		%endif
	%endmacro

	%macro SBW.B 2
		mov_helper %1
		%xdefine %%arg1type mov_ret
		mov_helper %2
		%xdefine %%arg2type mov_ret
		upper %1
		%if upper_ret="A"
			STA saveA
		%endif
		
		LDA %2
		
		SEC
		%if upper_ret="A"
			SBC saveA
		%else
			SBC %1
		%endif
	
		STA %2
		BCS %%skip
			DEC %2+1
		%%skip:
	%endmacro

	%macro ADW.W 2
		mov_helper %1
		%xdefine %%arg1type mov_ret
		;mov_helper %2
		;%xdefine %%arg2type mov_ret
		
		%if %%arg1type="immed"
			%defstr %%immed_str %1
			%strlen %%immed_len %%immed_str
			%substr %%immed_temp %%immed_str 2,%%immed_len
			%deftok %%immed_temp %%immed_temp
			LDA #(%%immed_temp) % 256
			CLC
			ADC %2
			STA %2
			LDA #(%%immed_temp) / 256
			ADC %2+1
			STA %2+1
		%else
			LDA %1
			CLC
			ADC %2
			STA %2
			LDA %1+1
			ADC %2+1
			STA %2+1
		%endif
	%endmacro
	
	%macro SBW.W 2
		mov_helper %1
		%xdefine %%arg1type mov_ret
		;mov_helper %2
		;%xdefine %%arg2type mov_ret
		
		%if %%arg1type="immed"
			%defstr %%immed_str %1
			%strlen %%immed_len %%immed_str
			%substr %%immed_temp %%immed_str 2,%%immed_len
			%deftok %%immed_temp %%immed_temp
			LDA %2
			SEC
			SBC #(%%immed_temp) % 256
			STA %2
			LDA %2+1
			SBC #(%%immed_temp) / 256
			STA %2+1
		%else
			LDA %2
			SEC
			SBC %1
			STA %2
			LDA %2+1
			SBC %1+1
			STA %2+1
		%endif
	%endmacro
	
	%macro ROL.W 1
		ROL %1
		ROL %1+1
	%endmacro

	%macro ROR.W 1
		ROR %1+1
		ROR %1
	%endmacro
		
	%macro JEQ 1
		BNE %%skip
			JMP %1
		%%skip:
	%endmacro

	%macro JNE 1
		BEQ %%skip
			JMP %1
		%%skip:
	%endmacro

	%macro JCC 1
		BCS %%skip
			JMP %1
		%%skip:
	%endmacro
	
	%macro JCS 1
		BCC %%skip
			JMP %1
		%%skip:
	%endmacro
		
	%macro JPL 1
		BMI %%skip
			JMP %1
		%%skip:
	%endmacro
	
	%macro JMI 1
		BPL %%skip
			JMP %1
		%%skip:
	%endmacro
	
	%macro JRA 1
		JMP %1
	%endmacro
	
	%macro IF_EQ 0
		%defstr %%temp_num if_counter
		%strcat if_stack %%temp_num,";",if_stack
		%strcat %%temp_label ".if",%%temp_num
		%deftok %%temp_label %%temp_label
		JNE %%temp_label
		%assign if_counter if_counter+1
	%endmacro
	
	;;Same as IF_EQ but makes source slightly more readable
	%macro IF_0 0
		IF_EQ
	%endmacro
	
	%macro IF_FALSE 0
		IF_EQ
	%endmacro

	%macro IF_NE 0
		%defstr %%temp_num if_counter
		%strcat if_stack %%temp_num,";",if_stack
		%strcat %%temp_label ".if",%%temp_num
		%deftok %%temp_label %%temp_label
		JEQ %%temp_label
		%assign if_counter if_counter+1
	%endmacro

	;;Same as IF_NE but makes source slightly more readable
	%macro IF_NOT_0 0
		IF_NE
	%endmacro

	%macro IF_TRUE 0
		IF_NE
	%endmacro

	%macro IF_CC 0
		%defstr %%temp_num if_counter
		%strcat if_stack %%temp_num,";",if_stack
		%strcat %%temp_label ".if",%%temp_num
		%deftok %%temp_label %%temp_label
		JCS %%temp_label
		%assign if_counter if_counter+1
	%endmacro

	%macro IF_LT 0
		IF_CC
	%endmacro
	
	%macro IF_CS 0
		%defstr %%temp_num if_counter
		%strcat if_stack %%temp_num,";",if_stack
		%strcat %%temp_label ".if",%%temp_num
		%deftok %%temp_label %%temp_label
		JCC %%temp_label
		%assign if_counter if_counter+1
	%endmacro
	
	%macro IF_GE 0
		IF_CS
	%endmacro
	
	%macro IF_MINUS 0
		%defstr %%temp_num if_counter
		%strcat if_stack %%temp_num,";",if_stack
		%strcat %%temp_label ".if",%%temp_num
		%deftok %%temp_label %%temp_label
		JPL %%temp_label
		%assign if_counter if_counter+1
	%endmacro
	
	%macro IF_PLUS 0
		%defstr %%temp_num if_counter
		%strcat if_stack %%temp_num,";",if_stack
		%strcat %%temp_label ".if",%%temp_num
		%deftok %%temp_label %%temp_label
		JMI %%temp_label
		%assign if_counter if_counter+1
	%endmacro
	
	%macro ELSE_IF 0
		strstr if_stack,";"
		%substr %%temp1 if_stack 1,strstr_ret-1
		%strlen %%temp_len if_stack
		%substr %%temp_str if_stack strstr_ret+1,%%temp_len
		%defstr %%temp2 if_counter
		%strcat if_stack %%temp2,";",%%temp_str
		%defstr %%temp2 if_counter
		%assign if_counter if_counter+1
		%strcat %%temp_str ".if",%%temp2
		%deftok %%temp_label %%temp_str
		JMP %%temp_label
		%strcat %%temp_str ".if",%%temp1
		%deftok %%temp_label %%temp_str
		%%temp_label:
	%endmacro
	
	%macro END_IF 0
		strstr if_stack,";"
		%substr %%temp if_stack 1,strstr_ret-1
		%strlen %%temp_len if_stack
		%substr if_stack if_stack strstr_ret+1,%%temp_len
		%strcat %%temp_str ".if",%%temp
		%deftok %%temp_label %%temp_str
		%%temp_label:
	%endmacro
	
	%macro CARRY 1
		mov_helper %1
		BCC %%skip
			INC %1+1
		%%skip:
	%endmacro
	
	%macro END 0
		%if which_counter>0
			END_WHICH
		%else
			%if var_state=="func"
				END_FUNC
			%elif var_state=="end"
				END_FUNC
			%else
				END_VARS
			%endif
		%endif
	%endmacro
			

;Function macros
;===============
;Attributes listed after FUNC
;(utility macro for FUNC not to be called by user)
	%macro FUNC_ATTRIB 2
		upper %2
		%if upper_ret="BEGIN"
			BEGIN_FUNC set %1
		%endif
	%endmacro

	%macro FUNC 1-2 ""
		FUNC_ATTRIB %1, %2
		%1:
		%if var_state<>"done"
			%error "FUNC within FUNC not allowed!"
			%error var_state
		%endif
		%defstr func_name %1
		%xdefine func_name func_name
		%xdefine var_state "func"
		%assign local_counter 0
	%endmacro
	
	%macro END_FUNC 0
		%if args_list<>""
			%defstr %%temp xcounter
			%strcat funcs_list ":" func_name "," args_list "." %%temp ";" funcs_list 
		%endif
		RTS
		%assign xcounter 0
		%assign zpcounter 0
		%xdefine byte_list ""
		%xdefine word_list ""
		%xdefine zpbyte_list ""
		%xdefine zpword_list ""
		%xdefine var_state "done"
		%xdefine args_list ""
	%endmacro

	%macro call_helper 4
	;fname, arg, index, list
		%ifnempty %2
			%strlen %%temp_len %4
			%if %%temp_len>=%3
				%substr %%temp_c %4 %3,1
				%defstr %%temp_counter local_counter
				%defstr %%temp_fname %1
				%strcat %%temp_label %%temp_fname,".a",%%temp_counter
				%deftok %%temp_tok %%temp_label
				%if %%temp_c="b"
					MOV.B %2, %%temp_tok
				%elif %%temp_c="w"
					MOV.W %2, %%temp_tok
				%elif %%temp_c="s"
					%ifstr %2
						BRA %%str_skip
						%%str_addr:
						FCB %2,0
						%%str_skip:
						MOV.W #%%str_addr, %%temp_tok
					%else
						MOV.W %2, %%temp_tok
					%endif
				%endif
				%assign local_counter local_counter+1
			%endif
		%endif
	%endmacro

	;CALL MACRO fname, arg1, arg2, arg3 , arg4, arg5, arg6, arg7, arg8	
	%macro CALL 1-9
		
		;%defstr %%debug "=====",%1,"====="
		;%warning %%debug
		
		%if funcs_list<>""
			%defstr %%temp_buff %1
			%strcat %%temp_buff ":" %%temp_buff ","
			strstr funcs_list,%%temp_buff
			
			%if strstr_ret=0
				;%defstr %%msg %1
				;%strcat %%msg "function not found ******************** - " %%msg
				;%warning %%msg
				;%warning funcs_list
			%else
				%strlen %%temp_len %%temp_buff
				%assign strstr_ret strstr_ret+%%temp_len
				
				%strlen %%temp_len funcs_list
				%substr %%temp_str funcs_list strstr_ret,%%temp_len
				
				;%warning funcs_list
				;%warning %%temp_str
				
				strstr %%temp_str,"."
				%substr %%arg_str %%temp_str 1,strstr_ret-1
				
				;%warning %%arg_str
				
				%assign local_counter 0
		
				call_helper %1, %2, 1, %%arg_str
				call_helper %1, %3, 2, %%arg_str
				call_helper %1, %4, 3, %%arg_str
				call_helper %1, %5, 4, %%arg_str
				call_helper %1, %6, 5, %%arg_str
				call_helper %1, %7, 6, %%arg_str
				call_helper %1, %8, 7, %%arg_str
				call_helper %1, %9, 8, %%arg_str
		
			%endif
		%endif
		
		JSR %1
	%endmacro
	
;	
;;Wrappers for functions built into optimizer
;;===========================================
;OPTIMIZER_BUILTIN set $FF
;BUILTIN MACRO arg1, arg2
;;Dummy value for external optimizer
;;OPTIMIZER_BUILTIN set $FF
;	IF ARGCOUNT=1
;arg1 FUNCTION CUSTOM,OPTIMIZER_BUILTIN
;	ELSEIF ARGCOUNT=2
;		IF arg=1
;arg1 FUNCTION CUSTOM,OPTIMIZER_BUILTIN
;		ELSEIF arg=2
;arg1 FUNCTION CUSTOM,a0,OPTIMIZER_BUILTIN
;		ELSEIF arg=3
;arg1 FUNCTION CUSTOM,a0,a1,OPTIMIZER_BUILTIN
;		ELSEIF arg=4
;arg1 FUNCTION CUSTOM,a0,a1,a2,OPTIMIZER_BUILTIN
;		ENDIF
;	ELSE
;		ERROR "Builtin arg1: expand macro for more arguments"
;	ENDIF
;	ENDM

	%macro ORG 1
		ORG %1
	%endmacro


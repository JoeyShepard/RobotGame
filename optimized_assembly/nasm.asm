	%macro include 1
		%defstr %%temp %1
		%include %%temp
	%endmacro
	
	%define lo(x) x % 256
	%define hi(x) x / 256
	
	
	%macro upper 1
		%define upper_ret ""
		%ifstr %1
			%define upper_str %1
		%else
			%defstr upper_str %1
		%endif
		%strlen %%i upper_str
		%assign %%j 1
		%rep %%i
			%substr %%temp upper_str %%j
			%if %%temp="a"
				%define %%temp "A"
			%elif %%temp="b"
				%define %%temp "B"
			%elif %%temp="c"
				%define %%temp "C"
			%elif %%temp="d"
				%define %%temp "D"
			%elif %%temp="e"
				%define %%temp "E"
			%elif %%temp="f"
				%define %%temp "F"
			%elif %%temp="g"
				%define %%temp "G"
			%elif %%temp="h"
				%define %%temp "H"
			%elif %%temp="i"
				%define %%temp "I"
			%elif %%temp="j"
				%define %%temp "J"
			%elif %%temp="k"
				%define %%temp "K"
			%elif %%temp="l"
				%define %%temp "L"
			%elif %%temp="m"
				%define %%temp "M"
			%elif %%temp="n"
				%define %%temp "N"
			%elif %%temp="o"
				%define %%temp "O"
			%elif %%temp="p"
				%define %%temp "P"
			%elif %%temp="q"
				%define %%temp "Q"
			%elif %%temp="r"
				%define %%temp "R"
			%elif %%temp="s"
				%define %%temp "S"
			%elif %%temp="t"
				%define %%temp "T"
			%elif %%temp="u"
				%define %%temp "U"
			%elif %%temp="v"
				%define %%temp "V"
			%elif %%temp="w"
				%define %%temp "W"
			%elif %%temp="x"
				%define %%temp "X"
			%elif %%temp="y"
				%define %%temp "Y"
			%elif %%temp="z"
				%define %%temp "Z"
			%endif
			%strcat upper_ret upper_ret %%temp
			%assign %%j %%j+1
		%endrep
	%endmacro
	
	%macro strstr 2
		%assign strstr_ret 0	;ie not found
		%strlen %%len_list %1	;string to search
		%strlen %%len_phrase %2	;what to search for
		%assign %%j 1
		%if %%len_list>=%%len_phrase
			%assign %%iterations %%len_list-%%len_phrase+1
			%rep %%iterations
				%substr %%temp %1 %%j,%%len_phrase
				%ifidn %%temp,%2
					%assign strstr_ret %%j
					%exitrep
				%endif
				%assign %%j %%j+1
			%endrep
		%endif
	%endmacro
	
	%macro ENUM 1
		%assign enum_counter 0
		%1 set 0
		%assign enum_counter enum_counter+1 
	%endmacro
	
	%macro NEXTENUM 1
		%1 set enum_counter
		%assign enum_counter enum_counter+1 
	%endmacro
	
	
	%include "main.asm"
	
	
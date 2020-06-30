;Names of custom functions added to optimizer
;============================================
;Names mentioned here to appease assembler
;Functions defined in pp_ops.py
;Add custom functions there and mention here
	
	BUILTIN example
	;hi and lo are defined in pp_ops.py but could be
	;defined here like this instead if preferred:
;lo	FUNCTION arg, arg#256
;hi	FUNCTION arg, arg/256
	
	;DISABLE FOR NOW!
	BUILTIN hi
	BUILTIN lo
	
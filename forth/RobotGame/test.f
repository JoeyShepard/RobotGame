
hex

begin_var
	var foo
	var bar
	var baz
end_var

: test 
23 foo c!
45 bar c!
foo c@ bar c@ +
baz c!
baz c@ . ;

test

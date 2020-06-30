: foo ." foo!" ;
foo						\ Success
EnableBankROM
: bar ." bar!" ;
foo bar					\ Success
EnableGfxRAM
foo bar					\ bar not found as expected
EnableBankROM
foo bar					\ Success
EnableGfxRAM
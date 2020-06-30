hex
\ 0 nc-limit !
1A nc-limit !
\ 1B nc-limit !					\ crashes
FFFF strip-underflow ! \ disable underflow check if not in debug mode
\ General Forth words
: x0 2drop drop ;
: x1 2 pick 2 pick 2 pick ;
: x2 r> -rot >r >r >r ; compile-only
: x3 r> swap >r -rot >r >r >r ; compile-only
: x4 r> r> r> rot >r ; compile-only
: x5 r> r> r> rot r> swap >r ; compile-only
\ : byte create 0 c, ;
: x6 dup dup 0= swap 0> or ;
: x7 dup c@ 1+ swap c! ;
: x8 dup c@ 1- swap c! ;
: x9 dup @ 1+ swap ! ;
: xa dup @ 1- swap ! ;
\ Variables stored in zero page
\ Hardware 
: xb FFE4 c@ ;
\ Bank constants and variables

variable xc \ Third dictionary in ROM with Tali Forth
\ Other constants and variables
wordlist constant xd \ second word list stored in bank 2
wordlist constant xe \ game word list stored in extra ROM
wordlist constant xf \ char menu word list stored in extra ROM
wordlist constant xg \ skills menu word list stored in extra ROM
wordlist constant xh \ res menu word list stored in extra ROM
wordlist constant xi \ common to all menus word list 
variable xj
\ Setup functions
\ don't watse space on this if immediate
\ : forth_copy ( -- )
\ 	C000 4000 3FE0 move 				\ copy entire Forth installation
\ ;
\ moved below to be immediate code to save dictionary space
\ : setup ( -- )
\ 60 FFDF c!							\ poke RTS (60) so FFDD will be BRK/RTS
\ 4000 cp_banked !					\ cp for banked code
\ code_end @
\ dup cp_dict_game !					\ cp for game dictionary
\ dup cp_dict_char_menu !				\ cp for char menu dictionary
\ dup cp_dict_skills_menu !			\ cp for skill menu dictionary
\ dup cp_dict_res_menu !				\ cp for res menu dictionary
\ 	cp_dict_common_menu !			\ cp for common menu dictionary
\ DICT_MAIN dict_which !				\ main dictionary enabled
\ game_wordlist third_dict !			\ which dictionary in ROM with Tali is enabled
\ 20 rand_val ! 						\ init rng with same value that worked well for C version
\ \ bank words not defined yet
\ 
\ bank_ext_ram1 bank2_register c!		\ point bank 2 to extended ram
\ forth_copy
\ bank_ext_ram2 bank2_register c!		\ point bank 2 to extended ram
\ forth_copy
\ bank_ext_ram3 bank2_register c!		\ point bank 2 to extended ram
\ forth_copy
\ bank_ext_ram4 bank2_register c!		\ point bank 2 to extended ram
\ forth_copy
\ 
\ bank_gfx_ram1 bank2_register c!		\ restore bank to gfx memory
\ 
\ \ bank_ext_ram1 bank4_register c!		\ try running from copied bank
\ \ bank_gen_ram4 bank4_register c!
\ ;
\ Debug words that can be left out of final version
: xk FFDD execute ; ( -- )			\ jump to 00 00 (BRK) followed by RTS (60 at FFDF)
: xl .s cr xk ;
\ : dump8	( addr u -- )					\ dump 8 bytes at a time to fit screen
\ 	begin
\ 		2dup							\ copy address and count 
\ 		8 > if							\ count > 8 ?
\ 			8 dump						\ show only 8 bytes
\ 			swap 8 +					\ advance address 8
\ 			swap 8 -					\ decrease count by 8
\ 		else
\ 			\ over dump					\ show remaining bytes
\ 			8 dump						\ show remaining bytes aligned to 8
\ 			drop 0						\ set remaining count to 0
\ 		then
\ 	dup	0=								\ loop until 0 bytes left
\ 	until
\ 	2drop								\ drop address and count
\ 	CR ;
\ 
\ Bank words
: xm FFE1 c! ; ( bank_id -- )
: xn FFE2 c! ; ( bank_id -- )
: xo ( -- )
1 xm
2 xn
1 86 ! ;
: xp ( -- )
4 xm
5 xn
0 86 ! ;
: xq ( -- )
86 @ 0= if
xo
\ bank2_wordlist dict_game_wordlist forth-wordlist 3 set-order
xd xc @ forth-wordlist 3 set-order
then ;
: xr ( -- )
86 @ 0<> if
\ dict_game_wordlist forth-wordlist 2 set-order
xc @ forth-wordlist 2 set-order
xp
then ;
: xs ( -- )
here
96 @ case
0 of 88 endof
1 of 8A endof
2 of 8C endof
3 of 8E endof
4 of 90 endof
5 of 92 endof
6 of 94 endof
endcase ! ;
: xt ( -- )
xs
88 @ 0 !
forth-wordlist set-current
0 96 ! ;
: xu ( -- )
xs
8A @ 0 !
xd set-current
1 96 ! ;
\ written for Enable words below but useful here too
: xv ( wordlist bank -- )
FFE3 c!
86 @ 0= if \ opposite from above since doesnt change bank_mode
forth-wordlist 2 set-order
else
xd swap forth-wordlist 3 set-order
then
;
\ old, not working
\ : ThirdDictCommon ( wordlist bank -- )
\ 	bank4_register c!		
\ 	SaveDict
\ 	@ cp !						\ load new cp
\ 	dict_which !				\ store which dictionary is active
\ 	dup third_dict !			\ which word list is active for set-order		
\ 	set-current
\ 	;
: xw ( wordlist bank -- )
xs
@ 0 ! \ load new cp
96 ! \ store which dictionary is active
dup xc ! \ which word list is active for set-order		
dup rot xv
set-current
;
: xx ( -- )
3
xe
2
8C
xw
;
: xy ( -- )
6
xf
3
8E
xw
;
: xz ( -- )
7
xg
4
90
xw
;
: x10 ( -- )
8
xh
5
92
xw
;
: x11 ( -- )
9
xi
6
94
xw
;
: x12 ( -- )
xe
3
xv
;
: x13
xf
6
xv
;
: x14
xg
7
xv
;
: x15
xh
8
xv
;
: x16
xi
9
xv
;
\ ***HARDWARE SETUP***
\ changed to immediate code
\ setup \ set up BankROM cp and break address before game code
60 FFDF c! \ poke RTS (60) so FFDD will be BRK/RTS
4000 8A ! \ cp for banked code
9A @
dup 8C ! \ cp for game dictionary
dup 8E ! \ cp for char menu dictionary
dup 90 ! \ cp for skill menu dictionary
dup 92 ! \ cp for res menu dictionary
94 ! \ cp for common menu dictionary
0 96 ! \ main dictionary enabled
xe xc ! \ which dictionary in ROM with Tali is enabled
20 xj ! \ init rng with same value that worked well for C version
\ bank words not defined yet
6 FFE1 c! \ point bank 2 to extended ram
\ forth_copy
C000 4000 3FE0 move
7 FFE1 c! \ point bank 2 to extended ram
\ forth_copy
C000 4000 3FE0 move
8 FFE1 c! \ point bank 2 to extended ram
\ forth_copy
C000 4000 3FE0 move
9 FFE1 c! \ point bank 2 to extended ram
\ forth_copy
C000 4000 3FE0 move
4 FFE1 c! \ restore bank to gfx memory
\ bank_ext_ram1 bank4_register c!		\ try running from copied bank
\ bank_gen_ram4 bank4_register c!
xq \ leave bank ROM enabled until graphics is needed
\ ***GAME SPECIFIC***
\ Game constants

\ target types

\ Item types

\ Item IDs

\ Tile IDs

\ Colorable tiles created in RAM from other tiles
\ enum Menu_head_temp
\ enum Menu_body_temp
\ enum Menu_legs_temp
\ enum Menu_gun_temp
\ enum Menu_tool_temp
\ Colorable tiles
\ Non-colorable tiles in RAM
\ 1bpp tiles
x11
: x17
-rot 2dup - u. ." / " drop
swap - u. ." bytes left" CR ;
: x18 ( -- )
0 98 ! \ disable output suppression after loading
decimal
CR
." Tali Forth 2:    " u. ." bytes" CR CR
." Main RAM:        " x17
." Bank 2:          " x17
." Game code:       " x17
." Char menu code:  " x17
." Skill menu code: " x17
." Res menu code:   " x17
." Common code:     " x17
CR hex
\ quit ;
." Type 'run' to play"
1 98 !
;
\ Tile data
xt
\ GENERATED TILES (see asset extraction script for sizes below)
create x19 B6 allot
create x1a BA allot
create x1b B6 allot
create x1c BA allot
create x1d B6 allot
create x1e B6 allot
create x1f 22A allot
create x1g 22A allot
create x1h 22A allot
create x1i 202 allot
create x1j 202 allot
\ create tile_Menu_head_temp B2 allot
\ create tile_Menu_body_temp 92 allot
\ create tile_Menu_legs_temp A2 allot
\ create tile_Menu_gun_temp 70 allot
\ create tile_Menu_tool_temp 5E allot
create x1k
B2 allot \ doesnt even load. nonsense underflow while loading
create x1l 4B allot
\ COLORABLE TILES
xu
create x1m 10 c, 10 c, 10 c, 40 c, 0 c, 3 c, 40 c, 1 c, 47 c, 3 c, 48 c, 9 c, 40 c, 0 c, 2 c, 40 c, 3 c, 47 c, 3 c, 48 c, 8 c, 40 c, 0 c, 3 c, 40 c, 1 c, 47 c, 2 c, 40 c, 2 c,
48 c, 8 c, 40 c, 0 c, 7 c, 40 c, 2 c, 48 c, 7 c, 40 c, 0 c, 7 c, 40 c, 2 c, 48 c, 7 c, 40 c, 0 c, 2 c, 40 c, c c, 49 c, 2 c, 40 c, 0 c, 1 c, 40 c, 2 c, 49 c, a c, 4a c, 2 c, 49 c, 1 c,
40 c, 0 c, 1 c, 40 c, 1 c, 49 c, c c, 4a c, 1 c, 49 c, 1 c, 40 c, 0 c, 1 c, 40 c, 1 c, 49 c, 3 c, 4a c, 1 c, 3f c, 1 c, 0 c, 3 c, 4a c, 1 c, 3f c, 1 c, 0 c, 2 c, 4a c, 1 c, 49 c, 1 c,
40 c, 0 c, 1 c, 40 c, 1 c, 49 c, 3 c, 4a c, 2 c, 3f c, 3 c, 4a c, 2 c, 3f c, 2 c, 4a c, 1 c, 49 c, 1 c, 40 c, 0 c, 1 c, 40 c, 1 c, 49 c, c c, 4a c, 1 c, 49 c, 1 c, 40 c, 0 c, 1 c, 40 c,
1 c, 49 c, 3 c, 4a c, 1 c, 4b c, 8 c, 4a c, 1 c, 49 c, 1 c, 40 c, 0 c, 1 c, 40 c, 1 c, 49 c, 4 c, 4a c, 5 c, 4b c, 3 c, 4a c, 1 c, 49 c, 1 c, 40 c, 0 c, 1 c, 40 c, 2 c, 49 c, a c, 4a c,
2 c, 49 c, 1 c, 40 c, 0 c, 2 c, 40 c, c c, 49 c, 2 c, 40 c, 0 c,
create x1n 10 c, 10 c, 10 c, 40 c, 0 c, 10 c, 40 c, 0 c, 10 c, 40 c, 0 c, 10 c, 40 c, 0 c, 5 c, 40 c, 6 c, 41 c, 5 c, 40 c, 0 c, 3 c, 40 c, 3 c, 41 c, 4 c, 42 c, 3 c, 41 c,
3 c, 40 c, 0 c, 2 c, 40 c, 1 c, 41 c, 1 c, 42 c, 1 c, 41 c, 6 c, 42 c, 1 c, 41 c, 1 c, 42 c, 1 c, 41 c, 2 c, 40 c, 0 c, 1 c, 40 c, 1 c, 41 c, 2 c, 42 c, 1 c, 41 c, 6 c, 42 c, 1 c, 41 c,
2 c, 42 c, 1 c, 41 c, 1 c, 40 c, 0 c, 1 c, 41 c, 3 c, 42 c, 1 c, 41 c, 6 c, 42 c, 1 c, 41 c, 3 c, 42 c, 1 c, 41 c, 0 c, 1 c, 41 c, 2 c, 42 c, 2 c, 41 c, 6 c, 42 c, 2 c, 41 c, 2 c, 42 c,
1 c, 41 c, 0 c, 1 c, 40 c, 2 c, 41 c, 1 c, 40 c, 1 c, 41 c, 6 c, 42 c, 1 c, 41 c, 1 c, 40 c, 2 c, 41 c, 1 c, 40 c, 0 c, 4 c, 40 c, 2 c, 41 c, 4 c, 42 c, 2 c, 41 c, 4 c, 40 c, 0 c, 5 c,
40 c, 6 c, 41 c, 5 c, 40 c, 0 c, 10 c, 40 c, 0 c, 10 c, 40 c, 0 c, 10 c, 40 c, 0 c,
create x1o 10 c, 10 c, 10 c, 40 c, 0 c, 10 c, 40 c, 0 c, 10 c, 40 c, 0 c, 10 c, 40 c, 0 c, 10 c, 40 c, 0 c, 3 c, 40 c, 3 c, 43 c, 3 c, 40 c, 3 c, 43 c, 4 c, 40 c, 0 c, 3 c,
40 c, 1 c, 43 c, 1 c, 44 c, 1 c, 43 c, 3 c, 40 c, 1 c, 43 c, 1 c, 44 c, 1 c, 43 c, 4 c, 40 c, 0 c, 3 c, 40 c, 1 c, 43 c, 1 c, 44 c, 1 c, 43 c, 3 c, 40 c, 1 c, 43 c, 1 c, 44 c, 1 c, 43 c,
4 c, 40 c, 0 c, 3 c, 40 c, 1 c, 43 c, 1 c, 44 c, 1 c, 43 c, 3 c, 40 c, 1 c, 43 c, 1 c, 44 c, 1 c, 43 c, 4 c, 40 c, 0 c, 3 c, 40 c, 1 c, 43 c, 1 c, 44 c, 1 c, 43 c, 3 c, 40 c, 1 c, 43 c,
1 c, 44 c, 1 c, 43 c, 4 c, 40 c, 0 c, 3 c, 40 c, 1 c, 43 c, 2 c, 44 c, 1 c, 43 c, 2 c, 40 c, 1 c, 43 c, 2 c, 44 c, 1 c, 43 c, 3 c, 40 c, 0 c, 3 c, 40 c, 1 c, 43 c, 3 c, 44 c, 1 c, 43 c,
1 c, 40 c, 1 c, 43 c, 3 c, 44 c, 1 c, 43 c, 2 c, 40 c, 0 c, 3 c, 40 c, 5 c, 43 c, 1 c, 40 c, 5 c, 43 c, 2 c, 40 c, 0 c, 10 c, 40 c, 0 c, 10 c, 40 c, 0 c, 10 c, 40 c, 0 c,
create x1p 10 c, 10 c, 10 c, 40 c, 0 c, 10 c, 40 c, 0 c, 10 c, 40 c, 0 c, 9 c, 40 c, 1 c, 45 c, 6 c, 40 c, 0 c, 8 c, 40 c, 3 c, 45 c, 5 c, 40 c, 0 c, 7 c, 40 c, 1 c, 45 c, 2 c,
46 c, 2 c, 45 c, 4 c, 40 c, 0 c, 6 c, 40 c, 1 c, 45 c, 3 c, 46 c, 1 c, 45 c, 5 c, 40 c, 0 c, 6 c, 40 c, 1 c, 45 c, 2 c, 46 c, 3 c, 45 c, 4 c, 40 c, 0 c, 5 c, 40 c, 8 c, 45 c, 3 c, 40 c,
0 c, 4 c, 40 c, 3 c, 45 c, 3 c, 40 c, 4 c, 45 c, 2 c, 40 c, 0 c, 3 c, 40 c, 2 c, 46 c, 1 c, 45 c, 5 c, 40 c, 3 c, 45 c, 2 c, 40 c, 0 c, 3 c, 40 c, 2 c, 46 c, 7 c, 40 c, 1 c, 45 c, 3 c,
40 c, 0 c, 10 c, 40 c, 0 c, 10 c, 40 c, 0 c, 10 c, 40 c, 0 c, 10 c, 40 c, 0 c,
create x1q 10 c, 10 c, 10 c, 40 c, 0 c, 10 c, 40 c, 0 c, 10 c, 40 c, 0 c, 9 c, 40 c, 2 c, 4c c, 5 c, 40 c, 0 c, 8 c, 40 c, 2 c, 4c c, 6 c, 40 c, 0 c, 8 c, 40 c, 2 c, 4c c,
2 c, 40 c, 1 c, 4c c, 3 c, 40 c, 0 c, 7 c, 40 c, 6 c, 4c c, 3 c, 40 c, 0 c, 6 c, 40 c, 6 c, 4c c, 4 c, 40 c, 0 c, 5 c, 40 c, 5 c, 4c c, 6 c, 40 c, 0 c, 4 c, 40 c, 5 c, 4c c, 7 c,
40 c, 0 c, 3 c, 40 c, 5 c, 4c c, 8 c, 40 c, 0 c, 3 c, 40 c, 4 c, 4c c, 9 c, 40 c, 0 c, 4 c, 40 c, 2 c, 4c c, a c, 40 c, 0 c, 10 c, 40 c, 0 c, 10 c, 40 c, 0 c, 10 c, 40 c, 0 c,
create x1r 20 c, 20 c, 20 c, 40 c, 0 c, 12 c, 40 c, 3 c, 48 c, 1 c, 47 c, a c, 40 c, 0 c, 11 c, 40 c, 3 c, 48 c, 3 c, 47 c, 9 c, 40 c, 0 c, 11 c, 40 c, 2 c, 48 c, 2 c,
40 c, 1 c, 47 c, a c, 40 c, 0 c, 10 c, 40 c, 2 c, 48 c, e c, 40 c, 0 c, 10 c, 40 c, 2 c, 48 c, e c, 40 c, 0 c, b c, 40 c, c c, 49 c, 9 c, 40 c, 0 c, a c, 40 c, 2 c, 49 c, a c, 4a c,
2 c, 49 c, 8 c, 40 c, 0 c, a c, 40 c, 1 c, 49 c, c c, 4a c, 1 c, 49 c, 8 c, 40 c, 0 c, a c, 40 c, 1 c, 49 c, 2 c, 4a c, 1 c, 0 c, 1 c, 3f c, 3 c, 4a c, 1 c, 0 c, 1 c, 3f c, 3 c, 4a c,
1 c, 49 c, 8 c, 40 c, 0 c, a c, 40 c, 1 c, 49 c, 2 c, 4a c, 2 c, 3f c, 3 c, 4a c, 2 c, 3f c, 3 c, 4a c, 1 c, 49 c, 8 c, 40 c, 0 c, a c, 40 c, 1 c, 49 c, c c, 4a c, 1 c, 49 c, 8 c,
40 c, 0 c, a c, 40 c, 1 c, 49 c, 8 c, 4a c, 1 c, 4b c, 3 c, 4a c, 1 c, 49 c, 8 c, 40 c, 0 c, a c, 40 c, 1 c, 49 c, 3 c, 4a c, 5 c, 4b c, 4 c, 4a c, 1 c, 49 c, 8 c, 40 c, 0 c, 6 c, 40 c,
1 c, 45 c, 3 c, 40 c, 2 c, 49 c, a c, 4a c, 2 c, 49 c, 8 c, 40 c, 0 c, 5 c, 40 c, 3 c, 45 c, 3 c, 40 c, c c, 49 c, 5 c, 40 c, 2 c, 4c c, 2 c, 40 c, 0 c, 4 c, 40 c, 1 c, 45 c, 2 c, 46 c,
2 c, 45 c, 3 c, 40 c, a c, 41 c, 5 c, 40 c, 2 c, 4c c, 3 c, 40 c, 0 c, 3 c, 40 c, 1 c, 45 c, 3 c, 46 c, 1 c, 45 c, 1 c, 40 c, 4 c, 41 c, 8 c, 42 c, 4 c, 41 c, 2 c, 40 c, 2 c, 4c c, 2 c,
40 c, 1 c, 4c c, 0 c, 3 c, 40 c, 1 c, 45 c, 2 c, 46 c, 2 c, 45 c, 1 c, 41 c, 2 c, 42 c, 1 c, 41 c, a c, 42 c, 1 c, 41 c, 2 c, 42 c, 1 c, 41 c, 6 c, 4c c, 0 c, 2 c, 40 c, 5 c, 45 c, 1 c,
41 c, 3 c, 42 c, 1 c, 41 c, a c, 42 c, 1 c, 41 c, 3 c, 42 c, 1 c, 41 c, 4 c, 4c c, 1 c, 40 c, 0 c, 1 c, 40 c, 3 c, 45 c, 2 c, 40 c, 1 c, 41 c, 3 c, 42 c, 2 c, 41 c, a c, 42 c, 2 c, 41 c,
3 c, 42 c, 1 c, 41 c, 1 c, 4c c, 3 c, 40 c, 0 c, 2 c, 46 c, 1 c, 45 c, 3 c, 40 c, 1 c, 41 c, 2 c, 42 c, 1 c, 41 c, 1 c, 40 c, 1 c, 41 c, a c, 42 c, 1 c, 41 c, 1 c, 40 c, 1 c, 41 c, 2 c,
42 c, 1 c, 41 c, 4 c, 40 c, 0 c, 2 c, 46 c, 5 c, 40 c, 2 c, 41 c, 1 c, 45 c, 1 c, 40 c, 2 c, 41 c, 8 c, 42 c, 2 c, 41 c, 1 c, 40 c, 1 c, 4c c, 2 c, 41 c, 5 c, 40 c, 0 c, c c, 40 c, a c,
41 c, 1 c, 40 c, 3 c, 4c c, 6 c, 40 c, 0 c, d c, 40 c, 3 c, 43 c, 3 c, 40 c, 3 c, 43 c, 1 c, 40 c, 2 c, 4c c, 7 c, 40 c, 0 c, d c, 40 c, 1 c, 43 c, 1 c, 44 c, 1 c, 43 c, 3 c, 40 c, 1 c,
43 c, 1 c, 44 c, 1 c, 43 c, a c, 40 c, 0 c, d c, 40 c, 1 c, 43 c, 1 c, 44 c, 1 c, 43 c, 3 c, 40 c, 1 c, 43 c, 1 c, 44 c, 1 c, 43 c, a c, 40 c, 0 c, d c, 40 c, 1 c, 43 c, 1 c, 44 c, 1 c,
43 c, 3 c, 40 c, 1 c, 43 c, 1 c, 44 c, 1 c, 43 c, a c, 40 c, 0 c, d c, 40 c, 1 c, 43 c, 1 c, 44 c, 1 c, 43 c, 3 c, 40 c, 1 c, 43 c, 1 c, 44 c, 1 c, 43 c, a c, 40 c, 0 c, c c, 40 c, 1 c,
43 c, 2 c, 44 c, 1 c, 43 c, 2 c, 40 c, 1 c, 43 c, 2 c, 44 c, 1 c, 43 c, a c, 40 c, 0 c, b c, 40 c, 1 c, 43 c, 3 c, 44 c, 1 c, 43 c, 1 c, 40 c, 1 c, 43 c, 3 c, 44 c, 1 c, 43 c, a c,
40 c, 0 c, b c, 40 c, 5 c, 43 c, 1 c, 40 c, 5 c, 43 c, a c, 40 c, 0 c,
create x1s 20 c, 20 c,
20 c, 40 c, 0 c,
c c, 40 c, 1 c, 47 c, 3 c, 48 c, 10 c, 40 c, 0 c,
b c, 40 c, 3 c, 47 c, 3 c, 48 c, f c, 40 c, 0 c,
c c, 40 c, 1 c, 47 c, 2 c, 40 c, 2 c, 48 c, f c, 40 c, 0 c,
10 c, 40 c, 2 c, 48 c, e c, 40 c,
0 c, 10 c, 40 c, 2 c, 48 c, e c, 40 c, 0 c, b c, 40 c, c c, 49 c, 9 c, 40 c, 0 c, a c, 40 c, 2 c, 49 c, a c, 4a c, 2 c, 49 c, 8 c, 40 c, 0 c, a c, 40 c, 1 c, 49 c, c c, 4a c, 1 c, 49 c,
8 c, 40 c, 0 c, a c, 40 c, 1 c, 49 c, 3 c, 4a c, 1 c, 3f c, 1 c, 0 c, 3 c, 4a c, 1 c, 3f c, 1 c, 0 c, 2 c, 4a c, 1 c, 49 c, 8 c, 40 c, 0 c, a c, 40 c, 1 c, 49 c, 3 c, 4a c, 2 c, 3f c,
3 c, 4a c, 2 c, 3f c, 2 c, 4a c, 1 c, 49 c, 8 c, 40 c, 0 c, a c, 40 c, 1 c, 49 c, c c, 4a c, 1 c, 49 c, 8 c, 40 c, 0 c, a c, 40 c, 1 c, 49 c, 3 c, 4a c, 1 c, 4b c, 8 c, 4a c, 1 c,
49 c, 8 c, 40 c, 0 c, a c, 40 c, 1 c, 49 c, 4 c, 4a c, 5 c, 4b c, 3 c, 4a c, 1 c, 49 c, 8 c, 40 c, 0 c, 6 c, 40 c, 1 c, 45 c, 3 c, 40 c, 2 c, 49 c, a c, 4a c, 2 c, 49 c, 8 c, 40 c,
0 c, 5 c, 40 c, 3 c, 45 c, 3 c, 40 c, c c, 49 c, 5 c, 40 c, 2 c, 4c c, 2 c, 40 c, 0 c, 4 c, 40 c, 1 c, 45 c, 2 c, 46 c, 2 c, 45 c, 3 c, 40 c, a c, 41 c, 5 c, 40 c, 2 c, 4c c, 3 c,
40 c, 0 c, 3 c, 40 c, 1 c, 45 c, 3 c, 46 c, 1 c, 45 c, 1 c, 40 c, 4 c, 41 c, 8 c, 42 c, 4 c, 41 c, 2 c, 40 c, 2 c, 4c c, 2 c, 40 c, 1 c, 4c c, 0 c, 3 c, 40 c, 1 c, 45 c, 2 c, 46 c, 2 c,
45 c, 1 c, 41 c, 2 c, 42 c, 1 c, 41 c, a c, 42 c, 1 c, 41 c, 2 c, 42 c, 1 c, 41 c, 6 c, 4c c, 0 c, 2 c, 40 c, 5 c, 45 c, 1 c, 41 c, 3 c, 42 c, 1 c, 41 c, a c, 42 c, 1 c, 41 c, 3 c, 42 c,
1 c, 41 c, 4 c, 4c c, 1 c, 40 c, 0 c, 1 c, 40 c, 3 c, 45 c, 2 c, 40 c, 1 c, 41 c, 3 c, 42 c, 2 c, 41 c, a c, 42 c, 2 c, 41 c, 3 c, 42 c, 1 c, 41 c, 1 c, 4c c, 3 c, 40 c, 0 c, 2 c, 46 c,
1 c, 45 c, 3 c, 40 c, 1 c, 41 c, 2 c, 42 c, 1 c, 41 c, 1 c, 40 c, 1 c, 41 c, a c, 42 c, 1 c, 41 c, 1 c, 40 c, 1 c, 41 c, 2 c, 42 c, 1 c, 41 c, 4 c, 40 c, 0 c, 2 c, 46 c, 5 c, 40 c, 2 c,
41 c, 1 c, 45 c, 1 c, 40 c, 2 c, 41 c, 8 c, 42 c, 2 c, 41 c, 1 c, 40 c, 1 c, 4c c, 2 c, 41 c, 5 c, 40 c, 0 c, c c, 40 c, a c, 41 c, 1 c, 40 c, 3 c, 4c c, 6 c, 40 c, 0 c, c c, 40 c, 3 c,
43 c, 3 c, 40 c, 3 c, 43 c, 2 c, 40 c, 2 c, 4c c, 7 c, 40 c, 0 c, c c, 40 c, 1 c, 43 c, 1 c, 44 c, 1 c, 43 c, 3 c, 40 c, 1 c, 43 c, 1 c, 44 c, 1 c, 43 c, b c, 40 c, 0 c, c c, 40 c, 1 c,
43 c, 1 c, 44 c, 1 c, 43 c, 3 c, 40 c, 1 c, 43 c, 1 c, 44 c, 1 c, 43 c, b c, 40 c, 0 c, c c, 40 c, 1 c, 43 c, 1 c, 44 c, 1 c, 43 c, 3 c, 40 c, 1 c, 43 c, 1 c, 44 c, 1 c, 43 c, b c, 40 c,
0 c, c c, 40 c, 1 c, 43 c, 1 c, 44 c, 1 c, 43 c, 3 c, 40 c, 1 c, 43 c, 1 c, 44 c, 1 c, 43 c, b c, 40 c, 0 c,
\ first line below leg with 2 wide inner part
c c, 40 c, 1 c, 43 c, 2 c, 44 c, 1 c, 43 c, 2 c, 40 c, 1 c, 43 c, 2 c, 44 c, 1 c, 43 c,
a c, 40 c, 0 c,
\ second line below leg with 3 wide inner part
c c, 40 c, 1 c, 43 c, 3 c, 44 c, 1 c, 43 c, 1 c, 40 c, 1 c, 43 c, 3 c, 44 c, 1 c, 43 c,
9 c, 40 c, 0 c,
\ bottom with no inner part
c c, 40 c, 5 c, 43 c, 1 c, 40 c, 5 c, 43 c, 9 c, 40 c, 0 c,
create x1t 20 c, 20 c, 20 c, 40 c, 0 c, b c, 40 c, 1 c, 4d c, 14 c, 40 c, 0 c, a c, 40 c, 1 c, 4d c, 1 c, 4e c, 1 c, 4d c, 7 c, 40 c, 1 c, 4d c, b c, 40 c, 0 c, a c, 40 c,
1 c, 4d c, 2 c, 4e c, 1 c, 4d c, 6 c, 40 c, 1 c, 4d c, b c, 40 c, 0 c, 9 c, 40 c, 1 c, 4d c, 4 c, 4e c, 1 c, 4d c, 4 c, 40 c, 2 c, 4d c, b c, 40 c, 0 c, 8 c, 40 c, 1 c, 4d c, 6 c, 4e c,
1 c, 4d c, 3 c, 40 c, 1 c, 4d c, 1 c, 4f c, 1 c, 4d c, a c, 40 c, 0 c, 8 c, 40 c, 1 c, 4d c, 6 c, 4e c, 1 c, 4d c, 2 c, 40 c, 1 c, 4d c, 2 c, 4f c, 1 c, 4d c, a c, 40 c, 0 c, 8 c, 40 c,
1 c, 4d c, 6 c, 4e c, 1 c, 4d c, 2 c, 40 c, 1 c, 4d c, 2 c, 4f c, 1 c, 4d c, a c, 40 c, 0 c, 8 c, 40 c, 1 c, 4d c, 6 c, 4e c, 1 c, 4d c, 1 c, 40 c, 1 c, 4d c, 3 c, 4f c, 1 c, 4d c, a c,
40 c, 0 c, 9 c, 40 c, 1 c, 4d c, 5 c, 4e c, 1 c, 4d c, 1 c, 40 c, 1 c, 4d c, 3 c, 4f c, 1 c, 4d c, a c, 40 c, 0 c, 9 c, 40 c, 1 c, 4d c, 5 c, 4e c, 2 c, 4d c, 4 c, 4f c, 1 c, 4d c, 3 c,
40 c, 1 c, 4d c, 6 c, 40 c, 0 c, 9 c, 40 c, 1 c, 4d c, 6 c, 4e c, 1 c, 4d c, 5 c, 4f c, 1 c, 4d c, 1 c, 40 c, 1 c, 4d c, 1 c, 4e c, 2 c, 4d c, 4 c, 40 c, 0 c, 3 c, 40 c, 3 c, 4d c, 3 c,
40 c, 1 c, 4d c, 6 c, 4e c, 1 c, 4d c, 5 c, 4f c, 2 c, 4d c, 4 c, 4e c, 1 c, 4d c, 3 c, 40 c, 0 c, 3 c, 40 c, 1 c, 4d c, 2 c, 4f c, 1 c, 4d c, 2 c, 40 c, 1 c, 4d c, 6 c, 4e c, 1 c, 4d c,
4 c, 4f c, 2 c, 4d c, 5 c, 4e c, 1 c, 4d c, 3 c, 40 c, 0 c, 4 c, 40 c, 1 c, 4d c, 1 c, 4f c, 2 c, 4d c, 1 c, 40 c, 1 c, 4d c, 6 c, 4e c, 1 c, 4d c, 3 c, 4f c, 1 c, 4d c, 7 c, 4e c, 1 c,
4d c, 3 c, 40 c, 0 c, 4 c, 40 c, 1 c, 4d c, 3 c, 4f c, 1 c, 4d c, 1 c, 40 c, 1 c, 4d c, 5 c, 4e c, 1 c, 4d c, 1 c, 4f c, 2 c, 4d c, 7 c, 4e c, 1 c, 4d c, 4 c, 40 c, 0 c, 5 c, 40 c, 1 c,
4d c, 3 c, 4f c, 2 c, 4d c, 5 c, 4e c, 2 c, 4d c, 9 c, 4e c, 1 c, 4d c, 4 c, 40 c, 0 c, 5 c, 40 c, 1 c, 4d c, 4 c, 4f c, 1 c, 4d c, 5 c, 4e c, 1 c, 4d c, a c, 4e c, 1 c, 4d c, 4 c, 40 c,
0 c, 6 c, 40 c, 1 c, 4d c, 3 c, 4f c, 1 c, 4d c, 5 c, 4e c, 1 c, 4d c, 9 c, 4e c, 1 c, 4d c, 5 c, 40 c, 0 c, 6 c, 40 c, 1 c, 4d c, 3 c, 4f c, 1 c, 4d c, 6 c, 4e c, 1 c, 4d c, 7 c, 4e c,
1 c, 4d c, 6 c, 40 c, 0 c, 7 c, 40 c, 1 c, 4d c, 2 c, 4f c, 1 c, 4d c, 6 c, 4e c, 1 c, 4d c, 6 c, 4e c, 1 c, 4d c, 7 c, 40 c, 0 c, 7 c, 40 c, 1 c, 4d c, 3 c, 4f c, 1 c, 4d c, 5 c, 4e c,
1 c, 4d c, 5 c, 4e c, 1 c, 4d c, 8 c, 40 c, 0 c, 8 c, 40 c, 1 c, 4d c, 2 c, 4f c, 4 c, 4d c, 2 c, 4e c, 1 c, 4d c, 4 c, 4e c, 1 c, 4d c, 9 c, 40 c, 0 c, 8 c, 40 c, 1 c, 4d c, 2 c, 4f c,
1 c, 4d c, 2 c, 50 c, 1 c, 4d c, 2 c, 4e c, 3 c, 4d c, 1 c, 4e c, 2 c, 4d c, 9 c, 40 c, 0 c, 7 c, 40 c, 4 c, 4d c, 3 c, 50 c, 4 c, 4d c, 1 c, 50 c, 5 c, 4d c, 8 c, 40 c, 0 c, 6 c, 40 c,
1 c, 4d c, 8 c, 50 c, 2 c, 4d c, 6 c, 50 c, 2 c, 4d c, 7 c, 40 c, 0 c, 5 c, 40 c, 1 c, 4d c, 6 c, 50 c, 1 c, 51 c, 8 c, 50 c, 1 c, 51 c, 2 c, 50 c, 2 c, 4d c, 6 c, 40 c, 0 c, 5 c, 40 c,
1 c, 4d c, 1 c, 50 c, 1 c, 52 c, 11 c, 50 c, 1 c, 4d c, 6 c, 40 c, 0 c, 5 c, 40 c, 1 c, 4d c, a c, 50 c, 1 c, 52 c, 8 c, 50 c, 1 c, 4d c, 6 c, 40 c, 0 c, 5 c, 40 c, 8 c, 4d c, 6 c, 50 c,
7 c, 4d c, 6 c, 40 c, 0 c, c c, 40 c, 7 c, 4d c, d c, 40 c, 0 c, 20 c, 40 c, 0 c,
create x1u 20 c, 20 c, 20 c, 53 c, 0 c, f c, 53 c, 1 c, 54 c, 10 c, 53 c, 0 c, 2 c, 53 c, 1 c, 55 c, 1d c, 53 c, 0 c, 20 c, 53 c, 0 c, 17 c, 53 c, 1 c, 55 c, 8 c, 53 c, 0 c,
20 c, 53 c, 0 c, 5 c, 53 c, 1 c, 54 c, 1a c, 53 c, 0 c, 1f c, 53 c, 1 c, 54 c, 0 c, b c, 53 c, 1 c, 55 c, 14 c, 53 c, 0 c, 20 c, 53 c, 0 c, 20 c, 53 c, 0 c, 17 c, 53 c, 1 c, 54 c, 8 c,
53 c, 0 c, 11 c, 53 c, 1 c, 55 c, e c, 53 c, 0 c, 3 c, 53 c, 1 c, 55 c, 1c c, 53 c, 0 c, 19 c, 53 c, 1 c, 55 c, 6 c, 53 c, 0 c, 1d c, 53 c, 1 c, 55 c, 2 c, 53 c, 0 c, 20 c, 53 c, 0 c,
a c, 53 c, 1 c, 54 c, 15 c, 53 c, 0 c, 20 c, 53 c, 0 c, 20 c, 53 c, 0 c, d c, 53 c, 1 c, 55 c, c c, 53 c, 1 c, 54 c, 5 c, 53 c, 0 c, 13 c, 53 c, 1 c, 54 c, c c, 53 c, 0 c, 20 c, 53 c,
0 c, 1 c, 55 c, 1f c, 53 c, 0 c, 4 c, 53 c, 1 c, 54 c, 1b c, 53 c, 0 c, 16 c, 53 c, 1 c, 55 c, 9 c, 53 c, 0 c, c c, 53 c, 1 c, 54 c, f c, 53 c, 1 c, 55 c, 3 c, 53 c, 0 c, 20 c, 53 c,
0 c, 20 c, 53 c, 0 c, 20 c, 53 c, 0 c, 15 c, 53 c, 1 c, 54 c, a c, 53 c, 0 c, 3 c, 53 c, 1 c, 55 c, 1c c, 53 c, 0 c,
xt
\ 1BPP TILES
create x1v 20 c, 20 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, f c, f0 c, f c, f0 c, f c, f0 c, f c, f0 c, c c, 0 c, 0 c, 30 c, c c,
0 c, 0 c, 30 c, c c, 0 c, 0 c, 30 c, c c, 0 c, 0 c, 30 c, c c, 0 c, 0 c, 30 c, c c, 0 c, 0 c, 30 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c,
0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, c c, 0 c, 0 c, 30 c, c c, 0 c, 0 c, 30 c, c c, 0 c, 0 c, 30 c, c c, 0 c, 0 c, 30 c, c c, 0 c, 0 c, 30 c, c c, 0 c, 0 c,
30 c, f c, f0 c, f c, f0 c, f c, f0 c, f c, f0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c, 0 c,
xy
create x1w 11 c, 11 c, 0 c, 7 c, f0 c, 0 c, 7 c, f0 c, 0 c, 3f c, fe c, 0 c, 3f c, fe c, 0 c, 3f c, fe c, 0 c, ff c, ff c, 80 c, ff c, ff c, 80 c, ff c, ff c, 80 c,
ff c, ff c, 80 c, ff c, ff c, 80 c, ff c, ff c, 80 c, ff c, ff c, 80 c, 3f c, fe c, 0 c, 3f c, fe c, 0 c, 3f c, fe c, 0 c, 7 c, f0 c, 0 c, 7 c, f0 c, 0 c,
\ DictGame
xt
x10
create x1x 11 c, 11 c, 0 c, 7 c, f0 c, 0 c, 7 c, f0 c, 0 c, 3f c, fe c, 0 c, 3f c, fe c, 0 c, 3f c, fe c, 0 c, ff c, ff c, 80 c, ff c, ff c, 80 c, ff c, ff c, 80 c,
ff c, ff c, 80 c, ff c, ff c, 80 c, ff c, ff c, 80 c, ff c, ff c, 80 c, 3f c, fe c, 0 c, 3f c, fe c, 0 c, 3f c, fe c, 0 c, 7 c, f0 c, 0 c, 7 c, f0 c, 0 c,
\ DictGame
xt
create x1y 18 c, 18 c, 0 c, 0 c, ff c, 0 c, 0 c, ff c, 0 c, 3f c, ff c, fc c, 3f c, ff c, fc c, 3f c, ff c, fc c, 3f c, ff c, fc c, 3f c, ff c, fc c, 3f c, ff c, fc c,
ff c, ff c, ff c, ff c, ff c, ff c, ff c, ff c, ff c, ff c, ff c, ff c, ff c, ff c, ff c, ff c, ff c, ff c, ff c, ff c, ff c, ff c, ff c, ff c, 3f c, ff c, fc c, 3f c, ff c, fc c, 3f c,
ff c, fc c, 3f c, ff c, fc c, 3f c, ff c, fc c, 3f c, ff c, fc c, 0 c, ff c, 0 c, 0 c, ff c, 0 c,
xx
create x1z 20 c, 20 c, 0 c, 7f c, ff c, 0 c, 0 c, 3f c, ff c, 0 c, 1 c, 1f c, ff c, 0 c, 3 c, f c, ff c, 0 c, 7 c, 7 c, ff c, 0 c, f c, 3 c, ff c, 0 c, 1f c, 1 c, ff c, 0 c, 3f c,
0 c, ff c, 0 c, 7f c, 0 c, 7f c, 0 c, ff c, 0 c, 3f c, 1 c, ff c, 0 c, 1f c, 3 c, ff c, 0 c, f c, 7 c, ff c, 0 c, 7 c, f c, ff c, 0 c, 3 c, 1f c, ff c, 0 c, 1 c, 3f c, ff c, 0 c, 0 c,
7f c, ff c, ff c, fe c, 0 c, 0 c, ff c, fc c, 80 c, 0 c, ff c, f8 c, c0 c, 0 c, ff c, f0 c, e0 c, 0 c, ff c, e0 c, f0 c, 0 c, ff c, c0 c, f8 c, 0 c, ff c, 80 c, fc c, 0 c, ff c, 0 c,
fe c, 0 c, fe c, 0 c, ff c, 0 c, fc c, 0 c, ff c, 80 c, f8 c, 0 c, ff c, c0 c, f0 c, 0 c, ff c, e0 c, e0 c, 0 c, ff c, f0 c, c0 c, 0 c, ff c, f8 c, 80 c, 0 c, ff c, fc c, 0 c, 0 c,
ff c, fe c,
xt
x10
create x20 10 c, 10 c, 1 c, 7f c, fe c, c0 c, 3 c, 80 c, 1 c, 83 c, c1 c, 83 c, c1 c, 83 c, c1 c, 9f c, f9 c, 9f c, f9 c, 9f c, f9 c, 9f c, f9 c, 83 c, c1 c, 83 c, c1 c, 83 c,
c1 c, 80 c, 1 c, c0 c, 3 c, 7f c, fe c,
create x21 10 c, 10 c, 1 c, 7f c, fe c, c0 c, 3 c, 80 c, 1 c, 83 c, c1 c, 83 c, c1 c, 83 c, c1 c, 9f c, f9 c, 9f c, f9 c, 9f c, f9 c, 9f c, f9 c, 83 c, c1 c, 83 c, c1 c, 83 c,
c1 c, 80 c, 1 c, c0 c, 3 c, 7f c, fe c,
create x22 10 c, 10 c, 1 c, 7f c, fe c, c0 c, 3 c, 80 c, 1 c, a2 c, 79 c, a2 c, 45 c, a2 c, 45 c, a2 c, 45 c, be c, 79 c, a2 c, 41 c, a2 c, 41 c, a2 c, 41 c, a2 c, 41 c, a2 c,
41 c, 80 c, 1 c, c0 c, 3 c, 7f c, fe c,
create x23 10 c, 10 c, 1 c, 7f c, fe c, c0 c, 3 c, 80 c, 1 c, 87 c, c1 c, 84 c, 21 c, 84 c, 21 c, 84 c, 21 c, 87 c, c1 c, 84 c, 21 c, 84 c, 21 c, 84 c, 21 c, 84 c, 21 c,
87 c, c1 c, 80 c, 1 c, c0 c, 3 c, 7f c, fe c,
create x24 10 c, 10 c, 1 c, 7f c, fe c, c0 c, 3 c, 80 c, 1 c, ba c, b9 c, a2 c, a5 c, a2 c, a5 c, a2 c, a5 c, b9 c, 39 c, a2 c, a1 c, a2 c, a1 c, a2 c, a1 c, a2 c, a1 c, ba c,
a1 c, 80 c, 1 c, c0 c, 3 c, 7f c, fe c,
create x25 10 c, 10 c, 1 c, 7f c, fe c, c0 c, 3 c, 80 c, 1 c, 87 c, 81 c, 84 c, c1 c, 84 c, 61 c, 84 c, 21 c, 84 c, 21 c, 84 c, 21 c, 84 c, 21 c, 84 c, 61 c, 84 c, c1 c, 87 c,
81 c, 80 c, 1 c, c0 c, 3 c, 7f c, fe c,
xt
\ SKILL TILES
xz
create x26 18 c, 18 c, 2 c, 3f c, ff c, fc c, 60 c, 0 c, 6 c, c0 c, 0 c, 3 c, 80 c, 0 c, 1 c, 87 c, e7 c, e1 c, 84 c, 24 c, 21 c, 84 c, 24 c, 21 c, 9f c, ff c, f9 c, 90 c, 0 c, 9 c,
90 c, 0 c, 89 c, 90 c, 0 c, 89 c, 97 c, c3 c, e9 c, 90 c, 0 c, 89 c, 90 c, 0 c, 89 c, 90 c, 0 c, 9 c, 90 c, 0 c, 9 c, 90 c, 0 c, 9 c, 90 c, 0 c, 9 c, 9f c, ff c, f9 c, 80 c, 0 c, 1 c, 80 c,
0 c, 1 c, c0 c, 0 c, 3 c, 60 c, 0 c, 6 c, 3f c, ff c, fc c,
create x27 18 c, 18 c, 2 c, 3f c, ff c, fc c, 60 c, 0 c, 6 c, c7 c, c0 c, 3 c, 88 c, 20 c, 1 c, 90 c, 10 c, 1 c, aa c, a8 c, 1 c, a4 c, 48 c, 1 c, aa c, a8 c, 1 c, a0 c, 8 c, 1 c,
9f c, f0 c, 81 c, 95 c, 51 c, c1 c, 9f c, f3 c, 41 c, 95 c, 52 c, 61 c, 8f c, e2 c, 3d c, 80 c, 6 c, 65 c, 80 c, 3c c, cd c, 80 c, 27 c, 89 c, 80 c, 13 c, 19 c, 80 c, 9 c, 91 c, 80 c, f c,
f1 c, 80 c, 8 c, 11 c, c0 c, f c, f3 c, 60 c, 0 c, 6 c, 3f c, ff c, fc c,
create x28 18 c, 18 c, 2 c, 3f c, ff c, fc c, 60 c, 0 c, 6 c, c0 c, 0 c, 3 c, 80 c, 7e c, 1 c, 80 c, 42 c, 1 c, 80 c, 42 c, 1 c, 80 c, 42 c, 1 c, 80 c, 42 c, 1 c, 87 c, ff c, e1 c,
84 c, c6 c, 21 c, 84 c, 31 c, a1 c, 83 c, 8c c, 41 c, 82 c, 63 c, 41 c, 81 c, 18 c, 81 c, 81 c, c6 c, 81 c, 80 c, b1 c, 1 c, 80 c, 8d c, 1 c, 80 c, 62 c, 1 c, 80 c, 5a c, 1 c, 80 c, 24 c,
1 c, 80 c, 18 c, 1 c, c0 c, 0 c, 3 c, 60 c, 0 c, 6 c, 3f c, ff c, fc c,
create x29 18 c, 18 c, 2 c, 3f c, ff c, fc c, 60 c, 0 c, 6 c, c1 c, e0 c, 3 c, 8f c, f0 c, 1 c, 9f c, f0 c, 1 c, 9e c, d8 c, 1 c, bf c, f8 c, 1 c, bf c, f8 c, 1 c, b7 c, f0 c, 1 c,
bf c, e0 c, 81 c, 9e c, c1 c, c1 c, 87 c, 83 c, 41 c, 80 c, 2 c, 61 c, 80 c, 2 c, 3d c, 80 c, 6 c, 65 c, 80 c, 3c c, cd c, 80 c, 27 c, 89 c, 80 c, 13 c, 19 c, 80 c, 9 c, 91 c, 80 c, f c,
f1 c, 80 c, 8 c, 11 c, c0 c, f c, f3 c, 60 c, 0 c, 6 c, 3f c, ff c, fc c,
create x2a 18 c, 18 c, 2 c, 3f c, ff c, fc c, 60 c, 80 c, 6 c, c1 c, c0 c, 3 c, 83 c, 40 c, 1 c, 82 c, 60 c, 1 c, 82 c, 3c c, 1 c, 86 c, 64 c, 1 c, bc c, cc c, 1 c, a7 c, 88 c, 1 c,
93 c, 18 c, 81 c, 89 c, 91 c, c1 c, 8f c, f3 c, 41 c, 88 c, 12 c, 61 c, 8f c, f2 c, 3d c, 80 c, 6 c, 65 c, 80 c, 3c c, cd c, 80 c, 27 c, 89 c, 80 c, 13 c, 19 c, 80 c, 9 c, 91 c, 80 c, f c,
f1 c, 80 c, 8 c, 11 c, c0 c, f c, f3 c, 60 c, 0 c, 6 c, 3f c, ff c, fc c,
create x2b 18 c, 18 c, 2 c, 3f c, ff c, fc c, 60 c, 0 c, 6 c, c0 c, 7c c, 3 c, 80 c, 82 c, 1 c, 81 c, 1 c, 1 c, 82 c, aa c, 81 c, 82 c, 44 c, 81 c, 82 c, aa c, 81 c, 82 c, 0 c, 81 c,
81 c, ff c, 1 c, 81 c, 55 c, 1 c, 81 c, ff c, 1 c, 81 c, 55 c, 1 c, 80 c, fe c, 1 c, 80 c, 0 c, 1 c, 9e c, f7 c, 11 c, 82 c, 95 c, 21 c, 9e c, 97 c, 41 c, 90 c, 90 c, b9 c, 90 c, 91 c, 29 c,
9e c, f2 c, 39 c, c0 c, 0 c, 3 c, 60 c, 0 c, 6 c, 3f c, ff c, fc c,
create x2c 18 c, 18 c, 2 c, 3f c, ff c, fc c, 60 c, 0 c, 6 c, c0 c, 0 c, 3 c, 80 c, 0 c, 1 c, 80 c, 3f c, e1 c, 80 c, 10 c, 21 c, 80 c, 8 c, 21 c, 80 c, 14 c, 21 c, 80 c, 3e c, 21 c,
80 c, 41 c, 21 c, 80 c, f0 c, a1 c, 81 c, f c, 61 c, 83 c, 82 c, 21 c, 84 c, 64 c, 1 c, 8c c, 18 c, 1 c, 92 c, 10 c, 1 c, a1 c, 20 c, 1 c, 98 c, c0 c, 1 c, 86 c, 80 c, 1 c, 81 c, 0 c, 1 c,
80 c, 0 c, 1 c, c0 c, 0 c, 3 c, 60 c, 0 c, 6 c, 3f c, ff c, fc c,
create x2d 18 c, 18 c, 2 c, 3f c, ff c, fc c, 60 c, 0 c, 6 c, c1 c, 0 c, 83 c, 82 c, 81 c, 41 c, 84 c, 42 c, 21 c, 88 c, 3c c, 11 c, 93 c, 81 c, c9 c, a4 c, 42 c, 25 c, a8 c, 24 c,
15 c, a9 c, 24 c, 95 c, a4 c, 42 c, 25 c, a3 c, 81 c, c5 c, a0 c, 10 c, 5 c, a0 c, 24 c, 5 c, a0 c, 48 c, 5 c, 90 c, 52 c, 9 c, 88 c, 64 c, 11 c, 84 c, 18 c, 21 c, 82 c, 0 c, 41 c, 81 c,
ff c, 81 c, 80 c, 0 c, 1 c, c0 c, 0 c, 3 c, 60 c, 0 c, 6 c, 3f c, ff c, fc c,
create x2e 18 c, 18 c, 2 c, 3f c, ff c, fc c, 60 c, 0 c, 6 c, c0 c, 0 c, 3 c, 80 c, 0 c, 1 c, 80 c, 0 c, 1 c, 80 c, 3 c, e1 c, b3 c, 4 c, 11 c, 88 c, 88 c, 9 c, 80 c, 15 c, 55 c,
be c, d2 c, 25 c, 80 c, 15 c, 55 c, 88 c, 10 c, 5 c, b1 c, f c, f9 c, 86 c, a c, a9 c, 80 c, f c, f9 c, 80 c, a c, a9 c, 80 c, 7 c, f1 c, 80 c, 0 c, 1 c, 80 c, 0 c, 1 c, 80 c, 0 c, 1 c,
80 c, 0 c, 1 c, c0 c, 0 c, 3 c, 60 c, 0 c, 6 c, 3f c, ff c, fc c,
create x2f 18 c, 18 c, 2 c, 3f c, ff c, fc c, 60 c, 0 c, 6 c, c0 c, 70 c, 3 c, bc c, 88 c, 1 c, 81 c, 4 c, 1 c, 81 c, 4 c, 1 c, bd c, 4 c, 1 c, 80 c, 88 c, 21 c, 8e c, 70 c, 11 c,
89 c, e0 c, 9 c, 88 c, 63 c, fd c, 88 c, 50 c, 9 c, 88 c, 91 c, 11 c, 80 c, 89 c, 21 c, bd c, a c, 1 c, 81 c, 84 c, 1 c, 81 c, 60 c, 1 c, a2 c, 18 c, 1 c, 92 c, 10 c, 1 c, 8c c, 20 c, 1 c,
80 c, 40 c, 1 c, c0 c, 80 c, 3 c, 60 c, 0 c, 6 c, 3f c, ff c, fc c,
create x2g 18 c, 18 c, 2 c, 3f c, ff c, fc c, 60 c, 0 c, 6 c, c0 c, 7e c, 3 c, 81 c, 81 c, 81 c, 82 c, 0 c, 41 c, 84 c, 8 c, 21 c, 8c c, 1c c, 11 c, 92 c, 34 c, 9 c, 91 c, 26 c,
9 c, a0 c, e3 c, c5 c, a0 c, 66 c, 45 c, a3 c, dc c, c5 c, a2 c, 78 c, 85 c, a1 c, 35 c, 85 c, a0 c, 9b c, 5 c, 90 c, ff c, 89 c, 90 c, 81 c, 49 c, 88 c, ff c, 31 c, 84 c, 0 c, 21 c, 82 c,
0 c, 41 c, 81 c, 81 c, 81 c, c0 c, 7e c, 3 c, 60 c, 0 c, 6 c, 3f c, ff c, fc c,
create x2h 18 c, 18 c, 2 c, 3f c, ff c, fc c, 60 c, 0 c, 6 c, c2 c, 0 c, 3 c, 85 c, 0 c, 1 c, 88 c, 80 c, 1 c, 90 c, 40 c, 1 c, bf c, e0 c, 1 c, 88 c, 80 c, 1 c, 88 c, 80 c, 1 c,
88 c, 80 c, 81 c, 88 c, 81 c, c1 c, 88 c, 83 c, 41 c, 8f c, 82 c, 61 c, 80 c, 2 c, 3d c, 80 c, 6 c, 65 c, 80 c, 3c c, cd c, 80 c, 27 c, 89 c, 80 c, 13 c, 19 c, 80 c, 9 c, 91 c, 80 c, f c,
f1 c, 80 c, 8 c, 11 c, c0 c, f c, f3 c, 60 c, 0 c, 6 c, 3f c, ff c, fc c,
create x2i 18 c, 18 c, 2 c, 3f c, ff c, fc c, 60 c, 0 c, 6 c, c0 c, 0 c, 3 c, 80 c, 40 c, 1 c, 80 c, c0 c, 1 c, 81 c, 40 c, 1 c, 9c c, 40 c, 1 c, 80 c, 40 c, 1 c, 80 c, 40 c, 1 c,
81 c, f0 c, 81 c, 80 c, 1 c, c1 c, 80 c, 3 c, 41 c, 80 c, 2 c, 61 c, 80 c, 2 c, 3d c, 80 c, 6 c, 65 c, 80 c, 3c c, cd c, 80 c, 27 c, 89 c, 80 c, 13 c, 19 c, 80 c, 9 c, 91 c, 80 c, f c, f1 c,
80 c, 8 c, 11 c, c0 c, f c, f3 c, 60 c, 0 c, 6 c, 3f c, ff c, fc c,
create x2j 18 c, 18 c, 2 c, 3f c, ff c, fc c, 60 c, 0 c, 6 c, c0 c, 8 c, 3 c, 80 c, 14 c, 1 c, 80 c, 22 c, 1 c, 80 c, 41 c, 1 c, 80 c, ff c, 81 c, 80 c, 22 c, 1 c, 80 c, 22 c, 1 c,
80 c, 22 c, 1 c, 80 c, 3e c, 1 c, 80 c, 0 c, 1 c, 80 c, 7e c, 1 c, 81 c, c3 c, 81 c, 82 c, 81 c, 41 c, 84 c, 81 c, 21 c, 88 c, 81 c, 11 c, 89 c, 81 c, 91 c, 86 c, 81 c, 61 c, 80 c, c3 c, 1 c,
80 c, 7e c, 1 c, c0 c, 0 c, 3 c, 60 c, 0 c, 6 c, 3f c, ff c, fc c,
create x2k 18 c, 18 c, 2 c, 3f c, ff c, fc c, 60 c, 0 c, 6 c, c0 c, 2 c, 3 c, 84 c, 2 c, 9 c, 82 c, 2 c, 11 c, 81 c, 8 c, 21 c, 80 c, 9c c, 41 c, 80 c, 34 c, 1 c, b0 c, 26 c, 1 c,
8c c, 23 c, c5 c, 80 c, 66 c, 59 c, 83 c, cc c, c1 c, 82 c, 78 c, 81 c, 81 c, 31 c, 81 c, 80 c, 99 c, 1 c, 82 c, ff c, 21 c, 84 c, 81 c, 11 c, 88 c, ff c, 9 c, 90 c, 0 c, 5 c, 80 c, 82 c,
1 c, 80 c, 82 c, 1 c, c1 c, 1 c, 3 c, 60 c, 0 c, 6 c, 3f c, ff c, fc c,
\ NONCOLORABLE TILES
xx
create x2l 20 c, 20 c, 20 c, 40 c, 0 c, 20 c, 40 c, 0 c, 20 c, 40 c, 0 c, 20 c, 40 c, 0 c, 20 c, 40 c, 0 c, 9 c, 40 c, e c, 0 c, 9 c, 40 c, 0 c, 9 c, 40 c, e c, 0 c, 9 c, 40 c,
0 c, 9 c, 40 c, 2 c, 0 c, 4 c, 3 c, 2 c, 0 c, 4 c, 3 c, 2 c, 0 c, 9 c, 40 c, 0 c, 9 c, 40 c, 2 c, 0 c, 4 c, 3 c, 2 c, 0 c, 4 c, 3 c, 2 c, 0 c, 9 c, 40 c, 0 c, 9 c, 40 c, e c, 0 c, 9 c,
40 c, 0 c, 9 c, 40 c, 5 c, 0 c, 4 c, 3 c, 5 c, 0 c, 9 c, 40 c, 0 c, 9 c, 40 c, 4 c, 0 c, 1 c, 3 c, 4 c, 0 c, 1 c, 3 c, 4 c, 0 c, 9 c, 40 c, 0 c, 9 c, 40 c, e c, 0 c, 9 c, 40 c, 0 c,
6 c, 40 c, 14 c, 0 c, 6 c, 40 c, 0 c, 5 c, 40 c, 2 c, 0 c, 2 c, 3 c, 1 c, 0 c, c c, 15 c, 1 c, 0 c, 2 c, 3 c, 2 c, 0 c, 5 c, 40 c, 0 c, 4 c, 40 c, 3 c, 0 c, 3 c, 3 c, 2 c, 0 c, 8 c,
15 c, 2 c, 0 c, 3 c, 3 c, 3 c, 0 c, 4 c, 40 c, 0 c, 3 c, 40 c, 5 c, 0 c, 4 c, 3 c, 2 c, 0 c, 4 c, 15 c, 2 c, 0 c, 4 c, 3 c, 5 c, 0 c, 3 c, 40 c, 0 c, 2 c, 40 c, 5 c, 0 c, 1 c, 15 c,
2 c, 0 c, 4 c, 3 c, 4 c, 0 c, 4 c, 3 c, 2 c, 0 c, 1 c, 15 c, 5 c, 0 c, 2 c, 40 c, 0 c, 1 c, 40 c, 6 c, 0 c, 3 c, 15 c, 1 c, 0 c, a c, 3 c, 1 c, 0 c, 3 c, 15 c, 6 c, 0 c, 1 c, 40 c,
0 c, 1 c, 40 c, 6 c, 0 c, 3 c, 15 c, 1 c, 0 c, a c, 3 c, 1 c, 0 c, 3 c, 15 c, 6 c, 0 c, 1 c, 40 c, 0 c, 1 c, 40 c, 4 c, 0 c, 1 c, 40 c, 1 c, 0 c, 1 c, 15 c, 2 c, 0 c, 4 c, 3 c, 4 c,
0 c, 4 c, 3 c, 2 c, 0 c, 1 c, 15 c, 1 c, 0 c, 1 c, 40 c, 4 c, 0 c, 1 c, 40 c, 0 c, 1 c, 40 c, 3 c, 0 c, 2 c, 40 c, 2 c, 0 c, 4 c, 3 c, 2 c, 0 c, 4 c, 15 c, 2 c, 0 c, 4 c, 3 c, 2 c, 0 c,
2 c, 40 c, 3 c, 0 c, 1 c, 40 c, 0 c, 1 c, 40 c, 2 c, 0 c, 3 c, 40 c, 1 c, 0 c, 3 c, 3 c, 2 c, 0 c, 8 c, 15 c, 2 c, 0 c, 3 c, 3 c, 1 c, 0 c, 3 c, 40 c, 2 c, 0 c, 1 c, 40 c, 0 c, 6 c, 40 c,
1 c, 0 c, 2 c, 3 c, 1 c, 0 c, c c, 15 c, 1 c, 0 c, 2 c, 3 c, 1 c, 0 c, 6 c, 40 c, 0 c, 6 c, 40 c, 14 c, 0 c, 6 c, 40 c, 0 c, 8 c, 40 c, 7 c, 0 c, 2 c, 40 c, 7 c, 0 c, 8 c, 40 c, 0 c, 8 c,
40 c, 7 c, 0 c, 2 c, 40 c, 7 c, 0 c, 8 c, 40 c, 0 c, 8 c, 40 c, 7 c, 0 c, 2 c, 40 c, 7 c, 0 c, 8 c, 40 c, 0 c, 8 c, 40 c, 7 c, 0 c, 2 c, 40 c, 7 c, 0 c, 8 c, 40 c, 0 c, 8 c, 40 c, 7 c,
0 c, 2 c, 40 c, 7 c, 0 c, 8 c, 40 c, 0 c, 8 c, 40 c, 7 c, 0 c, 2 c, 40 c, 7 c, 0 c, 8 c, 40 c, 0 c, 8 c, 40 c, 7 c, 0 c, 2 c, 40 c, 7 c, 0 c, 8 c, 40 c, 0 c,
create x2m 20 c, 20 c, 20 c, 40 c, 0 c, 20 c, 40 c, 0 c, 20 c, 40 c, 0 c, 20 c, 40 c, 0 c, 20 c, 40 c, 0 c, 20 c, 40 c, 0 c, 20 c, 40 c, 0 c, 20 c, 40 c, 0 c, 20 c, 40 c,
0 c, 20 c, 40 c, 0 c, 20 c, 40 c, 0 c, 20 c, 40 c, 0 c, 9 c, 40 c, c c, 0 c, b c, 40 c, 0 c, 9 c, 40 c, 1 c, 0 c, 2 c, 2a c, 1 c, 0 c, 1 c, 15 c, 7 c, 0 c, b c, 40 c, 0 c, 2 c, 40 c,
8 c, 0 c, 3 c, 2a c, 6 c, 0 c, 1 c, 2a c, 1 c, 0 c, b c, 40 c, 0 c, 2 c, 40 c, 9 c, 0 c, 1 c, 2a c, 6 c, 0 c, 1 c, 2a c, a c, 0 c, 3 c, 40 c, 0 c, 2 c, 40 c, 8 c, 0 c, 1 c, 15 c, 6 c,
0 c, 1 c, 2a c, 1 c, 0 c, 1 c, 15 c, 9 c, 0 c, 3 c, 40 c, 0 c, 2 c, 40 c, 8 c, 0 c, 1 c, 15 c, 5 c, 0 c, 2 c, 2a c, 1 c, 0 c, 1 c, 15 c, 5 c, 0 c, 1 c, 2a c, 1 c, 0 c, 1 c, 2a c, 1 c,
0 c, 3 c, 40 c, 0 c, 2 c, 40 c, 8 c, 0 c, 2 c, 15 c, 1 c, 0 c, 4 c, 2a c, 1 c, 0 c, 2 c, 15 c, 6 c, 0 c, 1 c, 2a c, 2 c, 0 c, 3 c, 40 c, 0 c, 2 c, 40 c, 8 c, 0 c, 2 c, 15 c, 1 c, 0 c,
4 c, 2a c, 1 c, 0 c, 2 c, 15 c, 2 c, 0 c, 1 c, 2a c, 2 c, 0 c, 1 c, 2a c, 1 c, 0 c, 1 c, 2a c, 1 c, 0 c, 3 c, 40 c, 0 c, 2 c, 40 c, 8 c, 0 c, 3 c, 15 c, 1 c, 0 c, 2 c, 2a c, 1 c, 0 c,
3 c, 15 c, 3 c, 0 c, 1 c, 2a c, 5 c, 0 c, 3 c, 40 c, 0 c, 9 c, 40 c, 1 c, 0 c, 3 c, 15 c, 1 c, 0 c, 2 c, 2a c, 1 c, 0 c, 3 c, 15 c, 3 c, 0 c, 1 c, 2a c, 5 c, 0 c, 3 c, 40 c, 0 c, 9 c,
40 c, 1 c, 0 c, 3 c, 15 c, 1 c, 0 c, 2 c, 2a c, 1 c, 0 c, 3 c, 15 c, 3 c, 0 c, 1 c, 2a c, 5 c, 0 c, 3 c, 40 c, 0 c, 2 c, 40 c, 8 c, 0 c, 3 c, 15 c, 1 c, 0 c, 2 c, 2a c, 1 c, 0 c, 3 c,
15 c, 3 c, 0 c, 1 c, 2a c, 1 c, 0 c, 1 c, 2a c, 1 c, 0 c, 1 c, 2a c, 1 c, 0 c, 3 c, 40 c, 0 c, 2 c, 40 c, 8 c, 0 c, 2 c, 15 c, 1 c, 0 c, 4 c, 2a c, 1 c, 0 c, 2 c, 15 c, 2 c, 0 c, 1 c,
2a c, 3 c, 0 c, 1 c, 2a c, 2 c, 0 c, 3 c, 40 c, 0 c, 2 c, 40 c, 8 c, 0 c, 2 c, 15 c, 1 c, 0 c, 4 c, 2a c, 1 c, 0 c, 2 c, 15 c, 5 c, 0 c, 1 c, 2a c, 1 c, 0 c, 1 c, 2a c, 1 c, 0 c, 3 c,
40 c, 0 c, 2 c, 40 c, 8 c, 0 c, 1 c, 15 c, 5 c, 0 c, 2 c, 2a c, 1 c, 0 c, 1 c, 15 c, 9 c, 0 c, 3 c, 40 c, 0 c, 2 c, 40 c, 8 c, 0 c, 1 c, 15 c, 6 c, 0 c, 1 c, 2a c, 1 c, 0 c, 1 c, 15 c,
9 c, 0 c, 3 c, 40 c, 0 c, 2 c, 40 c, 9 c, 0 c, 1 c, 2a c, 6 c, 0 c, 1 c, 2a c, a c, 0 c, 3 c, 40 c, 0 c, 2 c, 40 c, 8 c, 0 c, 3 c, 2a c, 6 c, 0 c, 1 c, 2a c, 1 c, 0 c, b c, 40 c, 0 c,
9 c, 40 c, 1 c, 0 c, 2 c, 2a c, 1 c, 0 c, 1 c, 15 c, 7 c, 0 c, b c, 40 c, 0 c, 9 c, 40 c, c c, 0 c, b c, 40 c, 0 c,
xy
create x2n
10 c, 10 c, 10 c, 0 c, 0 c, 1 c, 0 c, f c, 8 c, 0 c, 1 c, 0 c, 1 c, 8 c, d c, 0 c, 1 c, 8 c, 0 c, 1 c, 0 c, 1 c, 8 c, 1 c, 0 c, b c, 4 c, 1 c, 0 c, 1 c, 8 c, 0 c, 1 c, 0 c, 1 c, 8 c, 1 c,
0 c, b c, 4 c, 1 c, 0 c, 1 c, 8 c, 0 c, 1 c, 0 c, 1 c, 8 c, 1 c, 0 c, b c, 4 c, 1 c, 0 c, 1 c, 8 c, 0 c, 1 c, 0 c, 1 c, 8 c, 1 c, 0 c, b c, 4 c, 1 c, 0 c, 1 c, 8 c, 0 c, 1 c, 0 c, 1 c,
8 c, 1 c, 0 c, b c, 4 c, 1 c, 0 c, 1 c, 8 c, 0 c, 1 c, 0 c, 1 c, 8 c, 1 c, 0 c, b c, 4 c, 1 c, 0 c, 1 c, 8 c, 0 c, 1 c, 0 c, 1 c, 8 c, 1 c, 0 c, b c, 4 c, 1 c, 0 c, 1 c, 8 c, 0 c, 1 c,
0 c, 1 c, 8 c, 1 c, 0 c, b c, 4 c, 1 c, 0 c, 1 c, 8 c, 0 c, 1 c, 0 c, 1 c, 8 c, 1 c, 0 c, b c, 4 c, 1 c, 0 c, 1 c, 8 c, 0 c, 1 c, 0 c, 1 c, 8 c, 1 c, 0 c, b c, 4 c, 1 c, 0 c, 1 c, 8 c,
0 c, 1 c, 0 c, 1 c, 8 c, 1 c, 0 c, b c, 4 c, 1 c, 0 c, 1 c, 8 c, 0 c, 1 c, 0 c, 1 c, 8 c, d c, 0 c, 1 c, 8 c, 0 c, 1 c, 0 c, f c, 8 c, 0 c,
xx
xt
create x2o
20 c, 20 c, 20 c, 40 c, 0 c, 20 c, 40 c, 0 c, 20 c, 40 c, 0 c, 20 c, 40 c, 0 c, 20 c, 40 c, 0 c, 20 c, 40 c, 0 c, 20 c, 40 c, 0 c, 20 c, 40 c, 0 c, 20 c, 40 c, 0 c, 20 c, 40 c, 0 c, 20 c,
40 c, 0 c, 20 c, 40 c, 0 c, 20 c, 40 c, 0 c, 20 c, 40 c, 0 c, 20 c, 40 c, 0 c, 20 c, 40 c, 0 c, 20 c, 40 c, 0 c, 20 c, 40 c, 0 c, 20 c, 40 c, 0 c, 20 c, 40 c, 0 c, 20 c, 40 c, 0 c, 20 c,
40 c, 0 c, b c, 40 c, 4 c, 0 c, 11 c, 40 c, 0 c, b c, 40 c, 1 c, 0 c, 2 c, 21 c, 1 c, 0 c, 2 c, 40 c, 3 c, 0 c, 1 c, 40 c, 2 c, 0 c, 9 c, 40 c, 0 c, 7 c, 40 c, 4 c, 0 c, 3 c, 21 c, 4 c,
0 c, 1 c, 21 c, 5 c, 0 c, 8 c, 40 c, 0 c, 6 c, 40 c, 1 c, 0 c, 8 c, 21 c, 2 c, 0 c, 6 c, 21 c, 2 c, 0 c, 7 c, 40 c, 0 c, 5 c, 40 c, 1 c, 0 c, 6 c, 21 c, 1 c, 2 c, 8 c, 21 c, 1 c, 2 c,
2 c, 21 c, 2 c, 0 c, 6 c, 40 c, 0 c, 5 c, 40 c, 1 c, 0 c, 1 c, 21 c, 1 c, 20 c, 11 c, 21 c, 1 c, 0 c, 6 c, 40 c, 0 c, 5 c, 40 c, 1 c, 0 c, a c, 21 c, 1 c, 20 c, 8 c, 21 c, 1 c, 0 c, 6 c,
40 c, 0 c, 5 c, 40 c, 8 c, 0 c, 6 c, 21 c, 7 c, 0 c, 6 c, 40 c, 0 c, c c, 40 c, 7 c, 0 c, d c, 40 c, 0 c, 20 c, 40 c, 0 c,
xt
create x2p
x19 ,
x1a ,
x1b ,
x1c ,
x1d ,
x1e ,
x1f ,
x1g ,
x1h ,
x1i ,
x1j ,
x1k ,
x1l ,
\ Colorable tiles
x1m ,
x1n ,
x1o ,
x1p ,
x1q ,
x1r ,
x1s ,
x1t ,
x1u ,
\ Non-colorable tiles in RAM
x2l ,
x2m ,
x13
x2n ,
x12
\ tile_Monster ,				\ dummy value. crashes without this. no clue why 0_0
x2o ,
\ 1bpp tiles
x1v ,
x13
x1w ,
x12
x15
x1x ,
x12
x14
x1y ,
x12
x1z ,
x15
x20 ,
x22 ,
x21 ,
x23 ,
x24 ,
x25 ,
x12
x14
x26 ,
x27 ,
x28 ,
x29 ,
x2a ,
x2b ,
x2c ,
x2d ,
x2e ,
x2f ,
x2g ,
x2h ,
x2i ,
x2j ,
x2k ,
x12
xt
\ ITEM COLORS
xu
create x2q 0 c, 5 c, 49 c, 15 c, 4a c, 2a c, 48 c, 2a c, 47 c, c c, 4b c, 3f c,
create x2r 0 c, 5 c, 49 c, 15 c, 4a c, 3a c, 48 c, 3a c, 47 c, 30 c, 4b c, 3f c,
create x2s 0 c, 5 c, 49 c, 15 c, 4a c, 35 c, 48 c, 35 c, 47 c, f c, 4b c, 3f c,
create x2t 0 c, 5 c, 49 c, 15 c, 4a c, 20 c, 48 c, 20 c, 47 c, 32 c, 4b c, 3f c,
create x2u 0 c, 5 c, 49 c, 30 c, 4a c, 3f c, 48 c, 3f c, 47 c, 30 c, 4b c, 3 c,
create x2v 1 c, 2 c, 41 c, 15 c, 42 c, 2a c,
create x2w 1 c, 2 c, 41 c, 15 c, 42 c, 2b c,
create x2x 1 c, 2 c, 41 c, 15 c, 42 c, 17 c,
create x2y 1 c, 2 c, 41 c, 15 c, 42 c, 2 c,
create x2z 1 c, 2 c, 41 c, 3 c, 42 c, 3f c,
create x30 2 c, 2 c, 43 c, 15 c, 44 c, 2a c,
create x31 2 c, 2 c, 43 c, 15 c, 44 c, 2e c,
create x32 2 c, 2 c, 43 c, 15 c, 44 c, 1d c,
create x33 2 c, 2 c, 43 c, 15 c, 44 c, 8 c,
create x34 2 c, 2 c, 43 c, c c, 44 c, 3f c,
create x35 3 c, 2 c, 45 c, 15 c, 46 c, 2a c,
create x36 3 c, 2 c, 45 c, 15 c, 46 c, 3b c,
create x37 3 c, 2 c, 45 c, 15 c, 46 c, 37 c,
create x38 3 c, 2 c, 45 c, 15 c, 46 c, 22 c,
create x39 3 c, 2 c, 45 c, 32 c, 46 c, 3f c,
create x3a 4 c, 1 c, 4c c, 2a c,
create x3b 4 c, 1 c, 4c c, 2f c,
create x3c 4 c, 1 c, 4c c, 1f c,
create x3d 4 c, 1 c, 4c c, a c,
create x3e 4 c, 1 c, 4c c, f c,
create x3f 5 c, 3 c, 53 c, 3b c, 54 c, 20 c, 55 c, 2 c,
create x3g 5 c, 3 c, 53 c, 3b c, 54 c, 2 c, 55 c, 8 c,
create x3h 5 c, 3 c, 53 c, 3b c, 54 c, 8 c, 55 c, a c,
create x3i 5 c, 3 c, 53 c, 3b c, 54 c, a c, 55 c, 20 c,
create x3j 6 c, 5 c, 50 c, 21 c, 52 c, 20 c, 51 c, 2 c, 4e c, 17 c, 4f c, 2b c,
create x3k 6 c, 5 c, 50 c, 21 c, 52 c, 20 c, 51 c, 2 c, 4e c, 1f c, 4f c, 2f c,
create x3l 6 c, 5 c, 50 c, 21 c, 52 c, 20 c, 51 c, 2 c, 4e c, 35 c, 4f c, 3a c,
create x3m 5 c, 3 c, 53 c, 21 c, 54 c, 32 c, 55 c, 20 c,
create x3n 5 c, 3 c, 53 c, b c, 54 c, 2 c, 55 c, f c,
\ COLOR TABLES
create x3o
x3f ,
x3g ,
x3h ,
x3i ,
x3m ,
x3n ,
x3j ,
x3k ,
x3l ,
create x3p
x2q ,
x2r ,
x2s ,
x2t ,
x2u ,
x2v ,
x2w ,
x2x ,
x2y ,
x2z ,
x30 ,
x31 ,
x32 ,
x33 ,
x34 ,
x35 ,
x36 ,
x37 ,
x38 ,
x39 ,
x3a ,
x3b ,
x3c ,
x3d ,
x3e ,
xt
\ Variables	
create v1
\ variable hero_HP
\ variable hero_HP_Max
\ variable hero_Lava_Dmg
\ local temp variables used by various words
\ local variables for DrawText
\ temp storage for item data in bank 2
\ local variables for CalcStats
\ local variables for DrawTile1bpp
\ local variables for DrawSkillsMenu
\ local variables for DrawResources
\ local variables for TickHandler
\ local variables for KeyHandlerGame
5a allot
variable x3q
variable x3r
variable x3s
variable x3t
variable x3u
create x3v 5 allot
create x3w 1E allot
create x3x f allot
xu
create x3y 28 3 * allot
: x3z ( index -- addr )
3 * x3y + ;
: x40 x3z ; ( index -- x addr )
: x41 x3z 1+ ; ( index -- y addr )
: x42 x3z 2 + ; ( index -- alive addr )
create x43 28 4 * allot
: x44 ( index -- addr )
4 * x43 + ;
: x45 x44 ; ( index -- x addr )
: x46 x44 1+ ; ( index -- y addr )
: x47 x44 2 + ; ( index -- active addr )
: x48 x44 3 + ; ( index -- color addr )
create x49 28 14 * allot
create x4a 28 14 * allot
create x4b 28 14 * allot
xt
create x4c 100 allot
create x4d 100 allot
create x4e 100 allot
create x4f 18 allot
\ Primitive drawing words
: x4g ( x y width height color -- )
-rot x3 \ save color width height
100 * + \ x,y offset into screen
4000 +
x4 swap r> \ screenaddr width color height
0 do
x1 fill \ draw horizontal line
rot 100 + -rot \ next row
loop x0 ;
: x4h ( color -- )
\ 6,290,402 cycles so 2x slower than C
\ 1,347,946 - faster than C!
\ faster than memset though?
4000
[ 80 100 * ]
literal rot fill ;
\ Tile words
: x4i ( ID -- addr)					\ look up tile address from ID
cells x2p + @ ;
: x4j ( addr -- addr+2 w h)			\ generate  pointer to pixel data, width, height
\ dup c@ >r 1+						\ get width
\ dup c@ >r 1+						\ get height
\ r>> swap ;
dup c@ swap 1+
dup c@ swap 1+
-rot ;
\ : ColorID>	( ID -- addr )				\ look up color address from ID
\ 	cells tile_colors + @ ;
: x4k ( source dest -- source+1 dest+1 byte )
over c@ dup >r over c! \ get byte from source and write to dest
1+ swap 1+ swap \ advance pointers
r> ; \ retain copy of byte 
: x4l ( sourceID destID -- )
x4i >r \ save dest address
x4i x4j \ get pointer to source pixel data, width, height
swap r@ c! \ copy width to dest
dup r@ 1+ c! \ copy height to dest
r> 2 + swap \ stack: source dest height
0 do
begin
x4k \ copy length byte and leave copy of byte on stack
while
x4k \ copy color byte
drop \ don't need copy of copied byte
repeat
loop 2drop ;
\ DictSkillsMenu
\ 
\ 	: CopyTile1bpp ( sourceID destID -- )
\ 		TileID> swap TileID>				\ dest_ptr src_ptr
\ 		dup c@ 8 / width c!					\ dest_ptr src_ptr
\ 		dup c@ width c@ 8 * - 0<> if		\ dest_ptr src_ptr
\ 			width c@+1
\ 		then swap							\ src_ptr dest_ptr
\ 		over 1+ c@ width c@ * 3 + move ;	\ src_ptr dest_ptr len
\ DictMainRAM
xu
: x4m ( tileID colorID -- )
\ ColorID>							\ get address of color table from ID
over
case
9 of x3p endof
a of x3p endof
\ Menu_head_temp of item_colors endof
\ Menu_body_temp of item_colors endof
\ Menu_legs_temp of item_colors endof
\ Menu_gun_temp of item_colors endof
\ Menu_tool_temp of item_colors endof
b of x3p endof
\ default
x3o swap
endcase
swap cells + @ \ get address of color data from color list
1+ dup c@ \ fetch length of color table
swap 1+ \ point to color pairs
rot
x4i x4j nip \ stack: colorsize colorpairs tileaddr height
0 do
begin
dup c@ \ get first byte of length,color pair
swap 1+ swap \ increment tile pointer
while
rot dup >r -rot \ get size of color table
r> 0 do \ stack: colorsize colorpairs tileaddr
2dup c@ \ get color from tile
swap i 2* + dup >r c@ \ look up match color in color pair and save address
= if \ if pair matches pixel from tile
r> 1+ c@ \ get color to change pixel to from pair
over c! \ store in tile
leave
then
r> drop \ get rid of unused address
loop
1+ \ move past color to next length,color pair
repeat \ stack: colorsize colorpairs tileaddr
loop
x0 ;
xt
\ Saves 64 bytes
: x4n ( x y tileID -- screen_addr tile_addr width height )
x4i \ look up tile address from ID
-rot 100 * + \ calculate screen address
4000 +
swap x4j ; \ get pointer to pixel data, width, height
: x4o ( x y tileID -- )
x4n
0 do \ stack: screen tile width
begin
over c@ \ get length of length,color pair
while \ 0 length means line is finished, so draw pairs until then
-rot \ stack: width screen tile
dup c@ >r 1+ \ save length of length,color pair, advance tile pointer
dup c@ >r 1+ \ save color of length,color pair, advance tile pointer
-rot x4 swap \ stack: tile width screen length color
dup 40 = if \ don't draw if color is transparent
drop \ don't need color
+ \ add width to screen pointer
-rot \ stack: screen tile width
else
swap
-rot swap rot
0 do \ stack: tile width color screen
2dup c! \ draw pixel
1+ \ advance screen pointer
loop
nip \ color
-rot \ stack: screen tile width
then
repeat
\ 0 length pixel hit which indicates line done
rot \ stack: tile width screen
over - 100 + \ go to next screen line
rot 1+ \ advance tile pointer
rot \ stack: screen tile width
loop
x0 ;
: x4p ( screen_addr tile_addr color_addr -- screen_addr tile_addr )
c@ dup 40 <> if \ screen_addr tile_addr color
rot swap over \ tile_addr screen_addr color screen_addr
c! \ screen_addr tile_addr
else
drop swap
then
1+ swap ; \ increment screen_ptr
: x4q ( vector -- )
@ dup if execute else 2drop then ;
: x4r
dup >r 80 and if \ screen_addr tile_addr pixel_data
[ v1 2c + ] literal 
else
[ v1 2d + ] literal 
then \ screen_addr tile_addr color
x4p \ screen_addr tile_addr
r> 1 lshift \ screen_addr tile_addr pixel_data
;
: x4s ( x y color1 color2 tileID -- )
-rot [ v1 2d + ] literal  c! [ v1 2c + ] literal  c!
x4n \ screen_addr tile_addr width height
[ v1 2f + ] literal  c! \ save height
[ v1 2e + ] literal  c! \ save width
dup c@ [ v1 30 + ] literal  c! 1+ \ screen_addr tile_addr
[ v1 2e + ] literal  c@ dup 8 /
swap 8 mod 0<> if 1+ then \ screen_addr tile_addr byte_count
[ v1 2f + ] literal  c@ 0 do \ loop through rows
[ v1 2e + ] literal  c@ [ v1 31 + ] literal  c! \ count of bits
i [ v1 4f + ] literal  x4q
dup >r \ save byte_count
0 do \ loop through bytes
dup 1+ swap c@ \ screen_addr tile_addr pixel_data
8 0 do \ loop through bits in byte
[ v1 51 + ] literal  x4q
[ v1 31 + ] literal  c@ 1- dup \ stop when bit count hit
0= if
drop leave
else
[ v1 31 + ] literal  c!
then
loop \ loop through bits in byte
drop \ screen_addr tile_addr
loop \ loop through bytes
r> \ screen_addr tile_addr byte_count
rot 100 + \ advance row
[ v1 2e + ] literal  c@ - -rot
loop
x0
;
: x4t ( x y color1 color2 tileID -- )
0 [ v1 4f + ] literal  !
[ ' x4r ] literal [ v1 51 + ] literal  !
x4s ;
xu
: x4u ( screen_ptr i -- color )
100 * + c@ ;
\ MUST BE IN BANK 2 NOT BANK 3!!!
: x4v ( sourceID destID -- )
\ switch in lower half of graphics RAM long enough to use for tile
5 xn
over 0 40 rot x4o \ draw source tile temporarily
x4i swap x4i x4j \ dest_addr source_addr w h
rot drop >r swap \ w dest_addr (h on rstack)
2dup c! 1+ r@ over c! 1+ \ store width and height
[ 100 40 * ] \ calculate pointer into screen
[ 4000 + ] LITERAL \ width dest_addr screen_ptr
r> 0 do \ loop through rows
rot dup >r over r@ 1- \ get color pixel_color and init pixel_count
x4u 0 r> \ dest_addr screen_ptr width pixel_color pixel_count width
0 swap 1- do
x2 -rot x4 swap rot \ width dest_addr pixel_count pixel_color screen_ptr
2dup i x4u = if \ if colors equal
rot 1+ -rot \ increase pixel count
-rot swap x2 rot x4 \ dest_addr screen_ptr width pixel_color pixel_count
\ ."    +1" CR
else \ width dest_addr pixel_count pixel_color screen_ptr
x2 over
\ over ."    count:" .
c! 1+ \ store count at dest (width dest_addr (r:pixel_color screen_ptr))
r> over
\ over ."    color:" . CR
c! 1+ \ store color at dest (width dest_addr (r: screen_ptr)
r> dup i x4u \ get color from next pixel 
>r rot r> 1 \ dest_addr screen_ptr width pixel_color pixel_count
then
-1 +loop
dup 0= if
2drop rot \ screen_ptr width dest_addr
else
swap x2 rot r> over c! \ screen_ptr width dest_addr (r:pixel_color)
1+ r> over c! 1+ \ screen_ptr width dest_addr
then
0 over c! 1+ \ row terminating 0 to dest_addr
rot 1+ \ width dest_addr screen_ptr
loop x0
\ restore bank ROM
2 xn
;
\ : RotateTile90_var ;
\ does using local vars save time/space?
: x4w ( -- )
15 0 x4l
0 1 x4v
1 2 x4v
2 3 x4v
15 4 x4l
15 5 x4l
14 6 x4l
14 8 x4l
14 7 x4l
0 dup x4m
1 dup x4m
2 dup x4m
3 dup x4m
4 dup x4m
5 dup x4m
6 dup x4m
8 dup x4m
7 dup x4m
;
xt
\ Map words
xu
: x4x ( -- rand_val )
xj @
dup 7 lshift xor
dup 9 rshift xor
dup 8 lshift xor
dup xj !
;
: x4y ( rand_max -- rand_val )
x4x 0 rot um/mod drop ; \ maintains compatibility with C version
: x4z ( -- rand_val )
x4x 2 mod ;
: x50 ( tile_type -- )
28 x4y \ random starting X
14 x4y \ random starting Y
5 1- x4y 1+ \ random stripe width
5 1- x4y 1+ \ random stripe height
x4z if -1 else 1 then \ random change in X
x4z if -1 else 1 then \ random change in Y				
2swap \ above calls need to be in same order as original for same map
0 do
dup
0 do \ stack: tile X Y dx dy width
x3 \ save dx dy width
2dup
0 14 within \ Y offset into map
swap 0 28 within \ X offset into map
and if \ bounds check
over x49 +
over 28 * +
>r rot dup r> c! \ store tile
-rot \ tile X Y (r: dx dy width)
then
swap r@ + swap \ add dx to X
x5
loop \ stack: tile X Y dx dy width
>r swap x2 r@ + \ add dy to Y
x4 swap r> \ stack: tile X Y dx dy width
loop \ stack: tile X Y dx dy width
x0 x0
;
: x51 ( -- )
x49 \ address for fill
14 28 * \ n for fill
0 fill \ char for fill
14 0 do
5 x50
loop
3C 0 do
4 x50
loop
\ change blank to other blank tiles
x49
14 0 do
28 0 do
dup c@ 0 = if
\ 4 rand8 case
\ 0 of MAP_BLANK endof
\ 1 of MAP_BLANK_90 endof
\ 2 of MAP_BLANK_180 endof
\ 3 of MAP_BLANK_270 endof
\ endcase
4 x4y
over c!
then
1+ \ advance map_data pointer
loop
loop
drop
\ make sure player starting square is blank
0
x49 1 +
1 28 * + c!
6
14 1 rshift dup x4y + 28 *
28 1 rshift dup x4y + + x49 + c!
\ MAP_EXIT
\ MAP_WIDTH 2* 2 + map_data + c!
;
\ : CheckForMonster ( x y -- monster? )
\ 	MAP_WIDTH * monster_map + + c@
\ 	dup NO_MONSTER = if
\ 		drop false exit
\ 	else
\ 		monster.alive c@
\ 	then
\ 	;
: x52 ( x y -- monster? )
28 * x4b + + c@
FF <>
;
: x53 ( x y -- crystal? )
28 * x4a + + c@
FF <> ;
: x54 ( x y -- x y free? )
2dup 1 c@ = \ if x,y not hero start x,y
swap 1 c@ =
and invert >r
2dup x52 invert >r \ and if no monster at x,y
2dup 28 * x49 + + c@ \ stack: x y tile
dup 0 = swap \ and if tile is blank, not rock
dup 1 = swap
dup 2 = swap
3 = swap
or or or x4 and and ;
: x55 ( -- )
\ mark map as no monsters
x4b
[ 28 14 * ] literal \ entire map
FF fill
28 0 do
28 x4y
14 x4y
x54
if
2dup
i x41 c! \ store y coordinate
i x40 c! \ store x coordinate
FFFF i x42 c! \ set to alive
28 * + x4b +
i swap c!
1 \ loop increment
else
2drop 0 \ loop increment
then
+loop
;
: x56 ( -- )
\ mark map as no crystals
x4a
[ 28 14 * ] literal \ entire map
FF fill
28 0 do
28 x4y
14 x4y
x54 >r
2dup x53 invert r> and
if
2dup
i x46 c! \ store y coordinate
i x45 c! \ store x coordinate
FFFF i x47 c! \ set to alive
3 x4y i x48 c! \ random color
28 * + x4a +
i swap c!
1 \ loop increment
else
2drop 0 \ loop increment
then
+loop
;
create x57 17 c, 35 c, 1F c,
: x58 ( -- )
[ v1 0 + ] literal  c@ [ v1 2 + ] literal  c@ +
[ v1 1 + ] literal  c@ [ v1 3 + ] literal  c@ +
0 [ v1 1d + ] literal  c!
[ v1 1c + ] literal  c@ case
1 of
[ v1 3 + ] literal  c@ 0= if
5 [ v1 1d + ] literal  c!
then
1-
endof
2 of
[ v1 3 + ] literal  c@ 4 1- = if
5 [ v1 1d + ] literal  c!
then
1+
endof
3 of
[ v1 2 + ] literal  c@ 0= if
5 [ v1 1d + ] literal  c!
then
swap 1- swap
endof
4 of
[ v1 2 + ] literal  c@ 5 1- = if
5 [ v1 1d + ] literal  c!
then
swap 1+ swap
endof
endcase
[ v1 1d + ] literal  c@ 5 = if
2drop
0 [ v1 1d + ] literal  c!
exit
then
2dup
[ v1 1f + ] literal  c!
[ v1 1e + ] literal  c!
28 * + dup x49 + c@
dup 4 = if
1 [ v1 1d + ] literal  c!
then
6 = if
2 [ v1 1d + ] literal  c!
then
dup x4b + c@ FF <> if
dup x4b + c@ x42 c@ if
3 [ v1 1d + ] literal  c!
dup x4b + c@ [ v1 1e + ] literal  c!
then
then
dup x4a + c@ FF <> if
dup x4a + c@ x47 c@ if
4 [ v1 1d + ] literal  c!
x4a + c@ dup [ v1 1e + ] literal  c!
x48 c@ x57 + c@
[ v1 1f + ] literal  c!
else
drop
then
else
drop
then
;
xt ( num -- msg_len )
: x59
1 [ v1 3b + ] literal  c!
0 [ v1 3c + ] literal  c!
[char] 0 [ v1 38 + ] literal  c!
[ v1 38 + ] literal  swap 64 \ text_buff num 100
begin
2dup 2dup > -rot = or if \ text_buff num 100
tuck - rot \ 100 num text_buff
dup x7 1 [ v1 3c + ] literal  c! \ 100 num text_buff
-rot swap \ text_buff num 100
0 \ don't exit loop yet
else \ text_buff num 100
A /
dup 0= if
FFFF \ exit word *sigh*
else \ text_buff num 100
[ v1 3c + ] literal  c@ 0<> if
rot 1+ [char] 0 \ num 100 text_buff char0
over c! -rot \ text_buff num 100
[ v1 3b + ] literal  x7 \ advance length
then
0 \ keep looping
then
then
until
x0
[ v1 3b + ] literal  c@
;
: x5a ( screen_ptr char -- screen_ptr )
20 - 3 lshift 9C @ + \ screen_ptr char_ptr
8 0 do \ 8 rows tall
dup c@ 3 rshift \ screen_ptr char_ptr char_data
rot swap \ char_ptr screen_ptr char_data
6 0 do \ 6 pixels wide
dup 1 and if
[ v1 32 + ] literal 
else
[ v1 33 + ] literal 
then
c@ \ char_ptr screen_ptr char_data color
rot 2dup c! 1+ \ char_ptr char_data color screen_ptr
-rot drop 1 rshift \ char_ptr screen_ptr char_data
loop
drop [ 100 6 - ]
literal + swap 1+ \ screen_ptr char_ptr  
loop
drop
[ 100 8 * 6 - ] literal - \ advance screen pointer
;
: x5b ( msg msg_len y stat1 stat2 fg_color bg_color )
[ v1 21 + ] literal  c@ [ v1 22 + ] literal  c! \ save draw_X in case new line
[ v1 33 + ] literal  c! [ v1 32 + ] literal  c!
[ v1 36 + ] literal  ! [ v1 34 + ] literal  !
100 *
4000 + [ v1 21 + ] literal  c@ + \ msg msg_len screen_ptr
swap \ msg screen_ptr msg_len
0 do \ loop through string
6 [ v1 21 + ] literal  c@ + [ v1 21 + ] literal  c! \ advance text X coordinate
swap dup 1+ swap c@ rot swap \ msg screen_ptr char
dup [char] $ = if
drop [ v1 34 + ] literal  @ x59 \ msg screen_ptr num_len
[ v1 38 + ] literal  swap 0 do \ msg screen_ptr text_buff
dup c@ rot swap x5a \ msg text_buff screen_ptr 
swap 1+ \ msg screen_ptr text_buff
loop drop \ msg screen_ptr
[ v1 36 + ] literal  @ [ v1 34 + ] literal  !
else \ msg screen_ptr char
dup [char] * = if
drop \ character not needed
[ v1 22 + ] literal  c@ dup [ v1 21 + ] literal  c! \ msg screen_ptr draw_X_copy
swap FF00 and + \ msg screen_ptr
[ A 100 * ]
literal +
else
x5a \ msg screen_ptr
then
then
loop
2drop ;
\ DictGame
: x5d ( left top val val_max fg_color bg_color -- )
[ v1 33 + ] literal  c! [ v1 32 + ] literal  c! \ left top val val_max
swap 50 rot \ left top val BAR_WIDTH val_max
*/mod swap drop >r 2dup r@ \ left top left top fg_width
6 [ v1 32 + ] literal  c@ x4g \ left top
r@ rot + swap 50 r> - \ left top bg_width
6 [ v1 33 + ] literal  c@ x4g
;
xx
: x5e ( x_offset y_offset -- x y flag )
[ v1 3 + ] literal  c@ +
swap [ v1 2 + ] literal  c@ +
2dup
0 5 within
swap
0 4 within
and if \ x_offset y_offset
20 * swap 20 * FFFF \ within bounds
else \ not within bounds
0
then
;
xu
: x5f
[ v1 1 + ] literal  c@ 28 * \ calculate display offset Y
[ v1 0 + ] literal  c@ + \ calculate display offset X
0 \ stack: map_offset temp_offset				
4 0 do
over x49 +
over x4c +
5 move
over x4b +
over x4e +
5 move
over x4a +
over x4d +
5 move
5 + \ increase temp pointer
swap 28 + \ increase map_data pointer
swap
loop
[ 4 5 * ] literal 0 do
\ search for dead monsters
x4e i + c@ dup FF = if
drop
else
x42 c@ 0 = if
FE x4e i + c!
then
then
loop
;
xx
: x5g ( -- )
\ copy map data from banked memory
xq
x5f
xr
2drop \ pointers no longer needed
\ draw background tiles
x4d
x4e
x4c
4 0 do
5 0 do
dup c@
case
0 of 0 endof
1 of 1 endof
2 of 2 endof
3 of 3 endof
4 of 4 endof
5 of 5 endof
6 of 1e endof
endcase
dup 1e = if
i 20 * j 20 * rot
30 0 rot
x4t
else
i 20 * j 20 * rot x4o
then
\ monsters
1+ -rot \ advance map_data_temp ptr, switch to monster ptr
dup c@ FF <> if
dup c@ i 20 * j 20 * rot
FE = if
17
else
16
then
x4o
then
\ crystals
1+ -rot \ advance monster ptr, rotate in crystal ptr
dup c@ dup FF <> if \ crystal_index
xq
dup x47 c@ if
x48 c@
case
0 of 6 endof
1 of 8 endof
2 of 7 endof
endcase
else
drop 19
then
i 20 * j 20 * rot
xr
x4o
else
drop
then
1+ -rot \ advance crystal ptr, rotate back to map_data_temp ptr
loop
loop
x0
\ draw robot
[ v1 2 + ] literal  c@ 20 * [ v1 3 + ] literal  c@ 20 *
[ v1 1b + ] literal  c@ 4 = if
a
else
9
then x4o
\ draw selector
[ v1 1c + ] literal  c@
case
1 of 0 -1 endof
2 of 0 1 endof
3 of -1 0 endof
4 of 1 0 endof
endcase
x5e if
C 40 1a x4t
else
2drop
then
;
\ Legend words
xu
: x5h
x49 over + x4c 28 move
x4b over + x4e 28 move
x4a over + x4d 28 move
28 0 do
x4d i + c@ dup
FF = if
drop
else
x47 c@ 0 = if
FF x4d i + c!
then
then
x4e i + c@ dup
FF = if
drop
else
x42 c@ 0 = if
FF x4e i + c!
then
then
loop
;
xx
create x5i 3B c, 3B c, 3B c, 3B c, 21 c, B c, 35 c,
: x5j ( -- )
\ Draw bg
A0 0 60 80 15 x4g
\ Draw minimap
[ 4000 54 100 * + ] \ y offset into screen
[ A0 8 + + ] literal \ x offset into screen			
14 0 do
i 28 *
xq
x5h
xr
drop
x4d
x4e
x4c
28 0 do \ screen_ptr crystal_map_temp monster_map_temp map_data_temp
swap x2 \ screen_ptr crystal_map_temp (r: map_data_temp monster_map_temp)
over r@ c@ \ screen_ptr crystal_map_temp screen_ptr tileID (r: map_data_temp monster_map_temp)
\ saves 162 bytes
x5i + c@ swap \ screen_ptr crystal_map_temp color screen_ptr (r: map_data_temp monster_map_temp)
x4 dup c@ swap 1+ swap -rot x2
FF <> if
nip 3 swap
then
rot dup c@ >r 1+ -rot r> \ screen_ptr crystal_map_temp color screen_ptr (r: map_data_temp monster_map_temp)
FF <> if
nip F swap
then
2dup c! 2dup 1+ c! \ draw pixels
2dup 100 + c!
2dup [ 100 1+ ] literal + c!
2drop swap 2 + swap
x4 swap 1+ \ screen_ptr crystal_map_temp monster_map_temp map_data_temp
loop
x0 \ screen_ptr
[ 100 2* 28 2* - ] \ advance 2 lines - mini map width
literal +
loop drop
\ Green rectangle on minimap
[ 4000 54 100 * + ] \ y offset into screen
[ A0 8 + + ] literal \ x offset into screen
[ v1 0 + ] literal  c@ 2* + [ v1 1 + ] literal  c@ 2* 100 * + \ box upper left
dup [ 5 2* ] literal C fill \ top line
dup [ 4 2* 1- ] literal 100 * +
[ 5 2* ] literal C fill \ bottom line
100 + \ advance screen pointer one pixel down so no overlap
[ 4 1- 2* ] literal 0 do \ 1 less so doesnt overwrite already drawn line
C over c! \ left line
C over
[ 5 2* 1- ] literal + c! \ right line
100 + \ advance screen pointer
loop
drop
\ draw stats
s" HP:$/$" [ A0 8 + ]
literal [ v1 21 + ] literal  c! 4
x3q @ x3r @
3F 15
x5b
[ A0 8 + ] literal
D x3q @ x3r @
3 2 x5d
s" Batt:$/$" [ A0 8 + ]
literal [ v1 21 + ] literal  c! 18
[ v1 6 + ] literal  c@ [ v1 7 + ] literal  c@
3F 15
x5b
[ A0 8 + ] literal
21 [ v1 6 + ] literal  c@ [ v1 7 + ] literal  c@
30 20 x5d
s" Exp:$/$" [ A0 8 + ]
literal [ v1 21 + ] literal  c! 2C
[ v1 14 + ] literal  c@ [ v1 15 + ] literal  c@
3F 15
x5b
[ A0 8 + ] literal
35 [ v1 14 + ] literal  c@ [ v1 15 + ] literal  c@
C 8 x5d
xq
x58
xr
[ v1 1d + ] literal  c@ 0 <> if
[ A0 8 + ] literal [ v1 21 + ] literal  c!
[ v1 1d + ] literal  c@ case
1 of
s" Rock"
21
endof
2 of
s" Exit"
35
endof
3 of
s" Evil robot"
1
endof
4 of
s" Crystal"
[ v1 1f + ] literal  c@
endof
endcase
>r
40
0 0 r> 15
x5b
then
\ draw progress bar if needed
[ v1 20 + ] literal  c@ if
( left top val val_max fg_color bg_color -- )
[ A0 8 + ] literal
49 x3t @
x3u @
32 21 x5d
then
;
xt
\ Menus
xu


\ 							slot		cost	cost_type				quality			stat_count	stat1					stat2					stat3
create x5k 0 c, 0 c, f c, 0 c, 1 c, 0 c, 2 c,
create x5l 0 c, 2 c, 1 c, 1 c, 1 c, 0 c, 4 c,
create x5m 0 c, 5 c, 1 c, 2 c, 2 c, 0 c, 5 c, 5 c, 5 c,
create x5n 0 c, 8 c, 2 c, 3 c, 3 c, 0 c, 8 c, 5 c, a c, 7 c, 2 c,
create x5o 0 c, f c, 0 c, 4 c, 3 c, 0 c, c c, 5 c, 14 c, 9 c, 1 c,
create x5p 1 c, 0 c, f c, 0 c, 1 c, 1 c, 5 c,
create x5q 1 c, 2 c, 0 c, 1 c, 1 c, 1 c, 8 c,
create x5r 1 c, 5 c, 1 c, 2 c, 2 c, 1 c, a c, 0 c, 3 c,
create x5s 1 c, 8 c, 2 c, 3 c, 3 c, 1 c, c c, 0 c, 5 c, 2 c, 2 c,
create x5t 1 c, f c, 1 c, 4 c, 3 c, 1 c, 14 c, 0 c, a c, a c, 1 c,
create x5u 2 c, 0 c, f c, 0 c, 1 c, 1 c, 3 c,
create x5v 2 c, 2 c, 0 c, 1 c, 1 c, 1 c, 5 c,
create x5w 2 c, 5 c, 0 c, 2 c, 2 c, 1 c, 6 c, 6 c, 19 c,
create x5x 2 c, 8 c, 1 c, 3 c, 3 c, 1 c, 7 c, 6 c, 32 c, 3 c, 2 c,
create x5y 2 c, f c, 0 c, 4 c, 3 c, 1 c, c c, 2 c, 4 c, b c, 0 c,
create x5z 3 c, 0 c, f c, 0 c, 1 c, 2 c, 4 c,
create x60 3 c, 2 c, 2 c, 1 c, 1 c, 2 c, 6 c,
create x61 3 c, 5 c, 0 c, 2 c, 2 c, 2 c, 8 c, 5 c, a c,
create x62 3 c, 8 c, 1 c, 3 c, 3 c, 2 c, a c, 5 c, f c, 0 c, 2 c,
create x63 3 c, f c, 2 c, 4 c, 3 c, 2 c, c c, 5 c, 1e c, c c, 0 c,
create x64 4 c, 0 c, f c, 0 c, 1 c, 3 c, 1 c,
create x65 4 c, 2 c, 2 c, 1 c, 1 c, 3 c, 2 c,
create x66 4 c, 5 c, 2 c, 2 c, 2 c, 3 c, 3 c, 7 c, 2 c,
create x67 4 c, 8 c, 0 c, 3 c, 3 c, 3 c, 5 c, 7 c, 3 c, 0 c, 3 c,
create x68 4 c, f c, 2 c, 4 c, 3 c, 4 c, 0 c, 8 c, 0 c, d c, 3 c,
\ 							types				cost	cost_type			
create x69 e c, 1 c, 0 c,
create x6a e c, 1 c, 1 c,
create x6b e c, a c, 0 c,
create x6c e c, a c, 1 c,
create x6d e c, 1 c, 2 c,
create x6e e c, a c, 2 c,
create x6f
x5k ,
x5l ,
x5m ,
x5n ,
x5o ,
x5p ,
x5q ,
x5r ,
x5s ,
x5t ,
x5u ,
x5v ,
x5w ,
x5x ,
x5y ,
x5z ,
x60 ,
x61 ,
x62 ,
x63 ,
x64 ,
x65 ,
x66 ,
x67 ,
x68 ,
x69 ,
x6b ,
x6a ,
x6c ,
x6d ,
x6e ,
: x6g ( itemID -- item_addr )
2* x6f + @ ;
: x6h ( itemID -- cost cost_type)
x6g dup 1+ c@ swap 2 + c@ ;
: x6i ( itemID -- )
dup x6g c@ \ itemID item_type
d + \ Menu_head is first of 5 item types
b x4l \ itemID
b swap x4m
;
: x6j ( itemID -- )
\ shortcut since we know the 11 variables we need are stored contiguously
x6g [ v1 3d + ] literal  B move ;
xy
create x6k
0 , \ hero_HP_Max but not byte wide like rest
v1 7 +  ,
v1 9 +  ,
v1 f +  ,
v1 b +  ,
v1 c +  ,
v1 d +  ,

create x6l
v1 7 +  , \ Batt
v1 4 +  , \ HP,
v1 9 +  , \ Dmg,
0 , \ Mine,
0 , \ Mine1s,
v1 f +  , \ Crit,
v1 d +  , \ Lava,
0 , \ Drill, 
0 , \ Drill1s,
v1 e +  , \ Batt_Recharge
v1 10 +  , \ HP_Recharge,
0 , \ LavaHeals,
0 , \ AttackCost50,
0 , \ MineCost50
\ just make strings same length to save on pointer space
create x6m
s" 
HP:   $  
Batt: $  
Dmg:  $  
Crit: $% 
Mine: $s 
Drill:$s 
Lava: -$%
" 2drop
create x6n
3 c,
30 c,
1 c,
1 c,
17 c,
32 c,
B c,
x10
create x6o 3 6 * allot
xt
create x6p
s" 
Basic Head
Head MKII 
Head MKIII
Head MKIV 
Lightning 
Basic Body
Tin Body  
Iron Body 
Steel Body
Fortress  
Basic Legs
Fast Legs 
Quick Legs
Agile Legs
Mustang   
Basic Gun 
Blaster   
Laser     
Phaser    
Death Ray 
Basic Tool
Rock Pick 
Rock Drill
Rock Borer
Laser Bit 
" 2drop
create x6q
a c, \ Basic Head
9 c, \ Head MKII 
a c, \ Head MKIII
9 c, \ Head MKIV 
9 c, \ Lightning 
a c, \ Basic Body
8 c, \ Tin Body  
9 c, \ Iron Body 
a c, \ Steel Body
8 c, \ Fortress  
a c, \ Basic Legs
9 c, \ Fast Legs 
a c, \ Quick Legs
a c, \ Agile Legs
7 c, \ Mustang   
9 c, \ Basic Gun 
7 c, \ Blaster   
5 c, \ Laser     
6 c, \ Phaser    
9 c, \ Death Ray 
a c, \ Basic Tool
9 c, \ Rock Pick 
a c, \ Rock Drill
a c, \ Rock Borer
9 c, \ Laser Bit 
create x6r
2A c,
C c,
30 c,
32 c,
F c,
create x6s
s" 
+$ Batt   
+$ HP     
+$ Dmg    
-$s Mine  
1s Mine   
+$% Crit  
-$% Lava  
-$s Drill 
1s Drill  
+$/s Batt 
+$/s HP   
Lava Heals
-50% Cost 
-50% Cost 
" 2drop
create x6t
7 c,
5 c,
6 c,
8 c,
7 c,
8 c,
8 c,
9 c,
8 c,
9 c,
7 c,
a c,
9 c,
9 c,
create x6u
30 c,
3 c,
1 c,
17 c,
17 c,
1 c,
B c,
32 c,
32 c,
30 c,
3 c,
3 c,
1 c,
17 c,
: x6v ( x y itemID -- )
xq
x6i
xr
b x4o
;
: x6w ( x y itemID bg_color -- )
[ v1 2c + ] literal  c!
dup [ 5 5 * ] literal < if \ 5*5=five item types * five quality levels
x1 x6v
dup
xq
x6j
xr \ x y itemID
rot dup
12 +
[ v1 21 + ] literal  c! -rot \ x y itemID
\ item title
over swap dup A * \ x y y itemID title_addr_off
[ x6p 3 + ] literal + swap \ x y y title_addr itemID
x6q + c@ rot \ x y title_addr title_len y
4 +
0 0 0
x6r [ v1 40 + ] literal  c@ + c@
x5b \ x y
\ item stats
F + \ x y
[ v1 41 + ] literal  c@ 0 do
\ ( msg msg_len y stat1 stat2 fg_color bg_color )
over 12 +
[ v1 21 + ] literal  c! dup \ x y y
[ x6s 3 + ]
literal [ v1 42 + ] literal  c@ a * + \ x y y text
x6t
[ v1 42 + ] literal  c@ + c@ rot \ x y text len y
[ v1 43 + ] literal  c@ 0 \ x y text len y stat_x 0
x6u
[ v1 42 + ] literal  c@ + c@ [ v1 2c + ] literal  c@ \ x y text len y stat_x 0 fg_color bg_color
2dup = if
nip 3 swap \ only if dark red on red
then
x5b
a + \ x y
[ v1 44 + ] literal  [ v1 42 + ] literal  4 move \ x y
loop
2drop
else
[ 5 5 * ] literal - 3 * \ x y ID
\ : DrawText ( msg msg_len y stat1 stat2 fg_color bg_color )
rot 2 + [ v1 21 + ] literal  c! \ y ID
[ x15 ]
x6o + dup @
swap 2 + c@ rot 2 + \ msg msg_len y
0 0 3F [ v1 2c + ] literal  c@
x5b
then
;
xy
: x6x ( -- )
\ stat boxes
50 16 50 2D 4 x4g
50 46 50 2D 4 x4g
\ item grid
0 \ index
6 0 do
5 0 do
A4 i 10 * + \ slot coordinates 
14 j 10 * +
2dup 18 x4o \ index slot_X slot_Y
rot dup x3w + c@ dup \ slot_X slot_Y index itemID itemID
20 <> if
j i \ slot_X slot_Y index itemID j i
[ v1 23 + ] literal  c@ = swap
[ v1 24 + ] literal  c@ = and if \ slot_X slot_Y index itemID
\ draw item in inventory
dup 50
46 rot
4
x6w \ slot_X slot_Y index itemID
\ selector on item in inventory
50
46
40 C
1b x4t
\ item equipped in that slot (type still in item_type)
[ v1 3d + ] literal  c@ x3v + c@
50
16 rot
4
x6w \ slot_X slot_Y index itemID
then \ slot_X slot_Y index itemID
swap >r x6v \ draw item in inventory grid
r> \ index
else
drop -rot 2drop \ index
then
1+ \ advance index
loop
loop drop
\ bottom grid border
[ 4000 A4 + 74 100 * + ]
literal 50 0 fill
\ right grid border
F4 14 1 61 0 x4g
\ item selector
A4 [ v1 23 + ] literal  c@ 10 * +
14 [ v1 24 + ] literal  c@ 10 * +
40 C
1b x4t
;
: x6y ( -- )
8 x4g
\ Robot
1B 15 a x4o
38 \ start Y for text				
7 0 do
[ x6m 3 + ] literal i 9 * +
over 9 swap
D [ v1 21 + ] literal  c!
x6k i 2* + @
dup 0= if
drop x3r @
else c@ then 0
x6n i + c@ 8
x5b
9 + \ advance y counter for text
loop drop
x6x
;
x11
: x6z ( x y width height color -- )
[ v1 2c + ] literal  c! 1- [ v1 2f + ] literal  c! 2 - [ v1 2e + ] literal  c! \ x y 
100 * + 4000 + \ screen_addr screen_addr
dup 1+ dup [ v1 2e + ] literal  c@ [ v1 2c + ] literal  c@ fill \ top border
[ v1 2f + ] literal  c@ 100 * +
[ v1 2e + ] literal  c@ [ v1 2c + ] literal  c@ fill \ bottom border
[ v1 2e + ] literal  c@ 1+ [ v1 2e + ] literal  c!
[ v1 2c + ] literal  c@ swap
[ v1 2f + ] literal  c@ 1+ 0 do
2dup c! \ left border
2dup [ v1 2e + ] literal  c@ + c! \ right border
100 +
loop 2drop
;
: x70 ( -- )
\ Gray border
1 1 [ 100 2 - ] literal
[ 8 8 + ] literal
2A x4g
1 [ 80 8 - ] literal
[ 100 2 - ] literal
[ 8 1 - ] literal
2A x4g
1 [ 8 8 1 + + ] literal
[ 8 1 - ] literal
[ 80 8 2 * - 8 - 1 - ]
literal 2A x4g
[ 100 8 - ] literal
[ 8 8 1 + + ] literal
[ 8 1 - ] literal
[ 80 8 2 * - 8 - 1 - ]
literal 2A x4g
\ Black single line border
0 0 100 80 0 x6z
8 8
[ 100 8 2 * - ] literal
[ 80 8 2 * - ] literal
0 x6z
\ diagonal lines
0 4000
8 1 do
\ top left
2dup i + i 100 * + c!
\ top right
2dup [ 100 1 - ] literal i - +
i 100 * + c!
\ bottom left
2dup i + [ 80 1- ] literal
i - 100 * + c!
\ bottom right
2dup [ 100 1 - ] literal i - +
[ 80 1- ] literal
i - 100 * + c!
loop 2drop
9 [ v1 21 + ] literal  c!
s" [C]haracter" 9 0 0 3F 8 x5b
[ 4C 1 - ] literal 9 1 8 20 x4g
[ v1 21 + ] literal  x7
s" S[k]ills" 9 0 0 3F 20 x5b
s" [R]esources" 9 0 0 3F 2 x5b
;
xz
create x71
4 c, 10 c, 1 c,
create x72
8 c, 35 c, 17 c,
create x73
1D c,
3B c,
59 c,
create x74
2E c,
3A c,
2B c,
create x75
s" 
Battery Saver$
Bounty Hunter$
Fast Digger$  
Lucky Driller$
Master Miner$ 
Lucky Crit$   
Crit Lord$    
Experienced$  
Instakill$    
Ghost$        
Free Lunch$   
Wise Rewards$ 
Big Discount$ 
Only the Best$
Crystalsmith$ 
" 2drop
\ too big to fit - 52 * 15 = at least 780
create x76 F 3 * allot
s" 20% chance that*mining won't*consume energy"
swap x76 ! x76 2 + c! \ interpret mode. cant waste word
s" 10% chance of*mineral when*you kill an*enemy"
swap x76 3 + ! x76 5 + c!
s" -2 Mine and*Drill time"
swap x76 6 + ! x76 8 + c!
s" 25% chance of*mineral when*mining rock"
swap x76 9 + ! x76 B + c!
s" Mine double*minerals"
swap x76 C + ! x76 E + c!
s" +20% chance of*critical hit"
swap x76 F + ! x76 11 + c!
s" Crit damage*raised from*150% to 200%"
swap x76 12 + ! x76 14 + c!
s" +10% bonus to*experience on*kill"
swap x76 15 + ! x76 17 + c!
s" 5% chance to*kill enemy in*one hit"
swap x76 18 + ! x76 1A + c!
s" Walk through*enemies"
swap x76 1B + ! x76 1D + c!
s" 20% chance that*crafting will*cost nothing"
swap x76 1E + ! x76 20 + c!
s" +5 random*mineral when*leveling up"
swap x76 21 + ! x76 23 + c!
s" -1 to cost of*items"
swap x76 24 + ! x76 26 + c!
s" 10% chance*that crafted*items will be*yellow quality"
swap x76 27 + ! x76 29 + c!
s" Pay with any*crystal"
swap x76 2A + ! x76 2C + c!
: x77 ( i -- )
0 [ v1 4e + ] literal  c!
[ v1 30 + ] literal  c@ if
0 [ v1 4e + ] literal  c!
\ i 0= i height c@ 1- = or if
dup 0= over [ v1 2f + ] literal  c@ 1- = or if
FFFF [ v1 4e + ] literal  c!
1 [ v1 4a + ] literal  c!
[ v1 2e + ] literal  c@ [ v1 4b + ] literal  c!
[ v1 30 + ] literal  c@ 2 = if
2 [ v1 4c + ] literal  c!
[ v1 2e + ] literal  c@ 1 - [ v1 4d + ] literal  c!
else
FF [ v1 4c + ] literal  c!
FF [ v1 4d + ] literal  c!
then
drop \ drop i
else
dup 1 = swap [ v1 2f + ] literal  c@ 2 - = or
[ v1 30 + ] literal  c@ 2 = and if
FFFF [ v1 4e + ] literal  c!
1 [ v1 4a + ] literal  c!
[ v1 2e + ] literal  c@ [ v1 4b + ] literal  c!
FF [ v1 4c + ] literal  c!
FF [ v1 4d + ] literal  c!
then
then
then ;
\ moved to main ram from skill menu rom
\ DictMainRAM
: x78
[ v1 4e + ] literal  c@ if
[ v1 31 + ] literal  c@
dup [ v1 4a + ] literal  c@ = swap
dup [ v1 4b + ] literal  c@ = swap
dup [ v1 4c + ] literal  c@ = swap
[ v1 4d + ] literal  c@ =
or or or invert \ false (ie no draw) if trans pixel
else
FFFF \ draw pixel
then
if
dup >r 80 and if \ screen_addr tile_addr pixel_data
[ v1 2c + ] literal 
else
[ v1 2d + ] literal 
then \ screen_addr tile_addr color
x4p \ screen_addr tile_addr
r>
else
rot 1+ -rot
then
1 lshift \ screen_addr tile_addr pixel_data
;
\ DictSkillsMenu	
: x79 ( x y color1 color2 tileID -- )
[ ' x77 ] literal [ v1 4f + ] literal  !
[ ' x78 ] literal [ v1 51 + ] literal  !
x4s
;
create x7a 4 c, 10 c, 1 c,
create x7b 8 c, 35 c, 17 c,
: x7c
98 1D
5C 57
10 x4g
3 0 do
9
x73 i + c@
8C 1E
x74 i + c@
x4g
5 0 do
( x y color1 color2 tileID -- )
B 1C i * +
20 1E j * +
2dup \ copy for selector
j 5 * i + dup [ v1 53 + ] literal  c!
dup x3x + c@ if
x7a j + c@
x7b j + c@
else
15 2A
then
rot 25 + x79
[ v1 25 + ] literal  c@ i =
[ v1 26 + ] literal  c@ j = and if
40 C
1d
x4t
\ Draw title
\ ( msg msg_len y stat1 stat2 fg_color bg_color )
x75 [ v1 53 + ] literal  c@ E * + 3 + \ msg
dup -1 begin \ msg msg 0
1+ swap dup c@ \ msg 1 msg char
[char] $ = swap 1+ -rot \ msg msg 1 t/f 
until
nip dup 6 * \ msg msg_len msg_len*6
5C swap - 2 /
98 + [ v1 21 + ] literal  c! \ msg msg_len
1F 0 0
3F x7b j + c@
x5b
\ Draw description
x76 [ v1 53 + ] literal  c@ 3 * + dup @ \ skill_texts msg
swap 2 + c@ \ msg msg_len
9A [ v1 21 + ] literal  c!
2B 0 0
3F 10
x5b
\ Check if can be upgraded
x3x [ v1 53 + ] literal  c@ + c@ 0= if
[ v1 25 + ] literal  c@ 0=
x3x [ v1 53 + ] literal  c@ 1- + c@ or if
9A [ v1 21 + ] literal  c!
s" [Enter]Upgrade" 6A
0 0 F 10
x5b
then
then
else
2drop
then
loop
loop ;
: x7d
20 x4g
B [ v1 21 + ] literal  c!
s" Points: $" 14
[ v1 1a + ] literal  c@ 0
3F 20
x5b
x7c
;
x10
\ moved above so can be used with DrawItemStats
\ create res_descriptions 3 6 * allot
s" Heals HP to*full"
swap x6o 0 + ! x6o 2 + c!
s" +1 HP"
swap x6o 3 + ! x6o 5 + c!
s" Recharges*battery to*full"
swap x6o 6 + ! x6o 8 + c!
s" +1 Batt"
swap x6o 9 + ! x6o B + c!
s" +10 Exp point"
swap x6o C + ! x6o E + c!
s" +1 Dmg"
swap x6o F + ! x6o 11 + c!
: x7e ( i -- )
0 [ v1 4e + ] literal  c!
[ v1 30 + ] literal  c@ if
0 [ v1 4e + ] literal  c!
\ i 0= i height c@ 1- = or if
dup 0= over [ v1 2f + ] literal  c@ 1- = or if
FFFF [ v1 4e + ] literal  c!
1 [ v1 4a + ] literal  c!
[ v1 2e + ] literal  c@ [ v1 4b + ] literal  c!
drop \ drop i
else
dup 1 = swap [ v1 2f + ] literal  c@ 2 - = or
[ v1 30 + ] literal  c@ 2 = and if
FFFF [ v1 4e + ] literal  c!
1 [ v1 4a + ] literal  c!
[ v1 2e + ] literal  c@ [ v1 4b + ] literal  c!
then
then
then ;
: x7f
[ v1 4e + ] literal  c@ if
[ v1 31 + ] literal  c@
dup [ v1 4a + ] literal  c@ = swap
[ v1 4b + ] literal  c@ =
or invert \ false (ie no draw) if trans pixel
else
FFFF \ draw pixel
then
if
dup >r 80 and if \ screen_addr tile_addr pixel_data
[ v1 2c + ] literal 
else
[ v1 2d + ] literal 
then \ screen_addr tile_addr color
x4p \ screen_addr tile_addr
r>
else
rot 1+ -rot
then
1 lshift \ screen_addr tile_addr pixel_data
;
: x7g ( x y itemID -- )
xq
x6i
xr
b x4o
;
create x7h 8 c, 35 c, 32 c, A c, 2A c, 2A c,
create x7i 1f c, 21 c, 23 c, 20 c, 22 c, 24 c,
: x7j
20 [ v1 29 + ] literal  c!
98 1D 5C
57 1
x4g
6 0 do
B i 17 * +
13 17
[ 2 13 5 * + ] literal
x7h i + c@
x4g
i 1+ \ tile_index 
5 0 do
20 [ v1 54 + ] literal  c!
j 4 < if
E j 17 * + over
15 i 13 * + swap
x7g
dup [ v1 54 + ] literal  c!
5 +
else
i 3 < if
E j 17 * +
15 i 13 * +
j 4 - 3 * i + x7i + c@
dup case
1f of
1
17
endof
20 of
1
17
endof
21 of
10
35
endof
22 of
10
35
endof
23 of
5
1F
endof
24 of
5
1F
endof
endcase
[ ' x7e ] literal [ v1 4f + ] literal  !
[ ' x7f ] literal [ v1 51 + ] literal  !
rot x4s
i 2* j 4 - + 19 + [ v1 54 + ] literal  c!
then
then
[ v1 27 + ] literal  c@ j =
[ v1 28 + ] literal  c@ i = and if
E j 17 * +
15 i 13 * +
40 C
1c
x4t
[ v1 54 + ] literal  c@ 20 <> if
[ v1 54 + ] literal  c@ dup
98 1D
rot 1
x6w
[ v1 29 + ] literal  c!
then
then
loop
drop
loop
[ v1 29 + ] literal  c@ 20 <> if
\ ( msg msg_len y stat1 stat2 fg_color bg_color )
9A [ v1 21 + ] literal  c!
s" Cost: $" 6B \ msg msg_len y
xq
[ v1 29 + ] literal  c@ x6h \ msg msg_len y cost cost_type
x57 + c@ 0 swap \ msg msg_len y cost 0 cost_color
xr
1 x5b
then
;
: x7k
2 x4g
98 13
5C A
0 x4g
\ : DrawText ( msg msg_len y stat1 stat2 fg_color bg_color )
AB [ v1 21 + ] literal  c!
s" $" 15 [ v1 17 + ] literal  c@ 0 17 0 x5b
C3 [ v1 21 + ] literal  c!
s" $" 15 [ v1 18 + ] literal  c@ 0 35 0 x5b
DB [ v1 21 + ] literal  c!
s" $" 15 [ v1 19 + ] literal  c@ 0 1F 0 x5b
xk
x7j
xk
;
xx
xt
: x7l
9 11 EE 66 \ used by all variants below
[ v1 2b + ] literal  c@ case
1 of
[ x13 ]
x13
x6y
endof
2 of
[ x14 ]
x14
x7d
endof
3 of
[ x15 ]
x15
x7k
endof
endcase
[ x12 ]
x12
;
: x7m
[ x16 ]
x16
x70
[ x12 ]
x12
;
: x7n
[ x13 ]
x13
x6x
[ x12 ]
x12
;
: x7o
[ x14 ]
x14
x7c
[ x12 ]
x12
;
: x7p
[ x15 ]
x15
x7j
[ x12 ]
x12
;
\ General game words
xu
\ Run only once when game starts
: x7q
0 [ v1 23 + ] literal  c!
0 [ v1 24 + ] literal  c!
0 [ v1 25 + ] literal  c!
0 [ v1 26 + ] literal  c!
0 [ v1 27 + ] literal  c!
0 [ v1 28 + ] literal  c!
0 [ v1 2b + ] literal  c!
;
\ When game is initialized and when new level begins
: x7r ( -- )
0 [ v1 0 + ] literal  c!
0 [ v1 1 + ] literal  c!
1 [ v1 2 + ] literal  c!
1 [ v1 3 + ] literal  c!
0 [ v1 20 + ] literal  c!
x3r @ x3q !
[ v1 7 + ] literal  c@ [ v1 6 + ] literal  c!
4 [ v1 1b + ] literal  c!
4 [ v1 1c + ] literal  c!
\ UpdateTarget
;
: x7s ( -- )
\ should only be called in KeyHandler, so ROM banked and game ROM enabled
x13
2 [ v1 5 + ] literal  c@ + [ v1 4 + ] literal  c!
3 [ v1 8 + ] literal  c@ + [ v1 7 + ] literal  c!
[ v1 a + ] literal  c@ [ v1 9 + ] literal  c!
8 [ v1 b + ] literal  c!
B [ v1 c + ] literal  c!
1 [ v1 e + ] literal  c!
5 [ v1 f + ] literal  c!
0 [ v1 10 + ] literal  c!
0 [ v1 d + ] literal  c!
4 x3s ! \ word
4 [ v1 11 + ] literal  c!
2 [ v1 12 + ] literal  c!
2 [ v1 13 + ] literal  c!
0 [ v1 48 + ] literal  c!
0 [ v1 49 + ] literal  c!
5 0 \ 5 equipped slots 
do
x3v i + c@ \ itemID
x6j
[ v1 41 + ] literal  c@
0 do
[ v1 42 + ] literal  i 2* + dup c@ \ stat1_ptr stat1ID
swap 1+ c@ swap dup 2* \ stat1_x stat1ID stat1ID*2
[ x13 ]
x6l
[ x12 ]
+ @ dup \ stat1_x stat1ID stat_ptr stat_ptr						
0 <> if \ stat1_X stat1ID stat_ptr
nip dup c@ rot + swap c! \ (empty)
else \ stat1_X stat1ID stat_ptr
drop \ stat1_X stat1ID
case \ stat1_X
3 of
[ v1 b + ] literal  c@ swap \ stat1_X mine_speed
- [ v1 b + ] literal  c! \ (empty)
endof
4 of
1 [ v1 48 + ] literal  c!
drop
endof
7 of
[ v1 c + ] literal  c@ swap \ stat1_X mine_speed
- [ v1 c + ] literal  c! \ (empty)
endof
8 of
1 [ v1 49 + ] literal  c!
drop
endof
b of
-1 x3s !
drop
endof
c of
2 [ v1 11 + ] literal  c!
drop
endof
d of
1 [ v1 12 + ] literal  c!
drop
endof
\ default
endcase
then
loop
loop
x3x 2 + c@ if
[ v1 b + ] literal  dup c@ 2 - swap c!
[ v1 c + ] literal  dup c@ 2 - swap c!
then
[ v1 48 + ] literal  c@ if
1 [ v1 b + ] literal  c!
then
[ v1 49 + ] literal  c@ if
1 [ v1 c + ] literal  c!
then
x3x 5 + c@ if
[ v1 f + ] literal  dup c@ 14 + swap c!
then
x3s @ -1 <> if \ case of lava heals
[ v1 d + ] literal  c@ 19 = if \ 0x19 = 25
3 x3s !
else
[ v1 d + ] literal  c@ 32 = if \ 0x32 = 50
2 x3s !
then
then
then
[ v1 4 + ] literal  c@ x3r !
x3q @ x3r @ > if
x3r @ x3q !
then
[ v1 6 + ] literal  c@ [ v1 7 + ] literal  c@ > if
[ v1 7 + ] literal  c@ [ v1 6 + ] literal  c!
then
\ restore banking
x12
;
: x7t
0 [ v1 14 + ] literal  c!
28 [ v1 15 + ] literal  c!
0 [ v1 5 + ] literal  c!
0 [ v1 8 + ] literal  c!
0 [ v1 a + ] literal  c!
1 [ v1 16 + ] literal  c!
0 [ v1 17 + ] literal  c!
0 [ v1 18 + ] literal  c!
0 [ v1 19 + ] literal  c!
0 [ v1 1a + ] literal  c!
\ false hero_activity c!
0 x3v 0 + c!
5 x3v 1 + c!
a x3v 2 + c!
f x3v 3 + c!
14 x3v 4 + c!
x3w 1E 20 fill
x3x f 0 fill
\ Head_MKII hero_inventory c!
\ Mustang hero_inventory 1+ c!
\ 19 0 do
\ 	i hero_inventory i + c!
\ loop
;
: x7u ( exp -- )
[ v1 14 + ] literal  c@ + dup [ v1 14 + ] literal  c!
[ v1 15 + ] literal  c@ < invert if
[ v1 14 + ] literal  c@ [ v1 15 + ] literal  c@ -
[ v1 14 + ] literal  c!
[ v1 15 + ] literal  c@ A +
[ v1 15 + ] literal  c!
[ v1 16 + ] literal  x7
[ v1 1a + ] literal  x7
x3r @ x3q !
[ v1 7 + ] literal  c@ [ v1 6 + ] literal  c!
x3x b + c@ if
3 x4y case
0 of [ v1 18 + ] literal  endof
1 of [ v1 17 + ] literal  endof
2 of [ v1 19 + ] literal  endof
endcase
dup c@ 5 + swap c!
then
then
;
\ saves 167 bytes
: x7v ( -- )
dup x3v 0 + c@ x4m
dup x3v 1 + c@ x4m
dup x3v 2 + c@ x4m
dup x3v 3 + c@ x4m
x3v 4 + c@ x4m ;
: x7w ( -- )
12 9 x4l
9 x7v
13 a x4l
a x7v ;
xt
\ Input handling
xu
: x7x ( x_offset y_offset -- crystalID monsterID free? )
[ v1 3 + ] literal  c@ + swap [ v1 2 + ] literal  c@ + \ calculate offset
2dup 0 5 within
swap 0 4 within
and if \ tile to check within bounds?
[ v1 0 + ] literal  c@ +
swap [ v1 1 + ] literal  c@ + 28 * + \ calculate offset into maps
dup x4a + c@ \ get map value
dup FF <> if \ if there's a crystal there
dup x47 c@ if \ and the crystal is active
nip FF FFFF exit \ return crystalID NO_MONSTER true
then
then
drop FF \ drop crystalID since not needed
swap \ crystalID map_offset
dup x4b + c@
dup FF <>
if
dup x42 c@
if
x3x 9 + c@ 0= if
nip 0 exit \ return crystalID monsterID false
then
then
then \ otherwise keep monsterID
drop FF
swap \ crystalID monsterID map_offset
x49 + c@ 4 <> \ return true or false
else \ tiles out of bounds
2drop FF FF 0
then
;
\ flags to be handled on return to main RAM
: x7y
x3q @ x3r @ > if
x3r @ x3q !
else
x3q @ 0> invert if
0 x3q !
3 or
80 or
then
then
;
: x7z
[ v1 1 + ] literal  c@ [ v1 3 + ] literal  c@ + 28 *
[ v1 0 + ] literal  c@ [ v1 2 + ] literal  c@ + + x49 + c@
dup 5 = if
x3q @ x3s @ - x3q !
drop x7y 2 or
else
6 = if
x51
x55
x56
x7r
3 or
then
then
;
: x80 ( flag_word -- flag_word )
\ DO_NONE \ return value with no flags set
xb
dup case
[char] m of
1 [ v1 2b + ] literal  c!
endof
[char] c of
1 [ v1 2b + ] literal  c!
endof
[char] k of
2 [ v1 2b + ] literal  c!
endof
[char] r of
3 [ v1 2b + ] literal  c!
endof
[char] q of
drop 100 or exit
endof
endcase
[ v1 2b + ] literal  c@ 0 <> if
drop \ key
8 or
4 or
exit
then
[ v1 20 + ] literal  c@ 0= if
0 [ v1 57 + ] literal  c!
case
[char] w of
[ v1 1c + ] literal  c@ 1 <> if
1 [ v1 1c + ] literal  c!
3 or
else
0 -1
x7x if
[ v1 3 + ] literal  c@ 1 >
[ v1 1 + ] literal  c@ 0=
or if
[ v1 3 + ] literal 
else
[ v1 1 + ] literal 
then
x8
2drop \ drop crystalID and monsterID
x7z
3 or
else 2drop \ drop crystalID and monsterID
then
then
endof
[char] s of
[ v1 1c + ] literal  c@ 2 <> if
2 [ v1 1c + ] literal  c!
3 or
else
0 1
x7x if
[ v1 3 + ] literal  c@ [ 4 2 - ]
literal <
[ v1 1 + ] literal  c@
[ 14 4 - ]
literal = or if
[ v1 3 + ] literal 
else
[ v1 1 + ] literal 
then
x7
2drop
x7z
3 or
else 2drop
then
then
endof
[char] a of
3 [ v1 1c + ] literal  c@ <> if
3 [ v1 1c + ] literal  c!
3 [ v1 1b + ] literal  c!
3 or
else
-1 0
x7x if
[ v1 2 + ] literal  c@ 1 >
[ v1 0 + ] literal  c@ 0=
or if
[ v1 2 + ] literal 
else
[ v1 0 + ] literal 
then
x8
2drop
x7z
3 or
else 2drop
then
then
endof
[char] d of
4 [ v1 1c + ] literal  c@ <> if
4 [ v1 1c + ] literal  c!
4 [ v1 1b + ] literal  c!
3 or
else
1 0
x7x if
[ v1 2 + ] literal  c@ [ 5 2 - ]
literal <
[ v1 0 + ] literal  c@
[ 28 5 - ]
literal = or if
[ v1 2 + ] literal 
else
[ v1 0 + ] literal 
then
x7
2drop
x7z
3 or
else 2drop
then
then
endof
20 of
[ v1 1d + ] literal  c@ case
4 of
[ v1 b + ] literal  c@ x3u !
0 x3t !
FFFF [ v1 20 + ] literal  c!
\ DO_DRAW_FRAME_LEGEND or
2 or
endof
1 of
[ v1 c + ] literal  c@ x3u !
0 x3t !
FFFF [ v1 20 + ] literal  c!
\ DO_DRAW_FRAME_LEGEND or
2 or
endof
3 of
1E x3u !
1E x3t !
FFFF [ v1 20 + ] literal  c!
\ DO_DRAW_FRAME_LEGEND or
2 or
endof
endcase
endof
endcase
else
drop \ key not needed
then
;
: x87 ( itemID -- bestitemID )
x3x d + c@ if
A x4y 0= if
x6g c@ case
0 of 4 endof
1 of 9 endof
2 of e endof
3 of 13 endof
4 of 18 endof
endcase
then
then
;
: x88
[ v1 29 + ] literal  c@ case
19 of
x3r @ x3q !
endof
1a of
[ v1 5 + ] literal  x7
x7s
x3r @ x3q !
endof
1b of
[ v1 7 + ] literal  c@ [ v1 6 + ] literal  c!
endof
1c of
[ v1 8 + ] literal  x7
x7s
[ v1 7 + ] literal  c@ [ v1 6 + ] literal  c!
endof
1d of
A x7u
endof
1e of
[ v1 a + ] literal  x7
x7s
endof
\ default
1E 0 do
x3w i + c@ 20 = if
[ v1 29 + ] literal  c@
x87
x3w i + c!
leave
then
loop
endcase
;
: x89
[ v1 17 + ] literal  c@ [ v1 18 + ] literal  c@ [ v1 19 + ] literal  c@ + +
[ v1 29 + ] literal  c@ x6h drop \ cost (cost_color dropped)
x3x c + c@ if
[ v1 27 + ] literal  c@ 4 < if
1-
then
then
dup [ v1 58 + ] literal  c!
< invert if
x3x a + c@ 0=
5 x4y 0<> or if
begin
[ v1 58 + ] literal  c@ 0>
[ v1 17 + ] literal  c@ 0> and
while
[ v1 58 + ] literal  x8
[ v1 17 + ] literal  x8
repeat
begin
[ v1 58 + ] literal  c@ 0>
[ v1 18 + ] literal  c@ 0> and
while
[ v1 58 + ] literal  x8
[ v1 18 + ] literal  x8
repeat
begin
[ v1 58 + ] literal  c@ 0>
[ v1 19 + ] literal  c@ 0> and
while
[ v1 58 + ] literal  x8
[ v1 19 + ] literal  x8
repeat
then
x88
4 or
then
;
\ ran out of stack space at compile time so moved here :(((
: x8a
[ v1 29 + ] literal  c@ x6h \ cost cost_color
x3x c + c@ if
[ v1 27 + ] literal  c@ 4 < if
swap 1- swap
then
then
case
0 of [ v1 17 + ] literal  endof
1 of [ v1 18 + ] literal  endof
2 of [ v1 19 + ] literal  endof
endcase \ cost cost_ptr
2dup c@ 2dup = -rot < or if
x3x a + c@ 0= if
dup c@ rot - swap c!
else
5 x4y 0= if
2drop
else
dup c@ rot - swap c!
then
then
x88
4 or
else
2drop
then
;
: x8b ( flag_word -- flag_word )
\ DO_NONE 				\ return value with no flags set	
\ common to all three menus
xb swap over \ key ret_val key
case
[char] m of
0 [ v1 2b + ] literal  c!
3 or
endof
[char] c of
1 [ v1 2b + ] literal  c!
4 or
endof
[char] k of
2 [ v1 2b + ] literal  c!
4 or
endof
[char] r of
3 [ v1 2b + ] literal  c!
4 or
endof
[char] q of
100 or
endof
endcase
\ menu specific keys
dup 0 <> if \ key ret_val
nip \ ret_val
else
swap \ ret_val key
[ v1 2b + ] literal  c@ case
1 of
case
[char] a of
[ v1 23 + ] literal  c@
0= if
[ v1 24 + ] literal  c@
0<> if
[ v1 24 + ] literal  x8
[ 5 1- ] literal
[ v1 23 + ] literal  c!
10 or
then
else
[ v1 23 + ] literal  x8
10 or
then
endof
[char] d of
[ v1 23 + ] literal  c@
[ 5 1- ] literal
= if
[ v1 24 + ] literal  c@
[ 6 1- ] literal
<> if
[ v1 24 + ] literal  x7
0 [ v1 23 + ] literal  c!
10 or
then
else
[ v1 23 + ] literal  x7
10 or
then
endof
[char] w of
[ v1 24 + ] literal  c@
0<> if
[ v1 24 + ] literal  x8
10 or
then
endof
[char] s of
[ v1 24 + ] literal  c@
[ 6 1- ] literal
<> if
[ v1 24 + ] literal  x7
10 or
then
endof
D of
[ v1 24 + ] literal  c@
5 *
[ v1 23 + ] literal  c@ + \ ret_val selector_index
x3w + dup c@ \ ret_val selector_index itemID
dup 20 = if
2drop \ ret_val
else
dup x6g \ ret_val selector_index itemID item_stat_addr 		
dup c@ 20 = if
x0 \ ret_val
else \ ret_val selector_index itemID item_stat_addr 
c@ x3v + \ ret_val selector_index itemID slot_addr
dup c@ \ ret_val selector_index itemID slot_addr slot_item
-rot c! swap c! \ ret_val slot_item selector_index
x7w
x7s
4 or \ ret_val
then
then
endof
endcase
endof
2 of
case
[char] w of
[ v1 26 + ] literal  c@ 0> if
[ v1 26 + ] literal  x8
20 or
then
endof
[char] s of
[ v1 26 + ] literal  c@ 2 < if
[ v1 26 + ] literal  x7
20 or
then
endof
[char] a of
[ v1 25 + ] literal  c@ 0> if
[ v1 25 + ] literal  x8
20 or
then
endof
[char] d of
[ v1 25 + ] literal  c@ 4 < if
[ v1 25 + ] literal  x7
20 or
then
endof
D of
[ v1 1a + ] literal  c@ 0<> if
[ v1 26 + ] literal  c@ 5 * [ v1 25 + ] literal  c@ +
dup [ v1 53 + ] literal  c!
x3x + c@ 0= if
[ v1 25 + ] literal  c@ 0=
x3x [ v1 53 + ] literal  c@ 1- + c@ or if
FF x3x [ v1 53 + ] literal  c@ + c!
[ v1 1a + ] literal  x8
x7s
4 or
then
then
then
endof
endcase
endof
3 of
case
[char] w of
[ v1 28 + ] literal  c@ 0> if
[ v1 28 + ] literal  x8
40 or
then
endof
[char] s of
[ v1 28 + ] literal  c@ 4 < if
[ v1 28 + ] literal  x7
40 or
then
endof
[char] a of
[ v1 27 + ] literal  c@ 0> if
[ v1 27 + ] literal  x8
40 or
then
endof
[char] d of
[ v1 27 + ] literal  c@ 5 < if
[ v1 27 + ] literal  x7
40 or
then
endof
D of
[ v1 29 + ] literal  c@ 20 <> if
x3x e + c@ if
x89
else
x8a
then
then
endof
endcase
endof
endcase
then
;
\ Game logic
: x8c ( flag_word -- flag_word )
FFE6 c@ [ v1 2a + ] literal  c@ <> if
FFE6 c@ [ v1 2a + ] literal  c!
[ v1 2b + ] literal  c@ 0 = if
\ main body
x3q @ [ v1 55 + ] literal  c!
[ v1 6 + ] literal  c@ [ v1 56 + ] literal  c!
x3q @ [ v1 10 + ] literal  c@ + x3q !
[ v1 6 + ] literal  c@ [ v1 e + ] literal  c@ + [ v1 6 + ] literal  c!
[ v1 20 + ] literal  c@ if
[ v1 1d + ] literal  c@ case
4 of
[ v1 12 + ] literal  c@ [ v1 6 + ] literal  c@ > invert if
x3x 0 + c@ 0=
5 x4y 0<> or if
[ v1 6 + ] literal  c@ [ v1 12 + ] literal  c@ - [ v1 6 + ] literal  c!
then
x3t x9
2 or
x3t @ x3u @ = if
[ v1 1e + ] literal  c@ x48 c@ case
0 of [ v1 17 + ] literal  endof
1 of [ v1 18 + ] literal  endof
2 of [ v1 19 + ] literal  endof
endcase
x3x 4 + c@ if
4 x7u 2
else
2 x7u 1
then
over c@ + swap c!
0 [ v1 1e + ] literal  c@ x47 c!
0 [ v1 1d + ] literal  c!
0 [ v1 20 + ] literal  c!
1 or
then
then
endof
1 of
[ v1 13 + ] literal  c@ [ v1 6 + ] literal  c@ > invert if
[ v1 6 + ] literal  c@ [ v1 13 + ] literal  c@ - [ v1 6 + ] literal  c!
x3t x9
2 or
x3t @ x3u @ = if
0
[ v1 1f + ] literal  c@ 28 *
[ v1 1e + ] literal  c@ + x49 + c!
1 x7u
0 [ v1 1d + ] literal  c!
0 [ v1 20 + ] literal  c!
x3x 3 + c@ if
4 x4y 0= if
3 x4y case
0 of [ v1 18 + ] literal  endof
1 of [ v1 17 + ] literal  endof
2 of [ v1 19 + ] literal  endof
endcase
x7
2 x7u
then
then
1 or
then
then
endof
3 of
[ v1 11 + ] literal  c@ [ v1 6 + ] literal  c@ > invert if
[ v1 6 + ] literal  c@ [ v1 11 + ] literal  c@ - [ v1 6 + ] literal  c!
x3x 8 + c@ if
14 x4y 0= if
0 x3t !
then
then
x3t @ 0<> if
x3t @ [ v1 9 + ] literal  c@ - x3t !
64 x4y [ v1 f + ] literal  c@ < if
x3t @ [ v1 9 + ] literal  c@
x3x 6 + c@ 0= if
1 rshift
then
- x3t !
then
then
x3t @ 0> invert if
0 [ v1 1e + ] literal  c@ x42 c!
x3x 7 + c@
if B else A then x7u
0 [ v1 1d + ] literal  c!
0 [ v1 20 + ] literal  c!
x3x 1 + c@ if
A x4y 0= if
3 x4y case
0 of [ v1 17 + ] literal  endof
1 of [ v1 18 + ] literal  endof
2 of [ v1 19 + ] literal  endof
endcase
x7
then
then
1 or
then
then
x4z if
x3q @ 2 - x3q !
then
endof
endcase
then
[ v1 6 + ] literal  c@ [ v1 7 + ] literal  c@ > if
[ v1 7 + ] literal  c@ [ v1 6 + ] literal  c!
then
[ v1 6 + ] literal  c@ [ v1 56 + ] literal  c@ <> if
2 or
then
x7y
x3q @ [ v1 55 + ] literal  c@ <> if
2 or
then
x7z
then
then
;
\ put here since exta room
x11
: x8d
64 38 37 F 0 x4g
( msg msg_len y stat1 stat2 fg_color bg_color )
68 [ v1 21 + ] literal  c!
s" You died" 3C 0 0 3F 0 x5b
begin again
;
xx
xt
\ Main code
create x8e
08 c, 48 c, DA c, 5A c, \ PHP PHA PHX PHY
AD c, E1 c, FF c, 48 c, \ push FFE1
AD c, E2 c, FF c, 48 c, \ push FFE2
AD c, E3 c, FF c, 48 c, \ push FFE3
00 c, 00 c, \ BRK
A2 c, F0 c, 9A c, \ LDX #$F0 TXS
68 c, 8D c, E3 c, FF c, \ restore FFE3
68 c, 8D c, E2 c, FF c, \ restore FFE2
68 c, 8D c, E1 c, FF c, \ restore FFE1
7A c, FA c, 68 c, 28 c, \ PLY PLX PLA PLP
60 c, \ RTS
: x8f
x8e execute
0 98 !
;
: run ( -- )
1 98 ! \ disable print to screen (still seen on debug though)
xq
x7q
x4w
x51
x55
x56
x7t
x7s
x7w
x7r
xr
x5g
x5j
begin
xq
0 \ return value for both TickHandler and KeyHandlers
x8c \ word itself checks if seconds elapsed yet
dup 80 and 0= if
[ v1 2b + ] literal  c@ 0 = if
x80
else
x8b
then
then
xr
dup 1 and if x5g then
dup 2 and if x5j then
dup 8 and if x7m then
dup 4 and if x7l then
dup 10 and if x7n then
dup 20 and if x7o then
dup 40 and if x7p then
dup 80 and if
[ x16 ]
x16
x8d
x12
then
100 and if 0 98 ! exit then
again
;
xr
\ startup values (immediate to save code space)
FFE0 94 @ 9A @ \ Bank 4 common menu
FFE0 92 @ 9A @ \ Bank 4 res menu
FFE0 90 @ 9A @ \ Bank 4 skill menu
FFE0 8E @ 9A @ \ Bank 4 character menu
FFE0 8C @ 9A @ \ Bank 4 game
C000 8A @ 4000 \ Bank 2
\ 4000 54 - here 400					\ Main RAM (54 is pad size)
4000 8 - here 400 \ Main RAM (100 is space after cp)
9A @ C000 - \ Tali Forth 2
x16
x18
x8f
run
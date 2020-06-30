title makebin
"C:\Program Files (x86)\Ophis\ophis" -m listing.map -l listing.lst -o RobotGame.bin -c platform\platform-RobotGame.asm

python bin2hex.py 0xC000 RobotGame.bin RobotGame.hex
REM echo :00000001FF >> RobotGame.hex

copy RobotGame.hex "..\..\projects\6502 emu\main\prog.hex" > nul


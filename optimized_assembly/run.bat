@echo off
title Assembly Optimizer
echo.
for /f %%i in ('time /T') do set datetime=%%i
echo [%datetime%] Assembling...
"C:\Program Files\nasm\nasm" --no-line -e -Z main.err -l main.lst nasm.asm > main.i
type main.err
echo.
del processed.asm
python "..\..\projects\6502 Optimizer\NASM based\main.py" main.i
type mem_template.asm >> processed.asm
echo.
echo Re-assembling...
..\..\AS\bin\asw processed.asm -P -G -U -L -g -q -cpu 65C02 > asm.txt
python "remove escape.py" asm.txt
echo Generating hex file...
..\..\AS\bin\p2hex processed.p -F Intel -l 32 -r $0000-$FFFF > hex.txt
echo Copying...
copy processed.lst "..\..\projects\6502 emu\main\listing.lst" > nul
copy processed.hex "..\..\projects\6502 emu\main\prog.hex" > nul
break > "..\..\projects\6502 emu\main\keys.txt"
echo.
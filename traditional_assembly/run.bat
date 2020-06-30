@echo off
title Macroassembler AS
echo.
for /f %%i in ('time /T') do set datetime=%%i
echo [%datetime%]
echo.
echo Assembling...
..\..\..\AS\bin\asw main.asm -L -U -g -q -cpu 65C02 > asm.txt
python "remove escape.py" asm.txt
echo.
echo Filtering listing...
python "listing filter.py" main.lst filtered.lst
echo Generating hex file...
..\..\..\AS\bin\p2hex main.p -F Intel -l 32 -r $0000-$FFFF > hex.txt
echo Copying...
copy filtered.lst "..\..\..\projects\6502 emu\main\listing.lst" > nul
copy main.hex "..\..\..\projects\6502 emu\main\prog.hex" > nul
break > "..\..\..\projects\6502 emu\main\keys.txt"
echo.
echo Done
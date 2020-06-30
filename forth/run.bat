@echo off
title TaliForth2
echo.
time /T
copy "..\reduced 3.2\RobotGame.hex" "..\..\projects\6502 emu\main\prog.hex"

if "%1" == "none" (
	echo hex 0 98 c! > "..\..\projects\6502 emu\main\keys.txt"
) else (
	@echo on
	python "%~dp1\strip.py" "%1" "%~dp1\stripped.f"
	python "%~dp1\crunch.py" "%~dp1\stripped.f" "%~dp1\crunched.f" "%~dp1\debug.txt"
	copy "%~dp1\crunched.f" "..\..\projects\6502 emu\main\keys.txt"
)


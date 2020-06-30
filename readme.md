![Screenshot of Robot Game](/images/RobotGame.png)

## Overview
Robot Game is a project to compare the performance of several programming languages for the 65C02 processor. The four languages being compared are:

- Traditional assembly
- Assembly optimized with my [65C02 Assembly Optimizer](https://github.com/JoeyShepard/65C02_Assembly_Optimizer)
- C compiled with the [CC65 C compiler](https://cc65.github.io/)
- Forth compiled with a modified version of [Tali Forth 2](https://github.com/scotws/TaliForth2)

Each version of the game runs on a JavaScript-based [65C02 simulator](https://github.com/JoeyShepard/65C02_Simulator) in the browser:

[Play Robot Game - Traditional assembly](http://calc6502.com/RobotGame/TradAsm/main.html)\
[Play Robot Game - Optimized assembly](http://calc6502.com/RobotGame/OptAsm/main.html)\
[Play Robot Game - CC65 version](http://calc6502.com/RobotGame/CC65/main.html)\
[Play Robot Game - Tali Forth 2 version](http://calc6502.com/RobotGame/TaliForth2/main.html)

## Results
The results of the comparison and more information about the project can be found on [my website](http://calc6502.com/RobotGame/summary.html).

## Directories
- python - The original version of the game in Python. Requires Python 3 and PyGame 1.9.6.
- asset_extraction - A modified version of the original game in Python that outputs game data in text format for porting to other versions.
- traditional_assembly - Port of the game from Python to 65C02 assembly. Assembled with [Macroassembler AS 1.42](http://john.ccac.rwth-aachen.de:8000/as/).
- optimized_assembly - Port of the game from Python to 65C02 assembly optimized with my [65C02 Assembly Optimizer](https://github.com/JoeyShepard/65C02_Assembly_Optimizer). Relies on [NASM](https://www.nasm.us/) for macro expansion before optimizing and [Macroassembler AS 1.42](http://john.ccac.rwth-aachen.de:8000/as/) to assemble after optmizing.
- c - Port of the game from Python to C. Compiled with [CC65 C compiler](https://cc65.github.io/).
- forth - Port of the game from Python to [Tali Forth 2](https://github.com/scotws/TaliForth2). This folder also contains a reduced version of Tali Forth 2 that is small enough to fit in the memory of the simulator.
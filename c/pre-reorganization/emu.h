//Constants
//=========

//Hardware
unsigned char * const RAM_BANK1 = 			(unsigned char * const)0xFFE0;		//0x200- 0x3FFF
unsigned char * const RAM_BANK2 = 			(unsigned char * const)0xFFE1;		//0x4000-0x7FFF
unsigned char * const RAM_BANK3 = 			(unsigned char * const)0xFFE2;		//0x8000-0xBFFF
unsigned char * const ROM_BANK =			(unsigned char * const)0xFFE3;		//0xC000-0xFFFF
volatile unsigned char * const KB_INPUT =	(unsigned char * const)0xFFE4;
volatile unsigned char * const TIMER_MS4 =	(unsigned char * const)0xFFE5;		//Current milliseconds divided by 4
volatile unsigned char * const TIMER_S=		(unsigned char * const)0xFFE6;		//Current seconds
unsigned char * const DEBUG =				(unsigned char * const)0xFFE7;
unsigned char * const DEBUG_HEX = 			(unsigned char * const)0xFFE8;
volatile unsigned char * const DEBUG_DEC = 	(unsigned char * const)0xFFE9;
unsigned char * const DEBUG_DEC16 = 		(unsigned char * const)0xFFEA;
unsigned char * const DEBUG_TIMING =		(unsigned char * const)0xFFEB;
unsigned char * const LOG_ON =				(unsigned char * const)0xFFEC; 		//Turn instruction logging on
unsigned char * const LOG_OFF = 			(unsigned char * const)0xFFED; 		//Turn instruction logging off
unsigned char * const LOG_SEND =			(unsigned char * const)0xFFEE; 		//Send instruction log

//RAM/ROM bank indexes
#define BANK_GEN_RAM1 0;
#define BANK_GEN_RAM2 1;
#define BANK_GEN_RAM3 2;
#define BANK_GEN_RAM4 3;
#define BANK_GFX_RAM1 4;
#define BANK_GFX_RAM2 5;
#define BANK_GEN_ROM 14;


//RAM/ROM bank addresses
unsigned char * const RB1 = 	(unsigned char * const)0x0200;		//Address of RAM bank 1
unsigned char * const RB2 = 	(unsigned char * const)0x4000;		//Address of RAM bank 2
unsigned char * const RB3 = 	(unsigned char * const)0x8000;		//Address of RAM bank 3
unsigned char * const ROMB = 	(unsigned char * const)0xC000;		//Address of ROM bank


//Colors
#define R0 0
#define R1 1
#define R2 2
#define R3 3
#define G0 0
#define G1 4
#define G2 8
#define G3 12
#define B0 0
#define B1 16
#define B2 32
#define B3 48


//Won't compile. Defined in game constants anyway
/*
const unsigned char COLOR_RED =			R3|G0|B0;
const unsigned char COLOR_GREEN =		R0|G3|B0;
const unsigned char COLOR_BLUE =		R0|G0|B3;
const unsigned char COLOR_BLACK =		R0|G0|B0;
const unsigned char COLOR_WHITE =		R3|G3|B3;
const unsigned char COLOR_GRAY1 =		R1|G1|B1;
const unsigned char COLOR_GRAY2 =		R2|G2|B2;
//const unsigned char COLOR_CUST_GRAY =	64;
*/

//Text mode
#define TEXT_COLUMNS 			42
#define TEXT_ROWS 				16
//Text mode draw mode flags
#define TEXT_MODE_OPAQUE		0
#define TEXT_MODE_TRANSPARENT	1

//Character codes
#define CHAR_ENTER =			13

//Bank functions
unsigned char bank_3_copy, bank_3_save;

int EnableBankROM()
{
	*RAM_BANK3=BANK_GEN_RAM3;
	bank_3_copy=BANK_GEN_RAM3;
	return 0;
}

int EnableGfxRAM()
{
	*RAM_BANK3=BANK_GFX_RAM2;
	bank_3_copy=BANK_GFX_RAM2;
	return 0;
}

int PushBank3()
{
	bank_3_save=bank_3_copy;
	return 0;
}

int PopBank3()
{
	*RAM_BANK3=bank_3_save;
	bank_3_copy=bank_3_save;
	return 0;
}


//Debug functions
int DebugText(const char *msg)
{
	while(*msg) *DEBUG=*msg++;
	return 0;
}

int DebugDec(unsigned char byte)
{
	*DEBUG_DEC=byte;
	return 0;
}

int DebugHex(unsigned char byte)
{
	*DEBUG_HEX=byte;
	return 0;
}


int DebugNL()
{
	DebugText("\\n");
	return 0;
}

int DebugPtr(const unsigned char *ptr)
{
	*DEBUG_HEX=(unsigned char)(((unsigned int)ptr)>>8);
	*DEBUG_HEX=(unsigned char)(((unsigned int)ptr)&0xFF);
	return 0;
}

 




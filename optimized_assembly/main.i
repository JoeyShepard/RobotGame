%line 5+1 nasm.asm

%line 8+1 nasm.asm


%line 78+1 nasm.asm

%line 96+1 nasm.asm

%line 102+1 nasm.asm

%line 107+1 nasm.asm


%line 1+1 main.asm




 PAGE 0
DEBUG_MODE set "off"


%line 1+1 macros.asm


false set 0
true set $FF





%line 15+1 macros.asm

%line 21+1 macros.asm

%line 27+1 macros.asm

%line 9+1 main.asm

%line 1+1 optimizer.asm









LOCALS_BEGIN set $00
LOCALS_END set $FF




%line 20+1 optimizer.asm

%line 40+1 optimizer.asm

%line 43+1 optimizer.asm




%line 50+1 optimizer.asm

%line 60+1 optimizer.asm

%line 71+1 optimizer.asm

%line 80+1 optimizer.asm

%line 109+1 optimizer.asm

%line 138+1 optimizer.asm

%line 167+1 optimizer.asm




%line 248+1 optimizer.asm

%line 419+1 optimizer.asm

%line 423+1 optimizer.asm

%line 427+1 optimizer.asm

%line 628+1 optimizer.asm

%line 635+1 optimizer.asm

%line 642+1 optimizer.asm

%line 652+1 optimizer.asm

%line 678+1 optimizer.asm

%line 701+1 optimizer.asm

%line 732+1 optimizer.asm

%line 744+1 optimizer.asm

%line 777+1 optimizer.asm

%line 816+1 optimizer.asm

%line 841+1 optimizer.asm

%line 870+1 optimizer.asm

%line 899+1 optimizer.asm

%line 904+1 optimizer.asm

%line 909+1 optimizer.asm

%line 915+1 optimizer.asm

%line 921+1 optimizer.asm

%line 927+1 optimizer.asm

%line 933+1 optimizer.asm

%line 939+1 optimizer.asm

%line 945+1 optimizer.asm

%line 949+1 optimizer.asm

%line 958+1 optimizer.asm


%line 963+1 optimizer.asm

%line 967+1 optimizer.asm

%line 976+1 optimizer.asm


%line 981+1 optimizer.asm

%line 985+1 optimizer.asm

%line 994+1 optimizer.asm

%line 998+1 optimizer.asm

%line 1007+1 optimizer.asm

%line 1011+1 optimizer.asm

%line 1020+1 optimizer.asm

%line 1029+1 optimizer.asm

%line 1046+1 optimizer.asm

%line 1056+1 optimizer.asm

%line 1063+1 optimizer.asm

%line 1077+1 optimizer.asm






%line 1089+1 optimizer.asm

%line 1102+1 optimizer.asm

%line 1118+1 optimizer.asm

%line 1148+1 optimizer.asm


%line 1196+1 optimizer.asm

























%line 1224+1 optimizer.asm

%line 10+1 main.asm



 ORG $FFFC
 FDB main


LOCALS_BEGIN set $20
LOCALS_END set $7F




 ORG $0000
 RB1_COPY:
%line 24+0 main.asm
 DFS 1
%line 25+1 main.asm
 RB2_COPY:
%line 25+0 main.asm
 DFS 1
%line 26+1 main.asm
 RB3_COPY:
%line 26+0 main.asm
 DFS 1
%line 27+1 main.asm
 RB4_COPY:
%line 27+0 main.asm
 DFS 1
%line 28+1 main.asm
 saveA:
%line 28+0 main.asm
 DFS 1
%line 29+1 main.asm
 dummy:
%line 29+0 main.asm
 DFS 1
%line 30+1 main.asm
 ret_val:
%line 30+0 main.asm
 DFS 2
%line 31+1 main.asm
 rand_val:
%line 31+0 main.asm
 DFS 2
%line 32+1 main.asm



 ORG $C000





%line 1+1 chartable.asm
 CharTable:

 FCB 0, 0, 0, 0, 0, 0, 0, 0

 FCB 4, 4, 4, 4, 4, 0, 4, 0

 FCB 10, 10, 10, 0, 0, 0, 0, 0

 FCB 10, 10, 31, 10, 31, 10, 10, 0

 FCB 4, 30, 5, 14, 20, 15, 4, 0

 FCB 3, 19, 8, 4, 2, 25, 24, 0

 FCB 6, 9, 5, 2, 21, 9, 22, 0

 FCB 3, 2, 1, 0, 0, 0, 0, 0

 FCB 4, 2, 1, 1, 1, 2, 4, 0

 FCB 4, 8, 16, 16, 16, 8, 4, 0

 FCB 0, 4, 21, 14, 21, 4, 0, 0

 FCB 0, 4, 4, 31, 4, 4, 0, 0

 FCB 0, 0, 0, 0, 0, 6, 4, 2

 FCB 0, 0, 0, 31, 0, 0, 0, 0

 FCB 0, 0, 0, 0, 0, 6, 6, 0

 FCB 0, 16, 8, 4, 2, 1, 0, 0

 FCB 14, 17, 25, 21, 19, 17, 14, 0

 FCB 4, 6, 4, 4, 4, 4, 14, 0

 FCB 14, 17, 16, 8, 4, 2, 31, 0

 FCB 31, 8, 4, 8, 16, 17, 14, 0

 FCB 8, 12, 10, 9, 31, 8, 8, 0

 FCB 31, 1, 15, 16, 16, 17, 14, 0

 FCB 12, 2, 1, 15, 17, 17, 14, 0

 FCB 31, 16, 8, 4, 2, 2, 2, 0

 FCB 14, 17, 17, 14, 17, 17, 14, 0

 FCB 14, 17, 17, 30, 16, 8, 6, 0

 FCB 0, 6, 6, 0, 6, 6, 0, 0

 FCB 0, 6, 6, 0, 6, 4, 2, 0

 FCB 8, 4, 2, 1, 2, 4, 8, 0

 FCB 0, 0, 31, 0, 31, 0, 0, 0

 FCB 2, 4, 8, 16, 8, 4, 2, 0

 FCB 14, 17, 16, 8, 4, 0, 4, 0

 FCB 14, 17, 16, 22, 21, 21, 14, 0

 FCB 4, 10, 17, 17, 31, 17, 17, 0

 FCB 15, 17, 17, 31, 17, 17, 15, 0

 FCB 14, 17, 1, 1, 1, 17, 14, 0

 FCB 7, 9, 17, 17, 17, 9, 7, 0

 FCB 31, 1, 1, 15, 1, 1, 31, 0

 FCB 31, 1, 1, 15, 1, 1, 1, 0

 FCB 14, 17, 1, 29, 17, 17, 14, 0

 FCB 17, 17, 17, 31, 17, 17, 17, 0

 FCB 14, 4, 4, 4, 4, 4, 14, 0

 FCB 28, 8, 8, 8, 8, 9, 6, 0

 FCB 17, 9, 5, 3, 5, 9, 17, 0

 FCB 1, 1, 1, 1, 1, 1, 31, 0

 FCB 17, 27, 21, 21, 17, 17, 17, 0

 FCB 17, 17, 19, 21, 25, 17, 17, 0

 FCB 14, 17, 17, 17, 17, 17, 14, 0

 FCB 15, 17, 17, 15, 1, 1, 1, 0

 FCB 14, 17, 17, 17, 21, 9, 22, 0

 FCB 15, 17, 17, 15, 5, 9, 17, 0

 FCB 14, 17, 1, 14, 16, 17, 14, 0

 FCB 31, 4, 4, 4, 4, 4, 4, 0

 FCB 17, 17, 17, 17, 17, 17, 14, 0

 FCB 17, 17, 17, 17, 17, 10, 4, 0

 FCB 17, 17, 17, 21, 21, 27, 17, 0

 FCB 17, 17, 10, 4, 10, 17, 17, 0

 FCB 17, 17, 10, 4, 4, 4, 4, 0

 FCB 31, 16, 8, 4, 2, 1, 31, 0

 FCB 14, 2, 2, 2, 2, 2, 14, 0

 FCB 0, 1, 2, 4, 8, 16, 0, 0

 FCB 14, 8, 8, 8, 8, 8, 14, 0

 FCB 4, 10, 17, 0, 0, 0, 0, 0

 FCB 0, 0, 0, 0, 0, 0, 31, 0

 FCB 1, 2, 4, 0, 0, 0, 0, 0

 FCB 0, 0, 14, 16, 30, 17, 30, 0

 FCB 1, 1, 1, 15, 17, 17, 15, 0

 FCB 0, 0, 14, 17, 1, 17, 14, 0

 FCB 16, 16, 16, 30, 17, 17, 30, 0

 FCB 0, 0, 14, 17, 31, 1, 14, 0

 FCB 12, 18, 2, 7, 2, 2, 2, 0

 FCB 0, 0, 30, 17, 30, 16, 14, 0

 FCB 1, 1, 1, 15, 17, 17, 17, 0

 FCB 0, 4, 0, 6, 4, 4, 14, 0

 FCB 8, 0, 8, 8, 8, 9, 6, 0

 FCB 1, 1, 9, 5, 3, 5, 9, 0

 FCB 6, 4, 4, 4, 4, 4, 14, 0

 FCB 0, 0, 11, 21, 21, 17, 17, 0

 FCB 0, 0, 13, 19, 17, 17, 17, 0

 FCB 0, 0, 14, 17, 17, 17, 14, 0

 FCB 0, 0, 15, 17, 31, 1, 1, 0

 FCB 0, 0, 30, 17, 30, 16, 16, 0

 FCB 0, 0, 13, 19, 1, 1, 1, 0

 FCB 0, 0, 14, 1, 14, 16, 15, 0

 FCB 2, 2, 7, 2, 2, 18, 12, 0

 FCB 0, 0, 17, 17, 17, 25, 22, 0

 FCB 0, 0, 17, 17, 17, 10, 4, 0

 FCB 0, 0, 17, 21, 21, 21, 10, 0

 FCB 0, 0, 17, 10, 4, 10, 17, 0

 FCB 0, 0, 17, 17, 30, 16, 14, 0

 FCB 0, 0, 31, 8, 4, 2, 31, 0

 FCB 8, 4, 4, 2, 4, 4, 8, 0

 FCB 4, 4, 4, 0, 4, 4, 4, 0

 FCB 2, 4, 4, 8, 4, 4, 2, 0

 FCB 8, 21, 2, 0, 0, 0, 0, 0

%line 41+1 main.asm

%line 1+1 debug.asm



 debug_nl:
 RTS

 debug:
 RTS

%line 14+1 debug.asm


%line 42+1 main.asm

%line 1+1 emu.asm




RAM_BANK1 = $FFE0
RAM_BANK2 = $FFE1
RAM_BANK3 = $FFE2
ROM_BANK = $FFE3
KB_INPUT = $FFE4
TIMER_MS4 = $FFE5
TIMER_S = $FFE6
DEBUG = $FFE7
DEBUG_HEX = $FFE8
DEBUG_DEC = $FFE9
DEBUG_DEC16 = $FFEA
DEBUG_TIMING = $FFEB
LOG_ON = $FFEC
LOG_OFF = $FFED
LOG_SEND = $FFEE



BANK_GEN_RAM1 = 0
BANK_GEN_RAM2 = 1
BANK_GEN_RAM3 = 2
BANK_GEN_RAM4 = 3
BANK_GFX_RAM1 = 4
BANK_GFX_RAM2 = 5
BANK_GEN_ROM = 14


RB1 = $0200
RB2 = $4000
RB3 = $8000
ROMB = $C000
%line 43+1 main.asm



%line 1+1 const.asm



SCREEN_ADDRESS = $4000

SCREEN_WIDTH = 256
SCREEN_HEIGHT = 128

MAP_WIDTH = 40
MAP_HEIGHT = 20

LEGEND_WIDTH = 96
LEGEND_HEIGHT = 128
LEGEND_LEFT = 160
LEGEND_TOP = 0

FRAME_WIDTH = 5
FRAME_HEIGHT = 4

DIRECTION_NONE = 0
DIRECTION_UP = 1
DIRECTION_DOWN = 2
DIRECTION_LEFT = 3
DIRECTION_RIGHT = 4

OUTPUT_GAME = 0
OUTPUT_CHARACTER = 1
OUTPUT_SKILLS = 2
OUTPUT_RESOURCES = 3
OUTPUT_GAME_OVER = 4

MAP_LAVA_COUNT = 20
MAP_WALL_COUNT = 60
MAP_LAVA_SIZE = 5
MAP_WALL_SIZE = 5
MAP_BLANK = 0
MAP_BLANK_90 = 1
MAP_BLANK_180 = 2
MAP_BLANK_270 = 3
MAP_ROCK = 4
MAP_LAVA = 5
MAP_EXIT = 6

HERO_START_X = 1
HERO_START_Y = 1

SLOT_COUNT = 5

MONSTER_HP = 30

SKILL_COUNT = 15
SKILL_BATTERY_SAVER = 0
SKILL_BOUNTY_HUNTER = 1
SKILL_FAST_DIGGER = 2
SKILL_LUCKY_DRILLER = 3
SKILL_MASTER_MINER = 4
SKILL_LUCKY_CRIT = 5
SKILL_CRIT_LORD = 6
SKILL_EXPERIENCED = 7
SKILL_INSTAKILL = 8
SKILL_GHOST = 9
SKILL_FREE_LUNCH = 10
SKILL_WISE_REWARDS = 11
SKILL_BIG_DISCOUNT = 12
SKILL_ONLY_THE_BEST = 13
SKILL_CRYSTALSMITH = 14

COLOR_BLACK = 0
COLOR_WHITE = 63
COLOR_GREEN = 12
COLOR_RED = 3
COLOR_DARK_RED = 2
COLOR_BLUE = 48
COLOR_DARK_BLUE = 32
COLOR_DARK_GREEN = 8
COLOR_PURPLE = 50
COLOR_DARK_PURPLE = 33
COLOR_ORANGE = 11
COLOR_DARK_ORANGE = 6
COLOR_YELLOW = 15
COLOR_DARK_YELLOW = 10
COLOR_GRAY_1 = 21
COLOR_GRAY_2 = 42
COLOR_TRANSPARENT = 64

COLOR_LEGEND_BG = 21
COLOR_ROCK = 33
COLOR_DIRT = 59
COLOR_LAVA = 11
COLOR_CRYSTAL_RED1 = 23
COLOR_CRYSTAL_RED2 = 43
COLOR_CRYSTAL_YELLOW1 = 31
COLOR_CRYSTAL_YELLOW2 = 47
COLOR_CRYSTAL_BLUE1 = 53
COLOR_CRYSTAL_BLUE2 = 58
COLOR_EXIT = 53
COLOR_MONSTER = 1

COLOR_HP = 3
COLOR_BATT = 48
COLOR_DMG = 1
COLOR_CRIT = 1
COLOR_MINE = 23
COLOR_DRILL = 50
COLOR_LAVA_RES = 11

COLOR_MENU_CHAR = 8
COLOR_MENU_SKILLS = 32
COLOR_MENU_RESOURCES = 2
COLOR_MENU_BORDER = 42

INVENTORY_COUNT = 30
TEXT_LINE_HEIGHT = 8
TEXT_CHAR_WIDTH = 6
TEXT_SPACING_Y = 10
MONSTER_COUNT = 40
CRYSTAL_COUNT = 40
BAR_WIDTH = 80
BAR_HEIGHT = 6
LEGEND_MAZE_TOP = 84
LEGEND_MAZE_LEFT = 8
LEGEND_MAZE_MONSTER_COLOR = 3
LEGEND_MAZE_MINERAL_COLOR = 15
LEGEND_BOX_WIDTH = 10
LEGEND_BOX_HEIGHT = 8
LEGEND_STATS_LEFT = 8
LEGEND_HP_TOP = 4
LEGEND_HP_BAR_TOP = 13
LEGEND_BATT_TOP = 24
LEGEND_BATT_BAR_TOP = 33
LEGEND_EXP_TOP = 44
LEGEND_EXP_BAR_TOP = 53
LEGEND_TARGET_TOP = 64
LEGEND_TARGET_BAR_TOP = 73
DRAWITEM_RES_LEFT = 2
DRAWITEM_RES_TOP = 2
DRAWITEM_ITEM_LEFT = 18
DRAWITEM_ITEM_TOP = 4
DRAWITEM_STAT_TOP = 15
DRAWITEM_STAT_HEIGHT = 10
MENU_CHAR_LEFT = 9
MENU_TITLE_TOP = 9
MENU_SKILL_LEFT = 76
MENU_RES_LEFT = 124
MENU_BG_LEFT = 9
MENU_BG_TOP = 17
MENU_BG_WIDTH = 238
MENU_BG_HEIGHT = 102
MENU_CHAR_ROBOT_LEFT = 27
MENU_CHAR_ROBOT_TOP = 21
MENU_CHAR_STAT_LEFT = 13
MENU_CHAR_HP_TOP = 56
MENU_CHAR_BATT_TOP = 65
MENU_CHAR_DMG_TOP = 74
MENU_CHAR_CRIT_TOP = 83
MENU_CHAR_MINE_TOP = 92
MENU_CHAR_DRILL_TOP = 101
MENU_CHAR_LAVA_TOP = 110
MENU_CHAR_BOX_COLOR = 4
MENU_CHAR_BOX_LEFT = 80
MENU_CHAR_BOX1_TOP = 22
MENU_CHAR_BOX2_TOP = 70
MENU_CHAR_BOX_WIDTH = 80
MENU_CHAR_BOX_HEIGHT = 45
MENU_CHAR_BOX_TITLE_OFFSET_X = 18
MENU_CHAR_BOX_TITLE_OFFSET_Y = 4
MENU_CHAR_BOX_STAT_OFFSET_X = 18
MENU_CHAR_BOX_STAT_OFFSET_Y = 15
MENU_CHAR_GRID_LEFT = 164
MENU_CHAR_GRID_TOP = 20
MENU_CHAR_GRID_LINE_TOP = 116
MENU_CHAR_GRID_LINE_WIDTH = 80
MENU_CHAR_GRID_LINE_LEFT = 244
MENU_CHAR_GRID_LINE_HEIGHT = 97
MENU_CHAR_BOX_X_COUNT = 5
MENU_CHAR_BOX_Y_COUNT = 6
MENU_SKILL_POINTS_LEFT = 11
MENU_SKILL_POINTS_TOP = 20
MENU_SKILL_BOX1_COLOR = 46
MENU_SKILL_BOX2_COLOR = 58
MENU_SKILL_BOX3_COLOR = 43
MENU_SKILL_BOX_LEFT = 9
MENU_SKILL_BOX1_TOP = 29
MENU_SKILL_BOX2_TOP = 59
MENU_SKILL_BOX3_TOP = 89
MENU_SKILL_BOX_WIDTH = 140
MENU_SKILL_BOX_HEIGHT = 30
MENU_SKILL_X_SPACING = 28
MENU_SKILL_Y_SPACING = 30
MENU_SKILL_SKILL_LEFT = 11
MENU_SKILL_SKILL_TOP = 32
MENU_SKILL_DBOX_COLOR = 16
MENU_SKILL_DBOX_WIDTH = 92
MENU_SKILL_DBOX_HEIGHT = 87
MENU_SKILL_DBOX_LEFT = 152
MENU_SKILL_DBOX_TOP = 29
MENU_SKILL_DBOX_TEXT_LEFT = 154
MENU_SKILL_DBOX_TEXT_TOP = 43
MENU_SKILL_DBOX_TITLE_TOP = 31
MENU_SKILL_UPGRADE_LEFT = 154
MENU_SKILL_UPGRADE_TOP = 106
MENU_RES_BLOCK_HEIGHT = 19
MENU_RES_BLOCK_WIDTH = 23
MENU_RES_BLOCK_LEFT = 11
MENU_RES_BLOCK_TOP = 19
MENU_RES_BLOCK_TOTAL_HEIGHT = 97
MENU_RES_ITEM_LEFT = 14
MENU_RES_ITEM_TOP = 21
MENU_RES_BOX_WIDTH = 92
MENU_RES_BOX_HEIGHT = 87
MENU_RES_BOX_COLOR = 1
MENU_RES_BOX_LEFT = 152
MENU_RES_BOX_TOP = 29
MENU_RES_MONEY_LEFT = 152
MENU_RES_MONEY_TOP = 19
MENU_RES_MONEY_WIDTH = 92
MENU_RES_MONEY_HEIGHT = 10
MENU_RES_MONEY_VAL_TOP = 21
MENU_RES_MONEY_RED_LEFT = 171
MENU_RES_MONEY_BLUE_LEFT = 195
MENU_RES_MONEY_YELLOW_LEFT = 219
MENU_RES_COST_LEFT = 154
MENU_RES_COST_TOP = 107

MENU_RES_HP_COLOR1 = 1
MENU_RES_HP_COLOR2 = 23
MENU_RES_BATT_COLOR1 = 16
MENU_RES_BATT_COLOR2 = 53
MENU_RES_EXP_COLOR1 = 5
MENU_RES_EXP_COLOR2 = 31

MENU_BORDER_SIZE = 8

HERO_HP_BASE = 2
HERO_BATT_BASE = 3
HERO_MINE_BASE = 8
HERO_DRILL_BASE = 12
HERO_LAVA_RES_BASE = 0
HERO_BATT_RATE_BASE = 1
HERO_CRIT_BASE = 5
HERO_HP_RECHARGE_BASE = 0
HERO_LAVA_DMG_BASE = 4
HERO_ATTACK_COST_BASE = 4
HERO_MINE_COST_BASE = 2
HERO_DRILL_COST_BASE = 2
HERO_EXP_MAX_BASE = 40
HERO_STAT_COUNT = 7

DEAD_LEFT = 100
DEAD_TOP = 56
DEAD_WIDTH = 54
DEAD_HEIGHT = 16
DEAD_MSG_LEFT = 104
DEAD_MSG_TOP = 60

NO_MONSTER = $FF
NO_CRYSTAL = $FF

CRYSTAL_RED_TYPE = 0
CRYSTAL_BLUE_TYPE = 1
CRYSTAL_YELLOW_TYPE = 2

KEY_ENTER = 13
%line 46+1 main.asm

%line 1+1 game.asm


 target_none set 0
 target_rock set 1
 target_exit set 2
 target_monster set 3
 target_crystal set 4
 target_return set 5


 head set 0
 body set 1
 legs set 2
 gun set 3
 tool set 4
 ground set 5
 crystal set 6
 res_only set 7


 Basic_Head set 0
 Head_MKII set 1
 Head_MKIII set 2
 Head_MKIV set 3
 Lightning set 4
 Basic_Body set 5
 Tin_Body set 6
 Iron_Body set 7
 Steel_Body set 8
 Fortress set 9
 Basic_Legs set 10
 Fast_Legs set 11
 Quick_Legs set 12
 Agile_Legs set 13
 Mustang set 14
 Basic_Gun set 15
 Blaster set 16
 Laser set 17
 Phaser set 18
 Death_Ray set 19
 Basic_Tool set 20
 Rock_Pick set 21
 Rock_Drill set 22
 Rock_Borer set 23
 Laser_Bit set 24
 Res_HP_Heal_ID set 25
 Res_HP_Upgrade_ID set 26
 Res_Batt_Heal_ID set 27
 Res_Batt_Upgrade_ID set 28
 Res_Exp_Upgrade_ID set 29
 Res_Dmg_Upgrade_ID set 30
 item_IDs_size set 31
 item_none set 32



 Ground_0 set 0
 Ground_90 set 1
 Ground_180 set 2
 Ground_270 set 3
 Rock set 4
 Lava set 5
 Crystal_red set 6
 Crystal_yellow set 7
 Crystal_blue set 8
 Robot_left set 9
 Robot_right set 10
 Menu_item_temp set 11
 Skill_temp set 12


 Menu_head set 13
 Menu_body set 14
 Menu_legs set 15
 Menu_gun set 16
 Menu_tool set 17
 Robot_left_raw set 18
 Robot_right_raw set 19
 Crystal_raw set 20
 Ground_raw set 21


 Monster set 22
 Monster_dead set 23
 Menu_item_slot set 24
 Crystal_base set 25


 Hero_target set 26
 Menu_item_selector set 27
 Menu_skill_selector set 28
 ExitID set 29
 Res_HP_Heal set 30
 Res_HP_Upgrade set 31
 Res_Batt_Heal set 32
 Res_Batt_Upgrade set 33
 Res_Exp_Upgrade set 34
 Res_Dmg_Upgrade set 35
 Skill0 set 36
 Skill1 set 37
 Skill2 set 38
 Skill3 set 39
 Skill4 set 40
 Skill5 set 41
 Skill6 set 42
 Skill7 set 43
 Skill8 set 44
 Skill9 set 45
 Skill10 set 46
 Skill11 set 47
 Skill12 set 48
 Skill13 set 49
 Skill14 set 50
 tile_IDs_size set 51


 type set 0
 cost set 1
 cost_type set 2
 quality set 3

 stat_count set 4
 stat_begin set 5

description equ quality



 stat_Basic set 0
 stat_Green set 1
 stat_Blue set 2
 stat_Purple set 3
 stat_Yellow set 4
 stat_Red set 5
 stat_None set 6


 stat_Batt set 0
 stat_HP set 1
 stat_Dmg set 2
 stat_Mine set 3
 stat_Mine1s set 4
 stat_Crit set 5
 stat_Lava set 6
 stat_Drill set 7
 stat_Drill1s set 8
 stat_Batt_Recharge set 9
 stat_HP_Recharge set 10
 stat_Lava_Heals set 11
 stat_Dmg_Cost_50 set 12
 stat_Mine_Cost_50 set 13
 stat_Res_Only set 14


 str_Basic_Head: FCB "Basic Head",0
 str_Head_MKII: FCB "Head MKII",0
 str_Head_MKIII: FCB "Head MKIII",0
 str_Head_MKIV: FCB "Head MKIV",0
 str_Lightning: FCB "Lightning",0
 str_Basic_Body: FCB "Basic Body",0
 str_Tin_Body: FCB "Tin Body",0
 str_Iron_Body: FCB "Iron Body",0
 str_Steel_Body: FCB "Steel Body",0
 str_Fortress: FCB "Fortress",0
 str_Basic_Legs: FCB "Basic Legs",0
 str_Fast_Legs: FCB "Fast Legs",0
 str_Quick_Legs: FCB "Quick Legs",0
 str_Agile_Legs: FCB "Agile Legs",0
 str_Mustang: FCB "Mustang",0
 str_Basic_Gun: FCB "Basic Gun",0
 str_Blaster: FCB "Blaster",0
 str_Laser: FCB "Laser",0
 str_Phaser: FCB "Phaser",0
 str_Death_Ray: FCB "Death Ray",0
 str_Basic_Tool: FCB "Basic Tool",0
 str_Rock_Pick: FCB "Rock Pick",0
 str_Rock_Drill: FCB "Rock Drill",0
 str_Rock_Borer: FCB "Rock Borer",0
 str_Laser_Bit: FCB "Laser Bit",0

 item_titles:
 FDB str_Basic_Head
 FDB str_Head_MKII
 FDB str_Head_MKIII
 FDB str_Head_MKIV
 FDB str_Lightning
 FDB str_Basic_Body
 FDB str_Tin_Body
 FDB str_Iron_Body
 FDB str_Steel_Body
 FDB str_Fortress
 FDB str_Basic_Legs
 FDB str_Fast_Legs
 FDB str_Quick_Legs
 FDB str_Agile_Legs
 FDB str_Mustang
 FDB str_Basic_Gun
 FDB str_Blaster
 FDB str_Laser
 FDB str_Phaser
 FDB str_Death_Ray
 FDB str_Basic_Tool
 FDB str_Rock_Pick
 FDB str_Rock_Drill
 FDB str_Rock_Borer
 FDB str_Laser_Bit


 item_Basic_Head: FCB head, 0, stat_None, stat_Basic, 1, stat_Batt, 2
 item_Head_MKII: FCB head, 2, CRYSTAL_BLUE_TYPE, stat_Green, 1, stat_Batt, 4
 item_Head_MKIII: FCB head, 5, CRYSTAL_BLUE_TYPE, stat_Blue, 2, stat_Batt, 5, stat_Crit, 5
 item_Head_MKIV: FCB head, 8, CRYSTAL_YELLOW_TYPE, stat_Purple,3, stat_Batt, 8, stat_Crit, 10, stat_Drill, 2
 item_Lightning: FCB head, 15, CRYSTAL_RED_TYPE, stat_Yellow,3, stat_Batt, 12, stat_Crit, 20, stat_Batt_Recharge, 1
 item_Basic_Body: FCB body, 0, stat_None, stat_Basic, 1, stat_HP, 5
 item_Tin_Body: FCB body, 2, CRYSTAL_RED_TYPE, stat_Green, 1, stat_HP, 8
 item_Iron_Body: FCB body, 5, CRYSTAL_BLUE_TYPE, stat_Blue, 2, stat_HP, 10, stat_Batt, 3
 item_Steel_Body: FCB body, 8, CRYSTAL_YELLOW_TYPE, stat_Purple,3, stat_HP, 12, stat_Batt, 5, stat_Dmg, 2
 item_Fortress: FCB body, 15, CRYSTAL_BLUE_TYPE, stat_Yellow,3, stat_HP, 20, stat_Batt, 10, stat_HP_Recharge, 1
 item_Basic_Legs: FCB legs, 0, stat_None, stat_Basic, 1, stat_HP, 3
 item_Fast_Legs: FCB legs, 2, CRYSTAL_RED_TYPE, stat_Green, 1, stat_HP, 5
 item_Quick_Legs: FCB legs, 5, CRYSTAL_RED_TYPE, stat_Blue, 2, stat_HP, 6, stat_Lava, 25
 item_Agile_Legs: FCB legs, 8, CRYSTAL_BLUE_TYPE, stat_Purple,3, stat_HP, 7, stat_Lava, 50, stat_Mine, 2
 item_Mustang: FCB legs, 15, CRYSTAL_RED_TYPE, stat_Yellow,3, stat_HP, 12, stat_Dmg, 4, stat_Lava_Heals, 0
 item_Basic_Gun: FCB gun, 0, stat_None, stat_Basic, 1, stat_Dmg, 4
 item_Blaster: FCB gun, 2, CRYSTAL_YELLOW_TYPE, stat_Green, 1, stat_Dmg, 6
 item_Laser: FCB gun, 5, CRYSTAL_RED_TYPE, stat_Blue, 2, stat_Dmg, 8, stat_Crit, 10
 item_Phaser: FCB gun, 8, CRYSTAL_BLUE_TYPE, stat_Purple,3, stat_Dmg, 10, stat_Crit, 15, stat_Batt, 2
 item_Death_Ray: FCB gun, 15, CRYSTAL_YELLOW_TYPE, stat_Yellow,3, stat_Dmg, 12, stat_Crit, 30, stat_Dmg_Cost_50, 0
 item_Basic_Tool: FCB tool, 0, stat_None, stat_Basic, 1, stat_Mine, 1
 item_Rock_Pick: FCB tool, 2, CRYSTAL_YELLOW_TYPE, stat_Green, 1, stat_Mine, 2
 item_Rock_Drill: FCB tool, 5, CRYSTAL_YELLOW_TYPE, stat_Blue, 2, stat_Mine, 3, stat_Drill, 2
 item_Rock_Borer: FCB tool, 8, CRYSTAL_RED_TYPE, stat_Purple,3, stat_Mine, 5, stat_Drill, 3, stat_Batt, 3
 item_Laser_Bit: FCB tool, 15, CRYSTAL_YELLOW_TYPE, stat_Yellow,3, stat_Mine1s,0, stat_Drill1s, 0, stat_Mine_Cost_50, 3

 str_Res_HP_Heal: FCB "Heals HP to*full",0
 str_Res_HP_Upgrade: FCB "+1 HP",0
 str_Res_Batt_Heal: FCB "Recharges*battery to*full",0
 str_Res_Batt_Upgrade: FCB "+1 Batt",0
 str_Res_Exp_Upgrade: FCB "+10 Exp point",0
 str_Res_Dmg_Upgrade: FCB "+1 Dmg",0

 res_descriptions:
 FDB str_Res_HP_Heal
 FDB str_Res_HP_Upgrade
 FDB str_Res_Batt_Heal
 FDB str_Res_Batt_Upgrade
 FDB str_Res_Exp_Upgrade
 FDB str_Res_Dmg_Upgrade

 item_Res_HP_Heal: FCB stat_Res_Only, 1, CRYSTAL_RED_TYPE, 0
 item_Res_HP_Upgrade: FCB stat_Res_Only, 10, CRYSTAL_RED_TYPE, 1
 item_Res_Batt_Heal: FCB stat_Res_Only, 1, CRYSTAL_BLUE_TYPE, 2
 item_Res_Batt_Upgrade: FCB stat_Res_Only, 10, CRYSTAL_BLUE_TYPE, 3
 item_Res_Exp_Upgrade: FCB stat_Res_Only, 1, CRYSTAL_YELLOW_TYPE, 4
 item_Res_Dmg_Upgrade: FCB stat_Res_Only, 10, CRYSTAL_YELLOW_TYPE, 5


 item_stats:
 FDB item_Basic_Head
 FDB item_Head_MKII
 FDB item_Head_MKIII
 FDB item_Head_MKIV
 FDB item_Lightning
 FDB item_Basic_Body
 FDB item_Tin_Body
 FDB item_Iron_Body
 FDB item_Steel_Body
 FDB item_Fortress
 FDB item_Basic_Legs
 FDB item_Fast_Legs
 FDB item_Quick_Legs
 FDB item_Agile_Legs
 FDB item_Mustang
 FDB item_Basic_Gun
 FDB item_Blaster
 FDB item_Laser
 FDB item_Phaser
 FDB item_Death_Ray
 FDB item_Basic_Tool
 FDB item_Rock_Pick
 FDB item_Rock_Drill
 FDB item_Rock_Borer
 FDB item_Laser_Bit
 FDB item_Res_HP_Heal
 FDB item_Res_HP_Upgrade
 FDB item_Res_Batt_Heal
 FDB item_Res_Batt_Upgrade
 FDB item_Res_Exp_Upgrade
 FDB item_Res_Dmg_Upgrade


 str_stat_Batt: FCB "+$ Batt",0
 str_stat_HP: FCB "+$ HP",0
 str_stat_Dmg: FCB "+$ Dmg",0
 str_stat_Mine: FCB "-$s Mine",0
 str_stat_Mine1s: FCB "1s Mine",0
 str_stat_Crit: FCB "+$% Crit",0
 str_stat_Lava: FCB "-$% Lava",0
 str_stat_Drill: FCB "-$s Drill",0
 str_stat_Drill1s: FCB "1s Drill",0
 str_stat_Batt_Recharge: FCB "+$/s Batt",0
 str_stat_HP_Recharge: FCB "+$/s HP",0
 str_stat_LavaHeals: FCB "Lava Heals",0
 str_stat_AttackCost50: FCB "-50% Cost",0
 str_stat_MineCost50: FCB "-50% Cost",0

 stat_descriptions:
 FDB str_stat_Batt
 FDB str_stat_HP
 FDB str_stat_Dmg
 FDB str_stat_Mine
 FDB str_stat_Mine1s
 FDB str_stat_Crit
 FDB str_stat_Lava
 FDB str_stat_Drill
 FDB str_stat_Drill1s
 FDB str_stat_Batt_Recharge
 FDB str_stat_HP_Recharge
 FDB str_stat_LavaHeals
 FDB str_stat_AttackCost50
 FDB str_stat_MineCost50

 stat_description_colors:
 FCB COLOR_BATT
 FCB COLOR_HP
 FCB COLOR_DMG
 FCB COLOR_MINE
 FCB COLOR_MINE
 FCB COLOR_CRIT
 FCB COLOR_LAVA
 FCB COLOR_DRILL
 FCB COLOR_DRILL
 FCB COLOR_BATT
 FCB COLOR_HP
 FCB COLOR_HP
 FCB COLOR_DMG
 FCB COLOR_MINE

 stat_special set 0


 stat_pointers:
 FDB hero_Batt_Max
 FDB hero_HP_Max_temp
 FDB hero_Dmg
 FDB stat_special
 FDB stat_special
 FDB hero_Crit_Rate
 FDB hero_Lava_Res
 FDB stat_special
 FDB stat_special
 FDB hero_Batt_Recharge
 FDB hero_HP_Recharge
 FDB stat_special
 FDB stat_special
 FDB stat_special


 str_hero_stat_HP: FCB "HP:   $",0
 str_hero_stat_Batt: FCB "Batt: $",0
 str_hero_stat_Dmg: FCB "Dmg:  $",0
 str_hero_stat_Crit: FCB "Crit: $%",0
 str_hero_stat_Mine: FCB "Mine: $s",0
 str_hero_stat_Drill: FCB "Drill:$s",0
 str_hero_stat_Lava: FCB "Lava: -$%",0

 hero_stat_colors:
 FCB COLOR_HP
 FCB COLOR_BATT
 FCB COLOR_DMG
 FCB COLOR_CRIT
 FCB COLOR_MINE
 FCB COLOR_DRILL
 FCB COLOR_LAVA

 hero_stat_texts:
 FDB str_hero_stat_HP
 FDB str_hero_stat_Batt
 FDB str_hero_stat_Dmg
 FDB str_hero_stat_Crit
 FDB str_hero_stat_Mine
 FDB str_hero_stat_Drill
 FDB str_hero_stat_Lava

 hero_stat_pointers:
 FDB 0
 FDB hero_Batt_Max
 FDB hero_Dmg
 FDB hero_Crit_Rate
 FDB hero_Mine_Speed
 FDB hero_Drill_Speed
 FDB hero_Lava_Res


 Battery_Saver set 0
 Bounty_Hunter set 1
 Fast_Digger set 2
 Lucky_Driller set 3
 Master_Miner set 4
 Lucky_Crit set 5
 Crit_Lord set 6
 Experienced set 7
 Instakill set 8
 Ghost set 9
 Free_Lunch set 10
 Wise_Rewards set 11
 Big_Discount set 12
 Only_the_Best set 13
 Crystalsmith set 14

 str_Skill0_title: FCB "Battery Saver",0
 str_Skill1_title: FCB "Bounty Hunter",0
 str_Skill2_title: FCB "Fast Digger",0
 str_Skill3_title: FCB "Lucky Driller",0
 str_Skill4_title: FCB "Master Miner",0
 str_Skill5_title: FCB "Lucky Crit",0
 str_Skill6_title: FCB "Crit Lord",0
 str_Skill7_title: FCB "Experienced",0
 str_Skill8_title: FCB "Instakill",0
 str_Skill9_title: FCB "Ghost",0
 str_Skill10_title: FCB "Free Lunch",0
 str_Skill11_title: FCB "Wise Rewards",0
 str_Skill12_title: FCB "Big Discount",0
 str_Skill13_title: FCB "Only the Best",0
 str_Skill14_title: FCB "Crystalsmith",0

 skill_titles:
 FDB str_Skill0_title
 FDB str_Skill1_title
 FDB str_Skill2_title
 FDB str_Skill3_title
 FDB str_Skill4_title
 FDB str_Skill5_title
 FDB str_Skill6_title
 FDB str_Skill7_title
 FDB str_Skill8_title
 FDB str_Skill9_title
 FDB str_Skill10_title
 FDB str_Skill11_title
 FDB str_Skill12_title
 FDB str_Skill13_title
 FDB str_Skill14_title

 str_Skill0_description: FCB "20% chance that*mining won't*consume energy",0
 str_Skill1_description: FCB "10% chance of*crystal when*you kill an*enemy",0
 str_Skill2_description: FCB "-2 Mine and*Drill time",0
 str_Skill3_description: FCB "25% chance of*crystal when*mining rock",0
 str_Skill4_description: FCB "Mine double*crystals",0
 str_Skill5_description: FCB "+20% chance of*critical hit",0
 str_Skill6_description: FCB "Crit damage*raised from*150% to 200%",0
 str_Skill7_description: FCB "+10% bonus to*experience on*kill",0
 str_Skill8_description: FCB "5% chance to*kill enemy in*one hit",0
 str_Skill9_description: FCB "Walk through*enemies",0
 str_Skill10_description: FCB "20% chance that*crafting will*cost nothing",0
 str_Skill11_description: FCB "+5 random*crystal when*leveling up",0
 str_Skill12_description: FCB "-1 to cost of*items",0
 str_Skill13_description: FCB "10% chance*that crafted*items will be*yellow quality",0
 str_Skill14_description: FCB "Pay with any*crystal",0


 skill_descriptions:
 FDB str_Skill0_description
 FDB str_Skill1_description
 FDB str_Skill2_description
 FDB str_Skill3_description
 FDB str_Skill4_description
 FDB str_Skill5_description
 FDB str_Skill6_description
 FDB str_Skill7_description
 FDB str_Skill8_description
 FDB str_Skill9_description
 FDB str_Skill10_description
 FDB str_Skill11_description
 FDB str_Skill12_description
 FDB str_Skill13_description
 FDB str_Skill14_description

%line 47+1 main.asm

%line 1+1 tiles.asm




 tile_Ground_0: FCB [182]0
 tile_Ground_90: FCB [186]0
 tile_Ground_180: FCB [182]0
 tile_Ground_270: FCB [186]0
 tile_Rock: FCB [182]0
 tile_Lava: FCB [182]0
 tile_Crystal_red: FCB [554]0
 tile_Crystal_yellow: FCB [554]0
 tile_Crystal_blue: FCB [554]0
 tile_Robot_left: FCB [514]0
 tile_Robot_right: FCB [514]0
 tile_Menu_item_temp: FCB [178]0
 tile_Skill_temp: FCB [75]0



 tile_Menu_body:
 FCB 16,16,16,64,0,16,64,0,16,64,0,16,64,0,5,64,6,65,5,64,0,3,64,3,65,4,66,3,65,3,64,0,2,64
 FCB 1,65,1,66,1,65,6,66,1,65,1,66,1,65,2,64,0,1,64,1,65,2,66,1,65,6,66,1,65,2,66,1,65,1,64
 FCB 0,1,65,3,66,1,65,6,66,1,65,3,66,1,65,0,1,65,2,66,2,65,6,66,2,65,2,66,1,65,0,1,64,2,65
 FCB 1,64,1,65,6,66,1,65,1,64,2,65,1,64,0,4,64,2,65,4,66,2,65,4,64,0,5,64,6,65,5,64,0,16,64
 FCB 0,16,64,0,16,64,0

 tile_Menu_head:
 FCB 16,16,16,64,0,3,64,1,71,3,72,9,64,0,2,64,3,71,3,72,8,64,0,3,64,1,71,2,64,2,72,8,64,0,7
 FCB 64,2,72,7,64,0,7,64,2,72,7,64,0,2,64,12,73,2,64,0,1,64,2,73,10,74,2,73,1,64,0,1,64,1,73
 FCB 12,74,1,73,1,64,0,1,64,1,73,3,74,1,63,1,0,3,74,1,63,1,0,2,74,1,73,1,64,0,1,64,1,73,3,74
 FCB 2,63,3,74,2,63,2,74,1,73,1,64,0,1,64,1,73,12,74,1,73,1,64,0,1,64,1,73,3,74,1,75,8,74,1
 FCB 73,1,64,0,1,64,1,73,4,74,5,75,3,74,1,73,1,64,0,1,64,2,73,10,74,2,73,1,64,0,2,64,12,73,2
 FCB 64,0

 tile_Menu_legs:
 FCB 16,16,16,64,0,16,64,0,16,64,0,16,64,0,16,64,0,3,64,3,67,3,64,3,67,4,64,0,3,64,1,67,1,68
 FCB 1,67,3,64,1,67,1,68,1,67,4,64,0,3,64,1,67,1,68,1,67,3,64,1,67,1,68,1,67,4,64,0,3,64,1,67
 FCB 1,68,1,67,3,64,1,67,1,68,1,67,4,64,0,3,64,1,67,1,68,1,67,3,64,1,67,1,68,1,67,4,64,0,3,64
 FCB 1,67,2,68,1,67,2,64,1,67,2,68,1,67,3,64,0,3,64,1,67,3,68,1,67,1,64,1,67,3,68,1,67,2,64,0
 FCB 3,64,5,67,1,64,5,67,2,64,0,16,64,0,16,64,0,16,64,0

 tile_Menu_gun:
 FCB 16,16,16,64,0,16,64,0,16,64,0,9,64,1,69,6,64,0,8,64,3,69,5,64,0,7,64,1,69,2,70,2,69,4,64
 FCB 0,6,64,1,69,3,70,1,69,5,64,0,6,64,1,69,2,70,3,69,4,64,0,5,64,8,69,3,64,0,4,64,3,69,3,64
 FCB 4,69,2,64,0,3,64,2,70,1,69,5,64,3,69,2,64,0,3,64,2,70,7,64,1,69,3,64,0,16,64,0,16,64,0
 FCB 16,64,0,16,64,0

 tile_Menu_tool:
 FCB 16,16,16,64,0,16,64,0,16,64,0,9,64,2,76,5,64,0,8,64,2,76,6,64,0,8,64,2,76,2,64,1,76,3,64
 FCB 0,7,64,6,76,3,64,0,6,64,6,76,4,64,0,5,64,5,76,6,64,0,4,64,5,76,7,64,0,3,64,5,76,8,64,0,3,64
 FCB 4,76,9,64,0,4,64,2,76,10,64,0,16,64,0,16,64,0,16,64,0

 tile_Robot_left_raw:
 FCB 32,32,32,64,0,18,64,3,72,1,71,10,64,0,17,64,3,72,3,71,9,64,0,17,64,2,72,2,64,1,71,10,64
 FCB 0,16,64,2,72,14,64,0,16,64,2,72,14,64,0,11,64,12,73,9,64,0,10,64,2,73,10,74,2,73,8,64,0
 FCB 10,64,1,73,12,74,1,73,8,64,0,10,64,1,73,2,74,1,0,1,63,3,74,1,0,1,63,3,74,1,73,8,64,0,10
 FCB 64,1,73,2,74,2,63,3,74,2,63,3,74,1,73,8,64,0,10,64,1,73,12,74,1,73,8,64,0,10,64,1,73,8
 FCB 74,1,75,3,74,1,73,8,64,0,10,64
 FCB 1,73,3,74,5,75,4,74,1,73,8,64,0,6,64,1,69,3,64,2,73,10,74,2,73,8,64,0,5,64,3,69,3,64,12
 FCB 73,5,64,2,76,2,64,0,4,64,1,69,2,70,2,69,3,64,10,65,5,64,2,76,3,64,0,3,64,1,69,3,70,1,69
 FCB 1,64,4,65,8,66
 FCB 4,65,2,64,2,76,2,64,1,76,0,3,64,1,69,2,70,2,69,1,65,2,66,1,65,10,66,1,65,2,66,1,65,6,76
 FCB 0,2,64,5,69,1,65,3,66,1,65,10,66,1,65,3,66,1,65,4,76,1,64,0,1,64,3,69,2,64,1,65,3,66,2
 FCB 65,10,66,2,65,3
 FCB 66,1,65,1,76,3,64,0,2,70,1,69,3,64,1,65,2,66,1,65,1,64,1,65,10,66,1,65,1,64,1,65,2,66
 FCB 1,65,4,64,0,2,70,5,64,2,65,1,69,1,64,2,65,8,66,2,65,1,64,1,76,2,65,5,64,0,12,64,10,65
 FCB 1,64,3,76,6,64,0,13
 FCB 64,3,67,3,64,3,67,1,64,2,76,7,64,0,13,64,1,67,1,68,1,67,3,64,1,67,1,68,1,67,10,64,0,13
 FCB 64,1,67,1,68,1,67,3,64,1,67,1,68,1,67,10,64,0,13,64,1,67,1,68,1,67,3,64,1,67,1,68,1,67
 FCB 10,64,0,13,64,1
 FCB 67,1,68,1,67,3,64,1,67,1,68,1,67,10,64,0,12,64,1,67,2,68,1,67,2,64,1,67,2,68,1,67,10,64
 FCB 0,11,64,1,67,3,68,1,67,1,64,1,67,3,68,1,67,10,64,0,11,64,5,67,1,64,5,67,10,64,0

 tile_Robot_right_raw:
 FCB 32,32,32,64,0,12,64,1,71,3,72,16,64,0,11,64,3,71,3,72,15,64,0,12,64,1,71,2,64,2,72,15,64
 FCB 0,16,64,2,72,14,64,0,16,64,2,72,14,64,0,11,64,12,73,9,64,0,10,64,2,73,10,74,2,73,8,64,0
 FCB 10,64,1,73,12
 FCB 74,1,73,8,64,0,10,64,1,73,3,74,1,63,1,0,3,74,1,63,1,0,2,74,1,73,8,64,0,10,64,1,73,3,74,2
 FCB 63,3,74,2,63,2,74,1,73,8,64,0,10,64,1,73,12,74,1,73,8,64,0,10,64,1,73,3,74,1,75,8,74,1,73,8
 FCB 64,0,10,64
 FCB 1,73,4,74,5,75,3,74,1,73,8,64,0,6,64,1,69,3,64,2,73,10,74,2,73,8,64,0,5,64,3,69,3,64,12
 FCB 73,5,64,2,76,2,64,0,4,64,1,69,2,70,2,69,3,64,10,65,5,64,2,76,3,64,0,3,64,1,69,3,70,1,69,1,64
 FCB 4,65,8,66
 FCB 4,65,2,64,2,76,2,64,1,76,0,3,64,1,69,2,70,2,69,1,65,2,66,1,65,10,66,1,65,2,66,1,65,6,76
 FCB 0,2,64,5,69,1,65,3,66,1,65,10,66,1,65,3,66,1,65,4,76,1,64,0,1,64,3,69,2,64,1,65,3,66,2,65,10
 FCB 66,2,65,3
 FCB 66,1,65,1,76,3,64,0,2,70,1,69,3,64,1,65,2,66,1,65,1,64,1,65,10,66,1,65,1,64,1,65,2,66,1
 FCB 65,4,64,0,2,70,5,64,2,65,1,69,1,64,2,65,8,66,2,65,1,64,1,76,2,65,5,64,0,12,64,10,65,1,64,3
 FCB 76,6,64,0,12
 FCB 64,3,67,3,64,3,67,2,64,2,76,7,64,0,12,64,1,67,1,68,1,67,3,64,1,67,1,68,1,67,11,64,0,12
 FCB 64,1,67,1,68,1,67,3,64,1,67,1,68,1,67,11,64,0,12,64,1,67,1,68,1,67,3,64,1,67,1,68,1,67,11
 FCB 64,0,12,64,1
 FCB 67,1,68,1,67,3,64,1,67,1,68,1,67,11,64,0,12,64,1,67,2,68,1,67,2,64,1,67,2,68,1,67,10
 FCB 64,0,12,64,1,67,3,68,1,67,1,64,1,67,3,68,1,67,9,64,0,12,64,5,67,1,64,5,67,9,64,0

 tile_Crystal_raw:
 FCB 32,32,32,64,0,11,64,1,77,20,64,0,10,64,1,77,1,78,1,77,7,64,1,77,11,64,0,10,64,1,77,2
 FCB 78,1,77,6,64,1,77,11,64,0,9,64,1,77,4,78,1,77,4,64,2,77,11,64,0,8,64,1,77,6,78,1,77,3,64
 FCB 1,77,1,79,1,77,10
 FCB 64,0,8,64,1,77,6,78,1,77,2,64,1,77,2,79,1,77,10,64,0,8,64,1,77,6,78,1,77,2,64,1,77,2
 FCB 79,1,77,10,64,0,8,64,1,77,6,78,1,77,1,64,1,77,3,79,1,77,10,64,0,9,64,1,77,5,78,1,77,1,64
 FCB 1,77,3,79,1,77,10
 FCB 64,0,9,64,1,77,5,78,2,77,4,79,1,77,3,64,1,77,6,64,0,9,64,1,77,6,78,1,77,5,79,1,77,1
 FCB 64,1,77,1,78,2,77,4,64,0,3,64,3,77,3,64,1,77,6,78,1,77,5,79,2,77,4,78,1,77,3,64,0,3,64,1
 FCB 77,2,79,1,77,2,64
 FCB 1,77,6,78,1,77,4,79,2,77,5,78,1,77,3,64,0,4,64,1,77,1,79,2,77,1,64,1,77,6,78,1,77,3
 FCB 79,1,77,7,78,1,77,3,64,0,4,64,1,77,3,79,1,77,1,64,1,77,5,78,1,77,1,79,2,77,7,78,1,77,4
 FCB 64,0,5,64,1,77,3,79
 FCB 2,77,5,78,2,77,9,78,1,77,4,64,0,5,64,1,77,4,79,1,77,5,78,1,77,10,78,1,77,4,64,0,6
 FCB 64,1,77,3,79,1,77,5,78,1,77,9,78,1,77,5,64,0,6,64,1,77,3,79,1,77,6,78,1,77,7,78,1,77,6
 FCB 64,0,7,64,1,77,2,79,1
 FCB 77,6,78,1,77,6,78,1,77,7,64,0,7,64,1,77,3,79,1,77,5,78,1,77,5,78,1,77,8,64,0,8,64
 FCB 1,77,2,79,4,77,2,78,1,77,4,78,1,77,9,64,0,8,64,1,77,2,79,1,77,2,80,1,77,2,78,3,77,1,78
 FCB 2,77,9,64,0,7,64,4,77
 FCB 3,80,4,77,1,80,5,77,8,64,0,6,64,1,77,8,80,2,77,6,80,2,77,7,64,0,5,64,1,77,6,80,1
 FCB 81,8,80,1,81,2,80,2,77,6,64,0,5,64,1,77,1,80,1,82,17,80,1,77,6,64,0,5,64,1,77,10,80,1
 FCB 82,8,80,1,77,6,64,0,5,64
 FCB 8,77,6,80,7,77,6,64,0,12,64,7,77,13,64,0,32,64,0

 tile_Ground_raw:
 FCB 32,32,32,83,0,15,83,1,84,16,83,0,2,83,1,85,29,83,0,32,83,0,23,83,1,85,8,83,0,32,83,0
 FCB 5,83,1,84,26,83,0,31,83,1,84,0,11,83,1,85,20,83,0,32,83,0,32,83,0,23,83,1,84,8,83,0,17,83
 FCB 1,85,14
 FCB 83,0,3,83,1,85,28,83,0,25,83,1,85,6,83,0,29,83,1,85,2,83,0,32,83,0,10,83,1,84,21,83
 FCB 0,32,83,0,32,83,0,13,83,1,85,12,83,1,84,5,83,0,19,83,1,84,12,83,0,32,83,0,1,85,31,83,0
 FCB 4,83,1,84,27,83
 FCB 0,22,83,1,85,9,83,0,12,83,1,84,15,83,1,85,3,83,0,32,83,0,32,83,0,32,83,0,21,83,1,84
 FCB 10,83,0,3,83,1,85,28,83,0



 tile_Monster:
 FCB 32,32,32,64,0,32,64,0,32,64,0,32,64,0,32,64,0,9,64,14,0,9,64,0,9,64,14,0,9,64,0,9,64
 FCB 2,0,4,3,2,0,4,3,2,0,9,64,0,9,64,2,0,4,3,2,0,4,3,2,0,9,64,0,9,64,14,0,9,64,0,9,64,5,0,4,3
 FCB 5,0,9,64,0,9,64,4
 FCB 0,1,3,4,0,1,3,4,0,9,64,0,9,64,14,0,9,64,0,6,64,20,0,6,64,0,5,64,2,0,2,3,1,0,12,21,1,0
 FCB 2,3,2,0,5,64,0,4,64,3,0,3,3,2,0,8,21,2,0,3,3,3,0,4,64,0,3,64,5,0,4,3,2,0,4,21,2,0,4,3,5,0
 FCB 3,64,0,2,64,5,0
 FCB 1,21,2,0,4,3,4,0,4,3,2,0,1,21,5,0,2,64,0,1,64,6,0,3,21,1,0,10,3,1,0,3,21,6,0,1,64,0,1
 FCB 64,6,0,3,21,1,0,10,3,1,0,3,21,6,0,1,64,0,1,64,4,0,1,64,1,0,1,21,2,0,4,3,4,0,4,3,2,0,1,21
 FCB 1,0,1,64,4,0,1,64
 FCB 0,1,64,3,0,2,64,2,0,4,3,2,0,4,21,2,0,4,3,2,0,2,64,3,0,1,64,0,1,64,2,0,3,64,1,0,3,3,2
 FCB 0,8,21,2,0,3,3,1,0,3,64,2,0,1,64,0,6,64,1,0,2,3,1,0,12,21,1,0,2,3,1,0,6,64,0,6,64,20,0,6
 FCB 64,0,8,64,7,0,2,64
 FCB 7,0,8,64,0,8,64,7,0,2,64,7,0,8,64,0,8,64,7,0,2,64,7,0,8,64,0,8,64,7,0,2,64,7,0,8,64
 FCB 0,8,64,7,0,2,64,7,0,8,64,0,8,64,7,0,2,64,7,0,8,64,0,8,64,7,0,2,64,7,0,8,64,0

 tile_Monster_dead:
 FCB 32,32,32,64,0,32,64,0,32,64,0,32,64,0,32,64,0,32,64,0,32,64,0,32,64,0,32,64,0,32,64
 FCB 0,32,64,0,32,64,0,9,64,12,0,11,64,0,9,64,1,0,2,42,1,0,1,21,7,0,11,64,0,2,64,8,0,3,42,6
 FCB 0,1,42,1,0,11,64,0
 FCB 2,64,9,0,1,42,6,0,1,42,10,0,3,64,0,2,64,8,0,1,21,6,0,1,42,1,0,1,21,9,0,3,64,0,2,64
 FCB 8,0,1,21,5,0,2,42,1,0,1,21,5,0,1,42,1,0,1,42,1,0,3,64,0,2,64,8,0,2,21,1,0,4,42,1,0,2,21
 FCB 6,0,1,42,2,0,3,64
 FCB 0,2,64,8,0,2,21,1,0,4,42,1,0,2,21,2,0,1,42,2,0,1,42,1,0,1,42,1,0,3,64,0,2,64,8,0,3
 FCB 21,1,0,2,42,1,0,3,21,3,0,1,42,5,0,3,64,0,9,64,1,0,3,21,1,0,2,42,1,0,3,21,3,0,1,42,5,0
 FCB 3,64,0,9,64,1,0,3,21
 FCB 1,0,2,42,1,0,3,21,3,0,1,42,5,0,3,64,0,2,64,8,0,3,21,1,0,2,42,1,0,3,21,3,0,1,42,1,0
 FCB 1,42,1,0,1,42,1,0,3,64,0,2,64,8,0,2,21,1,0,4,42,1,0,2,21,2,0,1,42,3,0,1,42,2,0,3,64,0
 FCB 2,64,8,0,2,21,1,0,4
 FCB 42,1,0,2,21,5,0,1,42,1,0,1,42,1,0,3,64,0,2,64,8,0,1,21,5,0,2,42,1,0,1,21,9,0,3,64
 FCB 0,2,64,8,0,1,21,6,0,1,42,1,0,1,21,9,0,3,64,0,2,64,9,0,1,42,6,0,1,42,10,0,3,64,0,2,64
 FCB 8,0,3,42,6,0,1,42,1,0
 FCB 11,64,0,9,64,1,0,2,42,1,0,1,21,7,0,11,64,0,9,64,12,0,11,64,0

 tile_Menu_item_slot:
 FCB 16,16,16,0,0,1,0,15,8,0,1,0,1,8,13,0,1,8,0,1,0,1,8,1,0,11,4,1,0,1,8,0,1,0,1,8,1,0
 FCB 11,4,1,0,1,8,0,1,0,1,8,1,0,11,4,1,0,1,8,0,1,0,1,8,1,0,11,4,1,0,1,8,0,1,0,1,8,1,0,11,4
 FCB 1,0,1,8,0,1,0,1,8,1,0
 FCB 11,4,1,0,1,8,0,1,0,1,8,1,0,11,4,1,0,1,8,0,1,0,1,8,1,0,11,4,1,0,1,8,0,1,0,1,8,1,0
 FCB 11,4,1,0,1,8,0,1,0,1,8,1,0,11,4,1,0,1,8,0,1,0,1,8,1,0,11,4,1,0,1,8,0,1,0,1,8,13,0,1
 FCB 8,0,1,0,15,8,0

 tile_Crystal_base:
 FCB 32,32,32,64,0,32,64,0,32,64,0,32,64,0,32,64,0,32,64,0,32,64,0,32,64,0,32,64,0,32,64
 FCB 0,32,64,0,32,64,0,32,64,0,32,64,0,32,64,0,32,64,0,32,64,0,32,64,0,32,64,0,32,64,0,32,64
 FCB 0,32,64,0,11,64,4,0
 FCB 17,64,0,11,64,1,0,2,33,1,0,2,64,3,0,1,64,2,0,9,64,0,7,64,4,0,3,33,4,0,1,33,5,0,8,64
 FCB 0,6,64,1,0,8,33,2,0,6,33,2,0,7,64,0,5,64,1,0,6,33,1,2,8,33,1,2,2,33,2,0,6,64,0,5,64,1,0
 FCB 1,33,1,32,17,33,1,0
 FCB 6,64,0,5,64,1,0,10,33,1,32,8,33,1,0,6,64,0,5,64,8,0,6,33,7,0,6,64,0,12,64,7,0,13,64
 FCB 0,32,64,0



 tile_Hero_target:
 FCB 32,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15,240,15,240,15,240,15,240,12,0,0,48,12,0,0
 FCB 48,12,0,0,48,12,0,0,48,12,0,0,48,12,0,0,48,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 FCB 0,0,0,0,0,0,0
 FCB 0,0,12,0,0,48,12,0,0,48,12,0,0,48,12,0,0,48,12,0,0,48,12,0,0,48,15,240,15,240,15,240
 FCB 15,240,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

 tile_Menu_item_selector:
 FCB 17,17,0,7,240,0,7,240,0,63,254,0,63,254,0,63,254,0,255,255,128,255,255,128,255,255
 FCB 128,255,255,128,255,255,128,255,255,128,255,255,128,63,254,0,63,254,0,63,254,0,7,240,0
 FCB 7,240,0

 tile_Menu_skill_selector:
 FCB 24,24,0,0,255,0,0,255,0,63,255,252,63,255,252,63,255,252,63,255,252,63,255,252,63
 FCB 255,252,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255
 FCB 255,255,63,255,252,63,255,252,63,255,252,63,255,252,63,255,252,63,255,252,0,255,0,0,255,0

 tile_Exit:
 FCB 32,32,0,127,255,0,0,63,255,0,1,31,255,0,3,15,255,0,7,7,255,0,15,3,255,0,31,1,255,0
 FCB 63,0,255,0,127,0,127,0,255,0,63,1,255,0,31,3,255,0,15,7,255,0,7,15,255,0,3,31,255,0,1
 FCB 63,255,0,0,127,255
 FCB 255,254,0,0,255,252,128,0,255,248,192,0,255,240,224,0,255,224,240,0,255,192,248,0
 FCB 255,128,252,0,255,0,254,0,254,0,255,0,252,0,255,128,248,0,255,192,240,0,255,224,224,0
 FCB 255,240,192,0,255
 FCB 248,128,0,255,252,0,0,255,254

 tile_Res_HP_Heal:
 FCB 16,16,1,127,254,192,3,128,1,131,193,131,193,131,193,159,249,159,249,159,249,159,249
 FCB 131,193,131,193,131,193,128,1,192,3,127,254

 tile_Res_Batt_Heal:
 FCB 16,16,1,127,254,192,3,128,1,131,193,131,193,131,193,159,249,159,249,159,249,159,249
 FCB 131,193,131,193,131,193,128,1,192,3,127,254

 tile_Res_HP_Upgrade:
 FCB 16,16,1,127,254,192,3,128,1,162,121,162,69,162,69,162,69,190,121,162,65,162,65,162
 FCB 65,162,65,162,65,128,1,192,3,127,254

 tile_Res_Batt_Upgrade:
 FCB 16,16,1,127,254,192,3,128,1,135,193,132,33,132,33,132,33,135,193,132,33,132,33,132
 FCB 33,132,33,135,193,128,1,192,3,127,254

 tile_Res_Exp_Upgrade:
 FCB 16,16,1,127,254,192,3,128,1,186,185,162,165,162,165,162,165,185,57,162,161,162,161
 FCB 162,161,162,161,186,161,128,1,192,3,127,254

 tile_Res_Dmg_Upgrade:
 FCB 16,16,1,127,254,192,3,128,1,135,129,132,193,132,97,132,33,132,33,132,33,132,33,132
 FCB 97,132,193,135,129,128,1,192,3,127,254

 tile_Skill0:
 FCB 24,24,2,63,255,252,96,0,6,192,0,3,128,0,1,135,231,225,132,36,33,132,36,33,159,255
 FCB 249,144,0,9,144,0,137,144,0,137,151,195,233,144,0,137,144,0,137,144,0,9,144,0,9,144,0
 FCB 9,144,0,9,159,255
 FCB 249,128,0,1,128,0,1,192,0,3,96,0,6,63,255,252

 tile_Skill1:
 FCB 24,24,2,63,255,252,96,0,6,199,192,3,136,32,1,144,16,1,170,168,1,164,72,1,170,168,1
 FCB 160,8,1,159,240,129,149,81,193,159,243,65,149,82,97,143,226,61,128,6,101,128,60,205,128
 FCB 39,137,128,19,25
 FCB 128,9,145,128,15,241,128,8,17,192,15,243,96,0,6,63,255,252

 tile_Skill2:
 FCB 24,24,2,63,255,252,96,0,6,192,0,3,128,126,1,128,66,1,128,66,1,128,66,1,128,66,1,135
 FCB 255,225,132,198,33,132,49,161,131,140,65,130,99,65,129,24,129,129,198,129,128,177,1,128
 FCB 141,1,128,98,1
 FCB 128,90,1,128,36,1,128,24,1,192,0,3,96,0,6,63,255,252

 tile_Skill3:
 FCB 24,24,2,63,255,252,96,0,6,193,224,3,143,240,1,159,240,1,158,216,1,191,248,1,191,248
 FCB 1,183,240,1,191,224,129,158,193,193,135,131,65,128,2,97,128,2,61,128,6,101,128,60,205
 FCB 128,39,137,128,19
 FCB 25,128,9,145,128,15,241,128,8,17,192,15,243,96,0,6,63,255,252

 tile_Skill4:
 FCB 24,24,2,63,255,252,96,128,6,193,192,3,131,64,1,130,96,1,130,60,1,134,100,1,188,204,1
 FCB 167,136,1,147,24,129,137,145,193,143,243,65,136,18,97,143,242,61,128,6,101,128,60,205,128
 FCB 39,137,128
 FCB 19,25,128,9,145,128,15,241,128,8,17,192,15,243,96,0,6,63,255,252

 tile_Skill5:
 FCB 24,24,2,63,255,252,96,0,6,192,124,3,128,130,1,129,1,1,130,170,129,130,68,129,130,170
 FCB 129,130,0,129,129,255,1,129,85,1,129,255,1,129,85,1,128,254,1,128,0,1,158,247,17,130,149
 FCB 33,158,151,65
 FCB 144,144,185,144,145,41,158,242,57,192,0,3,96,0,6,63,255,252

 tile_Skill6:
 FCB 24,24,2,63,255,252,96,0,6,192,0,3,128,0,1,128,63,225,128,16,33,128,8,33,128,20,33,128
 FCB 62,33,128,65,33,128,240,161,129,15,97,131,130,33,132,100,1,140,24,1,146,16,1,161,32,1,152
 FCB 192,1,134
 FCB 128,1,129,0,1,128,0,1,192,0,3,96,0,6,63,255,252

 tile_Skill7:
 FCB 24,24,2,63,255,252,96,0,6,193,0,131,130,129,65,132,66,33,136,60,17,147,129,201,164,66
 FCB 37,168,36,21,169,36,149,164,66,37,163,129,197,160,16,5,160,36,5,160,72,5,144,82,9,136,100
 FCB 17,132,24
 FCB 33,130,0,65,129,255,129,128,0,1,192,0,3,96,0,6,63,255,252

 tile_Skill8:
 FCB 24,24,2,63,255,252,96,0,6,192,0,3,128,0,1,128,0,1,128,3,225,179,4,17,136,136,9,128,21
 FCB 85,190,210,37,128,21,85,136,16,5,177,15,249,134,10,169,128,15,249,128,10,169,128,7,241,128
 FCB 0,1,128,0
 FCB 1,128,0,1,128,0,1,192,0,3,96,0,6,63,255,252

 tile_Skill9:
 FCB 24,24,2,63,255,252,96,0,6,192,112,3,188,136,1,129,4,1,129,4,1,189,4,1,128,136,33,142
 FCB 112,17,137,224,9,136,99,253,136,80,9,136,145,17,128,137,33,189,10,1,129,132,1,129,96,1
 FCB 162,24,1,146,16
 FCB 1,140,32,1,128,64,1,192,128,3,96,0,6,63,255,252

 tile_Skill10:
 FCB 24,24,2,63,255,252,96,0,6,192,126,3,129,129,129,130,0,65,132,8,33,140,28,17,146,52,9
 FCB 145,38,9,160,227,197,160,102,69,163,220,197,162,120,133,161,53,133,160,155,5,144,255,137
 FCB 144,129,73
 FCB 136,255,49,132,0,33,130,0,65,129,129,129,192,126,3,96,0,6,63,255,252

 tile_Skill11:
 FCB 24,24,2,63,255,252,96,0,6,194,0,3,133,0,1,136,128,1,144,64,1,191,224,1,136,128,1,136
 FCB 128,1,136,128,129,136,129,193,136,131,65,143,130,97,128,2,61,128,6,101,128,60,205,128,39
 FCB 137,128,19
 FCB 25,128,9,145,128,15,241,128,8,17,192,15,243,96,0,6,63,255,252

 tile_Skill12:
 FCB 24,24,2,63,255,252,96,0,6,192,0,3,128,64,1,128,192,1,129,64,1,156,64,1,128,64,1,128
 FCB 64,1,129,240,129,128,1,193,128,3,65,128,2,97,128,2,61,128,6,101,128,60,205,128,39,137,128
 FCB 19,25,128,9
 FCB 145,128,15,241,128,8,17,192,15,243,96,0,6,63,255,252

 tile_Skill13:
 FCB 24,24,2,63,255,252,96,0,6,192,8,3,128,20,1,128,34,1,128,65,1,128,255,129,128,34,1,128
 FCB 34,1,128,34,1,128,62,1,128,0,1,128,126,1,129,195,129,130,129,65,132,129,33,136,129,17,137
 FCB 129,145,134
 FCB 129,97,128,195,1,128,126,1,192,0,3,96,0,6,63,255,252

 tile_Skill14:
 FCB 24,24,2,63,255,252,96,0,6,192,2,3,132,2,9,130,2,17,129,8,33,128,156,65,128,52,1,176,38
 FCB 1,140,35,197,128,102,89,131,204,193,130,120,129,129,49,129,128,153,1,130,255,33,132,129,17
 FCB 136,255,9
 FCB 144,0,5,128,130,1,128,130,1,193,1,3,96,0,6,63,255,252



 tiles:

 FDB tile_Ground_0
 FDB tile_Ground_90
 FDB tile_Ground_180
 FDB tile_Ground_270
 FDB tile_Rock
 FDB tile_Lava
 FDB tile_Crystal_red
 FDB tile_Crystal_yellow
 FDB tile_Crystal_blue
 FDB tile_Robot_left
 FDB tile_Robot_right
 FDB tile_Menu_item_temp
 FDB tile_Skill_temp


 FDB tile_Menu_head
 FDB tile_Menu_body
 FDB tile_Menu_legs
 FDB tile_Menu_gun
 FDB tile_Menu_tool
 FDB tile_Robot_left_raw
 FDB tile_Robot_right_raw
 FDB tile_Crystal_raw
 FDB tile_Ground_raw


 FDB tile_Monster
 FDB tile_Monster_dead
 FDB tile_Menu_item_slot
 FDB tile_Crystal_base


 FDB tile_Hero_target
 FDB tile_Menu_item_selector
 FDB tile_Menu_skill_selector
 FDB tile_Exit
 FDB tile_Res_HP_Heal
 FDB tile_Res_HP_Upgrade
 FDB tile_Res_Batt_Heal
 FDB tile_Res_Batt_Upgrade
 FDB tile_Res_Exp_Upgrade
 FDB tile_Res_Dmg_Upgrade
 FDB tile_Skill0
 FDB tile_Skill1
 FDB tile_Skill2
 FDB tile_Skill3
 FDB tile_Skill4
 FDB tile_Skill5
 FDB tile_Skill6
 FDB tile_Skill7
 FDB tile_Skill8
 FDB tile_Skill9
 FDB tile_Skill10
 FDB tile_Skill11
 FDB tile_Skill12
 FDB tile_Skill13
 FDB tile_Skill14


%line 48+1 main.asm

%line 1+1 colors.asm

 color_Basic_Head: FCB head,5,73,21,74,42,72,42,71,12,75,63
 color_Head_MKII: FCB head,5,73,21,74,58,72,58,71,48,75,63
 color_Head_MKIII: FCB head,5,73,21,74,53,72,53,71,15,75,63
 color_Head_MKIV: FCB head,5,73,21,74,32,72,32,71,50,75,63
 color_Lightning: FCB head,5,73,48,74,63,72,63,71,48,75,3
 color_Basic_Body: FCB body,2,65,21,66,42
 color_Tin_Body: FCB body,2,65,21,66,43
 color_Iron_Body: FCB body,2,65,21,66,23
 color_Steel_Body: FCB body,2,65,21,66,2
 color_Fortress: FCB body,2,65,3,66,63
 color_Basic_Legs: FCB legs,2,67,21,68,42
 color_Fast_Legs: FCB legs,2,67,21,68,46
 color_Quick_Legs: FCB legs,2,67,21,68,29
 color_Agile_Legs: FCB legs,2,67,21,68,8
 color_Mustang: FCB legs,2,67,12,68,63
 color_Basic_Gun: FCB gun,2,69,21,70,42
 color_Blaster: FCB gun,2,69,21,70,59
 color_Laser: FCB gun,2,69,21,70,55
 color_Phaser: FCB gun,2,69,21,70,34
 color_Death_Ray: FCB gun,2,69,50,70,63
 color_Basic_Tool: FCB tool,1,76,42
 color_Rock_Pick: FCB tool,1,76,47
 color_Rock_Drill: FCB tool,1,76,31
 color_Rock_Borer: FCB tool,1,76,10
 color_Laser_Bit: FCB tool,1,76,15
 color_Ground_0: FCB ground,3,83,59,84,32,85,2
 color_Ground_90: FCB ground,3,83,59,84,2,85,8
 color_Ground_180: FCB ground,3,83,59,84,8,85,10
 color_Ground_270: FCB ground,3,83,59,84,10,85,32
 color_Rock: FCB ground,3,83,33,84,50,85,32
 color_Lava: FCB ground,3,83,11,84,2,85,15
 color_Crystal_red: FCB crystal,5,80,33,82,32,81,2,78,23,79,43
 color_Crystal_yellow: FCB crystal,5,80,33,82,32,81,2,78,31,79,47
 color_Crystal_blue: FCB crystal,5,80,33,82,32,81,2,78,53,79,58


 item_colors:
 FDB color_Basic_Head
 FDB color_Head_MKII
 FDB color_Head_MKIII
 FDB color_Head_MKIV
 FDB color_Lightning
 FDB color_Basic_Body
 FDB color_Tin_Body
 FDB color_Iron_Body
 FDB color_Steel_Body
 FDB color_Fortress
 FDB color_Basic_Legs
 FDB color_Fast_Legs
 FDB color_Quick_Legs
 FDB color_Agile_Legs
 FDB color_Mustang
 FDB color_Basic_Gun
 FDB color_Blaster
 FDB color_Laser
 FDB color_Phaser
 FDB color_Death_Ray
 FDB color_Basic_Tool
 FDB color_Rock_Pick
 FDB color_Rock_Drill
 FDB color_Rock_Borer
 FDB color_Laser_Bit

 tile_colors:
 FDB color_Ground_0
 FDB color_Ground_90
 FDB color_Ground_180
 FDB color_Ground_270
 FDB color_Rock
 FDB color_Lava
 FDB color_Crystal_red
 FDB color_Crystal_yellow
 FDB color_Crystal_blue


 title_colors:
 FCB COLOR_GRAY_2
 FCB COLOR_GREEN
 FCB COLOR_BLUE
 FCB COLOR_PURPLE
 FCB COLOR_YELLOW

 crystal_colors:
 FCB COLOR_CRYSTAL_RED1
 FCB COLOR_CRYSTAL_BLUE1
 FCB COLOR_CRYSTAL_YELLOW1

%line 49+1 main.asm




 ORG $200

%line 1+1 globals.asm


 display_X:
%line 3+0 globals.asm
 DFS 1
 display_Y:
 DFS 1
%line 4+1 globals.asm
 hero_X:
%line 4+0 globals.asm
 DFS 1
 hero_Y:
 DFS 1
%line 5+1 globals.asm
 hero_HP:
%line 5+0 globals.asm
 DFS 2
%line 6+1 globals.asm
 hero_HP_Max:
%line 6+0 globals.asm
 DFS 2
%line 7+1 globals.asm
 hero_HP_Max_temp:
%line 7+0 globals.asm
 DFS 1
%line 8+1 globals.asm
 hero_HP_Upgrade:
%line 8+0 globals.asm
 DFS 1
%line 9+1 globals.asm
 hero_Batt:
%line 9+0 globals.asm
 DFS 1
%line 10+1 globals.asm
 hero_Batt_Max:
%line 10+0 globals.asm
 DFS 1
%line 11+1 globals.asm
 hero_Batt_Upgrade:
%line 11+0 globals.asm
 DFS 1
%line 12+1 globals.asm
 hero_Dmg:
%line 12+0 globals.asm
 DFS 1
%line 13+1 globals.asm
 hero_Dmg_Upgrade:
%line 13+0 globals.asm
 DFS 1
%line 14+1 globals.asm
 hero_Mine_Speed:
%line 14+0 globals.asm
 DFS 1
%line 15+1 globals.asm
 hero_Drill_Speed:
%line 15+0 globals.asm
 DFS 1
%line 16+1 globals.asm
 hero_Lava_Res:
%line 16+0 globals.asm
 DFS 1
%line 17+1 globals.asm
 hero_Batt_Recharge:
%line 17+0 globals.asm
 DFS 1
%line 18+1 globals.asm
 hero_Crit_Rate:
%line 18+0 globals.asm
 DFS 1
%line 19+1 globals.asm
 hero_HP_Recharge:
%line 19+0 globals.asm
 DFS 1
%line 20+1 globals.asm
 hero_Lava_Dmg:
%line 20+0 globals.asm
 DFS 2
%line 21+1 globals.asm
 hero_Dmg_Cost:
%line 21+0 globals.asm
 DFS 1
%line 22+1 globals.asm
 hero_Mine_Cost:
%line 22+0 globals.asm
 DFS 1
%line 23+1 globals.asm
 hero_Drill_Cost:
%line 23+0 globals.asm
 DFS 1
%line 24+1 globals.asm
 hero_Exp:
%line 24+0 globals.asm
 DFS 1
%line 25+1 globals.asm
 hero_Exp_Max:
%line 25+0 globals.asm
 DFS 1
%line 26+1 globals.asm
 hero_Level:
%line 26+0 globals.asm
 DFS 1
%line 27+1 globals.asm
 hero_Red:
%line 27+0 globals.asm
 DFS 1
%line 28+1 globals.asm
 hero_Blue:
%line 28+0 globals.asm
 DFS 1
%line 29+1 globals.asm
 hero_Yellow:
%line 29+0 globals.asm
 DFS 1
%line 30+1 globals.asm
 hero_Points:
%line 30+0 globals.asm
 DFS 1
%line 31+1 globals.asm
 hero_facing:
%line 31+0 globals.asm
 DFS 1
%line 32+1 globals.asm
 hero_target_direction:
%line 32+0 globals.asm
 DFS 1
%line 33+1 globals.asm
 hero_target_type:
%line 33+0 globals.asm
 DFS 1
%line 34+1 globals.asm
 hero_target_index:
%line 34+0 globals.asm
 DFS 1
%line 35+1 globals.asm
 hero_target_index2:
%line 35+0 globals.asm
 DFS 1
%line 36+1 globals.asm
 hero_activity:
%line 36+0 globals.asm
 DFS 1
%line 37+1 globals.asm
 hero_activity_ticks:
%line 37+0 globals.asm
 DFS 2
%line 38+1 globals.asm
 hero_activity_ticks_max:
%line 38+0 globals.asm
 DFS 2
%line 39+1 globals.asm
 hero_equipped: DFS 5
 hero_inventory: DFS INVENTORY_COUNT
 skill_list: DFS SKILL_COUNT
 menu_char_x:
%line 42+0 globals.asm
 DFS 1
%line 43+1 globals.asm
 menu_char_y:
%line 43+0 globals.asm
 DFS 1
%line 44+1 globals.asm
 menu_skills_x:
%line 44+0 globals.asm
 DFS 1
%line 45+1 globals.asm
 menu_skills_y:
%line 45+0 globals.asm
 DFS 1
%line 46+1 globals.asm
 menu_res_x:
%line 46+0 globals.asm
 DFS 1
%line 47+1 globals.asm
 menu_res_y:
%line 47+0 globals.asm
 DFS 1
%line 48+1 globals.asm
 menu_res_target:
%line 48+0 globals.asm
 DFS 1
%line 49+1 globals.asm
 draw_X:
%line 49+0 globals.asm
 DFS 1
%line 50+1 globals.asm
 output_mode:
%line 50+0 globals.asm
 DFS 1
%line 51+1 globals.asm

MONSTER_X = 0
MONSTER_Y = 1
MONSTER_ALIVE = 2
MONSTER_SIZE = 3
 monster_list:
 DFS MONSTER_COUNT*MONSTER_SIZE

CRYSTAL_X = 0
CRYSTAL_Y = 1
CRYSTAL_ACTIVE = 2
CRYSTAL_COLOR = 3
CRYSTAL_SIZE = 4
 crystal_list:
 DFS CRYSTAL_COUNT*CRYSTAL_SIZE

 map_data:
 DFS MAP_HEIGHT*MAP_WIDTH
 monster_map:
 DFS MAP_HEIGHT*MAP_WIDTH
 crystal_map:
 DFS MAP_HEIGHT*MAP_WIDTH
%line 55+1 main.asm


 EnableGfxRAM:
 LDA #BANK_GFX_RAM1
%line 58+0 main.asm
 STA RAM_BANK2
 STA RB2_COPY
%line 59+1 main.asm
 LDA #BANK_GFX_RAM2
%line 59+0 main.asm
 STA RAM_BANK3
 STA RB3_COPY
%line 60+1 main.asm
 RTS

 EnableBankROM:
 LDA #BANK_GEN_RAM2
%line 63+0 main.asm
 STA RAM_BANK2
 STA RB2_COPY
%line 64+1 main.asm
 LDA #BANK_GEN_RAM3
%line 64+0 main.asm
 STA RAM_BANK3
 STA RB3_COPY
%line 65+1 main.asm
 RTS

 Setup:

 LDX #0


 LDA #BANK_GEN_RAM1
%line 72+0 main.asm
 STA RAM_BANK1
 STA RB1_COPY
%line 73+1 main.asm



%line 75+0 main.asm




 JSR EnableGfxRAM
%line 76+1 main.asm



%line 78+0 main.asm







 LDA #($20) % 256
 STA rand_val
 LDA #($20) / 256
 STA rand_val+1
%line 79+1 main.asm
 RTS










 clrscr:

 color set ASSIGN_LOCAL_BYTE
%line 92+0 main.asm
 clrscr.a0 set clrscr.color
%line 93+1 main.asm

 gfx_ptr set ASSIGN_LOCAL_WORD
 rows set ASSIGN_LOCAL_BYTE



 LDX #128

%line 100+0 main.asm






















 LDA #(SCREEN_ADDRESS) % 256
 STA gfx_ptr
 LDA #(SCREEN_ADDRESS) / 256
 STA gfx_ptr+1
%line 101+1 main.asm

 LDA color
 LDY #0
 .loop_outer:
 .loop_inner:
 STA (gfx_ptr),Y
 DEY
 BNE .loop_inner
 INC gfx_ptr+1

 DEX
 BNE .loop_outer
 RTS



 CalcXY:

 posx set ASSIGN_LOCAL_BYTE
%line 119+0 main.asm
 CalcXY.a0 set CalcXY.posx
 posy set ASSIGN_LOCAL_BYTE
 CalcXY.a1 set CalcXY.posy
%line 120+1 main.asm


%line 121+0 main.asm




























 LDA posx
 STA ret_val
%line 122+1 main.asm
 LDA #SCREEN_ADDRESS>>8
 CLC
 ADC posy
 STA ret_val+1
 RTS

 TileAddress:

 tile_id set ASSIGN_LOCAL_BYTE
%line 130+0 main.asm
 TileAddress.a0 set TileAddress.tile_id
%line 131+1 main.asm


 LDA tile_id
 ASL
 ADC #tiles % 256
 STA ret_val
 LDA #0
 ADC #tiles>>8
 STA ret_val+1
 LDA (ret_val)
 PHA
 INC ret_val
%line 142+0 main.asm
 BNE ..@304.no_carry
 INC ret_val+1
 ..@304.no_carry:
%line 143+1 main.asm
 LDA (ret_val)
 STA ret_val+1
 PLA
 STA ret_val
 RTS

 CopyTile:

 dest_id set ASSIGN_LOCAL_BYTE
%line 151+0 main.asm
 CopyTile.a0 set CopyTile.dest_id
%line 152+1 main.asm
 source_id set ASSIGN_LOCAL_BYTE
%line 152+0 main.asm
 CopyTile.a1 set CopyTile.source_id
%line 153+1 main.asm

 dest_ptr set ASSIGN_LOCAL_WORD
 source_ptr set ASSIGN_LOCAL_WORD
 row_count set ASSIGN_LOCAL_BYTE


%line 158+0 main.asm



































































 LDA dest_id
 STA TileAddress.a0









 JSR TileAddress
%line 159+1 main.asm

%line 159+0 main.asm

































































 LDA ret_val
 STA dest_ptr
 LDA ret_val+1
 STA dest_ptr+1
%line 160+1 main.asm

%line 160+0 main.asm





























































 LDA source_id
 STA TileAddress.a0









 JSR TileAddress
%line 161+1 main.asm

%line 161+0 main.asm



























































 LDA ret_val
 STA source_ptr
 LDA ret_val+1
 STA source_ptr+1
%line 162+1 main.asm
 LDY #0
 LDA (source_ptr),Y
 STA (dest_ptr),Y
 INY
 LDA (source_ptr),Y
 STA (dest_ptr),Y
 TAX
 INY
 .ct.loop:
 LDA (source_ptr),Y
 STA (dest_ptr),Y
 BNE ..@410.skip
%line 173+0 main.asm
 JMP .if0
 ..@410.skip:
%line 174+1 main.asm

 INY
 LDA (source_ptr),Y
 STA (dest_ptr),Y
 INY
 BRA .ct.loop
 JMP .if1
%line 180+0 main.asm
 .if0:
%line 181+1 main.asm

 DEX
 BEQ .ct.done
 INY
 CPY #200
 BCC .ct.loop
 TYA
 SEC
 SBC #200
 TAY

%line 191+0 main.asm





















 LDA #(200) % 256

 CLC
 ADC source_ptr
 STA source_ptr
 BCC ..@413.skip
 INC source_ptr+1
 ..@413.skip:
%line 192+1 main.asm

%line 192+0 main.asm



























 LDA #(200) % 256

 CLC
 ADC dest_ptr
 STA dest_ptr
 BCC ..@423.skip
 INC dest_ptr+1
 ..@423.skip:
%line 193+1 main.asm
 BRA .ct.loop
 .if1:
 .ct.done:
 RTS

 DrawTile:

 tile set ASSIGN_LOCAL_BYTE
%line 200+0 main.asm
 DrawTile.a0 set DrawTile.tile
 xpos set ASSIGN_LOCAL_BYTE
 DrawTile.a1 set DrawTile.xpos
 ypos set ASSIGN_LOCAL_BYTE
 DrawTile.a2 set DrawTile.ypos
%line 201+1 main.asm

 t_width set ASSIGN_LOCAL_BYTE
%line 202+0 main.asm
 row_count set ASSIGN_LOCAL_BYTE
 t_count set ASSIGN_LOCAL_BYTE
 t_color set ASSIGN_LOCAL_BYTE
%line 203+1 main.asm
 gfx_ptr set ASSIGN_LOCAL_WORD
%line 203+0 main.asm
 tile_ptr set ASSIGN_LOCAL_WORD
%line 204+1 main.asm
 addr_temp set ASSIGN_LOCAL_WORD



%line 207+0 main.asm



















































































































 LDA xpos
 STA CalcXY.a0
































































































 LDA ypos
 STA CalcXY.a1








 JSR CalcXY
%line 208+1 main.asm

%line 208+0 main.asm





























































































































 LDA ret_val
 STA gfx_ptr
 LDA ret_val+1
 STA gfx_ptr+1
%line 209+1 main.asm

%line 209+0 main.asm


























































 LDA #(tiles) % 256
 STA tile_ptr
 LDA #(tiles) / 256
 STA tile_ptr+1
%line 210+1 main.asm

%line 210+0 main.asm

























































































































 LDA tile
 STA TileAddress.a0









 JSR TileAddress
%line 211+1 main.asm

%line 211+0 main.asm























































































































 LDA ret_val
 STA tile_ptr
 LDA ret_val+1
 STA tile_ptr+1
%line 212+1 main.asm
 LDA (tile_ptr)
 STA t_width
 LDY #1
 LDA (tile_ptr),Y
 TAX
 INY
 .dt.loop:




 LDA (tile_ptr),Y
 STA t_count
 INY
 BEQ ..@617.skip
%line 226+0 main.asm
 JMP .if2
 ..@617.skip:
%line 227+1 main.asm
 INC tile_ptr+1
 .if2:
 CMP #0
 BEQ ..@622.skip
%line 230+0 main.asm
 JMP .if3
 ..@622.skip:
%line 231+1 main.asm
 DEX
 BEQ .dt.return
 LDA #0
 SEC
 SBC t_width

%line 236+0 main.asm



























































 CLC
 ADC gfx_ptr
 STA gfx_ptr
 BCC ..@623.skip
 INC gfx_ptr+1
 ..@623.skip:
%line 237+1 main.asm
 BRA .dt.loop
 JMP .if4
%line 238+0 main.asm
 .if3:
%line 239+1 main.asm
 LDA (tile_ptr),Y
 STA t_color
 INY
 BEQ ..@643.skip
%line 242+0 main.asm
 JMP .if5
 ..@643.skip:
%line 243+1 main.asm
 INC tile_ptr+1
 .if5:
 CMP #COLOR_TRANSPARENT
 BEQ ..@647.skip
%line 246+0 main.asm
 JMP .if6
 ..@647.skip:
%line 247+1 main.asm

%line 247+0 main.asm



































































 LDA t_count

 CLC
 ADC gfx_ptr
 STA gfx_ptr
 BCC ..@648.skip
 INC gfx_ptr+1
 ..@648.skip:
%line 248+1 main.asm
 BRA .dt.loop
 JMP .if7
%line 249+0 main.asm
 .if6:
%line 250+1 main.asm

 PHY
 LDY t_count
 DEY
 LDA t_color
 .color.for:
 STA (gfx_ptr),Y
 DEY
 BPL .color.for
 LDA t_count
 CLC
 ADC gfx_ptr
 STA gfx_ptr


 PLY
 .if7:
 .if4:
 BRA .dt.loop
 .dt.return:

 RTS

 DrawTile1bpp:

 tile set ASSIGN_LOCAL_BYTE
%line 275+0 main.asm
 DrawTile1bpp.a0 set DrawTile1bpp.tile
 xpos set ASSIGN_LOCAL_BYTE
 DrawTile1bpp.a1 set DrawTile1bpp.xpos
 ypos set ASSIGN_LOCAL_BYTE
 DrawTile1bpp.a2 set DrawTile1bpp.ypos
 color1 set ASSIGN_LOCAL_BYTE
 DrawTile1bpp.a3 set DrawTile1bpp.color1
 color2 set ASSIGN_LOCAL_BYTE
 DrawTile1bpp.a4 set DrawTile1bpp.color2
%line 276+1 main.asm

 gfx_ptr set ASSIGN_LOCAL_WORD
%line 277+0 main.asm
 tile_ptr set ASSIGN_LOCAL_WORD
%line 278+1 main.asm
 t_width set ASSIGN_LOCAL_BYTE
%line 278+0 main.asm
 t_height set ASSIGN_LOCAL_BYTE
 edge_style set ASSIGN_LOCAL_BYTE
%line 279+1 main.asm
 row_count set ASSIGN_LOCAL_BYTE
%line 279+0 main.asm
 byte_count set ASSIGN_LOCAL_BYTE
 bit_count set ASSIGN_LOCAL_BYTE
%line 280+1 main.asm
 t_pixel set ASSIGN_LOCAL_BYTE
%line 280+0 main.asm
 skip_pixel set ASSIGN_LOCAL_BYTE
 trans_row set ASSIGN_LOCAL_BYTE
%line 281+1 main.asm
 t0 set ASSIGN_LOCAL_BYTE
%line 281+0 main.asm
 t1 set ASSIGN_LOCAL_BYTE
 t2 set ASSIGN_LOCAL_BYTE
 t3 set ASSIGN_LOCAL_BYTE
%line 282+1 main.asm



%line 284+0 main.asm

























































 STZ byte_count
%line 285+1 main.asm

%line 285+0 main.asm



















































 STZ bit_count
%line 286+1 main.asm


%line 287+0 main.asm

















































































































































































































































 LDA xpos
 STA CalcXY.a0






























































































































































































































 LDA ypos
 STA CalcXY.a1








 JSR CalcXY
%line 288+1 main.asm

%line 288+0 main.asm





















































































































































































































































 LDA ret_val
 STA gfx_ptr
 LDA ret_val+1
 STA gfx_ptr+1
%line 289+1 main.asm

%line 289+0 main.asm






















































































































 LDA #(tiles) % 256
 STA tile_ptr
 LDA #(tiles) / 256
 STA tile_ptr+1
%line 290+1 main.asm

%line 290+0 main.asm























































































































































































































































 LDA tile
 STA TileAddress.a0









 JSR TileAddress
%line 291+1 main.asm

%line 291+0 main.asm















































































































































































































































 LDA ret_val
 STA tile_ptr
 LDA ret_val+1
 STA tile_ptr+1
%line 292+1 main.asm

 LDA (tile_ptr)
 STA t_width
 LDY #1
 LDA (tile_ptr),Y
 STA t_height
 STA row_count
 INY
 LDA (tile_ptr),Y
 STA edge_style
 INY

 .dt1.loop:
 CPX #0
 BEQ ..@1002.skip
%line 306+0 main.asm
 JMP .if8
 ..@1002.skip:
%line 307+1 main.asm
 LDA (tile_ptr),Y
 STA t_pixel
 INY

 LDA bit_count
 BEQ ..@1005.skip
%line 312+0 main.asm
 JMP .if9
 ..@1005.skip:
%line 313+1 main.asm
 LDA edge_style
 BEQ ..@1008.skip
%line 314+0 main.asm
 JMP .if10
 ..@1008.skip:
%line 315+1 main.asm

%line 315+0 main.asm

































 LDA #(false) % 256
 STA trans_row
%line 316+1 main.asm
 JMP .if11
%line 316+0 main.asm
 .if10:
%line 317+1 main.asm
 LDA row_count
 CMP #1
 BEQ .dt1.row1
 CMP t_height
 BNE .dt1.row1_done
 .dt1.row1:

%line 323+0 main.asm



























 STZ t0
%line 324+1 main.asm
 LDA t_width
 DEC
 STA t1
 LDA edge_style
 CMP #2
 BEQ ..@1037.skip
%line 329+0 main.asm
 JMP .if12
 ..@1037.skip:
%line 330+1 main.asm

%line 330+0 main.asm















 LDA #(1) % 256
 STA t2
%line 331+1 main.asm
 LDA t_width
 DEC
 DEC
 STA t3
 JMP .if13
%line 335+0 main.asm
 .if12:
%line 336+1 main.asm
 LDA #$FF
 STA t2
 STA t3
 .if13:

%line 340+0 main.asm

































 LDA #(true) % 256
 STA trans_row
%line 341+1 main.asm
 BRA .dt1.rows_done
 .dt1.row1_done:
 LDA row_count
 CMP #2
 BEQ .dt1.row2a
 LDA t_height
 DEC
 CMP row_count
 BEQ .dt1.row2a
 BRA .dt1.row_else
 .dt1.row2a:
 LDA edge_style
 CMP #2
 BEQ ..@1067.skip
%line 354+0 main.asm
 JMP .if14
 ..@1067.skip:
%line 355+1 main.asm

%line 355+0 main.asm



























 STZ t0
%line 356+1 main.asm
 LDA t_width
 DEC
 STA t1
 LDA #$FF
 STA t2
 STA t3

%line 362+0 main.asm

































 LDA #(true) % 256
 STA trans_row
%line 363+1 main.asm
 JMP .if15
%line 363+0 main.asm
 .if14:
%line 364+1 main.asm
 BRA .dt1.row_else
 .if15:
 BRA .dt1.rows_done
 .dt1.row_else:

%line 368+0 main.asm

































 LDA #(false) % 256
 STA trans_row
%line 369+1 main.asm
 .dt1.rows_done:
 .if11:
 .if9:
 .if8:


%line 374+0 main.asm







































 LDA #(false) % 256
 STA skip_pixel
%line 375+1 main.asm
 LDA trans_row
 BNE ..@1132.skip
%line 376+0 main.asm
 JMP .if16
 ..@1132.skip:
%line 377+1 main.asm
 LDA bit_count
%line 377+0 main.asm

 BRA .s1c0
%line 378+1 main.asm
 JMP .s1done
%line 378+0 main.asm
 .s1c0:
 CMP t0
 BEQ ..@1135.skip
 JMP .s1c1
 ..@1135.skip:

 BRA .s1b1
 .s1c1:
 CMP t1
 BNE .s1c2
 BRA .s1b1
 BRA .s1b1
 .s1c2:
 CMP t2
 BNE .s1c3
 BRA .s1b1
 BRA .s1b1
 .s1c3:
 CMP t3
 BNE .s1c4
 BRA .s1b1

 .s1b1:
%line 379+1 main.asm

%line 379+0 main.asm







































 LDA #(true) % 256
 STA skip_pixel
%line 380+1 main.asm
 .s1c4:
%line 380+0 main.asm

 .s1done:





%line 381+1 main.asm
 .if16:
 .dt1.skip_false:

 LDA skip_pixel
 BEQ ..@1166.skip
%line 385+0 main.asm
 JMP .if17
 ..@1166.skip:
%line 386+1 main.asm
 LDA t_pixel
 BMI ..@1168.skip
%line 387+0 main.asm
 JMP .if18
 ..@1168.skip:
%line 388+1 main.asm
 LDA color1
 JMP .if19
%line 389+0 main.asm
 .if18:
%line 390+1 main.asm
 LDA color2
 .if19:

 CMP #COLOR_TRANSPARENT
 BNE ..@1174.skip
%line 394+0 main.asm
 JMP .if20
 ..@1174.skip:
%line 395+1 main.asm
 STA (gfx_ptr)
 .if20:
 .if17:

 INC gfx_ptr
%line 399+0 main.asm
 BNE ..@1179.no_carry
 INC gfx_ptr+1
 ..@1179.no_carry:
%line 400+1 main.asm
 ASL t_pixel

 INC bit_count
 LDA bit_count
 CMP t_width
 BEQ ..@1181.skip
%line 405+0 main.asm
 JMP .if21
 ..@1181.skip:
%line 406+1 main.asm

%line 406+0 main.asm



















































 STZ bit_count
%line 407+1 main.asm
 LDX #0
 DEC row_count
 LDA #0
 SEC
 SBC t_width

%line 412+0 main.asm























































































































 CLC
 ADC gfx_ptr
 STA gfx_ptr
 BCC ..@1199.skip
 INC gfx_ptr+1
 ..@1199.skip:
%line 413+1 main.asm
 JMP .if22
%line 413+0 main.asm
 .if21:
%line 414+1 main.asm
 CPX #7
 BEQ ..@1228.skip
%line 415+0 main.asm
 JMP .if23
 ..@1228.skip:
%line 416+1 main.asm
 LDX #0
 JMP .if24
%line 417+0 main.asm
 .if23:
%line 418+1 main.asm
 INX
 .if24:
 .if22:

 LDA row_count
 BEQ ..@1235.skip
%line 423+0 main.asm
 JMP .dt1.loop
 ..@1235.skip:
%line 424+1 main.asm

 RTS

 RotateTile90:

 dest set ASSIGN_LOCAL_BYTE
%line 429+0 main.asm
 RotateTile90.a0 set RotateTile90.dest
 src set ASSIGN_LOCAL_BYTE
 RotateTile90.a1 set RotateTile90.src
%line 430+1 main.asm

 gfx_ptr set ASSIGN_LOCAL_WORD
%line 431+0 main.asm
 dest_ptr set ASSIGN_LOCAL_WORD
%line 432+1 main.asm
 t_width set ASSIGN_LOCAL_BYTE
%line 432+0 main.asm
 row_count set ASSIGN_LOCAL_BYTE
%line 433+1 main.asm
 counter set ASSIGN_LOCAL_BYTE
 new_color set ASSIGN_LOCAL_BYTE
%line 434+0 main.asm
 new_count set ASSIGN_LOCAL_BYTE
%line 435+1 main.asm



%line 437+0 main.asm













































































































 LDA src
 STA DrawTile.a0






























































 STZ DrawTile.a1






























































 STZ DrawTile.a2







 JSR DrawTile
%line 438+1 main.asm

%line 438+0 main.asm



















































































































 LDA dest
 STA TileAddress.a0









 JSR TileAddress
%line 439+1 main.asm

%line 439+0 main.asm











































































































 LDA ret_val
 STA dest_ptr
 LDA ret_val+1
 STA dest_ptr+1
%line 440+1 main.asm

%line 440+0 main.asm













































































































 LDA src
 STA TileAddress.a0









 JSR TileAddress
%line 441+1 main.asm

%line 441+0 main.asm

















































































































 LDA ret_val
 STA gfx_ptr
 LDA ret_val+1
 STA gfx_ptr+1
%line 442+1 main.asm
 LDY #1
 LDA (gfx_ptr),Y
 STA row_count
 STA (dest_ptr),Y
 DEY
 LDA (gfx_ptr),Y
 STA t_width
 STA (dest_ptr),Y
 LDY #2
 STZ gfx_ptr
 .rt.loop_outer:
 LDA t_width
 CLC
 ADC #(SCREEN_ADDRESS>>8)-1
 STA gfx_ptr+1

%line 457+0 main.asm






































































 LDA (gfx_ptr)
 STA new_color
%line 458+1 main.asm

%line 458+0 main.asm









 LDA #(1) % 256
 STA new_count
%line 459+1 main.asm
 DEC gfx_ptr+1
 LDA t_width
 DEC
 LDX t_width
 DEX
 .rt.loop_inner:
 LDA (gfx_ptr)
 CMP new_color
 BEQ ..@1468.skip
%line 467+0 main.asm
 JMP .if25
 ..@1468.skip:
%line 468+1 main.asm

 INC new_count
 JMP .if26
%line 470+0 main.asm
 .if25:
%line 471+1 main.asm

 PHA
 LDA new_count
 STA (dest_ptr),Y
 INY
 LDA new_color
 STA (dest_ptr),Y
 INY
 PLA
 STA new_color
 LDA #1
 STA new_count
 .if26:
 DEC gfx_ptr+1
 DEX
 BNE .rt.loop_inner
 LDA new_count
 STA (dest_ptr),Y
 INY
 LDA new_color
 STA (dest_ptr),Y
 INY
 LDA #0
 STA (dest_ptr),Y
 INY
 INC gfx_ptr
 CPY #200
 BCS ..@1474.skip
%line 498+0 main.asm
 JMP .if27
 ..@1474.skip:
%line 499+1 main.asm
 TYA
 SEC
 SBC #200
 TAY

%line 503+0 main.asm













































 LDA #(200) % 256

 CLC
 ADC dest_ptr
 STA dest_ptr
 BCC ..@1475.skip
 INC dest_ptr+1
 ..@1475.skip:
%line 504+1 main.asm
 .if27:
 DEC row_count
 BNE .rt.loop_outer
 RTS

 ColorTile:

 tile set ASSIGN_LOCAL_BYTE
%line 511+0 main.asm
 ColorTile.a0 set ColorTile.tile
 color_index set ASSIGN_LOCAL_BYTE
 ColorTile.a1 set ColorTile.color_index
%line 512+1 main.asm

 tile_ptr set ASSIGN_LOCAL_WORD
%line 513+0 main.asm
 color_table set ASSIGN_LOCAL_WORD
%line 514+1 main.asm
 row_count set ASSIGN_LOCAL_BYTE
%line 514+0 main.asm
 t_color set ASSIGN_LOCAL_BYTE
 c_size set ASSIGN_LOCAL_BYTE
 i set ASSIGN_LOCAL_BYTE
%line 515+1 main.asm




%line 518+0 main.asm







































































































 LDA tile
 STA TileAddress.a0









 JSR TileAddress
%line 519+1 main.asm

%line 519+0 main.asm





































































































 LDA ret_val
 STA tile_ptr
 LDA ret_val+1
 STA tile_ptr+1
%line 520+1 main.asm


 LDA tile
%line 522+0 main.asm

 BRA .s2c0
%line 523+1 main.asm
 JMP .s2done
%line 523+0 main.asm
 .s2c0:
 CMP #Robot_left
 BEQ ..@1563.skip
 JMP .s2c1
 ..@1563.skip:

 BRA .s2b1
 .s2c1:
 CMP #Robot_right
 BNE .s2c2
 BRA .s2b1
 BRA .s2b1
 .s2c2:
 CMP #Menu_item_temp
 BNE .s2c3
 BRA .s2b1

 .s2b1:
%line 524+1 main.asm

%line 524+0 main.asm














































 LDA #(item_colors) % 256
 STA color_table
 LDA #(item_colors) / 256
 STA color_table+1
%line 525+1 main.asm
 JMP .s2done
%line 525+0 main.asm
 .s2c3:
%line 526+1 main.asm

%line 526+0 main.asm














































 LDA #(tile_colors) % 256
 STA color_table
 LDA #(tile_colors) / 256
 STA color_table+1
%line 527+1 main.asm
 .s2c4:
%line 527+0 main.asm

 .s2done:





%line 528+1 main.asm

 LDA color_index
 ASL

%line 531+0 main.asm









































 CLC
 ADC color_table
 STA color_table
 BCC ..@1608.skip
 INC color_table+1
 ..@1608.skip:
%line 532+1 main.asm
 LDA (color_table)
 PHA
 LDY #1
 LDA (color_table),Y
 STA color_table+1
 PLA
 STA color_table

 LDA (tile_ptr),Y
 STA row_count
 LDA (color_table),Y

 STA c_size
 INY

 .color.loop1:
 LDA (tile_ptr),Y
 BEQ ..@1623.skip
%line 549+0 main.asm
 JMP .if28
 ..@1623.skip:
%line 550+1 main.asm

 INY
 CPY #200
 BCS ..@1626.skip
%line 553+0 main.asm
 JMP .if29
 ..@1626.skip:
%line 554+1 main.asm
 TYA
 SEC
 SBC #200
 TAY

%line 558+0 main.asm













































 LDA #(200) % 256

 CLC
 ADC tile_ptr
 STA tile_ptr
 BCC ..@1627.skip
 INC tile_ptr+1
 ..@1627.skip:
%line 559+1 main.asm
 .if29:
 DEC row_count
 BNE .color.loop1
 JMP .if30
%line 562+0 main.asm
 .if28:
%line 563+1 main.asm

 INY
 LDA (tile_ptr),Y
 STA t_color
 CMP #COLOR_TRANSPARENT+1
 BCS ..@1647.skip
%line 568+0 main.asm
 JMP .if31
 ..@1647.skip:
%line 569+1 main.asm

 PHY
 LDY #2


 LDX c_size


 .color.loop2:
 LDA t_color
 CMP (color_table),Y
 BEQ ..@1649.skip
%line 580+0 main.asm
 JMP .if32
 ..@1649.skip:
%line 581+1 main.asm

 INY
 LDA (color_table),Y
 PLY
 STA (tile_ptr),Y
 INY
 BRA .color.loop1
 JMP .if33
%line 588+0 main.asm
 .if32:
%line 589+1 main.asm
 INY
 INY
 DEX
 BNE .color.loop2

 PLY
 .if33:
 .if31:
 INY
 BRA .color.loop1
 .if30:
 RTS

 tiles_to_color: FCB Ground_0, Ground_90, Ground_180, Ground_270, Rock, Lava
 FCB Crystal_red, Crystal_blue, Crystal_yellow

 LoadTiles:

 color_tile set ASSIGN_LOCAL_BYTE



%line 610+0 main.asm



























 LDA #(Ground_0) % 256
 STA CopyTile.a0














 LDA #(Ground_raw) % 256
 STA CopyTile.a1








 JSR CopyTile
%line 611+1 main.asm

%line 611+0 main.asm



























 LDA #(Ground_90) % 256
 STA RotateTile90.a0














 LDA #(Ground_0) % 256
 STA RotateTile90.a1








 JSR RotateTile90
%line 612+1 main.asm

%line 612+0 main.asm



























 LDA #(Ground_180) % 256
 STA RotateTile90.a0














 LDA #(Ground_90) % 256
 STA RotateTile90.a1








 JSR RotateTile90
%line 613+1 main.asm

%line 613+0 main.asm



























 LDA #(Ground_270) % 256
 STA RotateTile90.a0














 LDA #(Ground_180) % 256
 STA RotateTile90.a1








 JSR RotateTile90
%line 614+1 main.asm

%line 614+0 main.asm



























 LDA #(Rock) % 256
 STA CopyTile.a0














 LDA #(Ground_raw) % 256
 STA CopyTile.a1








 JSR CopyTile
%line 615+1 main.asm

%line 615+0 main.asm



























 LDA #(Lava) % 256
 STA CopyTile.a0














 LDA #(Ground_raw) % 256
 STA CopyTile.a1








 JSR CopyTile
%line 616+1 main.asm

%line 616+0 main.asm



























 LDA #(Crystal_red) % 256
 STA CopyTile.a0














 LDA #(Crystal_raw) % 256
 STA CopyTile.a1








 JSR CopyTile
%line 617+1 main.asm

%line 617+0 main.asm



























 LDA #(Crystal_blue) % 256
 STA CopyTile.a0














 LDA #(Crystal_raw) % 256
 STA CopyTile.a1








 JSR CopyTile
%line 618+1 main.asm

%line 618+0 main.asm



























 LDA #(Crystal_yellow) % 256
 STA CopyTile.a0














 LDA #(Crystal_raw) % 256
 STA CopyTile.a1








 JSR CopyTile
%line 619+1 main.asm

 LDY #0
 .lt.loop:
 LDA tiles_to_color,Y
 STA color_tile
 PHY

%line 625+0 main.asm































 LDA color_tile
 STA ColorTile.a0


















 LDA color_tile
 STA ColorTile.a1








 JSR ColorTile
%line 626+1 main.asm
 PLY
 INY
 CPY #9
 BNE .lt.loop

 RTS

 ColorHero:

%line 634+0 main.asm





















 LDA #(Robot_left) % 256
 STA CopyTile.a0








 LDA #(Robot_left_raw) % 256
 STA CopyTile.a1








 JSR CopyTile
%line 635+1 main.asm

%line 635+0 main.asm





















 LDA #(Robot_left) % 256
 STA ColorTile.a0









 LDA hero_equipped+head
 STA ColorTile.a1








 JSR ColorTile
%line 636+1 main.asm

%line 636+0 main.asm





















 LDA #(Robot_left) % 256
 STA ColorTile.a0









 LDA hero_equipped+body
 STA ColorTile.a1








 JSR ColorTile
%line 637+1 main.asm

%line 637+0 main.asm





















 LDA #(Robot_left) % 256
 STA ColorTile.a0









 LDA hero_equipped+legs
 STA ColorTile.a1








 JSR ColorTile
%line 638+1 main.asm

%line 638+0 main.asm





















 LDA #(Robot_left) % 256
 STA ColorTile.a0









 LDA hero_equipped+gun
 STA ColorTile.a1








 JSR ColorTile
%line 639+1 main.asm

%line 639+0 main.asm





















 LDA #(Robot_left) % 256
 STA ColorTile.a0









 LDA hero_equipped+tool
 STA ColorTile.a1








 JSR ColorTile
%line 640+1 main.asm


%line 641+0 main.asm





















 LDA #(Robot_right) % 256
 STA CopyTile.a0








 LDA #(Robot_right_raw) % 256
 STA CopyTile.a1








 JSR CopyTile
%line 642+1 main.asm

%line 642+0 main.asm





















 LDA #(Robot_right) % 256
 STA ColorTile.a0









 LDA hero_equipped+head
 STA ColorTile.a1








 JSR ColorTile
%line 643+1 main.asm

%line 643+0 main.asm





















 LDA #(Robot_right) % 256
 STA ColorTile.a0









 LDA hero_equipped+body
 STA ColorTile.a1








 JSR ColorTile
%line 644+1 main.asm

%line 644+0 main.asm





















 LDA #(Robot_right) % 256
 STA ColorTile.a0









 LDA hero_equipped+legs
 STA ColorTile.a1








 JSR ColorTile
%line 645+1 main.asm

%line 645+0 main.asm





















 LDA #(Robot_right) % 256
 STA ColorTile.a0









 LDA hero_equipped+gun
 STA ColorTile.a1








 JSR ColorTile
%line 646+1 main.asm

%line 646+0 main.asm





















 LDA #(Robot_right) % 256
 STA ColorTile.a0









 LDA hero_equipped+tool
 STA ColorTile.a1








 JSR ColorTile
%line 647+1 main.asm
 RTS




 rand:


 LDA rand_val+1
 CLC
 ROR
 LDA rand_val
 ROR
 EOR rand_val+1
 STA rand_val+1
 LDA #0
 ROR
 EOR rand_val
 STA rand_val

 LDA rand_val+1
 CLC
 ROR
 EOR rand_val
 STA rand_val




 LDA rand_val
 EOR rand_val+1
 STA rand_val+1




 RTS

 rand8:

 max set ASSIGN_LOCAL_BYTE
%line 687+0 main.asm
 rand8.a0 set rand8.max
%line 688+1 main.asm

 divisor set ASSIGN_LOCAL_WORD



%line 692+0 main.asm









 JSR rand
%line 693+1 main.asm

%line 693+0 main.asm
































 LDA rand_val
 STA ret_val
 LDA rand_val+1
 STA ret_val+1
%line 694+1 main.asm
 LDA max
 STA divisor+1
 STZ divisor

 .r8.loop:

%line 699+0 main.asm












 LDA ret_val
 SEC
 SBC divisor
 STA ret_val
 LDA ret_val+1
 SBC divisor+1
 STA ret_val+1
%line 700+1 main.asm
 BCS .r8.loop


%line 702+0 main.asm












 LDA divisor
 CLC
 ADC ret_val
 STA ret_val
 LDA divisor+1
 ADC ret_val+1
 STA ret_val+1
%line 703+1 main.asm

 CLC
 ROR divisor+1
%line 705+0 main.asm
 ROR divisor
%line 706+1 main.asm

 LDA ret_val+1
 BNE .r8.loop

 LDA ret_val
 CMP max
 BCS .r8.loop

 RTS

 rand5050:

%line 717+0 main.asm









 JSR rand
%line 718+1 main.asm
 LDA rand_val
 AND #1
 STA ret_val
 RTS

 CalcStats:

 Mine1s set ASSIGN_LOCAL_BYTE
%line 725+0 main.asm
 Drill1s set ASSIGN_LOCAL_BYTE
%line 726+1 main.asm
 item_counter set ASSIGN_LOCAL_BYTE
%line 726+0 main.asm
 stat_counter set ASSIGN_LOCAL_BYTE
 stat_max set ASSIGN_LOCAL_BYTE
 stat_ID set ASSIGN_LOCAL_BYTE
 stat_val set ASSIGN_LOCAL_BYTE
%line 727+1 main.asm
 item_ptr set ASSIGN_LOCAL_WORD
%line 727+0 main.asm
 stat_ptr set ASSIGN_LOCAL_WORD
%line 728+1 main.asm



 LDA hero_HP_Upgrade
 CLC
 ADC #2
 STA hero_HP_Max_temp

 LDA hero_Batt_Upgrade
 CLC
 ADC #3
 STA hero_Batt_Max


%line 741+0 main.asm



















































































































 LDA hero_Dmg_Upgrade
 STA hero_Dmg
%line 742+1 main.asm

%line 742+0 main.asm




























































 LDA #(8) % 256
 STA hero_Mine_Speed
%line 743+1 main.asm

%line 743+0 main.asm




























































 LDA #(12) % 256
 STA hero_Drill_Speed
%line 744+1 main.asm

%line 744+0 main.asm




























































 LDA #(1) % 256
 STA hero_Batt_Recharge
%line 745+1 main.asm

%line 745+0 main.asm




























































 LDA #(5) % 256
 STA hero_Crit_Rate
%line 746+1 main.asm

%line 746+0 main.asm




























































 STZ hero_HP_Recharge
%line 747+1 main.asm

%line 747+0 main.asm




























































 STZ hero_Lava_Res
%line 748+1 main.asm

%line 748+0 main.asm





























































 LDA #(4) % 256
 STA hero_Lava_Dmg
 LDA #(4) / 256
 STA hero_Lava_Dmg+1
%line 749+1 main.asm

%line 749+0 main.asm




























































 LDA #(4) % 256
 STA hero_Dmg_Cost
%line 750+1 main.asm

%line 750+0 main.asm




























































 LDA #(2) % 256
 STA hero_Mine_Cost
%line 751+1 main.asm

%line 751+0 main.asm




























































 LDA #(2) % 256
 STA hero_Drill_Cost
%line 752+1 main.asm

%line 752+0 main.asm













































 LDA #(false) % 256
 STA Mine1s
%line 753+1 main.asm

%line 753+0 main.asm







































 LDA #(false) % 256
 STA Drill1s
%line 754+1 main.asm


%line 755+0 main.asm

































 STZ item_counter
%line 756+1 main.asm
 .cs.loop:
 LDY item_counter
 LDA hero_equipped,Y
 ASL
 TAY
 LDA item_stats,Y
 STA item_ptr
 LDA item_stats+1,Y
 STA item_ptr+1
 LDY #stat_count
 LDA (item_ptr),Y
 STA stat_max
 LDX #0
 .cs.stats:
 TXA
 ASL
 ADC #stat_begin
 TAY
 LDA (item_ptr),Y
 PHY
 STA stat_ID
 ASL
 TAY
 LDA stat_pointers,Y
 STA stat_ptr
 LDA stat_pointers+1,Y
 STA stat_ptr+1
 PLY
 INY
 LDA (item_ptr),Y
 STA stat_val

 LDA stat_ptr
 ORA stat_ptr+1
 BEQ ..@2590.skip
%line 790+0 main.asm
 JMP .if34
 ..@2590.skip:
%line 791+1 main.asm
 LDA stat_ID

%line 792+0 main.asm
 BRA .s3c0
%line 793+1 main.asm
 JMP .s3done
%line 793+0 main.asm
 .s3c0:
 CMP #stat_Mine
 BEQ ..@2593.skip
 JMP .s3c1
 ..@2593.skip:


 .s3b1:
%line 794+1 main.asm
 LDA hero_Mine_Speed
 SEC
 SBC stat_val
 STA hero_Mine_Speed
 JMP .s3done
%line 798+0 main.asm
 .s3c1:
 CMP #stat_Mine1s
 BEQ ..@2602.skip
 JMP .s3c2
 ..@2602.skip:


 .s3b2:
%line 799+1 main.asm

%line 799+0 main.asm













































 LDA #(true) % 256
 STA Mine1s
%line 800+1 main.asm
 JMP .s3done
%line 800+0 main.asm
 .s3c2:
 CMP #stat_Drill
 BEQ ..@2626.skip
 JMP .s3c3
 ..@2626.skip:


 .s3b3:
%line 801+1 main.asm
 LDA hero_Drill_Speed
 SEC
 SBC stat_val
 STA hero_Drill_Speed
 JMP .s3done
%line 805+0 main.asm
 .s3c3:
 CMP #stat_Drill1s
 BEQ ..@2635.skip
 JMP .s3c4
 ..@2635.skip:


 .s3b4:
%line 806+1 main.asm

%line 806+0 main.asm







































 LDA #(true) % 256
 STA Drill1s
%line 807+1 main.asm
 JMP .s3done
%line 807+0 main.asm
 .s3c4:
 CMP #stat_Lava_Heals
 BEQ ..@2658.skip
 JMP .s3c5
 ..@2658.skip:


 .s3b5:
%line 808+1 main.asm

%line 808+0 main.asm





























































 LDA #($FFFF) % 256
 STA hero_Lava_Dmg
 LDA #($FFFF) / 256
 STA hero_Lava_Dmg+1
%line 809+1 main.asm
 JMP .s3done
%line 809+0 main.asm
 .s3c5:
 CMP #stat_Dmg_Cost_50
 BEQ ..@2684.skip
 JMP .s3c6
 ..@2684.skip:


 .s3b6:
%line 810+1 main.asm

%line 810+0 main.asm




























































 LDA #(2) % 256
 STA hero_Dmg_Cost
%line 811+1 main.asm
 JMP .s3done
%line 811+0 main.asm
 .s3c6:
 CMP #stat_Mine_Cost_50
 BEQ ..@2710.skip
 JMP .s3c7
 ..@2710.skip:


 .s3b7:
%line 812+1 main.asm

%line 812+0 main.asm




























































 LDA #(1) % 256
 STA hero_Mine_Cost
%line 813+1 main.asm
 .s3c7:
%line 813+0 main.asm

 .s3done:





%line 814+1 main.asm
 JMP .if35
%line 814+0 main.asm
 .if34:
%line 815+1 main.asm
 LDA stat_val
 CLC
 ADC (stat_ptr)
 STA (stat_ptr)
 .if35:

 INX
 CPX stat_max
 BEQ ..@2744.skip
%line 823+0 main.asm
 JMP .cs.stats
 ..@2744.skip:
%line 824+1 main.asm
 INC item_counter
 LDA item_counter
 CMP #SLOT_COUNT
 BEQ ..@2745.skip
%line 827+0 main.asm
 JMP .cs.loop
 ..@2745.skip:
%line 828+1 main.asm

 LDA skill_list+Fast_Digger
 BNE ..@2748.skip
%line 830+0 main.asm
 JMP .if36
 ..@2748.skip:
%line 831+1 main.asm
 DEC hero_Mine_Speed
 DEC hero_Mine_Speed
 DEC hero_Drill_Speed
 DEC hero_Drill_Speed
 .if36:

 LDA Mine1s
 BNE ..@2753.skip
%line 838+0 main.asm
 JMP .if37
 ..@2753.skip:
%line 839+1 main.asm

%line 839+0 main.asm




























































 LDA #(1) % 256
 STA hero_Mine_Speed
%line 840+1 main.asm
 .if37:

 LDA Drill1s
 BNE ..@2775.skip
%line 843+0 main.asm
 JMP .if38
 ..@2775.skip:
%line 844+1 main.asm

%line 844+0 main.asm




























































 LDA #(1) % 256
 STA hero_Drill_Speed
%line 845+1 main.asm
 .if38:

 LDA skill_list+Lucky_Crit
 BNE ..@2797.skip
%line 848+0 main.asm
 JMP .if39
 ..@2797.skip:
%line 849+1 main.asm
 LDA hero_Crit_Rate
 CLC
 ADC #20
 STA hero_Crit_Rate
 .if39:

 LDA hero_Lava_Dmg
 AND hero_Lava_Dmg+1
 CMP #$FF
 BNE ..@2801.skip
%line 858+0 main.asm
 JMP .if40
 ..@2801.skip:
%line 859+1 main.asm
 LDA hero_Lava_Res
%line 859+0 main.asm

 BRA .s4c0
%line 860+1 main.asm
 JMP .s4done
%line 860+0 main.asm
 .s4c0:
 CMP #25
 BEQ ..@2804.skip
 JMP .s4c1
 ..@2804.skip:


 .s4b1:
%line 861+1 main.asm

%line 861+0 main.asm





























































 LDA #(3) % 256
 STA hero_Lava_Dmg
 LDA #(3) / 256
 STA hero_Lava_Dmg+1
%line 862+1 main.asm
 JMP .s4done
%line 862+0 main.asm
 .s4c1:
 CMP #50
 BEQ ..@2830.skip
 JMP .s4c2
 ..@2830.skip:


 .s4b2:
%line 863+1 main.asm

%line 863+0 main.asm





























































 LDA #(2) % 256
 STA hero_Lava_Dmg
 LDA #(2) / 256
 STA hero_Lava_Dmg+1
%line 864+1 main.asm
 .s4c2:
%line 864+0 main.asm

 .s4done:





%line 865+1 main.asm
 .if40:


%line 867+0 main.asm



















































































































 LDA hero_HP_Max_temp
 STA hero_HP_Max
%line 868+1 main.asm

 LDA hero_HP_Max
 CMP hero_HP
 BCC ..@2890.skip
%line 871+0 main.asm
 JMP .if41
 ..@2890.skip:
%line 872+1 main.asm

%line 872+0 main.asm




















































































































 LDA hero_HP_Max
 STA hero_HP
 LDA hero_HP_Max+1
 STA hero_HP+1
%line 873+1 main.asm
 .if41:

 LDA hero_Batt_Max
 CMP hero_Batt
 BCC ..@2921.skip
%line 877+0 main.asm
 JMP .if42
 ..@2921.skip:
%line 878+1 main.asm

%line 878+0 main.asm



















































































































 LDA hero_Batt_Max
 STA hero_Batt
%line 879+1 main.asm
 .if42:

 RTS



 MazeHorizStripe:

 value set ASSIGN_LOCAL_BYTE
%line 887+0 main.asm
 MazeHorizStripe.a0 set MazeHorizStripe.value
%line 888+1 main.asm

 stripe_X set ASSIGN_LOCAL_BYTE
%line 889+0 main.asm
 stripe_Y set ASSIGN_LOCAL_BYTE
 stripe_width set ASSIGN_LOCAL_BYTE
 stripe_height set ASSIGN_LOCAL_BYTE
%line 890+1 main.asm
 stripe_dx set ASSIGN_LOCAL_BYTE
%line 890+0 main.asm
 stripe_dy set ASSIGN_LOCAL_BYTE
%line 891+1 main.asm
 map_ptr set ASSIGN_LOCAL_WORD
 c_buff set ASSIGN_LOCAL_BYTE
%line 892+0 main.asm
 counter set ASSIGN_LOCAL_BYTE
%line 893+1 main.asm



%line 895+0 main.asm

















































































 LDA #(MAP_WIDTH) % 256
 STA rand8.a0









 JSR rand8
%line 896+1 main.asm

%line 896+0 main.asm
















































































































 LDA ret_val
 STA stripe_X
%line 897+1 main.asm

%line 897+0 main.asm

















































































 LDA #(MAP_HEIGHT) % 256
 STA rand8.a0









 JSR rand8
%line 898+1 main.asm

%line 898+0 main.asm










































































































 LDA ret_val
 STA stripe_Y
%line 899+1 main.asm


%line 900+0 main.asm

















































































 LDA #(MAP_LAVA_SIZE-1) % 256
 STA rand8.a0









 JSR rand8
%line 901+1 main.asm
 LDA ret_val
 CLC
 ADC #1
 STA stripe_width


%line 906+0 main.asm

















































































 LDA #(MAP_LAVA_SIZE-1) % 256
 STA rand8.a0









 JSR rand8
%line 907+1 main.asm
 LDA ret_val
 CLC
 ADC #1
 STA stripe_height


%line 912+0 main.asm









 JSR rand5050
%line 913+1 main.asm

%line 913+0 main.asm
























































































 LDA ret_val
 STA stripe_dx
%line 914+1 main.asm

%line 914+0 main.asm









 JSR rand5050
%line 915+1 main.asm

%line 915+0 main.asm


















































































 LDA ret_val
 STA stripe_dy
%line 916+1 main.asm


 LDA #map_data % 256
 CLC
 ADC stripe_X
 STA map_ptr
 LDA #map_data>>8
 ADC #0
 STA map_ptr+1

 LDY stripe_Y
 BNE ..@3181.skip
%line 927+0 main.asm
 JMP .if43
 ..@3181.skip:
%line 928+1 main.asm
 .mhs.mult:

%line 929+0 main.asm

























































 LDA #(MAP_WIDTH) % 256

 CLC
 ADC map_ptr
 STA map_ptr
 BCC ..@3182.skip
 INC map_ptr+1
 ..@3182.skip:
%line 930+1 main.asm
 DEY
 BNE .mhs.mult
 .if43:

 .mhs.height:
 LDY stripe_width
 .mhs.width:
 LDA stripe_X
 CMP #MAP_WIDTH
 BCS .mhs.done
 LDA stripe_Y
 CMP #MAP_HEIGHT
 BCS .mhs.done
 LDA value
 STA (map_ptr)
 LDA stripe_dx
 BNE ..@3202.skip
%line 946+0 main.asm
 JMP .if44
 ..@3202.skip:
%line 947+1 main.asm
 DEC stripe_X
 BMI .mhs.done
 LDA map_ptr
%line 949+0 main.asm
 SEC
 SBC #1
 STA map_ptr
 BCS ..@3203.no_underflow
 DEC map_ptr+1
 ..@3203.no_underflow:
%line 950+1 main.asm
 JMP .if45
%line 950+0 main.asm
 .if44:
%line 951+1 main.asm
 INC stripe_X
 INC map_ptr
%line 952+0 main.asm
 BNE ..@3206.no_carry
 INC map_ptr+1
 ..@3206.no_carry:
%line 953+1 main.asm
 .if45:
 DEY
 BNE .mhs.width
 LDA stripe_dy
 BNE ..@3211.skip
%line 957+0 main.asm
 JMP .if46
 ..@3211.skip:
%line 958+1 main.asm
 DEC stripe_Y
 BMI .mhs.done

%line 960+0 main.asm


























































 LDA map_ptr

 SEC
 SBC #MAP_WIDTH

 STA map_ptr
 BCS ..@3212.skip
 DEC map_ptr+1
 ..@3212.skip:
%line 961+1 main.asm
 JMP .if47
%line 961+0 main.asm
 .if46:
%line 962+1 main.asm
 INC stripe_Y

%line 963+0 main.asm

























































 LDA #(MAP_WIDTH) % 256

 CLC
 ADC map_ptr
 STA map_ptr
 BCC ..@3230.skip
 INC map_ptr+1
 ..@3230.skip:
%line 964+1 main.asm
 .if47:
 DEC stripe_height
 BNE .mhs.height
 .mhs.done:
 RTS

 FillMap:

 ptr_in set ASSIGN_LOCAL_WORD
%line 972+0 main.asm
 FillMap.a0 set FillMap.ptr_in
%line 973+1 main.asm
 value set ASSIGN_LOCAL_BYTE
%line 973+0 main.asm
 FillMap.a1 set FillMap.value
%line 974+1 main.asm

 map_ptr set ASSIGN_LOCAL_WORD
 counter set ASSIGN_LOCAL_BYTE



%line 979+0 main.asm












































 LDA ptr_in
 STA map_ptr
 LDA ptr_in+1
 STA map_ptr+1
%line 980+1 main.asm

%line 980+0 main.asm









 LDA #(MAP_HEIGHT/5) % 256
 STA counter
%line 981+1 main.asm
 .fm.loop_outer:
 LDA value
 LDY #MAP_WIDTH*5
 .fm.loop:
 DEY
 STA (map_ptr),Y
 BNE .fm.loop

%line 988+0 main.asm















 LDA #(200) % 256

 CLC
 ADC map_ptr
 STA map_ptr
 BCC ..@3286.skip
 INC map_ptr+1
 ..@3286.skip:
%line 989+1 main.asm
 DEC counter
 BNE .fm.loop_outer
 RTS

 OffsetXY:

 map set ASSIGN_LOCAL_WORD
%line 995+0 main.asm
 OffsetXY.a0 set OffsetXY.map
%line 996+1 main.asm
 mX set ASSIGN_LOCAL_BYTE
%line 996+0 main.asm
 OffsetXY.a1 set OffsetXY.mX
 mY set ASSIGN_LOCAL_BYTE
 OffsetXY.a2 set OffsetXY.mY
%line 997+1 main.asm



%line 999+0 main.asm









































 LDA map
 STA ret_val
 LDA map+1
 STA ret_val+1
%line 1000+1 main.asm
 LDY mY
 .oxy.mult:
 BNE ..@3322.skip
%line 1002+0 main.asm
 JMP .if48
 ..@3322.skip:
%line 1003+1 main.asm

%line 1003+0 main.asm


















 LDA #(MAP_WIDTH) % 256

 CLC
 ADC ret_val
 STA ret_val
 BCC ..@3323.skip
 INC ret_val+1
 ..@3323.skip:
%line 1004+1 main.asm
 DEY
 BRA .oxy.mult
 .if48:

%line 1007+0 main.asm




























 LDA mX

 CLC
 ADC ret_val
 STA ret_val
 BCC ..@3334.skip
 INC ret_val+1
 ..@3334.skip:
%line 1008+1 main.asm
 RTS

 MapXY:

 map set ASSIGN_LOCAL_WORD
%line 1012+0 main.asm
 MapXY.a0 set MapXY.map
%line 1013+1 main.asm
 mX set ASSIGN_LOCAL_BYTE
%line 1013+0 main.asm
 MapXY.a1 set MapXY.mX
 mY set ASSIGN_LOCAL_BYTE
 MapXY.a2 set MapXY.mY
%line 1014+1 main.asm



%line 1016+0 main.asm









































 LDA map
 STA ret_val
 LDA map+1
 STA ret_val+1
%line 1017+1 main.asm
 LDY mY
 .mxy.mult:
 BNE ..@3372.skip
%line 1019+0 main.asm
 JMP .if49
 ..@3372.skip:
%line 1020+1 main.asm

%line 1020+0 main.asm


















 LDA #(MAP_WIDTH) % 256

 CLC
 ADC ret_val
 STA ret_val
 BCC ..@3373.skip
 INC ret_val+1
 ..@3373.skip:
%line 1021+1 main.asm
 DEY
 BRA .mxy.mult
 .if49:
 LDY mX
 LDA (ret_val),Y
 STA ret_val
 RTS

 MakeMap:

 map_ptr set ASSIGN_LOCAL_WORD
 counter set ASSIGN_LOCAL_BYTE




%line 1036+0 main.asm


































 LDA #(map_data) % 256
 STA FillMap.a0
 LDA #(map_data) / 256
 STA FillMap.a0+1




















 LDA #(MAP_BLANK) % 256
 STA FillMap.a1








 JSR FillMap
%line 1037+1 main.asm


 LDX #MAP_LAVA_COUNT
 .mm.lava_loop:


%line 1042+0 main.asm

































 LDA #(MAP_LAVA) % 256
 STA MazeHorizStripe.a0









 JSR MazeHorizStripe
%line 1043+1 main.asm
 DEX
 BNE .mm.lava_loop


 LDX #MAP_WALL_COUNT
 .mm.rock_loop:

%line 1049+0 main.asm

































 LDA #(MAP_ROCK) % 256
 STA MazeHorizStripe.a0









 JSR MazeHorizStripe
%line 1050+1 main.asm
 DEX
 BNE .mm.rock_loop



%line 1054+0 main.asm
















 LDA #(map_data) % 256
 STA map_ptr
 LDA #(map_data) / 256
 STA map_ptr+1
%line 1055+1 main.asm
 LDX #MAP_HEIGHT/5
 LDY #0
 .mm.blank_loop:
 LDA (map_ptr),Y
 CMP #MAP_BLANK
 BEQ ..@3479.skip
%line 1060+0 main.asm
 JMP .if50
 ..@3479.skip:
%line 1061+1 main.asm

%line 1061+0 main.asm

































 LDA #(4) % 256
 STA rand8.a0









 JSR rand8
%line 1062+1 main.asm
 LDA ret_val

%line 1063+0 main.asm
 BRA .s5c0
%line 1064+1 main.asm
 JMP .s5done
%line 1064+0 main.asm
 .s5c0:
 CMP #1
 BEQ ..@3503.skip
 JMP .s5c1
 ..@3503.skip:


 .s5b1:
%line 1065+1 main.asm
 LDA #MAP_BLANK_90
 JMP .s5done
%line 1066+0 main.asm
 .s5c1:
 CMP #2
 BEQ ..@3512.skip
 JMP .s5c2
 ..@3512.skip:


 .s5b2:
%line 1067+1 main.asm
 LDA #MAP_BLANK_180
 JMP .s5done
%line 1068+0 main.asm
 .s5c2:
 CMP #3
 BEQ ..@3521.skip
 JMP .s5c3
 ..@3521.skip:


 .s5b3:
%line 1069+1 main.asm
 LDA #MAP_BLANK_270
 JMP .s5done
%line 1070+0 main.asm
 .s5c3:
%line 1071+1 main.asm
 LDA #MAP_BLANK
 .s5c4:
%line 1072+0 main.asm

 .s5done:





%line 1073+1 main.asm
 STA (map_ptr),Y
 .if50:
 INY
 CPY #MAP_WIDTH*5
 BNE .mm.blank_loop
 LDY #0

%line 1079+0 main.asm









 LDA #(MAP_WIDTH*5) % 256

 CLC
 ADC map_ptr
 STA map_ptr
 BCC ..@3538.skip
 INC map_ptr+1
 ..@3538.skip:
%line 1080+1 main.asm
 DEX
 BNE .mm.blank_loop



%line 1084+0 main.asm


































 LDA #(map_data) % 256
 STA OffsetXY.a0
 LDA #(map_data) / 256
 STA OffsetXY.a0+1




















 LDA #(HERO_START_X) % 256
 STA OffsetXY.a1




















 LDA #(HERO_START_Y) % 256
 STA OffsetXY.a2







 JSR OffsetXY
%line 1085+1 main.asm

%line 1085+0 main.asm


















 LDA #(MAP_BLANK) % 256
 STA (ret_val)
%line 1086+1 main.asm



%line 1088+0 main.asm

































 LDA #(MAP_HEIGHT/2) % 256
 STA rand8.a0









 JSR rand8
%line 1089+1 main.asm
 LDA ret_val
 CLC
 ADC #MAP_HEIGHT/2
 STA counter

%line 1093+0 main.asm

































 LDA #(MAP_WIDTH/2) % 256
 STA rand8.a0









 JSR rand8
%line 1094+1 main.asm
 LDA ret_val
 CLC
 ADC #MAP_WIDTH/2
 STA ret_val

%line 1098+0 main.asm


































 LDA #(map_data) % 256
 STA OffsetXY.a0
 LDA #(map_data) / 256
 STA OffsetXY.a0+1

































 LDA ret_val
 STA OffsetXY.a1
























 LDA counter
 STA OffsetXY.a2







 JSR OffsetXY
%line 1099+1 main.asm

%line 1099+0 main.asm


















 LDA #(MAP_EXIT) % 256
 STA (ret_val)
%line 1100+1 main.asm
 RTS

 CheckForMonster:

 mX set ASSIGN_LOCAL_BYTE
%line 1104+0 main.asm
 CheckForMonster.a0 set CheckForMonster.mX
 mY set ASSIGN_LOCAL_BYTE
 CheckForMonster.a1 set CheckForMonster.mY
%line 1105+1 main.asm



%line 1107+0 main.asm


































 LDA #(monster_map) % 256
 STA MapXY.a0
 LDA #(monster_map) / 256
 STA MapXY.a0+1






























 LDA mX
 STA MapXY.a1
























 LDA mY
 STA MapXY.a2







 JSR MapXY
%line 1108+1 main.asm
 LDA ret_val
 STZ ret_val
 STA mX
 CMP #NO_MONSTER

 BNE ..@3748.skip
%line 1113+0 main.asm
 JMP .if51
 ..@3748.skip:
%line 1114+1 main.asm
 ASL
 CLC
 ADC mX
 ADC #MONSTER_ALIVE
 TAY
 LDA monster_list,Y
 STA ret_val
 .if51:
 RTS

 CheckForCrystal:

 mX set ASSIGN_LOCAL_BYTE
%line 1126+0 main.asm
 CheckForCrystal.a0 set CheckForCrystal.mX
 mY set ASSIGN_LOCAL_BYTE
 CheckForCrystal.a1 set CheckForCrystal.mY
%line 1127+1 main.asm



%line 1129+0 main.asm


































 LDA #(crystal_map) % 256
 STA MapXY.a0
 LDA #(crystal_map) / 256
 STA MapXY.a0+1






























 LDA mX
 STA MapXY.a1
























 LDA mY
 STA MapXY.a2







 JSR MapXY
%line 1130+1 main.asm
 LDA ret_val
 STZ ret_val
 CMP #NO_CRYSTAL
 BNE ..@3806.skip
%line 1133+0 main.asm
 JMP .if52
 ..@3806.skip:
%line 1134+1 main.asm
 ASL
 ASL
 CLC
 ADC #CRYSTAL_ACTIVE
 TAY
 LDA crystal_list,Y
 STA ret_val
 .if52:
 RTS

 LoadMonsters:

 mX set ASSIGN_LOCAL_BYTE
%line 1146+0 main.asm
 mY set ASSIGN_LOCAL_BYTE
 counter set ASSIGN_LOCAL_BYTE
%line 1147+1 main.asm


%line 1148+0 main.asm








































 LDA #(monster_map) % 256
 STA FillMap.a0
 LDA #(monster_map) / 256
 STA FillMap.a0+1


























 LDA #(NO_MONSTER) % 256
 STA FillMap.a1








 JSR FillMap
%line 1149+1 main.asm

%line 1149+0 main.asm









 STZ counter
%line 1150+1 main.asm
 .lm.loop:

%line 1151+0 main.asm







































 LDA #(MAP_WIDTH) % 256
 STA rand8.a0









 JSR rand8
%line 1152+1 main.asm

%line 1152+0 main.asm








































 LDA ret_val
 STA mX
%line 1153+1 main.asm

%line 1153+0 main.asm







































 LDA #(MAP_HEIGHT) % 256
 STA rand8.a0









 JSR rand8
%line 1154+1 main.asm

%line 1154+0 main.asm


































 LDA ret_val
 STA mY
%line 1155+1 main.asm



 CMP #HERO_START_Y
 BEQ ..@3933.skip
%line 1159+0 main.asm
 JMP .if53
 ..@3933.skip:
%line 1160+1 main.asm
 LDA mX
 CMP #HERO_START_X
 BEQ ..@3935.skip
%line 1162+0 main.asm
 JMP .if54
 ..@3935.skip:
%line 1163+1 main.asm
 BRA .lm.loop
 .if54:
 .if53:


%line 1167+0 main.asm























































 LDA mX
 STA CheckForMonster.a0




































 LDA mY
 STA CheckForMonster.a1








 JSR CheckForMonster
%line 1168+1 main.asm
 LDA ret_val
 BEQ ..@3980.skip
%line 1169+0 main.asm
 JMP .if55
 ..@3980.skip:
%line 1170+1 main.asm

%line 1170+0 main.asm








































 LDA #(map_data) % 256
 STA MapXY.a0
 LDA #(map_data) / 256
 STA MapXY.a0+1










































 LDA mX
 STA MapXY.a1




































 LDA mY
 STA MapXY.a2







 JSR MapXY
%line 1171+1 main.asm
 LDA ret_val

%line 1172+0 main.asm
 BRA .s6c0
%line 1173+1 main.asm
 JMP .s6done
%line 1173+0 main.asm
 .s6c0:
 CMP #MAP_BLANK
 BEQ ..@4032.skip
 JMP .s6c1
 ..@4032.skip:

 BRA .s6b1
 .s6c1:
 CMP #MAP_BLANK_90
 BNE .s6c2
 BRA .s6b1
 BRA .s6b1
 .s6c2:
 CMP #MAP_BLANK_180
 BNE .s6c3
 BRA .s6b1
 BRA .s6b1
 .s6c3:
 CMP #MAP_BLANK_270
 BNE .s6c4
 BRA .s6b1

 .s6b1:
%line 1174+1 main.asm

%line 1174+0 main.asm








































 LDA #(monster_map) % 256
 STA OffsetXY.a0
 LDA #(monster_map) / 256
 STA OffsetXY.a0+1










































 LDA mX
 STA OffsetXY.a1




































 LDA mY
 STA OffsetXY.a2







 JSR OffsetXY
%line 1175+1 main.asm
 LDA counter
 STA (ret_val)
 ASL
 ADC counter
 TAY
 LDA mX
 STA monster_list,Y
 INY
 LDA mY
 STA monster_list,Y
 INY
 LDA #true
 STA monster_list,Y
 LDA counter
 INC
 CMP #MONSTER_COUNT
 BEQ .lm.done
 STA counter
 JMP .lm.loop
 .s6c4:
%line 1194+0 main.asm

 .s6done:





%line 1195+1 main.asm
 .if55:
 JMP .lm.loop
 .lm.done:

 RTS

 LoadCrystals:

 mX set ASSIGN_LOCAL_BYTE
%line 1203+0 main.asm
 mY set ASSIGN_LOCAL_BYTE
 counter set ASSIGN_LOCAL_BYTE
%line 1204+1 main.asm


%line 1205+0 main.asm








































 LDA #(crystal_map) % 256
 STA FillMap.a0
 LDA #(crystal_map) / 256
 STA FillMap.a0+1


























 LDA #(NO_CRYSTAL) % 256
 STA FillMap.a1








 JSR FillMap
%line 1206+1 main.asm

 LDX #0
 .lc.loop:

%line 1209+0 main.asm







































 LDA #(MAP_WIDTH) % 256
 STA rand8.a0









 JSR rand8
%line 1210+1 main.asm

%line 1210+0 main.asm








































 LDA ret_val
 STA mX
%line 1211+1 main.asm

%line 1211+0 main.asm







































 LDA #(MAP_HEIGHT) % 256
 STA rand8.a0









 JSR rand8
%line 1212+1 main.asm

%line 1212+0 main.asm


































 LDA ret_val
 STA mY
%line 1213+1 main.asm



 CMP #HERO_START_Y
 BEQ ..@4211.skip
%line 1217+0 main.asm
 JMP .if56
 ..@4211.skip:
%line 1218+1 main.asm
 LDA mX
 CMP #HERO_START_X
 BEQ ..@4213.skip
%line 1220+0 main.asm
 JMP .if57
 ..@4213.skip:
%line 1221+1 main.asm
 BRA .lc.loop
 .if57:
 .if56:


%line 1225+0 main.asm























































 LDA mX
 STA CheckForMonster.a0




































 LDA mY
 STA CheckForMonster.a1








 JSR CheckForMonster
%line 1226+1 main.asm
 LDA ret_val
 BEQ ..@4258.skip
%line 1227+0 main.asm
 JMP .if58
 ..@4258.skip:
%line 1228+1 main.asm

%line 1228+0 main.asm























































 LDA mX
 STA CheckForCrystal.a0




































 LDA mY
 STA CheckForCrystal.a1








 JSR CheckForCrystal
%line 1229+1 main.asm
 LDA ret_val
 BEQ ..@4299.skip
%line 1230+0 main.asm
 JMP .if59
 ..@4299.skip:
%line 1231+1 main.asm

%line 1231+0 main.asm








































 LDA #(map_data) % 256
 STA MapXY.a0
 LDA #(map_data) / 256
 STA MapXY.a0+1










































 LDA mX
 STA MapXY.a1




































 LDA mY
 STA MapXY.a2







 JSR MapXY
%line 1232+1 main.asm
 LDA ret_val

%line 1233+0 main.asm
 BRA .s7c0
%line 1234+1 main.asm
 JMP .s7done
%line 1234+0 main.asm
 .s7c0:
 CMP #MAP_BLANK
 BEQ ..@4351.skip
 JMP .s7c1
 ..@4351.skip:

 BRA .s7b1
 .s7c1:
 CMP #MAP_BLANK_90
 BNE .s7c2
 BRA .s7b1
 BRA .s7b1
 .s7c2:
 CMP #MAP_BLANK_180
 BNE .s7c3
 BRA .s7b1
 BRA .s7b1
 .s7c3:
 CMP #MAP_BLANK_270
 BNE .s7c4
 BRA .s7b1

 .s7b1:
%line 1235+1 main.asm

%line 1235+0 main.asm








































 LDA #(crystal_map) % 256
 STA OffsetXY.a0
 LDA #(crystal_map) / 256
 STA OffsetXY.a0+1










































 LDA mX
 STA OffsetXY.a1




































 LDA mY
 STA OffsetXY.a2







 JSR OffsetXY
%line 1236+1 main.asm
 TXA
 STA (ret_val)
 ASL
 ASL
 TAY

 LDA mX
 STA crystal_list,Y
 INY

 LDA mY
 STA crystal_list,Y
 INY

 LDA #true
 STA crystal_list,Y
 INY


%line 1254+0 main.asm







































 LDA #(3) % 256
 STA rand8.a0









 JSR rand8
%line 1255+1 main.asm
 LDA ret_val
%line 1255+0 main.asm

 BRA .s8c0
%line 1256+1 main.asm
 JMP .s8done
%line 1256+0 main.asm
 .s8c0:
 CMP #0
 BEQ ..@4432.skip
 JMP .s8c1
 ..@4432.skip:


 .s8b1:
%line 1257+1 main.asm
 LDA #CRYSTAL_RED_TYPE
 JMP .s8done
%line 1258+0 main.asm
 .s8c1:
 CMP #1
 BEQ ..@4441.skip
 JMP .s8c2
 ..@4441.skip:


 .s8b2:
%line 1259+1 main.asm
 LDA #CRYSTAL_BLUE_TYPE
 JMP .s8done
%line 1260+0 main.asm
 .s8c2:
 CMP #2
 BEQ ..@4450.skip
 JMP .s8c3
 ..@4450.skip:


 .s8b3:
%line 1261+1 main.asm
 LDA #CRYSTAL_YELLOW_TYPE
 .s8c3:
%line 1262+0 main.asm

 .s8done:





%line 1263+1 main.asm
 STA crystal_list,Y
 INX
 CPX #CRYSTAL_COUNT
 BEQ .lc.done
 JMP .lc.loop
 .s7c4:
%line 1268+0 main.asm

 .s7done:





%line 1269+1 main.asm
 .if59:
 .if58:
 JMP .lc.loop
 .lc.done:
 RTS

 UpdateTarget:

 tX set ASSIGN_LOCAL_BYTE
%line 1277+0 main.asm
 tY set ASSIGN_LOCAL_BYTE
%line 1278+1 main.asm

 LDA display_X
 CLC
 ADC hero_X
 STA tX
 LDA display_Y
 CLC
 ADC hero_Y
 STA tY

%line 1287+0 main.asm


















 LDA #(target_none) % 256
 STA hero_target_type
%line 1288+1 main.asm
 LDA hero_target_direction
%line 1288+0 main.asm

 BRA .s9c0
%line 1289+1 main.asm
 JMP .s9done
%line 1289+0 main.asm
 .s9c0:
 CMP #DIRECTION_UP
 BEQ ..@4495.skip
 JMP .s9c1
 ..@4495.skip:


 .s9b1:
%line 1290+1 main.asm
 LDA hero_Y
 BNE ..@4503.skip
%line 1291+0 main.asm
 JMP .ut.done
 ..@4503.skip:
%line 1292+1 main.asm
 DEC tY
 JMP .s9done
%line 1293+0 main.asm
 .s9c1:
 CMP #DIRECTION_DOWN
 BEQ ..@4505.skip
 JMP .s9c2
 ..@4505.skip:


 .s9b2:
%line 1294+1 main.asm
 LDA hero_Y
 CMP #FRAME_HEIGHT-1
 BNE ..@4513.skip
%line 1296+0 main.asm
 JMP .ut.done
 ..@4513.skip:
%line 1297+1 main.asm
 INC tY
 JMP .s9done
%line 1298+0 main.asm
 .s9c2:
 CMP #DIRECTION_LEFT
 BEQ ..@4515.skip
 JMP .s9c3
 ..@4515.skip:


 .s9b3:
%line 1299+1 main.asm
 LDA hero_X
 BNE ..@4523.skip
%line 1300+0 main.asm
 JMP .ut.done
 ..@4523.skip:
%line 1301+1 main.asm
 DEC tX
 JMP .s9done
%line 1302+0 main.asm
 .s9c3:
 CMP #DIRECTION_RIGHT
 BEQ ..@4525.skip
 JMP .s9c4
 ..@4525.skip:


 .s9b4:
%line 1303+1 main.asm
 LDA hero_X
 CMP #FRAME_WIDTH-1
 BNE ..@4533.skip
%line 1305+0 main.asm
 JMP .ut.done
 ..@4533.skip:
%line 1306+1 main.asm
 INC tX
 .s9c4:
%line 1307+0 main.asm

 .s9done:





%line 1308+1 main.asm

%line 1308+0 main.asm




























 LDA tX
 STA hero_target_index
%line 1309+1 main.asm

%line 1309+0 main.asm






















 LDA tY
 STA hero_target_index2
%line 1310+1 main.asm

%line 1310+0 main.asm


































 LDA #(map_data) % 256
 STA MapXY.a0
 LDA #(map_data) / 256
 STA MapXY.a0+1






























 LDA tX
 STA MapXY.a1
























 LDA tY
 STA MapXY.a2







 JSR MapXY
%line 1311+1 main.asm
 LDA ret_val
%line 1311+0 main.asm

 BRA .s10c0
%line 1312+1 main.asm
 JMP .s10done
%line 1312+0 main.asm
 .s10c0:
 CMP #MAP_ROCK
 BEQ ..@4608.skip
 JMP .s10c1
 ..@4608.skip:


 .s10b1:
%line 1313+1 main.asm

%line 1313+0 main.asm


















 LDA #(target_rock) % 256
 STA hero_target_type
%line 1314+1 main.asm
 JMP .s10done
%line 1314+0 main.asm
 .s10c1:
 CMP #MAP_EXIT
 BEQ ..@4627.skip
 JMP .s10c2
 ..@4627.skip:


 .s10b2:
%line 1315+1 main.asm

%line 1315+0 main.asm


















 LDA #(target_exit) % 256
 STA hero_target_type
%line 1316+1 main.asm
 JMP .s10done
%line 1316+0 main.asm
 .s10c2:
%line 1317+1 main.asm

%line 1317+0 main.asm











































 LDA tX
 STA CheckForMonster.a0
























 LDA tY
 STA CheckForMonster.a1








 JSR CheckForMonster
%line 1318+1 main.asm
 LDA ret_val
 BNE ..@4683.skip
%line 1319+0 main.asm
 JMP .if60
 ..@4683.skip:
%line 1320+1 main.asm

%line 1320+0 main.asm


















 LDA #(target_monster) % 256
 STA hero_target_type
%line 1321+1 main.asm

%line 1321+0 main.asm


































 LDA #(monster_map) % 256
 STA MapXY.a0
 LDA #(monster_map) / 256
 STA MapXY.a0+1






























 LDA tX
 STA MapXY.a1
























 LDA tY
 STA MapXY.a2







 JSR MapXY
%line 1322+1 main.asm

%line 1322+0 main.asm































 LDA ret_val
 STA hero_target_index
%line 1323+1 main.asm
 JMP .if61
%line 1323+0 main.asm
 .if60:
%line 1324+1 main.asm

%line 1324+0 main.asm











































 LDA tX
 STA CheckForCrystal.a0
























 LDA tY
 STA CheckForCrystal.a1








 JSR CheckForCrystal
%line 1325+1 main.asm
 LDA ret_val
 BNE ..@4788.skip
%line 1326+0 main.asm
 JMP .if62
 ..@4788.skip:
%line 1327+1 main.asm

%line 1327+0 main.asm


















 LDA #(target_crystal) % 256
 STA hero_target_type
%line 1328+1 main.asm

%line 1328+0 main.asm


































 LDA #(crystal_map) % 256
 STA MapXY.a0
 LDA #(crystal_map) / 256
 STA MapXY.a0+1






























 LDA tX
 STA MapXY.a1
























 LDA tY
 STA MapXY.a2







 JSR MapXY
%line 1329+1 main.asm

%line 1329+0 main.asm































 LDA ret_val
 STA hero_target_index
%line 1330+1 main.asm
 .if62:
 .if61:
 .s10c3:
%line 1332+0 main.asm

 .s10done:





%line 1333+1 main.asm
 .ut.done:
 RTS



 DrawRect:

 xpos set ASSIGN_LOCAL_BYTE
%line 1340+0 main.asm
 DrawRect.a0 set DrawRect.xpos
 ypos set ASSIGN_LOCAL_BYTE
 DrawRect.a1 set DrawRect.ypos
 width set ASSIGN_LOCAL_BYTE
 DrawRect.a2 set DrawRect.width
 height set ASSIGN_LOCAL_BYTE
 DrawRect.a3 set DrawRect.height
 color set ASSIGN_LOCAL_BYTE
 DrawRect.a4 set DrawRect.color
%line 1341+1 main.asm

 gfx_ptr set ASSIGN_LOCAL_WORD


 LDA width
 BEQ .dr.done

%line 1347+0 main.asm

























































 STZ CalcXY.a0


































































 LDA ypos
 STA CalcXY.a1








 JSR CalcXY
%line 1348+1 main.asm

%line 1348+0 main.asm













































































 LDA ret_val
 STA gfx_ptr
 LDA ret_val+1
 STA gfx_ptr+1
%line 1349+1 main.asm
 .dr.loop_outer:
 LDY xpos
 LDA color
 LDX width
 .dr.loop:
 STA (gfx_ptr),Y
 INY
 DEX
 BNE .dr.loop
 INC gfx_ptr+1
 DEC height
 BNE .dr.loop_outer
 .dr.done:
 RTS

 DrawText:

 str_ptr set ASSIGN_LOCAL_WORD
%line 1366+0 main.asm
 DrawText.a0 set DrawText.str_ptr
%line 1367+1 main.asm
 arg1 set ASSIGN_LOCAL_BYTE
%line 1367+0 main.asm
 DrawText.a1 set DrawText.arg1
 arg2 set ASSIGN_LOCAL_BYTE
 DrawText.a2 set DrawText.arg2
 ypos set ASSIGN_LOCAL_BYTE
 DrawText.a3 set DrawText.ypos
 fg_color set ASSIGN_LOCAL_BYTE
 DrawText.a4 set DrawText.fg_color
 bg_color set ASSIGN_LOCAL_BYTE
 DrawText.a5 set DrawText.bg_color
%line 1368+1 main.asm

 gfx_ptr set ASSIGN_LOCAL_WORD
%line 1369+0 main.asm
 char_ptr set ASSIGN_LOCAL_WORD
%line 1370+1 main.asm
 digit_count set ASSIGN_LOCAL_BYTE
%line 1370+0 main.asm
 digit set ASSIGN_LOCAL_BYTE
 subtractor set ASSIGN_LOCAL_BYTE
 character set ASSIGN_LOCAL_BYTE
 original_X set ASSIGN_LOCAL_BYTE
%line 1371+1 main.asm



%line 1373+0 main.asm
























































































 LDA draw_X
 STA original_X
%line 1374+1 main.asm

%line 1374+0 main.asm


















































































































































































 LDA draw_X
 STA CalcXY.a0




































































































































 LDA ypos
 STA CalcXY.a1








 JSR CalcXY
%line 1375+1 main.asm

%line 1375+0 main.asm



























































































































































 LDA ret_val
 STA gfx_ptr
 LDA ret_val+1
 STA gfx_ptr+1
%line 1376+1 main.asm

%line 1376+0 main.asm

































 STZ digit_count
%line 1377+1 main.asm
 .dtxt.loop:
 LDA digit_count
 BNE ..@5098.skip
%line 1379+0 main.asm
 JMP .if63
 ..@5098.skip:
%line 1380+1 main.asm

 LDA digit_count

%line 1382+0 main.asm
 BRA .s11c0
%line 1383+1 main.asm
 JMP .s11done
%line 1383+0 main.asm
 .s11c0:
 CMP #1
 BEQ ..@5101.skip
 JMP .s11c1
 ..@5101.skip:


 .s11b1:
%line 1384+1 main.asm
 LDA #1
 JMP .s11done
%line 1385+0 main.asm
 .s11c1:
 CMP #2
 BEQ ..@5110.skip
 JMP .s11c2
 ..@5110.skip:


 .s11b2:
%line 1386+1 main.asm
 LDA #10
 JMP .s11done
%line 1387+0 main.asm
 .s11c2:
 CMP #3
 BEQ ..@5119.skip
 JMP .s11c3
 ..@5119.skip:


 .s11b3:
%line 1388+1 main.asm
 LDA #100
 .s11c3:
%line 1389+0 main.asm

 .s11done:





%line 1390+1 main.asm
 DEC digit_count
 STA subtractor

%line 1392+0 main.asm















 LDA #('0') % 256
 STA character
%line 1393+1 main.asm
 .dtxt.digit:
 LDA digit
 SEC
 SBC subtractor
 BCS ..@5143.skip
%line 1397+0 main.asm
 JMP .if64
 ..@5143.skip:
%line 1398+1 main.asm
 STA digit
 INC character
 BRA .dtxt.digit
 JMP .if65
%line 1401+0 main.asm
 .if64:
%line 1402+1 main.asm

 CLC
 ADC subtractor
 STA digit
 .if65:
 LDA character
 JMP .if66
%line 1408+0 main.asm
 .if63:
%line 1409+1 main.asm
 .dtxt.next:
 LDA (str_ptr)
 BNE ..@5150.skip
%line 1411+0 main.asm
 JMP .dtxt.done
 ..@5150.skip:
%line 1412+1 main.asm
 INC str_ptr
%line 1412+0 main.asm
 BNE ..@5151.no_carry
 INC str_ptr+1
 ..@5151.no_carry:
%line 1413+1 main.asm
 CMP #'$'
 BEQ ..@5153.skip
%line 1414+0 main.asm
 JMP .if67
 ..@5153.skip:
%line 1415+1 main.asm

%line 1415+0 main.asm

































 LDA #(1) % 256
 STA digit_count
%line 1416+1 main.asm

%line 1416+0 main.asm





















































































 LDA arg1
 STA digit
%line 1417+1 main.asm
 PHA

%line 1418+0 main.asm



















































































































 LDA arg2
 STA arg1
%line 1419+1 main.asm
 PLA
 CMP #10
 BCC .dtxt.loop
 INC digit_count
 CMP #100
 BCC .dtxt.loop
 INC digit_count
 JMP .dtxt.loop
 JMP .if68
%line 1427+0 main.asm
 .if67:
%line 1428+1 main.asm
 CMP #'*'
 BEQ ..@5220.skip
%line 1429+0 main.asm
 JMP .if69
 ..@5220.skip:
%line 1430+1 main.asm
 LDA original_X
 STA gfx_ptr

%line 1432+0 main.asm


 LDA #(TEXT_SPACING_Y*SCREEN_WIDTH) % 256
 CLC
 ADC gfx_ptr
 STA gfx_ptr
 LDA #(TEXT_SPACING_Y*SCREEN_WIDTH) / 256
 ADC gfx_ptr+1
 STA gfx_ptr+1
%line 1433+1 main.asm
 BRA .dtxt.next
 .if69:
 .if68:
 .if66:


 SEC
 SBC #32
 STZ char_ptr+1
 ASL
 ROL char_ptr+1
 ROL
 ROL char_ptr+1
 ROL
 ROL char_ptr+1


 ADC #CharTable % 256
 STA char_ptr
 LDA char_ptr+1
 ADC #CharTable>>8
 STA char_ptr+1


 LDY #0
 .dtxt.row:
 LDA (char_ptr),Y
 LDX #6
 CLC
 .dtxt.pixel:
 ROR
 PHA
 BCC ..@5231.skip
%line 1465+0 main.asm
 JMP .if70
 ..@5231.skip:
%line 1466+1 main.asm
 LDA bg_color
 JMP .if71
%line 1467+0 main.asm
 .if70:
%line 1468+1 main.asm
 CLC
 LDA fg_color
 .if71:
 STA (gfx_ptr)
 INC gfx_ptr
 PLA
 DEX
 BNE .dtxt.pixel
 LDA gfx_ptr
 SEC
 SBC #6
 STA gfx_ptr
 INC gfx_ptr+1

 INY
 CPY #8
 BNE .dtxt.row
 LDA gfx_ptr
 CLC
 ADC #6
 STA gfx_ptr
 LDA gfx_ptr+1
 SEC
 SBC #8
 STA gfx_ptr+1
 JMP .dtxt.loop
 .dtxt.done:
 RTS

 DrawBar:

 xpos set ASSIGN_LOCAL_BYTE
%line 1499+0 main.asm
 DrawBar.a0 set DrawBar.xpos
 ypos set ASSIGN_LOCAL_BYTE
 DrawBar.a1 set DrawBar.ypos
 stat1 set ASSIGN_LOCAL_BYTE
 DrawBar.a2 set DrawBar.stat1
 stat2 set ASSIGN_LOCAL_BYTE
 DrawBar.a3 set DrawBar.stat2
 fg_color set ASSIGN_LOCAL_BYTE
 DrawBar.a4 set DrawBar.fg_color
 bg_color set ASSIGN_LOCAL_BYTE
 DrawBar.a5 set DrawBar.bg_color
%line 1500+1 main.asm

 bar_width set ASSIGN_LOCAL_WORD
%line 1501+0 main.asm
 mult_buff set ASSIGN_LOCAL_WORD
 div_buff set ASSIGN_LOCAL_WORD
%line 1502+1 main.asm




%line 1505+0 main.asm
















































































 LDA stat1
 STA bar_width
 STZ bar_width+1
%line 1506+1 main.asm

 CLC
 ROL bar_width
%line 1508+0 main.asm
 ROL bar_width+1
%line 1509+1 main.asm
 ROL bar_width
%line 1509+0 main.asm
 ROL bar_width+1
%line 1510+1 main.asm
 ROL bar_width
%line 1510+0 main.asm
 ROL bar_width+1
%line 1511+1 main.asm
 ROL bar_width
%line 1511+0 main.asm
 ROL bar_width+1
%line 1512+1 main.asm

%line 1512+0 main.asm








































































































 LDA bar_width
 STA mult_buff
 LDA bar_width+1
 STA mult_buff+1
%line 1513+1 main.asm
 ROL bar_width
%line 1513+0 main.asm
 ROL bar_width+1
%line 1514+1 main.asm
 ROL bar_width
%line 1514+0 main.asm
 ROL bar_width+1
%line 1515+1 main.asm

%line 1515+0 main.asm






















































 LDA bar_width
 CLC
 ADC mult_buff
 STA mult_buff
 LDA bar_width+1
 ADC mult_buff+1
 STA mult_buff+1
%line 1516+1 main.asm


%line 1517+0 main.asm


























































 STZ bar_width
 STZ bar_width+1
%line 1518+1 main.asm
 LDA stat2
 STA div_buff+1
 STZ div_buff

%line 1521+0 main.asm





























































 LDA #($100) % 256
 STA ret_val
 LDA #($100) / 256
 STA ret_val+1
%line 1522+1 main.asm
 .dbar.div1:

%line 1523+0 main.asm










































 LDA mult_buff
 SEC
 SBC div_buff
 STA mult_buff
 LDA mult_buff+1
 SBC div_buff+1
 STA mult_buff+1
%line 1524+1 main.asm
 BCS ..@5357.skip
%line 1524+0 main.asm
 JMP .if72
 ..@5357.skip:
%line 1525+1 main.asm


%line 1526+0 main.asm

























































 LDA ret_val
 CLC
 ADC bar_width
 STA bar_width
 LDA ret_val+1
 ADC bar_width+1
 STA bar_width+1
%line 1527+1 main.asm
 BRA .dbar.div1
 .if72:

%line 1529+0 main.asm










































 LDA div_buff
 CLC
 ADC mult_buff
 STA mult_buff
 LDA div_buff+1
 ADC mult_buff+1
 STA mult_buff+1
%line 1530+1 main.asm
 CLC
 ROR div_buff+1
%line 1531+0 main.asm
 ROR div_buff
%line 1532+1 main.asm
 CLC
 ROR ret_val+1
%line 1533+0 main.asm
 ROR ret_val
%line 1534+1 main.asm
 LDA ret_val
 ORA ret_val+1
 BNE .dbar.div1




%line 1540+0 main.asm













































































































 LDA xpos
 STA DrawRect.a0


























































































 LDA ypos
 STA DrawRect.a1


















































































































 LDA bar_width
 STA DrawRect.a2






























































 LDA #(BAR_HEIGHT) % 256
 STA DrawRect.a3








































































 LDA fg_color
 STA DrawRect.a4





 JSR DrawRect
%line 1541+1 main.asm
 LDA xpos
 CLC
 ADC bar_width
 STA xpos
 LDA #BAR_WIDTH
 SEC
 SBC bar_width
 STA bar_width

%line 1549+0 main.asm













































































































 LDA xpos
 STA DrawRect.a0


























































































 LDA ypos
 STA DrawRect.a1


















































































































 LDA bar_width
 STA DrawRect.a2






























































 LDA #(BAR_HEIGHT) % 256
 STA DrawRect.a3


































































 LDA bg_color
 STA DrawRect.a4





 JSR DrawRect
%line 1550+1 main.asm

 RTS



 DrawLegend:

 gfx_ptr set ASSIGN_LOCAL_WORD
%line 1557+0 main.asm
 map_ptr set ASSIGN_LOCAL_WORD
%line 1558+1 main.asm
 height set ASSIGN_LOCAL_BYTE
%line 1558+0 main.asm
 mX set ASSIGN_LOCAL_BYTE
 mY set ASSIGN_LOCAL_BYTE
 if_monster set ASSIGN_LOCAL_BYTE
 if_crystal set ASSIGN_LOCAL_BYTE
%line 1559+1 main.asm




%line 1562+0 main.asm































































 LDA #(LEGEND_LEFT) % 256
 STA DrawRect.a0


















































 LDA #(LEGEND_TOP) % 256
 STA DrawRect.a1


















































 LDA #(LEGEND_WIDTH) % 256
 STA DrawRect.a2


















































 LDA #(LEGEND_HEIGHT) % 256
 STA DrawRect.a3


















































 LDA #(COLOR_LEGEND_BG) % 256
 STA DrawRect.a4





 JSR DrawRect
%line 1563+1 main.asm



%line 1565+0 main.asm
















































 LDA #(LEGEND_LEFT+LEGEND_STATS_LEFT) % 256
 STA draw_X
%line 1566+1 main.asm

%line 1566+0 main.asm














 BRA ..@5734.str_skip
 ..@5734.str_addr:
 FCB "HP:$/$",0
 ..@5734.str_skip:


















































 LDA #(..@5734.str_addr) % 256
 STA DrawText.a0
 LDA #(..@5734.str_addr) / 256
 STA DrawText.a0+1





























































































 LDA hero_HP
 STA DrawText.a1





























































































 LDA hero_HP_Max
 STA DrawText.a2


















































 LDA #(LEGEND_HP_TOP) % 256
 STA DrawText.a3


















































 LDA #(COLOR_WHITE) % 256
 STA DrawText.a4


















































 LDA #(COLOR_LEGEND_BG) % 256
 STA DrawText.a5




 JSR DrawText
%line 1567+1 main.asm

%line 1567+0 main.asm































































 LDA #(LEGEND_LEFT+LEGEND_STATS_LEFT) % 256
 STA DrawBar.a0


















































 LDA #(LEGEND_HP_BAR_TOP) % 256
 STA DrawBar.a1





























































































 LDA hero_HP
 STA DrawBar.a2





























































































 LDA hero_HP_Max
 STA DrawBar.a3


















































 LDA #(COLOR_RED) % 256
 STA DrawBar.a4


















































 LDA #(COLOR_DARK_RED) % 256
 STA DrawBar.a5




 JSR DrawBar
%line 1568+1 main.asm


%line 1569+0 main.asm
















































 LDA #(LEGEND_LEFT+LEGEND_STATS_LEFT) % 256
 STA draw_X
%line 1570+1 main.asm

%line 1570+0 main.asm














 BRA ..@5979.str_skip
 ..@5979.str_addr:
 FCB "Batt:$/$",0
 ..@5979.str_skip:


















































 LDA #(..@5979.str_addr) % 256
 STA DrawText.a0
 LDA #(..@5979.str_addr) / 256
 STA DrawText.a0+1





























































































 LDA hero_Batt
 STA DrawText.a1





























































































 LDA hero_Batt_Max
 STA DrawText.a2


















































 LDA #(LEGEND_BATT_TOP) % 256
 STA DrawText.a3


















































 LDA #(COLOR_WHITE) % 256
 STA DrawText.a4


















































 LDA #(COLOR_LEGEND_BG) % 256
 STA DrawText.a5




 JSR DrawText
%line 1571+1 main.asm

%line 1571+0 main.asm































































 LDA #(LEGEND_LEFT+LEGEND_STATS_LEFT) % 256
 STA DrawBar.a0


















































 LDA #(LEGEND_BATT_BAR_TOP) % 256
 STA DrawBar.a1





























































































 LDA hero_Batt
 STA DrawBar.a2





























































































 LDA hero_Batt_Max
 STA DrawBar.a3


















































 LDA #(COLOR_BLUE) % 256
 STA DrawBar.a4


















































 LDA #(COLOR_DARK_BLUE) % 256
 STA DrawBar.a5




 JSR DrawBar
%line 1572+1 main.asm


%line 1573+0 main.asm
















































 LDA #(LEGEND_LEFT+LEGEND_STATS_LEFT) % 256
 STA draw_X
%line 1574+1 main.asm

%line 1574+0 main.asm














 BRA ..@6224.str_skip
 ..@6224.str_addr:
 FCB "Exp:$/$",0
 ..@6224.str_skip:


















































 LDA #(..@6224.str_addr) % 256
 STA DrawText.a0
 LDA #(..@6224.str_addr) / 256
 STA DrawText.a0+1





























































































 LDA hero_Exp
 STA DrawText.a1





























































































 LDA hero_Exp_Max
 STA DrawText.a2


















































 LDA #(LEGEND_EXP_TOP) % 256
 STA DrawText.a3


















































 LDA #(COLOR_WHITE) % 256
 STA DrawText.a4


















































 LDA #(COLOR_LEGEND_BG) % 256
 STA DrawText.a5




 JSR DrawText
%line 1575+1 main.asm

%line 1575+0 main.asm































































 LDA #(LEGEND_LEFT+LEGEND_STATS_LEFT) % 256
 STA DrawBar.a0


















































 LDA #(LEGEND_EXP_BAR_TOP) % 256
 STA DrawBar.a1





























































































 LDA hero_Exp
 STA DrawBar.a2





























































































 LDA hero_Exp_Max
 STA DrawBar.a3


















































 LDA #(COLOR_GREEN) % 256
 STA DrawBar.a4


















































 LDA #(COLOR_DARK_GREEN) % 256
 STA DrawBar.a5




 JSR DrawBar
%line 1576+1 main.asm


 LDA hero_target_type
%line 1578+0 main.asm

 BRA .s12c0
%line 1579+1 main.asm
 JMP .s12done
%line 1579+0 main.asm
 .s12c0:
 CMP #target_rock
 BEQ ..@6453.skip
 JMP .s12c1
 ..@6453.skip:


 .s12b1:
%line 1580+1 main.asm

%line 1580+0 main.asm
















































 LDA #(LEGEND_LEFT+LEGEND_STATS_LEFT) % 256
 STA draw_X
%line 1581+1 main.asm

%line 1581+0 main.asm














 BRA ..@6479.str_skip
 ..@6479.str_addr:
 FCB "Rock",0
 ..@6479.str_skip:


















































 LDA #(..@6479.str_addr) % 256
 STA DrawText.a0
 LDA #(..@6479.str_addr) / 256
 STA DrawText.a0+1


















































 STZ DrawText.a1


















































 STZ DrawText.a2


















































 LDA #(LEGEND_TARGET_TOP) % 256
 STA DrawText.a3


















































 LDA #(COLOR_ROCK) % 256
 STA DrawText.a4


















































 LDA #(COLOR_LEGEND_BG) % 256
 STA DrawText.a5




 JSR DrawText
%line 1582+1 main.asm
 JMP .s12done
%line 1582+0 main.asm
 .s12c1:
 CMP #target_exit
 BEQ ..@6578.skip
 JMP .s12c2
 ..@6578.skip:


 .s12b2:
%line 1583+1 main.asm

%line 1583+0 main.asm
















































 LDA #(LEGEND_LEFT+LEGEND_STATS_LEFT) % 256
 STA draw_X
%line 1584+1 main.asm

%line 1584+0 main.asm














 BRA ..@6604.str_skip
 ..@6604.str_addr:
 FCB "Exit",0
 ..@6604.str_skip:


















































 LDA #(..@6604.str_addr) % 256
 STA DrawText.a0
 LDA #(..@6604.str_addr) / 256
 STA DrawText.a0+1


















































 STZ DrawText.a1


















































 STZ DrawText.a2


















































 LDA #(LEGEND_TARGET_TOP) % 256
 STA DrawText.a3


















































 LDA #(COLOR_EXIT) % 256
 STA DrawText.a4


















































 LDA #(COLOR_LEGEND_BG) % 256
 STA DrawText.a5




 JSR DrawText
%line 1585+1 main.asm
 JMP .s12done
%line 1585+0 main.asm
 .s12c2:
 CMP #target_monster
 BEQ ..@6703.skip
 JMP .s12c3
 ..@6703.skip:


 .s12b3:
%line 1586+1 main.asm

%line 1586+0 main.asm
















































 LDA #(LEGEND_LEFT+LEGEND_STATS_LEFT) % 256
 STA draw_X
%line 1587+1 main.asm

%line 1587+0 main.asm














 BRA ..@6729.str_skip
 ..@6729.str_addr:
 FCB "Evil robot",0
 ..@6729.str_skip:


















































 LDA #(..@6729.str_addr) % 256
 STA DrawText.a0
 LDA #(..@6729.str_addr) / 256
 STA DrawText.a0+1


















































 STZ DrawText.a1


















































 STZ DrawText.a2


















































 LDA #(LEGEND_TARGET_TOP) % 256
 STA DrawText.a3


















































 LDA #(COLOR_MONSTER) % 256
 STA DrawText.a4


















































 LDA #(COLOR_LEGEND_BG) % 256
 STA DrawText.a5




 JSR DrawText
%line 1588+1 main.asm
 JMP .s12done
%line 1588+0 main.asm
 .s12c3:
 CMP #target_crystal
 BEQ ..@6828.skip
 JMP .s12c4
 ..@6828.skip:


 .s12b4:
%line 1589+1 main.asm

%line 1589+0 main.asm
















































 LDA #(LEGEND_LEFT+LEGEND_STATS_LEFT) % 256
 STA draw_X
%line 1590+1 main.asm
 LDA hero_target_index
 ASL
 ASL
 ADC #CRYSTAL_COLOR
 TAY
 LDA crystal_list,Y

%line 1596+0 main.asm
 BRA .s13c0
%line 1597+1 main.asm
 JMP .s13done
%line 1597+0 main.asm
 .s13c0:
 CMP #CRYSTAL_RED_TYPE
 BEQ ..@6853.skip
 JMP .s13c1
 ..@6853.skip:


 .s13b1:
%line 1598+1 main.asm

%line 1598+0 main.asm














 BRA ..@6864.str_skip
 ..@6864.str_addr:
 FCB "Crystal",0
 ..@6864.str_skip:


















































 LDA #(..@6864.str_addr) % 256
 STA DrawText.a0
 LDA #(..@6864.str_addr) / 256
 STA DrawText.a0+1


















































 STZ DrawText.a1


















































 STZ DrawText.a2


















































 LDA #(LEGEND_TARGET_TOP) % 256
 STA DrawText.a3


















































 LDA #(COLOR_CRYSTAL_RED1) % 256
 STA DrawText.a4


















































 LDA #(COLOR_LEGEND_BG) % 256
 STA DrawText.a5




 JSR DrawText
%line 1599+1 main.asm
 JMP .s13done
%line 1599+0 main.asm
 .s13c1:
 CMP #CRYSTAL_BLUE_TYPE
 BEQ ..@6963.skip
 JMP .s13c2
 ..@6963.skip:


 .s13b2:
%line 1600+1 main.asm

%line 1600+0 main.asm














 BRA ..@6974.str_skip
 ..@6974.str_addr:
 FCB "Crystal",0
 ..@6974.str_skip:


















































 LDA #(..@6974.str_addr) % 256
 STA DrawText.a0
 LDA #(..@6974.str_addr) / 256
 STA DrawText.a0+1


















































 STZ DrawText.a1


















































 STZ DrawText.a2


















































 LDA #(LEGEND_TARGET_TOP) % 256
 STA DrawText.a3


















































 LDA #(COLOR_CRYSTAL_BLUE1) % 256
 STA DrawText.a4


















































 LDA #(COLOR_LEGEND_BG) % 256
 STA DrawText.a5




 JSR DrawText
%line 1601+1 main.asm
 JMP .s13done
%line 1601+0 main.asm
 .s13c2:
 CMP #CRYSTAL_YELLOW_TYPE
 BEQ ..@7073.skip
 JMP .s13c3
 ..@7073.skip:


 .s13b3:
%line 1602+1 main.asm

%line 1602+0 main.asm














 BRA ..@7084.str_skip
 ..@7084.str_addr:
 FCB "Crystal",0
 ..@7084.str_skip:


















































 LDA #(..@7084.str_addr) % 256
 STA DrawText.a0
 LDA #(..@7084.str_addr) / 256
 STA DrawText.a0+1


















































 STZ DrawText.a1


















































 STZ DrawText.a2


















































 LDA #(LEGEND_TARGET_TOP) % 256
 STA DrawText.a3


















































 LDA #(COLOR_CRYSTAL_YELLOW1) % 256
 STA DrawText.a4


















































 LDA #(COLOR_LEGEND_BG) % 256
 STA DrawText.a5




 JSR DrawText
%line 1603+1 main.asm
 .s13c3:
%line 1603+0 main.asm

 .s13done:





%line 1604+1 main.asm
 .s12c4:
%line 1604+0 main.asm

 .s12done:





%line 1605+1 main.asm


 LDA hero_activity
 BNE ..@7194.skip
%line 1608+0 main.asm
 JMP .if73
 ..@7194.skip:
%line 1609+1 main.asm

%line 1609+0 main.asm































































 LDA #(LEGEND_LEFT+LEGEND_STATS_LEFT) % 256
 STA DrawBar.a0


















































 LDA #(LEGEND_TARGET_BAR_TOP) % 256
 STA DrawBar.a1





























































































 LDA hero_activity_ticks
 STA DrawBar.a2





























































































 LDA hero_activity_ticks_max
 STA DrawBar.a3


















































 LDA #(COLOR_PURPLE) % 256
 STA DrawBar.a4


















































 LDA #(COLOR_DARK_PURPLE) % 256
 STA DrawBar.a5




 JSR DrawBar
%line 1610+1 main.asm
 .if73:



%line 1613+0 main.asm








































 LDA #(map_data) % 256
 STA map_ptr
 LDA #(map_data) / 256
 STA map_ptr+1
%line 1614+1 main.asm

%line 1614+0 main.asm































































 LDA #((LEGEND_LEFT+LEGEND_MAZE_LEFT)) % 256
 STA CalcXY.a0


















































 LDA #(LEGEND_MAZE_TOP) % 256
 STA CalcXY.a1








 JSR CalcXY
%line 1615+1 main.asm

%line 1615+0 main.asm

























































































 LDA ret_val
 STA gfx_ptr
 LDA ret_val+1
 STA gfx_ptr+1
%line 1616+1 main.asm

%line 1616+0 main.asm

































 LDA #(MAP_HEIGHT) % 256
 STA height
%line 1617+1 main.asm

%line 1617+0 main.asm



























 STZ mX
%line 1618+1 main.asm

%line 1618+0 main.asm





















 STZ mY
%line 1619+1 main.asm
 .dl.loop_outer:
 LDY #0
 .dl.loop:

%line 1622+0 main.asm















 LDA #(false) % 256
 STA if_monster
%line 1623+1 main.asm

%line 1623+0 main.asm









 LDA #(false) % 256
 STA if_crystal
%line 1624+1 main.asm
 PHY

%line 1625+0 main.asm





















































































 LDA mX
 STA CheckForMonster.a0


































































 LDA mY
 STA CheckForMonster.a1








 JSR CheckForMonster
%line 1626+1 main.asm

%line 1626+0 main.asm


























































 LDA ret_val
 STA if_monster
%line 1627+1 main.asm

%line 1627+0 main.asm





















































































 LDA mX
 STA CheckForCrystal.a0


































































 LDA mY
 STA CheckForCrystal.a1








 JSR CheckForCrystal
%line 1628+1 main.asm

%line 1628+0 main.asm




















































 LDA ret_val
 STA if_crystal
%line 1629+1 main.asm
 PLY

 LDA mX
 INC
 CMP #MAP_WIDTH
 BNE ..@7574.skip
%line 1634+0 main.asm
 JMP .if74
 ..@7574.skip:
%line 1635+1 main.asm
 STA mX
 JMP .if75
%line 1636+0 main.asm
 .if74:
%line 1637+1 main.asm
 STZ mX
 INC mY
 .if75:

 LDA if_monster
 BNE ..@7581.skip
%line 1642+0 main.asm
 JMP .if76
 ..@7581.skip:
%line 1643+1 main.asm
 LDA #COLOR_RED
 BRA .dl.pixel
 .if76:

 LDA if_crystal
 BNE ..@7586.skip
%line 1648+0 main.asm
 JMP .if77
 ..@7586.skip:
%line 1649+1 main.asm
 LDA #COLOR_YELLOW
 BRA .dl.pixel
 .if77:


 LDA (map_ptr),Y

%line 1655+0 main.asm
 BRA .s14c0
%line 1656+1 main.asm
 JMP .s14done
%line 1656+0 main.asm
 .s14c0:
 CMP #MAP_BLANK
 BEQ ..@7591.skip
 JMP .s14c1
 ..@7591.skip:

 BRA .s14b1
 .s14c1:
 CMP #MAP_BLANK_90
 BNE .s14c2
 BRA .s14b1
 BRA .s14b1
 .s14c2:
 CMP #MAP_BLANK_180
 BNE .s14c3
 BRA .s14b1
 BRA .s14b1
 .s14c3:
 CMP #MAP_BLANK_270
 BNE .s14c4
 BRA .s14b1

 .s14b1:
%line 1657+1 main.asm
 LDA #COLOR_DIRT
 JMP .s14done
%line 1658+0 main.asm
 .s14c4:
 CMP #MAP_ROCK
 BEQ ..@7600.skip
 JMP .s14c5
 ..@7600.skip:


 .s14b2:
%line 1659+1 main.asm
 LDA #COLOR_ROCK
 JMP .s14done
%line 1660+0 main.asm
 .s14c5:
 CMP #MAP_LAVA
 BEQ ..@7609.skip
 JMP .s14c6
 ..@7609.skip:


 .s14b3:
%line 1661+1 main.asm
 LDA #COLOR_LAVA
 JMP .s14done
%line 1662+0 main.asm
 .s14c6:
 CMP #MAP_EXIT
 BEQ ..@7618.skip
 JMP .s14c7
 ..@7618.skip:


 .s14b4:
%line 1663+1 main.asm
 LDA #COLOR_EXIT
 JMP .s14done
%line 1664+0 main.asm
 .s14c7:
%line 1665+1 main.asm
 LDA #COLOR_WHITE
 .s14c8:
%line 1666+0 main.asm

 .s14done:





%line 1667+1 main.asm

 .dl.pixel:

 PHY
 PHA
 TYA
 ASL
 TAY
 PLA
 STA (gfx_ptr),Y
 INY
 STA (gfx_ptr),Y
 INC gfx_ptr+1
 STA (gfx_ptr),Y
 DEY
 STA (gfx_ptr),Y
 DEC gfx_ptr+1
 PLY
 INY
 CPY #MAP_WIDTH
 BEQ ..@7633.skip
%line 1687+0 main.asm
 JMP .dl.loop
 ..@7633.skip:
%line 1688+1 main.asm
 LDA #LEGEND_LEFT+LEGEND_MAZE_LEFT
 STA gfx_ptr
 INC gfx_ptr+1
 INC gfx_ptr+1

%line 1692+0 main.asm

































 LDA #(MAP_WIDTH) % 256

 CLC
 ADC map_ptr
 STA map_ptr
 BCC ..@7634.skip
 INC map_ptr+1
 ..@7634.skip:
%line 1693+1 main.asm
 DEC height
 BEQ ..@7646.skip
%line 1694+0 main.asm
 JMP .dl.loop_outer
 ..@7646.skip:
%line 1695+1 main.asm



 LDA display_X
 ASL
 ADC #LEGEND_LEFT+LEGEND_MAZE_LEFT
 STA gfx_ptr
 STA map_ptr
 LDA display_Y
 ASL
 ADC #LEGEND_MAZE_TOP+(SCREEN_ADDRESS>>8)
 STA gfx_ptr+1
 ADC #FRAME_HEIGHT*2-1
 STA map_ptr+1


 LDY #0
 LDA #COLOR_GREEN
 .dl.hline:
 STA (gfx_ptr),Y
 STA (map_ptr),Y
 INY
 CPY #FRAME_WIDTH*2
 BNE .dl.hline


 LDA gfx_ptr
 CLC
 ADC #FRAME_WIDTH*2-1
 STA map_ptr
 INC gfx_ptr+1

%line 1726+0 main.asm



























































































 LDA gfx_ptr+1
 STA map_ptr+1
%line 1727+1 main.asm
 LDY #(FRAME_HEIGHT-1)*2
 LDA #COLOR_GREEN
 .dh.vline:
 STA (gfx_ptr)
 STA (map_ptr)
 INC gfx_ptr+1
 INC map_ptr+1
 DEY
 BNE .dh.vline

 RTS

 DrawFrame:

 tile set ASSIGN_LOCAL_BYTE
%line 1741+0 main.asm
 i set ASSIGN_LOCAL_BYTE
 j set ASSIGN_LOCAL_BYTE
%line 1742+1 main.asm
 map_ptr set ASSIGN_LOCAL_WORD
%line 1742+0 main.asm
 monster_ptr set ASSIGN_LOCAL_WORD
 crystal_ptr set ASSIGN_LOCAL_WORD
%line 1743+1 main.asm



%line 1745+0 main.asm


























































 LDA #(map_data) % 256
 STA OffsetXY.a0
 LDA #(map_data) / 256
 STA OffsetXY.a0+1

















































































 LDA display_X
 STA OffsetXY.a1

















































































 LDA display_Y
 STA OffsetXY.a2







 JSR OffsetXY
%line 1746+1 main.asm

%line 1746+0 main.asm













































































 LDA ret_val
 STA map_ptr
 LDA ret_val+1
 STA map_ptr+1
%line 1747+1 main.asm

%line 1747+0 main.asm


























































 LDA #(monster_map) % 256
 STA OffsetXY.a0
 LDA #(monster_map) / 256
 STA OffsetXY.a0+1

















































































 LDA display_X
 STA OffsetXY.a1

















































































 LDA display_Y
 STA OffsetXY.a2







 JSR OffsetXY
%line 1748+1 main.asm

%line 1748+0 main.asm







































































 LDA ret_val
 STA monster_ptr
 LDA ret_val+1
 STA monster_ptr+1
%line 1749+1 main.asm

%line 1749+0 main.asm


























































 LDA #(crystal_map) % 256
 STA OffsetXY.a0
 LDA #(crystal_map) / 256
 STA OffsetXY.a0+1

















































































 LDA display_X
 STA OffsetXY.a1

















































































 LDA display_Y
 STA OffsetXY.a2







 JSR OffsetXY
%line 1750+1 main.asm

%line 1750+0 main.asm

































































 LDA ret_val
 STA crystal_ptr
 LDA ret_val+1
 STA crystal_ptr+1
%line 1751+1 main.asm

 STZ i
 STZ j
 .df.loop_y:
 .df.loop_x:

 LDA (map_ptr)

%line 1758+0 main.asm
 BRA .s15c0
%line 1759+1 main.asm
 JMP .s15done
%line 1759+0 main.asm
 .s15c0:
 CMP #MAP_BLANK
 BEQ ..@7934.skip
 JMP .s15c1
 ..@7934.skip:


 .s15b1:
%line 1760+1 main.asm

%line 1760+0 main.asm





















 LDA #(Ground_0) % 256
 STA tile
%line 1761+1 main.asm
 JMP .s15done
%line 1761+0 main.asm
 .s15c1:
 CMP #MAP_BLANK_90
 BEQ ..@7954.skip
 JMP .s15c2
 ..@7954.skip:


 .s15b2:
%line 1762+1 main.asm

%line 1762+0 main.asm





















 LDA #(Ground_90) % 256
 STA tile
%line 1763+1 main.asm
 JMP .s15done
%line 1763+0 main.asm
 .s15c2:
 CMP #MAP_BLANK_180
 BEQ ..@7974.skip
 JMP .s15c3
 ..@7974.skip:


 .s15b3:
%line 1764+1 main.asm

%line 1764+0 main.asm





















 LDA #(Ground_180) % 256
 STA tile
%line 1765+1 main.asm
 JMP .s15done
%line 1765+0 main.asm
 .s15c3:
 CMP #MAP_BLANK_270
 BEQ ..@7994.skip
 JMP .s15c4
 ..@7994.skip:


 .s15b4:
%line 1766+1 main.asm

%line 1766+0 main.asm





















 LDA #(Ground_270) % 256
 STA tile
%line 1767+1 main.asm
 JMP .s15done
%line 1767+0 main.asm
 .s15c4:
 CMP #MAP_ROCK
 BEQ ..@8014.skip
 JMP .s15c5
 ..@8014.skip:


 .s15b5:
%line 1768+1 main.asm

%line 1768+0 main.asm





















 LDA #(Rock) % 256
 STA tile
%line 1769+1 main.asm
 JMP .s15done
%line 1769+0 main.asm
 .s15c5:
 CMP #MAP_LAVA
 BEQ ..@8034.skip
 JMP .s15c6
 ..@8034.skip:


 .s15b6:
%line 1770+1 main.asm

%line 1770+0 main.asm





















 LDA #(Lava) % 256
 STA tile
%line 1771+1 main.asm
 JMP .s15done
%line 1771+0 main.asm
 .s15c6:
 CMP #MAP_EXIT
 BEQ ..@8054.skip
 JMP .s15c7
 ..@8054.skip:


 .s15b7:
%line 1772+1 main.asm

%line 1772+0 main.asm





















 LDA #(ExitID) % 256
 STA tile
%line 1773+1 main.asm
 .s15c7:
%line 1773+0 main.asm

 .s15done:





%line 1774+1 main.asm
 CMP #ExitID
 BEQ ..@8079.skip
%line 1775+0 main.asm
 JMP .if78
 ..@8079.skip:
%line 1776+1 main.asm

%line 1776+0 main.asm

























































 LDA #(ExitID) % 256
 STA DrawTile1bpp.a0






















































 LDA i
 STA DrawTile1bpp.a1
















































 LDA j
 STA DrawTile1bpp.a2












































 LDA #(COLOR_BLACK) % 256
 STA DrawTile1bpp.a3












































 LDA #(COLOR_BLUE) % 256
 STA DrawTile1bpp.a4





 JSR DrawTile1bpp
%line 1777+1 main.asm
 JMP .if79
%line 1777+0 main.asm
 .if78:
%line 1778+1 main.asm

%line 1778+0 main.asm









































































 LDA tile
 STA DrawTile.a0






















































 LDA i
 STA DrawTile.a1
















































 LDA j
 STA DrawTile.a2







 JSR DrawTile
%line 1779+1 main.asm
 .if79:
 INC map_ptr
%line 1780+0 main.asm
 BNE ..@8227.no_carry
 INC map_ptr+1
 ..@8227.no_carry:
%line 1781+1 main.asm


 LDA (monster_ptr)
 CMP #NO_MONSTER
 BNE ..@8229.skip
%line 1785+0 main.asm
 JMP .if80
 ..@8229.skip:
%line 1786+1 main.asm
 ASL
 ADC (monster_ptr)
 ADC #MONSTER_ALIVE
 TAY
 LDA monster_list,Y
 BNE ..@8232.skip
%line 1791+0 main.asm
 JMP .if81
 ..@8232.skip:
%line 1792+1 main.asm

%line 1792+0 main.asm

























































 LDA #(Monster) % 256
 STA DrawTile.a0






















































 LDA i
 STA DrawTile.a1
















































 LDA j
 STA DrawTile.a2







 JSR DrawTile
%line 1793+1 main.asm
 JMP .if82
%line 1793+0 main.asm
 .if81:
%line 1794+1 main.asm

%line 1794+0 main.asm

























































 LDA #(Monster_dead) % 256
 STA DrawTile.a0






















































 LDA i
 STA DrawTile.a1
















































 LDA j
 STA DrawTile.a2







 JSR DrawTile
%line 1795+1 main.asm
 .if82:
 .if80:
 INC monster_ptr
%line 1797+0 main.asm
 BNE ..@8351.no_carry
 INC monster_ptr+1
 ..@8351.no_carry:
%line 1798+1 main.asm


 LDA (crystal_ptr)
 CMP #NO_CRYSTAL
 BNE ..@8353.skip
%line 1802+0 main.asm
 JMP .if83
 ..@8353.skip:
%line 1803+1 main.asm
 ASL
 ASL
 PHA
 ADC #CRYSTAL_ACTIVE
 TAY
 LDA crystal_list,Y
 BNE ..@8356.skip
%line 1809+0 main.asm
 JMP .if84
 ..@8356.skip:
%line 1810+1 main.asm
 PLA
 CLC
 ADC #CRYSTAL_COLOR
 TAY
 LDA crystal_list,Y

%line 1815+0 main.asm
 BRA .s16c0
%line 1816+1 main.asm
 JMP .s16done
%line 1816+0 main.asm
 .s16c0:
 CMP #CRYSTAL_RED_TYPE
 BEQ ..@8359.skip
 JMP .s16c1
 ..@8359.skip:


 .s16b1:
%line 1817+1 main.asm

%line 1817+0 main.asm

























































 LDA #(Crystal_red) % 256
 STA DrawTile.a0






















































 LDA i
 STA DrawTile.a1
















































 LDA j
 STA DrawTile.a2







 JSR DrawTile
%line 1818+1 main.asm
 JMP .s16done
%line 1818+0 main.asm
 .s16c1:
 CMP #CRYSTAL_BLUE_TYPE
 BEQ ..@8424.skip
 JMP .s16c2
 ..@8424.skip:


 .s16b2:
%line 1819+1 main.asm

%line 1819+0 main.asm

























































 LDA #(Crystal_blue) % 256
 STA DrawTile.a0






















































 LDA i
 STA DrawTile.a1
















































 LDA j
 STA DrawTile.a2







 JSR DrawTile
%line 1820+1 main.asm
 JMP .s16done
%line 1820+0 main.asm
 .s16c2:
 CMP #CRYSTAL_YELLOW_TYPE
 BEQ ..@8489.skip
 JMP .s16c3
 ..@8489.skip:


 .s16b3:
%line 1821+1 main.asm

%line 1821+0 main.asm

























































 LDA #(Crystal_yellow) % 256
 STA DrawTile.a0






















































 LDA i
 STA DrawTile.a1
















































 LDA j
 STA DrawTile.a2







 JSR DrawTile
%line 1822+1 main.asm
 .s16c3:
%line 1822+0 main.asm

 .s16done:





%line 1823+1 main.asm
 JMP .if85
%line 1823+0 main.asm
 .if84:
%line 1824+1 main.asm
 PLA

%line 1825+0 main.asm

























































 LDA #(Crystal_base) % 256
 STA DrawTile.a0






















































 LDA i
 STA DrawTile.a1
















































 LDA j
 STA DrawTile.a2







 JSR DrawTile
%line 1826+1 main.asm
 .if85:
 .if83:
 INC crystal_ptr
%line 1828+0 main.asm
 BNE ..@8620.no_carry
 INC crystal_ptr+1
 ..@8620.no_carry:
%line 1829+1 main.asm

 LDA i
 CLC
 ADC #32
 STA i
 CMP #32*FRAME_WIDTH
 BEQ ..@8621.skip
%line 1835+0 main.asm
 JMP .df.loop_x
 ..@8621.skip:
%line 1836+1 main.asm

%line 1836+0 main.asm

































 LDA #(MAP_WIDTH-FRAME_WIDTH) % 256

 CLC
 ADC map_ptr
 STA map_ptr
 BCC ..@8622.skip
 INC map_ptr+1
 ..@8622.skip:
%line 1837+1 main.asm

%line 1837+0 main.asm



























 LDA #(MAP_WIDTH-FRAME_WIDTH) % 256

 CLC
 ADC monster_ptr
 STA monster_ptr
 BCC ..@8634.skip
 INC monster_ptr+1
 ..@8634.skip:
%line 1838+1 main.asm

%line 1838+0 main.asm





















 LDA #(MAP_WIDTH-FRAME_WIDTH) % 256

 CLC
 ADC crystal_ptr
 STA crystal_ptr
 BCC ..@8645.skip
 INC crystal_ptr+1
 ..@8645.skip:
%line 1839+1 main.asm
 STZ i
 LDA j
 CLC
 ADC #32
 STA j
 CMP #32*FRAME_HEIGHT

 BNE ..@8656.skip
%line 1846+0 main.asm
 JMP .if86
 ..@8656.skip:
%line 1847+1 main.asm
 JMP .df.loop_y
 .if86:


 LDA hero_X
 ASL
 ASL
 ASL
 ASL
 ASL
 STA i
 LDA hero_Y
 ASL
 ASL
 ASL
 ASL
 ASL
 STA j
 LDA hero_facing
 CMP #DIRECTION_LEFT
 BEQ ..@8660.skip
%line 1867+0 main.asm
 JMP .if87
 ..@8660.skip:
%line 1868+1 main.asm

%line 1868+0 main.asm

























































 LDA #(Robot_left) % 256
 STA DrawTile.a0






















































 LDA i
 STA DrawTile.a1
















































 LDA j
 STA DrawTile.a2







 JSR DrawTile
%line 1869+1 main.asm
 JMP .if88
%line 1869+0 main.asm
 .if87:
%line 1870+1 main.asm

%line 1870+0 main.asm

























































 LDA #(Robot_right) % 256
 STA DrawTile.a0






















































 LDA i
 STA DrawTile.a1
















































 LDA j
 STA DrawTile.a2







 JSR DrawTile
%line 1871+1 main.asm
 .if88:


 LDA hero_target_direction
%line 1874+0 main.asm

 BRA .s17c0
%line 1875+1 main.asm
 JMP .s17done
%line 1875+0 main.asm
 .s17c0:
 CMP #DIRECTION_UP
 BEQ ..@8779.skip
 JMP .s17c1
 ..@8779.skip:


 .s17b1:
%line 1876+1 main.asm
 LDA j
 BEQ .df.no_draw
 SEC
 SBC #32
 STA j
 JMP .s17done
%line 1881+0 main.asm
 .s17c1:
 CMP #DIRECTION_DOWN
 BEQ ..@8788.skip
 JMP .s17c2
 ..@8788.skip:


 .s17b2:
%line 1882+1 main.asm
 LDA j
 CMP #32*(FRAME_HEIGHT-1)
 BEQ .df.no_draw
 CLC
 ADC #32
 STA j
 JMP .s17done
%line 1888+0 main.asm
 .s17c2:
 CMP #DIRECTION_LEFT
 BEQ ..@8797.skip
 JMP .s17c3
 ..@8797.skip:


 .s17b3:
%line 1889+1 main.asm
 LDA i
 BEQ .df.no_draw
 SEC
 SBC #32
 STA i
 JMP .s17done
%line 1894+0 main.asm
 .s17c3:
 CMP #DIRECTION_RIGHT
 BEQ ..@8806.skip
 JMP .s17c4
 ..@8806.skip:


 .s17b4:
%line 1895+1 main.asm
 LDA i
 CMP #32*(FRAME_WIDTH-1)
 BEQ .df.no_draw
 CLC
 ADC #32
 STA i
 .s17c4:
%line 1901+0 main.asm

 .s17done:





%line 1902+1 main.asm


%line 1903+0 main.asm

























































 LDA #(Hero_target) % 256
 STA DrawTile1bpp.a0






















































 LDA i
 STA DrawTile1bpp.a1
















































 LDA j
 STA DrawTile1bpp.a2












































 LDA #(COLOR_GREEN) % 256
 STA DrawTile1bpp.a3












































 LDA #(COLOR_TRANSPARENT) % 256
 STA DrawTile1bpp.a4





 JSR DrawTile1bpp
%line 1904+1 main.asm
 .df.no_draw:
 RTS



 DrawBorder:

 xpos set ASSIGN_LOCAL_BYTE
%line 1911+0 main.asm
 DrawBorder.a0 set DrawBorder.xpos
 ypos set ASSIGN_LOCAL_BYTE
 DrawBorder.a1 set DrawBorder.ypos
 width set ASSIGN_LOCAL_BYTE
 DrawBorder.a2 set DrawBorder.width
 height set ASSIGN_LOCAL_BYTE
 DrawBorder.a3 set DrawBorder.height
 color set ASSIGN_LOCAL_BYTE
 DrawBorder.a4 set DrawBorder.color
%line 1912+1 main.asm

 gfx_ptr1 set ASSIGN_LOCAL_WORD
%line 1913+0 main.asm
 gfx_ptr2 set ASSIGN_LOCAL_WORD
%line 1914+1 main.asm

 DEC width
 DEC height
 LDA xpos
 STA gfx_ptr1
 STA gfx_ptr2
 LDA ypos
 CLC
 ADC #SCREEN_ADDRESS>>8
 STA gfx_ptr1+1
 ADC height
 STA gfx_ptr2+1
 LDY width
 LDA color
 .db.hline:
 STA (gfx_ptr1),Y
 STA (gfx_ptr2),Y
 DEY
 BNE .db.hline
 LDA gfx_ptr1
 CLC
 ADC width
 STA gfx_ptr2
 LDA gfx_ptr1+1
 STA gfx_ptr2+1
 LDY height
 INY
 LDA color
 .db.vline:
 STA (gfx_ptr1)
 STA (gfx_ptr2)
 INC gfx_ptr1+1
 INC gfx_ptr2+1
 DEY
 BNE .db.vline

 RTS

 DrawMenuBorder:

 counter set ASSIGN_LOCAL_BYTE
%line 1954+0 main.asm
 width set ASSIGN_LOCAL_BYTE
 height set ASSIGN_LOCAL_BYTE
%line 1955+1 main.asm


%line 1956+0 main.asm







































 LDA #(1) % 256
 STA DrawRect.a0


























 LDA #(1) % 256
 STA DrawRect.a1


























 LDA #(SCREEN_WIDTH-2) % 256
 STA DrawRect.a2


























 LDA #(MENU_BORDER_SIZE+TEXT_LINE_HEIGHT) % 256
 STA DrawRect.a3


























 LDA #(COLOR_MENU_BORDER) % 256
 STA DrawRect.a4





 JSR DrawRect
%line 1957+1 main.asm

%line 1957+0 main.asm







































 LDA #(1) % 256
 STA DrawRect.a0


























 LDA #(SCREEN_HEIGHT-MENU_BORDER_SIZE) % 256
 STA DrawRect.a1


























 LDA #(SCREEN_WIDTH-2) % 256
 STA DrawRect.a2


























 LDA #(MENU_BORDER_SIZE-1) % 256
 STA DrawRect.a3


























 LDA #(COLOR_MENU_BORDER) % 256
 STA DrawRect.a4





 JSR DrawRect
%line 1958+1 main.asm


%line 1959+0 main.asm







































 LDA #(1) % 256
 STA DrawRect.a0


























 LDA #(MENU_BORDER_SIZE+TEXT_LINE_HEIGHT+1) % 256
 STA DrawRect.a1


























 LDA #(MENU_BORDER_SIZE-1) % 256
 STA DrawRect.a2


























 LDA #($67) % 256
 STA DrawRect.a3


























 LDA #(COLOR_MENU_BORDER) % 256
 STA DrawRect.a4





 JSR DrawRect
%line 1960+1 main.asm


%line 1961+0 main.asm







































 LDA #(SCREEN_WIDTH-MENU_BORDER_SIZE) % 256
 STA DrawRect.a0


























 LDA #(MENU_BORDER_SIZE+TEXT_LINE_HEIGHT+1) % 256
 STA DrawRect.a1


























 LDA #(MENU_BORDER_SIZE-1) % 256
 STA DrawRect.a2


























 LDA #(103) % 256
 STA DrawRect.a3


























 LDA #(COLOR_MENU_BORDER) % 256
 STA DrawRect.a4





 JSR DrawRect
%line 1962+1 main.asm

%line 1962+0 main.asm







































 STZ DrawBorder.a0


























 STZ DrawBorder.a1


























 LDA #(SCREEN_WIDTH) % 256
 STA DrawBorder.a2


























 LDA #(SCREEN_HEIGHT) % 256
 STA DrawBorder.a3


























 LDA #(COLOR_BLACK) % 256
 STA DrawBorder.a4





 JSR DrawBorder
%line 1963+1 main.asm

%line 1963+0 main.asm







































 LDA #(MENU_BORDER_SIZE) % 256
 STA DrawBorder.a0


























 LDA #(MENU_BORDER_SIZE) % 256
 STA DrawBorder.a1


























 LDA #(SCREEN_WIDTH-MENU_BORDER_SIZE*2) % 256
 STA DrawBorder.a2


























 LDA #(SCREEN_HEIGHT-MENU_BORDER_SIZE*2) % 256
 STA DrawBorder.a3


























 LDA #(COLOR_BLACK) % 256
 STA DrawBorder.a4





 JSR DrawBorder
%line 1964+1 main.asm


%line 1965+0 main.asm





















 LDA #(1) % 256
 STA counter
%line 1966+1 main.asm
 .dmb.loop:
 LDA #SCREEN_WIDTH % 256
 CLC
 SBC counter
 STA width
 LDA #SCREEN_HEIGHT
 CLC
 SBC counter
 STA height

%line 1975+0 main.asm























































 LDA counter
 STA CalcXY.a0










































 LDA counter
 STA CalcXY.a1








 JSR CalcXY
%line 1976+1 main.asm

%line 1976+0 main.asm
























 LDA #(COLOR_BLACK) % 256
 STA (ret_val)
%line 1977+1 main.asm

%line 1977+0 main.asm

















































 LDA width
 STA CalcXY.a0










































 LDA counter
 STA CalcXY.a1








 JSR CalcXY
%line 1978+1 main.asm

%line 1978+0 main.asm
























 LDA #(COLOR_BLACK) % 256
 STA (ret_val)
%line 1979+1 main.asm

%line 1979+0 main.asm

















































 LDA width
 STA CalcXY.a0






























 LDA height
 STA CalcXY.a1








 JSR CalcXY
%line 1980+1 main.asm

%line 1980+0 main.asm
























 LDA #(COLOR_BLACK) % 256
 STA (ret_val)
%line 1981+1 main.asm

%line 1981+0 main.asm























































 LDA counter
 STA CalcXY.a0






























 LDA height
 STA CalcXY.a1








 JSR CalcXY
%line 1982+1 main.asm

%line 1982+0 main.asm
























 LDA #(COLOR_BLACK) % 256
 STA (ret_val)
%line 1983+1 main.asm
 LDA counter
 INC
 CMP #MENU_BORDER_SIZE
 STA counter
 BNE .dmb.loop

%line 1988+0 main.asm
























 LDA #(MENU_CHAR_LEFT) % 256
 STA draw_X
%line 1989+1 main.asm

%line 1989+0 main.asm














 BRA ..@9540.str_skip
 ..@9540.str_addr:
 FCB "[C]haracter",0
 ..@9540.str_skip:


























 LDA #(..@9540.str_addr) % 256
 STA DrawText.a0
 LDA #(..@9540.str_addr) / 256
 STA DrawText.a0+1


























 STZ DrawText.a1


























 STZ DrawText.a2


























 LDA #(MENU_TITLE_TOP) % 256
 STA DrawText.a3


























 LDA #(COLOR_WHITE) % 256
 STA DrawText.a4


























 LDA #(COLOR_MENU_CHAR) % 256
 STA DrawText.a5




 JSR DrawText
%line 1990+1 main.asm

%line 1990+0 main.asm
























 LDA #(MENU_SKILL_LEFT) % 256
 STA draw_X
%line 1991+1 main.asm

%line 1991+0 main.asm














 BRA ..@9628.str_skip
 ..@9628.str_addr:
 FCB "S[k]ills",0
 ..@9628.str_skip:


























 LDA #(..@9628.str_addr) % 256
 STA DrawText.a0
 LDA #(..@9628.str_addr) / 256
 STA DrawText.a0+1


























 STZ DrawText.a1


























 STZ DrawText.a2


























 LDA #(MENU_TITLE_TOP) % 256
 STA DrawText.a3


























 LDA #(COLOR_WHITE) % 256
 STA DrawText.a4


























 LDA #(COLOR_MENU_SKILLS) % 256
 STA DrawText.a5




 JSR DrawText
%line 1992+1 main.asm

%line 1992+0 main.asm
























 LDA #(MENU_RES_LEFT) % 256
 STA draw_X
%line 1993+1 main.asm

%line 1993+0 main.asm














 BRA ..@9716.str_skip
 ..@9716.str_addr:
 FCB "[R]esources",0
 ..@9716.str_skip:


























 LDA #(..@9716.str_addr) % 256
 STA DrawText.a0
 LDA #(..@9716.str_addr) / 256
 STA DrawText.a0+1


























 STZ DrawText.a1


























 STZ DrawText.a2


























 LDA #(MENU_TITLE_TOP) % 256
 STA DrawText.a3


























 LDA #(COLOR_WHITE) % 256
 STA DrawText.a4


























 LDA #(COLOR_MENU_RESOURCES) % 256
 STA DrawText.a5




 JSR DrawText
%line 1994+1 main.asm

%line 1994+0 main.asm







































 LDA #(MENU_SKILL_LEFT-1) % 256
 STA DrawRect.a0


























 LDA #(MENU_TITLE_TOP) % 256
 STA DrawRect.a1


























 LDA #(1) % 256
 STA DrawRect.a2


























 LDA #(TEXT_LINE_HEIGHT) % 256
 STA DrawRect.a3


























 LDA #(COLOR_MENU_SKILLS) % 256
 STA DrawRect.a4





 JSR DrawRect
%line 1995+1 main.asm
 RTS

 tile_src: FCB Menu_head,Menu_body,Menu_legs,Menu_gun,Menu_tool
 DrawItem:

 tile set ASSIGN_LOCAL_BYTE
%line 2000+0 main.asm
 DrawItem.a0 set DrawItem.tile
 xpos set ASSIGN_LOCAL_BYTE
 DrawItem.a1 set DrawItem.xpos
 ypos set ASSIGN_LOCAL_BYTE
 DrawItem.a2 set DrawItem.ypos
%line 2001+1 main.asm

 temp_ptr set ASSIGN_LOCAL_WORD

 LDA tile
 ASL
 TAY
 LDA item_stats,Y
 STA temp_ptr
 LDA item_stats+1,Y
 STA temp_ptr+1
 LDY #type
 LDA (temp_ptr),Y
 TAY
 LDA tile_src,Y
 STA temp_ptr

%line 2016+0 main.asm













































 LDA #(Menu_item_temp) % 256
 STA CopyTile.a0






















































 LDA temp_ptr
 STA CopyTile.a1








 JSR CopyTile
%line 2017+1 main.asm

%line 2017+0 main.asm













































 LDA #(Menu_item_temp) % 256
 STA ColorTile.a0
















































 LDA tile
 STA ColorTile.a1








 JSR ColorTile
%line 2018+1 main.asm

%line 2018+0 main.asm













































 LDA #(Menu_item_temp) % 256
 STA DrawTile.a0










































 LDA xpos
 STA DrawTile.a1




































 LDA ypos
 STA DrawTile.a2







 JSR DrawTile
%line 2019+1 main.asm
 RTS

 DrawItemStats:

 item set ASSIGN_LOCAL_BYTE
%line 2023+0 main.asm
 DrawItemStats.a0 set DrawItemStats.item
 xpos set ASSIGN_LOCAL_BYTE
 DrawItemStats.a1 set DrawItemStats.xpos
 ypos set ASSIGN_LOCAL_BYTE
 DrawItemStats.a2 set DrawItemStats.ypos
 bg_color set ASSIGN_LOCAL_BYTE
 DrawItemStats.a3 set DrawItemStats.bg_color
%line 2024+1 main.asm

 stat_y set ASSIGN_LOCAL_BYTE
%line 2025+0 main.asm
 count set ASSIGN_LOCAL_BYTE
 counter set ASSIGN_LOCAL_BYTE
 temp_color set ASSIGN_LOCAL_BYTE
 temp_stat set ASSIGN_LOCAL_BYTE
%line 2026+1 main.asm
 title set ASSIGN_LOCAL_WORD
 stat_ptr set ASSIGN_LOCAL_WORD
%line 2027+0 main.asm
 item_ptr set ASSIGN_LOCAL_WORD
%line 2028+1 main.asm


 LDA item
 ASL
 TAY
 LDA item_stats,Y
 STA stat_ptr
 LDA item_stats+1,Y
 STA stat_ptr+1
 LDY #type
 LDA (stat_ptr),Y
 CMP #stat_Res_Only
 BEQ ..@10010.skip
%line 2040+0 main.asm
 JMP .if89
 ..@10010.skip:
%line 2041+1 main.asm

 LDY #description
 LDA (stat_ptr),Y
 ASL
 TAY
 LDA res_descriptions,Y
 STA stat_ptr
 LDA res_descriptions+1,Y
 STA stat_ptr+1


 LDA xpos
 INC
 INC
 STA draw_X
 INC ypos
 INC ypos



%line 2060+0 main.asm






























































































































































 LDA stat_ptr
 STA DrawText.a0
 LDA stat_ptr+1
 STA DrawText.a0+1
















































































 STZ DrawText.a1
















































































 STZ DrawText.a2
























































































































 LDA ypos
 STA DrawText.a3
















































































 LDA #(COLOR_WHITE) % 256
 STA DrawText.a4


















































































































 LDA bg_color
 STA DrawText.a5




 JSR DrawText
%line 2061+1 main.asm
 JMP .if90
%line 2061+0 main.asm
 .if89:
%line 2062+1 main.asm

%line 2062+0 main.asm

















































































































































 LDA item
 STA DrawItem.a0






























































































































 LDA xpos
 STA DrawItem.a1
























































































































 LDA ypos
 STA DrawItem.a2







 JSR DrawItem
%line 2063+1 main.asm

 LDA item
 ASL
 TAY
 LDA item_titles,Y
 STA title
 LDA item_titles+1,Y
 STA title+1


 LDA xpos
 CLC
 ADC #MENU_CHAR_BOX_TITLE_OFFSET_X
 STA draw_X


 LDA ypos
 CLC
 ADC #MENU_CHAR_BOX_TITLE_OFFSET_Y
 STA stat_y


 LDA item
 ASL
 TAY
 LDA item_stats,Y
 STA stat_ptr
 LDA item_stats+1,Y
 STA stat_ptr+1
 LDY #quality
 LDA (stat_ptr),Y
 TAY
 LDA title_colors,Y
 STA temp_color


%line 2098+0 main.asm




































































































































































 LDA title
 STA DrawText.a0
 LDA title+1
 STA DrawText.a0+1
















































































 STZ DrawText.a1
















































































 STZ DrawText.a2












































































































 LDA stat_y
 STA DrawText.a3
















































































 LDA #(COLOR_BLACK) % 256
 STA DrawText.a4


























































































 LDA temp_color
 STA DrawText.a5




 JSR DrawText
%line 2099+1 main.asm


 LDA ypos
 CLC
 ADC #MENU_CHAR_BOX_STAT_OFFSET_Y
 STA stat_y


 LDA item
 ASL
 TAY
 LDA item_stats,Y
 STA item_ptr
 LDA item_stats+1,Y
 STA item_ptr+1
 LDY #stat_count
 LDA (item_ptr),Y
 STA count
 STZ counter
 .dis.stats:


 LDA counter
 ASL
 ADC #stat_begin
 TAY
 LDA (item_ptr),Y

 TAY


 LDA stat_description_colors,Y
 STA temp_color


 TYA
 ASL
 TAY
 LDA stat_descriptions,Y
 STA title
 LDA stat_descriptions+1,Y
 STA title+1


 LDA counter
 ASL
 ADC #stat_begin+1
 TAY
 LDA (item_ptr),Y
 STA temp_stat


 LDA xpos
 CLC
 ADC #MENU_CHAR_BOX_STAT_OFFSET_X


 LDA temp_color
 CMP bg_color
 BEQ ..@10414.skip
%line 2158+0 main.asm
 JMP .if91
 ..@10414.skip:
%line 2159+1 main.asm

%line 2159+0 main.asm















 LDA #(COLOR_RED) % 256
 STA temp_color
%line 2160+1 main.asm
 .if91:


%line 2162+0 main.asm




































































































































































 LDA title
 STA DrawText.a0
 LDA title+1
 STA DrawText.a0+1




















































































 LDA temp_stat
 STA DrawText.a1
















































































 STZ DrawText.a2












































































































 LDA stat_y
 STA DrawText.a3


























































































 LDA temp_color
 STA DrawText.a4


















































































































 LDA bg_color
 STA DrawText.a5




 JSR DrawText
%line 2163+1 main.asm

 LDA stat_y
 CLC
 ADC #10
 STA stat_y
 INC counter
 LDA counter
 CMP count
 BNE .dis.stats
 .if90:
 RTS

 DrawMenuInventory:

 i set ASSIGN_LOCAL_BYTE
%line 2177+0 main.asm
 j set ASSIGN_LOCAL_BYTE
 ypos set ASSIGN_LOCAL_BYTE
 xpos set ASSIGN_LOCAL_BYTE
 index set ASSIGN_LOCAL_BYTE
 item_type set ASSIGN_LOCAL_BYTE
%line 2178+1 main.asm
 item_ptr set ASSIGN_LOCAL_WORD



%line 2181+0 main.asm































































 LDA #(MENU_CHAR_BOX_LEFT) % 256
 STA DrawRect.a0


















































 LDA #(MENU_CHAR_BOX1_TOP) % 256
 STA DrawRect.a1


















































 LDA #(MENU_CHAR_BOX_WIDTH) % 256
 STA DrawRect.a2


















































 LDA #(MENU_CHAR_BOX_HEIGHT) % 256
 STA DrawRect.a3


















































 LDA #(MENU_CHAR_BOX_COLOR) % 256
 STA DrawRect.a4





 JSR DrawRect
%line 2182+1 main.asm

%line 2182+0 main.asm































































 LDA #(MENU_CHAR_BOX_LEFT) % 256
 STA DrawRect.a0


















































 LDA #(MENU_CHAR_BOX2_TOP) % 256
 STA DrawRect.a1


















































 LDA #(MENU_CHAR_BOX_WIDTH) % 256
 STA DrawRect.a2


















































 LDA #(MENU_CHAR_BOX_HEIGHT) % 256
 STA DrawRect.a3


















































 LDA #(MENU_CHAR_BOX_COLOR) % 256
 STA DrawRect.a4





 JSR DrawRect
%line 2183+1 main.asm

 STZ index

%line 2185+0 main.asm







































 STZ i
%line 2186+1 main.asm
 .dmi.loopy:

%line 2187+0 main.asm

































 STZ j
%line 2188+1 main.asm
 .dmi.loopx:
 LDA j
 ASL
 ASL
 ASL
 ASL
 ADC #MENU_CHAR_GRID_LEFT
 STA xpos
 LDA i
 ASL
 ASL
 ASL
 ASL
 ADC #MENU_CHAR_GRID_TOP
 STA ypos

%line 2203+0 main.asm































































 LDA #(Menu_item_slot) % 256
 STA DrawTile.a0


































































 LDA xpos
 STA DrawTile.a1








































































 LDA ypos
 STA DrawTile.a2







 JSR DrawTile
%line 2204+1 main.asm
 LDY index
 LDA hero_inventory,Y
 CMP #item_none
 BNE ..@10860.skip
%line 2207+0 main.asm
 JMP .if92
 ..@10860.skip:
%line 2208+1 main.asm
 ASL
 TAY
 LDA item_stats,Y
 STA item_ptr
 LDA item_stats+1,Y
 STA item_ptr+1
 LDY #type
 LDA (item_ptr),Y
 CMP #stat_Res_Only
 BNE ..@10862.skip
%line 2217+0 main.asm
 JMP .if93
 ..@10862.skip:
%line 2218+1 main.asm
 STA item_type
 LDY index
 LDA hero_inventory,Y
 STA item_ptr

%line 2222+0 main.asm







































































































 LDA item_ptr
 STA DrawItem.a0


































































 LDA xpos
 STA DrawItem.a1








































































 LDA ypos
 STA DrawItem.a2







 JSR DrawItem
%line 2223+1 main.asm
 LDA menu_char_x
 CMP j
 BEQ ..@10934.skip
%line 2225+0 main.asm
 JMP .if94
 ..@10934.skip:
%line 2226+1 main.asm
 LDA menu_char_y
 CMP i
 BEQ ..@10936.skip
%line 2228+0 main.asm
 JMP .if95
 ..@10936.skip:
%line 2229+1 main.asm
 LDY item_type
 LDA hero_equipped,Y
 STA item_ptr

%line 2232+0 main.asm







































































































 LDA item_ptr
 STA DrawItemStats.a0


















































 LDA #(MENU_CHAR_BOX_LEFT) % 256
 STA DrawItemStats.a1


















































 LDA #(MENU_CHAR_BOX1_TOP) % 256
 STA DrawItemStats.a2


















































 LDA #(MENU_CHAR_BOX_COLOR) % 256
 STA DrawItemStats.a3






 JSR DrawItemStats
%line 2233+1 main.asm
 LDY index
 LDA hero_inventory,Y
 STA item_ptr

%line 2236+0 main.asm







































































































 LDA item_ptr
 STA DrawItemStats.a0


















































 LDA #(MENU_CHAR_BOX_LEFT) % 256
 STA DrawItemStats.a1


















































 LDA #(MENU_CHAR_BOX2_TOP) % 256
 STA DrawItemStats.a2


















































 LDA #(MENU_CHAR_BOX_COLOR) % 256
 STA DrawItemStats.a3






 JSR DrawItemStats
%line 2237+1 main.asm

%line 2237+0 main.asm































































 LDA #(Menu_item_selector) % 256
 STA DrawTile1bpp.a0


















































 LDA #(MENU_CHAR_BOX_LEFT) % 256
 STA DrawTile1bpp.a1


















































 LDA #(MENU_CHAR_BOX2_TOP) % 256
 STA DrawTile1bpp.a2


















































 LDA #(COLOR_TRANSPARENT) % 256
 STA DrawTile1bpp.a3


















































 LDA #(COLOR_GREEN) % 256
 STA DrawTile1bpp.a4





 JSR DrawTile1bpp
%line 2238+1 main.asm
 .if95:
 .if94:
 .if93:
 .if92:
 INC index
 INC j
 LDA j
 CMP #MENU_CHAR_BOX_X_COUNT
 BEQ ..@11187.skip
%line 2246+0 main.asm
 JMP .dmi.loopx
 ..@11187.skip:
%line 2247+1 main.asm
 INC i
 LDA i
 CMP #MENU_CHAR_BOX_Y_COUNT
 BEQ ..@11188.skip
%line 2250+0 main.asm
 JMP .dmi.loopy
 ..@11188.skip:
%line 2251+1 main.asm

%line 2251+0 main.asm































































 LDA #(MENU_CHAR_GRID_LEFT) % 256
 STA DrawRect.a0


















































 LDA #(MENU_CHAR_GRID_LINE_TOP) % 256
 STA DrawRect.a1


















































 LDA #(MENU_CHAR_GRID_LINE_WIDTH) % 256
 STA DrawRect.a2


















































 LDA #(1) % 256
 STA DrawRect.a3


















































 LDA #(COLOR_BLACK) % 256
 STA DrawRect.a4





 JSR DrawRect
%line 2252+1 main.asm

%line 2252+0 main.asm































































 LDA #(MENU_CHAR_GRID_LINE_LEFT) % 256
 STA DrawRect.a0


















































 LDA #(MENU_CHAR_GRID_TOP) % 256
 STA DrawRect.a1


















































 LDA #(1) % 256
 STA DrawRect.a2


















































 LDA #(MENU_CHAR_GRID_LINE_HEIGHT) % 256
 STA DrawRect.a3


















































 LDA #(COLOR_BLACK) % 256
 STA DrawRect.a4





 JSR DrawRect
%line 2253+1 main.asm
 LDA menu_char_x
 ASL
 ASL
 ASL
 ASL
 CLC
 ADC #MENU_CHAR_GRID_LEFT
 STA xpos
 LDA menu_char_y
 ASL
 ASL
 ASL
 ASL
 CLC
 ADC #MENU_CHAR_GRID_TOP
 STA ypos


%line 2270+0 main.asm































































 LDA #(Menu_item_selector) % 256
 STA DrawTile1bpp.a0


































































 LDA xpos
 STA DrawTile1bpp.a1








































































 LDA ypos
 STA DrawTile1bpp.a2


















































 LDA #(COLOR_TRANSPARENT) % 256
 STA DrawTile1bpp.a3


















































 LDA #(COLOR_GREEN) % 256
 STA DrawTile1bpp.a4





 JSR DrawTile1bpp
%line 2271+1 main.asm
 RTS

 ds.tops: FCB MENU_SKILL_BOX1_TOP,MENU_SKILL_BOX2_TOP,MENU_SKILL_BOX3_TOP
 ds.colors: FCB MENU_SKILL_BOX1_COLOR,MENU_SKILL_BOX2_COLOR,MENU_SKILL_BOX3_COLOR
 ds.color1: FCB 4,16,1
 ds.color2: FCB 8,53,23
 DrawSkills:


 row set ASSIGN_LOCAL_BYTE
%line 2280+0 main.asm
 column set ASSIGN_LOCAL_BYTE
 index set ASSIGN_LOCAL_BYTE
 tleft set ASSIGN_LOCAL_BYTE
 top set ASSIGN_LOCAL_BYTE
 color set ASSIGN_LOCAL_BYTE
 color2 set ASSIGN_LOCAL_BYTE
%line 2281+1 main.asm
 mult_buff set ASSIGN_LOCAL_BYTE
%line 2281+0 main.asm
 index_buff set ASSIGN_LOCAL_BYTE
%line 2282+1 main.asm
 str_ptr set ASSIGN_LOCAL_WORD



%line 2285+0 main.asm

















































































 LDA #(MENU_SKILL_DBOX_LEFT) % 256
 STA DrawRect.a0




































































 LDA #(MENU_SKILL_DBOX_TOP) % 256
 STA DrawRect.a1




































































 LDA #(MENU_SKILL_DBOX_WIDTH) % 256
 STA DrawRect.a2




































































 LDA #(MENU_SKILL_DBOX_HEIGHT) % 256
 STA DrawRect.a3




































































 LDA #(MENU_SKILL_DBOX_COLOR) % 256
 STA DrawRect.a4





 JSR DrawRect
%line 2286+1 main.asm


%line 2287+0 main.asm













































 LDA #(Skill0) % 256
 STA index
%line 2288+1 main.asm

%line 2288+0 main.asm

























































 STZ row
%line 2289+1 main.asm
 .ds.rows:
 LDY row
 LDA ds.tops,Y
 STA top
 LDA ds.colors,Y
 STA color

%line 2295+0 main.asm

















































































 LDA #(MENU_SKILL_BOX_LEFT) % 256
 STA DrawRect.a0
































































































 LDA top
 STA DrawRect.a1




































































 LDA #(MENU_SKILL_BOX_WIDTH) % 256
 STA DrawRect.a2




































































 LDA #(MENU_SKILL_BOX_HEIGHT) % 256
 STA DrawRect.a3


























































































 LDA color
 STA DrawRect.a4





 JSR DrawRect
%line 2296+1 main.asm

%line 2296+0 main.asm



















































 STZ column
%line 2297+1 main.asm
 .ds.columns:


 LDA column
 ASL
 ASL
 STA mult_buff
 ASL
 ASL
 ASL
 SEC
 SBC mult_buff
 CLC
 ADC #MENU_SKILL_SKILL_LEFT
 STA tleft



 LDA row
 ASL
 STA mult_buff
 ASL
 ASL
 ASL
 ASL
 SEC
 SBC mult_buff
 CLC
 ADC #MENU_SKILL_SKILL_TOP
 STA top

 LDA index
 SEC
 SBC #Skill0
 TAY
 LDA skill_list,Y
 BNE ..@11727.skip
%line 2333+0 main.asm
 JMP .if96
 ..@11727.skip:
%line 2334+1 main.asm
 LDY row
 LDA ds.color1,Y
 STA color
 LDA ds.color2,Y
 STA color2

%line 2339+0 main.asm

























































































































 LDA index
 STA DrawTile1bpp.a0






































































































 LDA tleft
 STA DrawTile1bpp.a1
































































































 LDA top
 STA DrawTile1bpp.a2


























































































 LDA color
 STA DrawTile1bpp.a3




















































































 LDA color2
 STA DrawTile1bpp.a4





 JSR DrawTile1bpp
%line 2340+1 main.asm
 JMP .if97
%line 2340+0 main.asm
 .if96:
%line 2341+1 main.asm

%line 2341+0 main.asm

























































































































 LDA index
 STA DrawTile1bpp.a0






































































































 LDA tleft
 STA DrawTile1bpp.a1
































































































 LDA top
 STA DrawTile1bpp.a2




































































 LDA #(COLOR_GRAY_1) % 256
 STA DrawTile1bpp.a3




































































 LDA #(COLOR_GRAY_2) % 256
 STA DrawTile1bpp.a4





 JSR DrawTile1bpp
%line 2342+1 main.asm
 .if97:


 LDA menu_skills_x
 CMP column
 BEQ ..@11978.skip
%line 2347+0 main.asm
 JMP .if98
 ..@11978.skip:
%line 2348+1 main.asm
 LDA menu_skills_y
 CMP row
 BEQ ..@11980.skip
%line 2350+0 main.asm
 JMP .if99
 ..@11980.skip:
%line 2351+1 main.asm

%line 2351+0 main.asm

















































































 LDA #(Menu_skill_selector) % 256
 STA DrawTile1bpp.a0






































































































 LDA tleft
 STA DrawTile1bpp.a1
































































































 LDA top
 STA DrawTile1bpp.a2




































































 LDA #(COLOR_TRANSPARENT) % 256
 STA DrawTile1bpp.a3




































































 LDA #(COLOR_GREEN) % 256
 STA DrawTile1bpp.a4





 JSR DrawTile1bpp
%line 2352+1 main.asm


 LDA menu_skills_y
 ASL
 ASL
 CLC
 ADC menu_skills_y
 ADC menu_skills_x
 ASL
 STA index_buff
 TAY
 LDA skill_titles,Y
 STA str_ptr
 LDA skill_titles+1,Y
 STA str_ptr+1
 LDY #0
 .ds.title:
 LDA (str_ptr),Y
 BEQ .ds.title_done
 INY
 BNE .ds.title
 .ds.title_done:

 TYA
 ASL
 STA mult_buff
 ASL
 CLC
 ADC mult_buff
 STA mult_buff
 LDA #MENU_SKILL_DBOX_WIDTH
 SEC
 SBC mult_buff
 LSR
 CLC
 ADC #MENU_SKILL_DBOX_LEFT
 STA draw_X
 LDY menu_skills_y
 LDA ds.color2,Y
 STA color

%line 2392+0 main.asm












































































































































 LDA str_ptr
 STA DrawText.a0
 LDA str_ptr+1
 STA DrawText.a0+1




































































 STZ DrawText.a1




































































 STZ DrawText.a2




































































 LDA #(MENU_SKILL_DBOX_TITLE_TOP) % 256
 STA DrawText.a3




































































 LDA #(COLOR_WHITE) % 256
 STA DrawText.a4


























































































 LDA color
 STA DrawText.a5




 JSR DrawText
%line 2393+1 main.asm


 LDY index_buff
 LDA skill_descriptions,Y
 STA str_ptr
 LDA skill_descriptions+1,Y
 STA str_ptr+1

%line 2400+0 main.asm


































































 LDA #(MENU_SKILL_DBOX_TEXT_LEFT) % 256
 STA draw_X
%line 2401+1 main.asm

%line 2401+0 main.asm












































































































































 LDA str_ptr
 STA DrawText.a0
 LDA str_ptr+1
 STA DrawText.a0+1




































































 STZ DrawText.a1




































































 STZ DrawText.a2




































































 LDA #(MENU_SKILL_DBOX_TEXT_TOP) % 256
 STA DrawText.a3




































































 LDA #(COLOR_WHITE) % 256
 STA DrawText.a4




































































 LDA #(MENU_SKILL_DBOX_COLOR) % 256
 STA DrawText.a5




 JSR DrawText
%line 2402+1 main.asm


 LDA index_buff
 LSR
 TAY
 LDA skill_list,Y
 BEQ ..@12375.skip
%line 2408+0 main.asm
 JMP .if100
 ..@12375.skip:
%line 2409+1 main.asm
 LDA menu_skills_x
 BEQ .ds.upgrade
 DEY
 LDA skill_list,Y
 BNE ..@12378.skip
%line 2413+0 main.asm
 JMP .if101
 ..@12378.skip:
%line 2414+1 main.asm
 .ds.upgrade:

%line 2415+0 main.asm


































































 LDA #(MENU_SKILL_UPGRADE_LEFT) % 256
 STA draw_X
%line 2416+1 main.asm

%line 2416+0 main.asm














 BRA ..@12400.str_skip
 ..@12400.str_addr:
 FCB "[Enter]Upgrade",0
 ..@12400.str_skip:




































































 LDA #(..@12400.str_addr) % 256
 STA DrawText.a0
 LDA #(..@12400.str_addr) / 256
 STA DrawText.a0+1




































































 STZ DrawText.a1




































































 STZ DrawText.a2




































































 LDA #(MENU_SKILL_UPGRADE_TOP) % 256
 STA DrawText.a3




































































 LDA #(COLOR_YELLOW) % 256
 STA DrawText.a4




































































 LDA #(MENU_SKILL_DBOX_COLOR) % 256
 STA DrawText.a5




 JSR DrawText
%line 2417+1 main.asm
 .if101:
 .if100:
 .if99:
 .if98:

 INC index
 INC column
 LDA column
 CMP #5
 BEQ ..@12524.skip
%line 2426+0 main.asm
 JMP .ds.columns
 ..@12524.skip:
%line 2427+1 main.asm
 INC row
 LDA row
 CMP #3
 BEQ ..@12525.skip
%line 2430+0 main.asm
 JMP .ds.rows
 ..@12525.skip:
%line 2431+1 main.asm
 RTS














%line 2457+1 main.asm

 dres.colors: FCB 8,53,50,10,42,42
 dres.items: FCB Res_HP_Heal, Res_Batt_Heal, Res_Exp_Upgrade, Res_HP_Upgrade, Res_Batt_Upgrade, Res_Dmg_Upgrade
 DrawResources:

 row set ASSIGN_LOCAL_BYTE
%line 2462+0 main.asm
 column set ASSIGN_LOCAL_BYTE
 tile_index set ASSIGN_LOCAL_BYTE
 draw_item set ASSIGN_LOCAL_BYTE
%line 2463+1 main.asm

 tleft set ASSIGN_LOCAL_BYTE
%line 2464+0 main.asm
 top set ASSIGN_LOCAL_BYTE
 color set ASSIGN_LOCAL_BYTE
 color2 set ASSIGN_LOCAL_BYTE
 item set ASSIGN_LOCAL_BYTE
%line 2465+1 main.asm
 temp_cost set ASSIGN_LOCAL_BYTE
%line 2465+0 main.asm
 mult_buff set ASSIGN_LOCAL_BYTE
%line 2466+1 main.asm
 item_ptr set ASSIGN_LOCAL_WORD

 LDA #item_none
 STA menu_res_target
 STA draw_item

%line 2471+0 main.asm





























































































 LDA #(MENU_RES_BOX_LEFT) % 256
 STA DrawRect.a0
















































































 LDA #(MENU_RES_BOX_TOP) % 256
 STA DrawRect.a1
















































































 LDA #(MENU_RES_BOX_WIDTH) % 256
 STA DrawRect.a2
















































































 LDA #(MENU_RES_BOX_HEIGHT) % 256
 STA DrawRect.a3
















































































 LDA #(MENU_RES_BOX_COLOR) % 256
 STA DrawRect.a4





 JSR DrawRect
%line 2472+1 main.asm

%line 2472+0 main.asm





































































 STZ row
%line 2473+1 main.asm
 .dres.rows:
 LDA row
 INC
 STA tile_index


 LDA #0
%line 2479+0 main.asm
 CLC
 LDY row
 ..@12669.loop:
 BEQ ..@12669.done
 ADC #MENU_RES_BLOCK_WIDTH
 DEY
 BNE ..@12669.loop
 ..@12669.done:
%line 2480+1 main.asm
 ADC #MENU_RES_BLOCK_LEFT
 STA tleft


 LDY row
 LDA dres.colors,Y
 STA color


%line 2488+0 main.asm





































































































































 LDA tleft
 STA DrawRect.a0
















































































 LDA #(MENU_RES_BLOCK_TOP) % 256
 STA DrawRect.a1
















































































 LDA #(MENU_RES_BLOCK_WIDTH) % 256
 STA DrawRect.a2
















































































 LDA #(2+MENU_RES_BLOCK_HEIGHT*5) % 256
 STA DrawRect.a3












































































































 LDA color
 STA DrawRect.a4





 JSR DrawRect
%line 2489+1 main.asm


%line 2490+0 main.asm































































 STZ column
%line 2491+1 main.asm
 .dres.columns:
 LDA row
 CMP #4
 BCC ..@12813.skip
%line 2494+0 main.asm
 JMP .if102
 ..@12813.skip:
%line 2495+1 main.asm

 LDA #0
%line 2496+0 main.asm
 CLC
 LDY row
 ..@12814.loop:
 BEQ ..@12814.done
 ADC #MENU_RES_BLOCK_WIDTH
 DEY
 BNE ..@12814.loop
 ..@12814.done:
%line 2497+1 main.asm
 ADC #MENU_RES_ITEM_LEFT
 STA tleft


 LDA #0
%line 2501+0 main.asm
 CLC
 LDY column
 ..@12815.loop:
 BEQ ..@12815.done
 ADC #MENU_RES_BLOCK_HEIGHT
 DEY
 BNE ..@12815.loop
 ..@12815.done:
%line 2502+1 main.asm
 ADC #MENU_RES_ITEM_TOP
 STA top


%line 2505+0 main.asm

















































































































































 LDA tile_index
 STA DrawItem.a0
























































































































 LDA tleft
 STA DrawItem.a1


















































































































 LDA top
 STA DrawItem.a2







 JSR DrawItem
%line 2506+1 main.asm


%line 2507+0 main.asm







































































































 LDA tile_index
 STA draw_item
%line 2508+1 main.asm
 LDA tile_index
 CLC
 ADC #5
 STA tile_index
 JMP .if103
%line 2512+0 main.asm
 .if102:
%line 2513+1 main.asm
 LDA column
 CMP #3
 BCC ..@12938.skip
%line 2515+0 main.asm
 JMP .if104
 ..@12938.skip:
%line 2516+1 main.asm

 LDA row
 SEC
 SBC #4
 STA mult_buff
 ASL
 ADC mult_buff
 ADC column
 TAY
 LDA dres.items,Y
 STA item


 LDA #0
%line 2529+0 main.asm
 CLC
 LDY row
 ..@12939.loop:
 BEQ ..@12939.done
 ADC #MENU_RES_BLOCK_WIDTH
 DEY
 BNE ..@12939.loop
 ..@12939.done:
%line 2530+1 main.asm
 ADC #MENU_RES_ITEM_LEFT
 STA tleft


 LDA #0
%line 2534+0 main.asm
 CLC
 LDY column
 ..@12940.loop:
 BEQ ..@12940.done
 ADC #MENU_RES_BLOCK_HEIGHT
 DEY
 BNE ..@12940.loop
 ..@12940.done:
%line 2535+1 main.asm
 ADC #MENU_RES_ITEM_TOP
 STA top


 LDA item

%line 2540+0 main.asm
 BRA .s18c0
%line 2541+1 main.asm
 JMP .s18done
%line 2541+0 main.asm
 .s18c0:
 CMP #Res_HP_Heal
 BEQ ..@12943.skip
 JMP .s18c1
 ..@12943.skip:

 BRA .s18b1
 .s18c1:
 CMP #Res_HP_Upgrade
 BNE .s18c2
 BRA .s18b1

 .s18b1:
%line 2542+1 main.asm

%line 2542+0 main.asm

































 LDA #(MENU_RES_HP_COLOR1) % 256
 STA color
%line 2543+1 main.asm

%line 2543+0 main.asm



























 LDA #(MENU_RES_HP_COLOR2) % 256
 STA color2
%line 2544+1 main.asm
 JMP .s18done
%line 2544+0 main.asm
 .s18c2:
 CMP #Res_Batt_Heal
 BEQ ..@12977.skip
 JMP .s18c3
 ..@12977.skip:

 BRA .s18b2
 .s18c3:
 CMP #Res_Batt_Upgrade
 BNE .s18c4
 BRA .s18b2

 .s18b2:
%line 2545+1 main.asm

%line 2545+0 main.asm

































 LDA #(MENU_RES_BATT_COLOR1) % 256
 STA color
%line 2546+1 main.asm

%line 2546+0 main.asm



























 LDA #(MENU_RES_BATT_COLOR2) % 256
 STA color2
%line 2547+1 main.asm
 JMP .s18done
%line 2547+0 main.asm
 .s18c4:
 CMP #Res_Exp_Upgrade
 BEQ ..@13011.skip
 JMP .s18c5
 ..@13011.skip:

 BRA .s18b3
 .s18c5:
 CMP #Res_Dmg_Upgrade
 BNE .s18c6
 BRA .s18b3

 .s18b3:
%line 2548+1 main.asm

%line 2548+0 main.asm

































 LDA #(MENU_RES_EXP_COLOR1) % 256
 STA color
%line 2549+1 main.asm

%line 2549+0 main.asm



























 LDA #(MENU_RES_EXP_COLOR2) % 256
 STA color2
%line 2550+1 main.asm
 .s18c6:
%line 2550+0 main.asm

 .s18done:





%line 2551+1 main.asm


%line 2552+0 main.asm













































































































 LDA item
 STA DrawTile1bpp.a0
























































































































 LDA tleft
 STA DrawTile1bpp.a1


















































































































 LDA top
 STA DrawTile1bpp.a2












































































































 LDA color
 STA DrawTile1bpp.a3






































































































 LDA color2
 STA DrawTile1bpp.a4





 JSR DrawTile1bpp
%line 2553+1 main.asm

 LDA column
 ASL
 CLC
 ADC row




 CLC
 ADC #21
 STA draw_item
 JMP .if105
%line 2565+0 main.asm
 .if104:
%line 2566+1 main.asm

%line 2566+0 main.asm



















































 LDA #(item_none) % 256
 STA draw_item
%line 2567+1 main.asm
 .if105:
 .if103:

 LDA row
 CMP menu_res_x
 BEQ ..@13208.skip
%line 2572+0 main.asm
 JMP .if106
 ..@13208.skip:
%line 2573+1 main.asm
 LDA column
 CMP menu_res_y
 BEQ ..@13210.skip
%line 2575+0 main.asm
 JMP .if107
 ..@13210.skip:
%line 2576+1 main.asm






 LDA #0
%line 2582+0 main.asm
 CLC
 LDY column
 ..@13211.loop:
 BEQ ..@13211.done
 ADC #MENU_RES_BLOCK_HEIGHT
 DEY
 BNE ..@13211.loop
 ..@13211.done:
%line 2583+1 main.asm
 ADC #MENU_RES_ITEM_TOP
 STA top


%line 2586+0 main.asm





























































































 LDA #(Menu_item_selector) % 256
 STA DrawTile1bpp.a0
























































































































 LDA tleft
 STA DrawTile1bpp.a1


















































































































 LDA top
 STA DrawTile1bpp.a2
















































































 LDA #(COLOR_TRANSPARENT) % 256
 STA DrawTile1bpp.a3
















































































 LDA #(COLOR_GREEN) % 256
 STA DrawTile1bpp.a4





 JSR DrawTile1bpp
%line 2587+1 main.asm

 LDA draw_item
 CMP #item_none
 BNE ..@13337.skip
%line 2590+0 main.asm
 JMP .if108
 ..@13337.skip:
%line 2591+1 main.asm

%line 2591+0 main.asm











































































































































 LDA draw_item
 STA DrawItemStats.a0
















































































 LDA #(MENU_RES_BOX_LEFT) % 256
 STA DrawItemStats.a1
















































































 LDA #(MENU_RES_BOX_TOP) % 256
 STA DrawItemStats.a2
















































































 LDA #(MENU_RES_BOX_COLOR) % 256
 STA DrawItemStats.a3






 JSR DrawItemStats
%line 2592+1 main.asm

%line 2592+0 main.asm




























































































































 LDA draw_item
 STA menu_res_target
%line 2593+1 main.asm
 .if108:
 .if107:
 .if106:

 INC column
 LDA column
 CMP #5
 BEQ ..@13471.skip
%line 2600+0 main.asm
 JMP .dres.columns
 ..@13471.skip:
%line 2601+1 main.asm
 INC row
 LDA row
 CMP #6
 BEQ ..@13472.skip
%line 2604+0 main.asm
 JMP .dres.rows
 ..@13472.skip:
%line 2605+1 main.asm

 LDA menu_res_target
 CMP #item_none
 BNE ..@13474.skip
%line 2608+0 main.asm
 JMP .if109
 ..@13474.skip:
%line 2609+1 main.asm

 ASL
 TAY
 LDA item_stats,Y
 STA item_ptr
 LDA item_stats+1,Y
 STA item_ptr+1
 LDY #cost
 LDA (item_ptr),Y
 STA temp_cost


 LDY #cost_type
 LDA (item_ptr),Y
 TAY
 LDA crystal_colors,Y
 STA color


%line 2627+0 main.asm














































































 LDA #(MENU_RES_COST_LEFT) % 256
 STA draw_X
%line 2628+1 main.asm

%line 2628+0 main.asm














 BRA ..@13498.str_skip
 ..@13498.str_addr:
 FCB "Cost: $",0
 ..@13498.str_skip:
















































































 LDA #(..@13498.str_addr) % 256
 STA DrawText.a0
 LDA #(..@13498.str_addr) / 256
 STA DrawText.a0+1


























































































 LDA temp_cost
 STA DrawText.a1
















































































 STZ DrawText.a2
















































































 LDA #(MENU_RES_COST_TOP) % 256
 STA DrawText.a3












































































































 LDA color
 STA DrawText.a4
















































































 LDA #(MENU_RES_BOX_COLOR) % 256
 STA DrawText.a5




 JSR DrawText
%line 2629+1 main.asm
 .if109:
 RTS

 DrawMenu:

 stat_y set ASSIGN_LOCAL_BYTE
%line 2634+0 main.asm
 counter set ASSIGN_LOCAL_BYTE
 temp_stat set ASSIGN_LOCAL_BYTE
 temp_color set ASSIGN_LOCAL_BYTE
%line 2635+1 main.asm
 stat_ptr set ASSIGN_LOCAL_WORD


 LDA output_mode
%line 2638+0 main.asm

 BRA .s19c0
%line 2639+1 main.asm
 JMP .s19done
%line 2639+0 main.asm
 .s19c0:
 CMP #OUTPUT_CHARACTER
 BEQ ..@13648.skip
 JMP .s19c1
 ..@13648.skip:


 .s19b1:
%line 2640+1 main.asm

%line 2640+0 main.asm



















































 LDA #(MENU_BG_LEFT) % 256
 STA DrawRect.a0






































 LDA #(MENU_BG_TOP) % 256
 STA DrawRect.a1






































 LDA #(MENU_BG_WIDTH) % 256
 STA DrawRect.a2






































 LDA #(MENU_BG_HEIGHT) % 256
 STA DrawRect.a3






































 LDA #(COLOR_MENU_CHAR) % 256
 STA DrawRect.a4





 JSR DrawRect
%line 2641+1 main.asm



%line 2643+0 main.asm



















































 LDA #(Robot_right) % 256
 STA DrawTile.a0






































 LDA #(MENU_CHAR_ROBOT_LEFT) % 256
 STA DrawTile.a1






































 LDA #(MENU_CHAR_ROBOT_TOP) % 256
 STA DrawTile.a2







 JSR DrawTile
%line 2644+1 main.asm



%line 2646+0 main.asm



























 LDA #(MENU_CHAR_HP_TOP) % 256
 STA stat_y
%line 2647+1 main.asm
 STZ counter
 .dm.loop:
 LDA counter
 ASL
 TAY
 LDA hero_stat_pointers,Y
 STA stat_ptr
 LDA hero_stat_pointers+1,Y
 STA stat_ptr+1
 ORA hero_stat_pointers,Y
 BEQ ..@13796.skip
%line 2657+0 main.asm
 JMP .if110
 ..@13796.skip:
%line 2658+1 main.asm

%line 2658+0 main.asm














































 LDA hero_HP_Max
 STA temp_stat
%line 2659+1 main.asm
 JMP .if111
%line 2659+0 main.asm
 .if110:
%line 2660+1 main.asm
 LDA (stat_ptr)
 STA temp_stat
 .if111:
 LDA hero_stat_texts,Y
 STA stat_ptr
 LDA hero_stat_texts+1,Y
 STA stat_ptr+1
 LDY counter
 LDA hero_stat_colors,Y
 STA temp_color

%line 2670+0 main.asm




































 LDA #(MENU_CHAR_STAT_LEFT) % 256
 STA draw_X
%line 2671+1 main.asm

%line 2671+0 main.asm
















































































 LDA stat_ptr
 STA DrawText.a0
 LDA stat_ptr+1
 STA DrawText.a0+1
















































 LDA temp_stat
 STA DrawText.a1






































 STZ DrawText.a2




























































 LDA stat_y
 STA DrawText.a3










































 LDA temp_color
 STA DrawText.a4






































 LDA #(COLOR_MENU_CHAR) % 256
 STA DrawText.a5




 JSR DrawText
%line 2672+1 main.asm
 LDA stat_y
 CLC
 ADC #9
 STA stat_y
 LDA counter
 INC
 STA counter
 CMP #HERO_STAT_COUNT
 BNE .dm.loop


%line 2682+0 main.asm









 JSR DrawMenuInventory
%line 2683+1 main.asm

 JMP .s19done
%line 2684+0 main.asm
 .s19c1:
 CMP #OUTPUT_SKILLS
 BEQ ..@13933.skip
 JMP .s19c2
 ..@13933.skip:


 .s19b2:
%line 2685+1 main.asm

%line 2685+0 main.asm



















































 LDA #(MENU_BG_LEFT) % 256
 STA DrawRect.a0






































 LDA #(MENU_BG_TOP) % 256
 STA DrawRect.a1






































 LDA #(MENU_BG_WIDTH) % 256
 STA DrawRect.a2






































 LDA #(MENU_BG_HEIGHT) % 256
 STA DrawRect.a3






































 LDA #(COLOR_MENU_SKILLS) % 256
 STA DrawRect.a4





 JSR DrawRect
%line 2686+1 main.asm

%line 2686+0 main.asm




































 LDA #(MENU_SKILL_POINTS_LEFT) % 256
 STA draw_X
%line 2687+1 main.asm

%line 2687+0 main.asm














 BRA ..@14033.str_skip
 ..@14033.str_addr:
 FCB "Points: $",0
 ..@14033.str_skip:






































 LDA #(..@14033.str_addr) % 256
 STA DrawText.a0
 LDA #(..@14033.str_addr) / 256
 STA DrawText.a0+1





































































 LDA hero_Points
 STA DrawText.a1






































 STZ DrawText.a2






































 LDA #(MENU_SKILL_POINTS_TOP) % 256
 STA DrawText.a3






































 LDA #(COLOR_WHITE) % 256
 STA DrawText.a4






































 LDA #(COLOR_MENU_SKILLS) % 256
 STA DrawText.a5




 JSR DrawText
%line 2688+1 main.asm


%line 2689+0 main.asm









 JSR DrawSkills
%line 2690+1 main.asm

 JMP .s19done
%line 2691+0 main.asm
 .s19c2:
 CMP #OUTPUT_RESOURCES
 BEQ ..@14127.skip
 JMP .s19c3
 ..@14127.skip:


 .s19b3:
%line 2692+1 main.asm

%line 2692+0 main.asm



















































 LDA #(MENU_BG_LEFT) % 256
 STA DrawRect.a0






































 LDA #(MENU_BG_TOP) % 256
 STA DrawRect.a1






































 LDA #(MENU_BG_WIDTH) % 256
 STA DrawRect.a2






































 LDA #(MENU_BG_HEIGHT) % 256
 STA DrawRect.a3






































 LDA #(COLOR_MENU_RESOURCES) % 256
 STA DrawRect.a4





 JSR DrawRect
%line 2693+1 main.asm

%line 2693+0 main.asm



















































 LDA #(MENU_RES_MONEY_LEFT) % 256
 STA DrawRect.a0






































 LDA #(MENU_RES_MONEY_TOP) % 256
 STA DrawRect.a1






































 LDA #(MENU_RES_MONEY_WIDTH) % 256
 STA DrawRect.a2






































 LDA #(MENU_RES_MONEY_HEIGHT) % 256
 STA DrawRect.a3






































 LDA #(COLOR_BLACK) % 256
 STA DrawRect.a4





 JSR DrawRect
%line 2694+1 main.asm

%line 2694+0 main.asm




































 LDA #(MENU_RES_MONEY_RED_LEFT) % 256
 STA draw_X
%line 2695+1 main.asm

%line 2695+0 main.asm














 BRA ..@14303.str_skip
 ..@14303.str_addr:
 FCB "$",0
 ..@14303.str_skip:






































 LDA #(..@14303.str_addr) % 256
 STA DrawText.a0
 LDA #(..@14303.str_addr) / 256
 STA DrawText.a0+1





































































 LDA hero_Red
 STA DrawText.a1






































 STZ DrawText.a2






































 LDA #(MENU_RES_MONEY_VAL_TOP) % 256
 STA DrawText.a3






































 LDA #(COLOR_CRYSTAL_RED1) % 256
 STA DrawText.a4






































 LDA #(COLOR_BLACK) % 256
 STA DrawText.a5




 JSR DrawText
%line 2696+1 main.asm

%line 2696+0 main.asm




































 LDA #(MENU_RES_MONEY_BLUE_LEFT) % 256
 STA draw_X
%line 2697+1 main.asm

%line 2697+0 main.asm














 BRA ..@14410.str_skip
 ..@14410.str_addr:
 FCB "$",0
 ..@14410.str_skip:






































 LDA #(..@14410.str_addr) % 256
 STA DrawText.a0
 LDA #(..@14410.str_addr) / 256
 STA DrawText.a0+1





































































 LDA hero_Blue
 STA DrawText.a1






































 STZ DrawText.a2






































 LDA #(MENU_RES_MONEY_VAL_TOP) % 256
 STA DrawText.a3






































 LDA #(COLOR_CRYSTAL_BLUE1) % 256
 STA DrawText.a4






































 LDA #(COLOR_BLACK) % 256
 STA DrawText.a5




 JSR DrawText
%line 2698+1 main.asm

%line 2698+0 main.asm




































 LDA #(MENU_RES_MONEY_YELLOW_LEFT) % 256
 STA draw_X
%line 2699+1 main.asm

%line 2699+0 main.asm














 BRA ..@14517.str_skip
 ..@14517.str_addr:
 FCB "$",0
 ..@14517.str_skip:






































 LDA #(..@14517.str_addr) % 256
 STA DrawText.a0
 LDA #(..@14517.str_addr) / 256
 STA DrawText.a0+1





































































 LDA hero_Yellow
 STA DrawText.a1






































 STZ DrawText.a2






































 LDA #(MENU_RES_MONEY_VAL_TOP) % 256
 STA DrawText.a3






































 LDA #(COLOR_CRYSTAL_YELLOW1) % 256
 STA DrawText.a4






































 LDA #(COLOR_BLACK) % 256
 STA DrawText.a5




 JSR DrawText
%line 2700+1 main.asm


%line 2701+0 main.asm









 JSR DrawResources
%line 2702+1 main.asm
 .s19c3:
%line 2702+0 main.asm

 .s19done:





%line 2703+1 main.asm
 RTS



 CheckHP:

 temp set ASSIGN_LOCAL_WORD


 LDA hero_HP+1
 BMI .chp.dead
 ORA hero_HP
 BEQ .chp.dead
 BRA .chp.alive
 .chp.dead:

%line 2718+0 main.asm













 STZ hero_HP
 STZ hero_HP+1
%line 2719+1 main.asm

%line 2719+0 main.asm









 JSR DrawFrame
%line 2720+1 main.asm

%line 2720+0 main.asm









 JSR DrawLegend
%line 2721+1 main.asm

%line 2721+0 main.asm



























 LDA #(DEAD_LEFT) % 256
 STA DrawRect.a0














 LDA #(DEAD_TOP) % 256
 STA DrawRect.a1














 LDA #(DEAD_WIDTH) % 256
 STA DrawRect.a2














 LDA #(DEAD_HEIGHT) % 256
 STA DrawRect.a3














 LDA #(COLOR_BLACK) % 256
 STA DrawRect.a4





 JSR DrawRect
%line 2722+1 main.asm

%line 2722+0 main.asm












 LDA #(DEAD_MSG_LEFT) % 256
 STA draw_X
%line 2723+1 main.asm

%line 2723+0 main.asm














 BRA ..@14706.str_skip
 ..@14706.str_addr:
 FCB "You died",0
 ..@14706.str_skip:














 LDA #(..@14706.str_addr) % 256
 STA DrawText.a0
 LDA #(..@14706.str_addr) / 256
 STA DrawText.a0+1














 STZ DrawText.a1














 STZ DrawText.a2














 LDA #(DEAD_MSG_TOP) % 256
 STA DrawText.a3














 LDA #(COLOR_WHITE) % 256
 STA DrawText.a4














 LDA #(COLOR_BLACK) % 256
 STA DrawText.a5




 JSR DrawText
%line 2724+1 main.asm

 .chp.loop:
 BRA .chp.loop
 .chp.alive:
 LDA hero_HP_Max
 CMP hero_HP
 BCC ..@14770.skip
%line 2730+0 main.asm
 JMP .if112
 ..@14770.skip:
%line 2731+1 main.asm

%line 2731+0 main.asm




















 LDA hero_HP_Max
 STA hero_HP
 LDA hero_HP_Max+1
 STA hero_HP+1
%line 2732+1 main.asm
 .if112:
 .chp.done:
 RTS

 CheckLavaExit:

 mX set ASSIGN_LOCAL_BYTE
%line 2738+0 main.asm
 mY set ASSIGN_LOCAL_BYTE
%line 2739+1 main.asm


 LDA display_X
 CLC
 ADC hero_X
 STA mX
 LDA display_Y
 CLC
 ADC hero_Y
 STA mY


%line 2750+0 main.asm


































 LDA #(map_data) % 256
 STA MapXY.a0
 LDA #(map_data) / 256
 STA MapXY.a0+1






























 LDA mX
 STA MapXY.a1
























 LDA mY
 STA MapXY.a2







 JSR MapXY
%line 2751+1 main.asm
 LDA ret_val
%line 2751+0 main.asm

 BRA .s20c0
%line 2752+1 main.asm
 JMP .s20done
%line 2752+0 main.asm
 .s20c0:
 CMP #MAP_LAVA
 BEQ ..@14839.skip
 JMP .s20c1
 ..@14839.skip:


 .s20b1:
%line 2753+1 main.asm









%line 2761+0 main.asm















 LDA hero_HP
 SEC
 SBC hero_Lava_Dmg
 STA hero_HP
 LDA hero_HP+1
 SBC hero_Lava_Dmg+1
 STA hero_HP+1
%line 2762+1 main.asm

%line 2762+0 main.asm









 JSR CheckHP
%line 2763+1 main.asm

%line 2763+0 main.asm


















 LDA #(true) % 256
 STA ret_val
%line 2764+1 main.asm
 BRA .cle.done
 JMP .s20done
%line 2765+0 main.asm
 .s20c1:
 CMP #MAP_EXIT
 BEQ ..@14865.skip
 JMP .s20c2
 ..@14865.skip:


 .s20b2:
%line 2766+1 main.asm

%line 2766+0 main.asm









 JSR MakeMap
%line 2767+1 main.asm

%line 2767+0 main.asm









 JSR LoadMonsters
%line 2768+1 main.asm

%line 2768+0 main.asm









 JSR LoadCrystals
%line 2769+1 main.asm

%line 2769+0 main.asm









 JSR ResetGame
%line 2770+1 main.asm

%line 2770+0 main.asm


















 LDA #(true) % 256
 STA ret_val
%line 2771+1 main.asm
 BRA .cle.done
 .s20c2:
%line 2772+0 main.asm

 .s20done:





%line 2773+1 main.asm

%line 2773+0 main.asm


















 LDA #(false) % 256
 STA ret_val
%line 2774+1 main.asm
 .cle.done:
 RTS

 AddExp:

 exp set ASSIGN_LOCAL_BYTE
%line 2779+0 main.asm
 AddExp.a0 set AddExp.exp
%line 2780+1 main.asm


 LDA hero_Exp
 CLC
 ADC exp
 STA hero_Exp
 CMP hero_Exp_Max
 BCS ..@14918.skip
%line 2787+0 main.asm
 JMP .if113
 ..@14918.skip:
%line 2788+1 main.asm
 LDA hero_Exp
 SEC
 SBC hero_Exp_Max
 STA hero_Exp
 LDA hero_Exp_Max
 CLC
 ADC #10
 STA hero_Exp_Max
 INC hero_Level
 INC hero_Points

%line 2798+0 main.asm




















 LDA hero_HP_Max
 STA hero_HP
 LDA hero_HP_Max+1
 STA hero_HP+1
%line 2799+1 main.asm

%line 2799+0 main.asm



















 LDA hero_Batt_Max
 STA hero_Batt
%line 2800+1 main.asm

 LDA skill_list+Wise_Rewards
 BNE ..@14941.skip
%line 2802+0 main.asm
 JMP .if114
 ..@14941.skip:
%line 2803+1 main.asm

%line 2803+0 main.asm



























 LDA #(3) % 256
 STA rand8.a0









 JSR rand8
%line 2804+1 main.asm
 LDA ret_val
%line 2804+0 main.asm

 BRA .s21c0
%line 2805+1 main.asm
 JMP .s21done
%line 2805+0 main.asm
 .s21c0:
 CMP #0
 BEQ ..@14964.skip
 JMP .s21c1
 ..@14964.skip:


 .s21b1:
%line 2806+1 main.asm
 LDA hero_Blue
 CLC
 ADC #5
 STA hero_Blue
 JMP .s21done
%line 2810+0 main.asm
 .s21c1:
 CMP #1
 BEQ ..@14973.skip
 JMP .s21c2
 ..@14973.skip:


 .s21b2:
%line 2811+1 main.asm
 LDA hero_Red
 CLC
 ADC #5
 STA hero_Red
 JMP .s21done
%line 2815+0 main.asm
 .s21c2:
 CMP #2
 BEQ ..@14982.skip
 JMP .s21c3
 ..@14982.skip:


 .s21b3:
%line 2816+1 main.asm
 LDA hero_Yellow
 CLC
 ADC #5
 STA hero_Yellow
 .s21c3:
%line 2820+0 main.asm

 .s21done:





%line 2821+1 main.asm
 .if114:
 .if113:

 RTS

 TickHandler:

 redraw set ASSIGN_LOCAL_BYTE
%line 2828+0 main.asm
 original_hp set ASSIGN_LOCAL_BYTE
 original_batt set ASSIGN_LOCAL_BYTE
 temp_rand set ASSIGN_LOCAL_BYTE
 mult_buff set ASSIGN_LOCAL_BYTE
 index5 set ASSIGN_LOCAL_BYTE
%line 2829+1 main.asm
 list_ptr set ASSIGN_LOCAL_WORD


%line 2831+0 main.asm







































 LDA #(false) % 256
 STA redraw
%line 2832+1 main.asm

%line 2832+0 main.asm












































































 LDA hero_HP
 STA original_hp
%line 2833+1 main.asm

%line 2833+0 main.asm






































































 LDA hero_Batt
 STA original_batt
%line 2834+1 main.asm


%line 2835+0 main.asm





















































































 LDA hero_HP_Recharge

 CLC
 ADC hero_HP
 STA hero_HP
 BCC ..@15063.skip
 INC hero_HP+1
 ..@15063.skip:
%line 2836+1 main.asm

%line 2836+0 main.asm





















































































 LDA hero_Batt_Recharge

 CLC
 ADC hero_Batt
 STA hero_Batt
 BCC ..@15083.skip
 INC hero_Batt+1
 ..@15083.skip:
%line 2837+1 main.asm
 LDA hero_activity
 BNE ..@15105.skip
%line 2838+0 main.asm
 JMP .if115
 ..@15105.skip:
%line 2839+1 main.asm

 LDA hero_target_type
%line 2840+0 main.asm

 BRA .s22c0
%line 2841+1 main.asm
 JMP .s22done
%line 2841+0 main.asm
 .s22c0:
 CMP #target_crystal
 BEQ ..@15108.skip
 JMP .s22c1
 ..@15108.skip:


 .s22b1:
%line 2842+1 main.asm
 LDA hero_Batt
 CMP hero_Mine_Cost
 BCS ..@15118.skip
%line 2844+0 main.asm
 JMP .if116
 ..@15118.skip:
%line 2845+1 main.asm
 LDA skill_list+Battery_Saver
 BEQ .th.batt_saver

%line 2847+0 main.asm































































 LDA #(5) % 256
 STA rand8.a0









 JSR rand8
%line 2848+1 main.asm
 LDA ret_val
 BEQ .th.batt_saver_done
 .th.batt_saver:
 LDA hero_Batt
 SEC
 SBC hero_Mine_Cost
 STA hero_Batt
 .th.batt_saver_done:

 INC hero_activity_ticks

%line 2858+0 main.asm







































 LDA #(true) % 256
 STA redraw
%line 2859+1 main.asm
 LDA hero_activity_ticks
 CMP hero_activity_ticks_max
 BEQ ..@15160.skip
%line 2861+0 main.asm
 JMP .if117
 ..@15160.skip:
%line 2862+1 main.asm

 LDA hero_target_index

 ASL
 ASL
 CLC
 STA index5
 ADC #CRYSTAL_COLOR
 TAY
 LDA crystal_list,Y

%line 2872+0 main.asm
 BRA .s23c0
%line 2873+1 main.asm
 JMP .s23done
%line 2873+0 main.asm
 .s23c0:
 CMP #CRYSTAL_RED_TYPE
 BEQ ..@15163.skip
 JMP .s23c1
 ..@15163.skip:


 .s23b1:
%line 2874+1 main.asm
 INC hero_Red
 JMP .s23done
%line 2875+0 main.asm
 .s23c1:
 CMP #CRYSTAL_BLUE_TYPE
 BEQ ..@15172.skip
 JMP .s23c2
 ..@15172.skip:


 .s23b2:
%line 2876+1 main.asm
 INC hero_Blue
 JMP .s23done
%line 2877+0 main.asm
 .s23c2:
 CMP #CRYSTAL_YELLOW_TYPE
 BEQ ..@15181.skip
 JMP .s23c3
 ..@15181.skip:


 .s23b3:
%line 2878+1 main.asm
 INC hero_Yellow
 .s23c3:
%line 2879+0 main.asm

 .s23done:





%line 2880+1 main.asm
 LDA skill_list+Master_Miner
 BNE ..@15196.skip
%line 2881+0 main.asm
 JMP .if118
 ..@15196.skip:
%line 2882+1 main.asm
 LDA crystal_list,Y

%line 2883+0 main.asm
 BRA .s24c0
%line 2884+1 main.asm
 JMP .s24done
%line 2884+0 main.asm
 .s24c0:
 CMP #CRYSTAL_RED_TYPE
 BEQ ..@15199.skip
 JMP .s24c1
 ..@15199.skip:


 .s24b1:
%line 2885+1 main.asm
 INC hero_Red
 JMP .s24done
%line 2886+0 main.asm
 .s24c1:
 CMP #CRYSTAL_BLUE_TYPE
 BEQ ..@15208.skip
 JMP .s24c2
 ..@15208.skip:


 .s24b2:
%line 2887+1 main.asm
 INC hero_Blue
 JMP .s24done
%line 2888+0 main.asm
 .s24c2:
 CMP #CRYSTAL_YELLOW_TYPE
 BEQ ..@15217.skip
 JMP .s24c3
 ..@15217.skip:


 .s24b3:
%line 2889+1 main.asm
 INC hero_Yellow
 .s24c3:
%line 2890+0 main.asm

 .s24done:





%line 2891+1 main.asm

%line 2891+0 main.asm































































 LDA #(2) % 256
 STA AddExp.a0









 JSR AddExp
%line 2892+1 main.asm
 .if118:
 LDA index5
 CLC
 ADC #CRYSTAL_ACTIVE
 TAY
 LDA #false
 STA crystal_list,Y

%line 2899+0 main.asm































































 LDA #(2) % 256
 STA AddExp.a0









 JSR AddExp
%line 2900+1 main.asm

%line 2900+0 main.asm
















































 LDA #(target_none) % 256
 STA hero_target_type
%line 2901+1 main.asm

%line 2901+0 main.asm
















































 LDA #(false) % 256
 STA hero_activity
%line 2902+1 main.asm

%line 2902+0 main.asm









 JSR DrawFrame
%line 2903+1 main.asm

%line 2903+0 main.asm







































 LDA #(true) % 256
 STA redraw
%line 2904+1 main.asm
 .if117:
 .if116:
 JMP .s22done
%line 2906+0 main.asm
 .s22c1:
 CMP #target_rock
 BEQ ..@15335.skip
 JMP .s22c2
 ..@15335.skip:


 .s22b2:
%line 2907+1 main.asm
 LDA hero_Batt
 CMP hero_Drill_Cost
 BCS ..@15345.skip
%line 2909+0 main.asm
 JMP .if119
 ..@15345.skip:
%line 2910+1 main.asm
 LDA hero_Batt
 SEC
 SBC hero_Drill_Cost
 STA hero_Batt
 INC hero_activity_ticks

%line 2915+0 main.asm







































 LDA #(true) % 256
 STA redraw
%line 2916+1 main.asm
 LDA hero_activity_ticks
 CMP hero_activity_ticks_max
 BEQ ..@15361.skip
%line 2918+0 main.asm
 JMP .if120
 ..@15361.skip:
%line 2919+1 main.asm

%line 2919+0 main.asm
































































 LDA #(map_data) % 256
 STA OffsetXY.a0
 LDA #(map_data) / 256
 STA OffsetXY.a0+1





























































































 LDA hero_target_index
 STA OffsetXY.a1





























































































 LDA hero_target_index2
 STA OffsetXY.a2







 JSR OffsetXY
%line 2920+1 main.asm
 LDA #MAP_BLANK
 STA (ret_val)

%line 2922+0 main.asm































































 LDA #(1) % 256
 STA AddExp.a0









 JSR AddExp
%line 2923+1 main.asm

%line 2923+0 main.asm
















































 LDA #(target_none) % 256
 STA hero_target_type
%line 2924+1 main.asm

%line 2924+0 main.asm
















































 LDA #(false) % 256
 STA hero_activity
%line 2925+1 main.asm
 LDA skill_list+Lucky_Driller
 BNE ..@15490.skip
%line 2926+0 main.asm
 JMP .if121
 ..@15490.skip:
%line 2927+1 main.asm

%line 2927+0 main.asm































































 LDA #(4) % 256
 STA rand8.a0









 JSR rand8
%line 2928+1 main.asm
 LDA ret_val
 BEQ ..@15519.skip
%line 2929+0 main.asm
 JMP .if122
 ..@15519.skip:
%line 2930+1 main.asm

%line 2930+0 main.asm































































 LDA #(3) % 256
 STA rand8.a0









 JSR rand8
%line 2931+1 main.asm
 LDA ret_val
%line 2931+0 main.asm

 BRA .s25c0
%line 2932+1 main.asm
 JMP .s25done
%line 2932+0 main.asm
 .s25c0:
 CMP #0
 BEQ ..@15548.skip
 JMP .s25c1
 ..@15548.skip:


 .s25b1:
%line 2933+1 main.asm
 INC hero_Red
 JMP .s25done
%line 2934+0 main.asm
 .s25c1:
 CMP #1
 BEQ ..@15557.skip
 JMP .s25c2
 ..@15557.skip:


 .s25b2:
%line 2935+1 main.asm
 INC hero_Blue
 JMP .s25done
%line 2936+0 main.asm
 .s25c2:
 CMP #2
 BEQ ..@15566.skip
 JMP .s25c3
 ..@15566.skip:


 .s25b3:
%line 2937+1 main.asm
 INC hero_Yellow
 .s25c3:
%line 2938+0 main.asm

 .s25done:





%line 2939+1 main.asm

%line 2939+0 main.asm































































 LDA #(2) % 256
 STA AddExp.a0









 JSR AddExp
%line 2940+1 main.asm
 .if122:
 .if121:

%line 2942+0 main.asm









 JSR DrawFrame
%line 2943+1 main.asm

%line 2943+0 main.asm







































 LDA #(true) % 256
 STA redraw
%line 2944+1 main.asm
 .if120:
 .if119:
 JMP .s22done
%line 2946+0 main.asm
 .s22c2:
 CMP #target_monster
 BEQ ..@15630.skip
 JMP .s22c3
 ..@15630.skip:


 .s22b3:
%line 2947+1 main.asm
 LDA hero_Batt
 CMP hero_Dmg_Cost
 BCS ..@15640.skip
%line 2949+0 main.asm
 JMP .if123
 ..@15640.skip:
%line 2950+1 main.asm
 LDA hero_Batt
 SEC
 SBC hero_Dmg_Cost
 STA hero_Batt
 LDA skill_list+Instakill
 BNE ..@15643.skip
%line 2955+0 main.asm
 JMP .if124
 ..@15643.skip:
%line 2956+1 main.asm

%line 2956+0 main.asm































































 LDA #(20) % 256
 STA rand8.a0









 JSR rand8
%line 2957+1 main.asm
 LDA ret_val
 BEQ ..@15672.skip
%line 2958+0 main.asm
 JMP .if125
 ..@15672.skip:
%line 2959+1 main.asm

%line 2959+0 main.asm
















































 STZ hero_activity_ticks
%line 2960+1 main.asm
 .if125:
 .if124:
 LDA hero_activity_ticks
 BNE ..@15694.skip
%line 2963+0 main.asm
 JMP .if126
 ..@15694.skip:
%line 2964+1 main.asm

%line 2964+0 main.asm






















































































 LDA hero_activity_ticks

 SEC
 SBC hero_Dmg

 STA hero_activity_ticks
 BCS ..@15695.skip
 DEC hero_activity_ticks+1
 ..@15695.skip:
%line 2965+1 main.asm

%line 2965+0 main.asm































































 LDA #(100) % 256
 STA rand8.a0









 JSR rand8
%line 2966+1 main.asm
 LDA ret_val
 CMP hero_Crit_Rate
 BCC ..@15743.skip
%line 2968+0 main.asm
 JMP .if127
 ..@15743.skip:
%line 2969+1 main.asm
 LDA skill_list+Crit_Lord
 BNE ..@15746.skip
%line 2970+0 main.asm
 JMP .if128
 ..@15746.skip:
%line 2971+1 main.asm

%line 2971+0 main.asm






















































































 LDA hero_activity_ticks

 SEC
 SBC hero_Dmg

 STA hero_activity_ticks
 BCS ..@15747.skip
 DEC hero_activity_ticks+1
 ..@15747.skip:
%line 2972+1 main.asm
 JMP .if129
%line 2972+0 main.asm
 .if128:
%line 2973+1 main.asm
 LDA hero_Dmg
 LSR
 STA mult_buff

%line 2976+0 main.asm





















































 LDA hero_activity_ticks

 SEC
 SBC mult_buff

 STA hero_activity_ticks
 BCS ..@15769.skip
 DEC hero_activity_ticks+1
 ..@15769.skip:
%line 2977+1 main.asm
 .if129:
 .if127:
 .if126:

 LDA hero_activity_ticks+1
 BMI .th.mob_dead

 ORA hero_activity_ticks
 BEQ .th.mob_dead
 BRA .th.mob_done
 .th.mob_dead:
 LDA hero_target_index
 ASL
 CLC
 ADC hero_target_index
 ADC #MONSTER_ALIVE
 TAY
 LDA #false
 STA monster_list,Y
 LDA skill_list+Experienced
 BNE ..@15792.skip
%line 2997+0 main.asm
 JMP .if130
 ..@15792.skip:
%line 2998+1 main.asm

%line 2998+0 main.asm































































 LDA #(11) % 256
 STA AddExp.a0









 JSR AddExp
%line 2999+1 main.asm
 JMP .if131
%line 2999+0 main.asm
 .if130:
%line 3000+1 main.asm

%line 3000+0 main.asm































































 LDA #(10) % 256
 STA AddExp.a0









 JSR AddExp
%line 3001+1 main.asm
 .if131:

%line 3002+0 main.asm
















































 LDA #(target_none) % 256
 STA hero_target_type
%line 3003+1 main.asm

%line 3003+0 main.asm
















































 LDA #(false) % 256
 STA hero_activity
%line 3004+1 main.asm
 LDA skill_list+Bounty_Hunter
 BNE ..@15881.skip
%line 3005+0 main.asm
 JMP .if132
 ..@15881.skip:
%line 3006+1 main.asm

%line 3006+0 main.asm































































 LDA #(10) % 256
 STA rand8.a0









 JSR rand8
%line 3007+1 main.asm
 LDA ret_val
 BEQ ..@15910.skip
%line 3008+0 main.asm
 JMP .if133
 ..@15910.skip:
%line 3009+1 main.asm

%line 3009+0 main.asm































































 LDA #(3) % 256
 STA rand8.a0









 JSR rand8
%line 3010+1 main.asm
 LDA ret_val
%line 3010+0 main.asm

 BRA .s26c0
%line 3011+1 main.asm
 JMP .s26done
%line 3011+0 main.asm
 .s26c0:
 CMP #0
 BEQ ..@15939.skip
 JMP .s26c1
 ..@15939.skip:


 .s26b1:
%line 3012+1 main.asm
 INC hero_Red
 JMP .s26done
%line 3013+0 main.asm
 .s26c1:
 CMP #1
 BEQ ..@15948.skip
 JMP .s26c2
 ..@15948.skip:


 .s26b2:
%line 3014+1 main.asm
 INC hero_Blue
 JMP .s26done
%line 3015+0 main.asm
 .s26c2:
 CMP #2
 BEQ ..@15957.skip
 JMP .s26c3
 ..@15957.skip:


 .s26b3:
%line 3016+1 main.asm
 INC hero_Yellow
 .s26c3:
%line 3017+0 main.asm

 .s26done:





%line 3018+1 main.asm
 .if133:
 .if132:

%line 3020+0 main.asm









 JSR DrawFrame
%line 3021+1 main.asm
 .th.mob_done:

%line 3022+0 main.asm







































 LDA #(true) % 256
 STA redraw
%line 3023+1 main.asm
 .if123:



%line 3026+0 main.asm









 JSR rand5050
%line 3027+1 main.asm
 LDA ret_val
 BNE ..@15996.skip
%line 3028+0 main.asm
 JMP .if134
 ..@15996.skip:
%line 3029+1 main.asm

%line 3029+0 main.asm











































 LDA hero_HP

 SEC
 SBC #2

 STA hero_HP
 BCS ..@15997.skip
 DEC hero_HP+1
 ..@15997.skip:
%line 3030+1 main.asm
 .if134:
 .s22c3:
%line 3031+0 main.asm

 .s22done:





%line 3032+1 main.asm
 .if115:

 LDA hero_Batt_Max
 CMP hero_Batt
 BCC ..@16021.skip
%line 3036+0 main.asm
 JMP .if135
 ..@16021.skip:
%line 3037+1 main.asm

%line 3037+0 main.asm



























































































 LDA hero_Batt_Max
 STA hero_Batt
%line 3038+1 main.asm
 .if135:
 LDA hero_Batt
 CMP original_batt
 BNE ..@16047.skip
%line 3041+0 main.asm
 JMP .if136
 ..@16047.skip:
%line 3042+1 main.asm

%line 3042+0 main.asm







































 LDA #(true) % 256
 STA redraw
%line 3043+1 main.asm
 .if136:

%line 3044+0 main.asm









 JSR CheckHP
%line 3045+1 main.asm
 LDA hero_HP
 CMP original_hp
 BNE ..@16067.skip
%line 3047+0 main.asm
 JMP .if137
 ..@16067.skip:
%line 3048+1 main.asm

%line 3048+0 main.asm







































 LDA #(true) % 256
 STA redraw
%line 3049+1 main.asm
 .if137:

%line 3050+0 main.asm









 JSR CheckLavaExit
%line 3051+1 main.asm
 LDA ret_val
 BNE ..@16088.skip
%line 3052+0 main.asm
 JMP .if138
 ..@16088.skip:
%line 3053+1 main.asm

%line 3053+0 main.asm







































 LDA #(true) % 256
 STA redraw
%line 3054+1 main.asm
 .if138:
 LDA redraw
 BNE ..@16107.skip
%line 3056+0 main.asm
 JMP .if139
 ..@16107.skip:
%line 3057+1 main.asm

%line 3057+0 main.asm









 JSR DrawLegend
%line 3058+1 main.asm
 .if139:
 RTS



 KeyHandlerGame:

 key set ASSIGN_LOCAL_BYTE
 redraw set ASSIGN_LOCAL_BYTE
%line 3066+0 main.asm
 mX set ASSIGN_LOCAL_BYTE
 mY set ASSIGN_LOCAL_BYTE
 or_buff set ASSIGN_LOCAL_BYTE
 moved set ASSIGN_LOCAL_BYTE
%line 3067+1 main.asm



%line 3069+0 main.asm












































































 LDA KB_INPUT
 STA key
%line 3070+1 main.asm
 LDA key
%line 3070+0 main.asm

 BRA .s27c0
%line 3071+1 main.asm
 JMP .s27done
%line 3071+0 main.asm
 .s27c0:
 CMP #'m'
 BEQ ..@16145.skip
 JMP .s27c1
 ..@16145.skip:

 BRA .s27b1
 .s27c1:
 CMP #'c'
 BNE .s27c2
 BRA .s27b1

 .s27b1:
%line 3072+1 main.asm

%line 3072+0 main.asm










































 LDA #(OUTPUT_CHARACTER) % 256
 STA output_mode
%line 3073+1 main.asm
 JMP .s27done
%line 3073+0 main.asm
 .s27c2:
 CMP #'k'
 BEQ ..@16168.skip
 JMP .s27c3
 ..@16168.skip:


 .s27b2:
%line 3074+1 main.asm

%line 3074+0 main.asm










































 LDA #(OUTPUT_SKILLS) % 256
 STA output_mode
%line 3075+1 main.asm
 JMP .s27done
%line 3075+0 main.asm
 .s27c3:
 CMP #'r'
 BEQ ..@16191.skip
 JMP .s27c4
 ..@16191.skip:


 .s27b3:
%line 3076+1 main.asm

%line 3076+0 main.asm










































 LDA #(OUTPUT_RESOURCES) % 256
 STA output_mode
%line 3077+1 main.asm
 .s27c4:
%line 3077+0 main.asm

 .s27done:





%line 3078+1 main.asm

 LDA output_mode
 CMP #OUTPUT_GAME
 BNE ..@16219.skip
%line 3081+0 main.asm
 JMP .if140
 ..@16219.skip:
%line 3082+1 main.asm

%line 3082+0 main.asm









 JSR DrawMenuBorder
%line 3083+1 main.asm

%line 3083+0 main.asm









 JSR DrawMenu
%line 3084+1 main.asm
 JMP .if141
%line 3084+0 main.asm
 .if140:
%line 3085+1 main.asm

%line 3085+0 main.asm

































 LDA #(false) % 256
 STA redraw
%line 3086+1 main.asm

%line 3086+0 main.asm









 LDA #(false) % 256
 STA moved
%line 3087+1 main.asm
 LDA hero_activity
 BEQ ..@16250.skip
%line 3088+0 main.asm
 JMP .if142
 ..@16250.skip:
%line 3089+1 main.asm
 LDA key
%line 3089+0 main.asm

 BRA .s28c0
%line 3090+1 main.asm
 JMP .s28done
%line 3090+0 main.asm
 .s28c0:
 CMP #'w'
 BEQ ..@16253.skip
 JMP .s28c1
 ..@16253.skip:


 .s28b1:
%line 3091+1 main.asm
 LDA hero_target_direction
 CMP #DIRECTION_UP
 BNE ..@16262.skip
%line 3093+0 main.asm
 JMP .if143
 ..@16262.skip:
%line 3094+1 main.asm

%line 3094+0 main.asm










































 LDA #(DIRECTION_UP) % 256
 STA hero_target_direction
%line 3095+1 main.asm

%line 3095+0 main.asm

































 LDA #(true) % 256
 STA redraw
%line 3096+1 main.asm
 JMP .if144
%line 3096+0 main.asm
 .if143:
%line 3097+1 main.asm
 LDA display_Y
 CLC
 ADC hero_Y
 CMP #1
 BCS ..@16294.skip
%line 3101+0 main.asm
 JMP .if145
 ..@16294.skip:
%line 3102+1 main.asm
 DEC
 STA mY
 LDA display_X
 CLC
 ADC hero_X
 STA mX

%line 3108+0 main.asm


























































 LDA #(map_data) % 256
 STA MapXY.a0
 LDA #(map_data) / 256
 STA MapXY.a0+1


































































 LDA mX
 STA MapXY.a1




























































 LDA mY
 STA MapXY.a2







 JSR MapXY
%line 3109+1 main.asm
 LDA ret_val
 CMP #MAP_ROCK
 BNE ..@16356.skip
%line 3111+0 main.asm
 JMP .if146
 ..@16356.skip:
%line 3112+1 main.asm

%line 3112+0 main.asm















































































 LDA mX
 STA CheckForMonster.a0




























































 LDA mY
 STA CheckForMonster.a1








 JSR CheckForMonster
%line 3113+1 main.asm
 LDA ret_val
 EOR #$FF
 STA or_buff
 LDY #SKILL_GHOST
 LDA skill_list,Y
 ORA or_buff
 BNE ..@16405.skip
%line 3119+0 main.asm
 JMP .if147
 ..@16405.skip:
%line 3120+1 main.asm
 LDA hero_Y
 CMP #2
 BCS ..@16408.skip
%line 3122+0 main.asm
 JMP .if148
 ..@16408.skip:
%line 3123+1 main.asm
 DEC hero_Y

%line 3124+0 main.asm









 LDA #(true) % 256
 STA moved
%line 3125+1 main.asm
 JMP .if149
%line 3125+0 main.asm
 .if148:
%line 3126+1 main.asm
 CMP #1
 BEQ ..@16421.skip
%line 3127+0 main.asm
 JMP .if150
 ..@16421.skip:
%line 3128+1 main.asm
 LDA display_Y
 BEQ ..@16423.skip
%line 3129+0 main.asm
 JMP .if151
 ..@16423.skip:
%line 3130+1 main.asm

%line 3130+0 main.asm










































 STZ hero_Y
%line 3131+1 main.asm

%line 3131+0 main.asm









 LDA #(true) % 256
 STA moved
%line 3132+1 main.asm
 JMP .if152
%line 3132+0 main.asm
 .if151:
%line 3133+1 main.asm
 DEC display_Y

%line 3134+0 main.asm









 LDA #(true) % 256
 STA moved
%line 3135+1 main.asm
 .if152:
 .if150:
 .if149:
 .if147:
 LDA moved
 BNE ..@16468.skip
%line 3140+0 main.asm
 JMP .if153
 ..@16468.skip:
%line 3141+1 main.asm

%line 3141+0 main.asm









 JSR CheckLavaExit
%line 3142+1 main.asm
 .if153:
 .if146:
 .if145:
 .if144:
 JMP .s28done
%line 3146+0 main.asm
 .s28c1:
 CMP #'s'
 BEQ ..@16480.skip
 JMP .s28c2
 ..@16480.skip:


 .s28b2:
%line 3147+1 main.asm
 LDA hero_target_direction
 CMP #DIRECTION_DOWN
 BNE ..@16489.skip
%line 3149+0 main.asm
 JMP .if154
 ..@16489.skip:
%line 3150+1 main.asm

%line 3150+0 main.asm










































 LDA #(DIRECTION_DOWN) % 256
 STA hero_target_direction
%line 3151+1 main.asm

%line 3151+0 main.asm

































 LDA #(1) % 256
 STA redraw
%line 3152+1 main.asm
 JMP .if155
%line 3152+0 main.asm
 .if154:
%line 3153+1 main.asm
 LDA display_Y
 SEC
 ADC hero_Y
 CMP #MAP_HEIGHT
 BCC ..@16521.skip
%line 3157+0 main.asm
 JMP .if156
 ..@16521.skip:
%line 3158+1 main.asm
 STA mY
 LDA display_X
 CLC
 ADC hero_X
 STA mX

%line 3163+0 main.asm


























































 LDA #(map_data) % 256
 STA MapXY.a0
 LDA #(map_data) / 256
 STA MapXY.a0+1


































































 LDA mX
 STA MapXY.a1




























































 LDA mY
 STA MapXY.a2







 JSR MapXY
%line 3164+1 main.asm
 LDA ret_val
 CMP #MAP_ROCK
 BNE ..@16583.skip
%line 3166+0 main.asm
 JMP .if157
 ..@16583.skip:
%line 3167+1 main.asm

%line 3167+0 main.asm















































































 LDA mX
 STA CheckForMonster.a0




























































 LDA mY
 STA CheckForMonster.a1








 JSR CheckForMonster
%line 3168+1 main.asm
 LDA ret_val
 EOR #$FF
 STA or_buff
 LDY #SKILL_GHOST
 LDA skill_list,Y
 ORA or_buff
 BNE ..@16632.skip
%line 3174+0 main.asm
 JMP .if158
 ..@16632.skip:
%line 3175+1 main.asm
 LDA hero_Y
 CMP #FRAME_HEIGHT-2
 BCC ..@16635.skip
%line 3177+0 main.asm
 JMP .if159
 ..@16635.skip:
%line 3178+1 main.asm
 INC hero_Y

%line 3179+0 main.asm









 LDA #(true) % 256
 STA moved
%line 3180+1 main.asm
 JMP .if160
%line 3180+0 main.asm
 .if159:
%line 3181+1 main.asm
 CMP #FRAME_HEIGHT-2
 BEQ ..@16648.skip
%line 3182+0 main.asm
 JMP .if161
 ..@16648.skip:
%line 3183+1 main.asm
 LDA display_Y
 CMP #MAP_HEIGHT-FRAME_HEIGHT
 BEQ ..@16650.skip
%line 3185+0 main.asm
 JMP .if162
 ..@16650.skip:
%line 3186+1 main.asm

%line 3186+0 main.asm










































 LDA #(FRAME_HEIGHT-1) % 256
 STA hero_Y
%line 3187+1 main.asm

%line 3187+0 main.asm









 LDA #(true) % 256
 STA moved
%line 3188+1 main.asm
 JMP .if163
%line 3188+0 main.asm
 .if162:
%line 3189+1 main.asm
 INC display_Y

%line 3190+0 main.asm









 LDA #(true) % 256
 STA moved
%line 3191+1 main.asm
 .if163:
 .if161:
 .if160:
 .if158:
 LDA moved
 BNE ..@16695.skip
%line 3196+0 main.asm
 JMP .if164
 ..@16695.skip:
%line 3197+1 main.asm

%line 3197+0 main.asm









 JSR CheckLavaExit
%line 3198+1 main.asm
 .if164:
 .if157:
 .if156:
 .if155:
 JMP .s28done
%line 3202+0 main.asm
 .s28c2:
 CMP #'a'
 BEQ ..@16707.skip
 JMP .s28c3
 ..@16707.skip:


 .s28b3:
%line 3203+1 main.asm
 LDA hero_facing
 CMP #DIRECTION_RIGHT
 BEQ ..@16716.skip
%line 3205+0 main.asm
 JMP .if165
 ..@16716.skip:
%line 3206+1 main.asm

%line 3206+0 main.asm










































 LDA #(DIRECTION_LEFT) % 256
 STA hero_facing
%line 3207+1 main.asm

%line 3207+0 main.asm

































 LDA #(1) % 256
 STA redraw
%line 3208+1 main.asm
 .if165:
 LDA hero_target_direction
 CMP #DIRECTION_LEFT
 BNE ..@16747.skip
%line 3211+0 main.asm
 JMP .if166
 ..@16747.skip:
%line 3212+1 main.asm

%line 3212+0 main.asm










































 LDA #(DIRECTION_LEFT) % 256
 STA hero_target_direction
%line 3213+1 main.asm

%line 3213+0 main.asm

































 LDA #(1) % 256
 STA redraw
%line 3214+1 main.asm
 JMP .if167
%line 3214+0 main.asm
 .if166:
%line 3215+1 main.asm
 LDA display_X
 CLC
 ADC hero_X
 CMP #1
 BCS ..@16779.skip
%line 3219+0 main.asm
 JMP .if168
 ..@16779.skip:
%line 3220+1 main.asm
 DEC
 STA mX
 LDA display_Y
 CLC
 ADC hero_Y
 STA mY

%line 3226+0 main.asm


























































 LDA #(map_data) % 256
 STA MapXY.a0
 LDA #(map_data) / 256
 STA MapXY.a0+1


































































 LDA mX
 STA MapXY.a1




























































 LDA mY
 STA MapXY.a2







 JSR MapXY
%line 3227+1 main.asm
 LDA ret_val
 CMP #MAP_ROCK
 BNE ..@16841.skip
%line 3229+0 main.asm
 JMP .if169
 ..@16841.skip:
%line 3230+1 main.asm

%line 3230+0 main.asm















































































 LDA mX
 STA CheckForMonster.a0




























































 LDA mY
 STA CheckForMonster.a1








 JSR CheckForMonster
%line 3231+1 main.asm
 LDA ret_val
 EOR #$FF
 STA or_buff
 LDY #SKILL_GHOST
 LDA skill_list,Y
 ORA or_buff
 BNE ..@16890.skip
%line 3237+0 main.asm
 JMP .if170
 ..@16890.skip:
%line 3238+1 main.asm
 LDA hero_X
 CMP #2
 BCS ..@16893.skip
%line 3240+0 main.asm
 JMP .if171
 ..@16893.skip:
%line 3241+1 main.asm
 DEC hero_X

%line 3242+0 main.asm









 LDA #(true) % 256
 STA moved
%line 3243+1 main.asm
 JMP .if172
%line 3243+0 main.asm
 .if171:
%line 3244+1 main.asm
 CMP #1
 BEQ ..@16906.skip
%line 3245+0 main.asm
 JMP .if173
 ..@16906.skip:
%line 3246+1 main.asm
 LDA display_X
 BEQ ..@16909.skip
%line 3247+0 main.asm
 JMP .if174
 ..@16909.skip:
%line 3248+1 main.asm

%line 3248+0 main.asm










































 STZ hero_X
%line 3249+1 main.asm

%line 3249+0 main.asm









 LDA #(true) % 256
 STA moved
%line 3250+1 main.asm
 JMP .if175
%line 3250+0 main.asm
 .if174:
%line 3251+1 main.asm
 DEC display_X

%line 3252+0 main.asm









 LDA #(true) % 256
 STA moved
%line 3253+1 main.asm
 .if175:
 .if173:
 .if172:
 .if170:
 LDA moved
 BNE ..@16954.skip
%line 3258+0 main.asm
 JMP .if176
 ..@16954.skip:
%line 3259+1 main.asm

%line 3259+0 main.asm









 JSR CheckLavaExit
%line 3260+1 main.asm
 .if176:
 .if169:
 .if168:
 .if167:
 JMP .s28done
%line 3264+0 main.asm
 .s28c3:
 CMP #'d'
 BEQ ..@16966.skip
 JMP .s28c4
 ..@16966.skip:


 .s28b4:
%line 3265+1 main.asm
 LDA hero_facing
 CMP #DIRECTION_LEFT
 BEQ ..@16975.skip
%line 3267+0 main.asm
 JMP .if177
 ..@16975.skip:
%line 3268+1 main.asm

%line 3268+0 main.asm










































 LDA #(DIRECTION_RIGHT) % 256
 STA hero_facing
%line 3269+1 main.asm

%line 3269+0 main.asm

































 LDA #(1) % 256
 STA redraw
%line 3270+1 main.asm
 .if177:
 LDA hero_target_direction
 CMP #DIRECTION_RIGHT
 BNE ..@17006.skip
%line 3273+0 main.asm
 JMP .if178
 ..@17006.skip:
%line 3274+1 main.asm

%line 3274+0 main.asm










































 LDA #(DIRECTION_RIGHT) % 256
 STA hero_target_direction
%line 3275+1 main.asm

%line 3275+0 main.asm

































 LDA #(1) % 256
 STA redraw
%line 3276+1 main.asm
 JMP .if179
%line 3276+0 main.asm
 .if178:
%line 3277+1 main.asm
 LDA display_X
 SEC
 ADC hero_X
 CMP #MAP_WIDTH
 BCC ..@17038.skip
%line 3281+0 main.asm
 JMP .if180
 ..@17038.skip:
%line 3282+1 main.asm
 STA mX
 LDA display_Y
 CLC
 ADC hero_Y
 STA mY

%line 3287+0 main.asm


























































 LDA #(map_data) % 256
 STA MapXY.a0
 LDA #(map_data) / 256
 STA MapXY.a0+1


































































 LDA mX
 STA MapXY.a1




























































 LDA mY
 STA MapXY.a2







 JSR MapXY
%line 3288+1 main.asm
 LDA ret_val
 CMP #MAP_ROCK
 BNE ..@17100.skip
%line 3290+0 main.asm
 JMP .if181
 ..@17100.skip:
%line 3291+1 main.asm

%line 3291+0 main.asm















































































 LDA mX
 STA CheckForMonster.a0




























































 LDA mY
 STA CheckForMonster.a1








 JSR CheckForMonster
%line 3292+1 main.asm
 LDA ret_val
 EOR #$FF
 STA or_buff
 LDY #SKILL_GHOST
 LDA skill_list,Y
 ORA or_buff
 BNE ..@17149.skip
%line 3298+0 main.asm
 JMP .if182
 ..@17149.skip:
%line 3299+1 main.asm
 LDA hero_X
 CMP #3
 BCC ..@17152.skip
%line 3301+0 main.asm
 JMP .if183
 ..@17152.skip:
%line 3302+1 main.asm
 INC hero_X

%line 3303+0 main.asm









 LDA #(true) % 256
 STA moved
%line 3304+1 main.asm
 JMP .if184
%line 3304+0 main.asm
 .if183:
%line 3305+1 main.asm
 CMP #FRAME_WIDTH-2
 BEQ ..@17165.skip
%line 3306+0 main.asm
 JMP .if185
 ..@17165.skip:
%line 3307+1 main.asm
 LDA display_X
 CMP #MAP_WIDTH-FRAME_WIDTH
 BEQ ..@17167.skip
%line 3309+0 main.asm
 JMP .if186
 ..@17167.skip:
%line 3310+1 main.asm

%line 3310+0 main.asm










































 LDA #(FRAME_WIDTH-1) % 256
 STA hero_X
%line 3311+1 main.asm

%line 3311+0 main.asm









 LDA #(true) % 256
 STA moved
%line 3312+1 main.asm
 JMP .if187
%line 3312+0 main.asm
 .if186:
%line 3313+1 main.asm
 INC display_X

%line 3314+0 main.asm









 LDA #(true) % 256
 STA moved
%line 3315+1 main.asm
 .if187:
 .if185:
 .if184:
 .if182:
 LDA moved
 BNE ..@17212.skip
%line 3320+0 main.asm
 JMP .if188
 ..@17212.skip:
%line 3321+1 main.asm

%line 3321+0 main.asm









 JSR CheckLavaExit
%line 3322+1 main.asm
 .if188:
 .if181:
 .if180:
 .if179:
 JMP .s28done
%line 3326+0 main.asm
 .s28c4:
 CMP #' '
 BEQ ..@17224.skip
 JMP .s28c5
 ..@17224.skip:


 .s28b5:
%line 3327+1 main.asm
 LDA hero_target_type
%line 3327+0 main.asm

 BRA .s29c0
%line 3328+1 main.asm
 JMP .s29done
%line 3328+0 main.asm
 .s29c0:
 CMP #target_crystal
 BEQ ..@17234.skip
 JMP .s29c1
 ..@17234.skip:


 .s29b1:
%line 3329+1 main.asm

%line 3329+0 main.asm
















































































 LDA hero_Mine_Speed
 STA hero_activity_ticks_max
 LDA hero_Mine_Speed+1
 STA hero_activity_ticks_max+1
%line 3330+1 main.asm

%line 3330+0 main.asm











































 STZ hero_activity_ticks
 STZ hero_activity_ticks+1
%line 3331+1 main.asm

%line 3331+0 main.asm










































 LDA #(true) % 256
 STA hero_activity
%line 3332+1 main.asm

%line 3332+0 main.asm

































 LDA #(true) % 256
 STA redraw
%line 3333+1 main.asm
 JMP .s29done
%line 3333+0 main.asm
 .s29c1:
 CMP #target_rock
 BEQ ..@17304.skip
 JMP .s29c2
 ..@17304.skip:


 .s29b2:
%line 3334+1 main.asm

%line 3334+0 main.asm
















































































 LDA hero_Drill_Speed
 STA hero_activity_ticks_max
 LDA hero_Drill_Speed+1
 STA hero_activity_ticks_max+1
%line 3335+1 main.asm

%line 3335+0 main.asm











































 STZ hero_activity_ticks
 STZ hero_activity_ticks+1
%line 3336+1 main.asm

%line 3336+0 main.asm










































 LDA #(true) % 256
 STA hero_activity
%line 3337+1 main.asm

%line 3337+0 main.asm

































 LDA #(true) % 256
 STA redraw
%line 3338+1 main.asm
 JMP .s29done
%line 3338+0 main.asm
 .s29c2:
 CMP #target_monster
 BEQ ..@17374.skip
 JMP .s29c3
 ..@17374.skip:


 .s29b3:
%line 3339+1 main.asm

%line 3339+0 main.asm











































 LDA #(MONSTER_HP) % 256
 STA hero_activity_ticks_max
 LDA #(MONSTER_HP) / 256
 STA hero_activity_ticks_max+1
%line 3340+1 main.asm

%line 3340+0 main.asm











































 LDA #(MONSTER_HP) % 256
 STA hero_activity_ticks
 LDA #(MONSTER_HP) / 256
 STA hero_activity_ticks+1
%line 3341+1 main.asm

%line 3341+0 main.asm










































 LDA #(true) % 256
 STA hero_activity
%line 3342+1 main.asm

%line 3342+0 main.asm

































 LDA #(true) % 256
 STA redraw
%line 3343+1 main.asm
 .s29c3:
%line 3343+0 main.asm

 .s29done:





%line 3344+1 main.asm
 .s28c5:
%line 3344+0 main.asm

 .s28done:





%line 3345+1 main.asm
 .if142:

 LDA redraw
 ORA moved
 BNE ..@17451.skip
%line 3349+0 main.asm
 JMP .if189
 ..@17451.skip:
%line 3350+1 main.asm

%line 3350+0 main.asm









 JSR UpdateTarget
%line 3351+1 main.asm

%line 3351+0 main.asm









 JSR DrawFrame
%line 3352+1 main.asm

%line 3352+0 main.asm









 JSR DrawLegend
%line 3353+1 main.asm
 .if189:
 .if141:
 RTS

 KeyHandlerMenu:

 key set ASSIGN_LOCAL_BYTE
 temp_item set ASSIGN_LOCAL_BYTE
%line 3360+0 main.asm
 temp_index set ASSIGN_LOCAL_BYTE
 discount set ASSIGN_LOCAL_BYTE
 bought set ASSIGN_LOCAL_BYTE
%line 3361+1 main.asm
 redraw set ASSIGN_LOCAL_BYTE
%line 3361+0 main.asm
 redraw_skills set ASSIGN_LOCAL_BYTE
 redraw_resources set ASSIGN_LOCAL_BYTE
%line 3362+1 main.asm
 res_total set ASSIGN_LOCAL_WORD
 item_ptr set ASSIGN_LOCAL_WORD



%line 3366+0 main.asm



























 LDA #(false) % 256
 STA bought
%line 3367+1 main.asm

%line 3367+0 main.asm





















 LDA #(false) % 256
 STA redraw
%line 3368+1 main.asm

%line 3368+0 main.asm















 LDA #(false) % 256
 STA redraw_skills
%line 3369+1 main.asm

%line 3369+0 main.asm









 LDA #(false) % 256
 STA redraw_resources
%line 3370+1 main.asm



%line 3372+0 main.asm
















































































































 LDA KB_INPUT
 STA key
%line 3373+1 main.asm

%line 3373+0 main.asm
 BRA .s30c0
%line 3374+1 main.asm
 JMP .s30done
%line 3374+0 main.asm
 .s30c0:
 CMP #'m'
 BEQ ..@17546.skip
 JMP .s30c1
 ..@17546.skip:


 .s30b1:
%line 3375+1 main.asm

%line 3375+0 main.asm


































































 LDA #(OUTPUT_GAME) % 256
 STA output_mode
%line 3376+1 main.asm

%line 3376+0 main.asm









 JSR DrawFrame
%line 3377+1 main.asm

%line 3377+0 main.asm









 JSR DrawLegend
%line 3378+1 main.asm
 JMP .khm.done
 JMP .s30done
%line 3379+0 main.asm
 .s30c1:
 CMP #'c'
 BEQ ..@17577.skip
 JMP .s30c2
 ..@17577.skip:


 .s30b2:
%line 3380+1 main.asm

%line 3380+0 main.asm


































































 LDA #(OUTPUT_CHARACTER) % 256
 STA output_mode
%line 3381+1 main.asm

%line 3381+0 main.asm









 JSR DrawMenu
%line 3382+1 main.asm
 JMP .khm.done
 JMP .s30done
%line 3383+0 main.asm
 .s30c2:
 CMP #'k'
 BEQ ..@17606.skip
 JMP .s30c3
 ..@17606.skip:


 .s30b3:
%line 3384+1 main.asm

%line 3384+0 main.asm


































































 LDA #(OUTPUT_SKILLS) % 256
 STA output_mode
%line 3385+1 main.asm

%line 3385+0 main.asm









 JSR DrawMenu
%line 3386+1 main.asm
 JMP .khm.done
 JMP .s30done
%line 3387+0 main.asm
 .s30c3:
 CMP #'r'
 BEQ ..@17635.skip
 JMP .s30c4
 ..@17635.skip:


 .s30b4:
%line 3388+1 main.asm

%line 3388+0 main.asm


































































 LDA #(OUTPUT_RESOURCES) % 256
 STA output_mode
%line 3389+1 main.asm

%line 3389+0 main.asm









 JSR DrawMenu
%line 3390+1 main.asm
 JMP .khm.done
 .s30c4:
%line 3391+0 main.asm

 .s30done:





%line 3392+1 main.asm

 LDA output_mode
%line 3393+0 main.asm

 BRA .s31c0
%line 3394+1 main.asm
 JMP .s31done
%line 3394+0 main.asm
 .s31c0:
 CMP #OUTPUT_CHARACTER
 BEQ ..@17670.skip
 JMP .s31c1
 ..@17670.skip:


 .s31b1:
%line 3395+1 main.asm
 LDA key

%line 3396+0 main.asm
 BRA .s32c0
%line 3397+1 main.asm
 JMP .s32done
%line 3397+0 main.asm
 .s32c0:
 CMP #'w'
 BEQ ..@17680.skip
 JMP .s32c1
 ..@17680.skip:


 .s32b1:
%line 3398+1 main.asm
 LDA menu_char_y
 CMP #1
 BCS ..@17690.skip
%line 3400+0 main.asm
 JMP .if190
 ..@17690.skip:
%line 3401+1 main.asm
 DEC menu_char_y

%line 3402+0 main.asm









 JSR DrawMenuInventory
%line 3403+1 main.asm
 .if190:
 JMP .s32done
%line 3404+0 main.asm
 .s32c1:
 CMP #'s'
 BEQ ..@17696.skip
 JMP .s32c2
 ..@17696.skip:


 .s32b2:
%line 3405+1 main.asm
 LDA menu_char_y
 CMP #MENU_CHAR_BOX_Y_COUNT-1
 BCC ..@17706.skip
%line 3407+0 main.asm
 JMP .if191
 ..@17706.skip:
%line 3408+1 main.asm
 INC menu_char_y

%line 3409+0 main.asm









 JSR DrawMenuInventory
%line 3410+1 main.asm
 .if191:
 JMP .s32done
%line 3411+0 main.asm
 .s32c2:
 CMP #'d'
 BEQ ..@17712.skip
 JMP .s32c3
 ..@17712.skip:


 .s32b3:
%line 3412+1 main.asm
 LDA menu_char_x
 CMP #MENU_CHAR_BOX_X_COUNT-1
 BCC ..@17722.skip
%line 3414+0 main.asm
 JMP .if192
 ..@17722.skip:
%line 3415+1 main.asm
 INC menu_char_x

%line 3416+0 main.asm









 JSR DrawMenuInventory
%line 3417+1 main.asm
 JMP .if193
%line 3417+0 main.asm
 .if192:
%line 3418+1 main.asm
 LDA menu_char_y
 CMP #MENU_CHAR_BOX_Y_COUNT-1
 BCC ..@17729.skip
%line 3420+0 main.asm
 JMP .if194
 ..@17729.skip:
%line 3421+1 main.asm
 STZ menu_char_x
 INC menu_char_y

%line 3423+0 main.asm









 JSR DrawMenuInventory
%line 3424+1 main.asm
 .if194:
 .if193:
 JMP .s32done
%line 3426+0 main.asm
 .s32c3:
 CMP #'a'
 BEQ ..@17737.skip
 JMP .s32c4
 ..@17737.skip:


 .s32b4:
%line 3427+1 main.asm
 LDA menu_char_x
 CMP #1
 BCS ..@17747.skip
%line 3429+0 main.asm
 JMP .if195
 ..@17747.skip:
%line 3430+1 main.asm
 DEC menu_char_x

%line 3431+0 main.asm









 JSR DrawMenuInventory
%line 3432+1 main.asm
 JMP .if196
%line 3432+0 main.asm
 .if195:
%line 3433+1 main.asm
 LDA menu_char_y
 CMP #1
 BCS ..@17754.skip
%line 3435+0 main.asm
 JMP .if197
 ..@17754.skip:
%line 3436+1 main.asm

%line 3436+0 main.asm


































































 LDA #(MENU_CHAR_BOX_X_COUNT-1) % 256
 STA menu_char_x
%line 3437+1 main.asm
 DEC menu_char_y

%line 3438+0 main.asm









 JSR DrawMenuInventory
%line 3439+1 main.asm
 .if197:
 .if196:
 JMP .s32done
%line 3441+0 main.asm
 .s32c4:
 CMP #KEY_ENTER
 BEQ ..@17780.skip
 JMP .s32c5
 ..@17780.skip:


 .s32b5:
%line 3442+1 main.asm
 LDA menu_char_y
 ASL
 ASL
 ADC menu_char_y
 ADC menu_char_x
 TAY
 LDA hero_inventory,Y
 CMP #item_none
 BNE ..@17789.skip
%line 3450+0 main.asm
 JMP .if198
 ..@17789.skip:
%line 3451+1 main.asm
 STA temp_item
 STY temp_index
 ASL
 TAY
 LDA item_stats,Y
 STA item_ptr
 LDA item_stats+1,Y
 STA item_ptr+1
 LDY #type
 LDA (item_ptr),Y
 TAY
 LDA hero_equipped,Y
 PHY
 LDY temp_index
 STA hero_inventory,Y
 LDA temp_item
 PLY
 STA hero_equipped,Y

%line 3469+0 main.asm









 JSR ColorHero
%line 3470+1 main.asm

%line 3470+0 main.asm









 JSR CalcStats
%line 3471+1 main.asm

%line 3471+0 main.asm









 JSR DrawMenu
%line 3472+1 main.asm
 .if198:
 .s32c5:
%line 3473+0 main.asm

 .s32done:





%line 3474+1 main.asm
 JMP .s31done
%line 3474+0 main.asm
 .s31c1:
 CMP #OUTPUT_SKILLS
 BEQ ..@17804.skip
 JMP .s31c2
 ..@17804.skip:


 .s31b2:
%line 3475+1 main.asm
 LDA key

%line 3476+0 main.asm
 BRA .s33c0
%line 3477+1 main.asm
 JMP .s33done
%line 3477+0 main.asm
 .s33c0:
 CMP #'w'
 BEQ ..@17814.skip
 JMP .s33c1
 ..@17814.skip:


 .s33b1:
%line 3478+1 main.asm
 LDA menu_skills_y
 BNE ..@17824.skip
%line 3479+0 main.asm
 JMP .if199
 ..@17824.skip:
%line 3480+1 main.asm
 DEC menu_skills_y

%line 3481+0 main.asm









 JSR DrawSkills
%line 3482+1 main.asm
 .if199:
 JMP .s33done
%line 3483+0 main.asm
 .s33c1:
 CMP #'s'
 BEQ ..@17830.skip
 JMP .s33c2
 ..@17830.skip:


 .s33b2:
%line 3484+1 main.asm
 LDA menu_skills_y
 CMP #2
 BCC ..@17840.skip
%line 3486+0 main.asm
 JMP .if200
 ..@17840.skip:
%line 3487+1 main.asm
 INC menu_skills_y

%line 3488+0 main.asm









 JSR DrawSkills
%line 3489+1 main.asm
 .if200:
 JMP .s33done
%line 3490+0 main.asm
 .s33c2:
 CMP #'a'
 BEQ ..@17846.skip
 JMP .s33c3
 ..@17846.skip:


 .s33b3:
%line 3491+1 main.asm
 LDA menu_skills_x
 BNE ..@17856.skip
%line 3492+0 main.asm
 JMP .if201
 ..@17856.skip:
%line 3493+1 main.asm
 DEC menu_skills_x

%line 3494+0 main.asm









 JSR DrawSkills
%line 3495+1 main.asm
 .if201:
 JMP .s33done
%line 3496+0 main.asm
 .s33c3:
 CMP #'d'
 BEQ ..@17862.skip
 JMP .s33c4
 ..@17862.skip:


 .s33b4:
%line 3497+1 main.asm
 LDA menu_skills_x
 CMP #4
 BCC ..@17872.skip
%line 3499+0 main.asm
 JMP .if202
 ..@17872.skip:
%line 3500+1 main.asm
 INC menu_skills_x

%line 3501+0 main.asm









 JSR DrawSkills
%line 3502+1 main.asm
 .if202:
 JMP .s33done
%line 3503+0 main.asm
 .s33c4:
 CMP #KEY_ENTER
 BEQ ..@17878.skip
 JMP .s33c5
 ..@17878.skip:


 .s33b5:
%line 3504+1 main.asm
 LDA hero_Points
 BNE ..@17888.skip
%line 3505+0 main.asm
 JMP .if203
 ..@17888.skip:
%line 3506+1 main.asm
 LDA menu_skills_y
 ASL
 ASL
 CLC
 ADC menu_skills_y
 ADC menu_skills_x
 TAY
 LDA skill_list,Y
 BEQ ..@17891.skip
%line 3514+0 main.asm
 JMP .if204
 ..@17891.skip:
%line 3515+1 main.asm
 LDA menu_skills_x
 BEQ .khm.skills
 LDA skill_list-1,Y
 BEQ .khm.skills_done
 .khm.skills:
 DEC hero_Points
 LDA #true
 STA skill_list,Y

%line 3523+0 main.asm









 JSR CalcStats
%line 3524+1 main.asm

%line 3524+0 main.asm





















 LDA #(true) % 256
 STA redraw
%line 3525+1 main.asm
 .khm.skills_done:
 .if204:
 .if203:
 .s33c5:
%line 3528+0 main.asm

 .s33done:





%line 3529+1 main.asm
 JMP .s31done
%line 3529+0 main.asm
 .s31c2:
 CMP #OUTPUT_RESOURCES
 BEQ ..@17915.skip
 JMP .s31c3
 ..@17915.skip:


 .s31b3:
%line 3530+1 main.asm
 LDA key

%line 3531+0 main.asm
 BRA .s34c0
%line 3532+1 main.asm
 JMP .s34done
%line 3532+0 main.asm
 .s34c0:
 CMP #'w'
 BEQ ..@17925.skip
 JMP .s34c1
 ..@17925.skip:


 .s34b1:
%line 3533+1 main.asm
 LDA menu_res_y
 BNE ..@17935.skip
%line 3534+0 main.asm
 JMP .if205
 ..@17935.skip:
%line 3535+1 main.asm
 DEC menu_res_y

%line 3536+0 main.asm









 JSR DrawResources
%line 3537+1 main.asm
 .if205:
 JMP .s34done
%line 3538+0 main.asm
 .s34c1:
 CMP #'s'
 BEQ ..@17941.skip
 JMP .s34c2
 ..@17941.skip:


 .s34b2:
%line 3539+1 main.asm
 LDA menu_res_y
 CMP #4
 BCC ..@17951.skip
%line 3541+0 main.asm
 JMP .if206
 ..@17951.skip:
%line 3542+1 main.asm
 INC menu_res_y

%line 3543+0 main.asm









 JSR DrawResources
%line 3544+1 main.asm
 .if206:
 JMP .s34done
%line 3545+0 main.asm
 .s34c2:
 CMP #'a'
 BEQ ..@17957.skip
 JMP .s34c3
 ..@17957.skip:


 .s34b3:
%line 3546+1 main.asm
 LDA menu_res_x
 BNE ..@17967.skip
%line 3547+0 main.asm
 JMP .if207
 ..@17967.skip:
%line 3548+1 main.asm
 DEC menu_res_x

%line 3549+0 main.asm









 JSR DrawResources
%line 3550+1 main.asm
 .if207:
 JMP .s34done
%line 3551+0 main.asm
 .s34c3:
 CMP #'d'
 BEQ ..@17973.skip
 JMP .s34c4
 ..@17973.skip:


 .s34b4:
%line 3552+1 main.asm
 LDA menu_res_x
 CMP #5
 BCC ..@17983.skip
%line 3554+0 main.asm
 JMP .if208
 ..@17983.skip:
%line 3555+1 main.asm
 INC menu_res_x

%line 3556+0 main.asm









 JSR DrawResources
%line 3557+1 main.asm
 .if208:
 JMP .s34done
%line 3558+0 main.asm
 .s34c4:
 CMP #KEY_ENTER
 BEQ ..@17989.skip
 JMP .s34c5
 ..@17989.skip:


 .s34b5:
%line 3559+1 main.asm
 LDA menu_res_target
 CMP #item_none
 BNE ..@17998.skip
%line 3561+0 main.asm
 JMP .if209
 ..@17998.skip:
%line 3562+1 main.asm

%line 3562+0 main.asm

































 STZ discount
%line 3563+1 main.asm
 LDA menu_res_x
 CMP #4
 BCC ..@18014.skip
%line 3565+0 main.asm
 JMP .if210
 ..@18014.skip:
%line 3566+1 main.asm
 LDA skill_list+Big_Discount
 BNE ..@18017.skip
%line 3567+0 main.asm
 JMP .if211
 ..@18017.skip:
%line 3568+1 main.asm

%line 3568+0 main.asm

































 LDA #(1) % 256
 STA discount
%line 3569+1 main.asm
 .if211:
 .if210:


 LDA menu_res_target
 ASL
 TAY
 LDA item_stats,Y
 STA item_ptr
 LDA item_stats+1,Y
 STA item_ptr+1

 LDA skill_list+Crystalsmith
 BNE ..@18037.skip
%line 3582+0 main.asm
 JMP .if212
 ..@18037.skip:
%line 3583+1 main.asm
 STZ res_total+1
 LDA hero_Red
 CLC
 ADC hero_Blue

%line 3587+0 main.asm

























































 BCC ..@18038.skip
 INC res_total+1
 ..@18038.skip:
%line 3588+1 main.asm
 CLC
 ADC hero_Yellow

%line 3590+0 main.asm

























































 BCC ..@18051.skip
 INC res_total+1
 ..@18051.skip:
%line 3591+1 main.asm
 STA res_total


 LDA res_total+1
 BNE .khm.res_enough

 LDY #cost
 LDA (item_ptr),Y
 SEC
 SBC discount
 STA temp_index
 LDA res_total
 CMP temp_index
 BCS ..@18066.skip
%line 3604+0 main.asm
 JMP .if213
 ..@18066.skip:
%line 3605+1 main.asm
 .khm.res_enough:
 LDA skill_list+Free_Lunch
 BEQ .khm.res_csmith

%line 3608+0 main.asm

















































































 LDA #(5) % 256
 STA rand8.a0









 JSR rand8
%line 3609+1 main.asm
 LDA ret_val
 BEQ .khm.res_csmith_done
 .khm.res_csmith:
 LDY #cost
 LDA (item_ptr),Y
 SEC
 SBC discount
 STA res_total

 .khm.res_loop_red:
 LDA res_total
 BEQ .khm.res_loop_blue
 LDA hero_Red
 BEQ .khm.res_loop_blue
 DEC res_total
 DEC hero_Red
 BRA .khm.res_loop_red

 .khm.res_loop_blue:
 LDA res_total
 BEQ .khm.res_loop_yellow
 LDA hero_Blue
 BEQ .khm.res_loop_yellow
 DEC res_total
 DEC hero_Blue
 BRA .khm.res_loop_blue

 .khm.res_loop_yellow:
 LDA res_total
 BEQ .khm.res_csmith_done
 LDA hero_Yellow
 BEQ .khm.res_csmith_done
 DEC res_total
 DEC hero_Yellow
 BRA .khm.res_loop_yellow

 .khm.res_csmith_done:

%line 3646+0 main.asm



























 LDA #(true) % 256
 STA bought
%line 3647+1 main.asm

%line 3647+0 main.asm





















 LDA #(true) % 256
 STA redraw
%line 3648+1 main.asm
 .if213:
 JMP .if214
%line 3649+0 main.asm
 .if212:
%line 3650+1 main.asm
 LDY #cost_type
 LDA (item_ptr),Y

 PHA

 LDY #cost
 LDA (item_ptr),Y
 CLC
 SBC discount
 TAY
 PLA

%line 3661+0 main.asm
 BRA .s35c0
%line 3662+1 main.asm
 JMP .s35done
%line 3662+0 main.asm
 .s35c0:
 CMP #CRYSTAL_RED_TYPE
 BEQ ..@18125.skip
 JMP .s35c1
 ..@18125.skip:


 .s35b1:
%line 3663+1 main.asm
 TYA
 CMP hero_Red
 BCC ..@18135.skip
%line 3665+0 main.asm
 JMP .if215
 ..@18135.skip:
%line 3666+1 main.asm
 STA temp_index
 LDA skill_list+Free_Lunch
 BEQ .khm.res_red

%line 3669+0 main.asm

















































































 LDA #(5) % 256
 STA rand8.a0









 JSR rand8
%line 3670+1 main.asm
 LDA ret_val
 BEQ .khm.res_red_done
 .khm.res_red:
 LDA hero_Red
 CLC
 SBC temp_index
 STA hero_Red
 .khm.res_red_done:

%line 3678+0 main.asm



























 LDA #(true) % 256
 STA bought
%line 3679+1 main.asm

%line 3679+0 main.asm





















 LDA #(true) % 256
 STA redraw
%line 3680+1 main.asm
 .if215:
 JMP .s35done
%line 3681+0 main.asm
 .s35c1:
 CMP #CRYSTAL_BLUE_TYPE
 BEQ ..@18191.skip
 JMP .s35c2
 ..@18191.skip:


 .s35b2:
%line 3682+1 main.asm
 TYA
 CMP hero_Blue
 BCC ..@18201.skip
%line 3684+0 main.asm
 JMP .if216
 ..@18201.skip:
%line 3685+1 main.asm
 STA temp_index
 LDA skill_list+Free_Lunch
 BEQ .khm.res_blue

%line 3688+0 main.asm

















































































 LDA #(5) % 256
 STA rand8.a0









 JSR rand8
%line 3689+1 main.asm
 LDA ret_val
 BEQ .khm.res_blue_done
 .khm.res_blue:
 LDA hero_Blue
 CLC
 SBC temp_index
 STA hero_Blue
 .khm.res_blue_done:

%line 3697+0 main.asm



























 LDA #(true) % 256
 STA bought
%line 3698+1 main.asm

%line 3698+0 main.asm





















 LDA #(true) % 256
 STA redraw
%line 3699+1 main.asm
 .if216:
 JMP .s35done
%line 3700+0 main.asm
 .s35c2:
 CMP #CRYSTAL_YELLOW_TYPE
 BEQ ..@18257.skip
 JMP .s35c3
 ..@18257.skip:


 .s35b3:
%line 3701+1 main.asm
 TYA
 CMP hero_Yellow
 BCC ..@18267.skip
%line 3703+0 main.asm
 JMP .if217
 ..@18267.skip:
%line 3704+1 main.asm
 STA temp_index
 LDA skill_list+Free_Lunch
 BEQ .khm.res_yellow

%line 3707+0 main.asm

















































































 LDA #(5) % 256
 STA rand8.a0









 JSR rand8
%line 3708+1 main.asm
 LDA ret_val
 BEQ .khm.res_yellow_done
 .khm.res_yellow:
 LDA hero_Yellow
 CLC
 SBC temp_index
 STA hero_Yellow
 .khm.res_yellow_done:

%line 3716+0 main.asm



























 LDA #(true) % 256
 STA bought
%line 3717+1 main.asm

%line 3717+0 main.asm





















 LDA #(true) % 256
 STA redraw
%line 3718+1 main.asm
 .if217:
 .s35c3:
%line 3719+0 main.asm

 .s35done:





%line 3720+1 main.asm
 .if214:
 .if209:

 LDA bought
 BNE ..@18333.skip
%line 3724+0 main.asm
 JMP .if218
 ..@18333.skip:
%line 3725+1 main.asm
 LDA menu_res_target
%line 3725+0 main.asm

 BRA .s36c0
%line 3726+1 main.asm
 JMP .s36done
%line 3726+0 main.asm
 .s36c0:
 CMP #Res_HP_Heal_ID
 BEQ ..@18336.skip
 JMP .s36c1
 ..@18336.skip:


 .s36b1:
%line 3727+1 main.asm

%line 3727+0 main.asm
































































































































 LDA hero_HP_Max
 STA hero_HP
 LDA hero_HP_Max+1
 STA hero_HP+1
%line 3728+1 main.asm
 JMP .s36done
%line 3728+0 main.asm
 .s36c1:
 CMP #Res_HP_Upgrade_ID
 BEQ ..@18373.skip
 JMP .s36c2
 ..@18373.skip:


 .s36b2:
%line 3729+1 main.asm
 INC hero_HP_Upgrade

%line 3730+0 main.asm









 JSR CalcStats
%line 3731+1 main.asm

%line 3731+0 main.asm
































































































































 LDA hero_HP_Max
 STA hero_HP
 LDA hero_HP_Max+1
 STA hero_HP+1
%line 3732+1 main.asm
 JMP .s36done
%line 3732+0 main.asm
 .s36c2:
 CMP #Res_Batt_Heal_ID
 BEQ ..@18412.skip
 JMP .s36c3
 ..@18412.skip:


 .s36b3:
%line 3733+1 main.asm

%line 3733+0 main.asm































































































































 LDA hero_Batt_Max
 STA hero_Batt
%line 3734+1 main.asm
 JMP .s36done
%line 3734+0 main.asm
 .s36c3:
 CMP #Res_Batt_Upgrade_ID
 BEQ ..@18449.skip
 JMP .s36c4
 ..@18449.skip:


 .s36b4:
%line 3735+1 main.asm
 INC hero_Batt_Upgrade

%line 3736+0 main.asm









 JSR CalcStats
%line 3737+1 main.asm

%line 3737+0 main.asm































































































































 LDA hero_Batt_Max
 STA hero_Batt
%line 3738+1 main.asm
 JMP .s36done
%line 3738+0 main.asm
 .s36c4:
 CMP #Res_Exp_Upgrade_ID
 BEQ ..@18488.skip
 JMP .s36c5
 ..@18488.skip:


 .s36b5:
%line 3739+1 main.asm

%line 3739+0 main.asm

















































































 LDA #(10) % 256
 STA AddExp.a0









 JSR AddExp
%line 3740+1 main.asm
 JMP .s36done
%line 3740+0 main.asm
 .s36c5:
 CMP #Res_Dmg_Upgrade_ID
 BEQ ..@18526.skip
 JMP .s36c6
 ..@18526.skip:


 .s36b6:
%line 3741+1 main.asm
 INC hero_Dmg_Upgrade

%line 3742+0 main.asm









 JSR CalcStats
%line 3743+1 main.asm
 JMP .s36done
%line 3743+0 main.asm
 .s36c6:
%line 3744+1 main.asm
 LDY #0
 .khm.loop:
 LDA hero_inventory,Y
 CMP #item_none
 BEQ ..@18539.skip
%line 3748+0 main.asm
 JMP .if219
 ..@18539.skip:
%line 3749+1 main.asm
 LDA skill_list+Only_the_Best
 BNE ..@18542.skip
%line 3750+0 main.asm
 JMP .if220
 ..@18542.skip:
%line 3751+1 main.asm

%line 3751+0 main.asm

















































































 LDA #(10) % 256
 STA rand8.a0









 JSR rand8
%line 3752+1 main.asm
 LDA ret_val
 BNE .khm.no_upgrade
 PHY
 LDA menu_res_target
 ASL
 TAY
 LDA item_stats,Y
 STA item_ptr
 LDA item_stats+1,Y
 STA item_ptr+1
 LDY #type
 LDA (item_ptr),Y

%line 3764+0 main.asm
 BRA .s37c0
%line 3765+1 main.asm
 JMP .s37done
%line 3765+0 main.asm
 .s37c0:
 CMP #head
 BEQ ..@18574.skip
 JMP .s37c1
 ..@18574.skip:


 .s37b1:
%line 3766+1 main.asm
 LDA #Lightning
 JMP .s37done
%line 3767+0 main.asm
 .s37c1:
 CMP #body
 BEQ ..@18583.skip
 JMP .s37c2
 ..@18583.skip:


 .s37b2:
%line 3768+1 main.asm
 LDA #Fortress
 JMP .s37done
%line 3769+0 main.asm
 .s37c2:
 CMP #legs
 BEQ ..@18592.skip
 JMP .s37c3
 ..@18592.skip:


 .s37b3:
%line 3770+1 main.asm
 LDA #Mustang
 JMP .s37done
%line 3771+0 main.asm
 .s37c3:
 CMP #gun
 BEQ ..@18601.skip
 JMP .s37c4
 ..@18601.skip:


 .s37b4:
%line 3772+1 main.asm
 LDA #Death_Ray
 JMP .s37done
%line 3773+0 main.asm
 .s37c4:
 CMP #tool
 BEQ ..@18610.skip
 JMP .s37c5
 ..@18610.skip:


 .s37b5:
%line 3774+1 main.asm
 LDA #Laser_Bit
 .s37c5:
%line 3775+0 main.asm

 .s37done:





%line 3776+1 main.asm
 PLY
 STA hero_inventory,Y
 JMP .if221
%line 3778+0 main.asm
 .if220:
%line 3779+1 main.asm
 .khm.no_upgrade:
 LDA menu_res_target
 STA hero_inventory,Y
 .if221:
 BRA .khm.loop_done
 .if219:
 INY
 CPY #INVENTORY_COUNT
 BEQ ..@18629.skip
%line 3787+0 main.asm
 JMP .khm.loop
 ..@18629.skip:
%line 3788+1 main.asm
 .khm.loop_done:
 .s36c7:
%line 3789+0 main.asm

 .s36done:





%line 3790+1 main.asm
 .if218:
 .s34c5:
%line 3791+0 main.asm

 .s34done:





%line 3792+1 main.asm
 .s31c3:
%line 3792+0 main.asm

 .s31done:





%line 3793+1 main.asm

 .khm.done:
 LDA redraw
 BNE ..@18649.skip
%line 3796+0 main.asm
 JMP .if222
 ..@18649.skip:
%line 3797+1 main.asm

%line 3797+0 main.asm









 JSR DrawMenu
%line 3798+1 main.asm
 .if222:
 LDA redraw_skills
 BNE ..@18656.skip
%line 3800+0 main.asm
 JMP .if223
 ..@18656.skip:
%line 3801+1 main.asm

%line 3801+0 main.asm









 JSR DrawSkills
%line 3802+1 main.asm
 .if223:
 LDA redraw_resources
 BNE ..@18663.skip
%line 3804+0 main.asm
 JMP .if224
 ..@18663.skip:
%line 3805+1 main.asm

%line 3805+0 main.asm









 JSR DrawResources
%line 3806+1 main.asm
 .if224:
 RTS



 InitHero:

%line 3812+0 main.asm






 STZ hero_Exp
%line 3813+1 main.asm

%line 3813+0 main.asm






 LDA #(40) % 256
 STA hero_Exp_Max
%line 3814+1 main.asm

%line 3814+0 main.asm






 STZ hero_HP_Upgrade
%line 3815+1 main.asm

%line 3815+0 main.asm






 STZ hero_Batt_Upgrade
%line 3816+1 main.asm

%line 3816+0 main.asm






 STZ hero_Dmg_Upgrade
%line 3817+1 main.asm

%line 3817+0 main.asm






 LDA #(1) % 256
 STA hero_Level
%line 3818+1 main.asm

%line 3818+0 main.asm






 STZ hero_Red
%line 3819+1 main.asm

%line 3819+0 main.asm






 STZ hero_Blue
%line 3820+1 main.asm

%line 3820+0 main.asm






 STZ hero_Yellow
%line 3821+1 main.asm

%line 3821+0 main.asm






 STZ hero_Points
%line 3822+1 main.asm

%line 3822+0 main.asm






 LDA #(false) % 256
 STA hero_activity
%line 3823+1 main.asm

%line 3823+0 main.asm






 LDA #(Basic_Head) % 256
 STA hero_equipped+head
%line 3824+1 main.asm

%line 3824+0 main.asm






 LDA #(Basic_Body) % 256
 STA hero_equipped+body
%line 3825+1 main.asm

%line 3825+0 main.asm






 LDA #(Basic_Legs) % 256
 STA hero_equipped+legs
%line 3826+1 main.asm

%line 3826+0 main.asm






 LDA #(Basic_Gun) % 256
 STA hero_equipped+gun
%line 3827+1 main.asm

%line 3827+0 main.asm






 LDA #(Basic_Tool) % 256
 STA hero_equipped+tool
%line 3828+1 main.asm

 LDA #item_none
 LDY #0
 .ih.iloop:
 STA hero_inventory,Y
 INY
 CPY #INVENTORY_COUNT
 BNE .ih.iloop

 LDY #SKILL_COUNT
 LDA #false
 .ih.sloop:
 STA skill_list,Y
 DEY
 BNE .ih.sloop









 RTS

 ResetGame:

%line 3855+0 main.asm






 STZ display_X
%line 3856+1 main.asm

%line 3856+0 main.asm






 STZ display_Y
%line 3857+1 main.asm

%line 3857+0 main.asm






 LDA #(HERO_START_X) % 256
 STA hero_X
%line 3858+1 main.asm

%line 3858+0 main.asm






 LDA #(HERO_START_Y) % 256
 STA hero_Y
%line 3859+1 main.asm

%line 3859+0 main.asm






 LDA #(false) % 256
 STA hero_activity
%line 3860+1 main.asm

%line 3860+0 main.asm







 LDA hero_HP_Max
 STA hero_HP
%line 3861+1 main.asm

%line 3861+0 main.asm







 LDA hero_Batt_Max
 STA hero_Batt
%line 3862+1 main.asm

%line 3862+0 main.asm






 LDA #(DIRECTION_RIGHT) % 256
 STA hero_facing
%line 3863+1 main.asm

%line 3863+0 main.asm






 LDA #(DIRECTION_RIGHT) % 256
 STA hero_target_direction
%line 3864+1 main.asm

%line 3864+0 main.asm






 LDA #(OUTPUT_GAME) % 256
 STA output_mode
%line 3865+1 main.asm


%line 3866+0 main.asm









 JSR UpdateTarget
%line 3867+1 main.asm
 RTS



 BEGIN_FUNC set main
%line 3871+0 main.asm
 main:
%line 3873+1 main.asm
 timer_save set ASSIGN_LOCAL_BYTE



%line 3876+0 main.asm









 JSR Setup
%line 3877+1 main.asm

%line 3877+0 main.asm









 JSR LoadTiles
%line 3878+1 main.asm

%line 3878+0 main.asm









 JSR MakeMap
%line 3879+1 main.asm

%line 3879+0 main.asm









 JSR LoadMonsters
%line 3880+1 main.asm

%line 3880+0 main.asm









 JSR LoadCrystals
%line 3881+1 main.asm

%line 3881+0 main.asm









 JSR InitHero
%line 3882+1 main.asm

%line 3882+0 main.asm









 JSR CalcStats
%line 3883+1 main.asm

%line 3883+0 main.asm









 JSR ColorHero
%line 3884+1 main.asm

%line 3884+0 main.asm









 JSR ResetGame
%line 3885+1 main.asm

%line 3885+0 main.asm









 JSR DrawFrame
%line 3886+1 main.asm

%line 3886+0 main.asm









 JSR DrawLegend
%line 3887+1 main.asm

 .m.loop:
 LDA TIMER_S
 CMP timer_save
 BNE ..@18921.skip
%line 3891+0 main.asm
 JMP .if225
 ..@18921.skip:
%line 3892+1 main.asm
 STA timer_save
 LDA output_mode
 CMP #OUTPUT_GAME
 BEQ ..@18923.skip
%line 3895+0 main.asm
 JMP .if226
 ..@18923.skip:
%line 3896+1 main.asm

%line 3896+0 main.asm









 JSR TickHandler
%line 3897+1 main.asm
 .if226:
 .if225:
 LDA output_mode
 CMP #OUTPUT_GAME
 BEQ ..@18931.skip
%line 3901+0 main.asm
 JMP .if227
 ..@18931.skip:
%line 3902+1 main.asm

%line 3902+0 main.asm









 JSR KeyHandlerGame
%line 3903+1 main.asm
 JMP .if228
%line 3903+0 main.asm
 .if227:
%line 3904+1 main.asm

%line 3904+0 main.asm









 JSR KeyHandlerMenu
%line 3905+1 main.asm
 .if228:
 BRA .m.loop
 RTS

%line 110+1 nasm.asm



unsigned char display_X;
unsigned char display_Y;

unsigned char hero_X;
unsigned char hero_Y;
signed int hero_HP;
//unsigned char hero_HP_Max;
signed int hero_HP_Max;
unsigned char hero_HP_Max_temp;
unsigned char hero_HP_Upgrade;
unsigned char hero_Batt;
unsigned char hero_Batt_Max;
unsigned char hero_Batt_Upgrade;
unsigned char hero_Dmg;
unsigned char hero_Dmg_Upgrade;
unsigned char hero_Mine_Speed;
unsigned char hero_Drill_Speed;
unsigned char hero_Lava_Res;
unsigned char hero_Batt_Recharge;
unsigned char hero_Crit_Rate;
unsigned char hero_HP_Recharge;
signed int hero_Lava_Dmg;			//Can be neg or pos
unsigned char hero_Dmg_Cost;
unsigned char hero_Mine_Cost;
unsigned char hero_Drill_Cost;
unsigned char hero_Exp;
unsigned char hero_Exp_Max;
unsigned char hero_Level;
unsigned char hero_Red;
unsigned char hero_Blue;
unsigned char hero_Yellow;
unsigned char hero_Points;
unsigned char hero_facing;
unsigned char hero_target_direction;
unsigned char hero_target_type;
unsigned char hero_target_index;
unsigned char hero_target_index2;
unsigned char hero_activity;
signed int hero_activity_ticks;
signed int hero_activity_ticks_max;
unsigned char hero_equipped[5];
unsigned char hero_inventory[INVENTORY_COUNT];

unsigned char skill_list[SKILL_COUNT];

unsigned char menu_char_x;
unsigned char menu_char_y;
unsigned char menu_skills_x;
unsigned char menu_skills_y;
unsigned char menu_res_x;
unsigned char menu_res_y;
unsigned char menu_res_target;

struct monster_struct
{
	unsigned x,y,alive;
} monster_list[MONSTER_COUNT];

struct crystal_struct
{
	unsigned x,y,active,color;
} crystal_list[CRYSTAL_COUNT];

unsigned char map_data[MAP_HEIGHT][MAP_WIDTH];
unsigned char monster_map[MAP_HEIGHT][MAP_WIDTH];
unsigned char crystal_map[MAP_HEIGHT][MAP_WIDTH];

unsigned output_mode=OUTPUT_GAME;

//http://www.retroprogramming.com/2017/07/xorshift-pseudorandom-numbers-in-z80.html
unsigned int rand_val;

unsigned char bank_3_copy, bank_3_save;

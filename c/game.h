
//Flags in return of KeyHandlers since run from ROM and 
//have to wait to write to screen until ROM is banked out
#define FLAG_DRAWMENUBORDER		(1<<0)
#define FLAG_DRAWMENU			(1<<1)
#define FLAG_UPDATETARGET		(1<<2)
#define FLAG_DRAWFRAME			(1<<3)
#define FLAG_DRAWLEGEND			(1<<4)
#define FLAG_DRAWMENUINVENTORY	(1<<5)
#define FLAG_DRAWSKILLS			(1<<6)
#define FLAG_DRAWRESOURCES		(1<<7)


enum tile_types {head, body, legs, gun, tool, ground, crystal, skill};

enum item_IDs
{
	Basic_Head,
	Head_MKII,
	Head_MKIII,
	Head_MKIV,
	Lightning,
	Basic_Body,
	Tin_Body,
	Iron_Body,
	Steel_Body,
	Fortress,
	Basic_Legs,
	Fast_Legs,
	Quick_Legs,
	Agile_Legs,
	Mustang,
	Basic_Gun,
	Blaster,
	Laser,
	Phaser,
	Death_Ray,
	Basic_Tool,
	Rock_Pick,
	Rock_Drill,
	Rock_Borer,
	Laser_Bit,
	Res_HP_Heal_ID,
	Res_HP_Upgrade_ID,
	Res_Batt_Heal_ID,
	Res_Batt_Upgrade_ID,
	Res_Exp_Upgrade_ID,
	Res_Dmg_Upgrade_ID,
	item_IDs_size,
	item_none
};

enum tile_IDs
{
	//Colorable tiles created in RAM
	Ground_0,
	Ground_90,
	Ground_180,
	Ground_270,
	Rock,
	Lava,
	Crystal_red,
	Crystal_yellow,
	Crystal_blue,
	Robot_left,
	Robot_right,
	Menu_head_temp,
    Menu_body_temp,
    Menu_legs_temp,
    Menu_gun_temp,
    Menu_tool_temp,
	Skill_temp,
	
	//Colorable tiles in banked ROM that are copied to RAM
	Menu_head_raw,
	Menu_body_raw,
	Menu_legs_raw,	
    Menu_gun_raw,	
    Menu_tool_raw,	
    Robot_left_raw,	
    Robot_right_raw,		
	Crystal_raw,
    Ground_raw,
	//Non-colorable tiles in banked ROM that are copied to RAM
    Monster_raw,	
	Monster_dead_raw,	
	Menu_item_slot_raw,
	Crystal_base_raw,
	//1bpp tiles in banked ROM that are copied to RAM
	Hero_target_raw,
	Menu_item_selector_raw,
	Menu_skill_selector_raw,
	Exit_raw,
	Res_HP_Heal_raw,
	Res_HP_Upgrade_raw,
	Res_Batt_Heal_raw,
	Res_Batt_Upgrade_raw,
	Res_Exp_Upgrade_raw,
	Res_Dmg_Upgrade_raw,
	Skill0_raw,
	Skill1_raw,
	Skill2_raw,
	Skill3_raw,
	Skill4_raw,
	Skill5_raw,
	Skill6_raw,
	Skill7_raw,
	Skill8_raw,
	Skill9_raw,
	Skill10_raw,
	Skill11_raw,
	Skill12_raw,
	Skill13_raw,
	Skill14_raw,
	
	//Colorable tiles in RAM that are copied from banked ROM
	Menu_head,
    Menu_body,
    Menu_legs,
    Menu_gun,
    Menu_tool,
	Robot_left_blank,
	Robot_right_blank,
	//Non-colorable tiles in RAM that are copied from banked ROM
	Monster,			
	Monster_dead,		
    Menu_item_slot,
	Crystal_base,
	//1bpp tiles in RAM that are copied from banked ROM
	Hero_target,
    Menu_item_selector,
    Menu_skill_selector,
    Exit,
    Res_HP_Heal,		
    Res_HP_Upgrade,	
	Res_Batt_Heal,	
    Res_Batt_Upgrade,	
    Res_Exp_Upgrade,	
    Res_Dmg_Upgrade,
	Skill0,
	Skill1,
	Skill2,
	Skill3,
	Skill4,
	Skill5,
	Skill6,
	Skill7,
	Skill8,
	Skill9,
	Skill10,
	Skill11,
	Skill12,
	Skill13,
	Skill14,
	tile_IDs_size
};

enum target_types
{
	target_rock,
	target_monster,
	target_exit,
	target_crystal,
	target_none
};

enum stat_field_indexes
{
	type,
	cost,
	cost_type,
	quality,
	description=quality,
	stat_count,
	stat_begin
	
};

enum stat_qualities //also used for crystals
{
	//Put these first so can index with colors
	stat_Basic,
	stat_Green,
	stat_Blue,
	stat_Purple,
	stat_Yellow,
	stat_Red,
	stat_None,
};

enum stat_types
{
	stat_Batt,
	stat_HP,
	stat_Dmg,
	stat_Mine,
	stat_Mine1s,
	stat_Crit,
	stat_Lava,
	stat_Drill,
	stat_Drill1s,
	stat_Batt_Recharge,
	stat_HP_Recharge,
	stat_Lava_Heals,
	stat_Dmg_Cost_50,
	stat_Mine_Cost_50,
	stat_Res_Only
};

#pragma rodata-name (push,"BANK_ROM")
const unsigned char str_Basic_Head_raw[]="Basic Head";
const unsigned char str_Head_MKII_raw[]="Head MKII";
const unsigned char str_Head_MKIII_raw[]="Head MKIII";
const unsigned char str_Head_MKIV_raw[]="Head MKIV";
const unsigned char str_Lightning_raw[]="Lightning";
const unsigned char str_Basic_Body_raw[]="Basic Body";
const unsigned char str_Tin_Body_raw[]="Tin Body";
const unsigned char str_Iron_Body_raw[]="Iron Body";
const unsigned char str_Steel_Body_raw[]="Steel Body";
const unsigned char str_Fortress_raw[]="Fortress";
const unsigned char str_Basic_Legs_raw[]="Basic Legs";
const unsigned char str_Fast_Legs_raw[]="Fast Legs";
const unsigned char str_Quick_Legs_raw[]="Quick Legs";
const unsigned char str_Agile_Legs_raw[]="Agile Legs";
const unsigned char str_Mustang_raw[]="Mustang";
const unsigned char str_Basic_Gun_raw[]="Basic Gun";
const unsigned char str_Blaster_raw[]="Blaster";
const unsigned char str_Laser_raw[]="Laser";
const unsigned char str_Phaser_raw[]="Phaser";
const unsigned char str_Death_Ray_raw[]="Death Ray";
const unsigned char str_Basic_Tool_raw[]="Basic Tool";
const unsigned char str_Rock_Pick_raw[]="Rock Pick";
const unsigned char str_Rock_Drill_raw[]="Rock Drill";
const unsigned char str_Rock_Borer_raw[]="Rock Borer";
const unsigned char str_Laser_Bit_raw[]="Laser Bit";

const unsigned char * const item_titles_raw[]=
{
	str_Basic_Head_raw,
	str_Head_MKII_raw,
	str_Head_MKIII_raw,
	str_Head_MKIV_raw,
	str_Lightning_raw,
	str_Basic_Body_raw,
	str_Tin_Body_raw,
	str_Iron_Body_raw,
	str_Steel_Body_raw,
	str_Fortress_raw,
	str_Basic_Legs_raw,
	str_Fast_Legs_raw,
	str_Quick_Legs_raw,
	str_Agile_Legs_raw,
	str_Mustang_raw,
	str_Basic_Gun_raw,
	str_Blaster_raw,
	str_Laser_raw,
	str_Phaser_raw,
	str_Death_Ray_raw,
	str_Basic_Tool_raw,
	str_Rock_Pick_raw,
	str_Rock_Drill_raw,
	str_Rock_Borer_raw,
    str_Laser_Bit_raw
};
#pragma rodata-name (pop)

unsigned char str_Basic_Head[sizeof(str_Basic_Head_raw)];
unsigned char str_Head_MKII[sizeof(str_Head_MKII_raw)];
unsigned char str_Head_MKIII[sizeof(str_Head_MKIII_raw)];
unsigned char str_Head_MKIV[sizeof(str_Head_MKIV_raw)];
unsigned char str_Lightning[sizeof(str_Lightning_raw)];
unsigned char str_Basic_Body[sizeof(str_Basic_Body_raw)];
unsigned char str_Tin_Body[sizeof(str_Tin_Body_raw)];
unsigned char str_Iron_Body[sizeof(str_Iron_Body_raw)];
unsigned char str_Steel_Body[sizeof(str_Steel_Body_raw)];
unsigned char str_Fortress[sizeof(str_Fortress_raw)];
unsigned char str_Basic_Legs[sizeof(str_Basic_Legs_raw)];
unsigned char str_Fast_Legs[sizeof(str_Fast_Legs_raw)];
unsigned char str_Quick_Legs[sizeof(str_Quick_Legs_raw)];
unsigned char str_Agile_Legs[sizeof(str_Agile_Legs_raw)];
unsigned char str_Mustang[sizeof(str_Mustang_raw)];
unsigned char str_Basic_Gun[sizeof(str_Basic_Gun_raw)];
unsigned char str_Blaster[sizeof(str_Blaster_raw)];
unsigned char str_Laser[sizeof(str_Laser_raw)];
unsigned char str_Phaser[sizeof(str_Phaser_raw)];
unsigned char str_Death_Ray[sizeof(str_Death_Ray_raw)];
unsigned char str_Basic_Tool[sizeof(str_Basic_Tool_raw)];
unsigned char str_Rock_Pick[sizeof(str_Rock_Pick_raw)];
unsigned char str_Rock_Drill[sizeof(str_Rock_Drill_raw)];
unsigned char str_Rock_Borer[sizeof(str_Rock_Borer_raw)];
unsigned char str_Laser_Bit[sizeof(str_Laser_Bit_raw)];

unsigned char * const item_titles[]=
{
	str_Basic_Head,
	str_Head_MKII,
	str_Head_MKIII,
	str_Head_MKIV,
	str_Lightning,
	str_Basic_Body,
	str_Tin_Body,
	str_Iron_Body,
	str_Steel_Body,
	str_Fortress,
	str_Basic_Legs,
	str_Fast_Legs,
	str_Quick_Legs,
	str_Agile_Legs,
	str_Mustang,
	str_Basic_Gun,
	str_Blaster,
	str_Laser,
	str_Phaser,
	str_Death_Ray,
	str_Basic_Tool,
	str_Rock_Pick,
	str_Rock_Drill,
	str_Rock_Borer,
    str_Laser_Bit
};

const unsigned char item_Basic_Head[]={	head,	0,	stat_None,				stat_Basic,	1,	stat_Batt,	2};
const unsigned char item_Head_MKII[]={	head,	2,	CRYSTAL_BLUE_TYPE,		stat_Green,	1,	stat_Batt,	4};
const unsigned char item_Head_MKIII[]={	head,	5,	CRYSTAL_BLUE_TYPE,		stat_Blue,	2,	stat_Batt,	5,	stat_Crit,		5};
const unsigned char item_Head_MKIV[]={	head,	8,	CRYSTAL_YELLOW_TYPE,	stat_Purple,3,	stat_Batt,	8,	stat_Crit,		10,	stat_Drill,			2};
const unsigned char item_Lightning[]={	head,	15,	CRYSTAL_RED_TYPE,		stat_Yellow,3,	stat_Batt,	12,	stat_Crit,		20,	stat_Batt_Recharge,	1};
const unsigned char item_Basic_Body[]={	body,	0,	stat_None,				stat_Basic,	1,	stat_HP,	5};
const unsigned char item_Tin_Body[]={	body,	2,	CRYSTAL_RED_TYPE,		stat_Green,	1,	stat_HP,	8};
const unsigned char item_Iron_Body[]={	body,	5,	CRYSTAL_BLUE_TYPE,		stat_Blue,	2,	stat_HP,	10,	stat_Batt,		3};
const unsigned char item_Steel_Body[]={	body,	8,	CRYSTAL_YELLOW_TYPE,	stat_Purple,3,	stat_HP,	12,	stat_Batt,		5,	stat_Dmg,			2};
const unsigned char item_Fortress[]={	body,	15,	CRYSTAL_BLUE_TYPE,		stat_Yellow,3,	stat_HP,	20,	stat_Batt,		10,	stat_HP_Recharge,	1};
const unsigned char item_Basic_Legs[]={	legs,	0,	stat_None,				stat_Basic,	1,	stat_HP,	3};
const unsigned char item_Fast_Legs[]={	legs,	2,	CRYSTAL_RED_TYPE,		stat_Green,	1,	stat_HP,	5};
const unsigned char item_Quick_Legs[]={	legs,	5,	CRYSTAL_RED_TYPE,		stat_Blue,	2,	stat_HP,	6,	stat_Lava,		25};
const unsigned char item_Agile_Legs[]={	legs,	8,	CRYSTAL_BLUE_TYPE,		stat_Purple,3,	stat_HP,	7,	stat_Lava,		50,	stat_Mine,			2};
const unsigned char item_Mustang[]={	legs,	15,	CRYSTAL_RED_TYPE,		stat_Yellow,3,	stat_HP,	12,	stat_Dmg,		4,	stat_Lava_Heals,	0};
const unsigned char item_Basic_Gun[]={	gun,	0,	stat_None,				stat_Basic,	1,	stat_Dmg,	4};
const unsigned char item_Blaster[]={	gun,	2,	CRYSTAL_YELLOW_TYPE,	stat_Green,	1,	stat_Dmg,	6};
const unsigned char item_Laser[]={		gun,	5,	CRYSTAL_RED_TYPE,		stat_Blue,	2,	stat_Dmg,	8,	stat_Crit,		10};
const unsigned char item_Phaser[]={		gun,	8,	CRYSTAL_BLUE_TYPE,		stat_Purple,3,	stat_Dmg,	10,	stat_Crit,		15,	stat_Batt,			2};
const unsigned char item_Death_Ray[]={	gun,	15,	CRYSTAL_YELLOW_TYPE,	stat_Yellow,3,	stat_Dmg,	12,	stat_Crit,		30,	stat_Dmg_Cost_50,	0};
const unsigned char item_Basic_Tool[]={	tool,	0,	stat_None,				stat_Basic,	1,	stat_Mine,	1};
const unsigned char item_Rock_Pick[]={	tool,	2,	CRYSTAL_YELLOW_TYPE,	stat_Green,	1,	stat_Mine,	2};
const unsigned char item_Rock_Drill[]={	tool,	5,	CRYSTAL_YELLOW_TYPE,	stat_Blue,	2,	stat_Mine,	3,	stat_Drill,		2};
const unsigned char item_Rock_Borer[]={	tool,	8,	CRYSTAL_RED_TYPE,		stat_Purple,3,	stat_Mine,	5,	stat_Drill,		3,	stat_Batt,			3};
const unsigned char item_Laser_Bit[]={	tool,	15,	CRYSTAL_YELLOW_TYPE,	stat_Yellow,3,	stat_Mine1s,0,	stat_Drill1s,	0,	stat_Mine_Cost_50,	3};

//No way to mix strings and values so declare strings here
const unsigned char str_Res_HP_Heal[]="Heals HP to$full";
const unsigned char str_Res_HP_Upgrade[]="+1 HP";
const unsigned char str_Res_Batt_Heal[]="Recharges$battery to$full";
const unsigned char str_Res_Batt_Upgrade[]="+1 Batt";
const unsigned char str_Res_Exp_Upgrade[]="+10 Exp point";
const unsigned char str_Res_Dmg_Upgrade[]="+1 Dmg";

const unsigned char * const res_descriptions[]=
{
	str_Res_HP_Heal,
	str_Res_HP_Upgrade,
	str_Res_Batt_Heal,
	str_Res_Batt_Upgrade,
	str_Res_Exp_Upgrade,
	str_Res_Dmg_Upgrade
};

const unsigned char item_Res_HP_Heal[]={		stat_Res_Only,	1,	CRYSTAL_RED_TYPE,		0};
const unsigned char item_Res_HP_Upgrade[]={		stat_Res_Only,	10,	CRYSTAL_RED_TYPE,		1};
const unsigned char item_Res_Batt_Heal[]={		stat_Res_Only,	1,	CRYSTAL_BLUE_TYPE,		2};
const unsigned char item_Res_Batt_Upgrade[]={	stat_Res_Only,	10,	CRYSTAL_BLUE_TYPE,		3};
const unsigned char item_Res_Exp_Upgrade[]={	stat_Res_Only,	1,	CRYSTAL_YELLOW_TYPE,	4};
const unsigned char item_Res_Dmg_Upgrade[]={	stat_Res_Only,	10,	CRYSTAL_YELLOW_TYPE,	5};


//ITEM STATS
const unsigned char * const item_stats[]=
{
	item_Basic_Head,
	item_Head_MKII,
	item_Head_MKIII,
	item_Head_MKIV,
	item_Lightning,
	item_Basic_Body,
	item_Tin_Body,
	item_Iron_Body,
	item_Steel_Body,
	item_Fortress,
	item_Basic_Legs,
	item_Fast_Legs,
	item_Quick_Legs,
	item_Agile_Legs,
	item_Mustang,
	item_Basic_Gun,
	item_Blaster,
	item_Laser,
	item_Phaser,
	item_Death_Ray,
	item_Basic_Tool,
	item_Rock_Pick,
	item_Rock_Drill,
	item_Rock_Borer,
	item_Laser_Bit,
	item_Res_HP_Heal,
	item_Res_HP_Upgrade,
	item_Res_Batt_Heal,
	item_Res_Batt_Upgrade,
	item_Res_Exp_Upgrade,
	item_Res_Dmg_Upgrade
};

const unsigned char str_stat_Batt[]="+$ Batt";
const unsigned char str_stat_HP[]="+$ HP";
const unsigned char str_stat_Dmg[]="+$ Dmg";
const unsigned char str_stat_Mine[]="-$s Mine";
const unsigned char str_stat_Mine1s[]="1s Mine";
const unsigned char str_stat_Crit[]="+$% Crit";
const unsigned char str_stat_Lava[]="-$% Lava";
const unsigned char str_stat_Drill[]="-$s Drill";
const unsigned char str_stat_Drill1s[]="1s Drill";
const unsigned char str_stat_Batt_Recharge[]="+$/s Batt";
const unsigned char str_stat_HP_Recharge[]="+$/s HP";
const unsigned char str_stat_LavaHeals[]="Lava Heals";
const unsigned char str_stat_AttackCost50[]="-50% Cost";
const unsigned char str_stat_MineCost50[]="-50% Cost";

const unsigned char * const stat_descriptions[]=
{
	str_stat_Batt,
	str_stat_HP,
	str_stat_Dmg,
	str_stat_Mine,
	str_stat_Mine1s,
	str_stat_Crit,
	str_stat_Lava,
	str_stat_Drill, 
	str_stat_Drill1s,
	str_stat_Batt_Recharge,
	str_stat_HP_Recharge,
	str_stat_LavaHeals,
	str_stat_AttackCost50,
	str_stat_MineCost50
};

const unsigned char stat_description_colors[]=
{
	COLOR_BATT,
	COLOR_HP,
	COLOR_DMG,
	COLOR_MINE,
	COLOR_MINE,
	COLOR_CRIT,
	COLOR_LAVA,
	COLOR_DRILL, 
	COLOR_DRILL,
	COLOR_BATT,
	COLOR_HP,
	COLOR_HP,
	COLOR_DMG,
	COLOR_MINE
};


enum stat_pointer_flags
{
	//stat_ignore,
	stat_special
};

unsigned char * const stat_pointers[]=
{
	&hero_Batt_Max,			//Batt,
	&hero_HP_Max_temp,      //HP,
	&hero_Dmg,              //Dmg,
	stat_special,           //Mine,
	stat_special,       	//Mine1s,
	&hero_Crit_Rate,        //Crit,
	&hero_Lava_Res,         //Lava,
	stat_special,           //Drill, 
	stat_special,           //Drill1s,
	&hero_Batt_Recharge,	//Batt_Recharge
	&hero_HP_Recharge,		//HP_Recharge,
	stat_special,     		//LavaHeals,
	stat_special,  			//AttackCost50,
	stat_special			//MineCost50
};

//HERO STATS
const unsigned char str_hero_stat_HP[]=		"HP:   $";
const unsigned char str_hero_stat_Batt[]=	"Batt: $";
const unsigned char str_hero_stat_Dmg[]=	"Dmg:  $";
const unsigned char str_hero_stat_Crit[]=	"Crit: $%";
const unsigned char str_hero_stat_Mine[]=	"Mine: $s";
const unsigned char str_hero_stat_Drill[]=	"Drill:$s";
const unsigned char str_hero_stat_Lava[]=	"Lava: -$%";

const unsigned char hero_stat_colors[]=
{
	COLOR_HP,
	COLOR_BATT,
	COLOR_DMG,
	COLOR_CRIT,
	COLOR_MINE,
	COLOR_DRILL,
	COLOR_LAVA
};

const unsigned char * const hero_stat_texts[]=
{
	str_hero_stat_HP,
	str_hero_stat_Batt,
	str_hero_stat_Dmg,
	str_hero_stat_Crit,
	str_hero_stat_Mine,
	str_hero_stat_Drill,
	str_hero_stat_Lava
};

const unsigned char * const hero_stat_pointers[]=
{
	0,	//&hero_HP_Max, int so can't put here
	&hero_Batt_Max,
	&hero_Dmg,
	&hero_Crit_Rate,
	&hero_Mine_Speed,
	&hero_Drill_Speed,
	&hero_Lava_Res
};


//SKILL INFO
enum skill_IDs
{
	Battery_Saver,
	Bounty_Hunter,
	Fast_Digger,
	Lucky_Driller,
	Master_Miner,
	Lucky_Crit,
	Crit_Lord,
	Experienced,
	Instakill,
	Ghost,
	Free_Lunch,
	Wise_Rewards,
	Big_Discount,
	Only_the_Best,
	Crystalsmith
};

#pragma rodata-name (push,"BANK_ROM")
const unsigned char str_Skill0_title_raw[]="Battery Saver";
const unsigned char str_Skill1_title_raw[]="Bounty Hunter";
const unsigned char str_Skill2_title_raw[]="Fast Digger";
const unsigned char str_Skill3_title_raw[]="Lucky Driller";
const unsigned char str_Skill4_title_raw[]="Master Miner";
const unsigned char str_Skill5_title_raw[]="Lucky Crit";
const unsigned char str_Skill6_title_raw[]="Crit Lord";
const unsigned char str_Skill7_title_raw[]="Experienced";
const unsigned char str_Skill8_title_raw[]="Instakill";
const unsigned char str_Skill9_title_raw[]="Ghost";
const unsigned char str_Skill10_title_raw[]="Free Lunch";
const unsigned char str_Skill11_title_raw[]="Wise Rewards";
const unsigned char str_Skill12_title_raw[]="Big Discount";
const unsigned char str_Skill13_title_raw[]="Only the Best";
const unsigned char str_Skill14_title_raw[]="Crystalsmith";

const unsigned char str_Skill0_description_raw[]="20% chance that$mining won't$consume energy";
const unsigned char str_Skill1_description_raw[]="10% chance of$crystal when$you kill an$enemy";
const unsigned char str_Skill2_description_raw[]="-2 Mine and$Drill time";
const unsigned char str_Skill3_description_raw[]="25% chance of$crystal when$mining rock";
const unsigned char str_Skill4_description_raw[]="Mine double$crystals";
const unsigned char str_Skill5_description_raw[]="+20% chance of$critical hit";
const unsigned char str_Skill6_description_raw[]="Crit damage$raised from$150% to 200%";
const unsigned char str_Skill7_description_raw[]="+10% bonus to$experience on$kill";
const unsigned char str_Skill8_description_raw[]="5% chance to$kill enemy in$one hit";
const unsigned char str_Skill9_description_raw[]="Walk through$enemies";
const unsigned char str_Skill10_description_raw[]="20% chance that$crafting will$cost nothing";
const unsigned char str_Skill11_description_raw[]="+5 random$crystal when$leveling up";
const unsigned char str_Skill12_description_raw[]="-1 to cost of$items";
const unsigned char str_Skill13_description_raw[]="10% chance$that crafted$items will be$yellow quality";
const unsigned char str_Skill14_description_raw[]="Pay with any$crystal";

const unsigned char * const skill_titles_raw[]=
{
	str_Skill0_title_raw,
	str_Skill1_title_raw,
	str_Skill2_title_raw,
	str_Skill3_title_raw,
	str_Skill4_title_raw,
	str_Skill5_title_raw,
	str_Skill6_title_raw,
	str_Skill7_title_raw,
	str_Skill8_title_raw,
	str_Skill9_title_raw,
	str_Skill10_title_raw,
	str_Skill11_title_raw,
	str_Skill12_title_raw,
	str_Skill13_title_raw,
	str_Skill14_title_raw
};

const unsigned char * const skill_descriptions_raw[]=
{
	str_Skill0_description_raw,
	str_Skill1_description_raw,
	str_Skill2_description_raw,
	str_Skill3_description_raw,
	str_Skill4_description_raw,
	str_Skill5_description_raw,
	str_Skill6_description_raw,
	str_Skill7_description_raw,
	str_Skill8_description_raw,
	str_Skill9_description_raw,
	str_Skill10_description_raw,
	str_Skill11_description_raw,
	str_Skill12_description_raw,
	str_Skill13_description_raw,
	str_Skill14_description_raw
};
#pragma rodata-name (pop)

unsigned char str_Skill0_title[sizeof(str_Skill0_title_raw)];
unsigned char str_Skill1_title[sizeof(str_Skill1_title_raw)];
unsigned char str_Skill2_title[sizeof(str_Skill2_title_raw)];
unsigned char str_Skill3_title[sizeof(str_Skill3_title_raw)];
unsigned char str_Skill4_title[sizeof(str_Skill4_title_raw)];
unsigned char str_Skill5_title[sizeof(str_Skill5_title_raw)];
unsigned char str_Skill6_title[sizeof(str_Skill6_title_raw)];
unsigned char str_Skill7_title[sizeof(str_Skill7_title_raw)];
unsigned char str_Skill8_title[sizeof(str_Skill8_title_raw)];
unsigned char str_Skill9_title[sizeof(str_Skill9_title_raw)];
unsigned char str_Skill10_title[sizeof(str_Skill10_title_raw)];
unsigned char str_Skill11_title[sizeof(str_Skill11_title_raw)];
unsigned char str_Skill12_title[sizeof(str_Skill12_title_raw)];
unsigned char str_Skill13_title[sizeof(str_Skill13_title_raw)];
unsigned char str_Skill14_title[sizeof(str_Skill14_title_raw)];

unsigned char str_Skill0_description[sizeof(str_Skill0_description_raw)];
unsigned char str_Skill1_description[sizeof(str_Skill1_description_raw)];
unsigned char str_Skill2_description[sizeof(str_Skill2_description_raw)];
unsigned char str_Skill3_description[sizeof(str_Skill3_description_raw)];
unsigned char str_Skill4_description[sizeof(str_Skill4_description_raw)];
unsigned char str_Skill5_description[sizeof(str_Skill5_description_raw)];
unsigned char str_Skill6_description[sizeof(str_Skill6_description_raw)];
unsigned char str_Skill7_description[sizeof(str_Skill7_description_raw)];
unsigned char str_Skill8_description[sizeof(str_Skill8_description_raw)];
unsigned char str_Skill9_description[sizeof(str_Skill9_description_raw)];
unsigned char str_Skill10_description[sizeof(str_Skill10_description_raw)];
unsigned char str_Skill11_description[sizeof(str_Skill11_description_raw)];
unsigned char str_Skill12_description[sizeof(str_Skill12_description_raw)];
unsigned char str_Skill13_description[sizeof(str_Skill13_description_raw)];
unsigned char str_Skill14_description[sizeof(str_Skill14_description_raw)];

unsigned char * const skill_titles[]=
{
	str_Skill0_title,
	str_Skill1_title,
	str_Skill2_title,
	str_Skill3_title,
	str_Skill4_title,
	str_Skill5_title,
	str_Skill6_title,
	str_Skill7_title,
	str_Skill8_title,
	str_Skill9_title,
	str_Skill10_title,
	str_Skill11_title,
	str_Skill12_title,
	str_Skill13_title,
	str_Skill14_title
};

unsigned char * const skill_descriptions[]=
{
	str_Skill0_description,
	str_Skill1_description,
	str_Skill2_description,
	str_Skill3_description,
	str_Skill4_description,
	str_Skill5_description,
	str_Skill6_description,
	str_Skill7_description,
	str_Skill8_description,
	str_Skill9_description,
	str_Skill10_description,
	str_Skill11_description,
	str_Skill12_description,
	str_Skill13_description,
	str_Skill14_description
};




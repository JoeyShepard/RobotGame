
	;Target types
		ENUM		target_none
		NEXTENUM	target_rock
		NEXTENUM	target_exit
		NEXTENUM	target_monster
		NEXTENUM	target_crystal
		NEXTENUM	target_return
			
	;Item types
		ENUM		head
		NEXTENUM	body
		NEXTENUM	legs
		NEXTENUM	gun
		NEXTENUM	tool
		NEXTENUM	ground
		NEXTENUM	crystal
		NEXTENUM	res_only
		
	;Item IDs
		ENUM		Basic_Head
		NEXTENUM	Head_MKII
		NEXTENUM	Head_MKIII
		NEXTENUM	Head_MKIV
		NEXTENUM	Lightning
		NEXTENUM	Basic_Body
		NEXTENUM	Tin_Body
		NEXTENUM	Iron_Body
		NEXTENUM	Steel_Body
		NEXTENUM	Fortress
		NEXTENUM	Basic_Legs
		NEXTENUM	Fast_Legs
		NEXTENUM	Quick_Legs
		NEXTENUM	Agile_Legs
		NEXTENUM	Mustang
		NEXTENUM	Basic_Gun
		NEXTENUM	Blaster
		NEXTENUM	Laser
		NEXTENUM	Phaser
		NEXTENUM	Death_Ray
		NEXTENUM	Basic_Tool
		NEXTENUM	Rock_Pick
		NEXTENUM	Rock_Drill
		NEXTENUM	Rock_Borer
		NEXTENUM	Laser_Bit
		NEXTENUM	Res_HP_Heal_ID
		NEXTENUM	Res_HP_Upgrade_ID
		NEXTENUM	Res_Batt_Heal_ID
		NEXTENUM	Res_Batt_Upgrade_ID
		NEXTENUM	Res_Exp_Upgrade_ID
		NEXTENUM	Res_Dmg_Upgrade_ID
		NEXTENUM	item_IDs_size
		NEXTENUM	item_none
			
	;Tile IDs
		;Colorable tiles created in RAM from other tiles
		ENUM		Ground_0
		NEXTENUM	Ground_90
		NEXTENUM	Ground_180
		NEXTENUM	Ground_270
		NEXTENUM	Rock
		NEXTENUM	Lava
		NEXTENUM	Crystal_red
		NEXTENUM	Crystal_yellow
		NEXTENUM	Crystal_blue
		NEXTENUM	Robot_left
		NEXTENUM	Robot_right
		NEXTENUM	Menu_item_temp
		NEXTENUM	Skill_temp
		
		;Colorable tiles
		NEXTENUM	Menu_head
		NEXTENUM	Menu_body
		NEXTENUM	Menu_legs
		NEXTENUM	Menu_gun
		NEXTENUM	Menu_tool
		NEXTENUM	Robot_left_raw
		NEXTENUM	Robot_right_raw
		NEXTENUM	Crystal_raw
		NEXTENUM	Ground_raw
		
		;Non-colorable tiles in RAM
		NEXTENUM	Monster			
		NEXTENUM	Monster_dead		
		NEXTENUM	Menu_item_slot
		NEXTENUM	Crystal_base
		
		;1bpp tiles
		NEXTENUM	Hero_target
		NEXTENUM	Menu_item_selector
		NEXTENUM	Menu_skill_selector
		NEXTENUM	ExitID
		NEXTENUM	Res_HP_Heal		
		NEXTENUM	Res_HP_Upgrade	
		NEXTENUM	Res_Batt_Heal	
		NEXTENUM	Res_Batt_Upgrade	
		NEXTENUM	Res_Exp_Upgrade	
		NEXTENUM	Res_Dmg_Upgrade
		NEXTENUM	Skill0
		NEXTENUM	Skill1
		NEXTENUM	Skill2
		NEXTENUM	Skill3
		NEXTENUM	Skill4
		NEXTENUM	Skill5
		NEXTENUM	Skill6
		NEXTENUM	Skill7
		NEXTENUM	Skill8
		NEXTENUM	Skill9
		NEXTENUM	Skill10
		NEXTENUM	Skill11
		NEXTENUM	Skill12
		NEXTENUM	Skill13
		NEXTENUM	Skill14
		NEXTENUM	tile_IDs_size
	
	;stat field indexes
		ENUM type
		NEXTENUM cost
		NEXTENUM cost_type
		NEXTENUM quality
		;NEXTENUM description=quality,
		NEXTENUM stat_count
		NEXTENUM stat_begin

description equ quality

	;stat qualities. also used for crystals
		;Put these first so can index with colors
		ENUM stat_Basic
		NEXTENUM stat_Green
		NEXTENUM stat_Blue
		NEXTENUM stat_Purple
		NEXTENUM stat_Yellow
		NEXTENUM stat_Red
		NEXTENUM stat_None

	;stat types
		ENUM stat_Batt
		NEXTENUM stat_HP
		NEXTENUM stat_Dmg
		NEXTENUM stat_Mine
		NEXTENUM stat_Mine1s
		NEXTENUM stat_Crit
		NEXTENUM stat_Lava
		NEXTENUM stat_Drill
		NEXTENUM stat_Drill1s
		NEXTENUM stat_Batt_Recharge
		NEXTENUM stat_HP_Recharge
		NEXTENUM stat_Lava_Heals
		NEXTENUM stat_Dmg_Cost_50
		NEXTENUM stat_Mine_Cost_50
		NEXTENUM stat_Res_Only

	;item titles
		str_Basic_Head:		FCB "Basic Head",0
		str_Head_MKII:		FCB "Head MKII",0
		str_Head_MKIII:		FCB "Head MKIII",0
		str_Head_MKIV:		FCB "Head MKIV",0
		str_Lightning: 		FCB "Lightning",0
		str_Basic_Body: 	FCB "Basic Body",0
		str_Tin_Body: 		FCB "Tin Body",0
		str_Iron_Body: 		FCB "Iron Body",0
		str_Steel_Body: 	FCB "Steel Body",0
		str_Fortress: 		FCB "Fortress",0
		str_Basic_Legs: 	FCB "Basic Legs",0
		str_Fast_Legs: 		FCB "Fast Legs",0
		str_Quick_Legs: 	FCB "Quick Legs",0
		str_Agile_Legs: 	FCB "Agile Legs",0
		str_Mustang: 		FCB "Mustang",0
		str_Basic_Gun: 		FCB "Basic Gun",0
		str_Blaster: 		FCB "Blaster",0
		str_Laser: 			FCB "Laser",0
		str_Phaser: 		FCB "Phaser",0
		str_Death_Ray: 		FCB "Death Ray",0
		str_Basic_Tool: 	FCB "Basic Tool",0
		str_Rock_Pick: 		FCB "Rock Pick",0
		str_Rock_Drill: 	FCB "Rock Drill",0
		str_Rock_Borer: 	FCB "Rock Borer",0
		str_Laser_Bit: 		FCB "Laser Bit",0

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

	;item stats
		item_Basic_Head:	FCB head,	0,	stat_None,				stat_Basic,	1,	stat_Batt,	2
		item_Head_MKII:		FCB head,	2,	CRYSTAL_BLUE_TYPE,		stat_Green,	1,	stat_Batt,	4
		item_Head_MKIII:	FCB head,	5,	CRYSTAL_BLUE_TYPE,		stat_Blue,	2,	stat_Batt,	5,	stat_Crit,		5
		item_Head_MKIV:		FCB head,	8,	CRYSTAL_YELLOW_TYPE,	stat_Purple,3,	stat_Batt,	8,	stat_Crit,		10,	stat_Drill,			2
		item_Lightning:		FCB head,	15,	CRYSTAL_RED_TYPE,		stat_Yellow,3,	stat_Batt,	12,	stat_Crit,		20,	stat_Batt_Recharge,	1
		item_Basic_Body:	FCB body,	0,	stat_None,				stat_Basic,	1,	stat_HP,	5
		item_Tin_Body:		FCB body,	2,	CRYSTAL_RED_TYPE,		stat_Green,	1,	stat_HP,	8
		item_Iron_Body:		FCB body,	5,	CRYSTAL_BLUE_TYPE,		stat_Blue,	2,	stat_HP,	10,	stat_Batt,		3
		item_Steel_Body:	FCB body,	8,	CRYSTAL_YELLOW_TYPE,	stat_Purple,3,	stat_HP,	12,	stat_Batt,		5,	stat_Dmg,			2
		item_Fortress:		FCB body,	15,	CRYSTAL_BLUE_TYPE,		stat_Yellow,3,	stat_HP,	20,	stat_Batt,		10,	stat_HP_Recharge,	1
		item_Basic_Legs:	FCB legs,	0,	stat_None,				stat_Basic,	1,	stat_HP,	3
		item_Fast_Legs:		FCB legs,	2,	CRYSTAL_RED_TYPE,		stat_Green,	1,	stat_HP,	5
		item_Quick_Legs:	FCB legs,	5,	CRYSTAL_RED_TYPE,		stat_Blue,	2,	stat_HP,	6,	stat_Lava,		25
		item_Agile_Legs:	FCB legs,	8,	CRYSTAL_BLUE_TYPE,		stat_Purple,3,	stat_HP,	7,	stat_Lava,		50,	stat_Mine,			2
		item_Mustang:		FCB legs,	15,	CRYSTAL_RED_TYPE,		stat_Yellow,3,	stat_HP,	12,	stat_Dmg,		4,	stat_Lava_Heals,	0
		item_Basic_Gun:		FCB gun,	0,	stat_None,				stat_Basic,	1,	stat_Dmg,	4
		item_Blaster:		FCB gun,	2,	CRYSTAL_YELLOW_TYPE,	stat_Green,	1,	stat_Dmg,	6
		item_Laser:			FCB gun,	5,	CRYSTAL_RED_TYPE,		stat_Blue,	2,	stat_Dmg,	8,	stat_Crit,		10
		item_Phaser:		FCB gun,	8,	CRYSTAL_BLUE_TYPE,		stat_Purple,3,	stat_Dmg,	10,	stat_Crit,		15,	stat_Batt,			2
		item_Death_Ray:		FCB gun,	15,	CRYSTAL_YELLOW_TYPE,	stat_Yellow,3,	stat_Dmg,	12,	stat_Crit,		30,	stat_Dmg_Cost_50,	0
		item_Basic_Tool:	FCB tool,	0,	stat_None,				stat_Basic,	1,	stat_Mine,	1
		item_Rock_Pick:		FCB tool,	2,	CRYSTAL_YELLOW_TYPE,	stat_Green,	1,	stat_Mine,	2
		item_Rock_Drill:	FCB tool,	5,	CRYSTAL_YELLOW_TYPE,	stat_Blue,	2,	stat_Mine,	3,	stat_Drill,		2
		item_Rock_Borer:	FCB tool,	8,	CRYSTAL_RED_TYPE,		stat_Purple,3,	stat_Mine,	5,	stat_Drill,		3,	stat_Batt,			3
		item_Laser_Bit:		FCB tool,	15,	CRYSTAL_YELLOW_TYPE,	stat_Yellow,3,	stat_Mine1s,0,	stat_Drill1s,	0,	stat_Mine_Cost_50,	3

		str_Res_HP_Heal:		FCB "Heals HP to*full",0
		str_Res_HP_Upgrade:		FCB "+1 HP",0
		str_Res_Batt_Heal:		FCB "Recharges*battery to*full",0
		str_Res_Batt_Upgrade:	FCB "+1 Batt",0
		str_Res_Exp_Upgrade:	FCB "+10 Exp point",0
		str_Res_Dmg_Upgrade: 	FCB "+1 Dmg",0

		res_descriptions:
			FDB str_Res_HP_Heal
			FDB str_Res_HP_Upgrade
			FDB str_Res_Batt_Heal
			FDB str_Res_Batt_Upgrade
			FDB str_Res_Exp_Upgrade
			FDB str_Res_Dmg_Upgrade

		item_Res_HP_Heal:		FCB stat_Res_Only,	1,	CRYSTAL_RED_TYPE,		0
		item_Res_HP_Upgrade:	FCB stat_Res_Only,	10,	CRYSTAL_RED_TYPE,		1
		item_Res_Batt_Heal:		FCB stat_Res_Only,	1,	CRYSTAL_BLUE_TYPE,		2
		item_Res_Batt_Upgrade:	FCB stat_Res_Only,	10,	CRYSTAL_BLUE_TYPE,		3
		item_Res_Exp_Upgrade:	FCB stat_Res_Only,	1,	CRYSTAL_YELLOW_TYPE,	4
		item_Res_Dmg_Upgrade:	FCB stat_Res_Only,	10,	CRYSTAL_YELLOW_TYPE,	5


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

	;stat descriptions
		str_stat_Batt:			FCB "+$ Batt",0
		str_stat_HP: 			FCB "+$ HP",0
		str_stat_Dmg: 			FCB "+$ Dmg",0
		str_stat_Mine: 			FCB "-$s Mine",0
		str_stat_Mine1s:		FCB "1s Mine",0
		str_stat_Crit: 			FCB "+$% Crit",0
		str_stat_Lava:			FCB "-$% Lava",0
		str_stat_Drill:			FCB "-$s Drill",0
		str_stat_Drill1s:		FCB "1s Drill",0
		str_stat_Batt_Recharge:	FCB "+$/s Batt",0
		str_stat_HP_Recharge: 	FCB "+$/s HP",0
		str_stat_LavaHeals: 	FCB "Lava Heals",0
		str_stat_AttackCost50: 	FCB "-50% Cost",0
		str_stat_MineCost50: 	FCB "-50% Cost",0

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

		ENUM stat_special

	;stat pointers
		stat_pointers:
			FDB hero_Batt_Max			;Batt
			FDB hero_HP_Max_temp		;HP
			FDB hero_Dmg				;Dmg
			FDB stat_special           	;Mine
			FDB stat_special       		;Mine1s
			FDB hero_Crit_Rate        	;Crit
			FDB hero_Lava_Res         	;Lava
			FDB stat_special           	;Drill 
			FDB stat_special           	;Drill1s
			FDB hero_Batt_Recharge		;Batt_Recharge
			FDB hero_HP_Recharge		;HP_Recharge
			FDB stat_special     		;LavaHeals
			FDB stat_special  			;AttackCost50
			FDB stat_special			;MineCost50

	;HERO STATS
		str_hero_stat_HP: 		FCB "HP:   $",0
		str_hero_stat_Batt: 	FCB "Batt: $",0
		str_hero_stat_Dmg: 		FCB "Dmg:  $",0
		str_hero_stat_Crit: 	FCB "Crit: $%",0
		str_hero_stat_Mine: 	FCB "Mine: $s",0
		str_hero_stat_Drill:	FCB "Drill:$s",0
		str_hero_stat_Lava: 	FCB "Lava: -$%",0

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
			FDB 0				;&hero_HP_Max, int so can't put here
			FDB hero_Batt_Max
			FDB hero_Dmg
			FDB hero_Crit_Rate
			FDB hero_Mine_Speed
			FDB hero_Drill_Speed
			FDB hero_Lava_Res

	;SKILL INFO
		ENUM Battery_Saver
		NEXTENUM Bounty_Hunter
		NEXTENUM Fast_Digger
		NEXTENUM Lucky_Driller
		NEXTENUM Master_Miner
		NEXTENUM Lucky_Crit
		NEXTENUM Crit_Lord
		NEXTENUM Experienced
		NEXTENUM Instakill
		NEXTENUM Ghost
		NEXTENUM Free_Lunch
		NEXTENUM Wise_Rewards
		NEXTENUM Big_Discount
		NEXTENUM Only_the_Best
		NEXTENUM Crystalsmith

		str_Skill0_title: 	FCB	"Battery Saver",0
		str_Skill1_title: 	FCB	"Bounty Hunter",0
		str_Skill2_title: 	FCB	"Fast Digger",0
		str_Skill3_title: 	FCB	"Lucky Driller",0
		str_Skill4_title: 	FCB	"Master Miner",0
		str_Skill5_title: 	FCB	"Lucky Crit",0
		str_Skill6_title: 	FCB	"Crit Lord",0
		str_Skill7_title: 	FCB	"Experienced",0
		str_Skill8_title: 	FCB	"Instakill",0
		str_Skill9_title: 	FCB	"Ghost",0
		str_Skill10_title: 	FCB	"Free Lunch",0
		str_Skill11_title: 	FCB	"Wise Rewards",0
		str_Skill12_title: 	FCB	"Big Discount",0
		str_Skill13_title: 	FCB	"Only the Best",0
		str_Skill14_title: 	FCB	"Crystalsmith",0
	
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

		str_Skill0_description: 	FCB "20% chance that*mining won't*consume energy",0
		str_Skill1_description: 	FCB "10% chance of*crystal when*you kill an*enemy",0
		str_Skill2_description: 	FCB "-2 Mine and*Drill time",0
		str_Skill3_description: 	FCB "25% chance of*crystal when*mining rock",0
		str_Skill4_description: 	FCB "Mine double*crystals",0
		str_Skill5_description: 	FCB "+20% chance of*critical hit",0
		str_Skill6_description: 	FCB "Crit damage*raised from*150% to 200%",0
		str_Skill7_description: 	FCB "+10% bonus to*experience on*kill",0
		str_Skill8_description: 	FCB "5% chance to*kill enemy in*one hit",0
		str_Skill9_description: 	FCB "Walk through*enemies",0
		str_Skill10_description: 	FCB "20% chance that*crafting will*cost nothing",0
		str_Skill11_description: 	FCB "+5 random*crystal when*leveling up",0
		str_Skill12_description: 	FCB "-1 to cost of*items",0
		str_Skill13_description: 	FCB "10% chance*that crafted*items will be*yellow quality",0
		str_Skill14_description: 	FCB "Pay with any*crystal",0


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
	
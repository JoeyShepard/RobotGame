;Global variables
;================	
	BYTE display_X, display_Y
	BYTE hero_X, hero_Y
	WORD hero_HP
	WORD hero_HP_Max
	BYTE hero_HP_Max_temp
	BYTE hero_HP_Upgrade
	BYTE hero_Batt
	BYTE hero_Batt_Max
	BYTE hero_Batt_Upgrade
	BYTE hero_Dmg
	BYTE hero_Dmg_Upgrade
	BYTE hero_Mine_Speed
	BYTE hero_Drill_Speed
	BYTE hero_Lava_Res
	BYTE hero_Batt_Recharge
	BYTE hero_Crit_Rate
	BYTE hero_HP_Recharge
	WORD hero_Lava_Dmg
	BYTE hero_Dmg_Cost
	BYTE hero_Mine_Cost
	BYTE hero_Drill_Cost
	BYTE hero_Exp
	BYTE hero_Exp_Max
	BYTE hero_Level
	BYTE hero_Red
	BYTE hero_Blue
	BYTE hero_Yellow
	BYTE hero_Points
	BYTE hero_facing
	BYTE hero_target_direction
	BYTE hero_target_type
	BYTE hero_target_index
	BYTE hero_target_index2
	BYTE hero_activity
	WORD hero_activity_ticks
	WORD hero_activity_ticks_max
	hero_equipped:	DFS 5
	hero_inventory:	DFS INVENTORY_COUNT
	skill_list:		DFS SKILL_COUNT
	BYTE menu_char_x
	BYTE menu_char_y
	BYTE menu_skills_x
	BYTE menu_skills_y
	BYTE menu_res_x
	BYTE menu_res_y
	BYTE menu_res_target
	BYTE draw_X
	BYTE output_mode
	
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

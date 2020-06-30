
//ITEM COLORS
const unsigned char color_Basic_Head[]={head,5,73,21,74,42,72,42,71,12,75,63};
const unsigned char color_Head_MKII[]={head,5,73,21,74,58,72,58,71,48,75,63};
const unsigned char color_Head_MKIII[]={head,5,73,21,74,53,72,53,71,15,75,63};
const unsigned char color_Head_MKIV[]={head,5,73,21,74,32,72,32,71,50,75,63};
const unsigned char color_Lightning[]={head,5,73,48,74,63,72,63,71,48,75,3};
const unsigned char color_Basic_Body[]={body,2,65,21,66,42};
const unsigned char color_Tin_Body[]={body,2,65,21,66,43};
const unsigned char color_Iron_Body[]={body,2,65,21,66,23};
const unsigned char color_Steel_Body[]={body,2,65,21,66,2};
const unsigned char color_Fortress[]={body,2,65,3,66,63};
const unsigned char color_Basic_Legs[]={legs,2,67,21,68,42};
const unsigned char color_Fast_Legs[]={legs,2,67,21,68,46};
const unsigned char color_Quick_Legs[]={legs,2,67,21,68,29};
const unsigned char color_Agile_Legs[]={legs,2,67,21,68,8};
const unsigned char color_Mustang[]={legs,2,67,12,68,63};
const unsigned char color_Basic_Gun[]={gun,2,69,21,70,42};
const unsigned char color_Blaster[]={gun,2,69,21,70,59};
const unsigned char color_Laser[]={gun,2,69,21,70,55};
const unsigned char color_Phaser[]={gun,2,69,21,70,34};
const unsigned char color_Death_Ray[]={gun,2,69,50,70,63};
const unsigned char color_Basic_Tool[]={tool,1,76,42};
const unsigned char color_Rock_Pick[]={tool,1,76,47};
const unsigned char color_Rock_Drill[]={tool,1,76,31};
const unsigned char color_Rock_Borer[]={tool,1,76,10};
const unsigned char color_Laser_Bit[]={tool,1,76,15};
#pragma rodata-name (push,"BANK_ROM")
const unsigned char color_Ground_0[]={ground,3,83,59,84,32,85,2};
const unsigned char color_Ground_90[]={ground,3,83,59,84,2,85,8};
const unsigned char color_Ground_180[]={ground,3,83,59,84,8,85,10};
const unsigned char color_Ground_270[]={ground,3,83,59,84,10,85,32};
const unsigned char color_Crystal_red[]={crystal,5,80,33,82,32,81,2,78,23,79,43};
const unsigned char color_Crystal_yellow[]={crystal,5,80,33,82,32,81,2,78,31,79,47};
const unsigned char color_Crystal_blue[]={crystal,5,80,33,82,32,81,2,78,53,79,58};
const unsigned char color_Rock[]={ground,3,83,33,84,50,85,32};
const unsigned char color_Lava[]={ground,3,83,11,84,2,85,15};
#pragma rodata-name (pop)

const unsigned char * const item_colors[]=
{
	color_Basic_Head,
	color_Head_MKII,
	color_Head_MKIII,
	color_Head_MKIV,
	color_Lightning,
	color_Basic_Body,
	color_Tin_Body,
	color_Iron_Body,
	color_Steel_Body,
	color_Fortress,
	color_Basic_Legs,
	color_Fast_Legs,
	color_Quick_Legs,
	color_Agile_Legs,
	color_Mustang,
	color_Basic_Gun,
	color_Blaster,
	color_Laser,
	color_Phaser,
	color_Death_Ray,
	color_Basic_Tool,
	color_Rock_Pick,
	color_Rock_Drill,
	color_Rock_Borer,
	color_Laser_Bit
};
	
const unsigned char * const tile_colors[]=
{
	color_Ground_0,
	color_Ground_90,
	color_Ground_180,
	color_Ground_270,
	color_Rock,
	color_Lava,
	color_Crystal_red,
	color_Crystal_yellow,
	color_Crystal_blue
};

const unsigned char title_colors[]=
{
	COLOR_GRAY_2,
	COLOR_GREEN,
	COLOR_BLUE,
	COLOR_PURPLE,
	COLOR_YELLOW
};

const unsigned char crystal_colors[]=
{
	COLOR_CRYSTAL_RED1,
	COLOR_CRYSTAL_BLUE1,
	COLOR_CRYSTAL_YELLOW1
};







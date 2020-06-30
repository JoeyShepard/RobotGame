
#include <stdio.h>
#include "emu.h"
#include "const.h"
#include "globals.h"
#include "game.h"
#include "tiles.h"
#include "chartable.h"
#include "colors.h"

#define BRK asm("BRK");asm("BRK");

int AddExp(unsigned char exp);
int CalcStats(void);
unsigned char *CalcXY(int x, int y);
unsigned char CheckForCrystal(unsigned char x, unsigned char y);
unsigned char CheckForMonster(unsigned char x, unsigned char y);
int CheckHP(void);
int clrscr(unsigned char color);
int ColorHero(void);
int ColorTile(int tile, int color_index);
int CopyTile(int dest, int src);
unsigned char DrawBar(unsigned char x, unsigned char y, unsigned char val, unsigned char max, unsigned char fg_color, unsigned char bg_color);
int DrawBorder(unsigned char x, unsigned char y, unsigned int width, unsigned char height, unsigned char color);
int DrawFrame(void);
int DrawItem(unsigned char tile, unsigned char x, unsigned char y);
int DrawItemStats(unsigned char item,unsigned char x,unsigned char y,unsigned char bg_color);
int DrawLegend(void);
int DrawMenu(void);
int DrawMenuBorder(void);
int DrawMenuInventory(void);
int DrawRect(unsigned char x, unsigned char y, unsigned char width, unsigned char height, unsigned char color);
int DrawResources(void);
unsigned char DrawText(const unsigned char *msg, unsigned char x, unsigned char y, unsigned char fg_color, unsigned char bg_color);
int DrawTextF(const unsigned char *msg, unsigned char uc1, unsigned char uc2, unsigned char x, unsigned char y, unsigned char fg_color, unsigned char bg_color);
int DrawTextNL(const unsigned char *msg, unsigned char x, unsigned char y, unsigned char height, unsigned char fg_color, unsigned char bg_color);
int DrawTile(int tile, int x, int y);
int DrawTile1bpp(unsigned char tile, unsigned char x, unsigned char y, unsigned char color1, unsigned char color2);
int DrawTileFull(int tile, int x, int y);
unsigned char DrawUC(unsigned char num, unsigned char x, unsigned char y, unsigned char fg_color, unsigned char bg_color);
int main(void);
unsigned int rand(void);
unsigned char rand5050(void);
unsigned char rand8(unsigned char max);
int ResetGame(void);
int Setup(void);
int TickHandler(void);
int UpdateTarget(void);

//Second ROM
int CopyString(unsigned char *dest_ptr, const unsigned char *src_ptr);
int KeyHandlerGame(unsigned char key);
int KeyHandlerMenu(unsigned char key);
int LoadCrystals(void);
int LoadMonsters(void);
int LoadTiles(void);
int MakeMap(void);
int MazeHorizStripe(unsigned char value);
int RotateTile90(int dest, int src);

//http://www.retroprogramming.com/2017/07/xorshift-pseudorandom-numbers-in-z80.html
unsigned int rand(void)
{
	rand_val^=rand_val<<7;
	rand_val^=rand_val>>9;
	rand_val^=rand_val<<8;
	return rand_val;
}

unsigned char rand8(unsigned char max)
{
	return (unsigned char)(rand()%max);
}

unsigned char rand5050(void)
{
	return (unsigned char)(rand()&1);
}

int clrscr(unsigned char color)
{
	//unsigned char *gfx_ptr=RB2;
	//4,840,044
	register unsigned char *gfx_ptr=RB2;
	//3,562,131
	//unsigned int i;
	//3,562,131
	register unsigned int i;
	//2,087,633
	for (i=0;i<SCREEN_WIDTH*SCREEN_HEIGHT;i++) *gfx_ptr++=color;
	return 0;
}
		
unsigned char *CalcXY(int x, int y)
{
	return RB2+y*SCREEN_WIDTH+x;
}
		
int DrawTile1bpp(unsigned char tile, unsigned char x, unsigned char y, unsigned char color1, unsigned char color2)
{
	register unsigned char *gfx_ptr=CalcXY(x,y);
	register const unsigned char *tile_ptr=tiles[tile];
	register unsigned char bit_count, byte_count;
	register unsigned char row_count, t_height, t_width, t_pixel, edge_style;
	unsigned char t0,t1,t2,t3,trans_row,skip_pixel=false;
	byte_count=0;
	bit_count=0;
	t_width=tile_ptr[0];
	t_height=tile_ptr[1];
	row_count=t_height;
	edge_style=tile_ptr[2];
	tile_ptr+=3;//Point to pixel data
	
	//Set edge pixels 
	
	
	while(row_count)
	{
		if (byte_count==0)
		{
			t_pixel=*tile_ptr++;
			//DebugDec(t_pixel);
			//DebugText(" ");
			if (bit_count==0)
			{
				if (edge_style==0) trans_row=false;
				else 
				{
					if ((row_count==1)||(row_count==t_height))
					{
						t0=0;
						t1=t_width-1;
						if (edge_style==2)
						{
							t2=1;
							t3=t_width-2;
						}
						else
						{
							t2=255;
							t3=255;
						}
						trans_row=true;
					}
					else if (((row_count==2)||(row_count==t_height-1))&&(edge_style==2))
					{
						t0=0;
						t1=t_width-1;
						t2=255;
						t3=255;
						trans_row=true;
					}
					else trans_row=false;
				}
			}
		}
		
		if (trans_row==true)
		{
			if ((t0==bit_count)||
				(t1==bit_count)||
				(t2==bit_count)||
				(t3==bit_count)) skip_pixel=true;
			else skip_pixel=false;
		} else skip_pixel=false;
		
		if (skip_pixel==false)
		{
			if (t_pixel&0x80)
			{
				if (color1!=COLOR_TRANSPARENT) *gfx_ptr=color1;
				//DebugText("0");
			}
			else
			{
				if (color2!=COLOR_TRANSPARENT)
				{
					*gfx_ptr=color2;
				}
				//DebugText("1");
			}
		}
		*gfx_ptr++;
		t_pixel<<=1;
		
		bit_count++;
		if (bit_count==t_width)
		{
			bit_count=0;
			byte_count=0;
			row_count--;
			gfx_ptr+=SCREEN_WIDTH-t_width;
			//DebugNL();
			//BRK
		}
		else if (byte_count==7) byte_count=0;
		else byte_count++;
	}
	return 0;
}

int DrawTileFull(int tile, int x, int y)
{
	register unsigned char *gfx_ptr=CalcXY(x,y);
	register const unsigned char *tile_ptr=tiles[tile];
	register unsigned char t_count, t_color, i;
	register unsigned char row_count, t_width;
	t_width=tile_ptr[0];
	row_count=tile_ptr[1];
	tile_ptr+=2;//Point to pixel data
	while(row_count)
	{
		t_count=*tile_ptr++;
		if (t_count==0)
		{
			row_count--;
			gfx_ptr+=SCREEN_WIDTH-t_width;
		}
		else
		{
			t_color=*tile_ptr++;
			if (t_color==64)
			{
				gfx_ptr+=t_count;
			}
			else
			{
				for (i=0;i<t_count;i++)
				{
					*gfx_ptr++=t_color;
				}
			}
		}
	}
	return 0;
}

int DrawTile(int tile, int x, int y)
{
	unsigned char color1,color2;
	switch(tile)
	{
		case Hero_target:
			color1=COLOR_GREEN;
			color2=COLOR_TRANSPARENT;
			break;
		case Menu_item_selector:
		case Menu_skill_selector:
			color1=COLOR_TRANSPARENT;
			color2=COLOR_GREEN;
			break;
		case Exit:
			color1=COLOR_BLACK;
			color2=COLOR_BLUE;
			break;
		case Res_HP_Heal:
		case Res_HP_Upgrade:
			color1=MENU_RES_HP_COLOR1;
			color2=MENU_RES_HP_COLOR2;
			break;
		case Res_Batt_Heal:
		case Res_Batt_Upgrade:
			color1=MENU_RES_BATT_COLOR1;
			color2=MENU_RES_BATT_COLOR2;
			break;
		case Res_Exp_Upgrade:
		case Res_Dmg_Upgrade:
			color1=MENU_RES_EXP_COLOR1;
			color2=MENU_RES_EXP_COLOR2;
			break;
		default:
			DrawTileFull(tile,x,y);
			return 0;
	}
	DrawTile1bpp(tile,x,y,color1,color2);	
	return 0;
}

int CopyTile(int dest, int src)
{
	register unsigned char *dest_ptr=tiles[dest];
	register unsigned char *src_ptr=tiles[src];
	register unsigned char row_count=src_ptr[1];
	register unsigned char t_count;
	*dest_ptr++=*src_ptr++;		//Copy width
	*dest_ptr++=*src_ptr++;		//Copy height
	while(row_count)
	{
		t_count=*src_ptr++;
		*dest_ptr++=t_count;
		if (t_count==0) row_count--;
		else  *dest_ptr++=*src_ptr++;
	}
	return 0;
}

int CopyTile1bpp(int dest, int src)
{
	register unsigned char *dest_ptr=tiles[dest];
	register unsigned char *src_ptr=tiles[src];
	register unsigned char row_width,row_height;
	unsigned int i;
	
	row_width=src_ptr[0]/8;
	if (src_ptr[0]-row_width*8!=0) row_width++;
	row_height=src_ptr[1];
	for (i=0;i<row_width*row_height+3;i++) *dest_ptr++=*src_ptr++;
	return 0;
}


int ColorTile(int tile, int color_index)
{
	register unsigned char *tile_ptr=tiles[tile];
	register unsigned char row_count;
	register unsigned char t_count, t_color;
	register const unsigned char *color_table;
	register unsigned char c_size;
	register unsigned char i;
	unsigned char found;
	
	switch(tile)
	{
		case Robot_left:
		case Robot_right:
		case Menu_head_temp:
		case Menu_body_temp:
		case Menu_legs_temp:
		case Menu_gun_temp:
		case Menu_tool_temp:
			//DebugText("item_colors\\n");
			color_table=item_colors[color_index];
			break;
		default:
			color_table=tile_colors[color_index];
			break;
	}
	row_count=tile_ptr[1];
	c_size=color_table[1]*2;  //Size of color table * 2 since pairs
	
	tile_ptr+=2;//Point to pixel data
	while(row_count)
	{
		t_count=*tile_ptr++;
		if (t_count==0)
		{
			row_count--;
		}
		else
		{
			t_color=*tile_ptr;
			if (t_color>COLOR_TRANSPARENT)	//If under 64 wich is transparent, then dont look up since valid color
			{
				found=false;
				for (i=0;i<c_size;i+=2)
				{
					if (t_color==color_table[i+2])		//+2 to skip header
					{
						*tile_ptr=color_table[i+3];
						found=true;
						break;
					}
				}
				if (found==false)
				{
					//DebugText("Value not found: ");
					//DebugDec(t_color);
					//DebugNL();
				}
			}
			tile_ptr++;
		}
	}
	return 0;
}

unsigned char CheckForMonster(unsigned char x, unsigned char y)
{
	if (monster_map[y][x]!=NO_MONSTER)
		if (monster_list[monster_map[y][x]].alive==true)
			return true;
	return false;
}

unsigned char CheckForCrystal(unsigned char x, unsigned char y)
{
	if (crystal_map[y][x]!=NO_CRYSTAL)
		if (crystal_list[crystal_map[y][x]].active==true)
			return true;
	return false;
}

int UpdateTarget(void)
{
	unsigned char tx=display_X+hero_X,ty=display_Y+hero_Y;
	hero_target_type=target_none;
	if (hero_target_direction==DIRECTION_UP)
	{
		if (hero_Y==0) return 0;
		ty--;
	}
	else if (hero_target_direction==DIRECTION_DOWN)
	{
		if (hero_Y==FRAME_HEIGHT-1) return 0;
		ty++;
	}
	else if (hero_target_direction==DIRECTION_LEFT)
	{
		if (hero_X==0) return 0;
		tx--;
	}
	else if (hero_target_direction==DIRECTION_RIGHT)
	{
		if (hero_Y==FRAME_WIDTH-1) return 0;
		tx++;
	}
	
	hero_target_index=tx;
	hero_target_index2=ty;
	if (map_data[ty][tx]==MAP_ROCK)
	{
		hero_target_type=target_rock;
		//hero_target_index=tx;
		//hero_target_index2=ty;
	}
	else if (map_data[ty][tx]==MAP_EXIT)
	{
		hero_target_type=target_exit;
		//hero_target_index=tx;
		//hero_target_index2=ty;
	}
	else if (CheckForMonster(tx,ty)==true)
	{
		hero_target_type=target_monster;
		hero_target_index=monster_map[ty][tx];
	}
	else if (CheckForCrystal(tx,ty)==true)
	{
		hero_target_type=target_crystal;
		hero_target_index=crystal_map[ty][tx];
	}
	return 0;
}

int DrawRect(unsigned char x, unsigned char y, unsigned char width, unsigned char height, unsigned char color)
{
	register unsigned char *gfx_ptr=CalcXY(x,y);
	register unsigned char i,j;
	for (i=0;i<height;i++)
	{
		for (j=0;j<width;j++)
		{
			*gfx_ptr++=color;
		}
		gfx_ptr+=SCREEN_WIDTH-width;
	}
	return 0;
}

int DrawBorder(unsigned char x, unsigned char y, unsigned int width, unsigned char height, unsigned char color)
{
	register unsigned char *gfx_ptr=CalcXY(x,y);
	register unsigned int i;
	width--;
	height--;	//lines should overlap by one pixel, otherwise bottom line is drawn one pixel too low
	
	for (i=0;i<width;i++)
		*gfx_ptr++=color;
	
	for (i=0;i<height;i++)
	{
		*gfx_ptr=color;
		gfx_ptr+=SCREEN_WIDTH;
	}
	for (i=0;i<width;i++)
		*gfx_ptr--=color;
	for (i=0;i<height;i++)
	{
		*gfx_ptr=color;
		gfx_ptr-=SCREEN_WIDTH;
	}
	return 0;
}

unsigned char DrawText(const unsigned char *msg, unsigned char x, unsigned char y, unsigned char fg_color, unsigned char bg_color)
{
	register unsigned char *gfx_ptr=CalcXY(x,y);
	register const unsigned char *msg_ptr=msg;
	register const unsigned char *chartable_ptr;
	register unsigned char char_data;
	unsigned char msg_char, nx=x;
	register unsigned char i,j;
	msg_char=*msg_ptr++;
	while(msg_char)
	{
		//Space(32) is first character in table
		chartable_ptr=chartable+(msg_char-32)*TEXT_LINE_HEIGHT;
		for (i=0;i<TEXT_LINE_HEIGHT;i++)
		{
			char_data=*chartable_ptr++;
			for (j=0;j<TEXT_CHAR_WIDTH;j++)
			{
				if (char_data&1) *gfx_ptr++=fg_color;
				else *gfx_ptr++=bg_color;
				char_data>>=1;
			}
			gfx_ptr+=SCREEN_WIDTH-TEXT_CHAR_WIDTH;
		}
		gfx_ptr-=SCREEN_WIDTH*TEXT_LINE_HEIGHT-TEXT_CHAR_WIDTH;
		nx+=TEXT_CHAR_WIDTH;
		msg_char=*msg_ptr++;
	}
	
	return nx;
}

unsigned char DrawUC(unsigned char num, unsigned char x, unsigned char y, unsigned char fg_color, unsigned char bg_color)
{
	unsigned char divisor=100;
	unsigned char msg[4];
	unsigned char msg_index=0;
	unsigned char total=0;
	unsigned char nx=x;
	while(divisor>0)
	{
		while(num>=divisor)
		{
			num-=divisor;
			total++;
		}
		if ((total>0)||(msg_index>0))
		{
			msg[msg_index++]='0'+total;
			nx+=TEXT_CHAR_WIDTH;
		}
		total=0;
		divisor/=10;
	}
	if (msg_index==0)
	{
		msg[msg_index++]='0';
		nx+=TEXT_CHAR_WIDTH;
	}
	msg[msg_index]=0;
	DrawText(msg,x,y,fg_color,bg_color);
	
	return nx;
}

int DrawTextF(const unsigned char *msg, unsigned char uc1, unsigned char uc2, unsigned char x, unsigned char y, unsigned char fg_color, unsigned char bg_color)
{
	unsigned char temp_str[2]="A";
	while (*msg)
	{
		if (*msg=='$') 
		{
			x=DrawUC(uc1,x,y,fg_color,bg_color);
			uc1=uc2;
		}
		else
		{
			temp_str[0]=*msg;
			x=DrawText(temp_str,x,y,fg_color,bg_color);
		}
		msg++;
	}
	return 0;
}

int DrawTextNL(const unsigned char *msg, unsigned char x, unsigned char y, unsigned char height, unsigned char fg_color, unsigned char bg_color)
{
	unsigned char top=y,left=x;
	unsigned char temp_msg[]="A";
	while (*msg)
	{
		if (*msg=='$')
		{
			top+=height;
			left=x;
		}
		else
		{
			temp_msg[0]=*msg;
			left=DrawText(temp_msg,left,top,fg_color,bg_color);
		}
		msg++;
	}
	return 0;
}

unsigned char DrawBar(unsigned char x, unsigned char y, unsigned char val, unsigned char max, unsigned char fg_color, unsigned char bg_color)
{
	register unsigned char width;
	width=BAR_WIDTH*val/max;
	DrawRect(x,y,width,BAR_HEIGHT,fg_color);
	DrawRect(x+width,y,BAR_WIDTH-width,BAR_HEIGHT,bg_color);
	return 0;
}

int DrawLegend(void)
{
	//const unsigned char target_colors[]={COLOR_ROCK, COLOR_MONSTER, COLOR_EXIT};
	register unsigned char *gfx_ptr;
	register unsigned char *map_ptr=&map_data[0][0];
	register unsigned char i,j;
	register unsigned char map_color;
	
	//Draw background
	DrawRect(LEGEND_LEFT,0,LEGEND_WIDTH,LEGEND_HEIGHT,COLOR_LEGEND_BG);
	
	//Draw stats
	//i=DrawText("HP:",LEGEND_LEFT+LEGEND_STATS_LEFT,LEGEND_HP_TOP,COLOR_WHITE,COLOR_LEGEND_BG);
	//i=DrawUC(hero_HP,i,LEGEND_HP_TOP,COLOR_WHITE,COLOR_LEGEND_BG);
	//i=DrawText("/",i,LEGEND_HP_TOP,COLOR_WHITE,COLOR_LEGEND_BG);
	//i=DrawUC(hero_HP_Max,i,LEGEND_HP_TOP,COLOR_WHITE,COLOR_LEGEND_BG);
	DrawTextF("HP:$/$",hero_HP,hero_HP_Max,LEGEND_LEFT+LEGEND_STATS_LEFT,LEGEND_HP_TOP,COLOR_WHITE,COLOR_LEGEND_BG);
	DrawBar(LEGEND_LEFT+LEGEND_STATS_LEFT,LEGEND_HP_BAR_TOP,hero_HP,hero_HP_Max,COLOR_RED,COLOR_DARK_RED);
	
	//i=DrawText("Batt:",LEGEND_LEFT+LEGEND_STATS_LEFT,LEGEND_BATT_TOP,COLOR_WHITE,COLOR_LEGEND_BG);
	//i=DrawUC(hero_Batt,i,LEGEND_BATT_TOP,COLOR_WHITE,COLOR_LEGEND_BG);
	//i=DrawText("/",i,LEGEND_BATT_TOP,COLOR_WHITE,COLOR_LEGEND_BG);
	//i=DrawUC(hero_Batt_Max,i,LEGEND_BATT_TOP,COLOR_WHITE,COLOR_LEGEND_BG);
	DrawTextF("Batt:$/$",hero_Batt,hero_Batt_Max,LEGEND_LEFT+LEGEND_STATS_LEFT,LEGEND_BATT_TOP,COLOR_WHITE,COLOR_LEGEND_BG);
	DrawBar(LEGEND_LEFT+LEGEND_STATS_LEFT,LEGEND_BATT_BAR_TOP,hero_Batt,hero_Batt_Max,COLOR_BLUE,COLOR_DARK_BLUE);
	
	//i=DrawText("Exp:",LEGEND_LEFT+LEGEND_STATS_LEFT,LEGEND_EXP_TOP,COLOR_WHITE,COLOR_LEGEND_BG);
	//i=DrawUC(hero_Exp,i,LEGEND_EXP_TOP,COLOR_WHITE,COLOR_LEGEND_BG);
	//i=DrawText("/",i,LEGEND_EXP_TOP,COLOR_WHITE,COLOR_LEGEND_BG);
	//i=DrawUC(hero_Exp_Max,i,LEGEND_EXP_TOP,COLOR_WHITE,COLOR_LEGEND_BG);
	DrawTextF("Exp:$/$",hero_Exp,hero_Exp_Max,LEGEND_LEFT+LEGEND_STATS_LEFT,LEGEND_EXP_TOP,COLOR_WHITE,COLOR_LEGEND_BG);
	DrawBar(LEGEND_LEFT+LEGEND_STATS_LEFT,LEGEND_EXP_BAR_TOP,hero_Exp,hero_Exp_Max,COLOR_GREEN,COLOR_DARK_GREEN);
	
	//Only 30 bytes larger but much clearer
	switch(hero_target_type)
	{
		case target_rock:
			DrawText("Rock",LEGEND_LEFT+LEGEND_STATS_LEFT,LEGEND_TARGET_TOP,COLOR_ROCK,COLOR_LEGEND_BG);
			break;
		case target_exit:
			DrawText("Exit",LEGEND_LEFT+LEGEND_STATS_LEFT,LEGEND_TARGET_TOP,COLOR_EXIT,COLOR_LEGEND_BG);
			break;
		case target_monster:
			DrawText("Evil robot",LEGEND_LEFT+LEGEND_STATS_LEFT,LEGEND_TARGET_TOP,COLOR_MONSTER,COLOR_LEGEND_BG);
			break;
		case target_crystal:
			/*
			switch (crystal_list[hero_target_index].color)
			{
				case CRYSTAL_RED_TYPE:
					i=COLOR_CRYSTAL_RED1;
					break;
				case CRYSTAL_BLUE_TYPE:
					i=COLOR_CRYSTAL_BLUE1;
					break;
				case CRYSTAL_YELLOW_TYPE:
					i=COLOR_CRYSTAL_YELLOW1;
					break;
			}
			*/
			i=crystal_colors[crystal_list[hero_target_index].color];
			DrawText("Crystal",LEGEND_LEFT+LEGEND_STATS_LEFT,LEGEND_TARGET_TOP,i,COLOR_LEGEND_BG);
			break;
		case target_none:
		default:
			break;
	}
	//30 bytes smaller
	/*
	if (hero_target_type==target_crystal)
	{
		switch (crystal_list[hero_target_index].color)
		{
			case CRYSTAL_RED_TYPE:
				i=COLOR_CRYSTAL_RED1;
				break;
			case CRYSTAL_BLUE_TYPE:
				i=COLOR_CRYSTAL_BLUE1;
				break;
			case CRYSTAL_YELLOW_TYPE:
				i=COLOR_CRYSTAL_YELLOW1;
				break;
		}
	}
	else if (hero_target_type!=target_none) i=target_colors[hero_target_type];
	DrawText(str_target_types[hero_target_type],LEGEND_LEFT+LEGEND_STATS_LEFT,LEGEND_TARGET_TOP,i,COLOR_LEGEND_BG);
	*/
	
	//Draw progress bar if needed
	if (hero_activity==true)			
		DrawBar(LEGEND_LEFT+LEGEND_STATS_LEFT,LEGEND_TARGET_BAR_TOP,hero_activity_ticks,hero_activity_ticks_max,COLOR_PURPLE,COLOR_DARK_PURPLE);		
	
	//Draw mini map
	gfx_ptr=CalcXY(LEGEND_LEFT+LEGEND_MAZE_LEFT,LEGEND_MAZE_TOP);
	for (i=0;i<MAP_HEIGHT;i++)
	{
		for (j=0;j<MAP_WIDTH;j++)
		{
			if (CheckForMonster(j,i)==true)
				map_color=COLOR_RED;
			else if (CheckForCrystal(j,i)==true)
				map_color=COLOR_YELLOW;
			else
			{
				switch(*map_ptr)
				{
					case MAP_BLANK:
					case MAP_BLANK_90:
					case MAP_BLANK_180:
					case MAP_BLANK_270:
						map_color=COLOR_DIRT;
						break;
					case MAP_ROCK:
						map_color=COLOR_ROCK;
						break;
					case MAP_LAVA:
						map_color=COLOR_LAVA;
						break;
					case MAP_EXIT:
						map_color=COLOR_EXIT;
						break;
					default:
						map_color=COLOR_WHITE;
				}
			}
			*gfx_ptr=map_color;
			*(gfx_ptr+1)=map_color;
			*(gfx_ptr+SCREEN_WIDTH)=map_color;
			*(gfx_ptr+SCREEN_WIDTH+1)=map_color;
			gfx_ptr+=2;
			map_ptr++;
		}
		gfx_ptr+=(SCREEN_WIDTH-MAP_WIDTH)*2;
	}
	
	//Draw green rectangle on minimap
	gfx_ptr=CalcXY(display_X*2+LEGEND_LEFT+LEGEND_MAZE_LEFT,display_Y*2+LEGEND_MAZE_TOP);
	for (i=0;i<LEGEND_BOX_WIDTH;i++)
	{
		*gfx_ptr=COLOR_GREEN;
		*(gfx_ptr+(LEGEND_BOX_HEIGHT-1)*SCREEN_WIDTH)=COLOR_GREEN;
		gfx_ptr++;
	}
	gfx_ptr=CalcXY(display_X*2+LEGEND_LEFT+LEGEND_MAZE_LEFT,display_Y*2+LEGEND_MAZE_TOP);
	for (i=0;i<LEGEND_BOX_HEIGHT;i++)
	{
		*gfx_ptr=COLOR_GREEN;
		*(gfx_ptr+LEGEND_BOX_WIDTH-1)=COLOR_GREEN;
		gfx_ptr+=SCREEN_WIDTH;
	}
	return 0;
}

int DrawFrame(void)
{
	//Draw map tiles
	unsigned char i,j;
	for (i=0;i<FRAME_HEIGHT;i++)
	{
		for (j=0;j<FRAME_WIDTH;j++)
		{	
			//Draw tiles
			switch(map_data[i+display_Y][j+display_X])
			{
				case MAP_BLANK:
					DrawTile(Ground_0,j*32,i*32);
					break;
				case MAP_BLANK_90:
					DrawTile(Ground_90,j*32,i*32);
					break;
				case MAP_BLANK_180:
					DrawTile(Ground_180,j*32,i*32);
					break;
				case MAP_BLANK_270:
					DrawTile(Ground_270,j*32,i*32);
					break;
				case MAP_ROCK:
					DrawTile(Rock,j*32,i*32);
					break;
				case MAP_LAVA:
					DrawTile(Lava,j*32,i*32);
					break;
				case MAP_EXIT:
					DrawTile(Exit,j*32,i*32);
					break;
			}
			
			//Draw monsters
			if (monster_map[i+display_Y][j+display_X]!=NO_MONSTER)
			{
				if (monster_list[monster_map[i+display_Y][j+display_X]].alive==true) DrawTile(Monster,j*32,i*32);
				else DrawTile(Monster_dead,j*32,i*32);
			}
			
			//Draw crystals
			if (crystal_map[i+display_Y][j+display_X]!=NO_CRYSTAL)
			{
				if (crystal_list[crystal_map[i+display_Y][j+display_X]].active==true)
				{
					if (crystal_list[crystal_map[i+display_Y][j+display_X]].color==CRYSTAL_RED_TYPE) DrawTile(Crystal_red,j*32,i*32);
					else if (crystal_list[crystal_map[i+display_Y][j+display_X]].color==CRYSTAL_BLUE_TYPE) DrawTile(Crystal_blue,j*32,i*32);
					else if (crystal_list[crystal_map[i+display_Y][j+display_X]].color==CRYSTAL_YELLOW_TYPE) DrawTile(Crystal_yellow,j*32,i*32);
				}
				else DrawTile(Crystal_base,j*32,i*32);
			}
			
		}
	}
	//Draw hero
	if (hero_facing==DIRECTION_LEFT) DrawTile(Robot_left,hero_X*32,hero_Y*32);
	else if (hero_facing==DIRECTION_RIGHT) DrawTile(Robot_right,hero_X*32,hero_Y*32);
	
	//Draw target
	if ((hero_target_direction==DIRECTION_UP)&&(hero_Y!=0)) DrawTile(Hero_target,hero_X*32,(hero_Y-1)*32);
	else if ((hero_target_direction==DIRECTION_DOWN)&&(hero_Y!=FRAME_HEIGHT-1)) DrawTile(Hero_target,hero_X*32,(hero_Y+1)*32);
	else if ((hero_target_direction==DIRECTION_LEFT)&&(hero_X!=0)) DrawTile(Hero_target,(hero_X-1)*32,hero_Y*32);
	else if ((hero_target_direction==DIRECTION_RIGHT)&&(hero_X!=FRAME_WIDTH-1)) DrawTile(Hero_target,(hero_X+1)*32,(hero_Y)*32);
	
	return 0;
}

int DrawMenuBorder(void)
{
	unsigned char i;
	DrawRect(1,1,SCREEN_WIDTH-2,MENU_BORDER_SIZE+TEXT_LINE_HEIGHT,COLOR_MENU_BORDER);
	DrawRect(1,SCREEN_HEIGHT-MENU_BORDER_SIZE,SCREEN_WIDTH-2,MENU_BORDER_SIZE-1,COLOR_MENU_BORDER);
	DrawRect(1,MENU_BORDER_SIZE+TEXT_LINE_HEIGHT+1,MENU_BORDER_SIZE-1,SCREEN_HEIGHT-MENU_BORDER_SIZE*2-TEXT_LINE_HEIGHT-1,COLOR_MENU_BORDER);
	DrawRect(SCREEN_WIDTH-MENU_BORDER_SIZE,MENU_BORDER_SIZE+TEXT_LINE_HEIGHT+1,MENU_BORDER_SIZE-1,SCREEN_HEIGHT-MENU_BORDER_SIZE*2-TEXT_LINE_HEIGHT-1,COLOR_MENU_BORDER);
	DrawBorder(0,0,SCREEN_WIDTH,SCREEN_HEIGHT,COLOR_BLACK);
	DrawBorder(MENU_BORDER_SIZE,MENU_BORDER_SIZE,SCREEN_WIDTH-MENU_BORDER_SIZE*2,SCREEN_HEIGHT-MENU_BORDER_SIZE*2,COLOR_BLACK);
	
	for (i=1;i<MENU_BORDER_SIZE;i++)
	{
		*CalcXY(i,i)=COLOR_BLACK;
		*CalcXY(SCREEN_WIDTH-i-1,i)=COLOR_BLACK;
		*CalcXY(SCREEN_WIDTH-i-1,SCREEN_HEIGHT-i-1)=COLOR_BLACK;
		*CalcXY(i,SCREEN_HEIGHT-i-1)=COLOR_BLACK;
	}
	DrawText("[C]haracter",MENU_CHAR_LEFT,MENU_TITLE_TOP,COLOR_WHITE,COLOR_MENU_CHAR);
	DrawText("S[k]ills",MENU_SKILL_LEFT,MENU_TITLE_TOP,COLOR_WHITE,COLOR_MENU_SKILLS);	
	DrawText("[R]esources",MENU_RES_LEFT,MENU_TITLE_TOP,COLOR_WHITE,COLOR_MENU_RESOURCES);
	DrawRect(MENU_SKILL_LEFT-1,MENU_TITLE_TOP,1,TEXT_LINE_HEIGHT,COLOR_MENU_SKILLS);
	return 0;
}

int DrawItem(unsigned char tile, unsigned char x, unsigned char y)
{
	const unsigned char tile_dest[]={Menu_head_temp,Menu_body_temp,Menu_legs_temp,Menu_gun_temp,Menu_tool_temp};
	const unsigned char tile_src[]={Menu_head,Menu_body,Menu_legs,Menu_gun,Menu_tool};
	unsigned char temp_index;
	temp_index=item_stats[tile][type];
	CopyTile(tile_dest[temp_index],tile_src[temp_index]);
	ColorTile(tile_dest[temp_index],tile);
	DrawTile(tile_dest[temp_index],x,y);	
	return 0;
}

int DrawMenuInventory(void)
{
	unsigned char i,j,index=0;
	//Two boxes for stats
	DrawRect(MENU_CHAR_BOX_LEFT,MENU_CHAR_BOX1_TOP,MENU_CHAR_BOX_WIDTH,MENU_CHAR_BOX_HEIGHT,MENU_CHAR_BOX_COLOR);
	DrawRect(MENU_CHAR_BOX_LEFT,MENU_CHAR_BOX2_TOP,MENU_CHAR_BOX_WIDTH,MENU_CHAR_BOX_HEIGHT,MENU_CHAR_BOX_COLOR);
	
	for (i=0;i<MENU_CHAR_BOX_Y_COUNT;i++)
	{
		for (j=0;j<MENU_CHAR_BOX_X_COUNT;j++)
		{
			DrawTile(Menu_item_slot,MENU_CHAR_GRID_LEFT+j*16,MENU_CHAR_GRID_TOP+i*16);
			if (hero_inventory[index]!=item_none)
			{
				if (item_stats[hero_inventory[index]][type]!=stat_Res_Only)
				{
					DrawItem(hero_inventory[index],MENU_CHAR_GRID_LEFT+j*16,MENU_CHAR_GRID_TOP+i*16);
					if ((menu_char_x==j)&&(menu_char_y==i))
					{
						DrawItemStats(hero_equipped[item_stats[hero_inventory[index]][type]],MENU_CHAR_BOX_LEFT,MENU_CHAR_BOX1_TOP,MENU_CHAR_BOX_COLOR);
						DrawItemStats(hero_inventory[index],MENU_CHAR_BOX_LEFT,MENU_CHAR_BOX2_TOP,MENU_CHAR_BOX_COLOR);
						DrawTile(Menu_item_selector,MENU_CHAR_BOX_LEFT,MENU_CHAR_BOX2_TOP);
					}
				}
			}
			index++;
		}
	}
	DrawRect(MENU_CHAR_GRID_LEFT,MENU_CHAR_GRID_LINE_TOP,MENU_CHAR_GRID_LINE_WIDTH,1,COLOR_BLACK);
	DrawRect(MENU_CHAR_GRID_LINE_LEFT,MENU_CHAR_GRID_TOP,1,MENU_CHAR_GRID_LINE_HEIGHT,COLOR_BLACK);
	DrawTile(Menu_item_selector,MENU_CHAR_GRID_LEFT+menu_char_x*16,MENU_CHAR_GRID_TOP+menu_char_y*16);
	return 0;
}

int DrawItemStats(unsigned char item,unsigned char x,unsigned char y,unsigned char bg_color)
{
	unsigned char stat_y=y+MENU_CHAR_BOX_STAT_OFFSET_Y;
	unsigned char i;
	//unsigned char i, left;
	//unsigned char stat_ID, stat_val, fg_color_other;
	//const unsigned char *str_ptr;
	//unsigned char temp_str[]="A";
	unsigned char stat_ID, fg_color;
	
	if (item_stats[item][type]==stat_Res_Only)
	{
		DrawTextNL(res_descriptions[item_stats[item][description]],x + 2,y + 2, TEXT_SPACING_Y, COLOR_WHITE, bg_color);
	}
	else
	{
		DrawItem(item,x,y);
		DrawText(item_titles[item],x+MENU_CHAR_BOX_TITLE_OFFSET_X,y+MENU_CHAR_BOX_TITLE_OFFSET_Y,COLOR_BLACK, title_colors[item_stats[item][quality]]);
		
		for (i=0;i<item_stats[item][stat_count];i++)
		{
			//Adds 1.5k! way too big
			/*
			stat_ID=item_stats[item][stat_begin+i*2];
			stat_val=item_stats[item][stat_begin+i*2+1];
			
			if (stat_ID==stat_Batt)
			{
				left=DrawText("+",x+MENU_CHAR_BOX_STAT_OFFSET_X,stat_y,COLOR_BATT,bg_color);
				left=DrawUC(stat_val,left,stat_y,COLOR_BATT,bg_color);
				DrawText(" Batt",left,stat_y,COLOR_BATT,bg_color);
			}
			else if (stat_ID==stat_Crit)
			{
				if (bg_color == COLOR_CRIT) fg_color_other=COLOR_RED;
				else fg_color_other=COLOR_CRIT;
				left=DrawText("+",x+MENU_CHAR_BOX_STAT_OFFSET_X,stat_y,fg_color_other,bg_color);
				left=DrawUC(stat_val,left,stat_y,fg_color_other,bg_color);
				DrawText("% Crit",left,stat_y,fg_color_other,bg_color);
			}
			else if (stat_ID==stat_Drill)
			{
				left=DrawText("-",x+MENU_CHAR_BOX_STAT_OFFSET_X,stat_y,COLOR_DRILL,bg_color);
				left=DrawUC(stat_val,left,stat_y,COLOR_DRILL,bg_color);
				DrawText("s Drill",left,stat_y,COLOR_DRILL,bg_color);
			}
			else if (stat_ID==stat_Batt_Recharge)
			{
				left=DrawText("+",x+MENU_CHAR_BOX_STAT_OFFSET_X,stat_y,COLOR_BATT,bg_color);
				left=DrawUC(stat_val,left,stat_y,COLOR_BATT,bg_color);
				DrawText("/s Batt",left,stat_y,COLOR_BATT,bg_color);
			}
			else if (stat_ID==stat_HP)
			{
				left=DrawText("+",x+MENU_CHAR_BOX_STAT_OFFSET_X,stat_y,COLOR_HP,bg_color);
				left=DrawUC(stat_val,left,stat_y,COLOR_HP,bg_color);
				DrawText(" HP",left,stat_y,COLOR_HP,bg_color);
			}
			else if (stat_ID==stat_Dmg)
			{
				if (bg_color == COLOR_DMG) fg_color_other=COLOR_RED;
				else fg_color_other=COLOR_DMG;
				left=DrawText("+",x+MENU_CHAR_BOX_STAT_OFFSET_X,stat_y,fg_color_other,bg_color);
				left=DrawUC(stat_val,left,stat_y,fg_color_other,bg_color);
				DrawText(" Dmg",left,stat_y,fg_color_other,bg_color);
			}
			else if (stat_ID==stat_HP_Recharge)
			{
				left=DrawText("+",x+MENU_CHAR_BOX_STAT_OFFSET_X,stat_y,COLOR_HP,bg_color);
				left=DrawUC(stat_val,left,stat_y,COLOR_HP,bg_color);
				DrawText("/s HP",left,stat_y,COLOR_HP,bg_color);
			}
			else if (stat_ID==stat_Lava)
			{
				left=DrawText("-",x+MENU_CHAR_BOX_STAT_OFFSET_X,stat_y,COLOR_LAVA,bg_color);
				left=DrawUC(stat_val,left,stat_y,COLOR_LAVA,bg_color);
				DrawText("% Lava",left,stat_y,COLOR_LAVA,bg_color);
			}
			else if (stat_ID==stat_LavaHeals)
			{
				DrawText("Lava Heals",x+MENU_CHAR_BOX_STAT_OFFSET_X,stat_y,COLOR_HP,bg_color);
			}
			else if (stat_ID==stat_Mine)
			{
				left=DrawText("-",x+MENU_CHAR_BOX_STAT_OFFSET_X,stat_y,COLOR_MINE,bg_color);
				left=DrawUC(stat_val,left,stat_y,COLOR_MINE,bg_color);
				DrawText("s Mine",left,stat_y,COLOR_MINE,bg_color);
			}
			else if (stat_ID==stat_AttackCost50)
			{
				if (bg_color == COLOR_DMG) fg_color_other=COLOR_RED;
				else fg_color_other=COLOR_DMG;
				DrawText("-50% Cost",x+MENU_CHAR_BOX_STAT_OFFSET_X,stat_y,fg_color_other,bg_color);
			}
			else if (stat_ID==stat_MineCost50)
			{
				DrawText("-50% Cost",x+MENU_CHAR_BOX_STAT_OFFSET_X,stat_y,COLOR_MINE,bg_color);
			}
			else if (stat_ID==stat_Mine1s)
			{
				DrawText("1s Mine",x+MENU_CHAR_BOX_STAT_OFFSET_X,stat_y,COLOR_MINE,bg_color);
			}
			else if (stat_ID==stat_Drill1s)
			{
				DrawText("1s Drill",x+MENU_CHAR_BOX_STAT_OFFSET_X,stat_y,COLOR_DRILL,bg_color);
			}*/
			
			//Only ~500 bytes!
			/*
			left=x+MENU_CHAR_BOX_STAT_OFFSET_X;
			stat_ID=item_stats[item][stat_begin+i*2];
			str_ptr=stat_descriptions[stat_ID];
			fg_color=stat_description_colors[stat_ID];
			if (fg_color==bg_color) fg_color=COLOR_RED;	//Only happens if dark red on dark red
			while (*str_ptr)
			{
				if (*str_ptr=='$') left=DrawUC(item_stats[item][stat_begin+i*2+1],left,stat_y,fg_color,bg_color);
				else
				{
					temp_str[0]=*str_ptr;
					left=DrawText(temp_str,left,stat_y,fg_color,bg_color);
				}
				str_ptr++;
			}
			*/
			
			//Even smaller
			stat_ID=item_stats[item][stat_begin+i*2];
			fg_color=stat_description_colors[stat_ID];
			if (fg_color==bg_color) fg_color=COLOR_RED;	//Only happens if dark red on dark red
			DrawTextF(stat_descriptions[stat_ID],item_stats[item][stat_begin+i*2+1],0,x+MENU_CHAR_BOX_STAT_OFFSET_X,stat_y,fg_color,bg_color);
			stat_y += 10;
		}
	}
	return 0;
}

int DrawSkills()
{
	const unsigned char color1[]={4,16,1};
	const unsigned char color2[]={8,53,23};
	const unsigned char tops[]={MENU_SKILL_BOX1_TOP,MENU_SKILL_BOX2_TOP,MENU_SKILL_BOX3_TOP};
	const unsigned char colors[]={MENU_SKILL_BOX1_COLOR,MENU_SKILL_BOX2_COLOR,MENU_SKILL_BOX3_COLOR};
	unsigned char i,j,index=Skill0;
	const unsigned char *str_ptr;
	//unsigned char left, top;
	unsigned char skill_index;
	unsigned char temp_msg[]="A";
	
	//Less flicker to do one at a time
	//DrawRect(MENU_SKILL_BOX_LEFT,MENU_SKILL_BOX1_TOP,MENU_SKILL_BOX_WIDTH,MENU_SKILL_BOX_HEIGHT,MENU_SKILL_BOX1_COLOR);
	//DrawRect(MENU_SKILL_BOX_LEFT,MENU_SKILL_BOX2_TOP,MENU_SKILL_BOX_WIDTH,MENU_SKILL_BOX_HEIGHT,MENU_SKILL_BOX2_COLOR);
	//DrawRect(MENU_SKILL_BOX_LEFT,MENU_SKILL_BOX3_TOP,MENU_SKILL_BOX_WIDTH,MENU_SKILL_BOX_HEIGHT,MENU_SKILL_BOX3_COLOR);
	
	//Put this first so icon drawing code can also output "[Enter]Upgrade"
	DrawRect(MENU_SKILL_DBOX_LEFT, MENU_SKILL_DBOX_TOP, MENU_SKILL_DBOX_WIDTH, MENU_SKILL_DBOX_HEIGHT, MENU_SKILL_DBOX_COLOR);
	
	for (i=0;i<3;i++)
	{
		DrawRect(MENU_SKILL_BOX_LEFT,tops[i],MENU_SKILL_BOX_WIDTH,MENU_SKILL_BOX_HEIGHT,colors[i]);
		for (j=0;j<5;j++)
		{
			//Draw skill tile
			//CopyTile1bpp(Skill_temp,index);
			if (skill_list[i*5+j]==true)
			{
				//DrawTile1bpp(Skill_temp,j*MENU_SKILL_X_SPACING+MENU_SKILL_SKILL_LEFT,i*MENU_SKILL_Y_SPACING+MENU_SKILL_SKILL_TOP,color1[i],color2[i]);
				DrawTile1bpp(index,j*MENU_SKILL_X_SPACING+MENU_SKILL_SKILL_LEFT,i*MENU_SKILL_Y_SPACING+MENU_SKILL_SKILL_TOP,color1[i],color2[i]);
			}
			//else DrawTile1bpp(Skill_temp,j*MENU_SKILL_X_SPACING+MENU_SKILL_SKILL_LEFT,i*MENU_SKILL_Y_SPACING+MENU_SKILL_SKILL_TOP,COLOR_GRAY_1,COLOR_GRAY_2);
			else DrawTile1bpp(index,j*MENU_SKILL_X_SPACING+MENU_SKILL_SKILL_LEFT,i*MENU_SKILL_Y_SPACING+MENU_SKILL_SKILL_TOP,COLOR_GRAY_1,COLOR_GRAY_2);
			
			if ((menu_skills_x==j)&&(menu_skills_y==i))
			{
				//Skill selector
				DrawTile(Menu_skill_selector,j*MENU_SKILL_X_SPACING+MENU_SKILL_SKILL_LEFT,i*MENU_SKILL_Y_SPACING+MENU_SKILL_SKILL_TOP);
			
				//Upgrade button
				skill_index=i*5+j;
				if (skill_list[skill_index]==false)
				{
					if ((menu_skills_x==0)||(skill_list[skill_index-1]==true))
					{
						DrawText("[Enter]Upgrade",MENU_SKILL_UPGRADE_LEFT,MENU_SKILL_UPGRADE_TOP,COLOR_YELLOW,MENU_SKILL_DBOX_COLOR);
					}
				}
			}
			index++;
		}
	}	
	
	str_ptr=skill_titles[menu_skills_y*5+menu_skills_x];
	i=0;
	while (*str_ptr++) i+=6;
	DrawText(skill_titles[menu_skills_y*5+menu_skills_x],MENU_SKILL_DBOX_LEFT+(MENU_SKILL_DBOX_WIDTH-i)/2,MENU_SKILL_DBOX_TITLE_TOP,COLOR_WHITE,color2[menu_skills_y]);
	
	/*
	str_ptr=skill_descriptions[menu_skills_y*5+menu_skills_x];
	left=MENU_SKILL_DBOX_TEXT_LEFT;
	top=MENU_SKILL_DBOX_TEXT_TOP;
	while (*str_ptr)
	{
		if (*str_ptr=='$')
		{
			top+=TEXT_SPACING_Y;
			left=MENU_SKILL_DBOX_LEFT;
		}
		else
		{
			temp_msg[0]=*str_ptr;
			left=DrawText(temp_msg,left,top,COLOR_WHITE,MENU_SKILL_DBOX_COLOR);
		}
		str_ptr++;
	}
	*/
	DrawTextNL(skill_descriptions[menu_skills_y*5+menu_skills_x],MENU_SKILL_DBOX_TEXT_LEFT,MENU_SKILL_DBOX_TEXT_TOP,TEXT_SPACING_Y,COLOR_WHITE,MENU_SKILL_DBOX_COLOR);
	
	return 0;
}

int DrawResources(void)
{
	const unsigned char res_colors[]={8,53,50,10,42,42};
	const unsigned char res_items[]={Res_HP_Heal,Res_Batt_Heal,Res_Exp_Upgrade,Res_HP_Upgrade,Res_Batt_Upgrade,Res_Dmg_Upgrade};
	unsigned char i, j, tile_index, draw_item=item_none;
	unsigned char temp_cost, temp_color;
	menu_res_target=item_none;
	DrawRect(MENU_RES_BOX_LEFT,MENU_RES_BOX_TOP,MENU_RES_BOX_WIDTH,MENU_RES_BOX_HEIGHT,MENU_RES_BOX_COLOR);
	for (i=0;i<6;i++)
	{
		tile_index=i+1;
		DrawRect(MENU_RES_BLOCK_LEFT+i*MENU_RES_BLOCK_WIDTH,MENU_RES_BLOCK_TOP,MENU_RES_BLOCK_WIDTH,2+MENU_RES_BLOCK_HEIGHT*5,res_colors[i]);
		for (j=0;j<5;j++)
		{
			if (i<4)
			{
				DrawItem(tile_index,MENU_RES_ITEM_LEFT+i*MENU_RES_BLOCK_WIDTH,MENU_RES_ITEM_TOP+j*MENU_RES_BLOCK_HEIGHT);
				draw_item=tile_index;
				tile_index+=5;
			}
			else if(j<3)
			{
				DrawTile(res_items[j+(i-4)*3],MENU_RES_ITEM_LEFT+i*MENU_RES_BLOCK_WIDTH,MENU_RES_ITEM_TOP+j*MENU_RES_BLOCK_HEIGHT);
				draw_item=j*2+(i-4);
				draw_item+=25;	//Skip past items to Res_only section
			}
			else draw_item=item_none;
			if ((i==menu_res_x)&&(j==menu_res_y))
			{
				DrawTile(Menu_item_selector,MENU_RES_ITEM_LEFT+i*MENU_RES_BLOCK_WIDTH,MENU_RES_ITEM_TOP+j*MENU_RES_BLOCK_HEIGHT);
				if (draw_item!=item_none)
				{	
					DrawItemStats(draw_item,MENU_RES_BOX_LEFT,MENU_RES_BOX_TOP,MENU_RES_BOX_COLOR);
					menu_res_target=draw_item;
				}
			}
		}
	}
	if (menu_res_target!=item_none)
	{
		temp_cost=item_stats[menu_res_target][cost];
		temp_color=crystal_colors[item_stats[menu_res_target][cost_type]];
		//DebugDec(temp_color);
		//DebugDec(item_stats[menu_res_target][cost_type]);
		//DebugNL();
		DrawTextF("Cost: $",temp_cost,0,MENU_RES_COST_LEFT,MENU_RES_COST_TOP,temp_color,MENU_RES_BOX_COLOR);
	}
	return 0;
}

int DrawMenu(void)
{
	unsigned char left;
	unsigned char i,temp_msg[]="A",stat_y,stat_temp;
	if (output_mode==OUTPUT_CHARACTER)
	{
		
		DrawRect(MENU_BG_LEFT,MENU_BG_TOP,MENU_BG_WIDTH,MENU_BG_HEIGHT,COLOR_MENU_CHAR);
		//Robot
		DrawTile(Robot_right,MENU_CHAR_ROBOT_LEFT,MENU_CHAR_ROBOT_TOP);
		/*
		//HP
		left=DrawText("HP:   ",MENU_CHAR_STAT_LEFT,MENU_CHAR_HP_TOP,COLOR_HP,COLOR_MENU_CHAR);
		DrawUC(hero_HP_Max,left,MENU_CHAR_HP_TOP,COLOR_HP,COLOR_MENU_CHAR);
		//Batt
		left=DrawText("Batt: ",MENU_CHAR_STAT_LEFT,MENU_CHAR_BATT_TOP,COLOR_BATT,COLOR_MENU_CHAR);
		DrawUC(hero_Batt_Max,left,MENU_CHAR_BATT_TOP,COLOR_BATT,COLOR_MENU_CHAR);
		//Dmg
		left=DrawText("Dmg:  ",MENU_CHAR_STAT_LEFT,MENU_CHAR_DMG_TOP,COLOR_DMG,COLOR_MENU_CHAR);
		DrawUC(hero_Dmg,left,MENU_CHAR_DMG_TOP,COLOR_DMG,COLOR_MENU_CHAR);
		//Crit
		left=DrawText("Crit: ",MENU_CHAR_STAT_LEFT,MENU_CHAR_CRIT_TOP,COLOR_CRIT,COLOR_MENU_CHAR);
		DrawUC(hero_Crit_Rate,left,MENU_CHAR_CRIT_TOP,COLOR_CRIT,COLOR_MENU_CHAR);
		//Mine
		left=DrawText("Mine: ",MENU_CHAR_STAT_LEFT,MENU_CHAR_MINE_TOP,COLOR_MINE,COLOR_MENU_CHAR);
		left=DrawUC(hero_Mine_Speed,left,MENU_CHAR_MINE_TOP,COLOR_MINE,COLOR_MENU_CHAR);
		DrawText("s",left,MENU_CHAR_MINE_TOP,COLOR_MINE,COLOR_MENU_CHAR);
		//Drill
		left=DrawText("Drill:",MENU_CHAR_STAT_LEFT,MENU_CHAR_DRILL_TOP,COLOR_DRILL,COLOR_MENU_CHAR);
		left=DrawUC(hero_Drill_Speed,left,MENU_CHAR_DRILL_TOP,COLOR_DRILL,COLOR_MENU_CHAR);
		DrawText("s",left,MENU_CHAR_DRILL_TOP,COLOR_DRILL,COLOR_MENU_CHAR);
		//Lava
		left=DrawText("Lava: -",MENU_CHAR_STAT_LEFT,MENU_CHAR_LAVA_TOP,COLOR_LAVA,COLOR_MENU_CHAR);
		left=DrawUC(hero_Lava_Res,left,MENU_CHAR_LAVA_TOP,COLOR_LAVA,COLOR_MENU_CHAR);
		DrawText("%",left,MENU_CHAR_LAVA_TOP,COLOR_LAVA,COLOR_MENU_CHAR);
		*/
		
		//217 bytes smaller! :)
		/*
		stat_y=MENU_CHAR_HP_TOP;
		for (i=0;i<HERO_STAT_COUNT;i++)
		{
			left=MENU_CHAR_STAT_LEFT;
			msg_ptr=hero_stat_texts[i];
			while (*msg_ptr)
			{
				if (*msg_ptr=='$')
				{
					stat_temp=*hero_stat_pointers[i];
					if (stat_temp==0) stat_temp=hero_HP_Max;
					left=DrawUC(stat_temp,left,stat_y,hero_stat_colors[i],COLOR_MENU_CHAR);
				}
				else
				{
					temp_msg[0]=*msg_ptr;
					left=DrawText(temp_msg,left,stat_y,hero_stat_colors[i],COLOR_MENU_CHAR);
				}
				msg_ptr++;
			}
			stat_y+=9;	
		}
		*/
		
		//119 bytes smaller
		stat_y=MENU_CHAR_HP_TOP;
		for (i=0;i<HERO_STAT_COUNT;i++)
		{
			if (hero_stat_pointers[i]==0) stat_temp=hero_HP_Max;
			else stat_temp=*hero_stat_pointers[i];
			DrawTextF(hero_stat_texts[i],stat_temp,0,MENU_CHAR_STAT_LEFT,stat_y,hero_stat_colors[i],COLOR_MENU_CHAR);
			stat_y+=9;	
		}
		
		DrawMenuInventory();
	}
	else if (output_mode==OUTPUT_SKILLS)
	{
		DrawRect(MENU_BG_LEFT,MENU_BG_TOP,MENU_BG_WIDTH,MENU_BG_HEIGHT,COLOR_MENU_SKILLS);
		left=DrawText("Points: ",MENU_SKILL_POINTS_LEFT,MENU_SKILL_POINTS_TOP,COLOR_WHITE,COLOR_MENU_SKILLS);
		DrawUC(hero_Points,left,MENU_SKILL_POINTS_TOP,COLOR_WHITE,COLOR_MENU_SKILLS);
		
		DrawSkills();
	}
	else if (output_mode==OUTPUT_RESOURCES)
	{
		DrawRect(MENU_BG_LEFT,MENU_BG_TOP,MENU_BG_WIDTH,MENU_BG_HEIGHT,COLOR_MENU_RESOURCES);
		DrawRect(MENU_RES_MONEY_LEFT,MENU_RES_MONEY_TOP,MENU_RES_MONEY_WIDTH,MENU_RES_MONEY_HEIGHT,COLOR_BLACK);
		DrawUC(hero_Red,MENU_RES_MONEY_RED_LEFT,MENU_RES_MONEY_VAL_TOP, COLOR_CRYSTAL_RED1,COLOR_BLACK);
		DrawUC(hero_Blue,MENU_RES_MONEY_BLUE_LEFT,MENU_RES_MONEY_VAL_TOP, COLOR_CRYSTAL_BLUE1,COLOR_BLACK);
		DrawUC(hero_Yellow,MENU_RES_MONEY_YELLOW_LEFT,MENU_RES_MONEY_VAL_TOP,COLOR_CRYSTAL_YELLOW1,COLOR_BLACK);
		
		DrawResources();
	}
	return 0;
}

int AddExp(unsigned char exp)
{
	unsigned char temp_rand;
	hero_Exp+=exp;
	if (hero_Exp>=hero_Exp_Max)
	{
		hero_Exp-=hero_Exp_Max;
        hero_Exp_Max+=10;
        hero_Level+=1;
        hero_Points+=1;
        hero_HP=hero_HP_Max;
        hero_Batt=hero_Batt_Max;
		if (skill_list[Wise_Rewards]==true)
		{
            temp_rand = rand8(3);
            if (temp_rand==0) hero_Blue+=5;
            else if (temp_rand==1) hero_Red+=5;
            else hero_Yellow+=5;
		}
	}
	return 0;
}

int CheckHP(void)
{
	if (hero_HP>hero_HP_Max)
	{
		hero_HP=hero_HP_Max;
	}
	else if (hero_HP<=0)
	{
		EnableGfxRAM();
		hero_HP=0;
		DrawFrame();
		DrawLegend();
		DrawRect(DEAD_LEFT,DEAD_TOP,DEAD_WIDTH,DEAD_HEIGHT,COLOR_BLACK);
		DrawText("You died",DEAD_MSG_LEFT,DEAD_MSG_TOP,COLOR_WHITE,COLOR_BLACK);
		while(1);
	}
	return 0;
}

unsigned char CheckLavaExit()
{
	if (map_data[display_Y+hero_Y][display_X+hero_X]==MAP_LAVA)
	{
		hero_HP-=hero_Lava_Dmg;
		CheckHP();
		return true;
	}
	else if (map_data[display_Y+hero_Y][display_X+hero_X]==MAP_EXIT)
	{
		PushBank3();
		MakeMap();
		LoadMonsters();
		LoadCrystals();
		PopBank3();
		ResetGame();
		return true;
	}
	return false;
}

int TickHandler(void)
{
	unsigned char redraw=false;
	unsigned char original_hp=hero_HP;
	unsigned char original_batt=hero_Batt;
	unsigned char temp_rand;
	hero_HP+=hero_HP_Recharge;
	hero_Batt+=hero_Batt_Recharge;
	if (hero_activity)
	{
		if (hero_target_type==target_crystal)
		{
			if (hero_Batt>=hero_Mine_Cost)
			{
				if ((skill_list[Battery_Saver]==false)||(rand8(5)!=0))
					hero_Batt-=hero_Mine_Cost;
				hero_activity_ticks++;
				redraw=true;
				if (hero_activity_ticks==hero_activity_ticks_max)
				{
					if (crystal_list[hero_target_index].color==CRYSTAL_RED_TYPE) hero_Red++;
					else if (crystal_list[hero_target_index].color==CRYSTAL_BLUE_TYPE) hero_Blue++;
					else if (crystal_list[hero_target_index].color==CRYSTAL_YELLOW_TYPE) hero_Yellow++;
					if (skill_list[Master_Miner]==true)
					{
						if (crystal_list[hero_target_index].color==CRYSTAL_RED_TYPE) hero_Red++;
						else if (crystal_list[hero_target_index].color==CRYSTAL_BLUE_TYPE) hero_Blue++;
						else if (crystal_list[hero_target_index].color==CRYSTAL_YELLOW_TYPE) hero_Yellow++;
						AddExp(2);
					}
					crystal_list[hero_target_index].active=false;
					AddExp(2);
					hero_target_type=target_none;
					hero_activity=false;
					DrawFrame();
					redraw=true;
				}
			}
		}
		else if (hero_target_type==target_rock)
		{
			if (hero_Batt>=hero_Drill_Cost)
			{
				hero_Batt-=hero_Drill_Cost;
				hero_activity_ticks++;
				redraw=true;
				if (hero_activity_ticks==hero_activity_ticks_max)
				{
					map_data[hero_target_index2][hero_target_index]=MAP_BLANK;
					AddExp(1);
					hero_target_type=target_none;
					hero_activity=false;
					if (skill_list[Lucky_Driller]==true)
					{
						if (rand8(4)==0)
						{
							temp_rand = rand8(3);
							if (temp_rand==0) hero_Blue++;
							else if (temp_rand==1) hero_Red++;
							else hero_Yellow++;
							AddExp(2);
						}
					}
					DrawFrame();
					redraw=true;
				}
			}
		}
		else if (hero_target_type==target_monster)
		{
			if (hero_Batt>=hero_Dmg_Cost)
			{
				hero_Batt-=hero_Dmg_Cost;
				if (skill_list[Instakill]==true)
				{
					if (rand8(20)==0) hero_activity_ticks=0;
					//else hero_activity_ticks-=hero_Dmg;
				}
				//else
				if (hero_activity_ticks!=0)
				{
					hero_activity_ticks-=hero_Dmg;
					if (rand8(100)<hero_Crit_Rate)
					{
						
						if (skill_list[Crit_Lord]==true)
							hero_activity_ticks-=hero_Dmg;
						else hero_activity_ticks-=hero_Dmg/2;
					}
				}
				if (hero_activity_ticks<=0)
				{
					monster_list[hero_target_index].alive=false;
					if (skill_list[Experienced]==true) AddExp(11);
					else AddExp(10);
					hero_target_type=target_none;
					hero_activity=false;
					if (skill_list[Bounty_Hunter]==true)
					{
						if (rand8(10)==0)
						{
							temp_rand=rand8(3);
							if (temp_rand==0) hero_Red++;
							else if (temp_rand==1) hero_Blue++;
							else hero_Yellow++;
						}
					}
					DrawFrame();
				}
				redraw=true;
			}
			if (rand5050())
			{
				hero_HP-=2;
				//CheckHP();
			}
		}
	}
	if (hero_Batt>hero_Batt_Max) hero_Batt=hero_Batt_Max;
	//if (hero_HP>hero_HP_Max) hero_HP=hero_HP_Max;
	if (hero_Batt!=original_batt) redraw=true;
	CheckHP();
	if (hero_HP!=original_hp) redraw=true;
	if (CheckLavaExit()==true) redraw=true;
	
	if (redraw==true) DrawLegend();
	
	return 0;
}

int CalcStats(void)
{
	unsigned char i,j;
	unsigned char *stat_ptr;
	unsigned char stat_ID,stat_val;
	unsigned char Mine1s=false, Drill1s=false;
	//hero_HP_Max=2;
	hero_HP_Max_temp=2+hero_HP_Upgrade;
    hero_Batt_Max=3+hero_Batt_Upgrade;
    hero_Dmg=hero_Dmg_Upgrade;
	hero_Mine_Speed = 8;
	hero_Drill_Speed = 12;
	hero_Batt_Recharge = 1;
	hero_Crit_Rate = 5;
	hero_HP_Recharge = 0;
	hero_Lava_Res = 0;
	hero_Lava_Dmg = 4;
	hero_Dmg_Cost = 4;
	hero_Mine_Cost = 2;
	hero_Drill_Cost = 2;
	for (i=0;i<5;i++)
	{
		for (j=0;j<item_stats[hero_equipped[i]][stat_count];j++)
		{
			stat_ID=item_stats[hero_equipped[i]][stat_begin+j*2];
			stat_ptr=stat_pointers[stat_ID];
			stat_val=item_stats[hero_equipped[i]][stat_begin+j*2+1];
			if (stat_ptr==stat_special)
			{
				switch(stat_ID)
				{
					case stat_Mine:
						hero_Mine_Speed-=stat_val;
						break;
					case stat_Mine1s:
						Mine1s=true;
						break;
					case stat_Drill:
						hero_Drill_Speed-=stat_val;
						break;
					case stat_Drill1s:
						Drill1s=true;
						break;
					case stat_Lava_Heals:
						hero_Lava_Dmg=-1;
						break;
					case stat_Dmg_Cost_50:
						hero_Dmg_Cost=2;
						break;
					case stat_Mine_Cost_50:
						hero_Mine_Cost=1;
						break;
				}
			}
			else *stat_ptr+=stat_val;
		}
	}
	if (skill_list[Fast_Digger]==true)
	{
		hero_Mine_Speed-=2;
		hero_Drill_Speed-=2;
	}
	if (Mine1s==true) hero_Mine_Speed=1;
	if (Drill1s==true) hero_Drill_Speed=1;
	
	if (skill_list[Lucky_Crit]==true) hero_Crit_Rate+=20;
	
	if (hero_Lava_Dmg!=-1)	//case of Lava Heals
	{
		if (hero_Lava_Res==25) hero_Lava_Dmg=3;
		else if (hero_Lava_Res==50) hero_Lava_Dmg=2;
	}
	
	hero_HP_Max=hero_HP_Max_temp;
	if (hero_HP>hero_HP_Max) hero_HP=hero_HP_Max;
	if (hero_Batt>hero_Batt_Max) hero_Batt=hero_Batt_Max;
	return 0;
}

int ResetGame(void)
{
	display_X=0;
	display_Y=0;
	
	hero_X=HERO_START_X;
	hero_Y=HERO_START_Y;
	hero_activity=false;
    hero_HP=hero_HP_Max;
    hero_Batt=hero_Batt_Max;
	hero_facing=DIRECTION_RIGHT;
	hero_target_direction=DIRECTION_RIGHT;
	
	UpdateTarget();
	return 0;
}

int ColorHero(void)
{
	CopyTile(Robot_left,Robot_left_blank);
	ColorTile(Robot_left,hero_equipped[head]);
	ColorTile(Robot_left,hero_equipped[body]);
	ColorTile(Robot_left,hero_equipped[legs]);
	ColorTile(Robot_left,hero_equipped[gun]);
	ColorTile(Robot_left,hero_equipped[tool]);
	CopyTile(Robot_right,Robot_right_blank);
	ColorTile(Robot_right,hero_equipped[head]);
	ColorTile(Robot_right,hero_equipped[body]);
	ColorTile(Robot_right,hero_equipped[legs]);
	ColorTile(Robot_right,hero_equipped[gun]);
	ColorTile(Robot_right,hero_equipped[tool]);
	return 0;
}

int Setup(void)
{
	*RAM_BANK1=BANK_GEN_RAM1;
	*RAM_BANK2=BANK_GFX_RAM1;
	*RAM_BANK3=BANK_GEN_RAM3;
	return 0;
}

//Functions in second ROM
#pragma code-name (push,"BANK_ROM")
int CopyString(unsigned char *dest_ptr, const unsigned char *src_ptr)
{
	while (*src_ptr) *dest_ptr++=*src_ptr++;
	return 0;
}

int InitHero(void)
{
	unsigned char i;
	hero_Exp=0;
    hero_Exp_Max=40;
	hero_HP_Upgrade=0;
	hero_Batt_Upgrade=0;
	hero_Dmg_Upgrade=0;
    hero_Level=1;
    hero_Red=0;
    hero_Blue=0;
    hero_Yellow=0;
    hero_Points=0;
	hero_activity=false;
	hero_equipped[head]=Basic_Head;
	hero_equipped[body]=Basic_Body;
	hero_equipped[legs]=Basic_Legs;
	hero_equipped[gun]=Basic_Gun;
	hero_equipped[tool]=Basic_Tool;
	for (i=0;i<INVENTORY_COUNT;i++) hero_inventory[i]=item_none;
	//hero_inventory[0]=Basic_Head;
	for (i=0;i<SKILL_COUNT;i++) skill_list[i]=false;
	
	return 0;
}

int KeyHandlerGame(unsigned char key)
{
	unsigned char redraw,moved;
	if ((key=='m')||(key=='c')) output_mode=OUTPUT_CHARACTER;
	else if (key=='k') output_mode=OUTPUT_SKILLS;
	else if (key=='r') output_mode=OUTPUT_RESOURCES;
	if (output_mode!=OUTPUT_GAME)
	{
		//DrawMenuBorder();
		//DrawMenu();
		//return 0;
		return FLAG_DRAWMENUBORDER|FLAG_DRAWMENU;
	}
	redraw=false;
	moved=false;
	
	//Movement keys
	if (hero_activity==false)
	{
		if (key=='s')
		{
			if (hero_target_direction!=DIRECTION_DOWN)
			{
				hero_target_direction=DIRECTION_DOWN;
				redraw = true;
			}
			else if (display_Y+hero_Y+1<MAP_HEIGHT)
			{
				if (map_data[display_Y + hero_Y + 1][display_X + hero_X] != MAP_ROCK)
				{
					if ((CheckForMonster(display_X + hero_X, display_Y + hero_Y + 1) == false)||(skill_list[Ghost]==true))
					{
						if (hero_Y<FRAME_HEIGHT-2)
						{
							hero_Y++;
							moved=true;
						}
						else if (hero_Y==FRAME_HEIGHT-2)
						{
							if (display_Y==MAP_HEIGHT-FRAME_HEIGHT)
							{
								hero_Y=FRAME_HEIGHT-1;
								moved=true;
							}
							else
							{
								display_Y++;
								moved=true;
							}
						}
					}
					if (moved) CheckLavaExit();
				}
			}
		}
		else if (key=='w')
		{
			if (hero_target_direction!=DIRECTION_UP)
			{
				hero_target_direction=DIRECTION_UP;
				redraw=true;
			}
			else if (display_Y + hero_Y>0)
			{
				if (map_data[display_Y+hero_Y-1][display_X+hero_X]!=MAP_ROCK)
				{
					if ((CheckForMonster(display_X + hero_X, display_Y + hero_Y - 1)==false)||(skill_list[Ghost]==true))
					{
						if (hero_Y>1)
						{
							hero_Y--;
							moved=true;
						}
						else if (hero_Y==1)
						{
							if (display_Y==0)
							{
								hero_Y=0;
								moved=true;
							}
							else
							{
								display_Y--;
								moved=true;
							}
						}
					}
					if (moved) CheckLavaExit();
				}
			}
		}
		else if (key=='d')
		{
			if (hero_facing==DIRECTION_LEFT)
			{
				hero_facing=DIRECTION_RIGHT;
				redraw=true;
			}
			if (hero_target_direction!=DIRECTION_RIGHT)
			{
				hero_target_direction=DIRECTION_RIGHT;
				redraw=true;
			}
			else if (display_X+hero_X+1<MAP_WIDTH)
			{
				if (map_data[display_Y+hero_Y][display_X+hero_X+1]!=MAP_ROCK)
				{
					if ((CheckForMonster(display_X+hero_X+1, display_Y+hero_Y)==false)||(skill_list[Ghost]==true))
					{
						if (hero_X<3)
						{
							hero_X++;
							moved=true;
						}
						else if (hero_X==FRAME_WIDTH-2)
						{
							if (display_X==MAP_WIDTH-FRAME_WIDTH)
							{
								hero_X=FRAME_WIDTH-1;
								moved=true;
							}
							else
							{
								display_X++;
								moved=true;
							}
						}
					}
					if (moved) CheckLavaExit();
				}
			}
		}
		else if (key=='a')
		{
			if (hero_facing==DIRECTION_RIGHT)
			{
				hero_facing=DIRECTION_LEFT;
				redraw=true;
			}
			if (hero_target_direction!=DIRECTION_LEFT)
			{
				hero_target_direction=DIRECTION_LEFT;
				redraw=true;
			}
			else if (display_X+hero_X>0)
			{
				if (map_data[display_Y+hero_Y][display_X+hero_X-1]!=MAP_ROCK)
				{
					if ((CheckForMonster(display_X+hero_X-1, display_Y+hero_Y)==false)||(skill_list[Ghost]==true))
					{
						if (hero_X>1)
						{
							hero_X--;
							moved=true;
						}
						else if (hero_X==1)
						{
							if (display_X==0)
							{
								hero_X=0;
								moved=true;
							}
							else
							{
								display_X--;
								moved=true;
							}
						}
					}
					if (moved) CheckLavaExit();
				}
			}
		}
		else if (key==' ')
		{
			if (hero_target_type==target_crystal)
			{
				hero_activity_ticks_max=hero_Mine_Speed;
				hero_activity_ticks=0;
				hero_activity=true;
				redraw=true;
			}
			else if (hero_target_type==target_rock)
			{
				hero_activity_ticks_max=hero_Drill_Speed;
				hero_activity_ticks=0;
				hero_activity=true;
				redraw=true;
			}
			else if (hero_target_type==target_monster)
			{
				hero_activity_ticks_max=BOT_HP;
				hero_activity_ticks=BOT_HP;
				hero_activity=true;
				redraw=true;
			}
		}
	}
	if ((redraw==true)||(moved==true))
	{
		//UpdateTarget();
		//DrawFrame();
		//DrawLegend();
		return FLAG_UPDATETARGET|FLAG_DRAWFRAME|FLAG_DRAWLEGEND;
	}
	return 0;
}

int KeyHandlerMenu(unsigned char key)
{
	unsigned char redraw, redraw_skills, redraw_resources;
	unsigned char temp_item, temp_index;
	unsigned char bought=false;
	unsigned char ret_val=0;
	unsigned char i;
	unsigned int res_total;
	redraw=false;
	redraw_skills=false;
	redraw_resources=false;
	
	if (key=='m')
	{
		output_mode=OUTPUT_GAME;
		//DrawFrame();
		//DrawLegend();
		//return 0;
		return FLAG_DRAWFRAME|FLAG_DRAWLEGEND;
	}
	else if (key=='c')
	{
		output_mode=OUTPUT_CHARACTER;
		//DrawMenu();
		ret_val|=FLAG_DRAWMENU;
	}
	else if (key=='k')
	{
		output_mode=OUTPUT_SKILLS;
		//DrawMenu();
		ret_val|=FLAG_DRAWMENU;
	}
	else if (key=='r')
	{
		output_mode=OUTPUT_RESOURCES;
		//DrawMenu();
		ret_val|=FLAG_DRAWMENU;
	}
	
	if (output_mode==OUTPUT_CHARACTER)
	{
		if (key=='w')
		{
			if (menu_char_y>0)
			{
				menu_char_y--;
				//DrawMenuInventory();
				ret_val|=FLAG_DRAWMENUINVENTORY;
			}
		}
		else if (key=='s')
		{
			if (menu_char_y<MENU_CHAR_BOX_Y_COUNT-1)
			{
				menu_char_y++;
				//DrawMenuInventory();
				ret_val|=FLAG_DRAWMENUINVENTORY;
			}
		}
		else if (key=='a')
		{
			if (menu_char_x>0)
			{
				menu_char_x--;
				//DrawMenuInventory();
				ret_val|=FLAG_DRAWMENUINVENTORY;
			}
			else if (menu_char_y>0)
			{
				menu_char_x=MENU_CHAR_BOX_X_COUNT-1;
				menu_char_y--;
				//DrawMenuInventory();
				ret_val|=FLAG_DRAWMENUINVENTORY;
			}
		}
		else if (key=='d')
		{
			if (menu_char_x<MENU_CHAR_BOX_X_COUNT-1)
			{
				menu_char_x++;
				//DrawMenuInventory();
				ret_val|=FLAG_DRAWMENUINVENTORY;
			}
			else if (menu_char_y<MENU_CHAR_BOX_Y_COUNT-1)
			{
				menu_char_x=0;
				menu_char_y++;
				//DrawMenuInventory();
				ret_val|=FLAG_DRAWMENUINVENTORY;
			}
		}
		else if (key==13)
		{
			temp_index=menu_char_y*MENU_CHAR_BOX_X_COUNT+menu_char_x;
			if (hero_inventory[temp_index]!=item_none)
			{
				temp_item=hero_inventory[temp_index];
				hero_inventory[temp_index]=hero_equipped[item_stats[temp_item][type]];
				hero_equipped[item_stats[temp_item][type]]=temp_item;
				ColorHero();
				CalcStats();
				redraw=true;
			}
		}
	}
	else if (output_mode==OUTPUT_SKILLS)
	{
		if (key=='w')
		{
			if (menu_skills_y>0)
			{
				menu_skills_y--;
				redraw_skills=true;
			}
		}
		else if (key=='s')
		{
			if (menu_skills_y<2)
			{
				menu_skills_y++;
				redraw_skills=true;
			}
		}
		else if (key=='a')
		{
			if (menu_skills_x>0)
			{
				menu_skills_x--;
				redraw_skills=true;
			}
		}
		else if (key=='d')
		{
			if (menu_skills_x<4)
			{
				menu_skills_x++;
				redraw_skills=true;
			}
		}
		else if (key==13)
		{
			if (hero_Points>0)
			{
				temp_index=menu_skills_y*5+menu_skills_x;
				if (skill_list[temp_index]==false)
				{
					if ((menu_skills_x==0)||(skill_list[temp_index-1]==true))
					{
						hero_Points--;
						skill_list[temp_index]=true;
						CalcStats();
						redraw=true;
					}
				}
			}
		}
	}
	else if (output_mode==OUTPUT_RESOURCES)
	{
		if (key=='w')
		{
			if (menu_res_y>0)
			{
				menu_res_y--;
				redraw_resources=true;
			}
		}
		else if (key=='s')
		{
			if (menu_res_y<4)
			{
				menu_res_y++;
				redraw_resources=true;
			}
		}
		else if (key=='a')
		{
			if (menu_res_x>0)
			{
				menu_res_x--;
				redraw_resources=true;
			}
		}
		else if (key=='d')
		{
			if (menu_res_x<5)
			{
				menu_res_x++;
				redraw_resources=true;
			}
		}
		else if (key==13)
		{
			if (menu_res_target!=item_none)
			{
				if ((skill_list[Big_Discount]==true)&&(menu_res_x<4)) i=1;
				else i=0;
				if (skill_list[Crystalsmith]==true)
				{
					res_total=hero_Red+hero_Blue+hero_Yellow;
					if (res_total>=(item_stats[menu_res_target][cost])-i)
					{
						if ((skill_list[Free_Lunch]==false)||(rand8(5)!=0))
						{
							res_total=item_stats[menu_res_target][cost]-i;
							while((res_total>0)&&(hero_Red>0))
							{
								res_total--;
								hero_Red--;
							}
							while((res_total>0)&&(hero_Blue>0))
							{
								res_total--;
								hero_Blue--;
							}
							while((res_total>0)&&(hero_Yellow>0))
							{
								res_total--;
								hero_Yellow--;
							}
						}
						bought=true;
						redraw=true;
					}
				}
				else
				{
					if (item_stats[menu_res_target][cost_type]==CRYSTAL_RED_TYPE)
					{
						if (hero_Red>=(item_stats[menu_res_target][cost])-i)
						{
							if ((skill_list[Free_Lunch]==false)||(rand8(5)!=0))
								hero_Red-=item_stats[menu_res_target][cost]-i;
							bought=true;
							redraw=true;
						}
					}
					else if (item_stats[menu_res_target][cost_type]==CRYSTAL_BLUE_TYPE)
					{
						if (hero_Blue>=(item_stats[menu_res_target][cost])-i)
						{
							if ((skill_list[Free_Lunch]==false)||(rand8(5)!=0))
								hero_Blue-=item_stats[menu_res_target][cost]-i;
							bought=true;
							redraw=true;
						}
					}
					else if (item_stats[menu_res_target][cost_type]==CRYSTAL_YELLOW_TYPE)
					{
						if (hero_Yellow>=(item_stats[menu_res_target][cost])-i)
						{
							if ((skill_list[Free_Lunch]==false)||(rand8(5)!=0))
								hero_Yellow-=item_stats[menu_res_target][cost]-i;
							bought=true;
							redraw=true;
						}
					}
				}
			}
			if (bought==true)
			{
				switch(menu_res_target)
				{
					case Res_HP_Heal_ID:
						hero_HP=hero_HP_Max;
						break;
					case Res_HP_Upgrade_ID:
						hero_HP_Upgrade++;
						CalcStats();
						hero_HP=hero_HP_Max;
						break;
					case Res_Batt_Heal_ID:
						hero_Batt=hero_Batt_Max;
						break;
					case Res_Batt_Upgrade_ID:
						hero_Batt_Upgrade++;
						CalcStats();
						hero_Batt=hero_Batt_Max;
						break;
					case Res_Exp_Upgrade_ID:
						AddExp(10);
						break;
					case Res_Dmg_Upgrade_ID:
						hero_Dmg_Upgrade++;
						CalcStats();
						break;
					default:
						for (i=0;i<INVENTORY_COUNT;i++)
						{
							if (hero_inventory[i]==item_none)
							{
								if ((skill_list[Only_the_Best]==true)&&(rand8(10)==0))
								{
									switch(item_stats[menu_res_target][type])
									{
										case head:
											hero_inventory[i]=Lightning;
											break;
										case body:
											hero_inventory[i]=Fortress;
											break;
										case legs:
											hero_inventory[i]=Mustang;
											break;
										case gun:
											hero_inventory[i]=Death_Ray;
											break;
										case tool:
											hero_inventory[i]=Laser_Bit;
											break;
									}
								}
								else hero_inventory[i]=menu_res_target;
								break;
							}
						}
						break;
				}
			}
		}
	}
	
	//if (redraw==true) DrawMenu();
	//else if (redraw_skills==true) DrawSkills();
	
	if (redraw==true) ret_val|=FLAG_DRAWMENU;
	else if (redraw_skills==true) ret_val|=FLAG_DRAWSKILLS;
	else if (redraw_resources==true) ret_val|=FLAG_DRAWRESOURCES;
	
	return ret_val;
}

int LoadCrystals(void)
{
	unsigned char crystal_index=0;
    unsigned char m_X, m_Y;
	unsigned char rand_crystal;
	for (m_Y=0;m_Y<MAP_HEIGHT;m_Y++)
		for (m_X=0;m_X<MAP_WIDTH;m_X++)
			crystal_map[m_Y][m_X]=NO_CRYSTAL;
	while(crystal_index<CRYSTAL_COUNT)
	{
        m_X=rand8(MAP_WIDTH);
        m_Y=rand8(MAP_HEIGHT);
        if (!((m_X==HERO_START_X)&&(m_Y==HERO_START_Y)))
		{
			if (CheckForMonster(m_X,m_Y)==false)
			{
				if (CheckForCrystal(m_X,m_Y)==false)
				{
					switch(map_data[m_Y][m_X])
					{
						case MAP_BLANK:
						case MAP_BLANK_90:
						case MAP_BLANK_180:
						case MAP_BLANK_270:
							crystal_list[crystal_index].x=m_X;
							crystal_list[crystal_index].y=m_Y;
							crystal_list[crystal_index].active=true;
							rand_crystal=rand8(3);
							if (rand_crystal==0) crystal_list[crystal_index].color=CRYSTAL_RED_TYPE;
							else if (rand_crystal==1) crystal_list[crystal_index].color=CRYSTAL_BLUE_TYPE;
							else if (rand_crystal==2) crystal_list[crystal_index].color=CRYSTAL_YELLOW_TYPE;
							crystal_map[m_Y][m_X]=crystal_index;	
							crystal_index++;
							break;
					}
				}
			}
		}
	}
	return 0;
}

int LoadMonsters(void)
{
	unsigned char monster_index=0;
    unsigned char m_X, m_Y;
	for (m_Y=0;m_Y<MAP_HEIGHT;m_Y++)
		for (m_X=0;m_X<MAP_WIDTH;m_X++)
			monster_map[m_Y][m_X]=NO_MONSTER;
	while(monster_index<MONSTER_COUNT)
	{
        m_X=rand8(MAP_WIDTH);
        m_Y=rand8(MAP_HEIGHT);
		
		if (!((m_X==HERO_START_X)&&(m_Y==HERO_START_Y)))
		{
			if (CheckForMonster(m_X,m_Y)==false)
			{
				switch(map_data[m_Y][m_X])
				{
					case MAP_BLANK:
					case MAP_BLANK_90:
					case MAP_BLANK_180:
					case MAP_BLANK_270:
						monster_list[monster_index].x=m_X;
						monster_list[monster_index].y=m_Y;
						monster_list[monster_index].alive=true;
						monster_map[m_Y][m_X]=monster_index;
						monster_index++;
						break;
				}
			}
		}
	}
	return 0;
}

int LoadStrings(void)
{
	unsigned char i;
	for (i=0;i<SKILL_COUNT;i++)
	{	
		CopyString(skill_descriptions[i],skill_descriptions_raw[i]);
		CopyString(skill_titles[i],skill_titles_raw[i]);
	}
	//Saves 245 bytes
	for (i=0;i<5*5;i++) CopyString(item_titles[i],item_titles_raw[i]);
	
	return 0;
}

int LoadTiles(void)
{
	const unsigned char tiles_to_color[]={Ground_0, Ground_90, Ground_180, Ground_270, Rock, Lava,
											Crystal_red, Crystal_blue, Crystal_yellow};
	unsigned char i;
	CopyTile(Menu_head,Menu_head_raw);
	CopyTile(Menu_body,Menu_body_raw);
	CopyTile(Menu_legs,Menu_legs_raw);
	CopyTile(Menu_gun,Menu_gun_raw);
	CopyTile(Menu_tool,Menu_tool_raw);
	CopyTile(Robot_left_blank,Robot_left_raw);
	CopyTile(Robot_right_blank,Robot_right_raw);
	CopyTile(Monster,Monster_raw);
	CopyTile(Monster_dead,Monster_dead_raw);
	CopyTile(Menu_item_slot,Menu_item_slot_raw);
	CopyTile(Crystal_base,Crystal_base_raw);
	
	CopyTile1bpp(Hero_target,Hero_target_raw);
    CopyTile1bpp(Menu_item_selector,Menu_item_selector_raw);
    CopyTile1bpp(Menu_skill_selector,Menu_skill_selector_raw);
    CopyTile1bpp(Exit,Exit_raw);
    CopyTile1bpp(Res_HP_Heal,Res_HP_Heal_raw);	
    CopyTile1bpp(Res_Batt_Heal,Res_Batt_Heal_raw);
    CopyTile1bpp(Res_HP_Upgrade,Res_HP_Upgrade_raw);
    CopyTile1bpp(Res_Batt_Upgrade,Res_Batt_Upgrade_raw);
    CopyTile1bpp(Res_Exp_Upgrade,Res_Exp_Upgrade_raw);
    CopyTile1bpp(Res_Dmg_Upgrade,Res_Dmg_Upgrade_raw);
	for (i=0;i<SKILL_COUNT;i++)
		CopyTile1bpp(Skill0+i,Skill0_raw+i);
	
	CopyTile(Ground_0, Ground_raw);
	RotateTile90(Ground_90,Ground_0);
	RotateTile90(Ground_180,Ground_90);
	RotateTile90(Ground_270,Ground_180);
	CopyTile(Rock, Ground_raw);
	CopyTile(Lava, Ground_raw);
	CopyTile(Crystal_red, Crystal_raw);
	CopyTile(Crystal_blue, Crystal_raw);
	CopyTile(Crystal_yellow, Crystal_raw);
	for (i=0;i<sizeof(tiles_to_color);i++)
		ColorTile(tiles_to_color[i],tiles_to_color[i]);
	return 0;
}

int MakeMap(void)
{
	/*
	register int i,j;
	for (i=0;i<MAP_HEIGHT;i++)
		for (j=0;j<MAP_WIDTH;j++)
			map_data[j][i]=MAP_BLANK;
	//417-157=260k
	*/
	register unsigned char *map_ptr=&map_data[0][0];
	register unsigned char map_square, rand_tile;
	register int i;
	
	for (i=0;i<MAP_WIDTH*MAP_HEIGHT;i++)
		*map_ptr++=MAP_BLANK;
	//211k-157k=54k
	
	for (i=0;i<MAP_LAVA_COUNT;i++)
		MazeHorizStripe(MAP_LAVA);
	
	for (i=0;i<MAP_WALL_COUNT;i++)
		MazeHorizStripe(MAP_ROCK);
	
	map_ptr=&map_data[0][0];
	for (i=0;i<MAP_HEIGHT*MAP_WIDTH;i++)
	{
		map_square=*map_ptr;
		if (map_square==MAP_BLANK)
		{
			rand_tile=rand8(4);
			//*DEBUG='0'+rand_tile;
			switch(rand_tile)
			{
				//case 0: leave as is
				case 1:
					*map_ptr=MAP_BLANK_90;
					break;
				case 2:
					*map_ptr=MAP_BLANK_180;
					break;
				case 3:
					*map_ptr=MAP_BLANK_270;
					break;
			}
		}
		map_ptr++;
	}		
	map_data[HERO_START_Y][HERO_START_X]=MAP_BLANK;
	
	map_data[MAP_HEIGHT/2+rand8(MAP_HEIGHT/2)][MAP_WIDTH/2+rand8(MAP_WIDTH/2)]=MAP_EXIT;
	
	return 0;
}

int MazeHorizStripe(unsigned char value)
{
	signed char stripe_X=rand8(MAP_WIDTH);
	signed char stripe_Y=rand8(MAP_HEIGHT);
	unsigned char stripe_width = rand8(MAP_LAVA_SIZE-1)+1;
    unsigned char stripe_height = rand8(MAP_LAVA_SIZE-1)+1;
	char stripe_dx, stripe_dy;
	char i,j;
	
	if (rand5050()) stripe_dx = -1;
    else stripe_dx = 1;

    if (rand5050()) stripe_dy = -1;
    else stripe_dy = 1;
		
    for (i=0;i<stripe_height;i++)
	{
        for (j=0;j<stripe_width;j++)
		{
            if ((stripe_X<MAP_WIDTH)&&(stripe_Y<MAP_HEIGHT))
                if ((stripe_X>=0)&&(stripe_Y>=0))
                    map_data[stripe_Y][stripe_X] = value;
            stripe_X+=stripe_dx;
		}
        stripe_Y+=stripe_dy;
	}	
	return 0;
}

//Use video memory as buffer for expanding
int RotateTile90(int dest, int src)
{
	register unsigned char *dest_ptr=tiles[dest];
	register unsigned char *src_ptr=tiles[src];
	register unsigned char row_count=src_ptr[1];
	register unsigned char t_count, t_color;
	register unsigned char i,j;
	
	src_ptr=CalcXY(0,0);
	for (i=0;i<(row_count+1);i++)
	{
		for (j=0;j<row_count+1;j++)
		{
			*src_ptr++=COLOR_TRANSPARENT;
		}
		src_ptr+=SCREEN_WIDTH-row_count-1;
	}
	DrawTile(src,1,1);
	src_ptr=CalcXY(1,row_count);
	*dest_ptr++=row_count;	//Width
	*dest_ptr++=row_count;	//Height
	for (i=0;i<row_count;i++)
	{	
		t_count=1;
		t_color=*src_ptr;
		src_ptr-=SCREEN_WIDTH;
		for (j=0;j<row_count-1;j++)
		{
			if (*src_ptr==t_color) t_count++;
			else
			{
				*dest_ptr++=t_count;
				*dest_ptr++=t_color;
				t_count=1;
				t_color=*src_ptr;
			}
			//*src_ptr=COLOR_RED;
			//BRK
			src_ptr-=SCREEN_WIDTH;
		}
		//BRK
		*dest_ptr++=t_count;
		*dest_ptr++=t_color;
		*dest_ptr++=0;
		src_ptr+=SCREEN_WIDTH*row_count+1;
	}
	return 0;
}
#pragma code-name (pop)

int main(void)
{
	unsigned char key,timer_s,ret_val;
	
	Setup();	
	//From here bottom half of screen points to second ROM
	LoadStrings();
	LoadTiles();
	MakeMap();
	LoadMonsters();
	LoadCrystals();
	InitHero();
	CalcStats();
	//From here second ROM is banked out and screen is active
	EnableGfxRAM();
	ColorHero();
	ResetGame();
	DrawFrame();
	DrawLegend();
	
	while(1)
	{
		if (timer_s!=*TIMER_S)
		{
			timer_s=*TIMER_S;
			if (output_mode==OUTPUT_GAME) TickHandler();
		}
		key=*KB_INPUT;
		if (key!=0)
		{
			EnableBankROM();
			if (output_mode==OUTPUT_GAME) ret_val=KeyHandlerGame(key);
			else ret_val=KeyHandlerMenu(key);
			EnableGfxRAM();
			if (ret_val&FLAG_DRAWMENUBORDER) DrawMenuBorder();
			if (ret_val&FLAG_UPDATETARGET) UpdateTarget();
			if (ret_val&FLAG_DRAWMENU) DrawMenu();
			if (ret_val&FLAG_DRAWFRAME) DrawFrame();
			if (ret_val&FLAG_DRAWLEGEND) DrawLegend();
			if (ret_val&FLAG_DRAWMENUINVENTORY) DrawMenuInventory();
			if (ret_val&FLAG_DRAWSKILLS) DrawSkills();	
			if (ret_val&FLAG_DRAWRESOURCES) DrawResources();
		}
	}
	return 0;
}


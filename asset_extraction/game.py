import pygame
import random
import chartable
import sys
import csv
import math

MAZE_WIDTH=40
MAZE_HEIGHT=20

LEGEND_WIDTH=32*3*4
LEGEND_HEIGHT=32*4*4

DIRECTION_NONE=0
DIRECTION_UP=1
DIRECTION_DOWN=2
DIRECTION_LEFT=3
DIRECTION_RIGHT=4

OUTPUT_GAME=0
OUTPUT_CHARACTER=1
OUTPUT_SKILLS=2
OUTPUT_RESOURCES=3
OUTPUT_GAME_OVER=4

MAP_BLANK=0
MAP_BLANK_90=1
MAP_BLANK_180=2
MAP_BLANK_270=3
MAP_ROCK=4
MAP_LAVA=5
MAP_EXIT=6

HERO_START_X=1
HERO_START_Y=1

BOT_HP = 30

SKILL_BATTERY_SAVER=0
SKILL_BOUNTY_HUNTER=1
SKILL_FAST_DIGGER=2
SKILL_LUCKY_DRILLER=3
SKILL_MASTER_MINER=4
SKILL_LUCKY_CRIT=5
SKILL_CRIT_LORD=6
SKILL_EXPERIENCED=7
SKILL_INSTAKILL=8
SKILL_GHOST=9
SKILL_FREE_LUNCH=10
SKILL_WISE_REWARDS=11
SKILL_BIG_DISCOUNT=12
SKILL_ONLY_THE_BEST=13
SKILL_CRYSTALSMITH=14


def Color(r,g,b):
    return (r*85,g*85,b*85)

COLOR_BLACK=Color(0,0,0)
COLOR_WHITE=Color(3,3,3)

COLOR_GREEN=Color(0,3,0)
COLOR_RED=Color(3,0,0)
COLOR_DARK_RED=Color(2,0,0)
COLOR_BLUE=Color(0,0,3)
COLOR_DARK_BLUE=Color(0,0,2)
COLOR_DARK_GREEN=Color(0,2,0)
COLOR_PURPLE=Color(2,0,3)
COLOR_DARK_PURPLE=Color(1,0,2)
COLOR_ORANGE=Color(3,2,0)
COLOR_DARK_ORANGE=Color(2,1,0)
COLOR_YELLOW=Color(3,3,0)
COLOR_DARK_YELLOW=Color(2,2,0)
COLOR_GRAY_1=Color(1,1,1)
COLOR_GRAY_2=Color(2,2,2)

COLOR_ROCK=COLOR_DARK_PURPLE
COLOR_DIRT=Color(3, 2, 3)
COLOR_LAVA=COLOR_ORANGE
COLOR_MINERAL_RED1=Color(3,1,1)
COLOR_MINERAL_RED2=Color(3,2,2)
COLOR_MINERAL_YELLOW1=Color(3,3,1)
COLOR_MINERAL_YELLOW2=Color(3,3,2)
COLOR_MINERAL_BLUE1=Color(1,1,3)
COLOR_MINERAL_BLUE2=Color(2,2,3)
COLOR_EXIT=Color(1,1,3)

COLOR_HP=COLOR_RED
COLOR_BATT=COLOR_BLUE
COLOR_DMG=Color(1,0,0)
COLOR_CRIT=COLOR_DMG
COLOR_MINE=Color(3,1,1)
COLOR_DRILL=Color(2,0,3)
COLOR_LAVA_RES=Color(3,2,0)

COLOR_MENU_CHAR=Color(0,2,0)
COLOR_MENU_SKILLS=Color(0,0,2)
COLOR_MENU_RESOURCES=Color(2,0,0)

def LoadColorTable():
    item_colors["Basic Head"]={
        (127,127,127,255):COLOR_GRAY_1,         #Outline
        (0,0,255,255):COLOR_GRAY_2,             #Body
        (255,128,0,255):COLOR_GRAY_2,           #Antenna
        (0,255,0,255):COLOR_GREEN,              #Antenna light
        (255,0,0,255):COLOR_WHITE}              #Mouth

    item_colors["Head MKII"]={
        (127,127,127,255):COLOR_GRAY_1,             #Outline
        (0,0,255,255):Color(2,2,3),                 #Body
        (255,128,0,255):Color(2,2,3),               #Antenna
        (0,255,0,255):COLOR_BLUE,                   #Antenna light
        (255,0,0,255):COLOR_WHITE}                  #Mouth

    item_colors["Head MKIII"]={
        (127,127,127,255):COLOR_GRAY_1,             #Outline
        (0,0,255,255):Color(1,1,3),                 #Body
        (255,128,0,255):Color(1,1,3),  #Antenna
        (0,255,0,255):COLOR_YELLOW,                 #Antenna light
        (255,0,0,255):COLOR_WHITE}                  #Mouth

    item_colors["Head MKIV"]={
        (127,127,127,255):COLOR_GRAY_1,             #Outline
        (0,0,255,255):Color(0,0,2),                 #Body
        (255,128,0,255):Color(0,0,2),               #Antenna
        (0,255,0,255):COLOR_PURPLE,                 #Antenna light
        (255,0,0,255):COLOR_WHITE}                  #Mouth

    item_colors["Lightning"]={
        (127,127,127,255):COLOR_BLUE,               #Outline
        (0,0,255,255):COLOR_WHITE,                  #Body
        (255,128,0,255):COLOR_WHITE,                #Antenna
        (0,255,0,255):COLOR_BLUE,                   #Antenna light
        (255,0,0,255):COLOR_RED}                    #Mouth


    item_colors["Basic Body"]={
        (255,255,0,255):COLOR_GRAY_1,               #Outline
        (192,192,192,255):COLOR_GRAY_2}             #Body

    item_colors["Tin Body"]={
        (255,255,0,255):COLOR_GRAY_1,               #Outline
        (192,192,192,255):Color(3,2,2)}             #Body

    item_colors["Iron Body"]={
        (255,255,0,255):COLOR_GRAY_1,               #Outline
        (192,192,192,255):Color(3,1,1)}             #Body

    item_colors["Steel Body"]={
        (255,255,0,255):COLOR_GRAY_1,               #Outline
        (192,192,192,255):Color(2,0,0)}             #Body

    item_colors["Fortress"]={
        (255,255,0,255):COLOR_RED,                  #Outline
        (192,192,192,255):COLOR_WHITE}              #Body


    item_colors["Basic Legs"]={
        (0,128,0,255):COLOR_GRAY_1,                 #Outline
        (128,255,0,255):COLOR_GRAY_2}               #Body

    item_colors["Fast Legs"]={
        (0,128,0,255):COLOR_GRAY_1,                 #Outline
        (128,255,0,255):Color(2,3,2)}               #Body

    item_colors["Quick Legs"]={
        (0,128,0,255):COLOR_GRAY_1,                 #Outline
        (128,255,0,255):Color(1,3,1)}               #Body

    item_colors["Agile Legs"] = {
        (0, 128, 0, 255): COLOR_GRAY_1,             # Outline
        (128, 255, 0, 255): Color(0, 2, 0)}         # Body

    item_colors["Mustang"] = {
        (0, 128, 0, 255): COLOR_GREEN,              # Outline
        (128, 255, 0, 255): COLOR_WHITE}            # Body


    item_colors["Basic Gun"]={
        (128,0,255,255):COLOR_GRAY_1,               #Body
        (128,0,128,255):COLOR_GRAY_2}               #Detail

    item_colors["Blaster"]={
        (128,0,255,255):COLOR_GRAY_1,               #Body
        (128,0,128,255):Color(3,2,3)}               #Detail

    item_colors["Laser"]={
        (128,0,255,255):COLOR_GRAY_1,               #Body
        (128,0,128,255):Color(3,1,3)}               #Detail

    item_colors["Phaser"]={
        (128,0,255,255):COLOR_GRAY_1,               #Body
        (128,0,128,255):Color(2,0,2)}               #Detail

    item_colors["Death Ray"]={
        (128,0,255,255):(255,0,254),                #Body
        (128,0,128,255):COLOR_WHITE}                #Detail


    item_colors["Basic Tool"]={
        (0,128,255,255):COLOR_GRAY_2}               #Body

    item_colors["Rock Pick"] = {
        (0, 128, 255, 255):Color(3,3,2)}            # Body

    item_colors["Rock Drill"] = {
        (0, 128, 255, 255): Color(3, 3, 1)}         # Body

    item_colors["Rock Borer"] = {
        (0, 128, 255, 255): Color(2, 2, 0)}         # Body

    item_colors["Laser Bit"] = {
        (0, 128, 255, 255): COLOR_YELLOW}           # Body


    item_colors["Ground_0"]={
        (192, 192, 192, 255): COLOR_DIRT,       #Background
        (255, 0, 0, 255): COLOR_DARK_BLUE,      #Blue fleck
        (0, 0, 255, 255): COLOR_DARK_RED}       #Red fleck

    item_colors["Ground_90"]={
        (192, 192, 192, 255): COLOR_DIRT,       #Background
        (255, 0, 0, 255): COLOR_DARK_RED,       #Red fleck
        (0, 0, 255, 255): COLOR_DARK_GREEN}     #Green fleck

    item_colors["Ground_180"]={
        (192, 192, 192, 255): COLOR_DIRT,       #Background
        (255, 0, 0, 255): COLOR_DARK_GREEN,     #Green fleck
        (0, 0, 255, 255): COLOR_DARK_YELLOW}    #Yellow fleck

    item_colors["Ground_270"]={
        (192, 192, 192, 255): COLOR_DIRT,       #Background
        (255, 0, 0, 255): COLOR_DARK_YELLOW,    #Yellow fleck
        (0, 0, 255, 255): COLOR_DARK_BLUE}      #Blue fleck

    item_colors["Crystal_red"]={
        (192, 192, 192, 255): COLOR_ROCK,       #Rock base
        (255, 0, 0, 255): COLOR_DARK_BLUE,      #Blue fleck
        (0, 0, 255, 255): COLOR_DARK_RED,       #Red fleck
        (0, 255, 0, 255): COLOR_MINERAL_RED1,   #Big crystal color
        (255, 255, 0, 255): COLOR_MINERAL_RED2} #Small crystal color

    item_colors["Crystal_yellow"]={
        (192, 192, 192, 255): COLOR_ROCK,           #Rock base
        (255, 0, 0, 255): COLOR_DARK_BLUE,          #Blue fleck
        (0, 0, 255, 255): COLOR_DARK_RED,           #Red fleck
        (0, 255, 0, 255): COLOR_MINERAL_YELLOW1,    #Big crystal color
        (255, 255, 0, 255): COLOR_MINERAL_YELLOW2}  #Small crystal color

    item_colors["Crystal_blue"]={
        (192, 192, 192, 255): COLOR_ROCK,           #Rock base
        (255, 0, 0, 255): COLOR_DARK_BLUE,          #Blue fleck
        (0, 0, 255, 255): COLOR_DARK_RED,           #Red fleck
        (0, 255, 0, 255): COLOR_MINERAL_BLUE1,      #Big crystal color
        (255, 255, 0, 255): COLOR_MINERAL_BLUE2}    #Small crystal color

    item_colors["Rock"]={
        (192, 192, 192, 255): COLOR_ROCK,       #Rock color
        (255, 0, 0, 255): COLOR_PURPLE,         #Purple fleck
        (0, 0, 255, 255): COLOR_DARK_BLUE}      #Dark blue fleck

    item_colors["Lava"]={
        (192, 192, 192, 255): COLOR_LAVA,       #Lava color
        (255, 0, 0, 255): COLOR_DARK_RED,       #Red fleck
        (0, 0, 255, 255): COLOR_YELLOW}         #Yellow fleck

    #item_colors["Crystal_base"]=item_colors["Crystal_red"]

    """
    item_colors["MenuNE"]={
        (0, 0, 255, 255): COLOR_GRAY_2,
        (0, 255, 0, 255): COLOR_GRAY_2,
        (255, 0, 0, 255): COLOR_GRAY_1}

    item_colors["MenuNW"]={
        (0, 0, 255, 255): COLOR_GRAY_2,
        (0, 255, 0, 255): COLOR_GRAY_2,
        (255, 0, 0, 255): COLOR_GRAY_1}

    item_colors["MenuSE"]={
        (0, 0, 255, 255): COLOR_GRAY_2,
        (0, 255, 0, 255): COLOR_GRAY_2,
        (255, 0, 0, 255): COLOR_GRAY_1}

    item_colors["MenuSW"]={
        (0, 0, 255, 255): COLOR_GRAY_2,
        (0, 255, 0, 255): COLOR_GRAY_2,
        (255, 0, 0, 255): COLOR_GRAY_1}

    item_colors["MenuN"]={
        (0, 255, 0, 255): COLOR_GRAY_2,
        (255, 0, 0, 255): COLOR_GRAY_1}

    item_colors["MenuS"] = item_colors["MenuN"]
    item_colors["MenuE"] = item_colors["MenuN"]
    item_colors["MenuW"] = item_colors["MenuN"]
    """


def LoadStatsTable():
    item_stats["Basic Head"] = {
        "Class": "head",
        "Cost":0,
        "Type":"Basic",
        "Stats":[
            ["Batt",2]
        ]
    }

    item_stats["Head MKII"] = {
        "Class": "head",
        "Cost": 2,
        "CostType":"Blue",
        "Type": "Green",
        "Stats":[
                ["Batt", 4]
            ]
        }

    item_stats["Head MKIII"] = {
        "Class": "head",
        "Cost": 5,
        "CostType":"Blue",
        "Type": "Blue",
        "Stats":[
                ["Batt", 5],
                ["Crit", 5]
            ]
        }

    item_stats["Head MKIV"] = {
        "Class": "head",
        "Cost": 8,
        "CostType": "Yellow",
        "Type": "Purple",
        "Stats": [
            ["Batt", 8],
            ["Crit", 10],
            ["Drill", 2]
        ]
    }

    item_stats["Lightning"] = {
        "Class": "head",
        "Cost": 15,
        "CostType": "Red",
        "Type": "Yellow",
        "Stats": [
            ["Batt", 12],
            ["Crit", 20],
            ["Batt Recharge", 1]
        ]
    }

    item_stats["Basic Body"] = {
        "Class": "body",
        "Cost": 0,
        "Type": "Basic",
        "Stats": [
            ["HP", 5]
        ]
    }

    item_stats["Tin Body"] = {
        "Class": "body",
        "Cost": 2,
        "CostType": "Red",
        "Type": "Green",
        "Stats": [
            ["HP", 8]
        ]
    }

    item_stats["Iron Body"] = {
        "Class": "body",
        "Cost": 5,
        "CostType": "Blue",
        "Type": "Blue",
        "Stats": [
            ["HP", 10],
            ["Batt",3]
        ]
    }

    item_stats["Steel Body"] = {
        "Class": "body",
        "Cost": 8,
        "CostType": "Yellow",
        "Type": "Purple",
        "Stats": [
            ["HP", 12],
            ["Batt",5],
            ["Dmg",2]
        ]
    }

    item_stats["Fortress"] = {
        "Class": "body",
        "Cost": 15,
        "CostType": "Blue",
        "Type": "Yellow",
        "Stats": [
            ["HP", 20],
            ["Batt", 10],
            ["HP Recharge", 1]
        ]
    }


    item_stats["Basic Legs"] = {
        "Class": "legs",
        "Cost": 0,
        "Type": "Basic",
        "Stats": [
            ["HP", 3]
        ]
    }

    item_stats["Fast Legs"] = {
        "Class": "legs",
        "Cost": 2,
        "CostType": "Red",
        "Type": "Green",
        "Stats": [
            ["HP", 5]
        ]
    }

    item_stats["Quick Legs"] = {
        "Class": "legs",
        "Cost": 5,
        "CostType": "Red",
        "Type": "Blue",
        "Stats": [
            ["HP", 6],
            ["Lava",25]
        ]
    }

    item_stats["Agile Legs"] = {
        "Class": "legs",
        "Cost": 8,
        "CostType": "Blue",
        "Type": "Purple",
        "Stats": [
            ["HP", 7],
            ["Lava",50],
            ["Mine",2]
        ]
    }

    item_stats["Mustang"] = {
        "Class": "legs",
        "Cost": 15,
        "CostType": "Red",
        "Type": "Yellow",
        "Stats": [
            ["HP", 12],
            ["Dmg",4],
            ["Lava Heals",0]
        ]
    }

    item_stats["Basic Gun"] = {
        "Class": "gun",
        "Cost": 0,
        "Type": "Basic",
        "Stats": [
            ["Dmg", 4]
        ]
    }

    item_stats["Blaster"] = {
        "Class": "gun",
        "Cost": 2,
        "CostType": "Yellow",
        "Type": "Green",
        "Stats": [
            ["Dmg", 6]
        ]
    }

    item_stats["Laser"] = {
        "Class": "gun",
        "Cost": 5,
        "CostType": "Red",
        "Type": "Blue",
        "Stats": [
            ["Dmg", 8],
            ["Crit",10]
        ]
    }

    item_stats["Phaser"] = {
        "Class": "gun",
        "Cost": 8,
        "CostType": "Blue",
        "Type": "Purple",
        "Stats": [
            ["Dmg", 10],
            ["Crit",15],
            ["Batt",2]
        ]
    }

    item_stats["Death Ray"] = {
        "Class": "gun",
        "Cost": 15,
        "CostType": "Yellow",
        "Type": "Yellow",
        "Stats": [
            ["Dmg", 12],
            ["Crit", 30],
            ["50% Attack Cost", 0]
        ]
    }

    item_stats["Basic Tool"] = {
        "Class": "tool",
        "Cost": 0,
        "Type": "Basic",
        "Stats": [
            ["Mine", 1],
        ]
    }

    item_stats["Rock Pick"] = {
        "Class": "tool",
        "Cost": 2,
        "CostType": "Yellow",
        "Type": "Green",
        "Stats": [
            ["Mine", 2]
        ]
    }

    item_stats["Rock Drill"] = {
        "Class": "tool",
        "Cost": 5,
        "CostType": "Yellow",
        "Type": "Blue",
        "Stats": [
            ["Mine", 3],
            ["Drill", 2]
        ]
    }

    item_stats["Rock Borer"] = {
        "Class": "tool",
        "Cost": 8,
        "CostType": "Red",
        "Type": "Purple",
        "Stats": [
            ["Mine", 5],
            ["Drill", 3],
            ["Batt", 3]
        ]
    }

    item_stats["Laser Bit"] = {
        "Class": "tool",
        "Cost": 15,
        "CostType": "Yellow",
        "Type": "Yellow",
        "Stats": [
            ["1s Mine", 0],
            ["1s Drill", 0],
            ["50% Mine Cost", 3]
        ]
    }

    for i in item_stats.keys():
        item_stats[i]["tile"]=tiles["Menu_"+item_stats[i]["Class"]+"_raw"].copy()
        ColorTile(item_stats[i]["tile"],item_colors[i])

    item_stats["Res_HP_Heal"] = {
        "Class":"Res Only",
        "Caption":"Heals HP to\nfull",
        "Cost":1,
        "CostType":"Red"
    }

    item_stats["Res_Batt_Heal"] = {
        "Class": "Res Only",
        "Caption": "Recharges\nbattery to\nfull",
        "Cost": 1,
        "CostType": "Blue"
    }

    item_stats["Res_HP_Upgrade"] = {
        "Class":"Res Only",
        "Caption":"+1 HP",
        "Cost":10,
        "CostType":"Red"
    }

    item_stats["Res_Batt_Upgrade"] = {
        "Class": "Res Only",
        "Caption": "+1 Batt",
        "Cost": 10,
        "CostType": "Blue"
    }

    item_stats["Res_Exp_Upgrade"] = {
        "Class":"Res Only",
        "Caption":"+1 Exp point",
        "Cost":1,
        "CostType":"Yellow"
    }

    item_stats["Res_Dmg_Upgrade"] = {
        "Class": "Res Only",
        "Caption": "+1 Dmg",
        "Cost": 10,
        "CostType": "Yellow"
    }


def LoadSkillInfo():
    global skill_info
    skill_info += [{"Color":Color(0,2,0), "Title":"Battery Saver", "Caption":"20% chance that\nmining won't\nconsume energy"}]
    skill_info += [{"Color":Color(0,2,0), "Title":"Bounty Hunter", "Caption":"10% chance of\nmineral when\nyou kill an\nenemy"}]
    skill_info += [{"Color":Color(0,2,0), "Title":"Fast Digger", "Caption":"-2 Mine and\nDrill time"}]
    skill_info += [{"Color":Color(0,2,0), "Title":"Lucky Driller", "Caption":"25% chance of\nmineral when\nmining rock"}]
    skill_info += [{"Color":Color(0,2,0), "Title":"Master Miner", "Caption":"Mine double\nminerals"}]

    skill_info += [{"Color":Color(1, 1, 3), "Title":"Lucky Crit", "Caption":"+20% chance of\ncritical hit"}]
    skill_info += [{"Color":Color(1, 1, 3), "Title":"Crit Lord", "Caption":"Crit damage\nraised from\n150% to 200%"}]
    skill_info += [{"Color":Color(1, 1, 3), "Title":"Experienced", "Caption":"+10% bonus to\nexperience on\nkill"}]
    skill_info += [{"Color":Color(1, 1, 3), "Title":"Instakill", "Caption":"5% chance to\nkill enemy in\none hit"}]
    skill_info += [{"Color":Color(1, 1, 3), "Title":"Ghost", "Caption":"Walk through\nenemies"}]

    skill_info += [{"Color":Color(3, 1, 1), "Title":"Free Lunch", "Caption":"20% chance that\ncrafting will\ncost nothing"}]
    skill_info += [{"Color":Color(3, 1, 1), "Title":"Wise Rewards", "Caption":"+5 random\nmineral when\nleveling up"}]
    skill_info += [{"Color":Color(3, 1, 1), "Title":"Big Discount", "Caption":"-1 to cost of\nitems"}]
    skill_info += [{"Color":Color(3, 1, 1), "Title":"Only the Best", "Caption":"10% chance\nthat crafted\nitems will be\nyellow quality"}]
    skill_info += [{"Color":Color(3, 1, 1), "Title":"Crystalsmith", "Caption":"Pay with any\ncrystal"}]

    for i in range(len(skill_info)):
        if i % 5==0:
            skill_info[i]["Unlocked"] = True
        else:
            skill_info[i]["Unlocked"] = False
        skill_info[i]["Active"]=False


def MakeTile(x,y,width,height,tile_source):
    new_tile=pygame.Surface((width*4,height*4))
    new_tile.set_colorkey((255,0,255))
    for i in range(height):
        for j in range(width):
            color=tile_source.get_at((x+j,y+i))
            if color==(255,0,255,255):
                pygame.draw.rect(new_tile, (255, 0, 255), (j * 4, i * 4, 4, 4))
            elif color==(0,255,255,255):
                pygame.draw.rect(new_tile,(255,0,255),(j*4,i*4,4,4))
            else:
                pygame.draw.rect(new_tile,color,(j*4,i*4,4,4))
    return new_tile

def ColorTile(tile,color_dict):
    for i in range(tile.get_height()):
        for j in range(tile.get_width()):
            color=tuple(tile.get_at((j,i)))
            if color in color_dict:
                tile.set_at((j,i),color_dict[color])


def RotateTile90(tile):
    new_tile=pygame.Surface((tile.get_width(),tile.get_height()))
    for i in range(tile.get_height()):
        for j in range(tile.get_width()):
            new_tile.set_at((tile.get_width()-1-i,j),tile.get_at((j,i)))
    return new_tile

def LoadTiles():
    tile_set = pygame.image.load("tiles.png")
    tiles["Robot_raw_left"]=MakeTile(0, 0, 32, 32, tile_set)
    tiles["Robot_raw_right"] = MakeTile(32, 32, 32, 32, tile_set)

    tiles["Monster"]=MakeTile(192, 32, 32, 32, tile_set)
    tiles["Monster dead"] = MakeTile(192, 96, 32, 32, tile_set)

    tiles["Crystal_raw"]=MakeTile(96, 0, 32, 32, tile_set)
    tiles["Crystal_red"] = tiles["Crystal_raw"].copy()
    tiles["Crystal_yellow"] = tiles["Crystal_raw"].copy()
    tiles["Crystal_blue"] = tiles["Crystal_raw"].copy()
    tiles["Crystal_base"] = MakeTile(224,0,32,32,tile_set)

    tiles["Ground_raw"]=MakeTile(32, 0, 32, 32, tile_set)
    tiles["Ground_0"]=tiles["Ground_raw"].copy()
    tiles["Ground_90"] = RotateTile90(tiles["Ground_0"])
    tiles["Ground_180"] = RotateTile90(tiles["Ground_90"])
    tiles["Ground_270"] = RotateTile90(tiles["Ground_180"])

    tiles["Lava"] = tiles["Ground_raw"].copy()
    tiles["Rock"] = tiles["Ground_raw"].copy()
    tiles["Legend"] = pygame.Surface((LEGEND_WIDTH, LEGEND_HEIGHT))

    tiles["Hero target"] = MakeTile(160, 64, 32, 32, tile_set)

    tiles["Menu_corner_raw"] = MakeTile(192, 64, 32, 32, tile_set)
    tiles["MenuNE"]=tiles["Menu_corner_raw"].copy()
    tiles["MenuNW"] = RotateTile90(tiles["MenuNE"])
    tiles["MenuSW"] = RotateTile90(tiles["MenuNW"])
    tiles["MenuSE"] = RotateTile90(tiles["MenuSW"])
    tiles["Menu_edge_raw"] = MakeTile(224, 64, 32, 32, tile_set)
    tiles["MenuN"] = tiles["Menu_edge_raw"].copy()
    tiles["MenuE"] = RotateTile90(tiles["MenuN"])
    tiles["MenuS"] = RotateTile90(tiles["MenuE"])
    tiles["MenuW"] = RotateTile90(tiles["MenuS"])
    tiles["Menu_item_slot"] = MakeTile(48, 96, 16, 16, tile_set)
    tiles["Menu_item_selector"] = MakeTile(64, 96, 17, 17, tile_set)
    tiles["Menu_skill_selector"] = MakeTile(120, 176, 24, 24, tile_set)

    tiles["Menu_body_raw"] = MakeTile(0, 96, 16, 16, tile_set)
    tiles["Menu_legs_raw"] = MakeTile(16, 96, 16, 16, tile_set)
    tiles["Menu_gun_raw"] = MakeTile(0, 112, 16, 16, tile_set)
    tiles["Menu_head_raw"] = MakeTile(16, 112, 16, 16, tile_set)
    tiles["Menu_tool_raw"] = MakeTile(32, 112, 16, 16, tile_set)

    tiles["Exit"] = MakeTile(160, 96, 32, 32, tile_set)

    tiles["Skills"]=[]
    for i in range(10):
        tiles["Skills"] += [MakeTile(i*24, 152, 24, 24, tile_set)]
    for i in range(5):
        tiles["Skills"] += [MakeTile(i*24, 176, 24, 24, tile_set)]

    tiles["Skills_colored"]=[]
    for i in range(5):
        new_tile=tiles["Skills"][i].copy()
        ColorTile(new_tile,{(85,85,85,255):Color(0,1,0),
                            (170,170,170,255): Color(0, 2, 0)})
        tiles["Skills_colored"] += [new_tile]
    for i in range(5,10):
        new_tile=tiles["Skills"][i].copy()
        ColorTile(new_tile,{(85,85,85,255):Color(0,0,1),
                            (170,170,170,255): Color(1, 1, 3)})
        tiles["Skills_colored"] += [new_tile]
    for i in range(10,15):
        new_tile=tiles["Skills"][i].copy()
        ColorTile(new_tile,{(85,85,85,255):Color(1,0,0),
                            (170,170,170,255): Color(3, 1, 1)})
        tiles["Skills_colored"] += [new_tile]

    tiles["Res_HP_Heal"] = MakeTile(240, 32, 16, 16, tile_set)
    tiles["Res_Batt_Heal"] = MakeTile(240, 48, 16, 16, tile_set)
    tiles["Res_HP_Upgrade"] = MakeTile(224, 32, 16, 16, tile_set)
    tiles["Res_Batt_Upgrade"] = MakeTile(224, 48, 16, 16, tile_set)
    tiles["Res_Exp_Upgrade"] = MakeTile(224, 96, 16, 16, tile_set)
    tiles["Res_Dmg_Upgrade"] = MakeTile(240, 96, 16, 16, tile_set)

    for k in tiles:
        if k in item_colors.keys():
            ColorTile(tiles[k],item_colors[k])


def DrawText(msg,tile,x,y,fg_color,bg_color):
    cx=x
    cy=y
    for char in msg:
        if char=='\n':
            cx=x
            cy+=10*4
        else:
            for line in chartable.char[char]:
                for pixel in range(6):
                    if line & (1<<(pixel+3)):
                        pygame.draw.rect(tile,fg_color,(cx,cy,4,4))
                    else:
                        if bg_color!=0:
                            pygame.draw.rect(tile, bg_color, (cx, cy, 4, 4))
                    cx+=1*4
                cx-=6*4
                cy+=1*4
            cy-=8*4
            cx+=6*4

def MazeHorizStripe(maze, max_width, max_height, width, height, value):
    stripe_X = random.randrange(max_width)
    stripe_Y = random.randrange(max_height)
    stripe_width = random.randint(1, width)
    stripe_height = random.randint(1, height)
    if random.randint(0, 1):
        stripe_dx = -1
    else:
        stripe_dx = 1

    if random.randint(0, 1):
        stripe_dy = -1
    else:
        stripe_dy = 1

    for _ in range(stripe_height):
        for _ in range(stripe_width):
            if stripe_X < max_width and stripe_Y < max_height:
                if stripe_X >= 0 and stripe_Y >= 0:
                    maze[stripe_Y][stripe_X] = value
            stripe_X += stripe_dx
        stripe_Y += stripe_dy

def MakeMaze(width,height):
    new_maze=[[MAP_BLANK for _ in range(width)] for _ in range(height)]

    # Lava
    for _ in range(20):
        MazeHorizStripe(new_maze, width, height, 5, 5, MAP_LAVA)

    # Horizontal walls
    for _ in range(60):
        MazeHorizStripe(new_maze,width,height,5,5,MAP_ROCK)

    for i in range(MAZE_HEIGHT):
        for j in range(MAZE_WIDTH):
            if new_maze[i][j]==MAP_BLANK:
                if random.randrange(4)==0:
                    new_maze[i][j]=MAP_BLANK
                elif random.randrange(3) == 0:
                    new_maze[i][j] = MAP_BLANK_90
                elif random.randrange(2) == 0:
                    new_maze[i][j] = MAP_BLANK_180
                else:
                    new_maze[i][j] = MAP_BLANK_270

    #Hero starts on dirt
    new_maze[HERO_START_Y][HERO_START_X]=MAP_BLANK

    #Create exit in bottom right quadrant
    new_maze[int(MAZE_HEIGHT/2+random.randrange(MAZE_HEIGHT/2))][int(MAZE_WIDTH/2+random.randrange(MAZE_WIDTH/2))]=MAP_EXIT

    return new_maze

def LoadMonsters():
    monster_list=[]
    monster_count=40
    while monster_count:
        m_X=random.randrange(MAZE_WIDTH)
        m_Y = random.randrange(MAZE_HEIGHT)
        if not ((m_X == HERO_START_X) and (m_Y == HERO_START_Y)):
            if maze_data[m_Y][m_X] in [MAP_BLANK, MAP_BLANK_90, MAP_BLANK_180, MAP_BLANK_270]:
                if CheckForMonster(monster_list,m_X,m_Y)==False:
                    new_monster={}
                    new_monster["HP"]=10
                    new_monster["HP Max"] = 10
                    new_monster["Active"]=True
                    new_monster["X"] = m_X
                    new_monster["Y"] = m_Y
                    monster_list+=[new_monster]
                    monster_count-=1
    return monster_list

def LoadMinerals():
    mineral_list=[]
    mineral_count=40
    while mineral_count:
        m_X = random.randrange(MAZE_WIDTH)
        m_Y = random.randrange(MAZE_HEIGHT)
        if not ((m_X==HERO_START_X) and (m_Y==HERO_START_Y)):
            if maze_data[m_Y][m_X] in [MAP_BLANK, MAP_BLANK_90, MAP_BLANK_180, MAP_BLANK_270, MAP_ROCK]:
                if CheckForMineral(mineral_list, m_X, m_Y) == False:
                    if CheckForMonster(monster_data, m_X, m_Y) == False:
                        new_mineral={}
                        if random.randint(0, 2)==0:
                            new_mineral["Type"]="Red"
                        elif random.randint(0, 1)==0:
                            new_mineral["Type"]="Yellow"
                        else:
                            new_mineral["Type"] = "Blue"

                        new_mineral["Active"]=True
                        new_mineral["X"]=m_X
                        new_mineral["Y"] = m_Y
                        mineral_list+=[new_mineral]
                        mineral_count-=1
    return mineral_list

def CheckForMonster(monsters,map_x, map_y):
    for i in monsters:
        if i["Active"]:
            if i["X"]==map_x:
                if i["Y"]==map_y:
                    return True
    return False

def CheckForMineral(minerals,map_x, map_y):
    for i in minerals:
        if i["X"]==map_x:
            if i["Y"]==map_y:
                return True
    return False

def CalculateTarget():
    ret_x=hero["X"]
    ret_y=hero["Y"]
    if hero["target_direction"]==DIRECTION_UP and hero["Y"]>0:
        ret_y-=1
    elif hero["target_direction"]==DIRECTION_DOWN and hero["Y"]<3:
        ret_y+=1
    elif hero["target_direction"]==DIRECTION_LEFT and hero["X"]>0:
        ret_x-=1
    elif hero["target_direction"]==DIRECTION_RIGHT and hero["X"]<4:
        ret_x+=1
    else:
        return None
    return (ret_x,ret_y)

def AddExp(exp):
    hero["Exp"]+=exp
    if hero["Exp"]>=hero["Exp Max"]:
        hero["Exp"] -= hero["Exp Max"]
        hero["Exp Max"] += 10
        hero["Level"] += 1
        hero["Points"] += 1
        hero["HP"] = hero["HP Max"]
        hero["Batt"] = hero["Batt Max"]
        if skill_info[SKILL_WISE_REWARDS]["Active"]:
            temp_rand = random.randrange(3)
            if temp_rand == 0:
                hero["Blue"] += 5
            elif temp_rand == 1:
                hero["Red"] += 5
            else:
                hero["Yellow"] += 5


def DrawBar(x,y,stat,stat_max,fg_color,bg_color):
    pygame.draw.rect(tiles["Legend"],bg_color,(x,y,80*4,6*4))
    pygame.draw.rect(tiles["Legend"], fg_color, (x, y, int(80*stat/stat_max) * 4, 6 * 4))

def DrawMazeLegend():
    # Draw maze
    MAZE_TOP=(LEGEND_HEIGHT - 20 * 2 * 4 - 4 * 4)
    for i in range(MAZE_HEIGHT):
        for j in range(MAZE_WIDTH):
            if maze_data[i][j] in [MAP_BLANK, MAP_BLANK_90, MAP_BLANK_180, MAP_BLANK_270]:
                color = COLOR_DIRT
            elif maze_data[i][j] == MAP_ROCK:
                color = COLOR_ROCK
            elif maze_data[i][j] == MAP_LAVA:
                color = COLOR_LAVA
            elif maze_data[i][j] == MAP_EXIT:
                color = COLOR_EXIT

            pygame.draw.rect(tiles["Legend"], color, (j * 8 + 8 * 4, i * 8 + MAZE_TOP, 8, 8))

            for k in monster_data:
                if k["X"]==j and k["Y"]==i:
                    if k["Active"]:
                        pygame.draw.rect(tiles["Legend"], COLOR_RED, (j * 8 + 8 * 4, i * 8 + MAZE_TOP, 8, 8))

            for k in mineral_data:
                if k["X"] == j and k["Y"] == i:
                    if k["Active"]:
                        pygame.draw.rect(tiles["Legend"], COLOR_YELLOW, (j * 8 + 8 * 4, i * 8 + MAZE_TOP, 8, 8))

    pygame.draw.rect(tiles["Legend"], COLOR_GREEN, (display_x * 8 + 8 * 4, display_y * 8 + MAZE_TOP, 40, 4))
    pygame.draw.rect(tiles["Legend"], COLOR_GREEN, (display_x * 8 + 8 * 4 , (display_y + 3) * 8 + MAZE_TOP + 4, 40, 4))
    pygame.draw.rect(tiles["Legend"], COLOR_GREEN, (display_x * 8 + 8 * 4, display_y * 8 + MAZE_TOP, 4, 32))
    pygame.draw.rect(tiles["Legend"], COLOR_GREEN, ((display_x + 4) * 8 + 8 * 4 + 4, display_y * 8 + MAZE_TOP, 4, 32))


def DrawLegend():

    #Blank legend
    pygame.draw.rect(tiles["Legend"],(64,64,64),(0,0,LEGEND_WIDTH,LEGEND_HEIGHT))

    #Draw text
    DrawText("HP:"+f"{hero['HP']}/{hero['HP Max']}".rjust(10," "), tiles["Legend"], 8 * 4, 4 * 4, COLOR_WHITE, 0)
    DrawBar(8*4,13*4,hero['HP'],hero['HP Max'],COLOR_RED,COLOR_DARK_RED)
    DrawText("Batt:"+f"{hero['Batt']}/{hero['Batt Max']}".rjust(8," "), tiles["Legend"], 8 * 4, 24 * 4, COLOR_WHITE, 0)
    DrawBar(8 * 4, 33 * 4, hero['Batt'], hero['Batt Max'], COLOR_BLUE, COLOR_DARK_BLUE)
    DrawText("Exp:"+f"{hero['Exp']}/{hero['Exp Max']}".rjust(9," "), tiles["Legend"], 8 * 4, 44 * 4, COLOR_WHITE, 0)
    DrawBar(8 * 4, 53 * 4, hero['Exp'], hero['Exp Max'], COLOR_GREEN, COLOR_DARK_GREEN)

    target_xy=CalculateTarget()
    hero["target_type"]="None"
    if target_xy!=None:
        test_x = target_xy[0] + display_x
        test_y= target_xy[1] + display_y

        if maze_data[test_y][test_x]==MAP_ROCK:
            hero["target_type"]="Rock"
            hero["target_index"]=(test_x,test_y)
        elif maze_data[test_y][test_x]==MAP_EXIT:
            hero["target_type"]="Exit"
            hero["target_index"]=(test_x,test_y)


        if hero["target_type"]=="None":
            for i,mob in enumerate(monster_data):
                if mob["X"] == test_x:
                    if mob["Y"] == test_y:
                        if mob["Active"]:
                            hero["target_type"]="Monster"
                            hero["target_index"]=i
                            break

        if hero["target_type"] == "None":
            for i, mineral in enumerate(mineral_data):
                if mineral["Active"]:
                    if mineral["X"] == test_x:
                        if mineral["Y"] == test_y:
                            hero["target_type"] = "Mineral"
                            hero["target_index"] = i
                            break

    if hero["target_type"]=="Rock":
        DrawText("Rock", tiles["Legend"], 8 * 4, 64 * 4, COLOR_ROCK, 0)
        if hero["activity"]:
            DrawBar(8 * 4, 73 * 4, hero["activity_ticks"], hero["activity_ticks_max"], COLOR_PURPLE, COLOR_DARK_PURPLE)
    elif hero["target_type"]=="Monster":
        DrawText("Bot", tiles["Legend"], 8 * 4, 64 * 4, COLOR_DARK_RED, 0)
        if hero["activity"]:
            DrawBar(8 * 4, 73 * 4, hero["activity_ticks"], hero["activity_ticks_max"], COLOR_RED, COLOR_DARK_RED)
    elif hero["target_type"] == "Mineral":
        if mineral_data[hero["target_index"]]["Type"]=="Red":
            DrawText("Mineral", tiles["Legend"], 8 * 4, 64 * 4, COLOR_MINERAL_RED1, 0)
        elif mineral_data[hero["target_index"]]["Type"]=="Yellow":
            DrawText("Mineral", tiles["Legend"], 8 * 4, 64 * 4, COLOR_MINERAL_YELLOW1, 0)
        elif mineral_data[hero["target_index"]]["Type"]=="Blue":
            DrawText("Mineral", tiles["Legend"], 8 * 4, 64 * 4, COLOR_MINERAL_BLUE1, 0)
        if hero["activity"]:
            DrawBar(8 * 4, 73 * 4, hero["activity_ticks"], hero["activity_ticks_max"], COLOR_PURPLE, COLOR_DARK_PURPLE)
    elif hero["target_type"] == "Exit":
        DrawText("Exit", tiles["Legend"], 8 * 4, 64 * 4, COLOR_BLUE, 0)

    DrawMazeLegend()

    #Copy all to screen
    screen.blit(tiles["Legend"],(32*5*4,0))

def DrawFrame():
    for i in range(4):
        for j in range(5):
            index=maze_data[display_y+i][display_x+j]
            if index==MAP_BLANK:
                screen.blit(tiles["Ground_0"], (j * 32 * 4, i * 32 * 4))
            elif index==MAP_BLANK_90:
                screen.blit(tiles["Ground_90"], (j * 32 * 4, i * 32 * 4))
            elif index==MAP_BLANK_180:
                screen.blit(tiles["Ground_180"], (j * 32 * 4, i * 32 * 4))
            elif index==MAP_BLANK_270:
                screen.blit(tiles["Ground_270"], (j * 32 * 4, i * 32 * 4))
            elif index==MAP_LAVA:
                screen.blit(tiles["Lava"], (j * 32 * 4, i * 32 * 4))
            elif index==MAP_ROCK:
                screen.blit(tiles["Rock"], (j * 32 * 4, i * 32 * 4))
            elif index==MAP_EXIT:
                screen.blit(tiles["Exit"], (j * 32 * 4, i * 32 * 4))

            for k in monster_data:
                if k["X"]==display_x+j:
                    if k["Y"]==display_y+i:
                        if k["Active"]:
                            screen.blit(tiles["Monster"], (j * 32 * 4, i * 32 * 4))
                            #if k["HP"] < k["HP Max"]:
                            #    pygame.draw.rect(screen, COLOR_DARK_RED, (j * 32 * 4 + 4, i * 32 * 4, k["HP Max"] * 3 * 4, 4 * 4))
                            #    pygame.draw.rect(screen, COLOR_RED, (j * 32 * 4 + 4, i * 32 * 4, k["HP"]*3*4, 4*4))
                        else:
                            screen.blit(tiles["Monster dead"], (j * 32 * 4, i * 32 * 4))

            for k in mineral_data:
                if k["X"] == display_x + j:
                    if k["Y"] == display_y + i:
                        if k["Active"]:
                            if k["Type"]=="Red":
                                screen.blit(tiles["Crystal_red"], (j * 32 * 4, i * 32 * 4))
                            elif k["Type"]=="Yellow":
                                screen.blit(tiles["Crystal_yellow"], (j * 32 * 4, i * 32 * 4))
                            elif k["Type"]=="Blue":
                                screen.blit(tiles["Crystal_blue"], (j * 32 * 4, i * 32 * 4))
                        else:
                            screen.blit(tiles["Crystal_base"], (j * 32 * 4, i * 32 * 4))

    if hero["facing"]==DIRECTION_LEFT:
        screen.blit(tiles["Robot_left"], (hero["X"] * 4*32, hero["Y"] * 4*32))
    else:
        screen.blit(tiles["Robot_right"], (hero["X"] * 4 * 32, hero["Y"] * 4 * 32))

    target_xy=CalculateTarget()
    if target_xy!=None:
        screen.blit(tiles["Hero target"],(target_xy[0] * 4 * 32, target_xy[1] * 4 * 32))


def ColorHero():
    tiles["Robot_left"] = tiles["Robot_raw_left"].copy()
    tiles["Robot_right"] = tiles["Robot_raw_right"].copy()
    combined_colors={}
    combined_colors.update(item_colors[hero["equipped"]["head"]])
    combined_colors.update(item_colors[hero["equipped"]["body"]])
    combined_colors.update(item_colors[hero["equipped"]["legs"]])
    combined_colors.update(item_colors[hero["equipped"]["gun"]])
    combined_colors.update(item_colors[hero["equipped"]["tool"]])
    ColorTile(tiles["Robot_right"],combined_colors)
    ColorTile(tiles["Robot_left"], combined_colors)

def DrawItemStats(item,x,y,bg_color):
    if item in item_stats.keys():
        if item_stats[item]["Class"] == "Res Only":
            DrawText(item_stats[item]["Caption"], screen, (x + 2)*4, (y + 2)*4, COLOR_WHITE, bg_color)
        else:
            screen.blit(item_stats[item]["tile"], (x * 4, y * 4))
            if item_stats[item]["Type"] == "Basic":
                DrawText(item, screen, (x + 16 + 2) * 4, (y + 4) * 4, COLOR_BLACK, COLOR_GRAY_2)
            elif item_stats[item]["Type"] == "Green":
                DrawText(item, screen, (x + 16 + 2) * 4, (y + 4) * 4, COLOR_BLACK, COLOR_GREEN)
            elif item_stats[item]["Type"] == "Blue":
                DrawText(item, screen, (x + 16 + 2) * 4, (y + 4) * 4, COLOR_BLACK, Color(1, 1, 3))
            elif item_stats[item]["Type"] == "Purple":
                DrawText(item, screen, (x + 16 + 2) * 4, (y + 4) * 4, COLOR_BLACK, COLOR_PURPLE)
            elif item_stats[item]["Type"] == "Yellow":
                DrawText(item, screen, (x + 16 + 2) * 4, (y + 4) * 4, COLOR_BLACK, COLOR_YELLOW)

            stat_y = y + 15
            for l in item_stats[item]["Stats"]:
                if l[0] == "Batt":
                    DrawText("+" + str(l[1]) + " Batt", screen, (x + 16 + 2) * 4, stat_y * 4, COLOR_BATT, bg_color)
                elif l[0] == "Crit":
                    if bg_color == COLOR_CRIT:
                        DrawText("+" + str(l[1]) + "% Crit", screen, (x + 16 + 2) * 4, stat_y * 4, COLOR_RED, bg_color)
                    else:
                        DrawText("+" + str(l[1]) + "% Crit", screen, (x + 16 + 2) * 4, stat_y * 4, COLOR_CRIT, bg_color)
                elif l[0] == "Drill":
                    DrawText("-" + str(l[1]) + "s Drill", screen, (x + 16 + 2) * 4, stat_y * 4, COLOR_DRILL, bg_color)
                elif l[0] == "Batt Recharge":
                    DrawText("+"+str(l[1]) + "/s Batt", screen, (x + 16 + 2) * 4, stat_y * 4, COLOR_BATT, bg_color)
                elif l[0] == "HP":
                    DrawText("+"+str(l[1]) + " HP", screen, (x + 16 + 2) * 4, stat_y * 4, COLOR_HP, bg_color)
                elif l[0] == "Dmg":
                    if bg_color==COLOR_DMG:
                        DrawText("+" + str(l[1]) + " Dmg", screen, (x + 16 + 2) * 4, stat_y * 4, COLOR_RED, bg_color)
                    else:
                        DrawText("+" + str(l[1]) + " Dmg", screen, (x + 16 + 2) * 4, stat_y * 4, COLOR_DMG, bg_color)
                elif l[0] == "HP Recharge":
                    DrawText("+" + str(l[1]) + "/s HP", screen, (x + 16 + 2) * 4, stat_y * 4, COLOR_HP, bg_color)
                elif l[0] == "Lava":
                    DrawText("-" + str(l[1]) + "% Lava", screen, (x + 16 + 2) * 4, stat_y * 4, COLOR_LAVA, bg_color)
                elif l[0] == "Lava Heals":
                    DrawText("Lava Heals", screen, (x + 16 + 2) * 4, stat_y * 4, COLOR_HP, bg_color)
                elif l[0] == "Mine":
                    DrawText("-" + str(l[1]) + "s Mine", screen, (x + 16 + 2) * 4, stat_y * 4, COLOR_MINE, bg_color)
                elif l[0] == "50% Attack Cost":
                    if bg_color == COLOR_DMG:
                        DrawText("-50% Cost", screen, (x + 16 + 2) * 4, stat_y * 4, COLOR_RED, bg_color)
                    else:
                        DrawText("-50% Cost", screen, (x + 16 + 2) * 4, stat_y * 4, COLOR_DMG, bg_color)
                elif l[0] == "50% Mine Cost":
                    DrawText("-50% Cost", screen, (x + 16 + 2) * 4, stat_y * 4, COLOR_MINE, bg_color)
                elif l[0] == "1s Mine":
                    DrawText("1s Mine", screen, (x + 16 + 2) * 4, stat_y * 4, COLOR_MINE, bg_color)
                elif l[0] == "1s Drill":
                    DrawText("1s Drill", screen, (x + 16 + 2) * 4, stat_y * 4, COLOR_DRILL, bg_color)
                else:
                    #print("UNKNOWN STAT:"+l[0])
                    sys.exit()
                stat_y += 10

def DrawMenu():
    global output_mode, hero
    screen.blit(tiles["MenuNE"], (0, 0))
    screen.blit(tiles["MenuNW"], (7*32*4, 0))
    screen.blit(tiles["MenuSE"], (0, 3*32*4))
    screen.blit(tiles["MenuSW"], (7*32*4, 3*32*4))
    for i in range(1,7):
        screen.blit(tiles["MenuN"], (i * 32 * 4, 0))
        screen.blit(tiles["MenuS"], (i * 32 * 4, 96*4))
    screen.blit(tiles["MenuW"], (0, 32*4))
    screen.blit(tiles["MenuW"], (0, 64*4))
    screen.blit(tiles["MenuE"], (224*4, 32*4))
    screen.blit(tiles["MenuE"], (224*4, 64*4))

    DrawText("[C]haracter", screen, 9*4, 9*4, COLOR_WHITE, COLOR_MENU_CHAR)
    pygame.draw.rect(screen, (0,0,160), (9 * 4 + len("[C]haracter") * 4 * 6,9*4,1*4,8*4))
    DrawText("S[k]ills", screen, 9 * 4+len("[C]haracter")*4*6 + 4, 9 * 4, COLOR_WHITE, COLOR_MENU_SKILLS)
    DrawText("[R]esources", screen, 9 * 4 + len("[C]haracterS[k]ills") * 4 * 6 + 4, 9 * 4, COLOR_WHITE, COLOR_MENU_RESOURCES)

    if output_mode==OUTPUT_CHARACTER:
        pygame.draw.rect(screen, COLOR_MENU_CHAR, (9 * 4, 17 * 4, (256-9-9)*4, (128-9-9-8)*4))
        screen.blit(tiles["Robot_right"], ((9 + 4 + int(60/2-16)) * 4, (17 + 2 + 2) * 4))
        DrawText(f"HP:   {hero['HP Max']}",screen, (9 + 4)*4, (17 + 3 + 36  + 0 )*4,COLOR_HP,COLOR_MENU_CHAR)
        DrawText(f"Batt: {hero['Batt Max']}", screen, (9 + 4) * 4, (17 + 3 + 36 + 0 + 8 + 1) * 4, COLOR_BATT,COLOR_MENU_CHAR)
        DrawText(f"Dmg:  {hero['Attack']}", screen, (9 + 4) * 4, (17 + 3 + 36 + 0 + 16 + 2) * 4,COLOR_DMG,COLOR_MENU_CHAR)
        DrawText(f"Crit: {hero['Crit Rate']}%", screen, (9 + 4) * 4, (17 + 3 + 36 + 0 + 24 + 3) * 4, COLOR_CRIT, COLOR_MENU_CHAR)
        DrawText(f"Mine: {hero['Mine Speed']}s", screen, (9 + 4) * 4, (17 + 3 + 36 + 0 + 32 + 4) * 4, COLOR_MINE, COLOR_MENU_CHAR)
        DrawText(f"Drill:{hero['Drill Speed']}s", screen, (9 + 4) * 4, (17 + 3 + 36 + 0 + 40 + 5) * 4, COLOR_DRILL, COLOR_MENU_CHAR)
        DrawText(f"Lava: -{hero['Lava Res']}%", screen, (9 + 4) * 4, (17 + 3 + 36 + 0 + 48 + 6) * 4, COLOR_LAVA, COLOR_MENU_CHAR)
        pygame.draw.rect(screen, Color(0, 1, 0), (80 * 4, 20 * 4 + 2 * 4, 80 * 4, 45 * 4))
        pygame.draw.rect(screen, Color(0, 1, 0), (80 * 4, 68 * 4 + 2 * 4, 80 * 4, 45 * 4))
        for i in range(6):
            for j in range(5):
                screen.blit(tiles["Menu_item_slot"],((164+j*16)*4,(20+i*16)*4))
                list_index=i*5+j
                if list_index<len(hero["inventory"]):
                    screen.blit(item_stats[hero["inventory"][list_index]]["tile"], ((164 + j * 16) * 4, (20 + i * 16) * 4))
                    if menu_char_y*5+menu_char_x==list_index:
                        DrawItemStats(hero["inventory"][list_index],80,70,Color(0,1,0))
                        screen.blit(tiles["Menu_item_selector"], (80 * 4, 70 * 4))
                        DrawItemStats(hero["equipped"][item_stats[hero["inventory"][list_index]]["Class"]],80,22,Color(0,1,0))

        pygame.draw.rect(screen, COLOR_BLACK, (164 * 4, 116 * 4, 80 * 4, 4))
        pygame.draw.rect(screen, COLOR_BLACK, (244 * 4, 20 * 4, 4, 97 * 4))

        screen.blit(tiles["Menu_item_selector"],((164+menu_char_x*16)*4,(20+menu_char_y*16)*4))
        pygame.display.flip()
    elif output_mode == OUTPUT_SKILLS:
        pygame.draw.rect(screen, COLOR_MENU_SKILLS, (9 * 4, 17 * 4, (256 - 9 - 9) * 4, (128 - 9 - 9 - 8) * 4))
        DrawText(f"Points: {hero['Points']}",screen,(9+2)*4,(9+11)*4,COLOR_WHITE,COLOR_MENU_SKILLS)
        pygame.draw.rect(screen, Color(2, 3, 2), ((9) * 4, (9 + 20) * 4, (28 * 5) * 4, (24 + 3 + 3) * 4))
        pygame.draw.rect(screen, Color(2, 2, 3), ((9) * 4, (9 + 20 + 30) * 4, (28 * 5) * 4, (24 + 3 + 3) * 4))
        pygame.draw.rect(screen, Color(3, 2, 2), ((9) * 4, (9 + 20 + 60) * 4, (28 * 5) * 4, (24 + 3 + 3) * 4))
        x_spacing = 28
        y_spacing = 30

        for i in range(15):
            x_offset=(i % 5) * x_spacing
            y_offset=int(i/5) * y_spacing
            if skill_info[i]["Active"]:
                screen.blit(tiles["Skills_colored"][i], ((9 + 2 + x_offset) * 4, (9 + 20 + 3 + y_offset) * 4))
            else:
                screen.blit(tiles["Skills"][i], ((9 + 2 + x_offset) * 4, (9 + 20 + 3 + y_offset) * 4))
        screen.blit(tiles["Menu_skill_selector"], ((9 + 2 + menu_skills_x * x_spacing) * 4, (9 + 20 + 3 + menu_skills_y * y_spacing ) * 4))

        box_width=(255-9-152-2)
        pygame.draw.rect(screen, Color(0, 0, 1), ((152) * 4, (9 + 20) * 4, box_width * 4, (87) * 4))
        skill_obj=skill_info[menu_skills_x+menu_skills_y*5]
        x_offset=int(box_width/2-len(skill_obj["Title"])*6/2)

        DrawText(skill_obj["Title"],screen,(152 + x_offset) * 4, (9 + 20 + 2) * 4,COLOR_WHITE,skill_obj["Color"])
        DrawText(skill_obj["Caption"],screen,(152 + 2) * 4, (9 + 20 + 2 + 12) * 4,COLOR_WHITE,Color(0,0,1))
        if skill_obj["Active"]==False and skill_obj["Unlocked"]:
            DrawText("[Enter]Upgrade",screen,(152+2)*4,(9 + 20 + 77)*4,COLOR_YELLOW, Color(0,0,1))
        pygame.display.flip()
    elif output_mode == OUTPUT_RESOURCES:
        pygame.draw.rect(screen, COLOR_MENU_RESOURCES, (9 * 4, 17 * 4, (256 - 9 - 9) * 4, (128 - 9 - 9 - 8) * 4))
        block_height=19
        block_width=23
        colors = [Color(0,2,0), Color(1,1,3), COLOR_PURPLE, Color(2,2,0), Color(2,2,2), Color(2,2,2)]
        for i in range(6):
            pygame.draw.rect(screen, colors[i], ((9 + 2 + i*block_width) * 4, (9 + 10) * 4, block_width * 4, (2 + block_height * 5) * 4))
        res_item_list = ["Head MKII", "Head MKIII", "Head MKIV", "Lightning", "Res_HP_Heal", "Res_HP_Upgrade",
                         "Tin Body", "Iron Body", "Steel Body", "Fortress", "Res_Batt_Heal" , "Res_Batt_Upgrade",
                         "Fast Legs", "Quick Legs", "Agile Legs", "Mustang", "Res_Exp_Upgrade", "Res_Dmg_Upgrade",
                         "Blaster", "Laser", "Phaser", "Death Ray", "", "",
                         "Rock Pick", "Rock Drill", "Rock Borer", "Laser Bit", "", ""]
        for i,item in enumerate(res_item_list):
            if i%6<4:
                screen.blit(item_stats[item]["tile"], ((9 + 2 + 3 + (i % 6) * block_width) * 4, (9 + 10 + 2 + int(i/6) * block_height) * 4))
            else:
                if item!="":
                    screen.blit(tiles[item],((9 + 2 + 3 + (i % 6) * block_width) * 4, (9 + 10 + 2 + int(i / 6) * block_height) * 4))
        screen.blit(tiles["Menu_item_selector"], ((9 + 2 + 3 + menu_res_x * block_width) * 4,(9 + 10 + 2 + menu_res_y * block_height) * 4))
        box_width = (255 - 9 - 152 - 2)
        pygame.draw.rect(screen, Color(1, 0, 0), ((152) * 4, (9 + 20) * 4, box_width * 4, (87) * 4))
        skill_index = menu_res_x + menu_res_y * 6
        if res_item_list[skill_index] != "":
            DrawItemStats(res_item_list[skill_index], 152,(9+20),Color(1,0,0))
            temp_item=item_stats[res_item_list[skill_index]]
            temp_cost=temp_item['Cost']
            if temp_item["Class"]!="Res Only":
                if skill_info[SKILL_BIG_DISCOUNT]["Active"]:
                    temp_cost-=1
            if temp_item["CostType"]=="Blue":
                DrawText(f"Cost: {temp_cost}",screen,(152+2)*4,(9+20+87-9)*4,COLOR_MINERAL_BLUE1,Color(1,0,0))
            elif temp_item["CostType"]=="Red":
                DrawText(f"Cost: {temp_cost}",screen,(152+2)*4,(9+20+87-9)*4,COLOR_MINERAL_RED1,Color(1,0,0))
            elif temp_item["CostType"]=="Yellow":
                DrawText(f"Cost: {temp_cost}",screen,(152+2)*4,(9+20+87-9)*4,COLOR_MINERAL_YELLOW1,Color(1,0,0))
        pygame.draw.rect(screen, COLOR_BLACK, ((152) * 4, (9 + 10) * 4, box_width * 4, (10) * 4))
        DrawText(f"{hero['Red']}", screen, (152 + 13 + 6) * 4, (9 + 12)*4, COLOR_MINERAL_RED1,COLOR_BLACK)
        DrawText(f"{hero['Blue']}", screen, (152 + 13 + 6 + 2 * 6 + 12) * 4, (9 + 12)*4, COLOR_MINERAL_BLUE1, COLOR_BLACK)
        DrawText(f"{hero['Yellow']}", screen, (152 + 13 + 6 + 4 * 6 + 2 * 12) * 4, (9 + 12)*4, COLOR_MINERAL_YELLOW1, COLOR_BLACK)

        pygame.display.flip()
    return

def CalculateStats():
    global hero
    hero["HP Max"] = 2
    hero["Batt Max"] = 3
    hero["Attack"] = hero["Dmg Upgrade"]
    hero["Mine Speed"] = 8
    hero["Drill Speed"] = 12
    hero["Lava Res"] = 0
    hero["Batt Rate"] = 1
    #hero["Heal Rate"] = 1
    hero["Crit Rate"] = 5
    hero["HP Recharge"] = 0
    hero["Lava Dmg"] = 4
    hero["Attack Cost"] = 4
    hero["Mine Cost"] = 2
    hero["Drill Cost"] = 2

    for i in hero["equipped"].values():
        for j in item_stats[i]["Stats"]:
            if j[0]=="Batt":
                hero["Batt Max"] += j[1]
            elif j[0] == "HP":
                hero["HP Max"] += j[1]
            elif j[0] == "Dmg":
                hero["Attack"] += j[1]
            elif j[0] == "Mine":
                hero["Mine Speed"] -= j[1]
            elif j[0] == "Drill":
                hero["Drill Speed"] -= j[1]
            elif j[0] == "Crit":
                hero["Crit Rate"] += j[1]
            elif j[0] == "Batt Recharge":
                hero["Batt Rate"] += j[1]
            elif j[0] == "HP Recharge":
                hero["HP Recharge"] += j[1]
            elif j[0] == "Lava":
                hero["Lava Res"] += j[1]
            elif j[0] == "Lava Heals":
                hero["Lava Dmg"] = -1
            elif j[0] == "50% Attack Cost":
                hero["Attack Cost"] = 2
            elif j[0] == "50% Mine Cost":
                hero["Mine Cost"] = 1
            elif j[0] == "1s Mine":
                hero["Mine Speed"] = 1
            elif j[0] == "1s Drill":
                hero["Drill Speed"] = 1

    if skill_info[SKILL_LUCKY_CRIT]["Active"]:
        hero["Crit Rate"]+=20

    if skill_info[SKILL_FAST_DIGGER]["Active"]:
        hero["Mine Speed"] -= 2
        hero["Drill Speed"] -= 2

    if hero["Drill Speed"] < 1:
        hero["Drill Speed"] = 1

    if hero["Mine Speed"] < 1:
        hero["Mine Speed"] = 1

    hero["Lava Dmg"] -= int(hero["Lava Dmg"]*hero["Lava Res"]/100)

    if hero["HP"]>hero["HP Max"]: hero["HP"]=hero["HP Max"]
    if hero["Batt"] > hero["Batt Max"]: hero["Batt"] = hero["Batt Max"]

def ResetStats():
    global hero
    hero["HP"]=hero["HP Max"]
    hero["Batt"] = hero["Batt Max"]
    hero["Exp"] = 0
    hero["Exp Max"] = 40
    hero["Level"] = 1
    hero["Red"] = 0
    hero["Blue"] = 0
    hero["Yellow"] = 0
    hero["Dmg Upgrade"] = 0
    hero["Points"] = 5

def CheckHP():
    if hero["HP"]>hero["HP Max"]:
        hero["HP"] = hero["HP Max"]
    elif hero["HP"]<=0:
        msg_x=104
        msg_y=60
        msg_border=4
        hero["HP"]=0
        DrawLegend()
        pygame.draw.rect(screen,COLOR_BLACK,((msg_x-msg_border)*4,(msg_y-msg_border)*4,(6*8+msg_border*2)*4,(8+msg_border*2)*4))
        DrawText("You died",screen,msg_x*4,msg_y*4,COLOR_WHITE,COLOR_BLACK)
        pygame.display.flip()
        return True
    return False

def LavaExitCheck():
    global output_mode, display_x, display_y
    global maze_data,monster_data,mineral_data
    if maze_data[display_y+hero["Y"]][display_x+hero["X"]]==MAP_LAVA:
        hero["HP"]-=hero["Lava Dmg"]
        if CheckHP():
            output_mode=OUTPUT_GAME_OVER
            return False
        return True
    elif maze_data[display_y+hero["Y"]][display_x+hero["X"]]==MAP_EXIT:
        maze_data=MakeMaze(MAZE_WIDTH,MAZE_HEIGHT)
        monster_data=LoadMonsters()
        mineral_data=LoadMinerals()
        display_x = 0
        display_y = 0
        hero["X"] = 1
        hero["Y"] = 1
        return True
    return True

def KeyHandlerGame(key):
    global hero,display_x,display_y,output_mode
    global running
    redraw = False
    if key == pygame.K_ESCAPE:
        running = False
    elif key==pygame.K_m or key==pygame.K_c:
        output_mode=OUTPUT_CHARACTER
        DrawMenu()
    elif key==pygame.K_k:
        output_mode=OUTPUT_SKILLS
        DrawMenu()
    elif key==pygame.K_r:
        output_mode=OUTPUT_RESOURCES
        DrawMenu()


    if hero["activity"] == False:
        if key == pygame.K_SPACE:
            if hero["target_type"] == "Mineral":
                hero["activity_ticks_max"] = hero["Mine Speed"]
                hero["activity_ticks"] = 0
                hero["activity"] = True
                redraw = True
            elif hero["target_type"] == "Rock":
                hero["activity_ticks_max"] = hero["Drill Speed"]
                hero["activity_ticks"] = 0
                hero["activity"] = True
                redraw = True
            elif hero["target_type"] == "Monster":
                hero["activity_ticks_max"] = BOT_HP
                hero["activity_ticks"] = BOT_HP
                hero["activity"] = True
                redraw = True
        elif event.key == pygame.K_s:
            if hero["target_direction"] != DIRECTION_DOWN:
                hero["target_direction"] = DIRECTION_DOWN
                redraw = True
            elif display_y + hero["Y"] + 1 < MAZE_HEIGHT:
                if maze_data[display_y + hero["Y"] + 1][display_x + hero["X"]] != MAP_ROCK:
                    if CheckForMonster(monster_data, display_x + hero["X"], display_y + hero["Y"] + 1) == False  or skill_info[SKILL_GHOST]["Active"]:
                        # if CheckForMineral(mineral_data,display_x + hero_x, display_y + hero_y + 1) == False:
                        if hero["Y"] < 2:
                            hero["Y"] += 1
                            redraw=LavaExitCheck()
                        elif hero["Y"] == 2:
                            if display_y == MAZE_HEIGHT - 4:
                                hero["Y"] = 3
                                redraw=LavaExitCheck()
                            else:
                                display_y += 1
                                redraw=LavaExitCheck()
        elif key == pygame.K_w:
            if hero["target_direction"] != DIRECTION_UP:
                hero["target_direction"] = DIRECTION_UP
                redraw = True
            elif display_y + hero["Y"] > 0:
                if maze_data[display_y + hero["Y"] - 1][display_x + hero["X"]] != MAP_ROCK:
                    if CheckForMonster(monster_data, display_x + hero["X"], display_y + hero["Y"] - 1) == False  or skill_info[SKILL_GHOST]["Active"]:
                        # if CheckForMineral(mineral_data,display_x + hero_x, display_y + hero_y - 1) == False:
                        if hero["Y"] > 1:
                            hero["Y"] -= 1
                            redraw=LavaExitCheck()
                        elif hero["Y"] == 1:
                            if display_y == 0:
                                hero["Y"] = 0
                                redraw=LavaExitCheck()
                            else:
                                display_y -= 1
                                redraw=LavaExitCheck()
        elif key == pygame.K_d:
            if hero["facing"] == DIRECTION_LEFT:
                hero["facing"] = DIRECTION_RIGHT
                redraw_only = True
            if hero["target_direction"] != DIRECTION_RIGHT:
                hero["target_direction"] = DIRECTION_RIGHT
                redraw = True
            elif display_x + hero["X"] + 1 < MAZE_WIDTH:
                if maze_data[display_y + hero["Y"]][display_x + hero["X"] + 1] != MAP_ROCK:
                    if CheckForMonster(monster_data, display_x + hero["X"] + 1, display_y + hero["Y"]) == False  or skill_info[SKILL_GHOST]["Active"]:
                        # if CheckForMineral(mineral_data, + hero_x + 1, display_y + hero_y) == False:
                        if hero["X"] < 3:
                            hero["X"] += 1
                            redraw=LavaExitCheck()
                        elif hero["X"] == 3:
                            if display_x == MAZE_WIDTH - 5:
                                hero["X"] = 4
                                redraw=LavaExitCheck()
                            else:
                                display_x += 1
                                redraw=LavaExitCheck()

        elif key == pygame.K_a:
            if hero["facing"] == DIRECTION_RIGHT:
                hero["facing"] = DIRECTION_LEFT
                redraw = True
            if hero["target_direction"] != DIRECTION_LEFT:
                hero["target_direction"] = DIRECTION_LEFT
                redraw = True
            elif display_x + hero["X"] > 0:
                if maze_data[display_y + hero["Y"]][display_x + hero["X"] - 1] != MAP_ROCK:
                    if CheckForMonster(monster_data, display_x + hero["X"] - 1, display_y + hero["Y"]) == False  or skill_info[SKILL_GHOST]["Active"]:
                        # if CheckForMineral(mineral_data,display_x + hero_x - 1, display_y + hero_y) == False:
                        if hero["X"] > 1:
                            hero["X"] -= 1
                            redraw=LavaExitCheck()
                        elif hero["X"] == 1:
                            if display_x == 0:
                                hero["X"] = 0
                                redraw=LavaExitCheck()
                            else:
                                display_x -= 1
                                redraw=LavaExitCheck()

    if redraw:
        DrawFrame()
        DrawLegend()
        pygame.display.flip()


def KeyHandlerMenu(key):
    global output_mode, menu_char_x, menu_char_y
    global menu_skills_x, menu_skills_y
    global menu_res_x, menu_res_y
    redraw = False
    if key == pygame.K_m or key == pygame.K_ESCAPE:
        output_mode = OUTPUT_GAME
        DrawFrame()
        DrawLegend()
        pygame.display.flip()
        return

    if output_mode==OUTPUT_CHARACTER:
        if key==pygame.K_d:
            if menu_char_x<4:
                menu_char_x+=1
                redraw=True
            elif menu_char_y<5:
                menu_char_x=0
                menu_char_y+=1
                redraw = True
        elif key == pygame.K_a:
            if menu_char_x > 0:
                menu_char_x -= 1
                redraw = True
            elif menu_char_y>0:
                menu_char_y-=1
                menu_char_x=4
                redraw = True
        elif key==pygame.K_s:
            if menu_char_y<5:
                menu_char_y+=1
                redraw = True
        elif key == pygame.K_w:
            if menu_char_y > 0:
                menu_char_y -= 1
                redraw = True
        elif key == pygame.K_k:
            output_mode=OUTPUT_SKILLS
            redraw=True
        elif key == pygame.K_r:
            output_mode = OUTPUT_RESOURCES
            redraw = True
        elif key==pygame.K_RETURN:
            index=menu_char_y*5+menu_char_x
            if index<len(hero["inventory"]):
                to_equip=hero["inventory"][index]
                equip_key=item_stats[to_equip]["Class"]
                hero["inventory"][index]=hero["equipped"][equip_key]
                hero["equipped"][equip_key]=to_equip
                ColorHero()
                CalculateStats()
                DrawMenu()
    elif output_mode==OUTPUT_SKILLS:
        if key == pygame.K_s:
            if menu_skills_y<2:
                menu_skills_y+=1
                redraw=True
        elif key == pygame.K_w:
            if menu_skills_y > 0:
                menu_skills_y -= 1
                redraw = True
        elif key == pygame.K_d:
            if menu_skills_x < 4:
                menu_skills_x += 1
                redraw = True
        elif key == pygame.K_a:
            if menu_skills_x > 0:
                menu_skills_x -= 1
                redraw = True
        elif key == pygame.K_RETURN:
            skill_index=menu_skills_x+menu_skills_y*5
            if skill_info[skill_index]["Active"]==False and skill_info[skill_index]["Unlocked"]:
                if hero["Points"] > 0:
                    hero["Points"]-=1
                    skill_info[skill_index]["Active"] = True
                    if skill_index % 5 != 4:
                        skill_info[skill_index+1]["Unlocked"]=True
                    CalculateStats()
                    redraw=True
        elif key == pygame.K_c:
            output_mode = OUTPUT_CHARACTER
            redraw = True
        elif key == pygame.K_r:
            output_mode = OUTPUT_RESOURCES
            redraw = True
    elif output_mode==OUTPUT_RESOURCES:
        if key == pygame.K_RETURN:
            res_item_list = ["Head MKII", "Head MKIII", "Head MKIV", "Lightning", "Res_HP_Heal", "Res_HP_Upgrade",
                             "Tin Body", "Iron Body", "Steel Body", "Fortress", "Res_Batt_Heal", "Res_Batt_Upgrade",
                             "Fast Legs", "Quick Legs", "Agile Legs", "Mustang", "Res_Exp_Upgrade", "Res_Dmg_Upgrade",
                             "Blaster", "Laser", "Phaser", "Death Ray", "", "",
                             "Rock Pick", "Rock Drill", "Rock Borer", "Laser Bit", "", ""]
            skill_index = menu_res_x + menu_res_y * 6
            if res_item_list[skill_index]!="":
                temp_item=item_stats[res_item_list[skill_index]]
                temp_cost = temp_item['Cost']
                if temp_item["Class"] != "Res Only":
                    if skill_info[SKILL_BIG_DISCOUNT]["Active"]:
                        temp_cost -= 1
                cost_met=False
                if skill_info[SKILL_CRYSTALSMITH]["Active"]:
                    if hero["Red"]+hero["Blue"]+hero["Yellow"]>=temp_cost:
                        cost_met=True
                else:
                    if hero[temp_item["CostType"]] >= temp_cost:
                        cost_met=True
                if cost_met:
                    if temp_item["Class"]=="Res Only":
                        if res_item_list[skill_index]=="Res_HP_Heal":
                            hero["HP"]=hero["HP Max"]
                        elif res_item_list[skill_index]=="Res_Batt_Heal":
                            hero["Batt"]=hero["Batt Max"]
                        elif res_item_list[skill_index]=="Res_HP_Upgrade":
                            hero["HP Max"]+=1
                        elif res_item_list[skill_index]=="Res_Batt_Upgrade":
                            hero["Batt Max"]+=1
                        elif res_item_list[skill_index] == "Res_Exp_Upgrade":
                            AddExp(1)
                        elif res_item_list[skill_index] == "Res_Dmg_Upgrade":
                            hero["Dmg Upgrade"] += 1
                            CalculateStats()
                        if skill_info[SKILL_CRYSTALSMITH]["Active"]:
                            for _ in range(temp_cost):
                                if hero["Red"]>0:
                                    hero["Red"]-=1
                                elif hero["Blue"]>0:
                                    hero["Blue"]-=1
                                elif hero["Yellow"] > 0:
                                    hero["Yellow"] -= 1
                        else:
                            hero[temp_item["CostType"]] -= temp_cost
                    else:
                        temp_new_item=res_item_list[skill_index]
                        if skill_info[SKILL_ONLY_THE_BEST]["Active"]:
                            if random.randrange(10)==0:
                                temp_class=item_stats[res_item_list[skill_index]]["Class"]
                                if temp_class=="head":
                                    temp_new_item = "Lightning"
                                elif temp_class=="body":
                                    temp_new_item = "Fortress"
                                elif temp_class=="legs":
                                    temp_new_item = "Mustang"
                                elif temp_class=="gun":
                                    temp_new_item = "Death Ray"
                                elif temp_class=="tool":
                                    temp_new_item = "Laser Bit"
                        hero["inventory"] += [temp_new_item]
                        if skill_info[SKILL_FREE_LUNCH]["Active"]==False or random.randrange(5)!=0:
                            if skill_info[SKILL_CRYSTALSMITH]["Active"]:
                                for _ in range(temp_cost):
                                    if hero["Red"] > 0:
                                        hero["Red"] -= 1
                                    elif hero["Blue"] > 0:
                                        hero["Blue"] -= 1
                                    elif hero["Yellow"] > 0:
                                        hero["Yellow"] -= 1
                            else:
                                hero[temp_item["CostType"]] -= temp_cost
                    redraw=True
        elif key == pygame.K_s:
            if menu_res_y<4:
                menu_res_y+=1
                redraw=True
        elif key == pygame.K_w:
            if menu_res_y > 0:
                menu_res_y -= 1
                redraw = True
        elif key == pygame.K_d:
            if menu_res_x < 5:
                menu_res_x += 1
                redraw = True
        elif key == pygame.K_a:
            if menu_res_x > 0:
                menu_res_x -= 1
                redraw = True
        elif key == pygame.K_c:
            output_mode = OUTPUT_CHARACTER
            redraw = True
        elif key == pygame.K_k:
            output_mode = OUTPUT_SKILLS
            redraw = True
    if redraw:
        DrawMenu()
    return


pygame.init()
pygame.display.set_caption("Robot Miner")
screen = pygame.display.set_mode((1024,512))

random.seed(1)

hero={}
hero["HP"]=0
hero["Batt"]=0
hero["Dmg Upgrade"]=0

hero["X"]=HERO_START_Y
hero["Y"]=HERO_START_X
hero["facing"]=DIRECTION_RIGHT
hero["target_direction"]=DIRECTION_RIGHT
hero["target_type"]="None"
hero["target_index"]=0
hero["state"]="Free"
hero["activity"]=False
hero["activity_ticks"]=0
hero["activity_ticks_max"]=0
hero["equipped"]={}
hero["equipped"]["head"]="Basic Head"
hero["equipped"]["body"]="Basic Body"
hero["equipped"]["legs"]="Basic Legs"
hero["equipped"]["gun"]="Basic Gun"
hero["equipped"]["tool"]="Basic Tool"

hero["inventory"]=["Lightning","Fortress","Mustang","Death Ray","Laser Bit"]

output_mode=OUTPUT_GAME
menu_char_x=0
menu_char_y=0
menu_skills_x=0
menu_skills_y=0
menu_res_x=0
menu_res_y=0

display_x=0
display_y=0

tiles={}
item_colors={}
item_stats={}
skill_info=[]

LoadColorTable()
LoadTiles()
ColorHero()
LoadSkillInfo()

maze_data = MakeMaze(MAZE_WIDTH,MAZE_HEIGHT)
monster_data=LoadMonsters()
mineral_data=LoadMinerals()

LoadStatsTable()
CalculateStats()
ResetStats()

#EXTRA CODE ADDED TO EXTRACT ASSETS
csv_file=open("assets.csv","w",newline='')
asset_csv = csv.writer(csv_file)

def ColorConvert(color):
    if color!=(255,0,254):
        for i in color:
            if i not in [0, 85, 170, 255]:
                print("ColorConvert - wrong value",color)
                sys.exit()
    return int(color[0]/85)+int(color[1]/85*4)+int(color[2]/85*16)

master_color_dict={}
master_color_dict["Robot_raw_left"]={}
master_color_dict["Robot_raw_right"]={}

#Colorable tiles
asset_tiles=["Menu_body_raw",
             "Menu_legs_raw",
             "Menu_gun_raw",
             "Menu_head_raw",
             "Menu_tool_raw"
             ]

temp_color=65
asset_colorable_items=[]
asset_dict_items={}
for tile in asset_tiles:
    width=int(tiles[tile].get_width()/4)
    height=int(tiles[tile].get_height()/4)
    temp_row=[tile,width,height]
    master_color_dict[tile]={}
    for j in range(height):
        for i in range(width):
            pixel=tuple(tiles[tile].get_at((i*4,j*4)))
            if pixel == (255,0,255,255):
                temp_row+=[64]
            elif pixel==(255,255,255,255):
                #print("White pixel:",pixel)
                temp_row += [63]
            elif pixel==(0,0,0,255):
                #print("Black pixel:",pixel)
                temp_row += [0]
            elif pixel in asset_dict_items:
                temp_row+=[asset_dict_items[pixel]]
            else:
                asset_dict_items[pixel]=temp_color
                temp_row+=[temp_color]
                master_color_dict[tile][pixel]=temp_color
                master_color_dict["Robot_raw_left"][pixel] = temp_color
                master_color_dict["Robot_raw_right"][pixel] = temp_color
                temp_color+=1
    asset_colorable_items+=[temp_row]
    #print(temp_row)

#sys.exit()

asset_tiles=["Robot_raw_left",
             "Robot_raw_right"
             ]

for tile in asset_tiles:
    width=int(tiles[tile].get_width()/4)
    height=int(tiles[tile].get_height()/4)
    temp_row=[tile,width,height]
    for j in range(height):
        for i in range(width):
            pixel=tuple(tiles[tile].get_at((i*4,j*4)))
            if pixel == (255,0,255,255):
                temp_row+=[64]
            elif pixel==(255,255,255,255):
                #print("White pixel:",pixel)
                temp_row += [63]
            elif pixel==(0,0,0,255):
                #print("Black pixel:",pixel)
                temp_row += [0]
            elif pixel in asset_dict_items:
                temp_row += [asset_dict_items[pixel]]
            else:
                print("COLOR NOT FOUND!",pixel)
                sys.exit()
    asset_colorable_items += [temp_row]
    #print(temp_row)

asset_tiles=["Crystal_raw",
             "Ground_raw"]

for tile in asset_tiles:
    width=int(tiles[tile].get_width()/4)
    height=int(tiles[tile].get_height()/4)
    temp_row=[tile,width,height]
    master_color_dict[tile] = {}
    temp_dict = {}
    for j in range(height):
        for i in range(width):
            pixel=tuple(tiles[tile].get_at((i*4,j*4)))
            if pixel == (255,0,255,255):
                temp_row+=[64]
            elif pixel in temp_dict:
                temp_row+=[temp_dict[pixel]]
            else:
                temp_dict[pixel]=temp_color
                temp_row+=[temp_color]
                master_color_dict[tile][pixel] = temp_color
                temp_color+=1
    asset_colorable_items+=[temp_row]
    #print(temp_row)

"""
asset_skill_items=[]
master_color_dict["Skills"]={}
temp_dict = {}
for i,tile in enumerate(tiles["Skills"]):
    width = int(tile.get_width() / 4)
    height = int(tile.get_height() / 4)
    temp_row = ["Skill"+str(i), width, height]
    for j in range(height):
        for i in range(width):
            pixel = tuple(tile.get_at((i * 4, j * 4)))
            if pixel == (255, 0, 255, 255):
                temp_row += [64]
            elif pixel in temp_dict:
                temp_row += [temp_dict[pixel]]
            else:
                temp_dict[pixel] = temp_color
                temp_row += [temp_color]
                master_color_dict["Skills"][pixel] = temp_color
                temp_color += 1
    asset_skill_items += [temp_row]
    #print(temp_row)
"""

asset_tiles=["Monster",
             "Monster dead",
             #"Hero target",
             #"Menu_corner_raw",
             #"Menu_edge_raw",
             "Menu_item_slot",
             #"Menu_item_selector",
             #"Menu_skill_selector",
             "Crystal_base"#,
             #"Exit",
             #"Res_HP_Heal",
             #"Res_Batt_Heal",
             #"Res_HP_Upgrade",
             #"Res_Batt_Upgrade",
             #"Res_Exp_Upgrade",
             #"Res_Dmg_Upgrade"
             ]

asset_noncolorable_items=[]
for tile in asset_tiles:
    width=int(tiles[tile].get_width()/4)
    height=int(tiles[tile].get_height()/4)
    temp_row=[tile,width,height]
    for j in range(height):
        for i in range(width):
            pixel=tuple(tiles[tile].get_at((i*4,j*4)))
            if pixel == (255,0,255,255):
                temp_row+=[64]
            else:
                temp_row+=[ColorConvert(pixel)]
    asset_noncolorable_items+=[temp_row]
    #print(temp_row)

asset_tiles=[#"Monster",
             #"Monster dead",
             "Hero target",
             "Menu_corner_raw",
             "Menu_edge_raw",
             #"Menu_item_slot",
             "Menu_item_selector",
             "Menu_skill_selector",
             #"Crystal_base",
             "Exit",
             "Res_HP_Heal",
             "Res_Batt_Heal",
             "Res_HP_Upgrade",
             "Res_Batt_Upgrade",
             "Res_Exp_Upgrade",
             "Res_Dmg_Upgrade"
             ]

asset_1bpp_items=[]
for tile in asset_tiles:
    width=int(tiles[tile].get_width()/4)  #Width here is in bytes
    height=int(tiles[tile].get_height()/4)
    if tile[:4]=="Res_":
        temp_row=[tile,width,height,1]
    else:
        temp_row = [tile, width, height, 0]
    color1 = ()
    for j in range(height):
        for i in range(width):
            pixel=tuple(tiles[tile].get_at((i*4,j*4)))
            if color1==():
                color1=pixel
                temp_row+=[0]
            elif pixel==color1:
                temp_row += [0]
            else:
                temp_row += [1]
    asset_1bpp_items+=[temp_row]

asset_skill_items=[]
for i,tile in enumerate(tiles["Skills"]):
    width = int(tile.get_width() / 4)
    height = int(tile.get_height() / 4)
    temp_row = ["Skill"+str(i), width, height, 2]
    color1 = ()
    for j in range(height):
        for i in range(width):
            pixel = tuple(tile.get_at((i * 4, j * 4)))
            if color1 == ():
                color1 = pixel
                temp_row += [0]
            elif pixel == color1:
                temp_row += [0]
            else:
                temp_row += [1]
    asset_skill_items += [temp_row]


def RLE_Encode(list_data):
    temp_list=list_data[0:3]
    width=list_data[1]
    height=list_data[2]
    index=3
    num=list_data[3]
    count=0
    for j in range(height):
        #print(list_data[0],"Row",j)
        for i in range(width):
            if list_data[index]==num:
                count+=1
            else:
                temp_list+=[count,num]
                count=1
                num=list_data[index]
            index+=1
        temp_list+=[count,num,0]
        count = 0
        if j!=height-1:
            num = list_data[index]


    """
   index = 3
    width_count = 0
    height_count=0
    while index<len(temp_list[3:]):
        if temp_list[index]==0:
            if width_count!=width:
                print("Wrong width!",width_count,width)
                sys.exit()
            width_count=0
            height_count+=1
            index+=1
        else:
            width_count += temp_list[index]
            index+=2
    if height_count!=height-1:
        print("Wrong height!",height_count,height)
        sys.exit()
    print("RLE good")
    """
    return temp_list

def Encode1bpp(list_data):
    temp_list = list_data[0:4]
    width = list_data[1]
    new_byte=0
    bit_count=0
    bit_count_total=0
    for i in list_data[4:]:
        new_byte=(new_byte<<1)+i
        bit_count += 1
        bit_count_total+=1
        if bit_count==8 or bit_count_total==width:
            if bit_count!=8:
                #print(new_byte,(8-width%8),new_byte<<(8-width%8))
                new_byte<<=(8-width%8)
                bit_count_total = 0
            temp_list+=[new_byte]
            new_byte=0
            bit_count=0
    if bit_count>0:
        temp_list += [new_byte]
    return temp_list

asset_csv.writerow(["COLORABLE TILES"])
for row in asset_colorable_items:
    asset_csv.writerow(RLE_Encode(row))
    #print(len(RLE_Encode(row)))
asset_csv.writerows([[""], [""], ["1BPP TILES"]])
for row in asset_1bpp_items:
    asset_csv.writerow(Encode1bpp(row))
    # print(Encode1bpp(row))
asset_csv.writerows([[""],[""],["SKILL TILES"]])
for row in asset_skill_items:
    asset_csv.writerow(Encode1bpp(row))
    # print(RLE_Encode(row))
asset_csv.writerows([[""], [""], ["NONCOLORABLE TILES"]])
for row in asset_noncolorable_items:
    asset_csv.writerow(RLE_Encode(row))

#Fastest is loading color then jumping to list of STA
#Store offset into table instead of number of pixels
#Maybe also store count to add to pointer



#Item colors
#print()
asset_csv.writerows([[""],[""],["ITEM COLORS"]])
for item in item_colors.items():
    temp_row=[]
    if item[0] in item_stats:
        #print(master_color_dict["Menu_"+item_stats[item[0]]["Class"]+"_raw"])
        temp_row = [item[0], item_stats[item[0]]["Class"], len(item[1])]
        for color_pair in item[1].items():
            temp_row += [master_color_dict["Menu_" + item_stats[item[0]]["Class"] + "_raw"][color_pair[0]], ColorConvert(color_pair[1])]
    elif item[0] in ["Ground_0","Ground_90","Ground_180","Ground_270","Rock","Lava"]:
        temp_row=[item[0],"ground",len(item[1])]
        for color_pair in item[1].items():
            temp_row += [master_color_dict["Ground_raw"][color_pair[0]], ColorConvert(color_pair[1])]
    else:
        temp_row = [item[0], "crystal", len(item[1])]
        for color_pair in item[1].items():
            temp_row += [master_color_dict["Crystal_raw"][color_pair[0]], ColorConvert(color_pair[1])]
    #print(temp_row)
    asset_csv.writerow(temp_row)

"""
#Exactly two colors
temp_skill_color=[]
for i in master_color_dict["Skills"]:
    temp_skill_color+=[master_color_dict["Skills"][i],ColorConvert(i)]
temp_row = ["Skill_uncolored", "skill", 2]+temp_skill_color
asset_csv.writerow(temp_row)

for i in range(5):
    temp_row = ["Skill" + str(i) + "_colored", "skill", 2]
    temp_table={(85,85,85,255):Color(0,1,0),(170,170,170,255): Color(0, 2, 0)}
    for j in master_color_dict["Skills"]:
        temp_row+=[master_color_dict["Skills"][j],ColorConvert(temp_table[j])]
    asset_csv.writerow(temp_row)

for i in range(5,10):
    temp_row = ["Skill" + str(i) + "_colored", "skill", 2]
    temp_table = {(85,85,85,255):Color(0,0,1),(170,170,170,255): Color(1, 1, 3)}
    for j in master_color_dict["Skills"]:
        temp_row+=[master_color_dict["Skills"][j],ColorConvert(temp_table[j])]
    asset_csv.writerow(temp_row)

for i in range(10,15):
    temp_row = ["Skill" + str(i) + "_colored", "skill", 2]
    temp_table = {(85,85,85,255):Color(1,0,0),(170,170,170,255): Color(3, 1, 1)}
    for j in master_color_dict["Skills"]:
        temp_row += [master_color_dict["Skills"][j], ColorConvert(temp_table[j])]
    asset_csv.writerow(temp_row)
"""

asset_csv.writerows([[""],[""],["ITEM STATS"]])
for k,v in item_stats.items():
    if v["Class"]=="Res Only":
        temp_row = [k, v["Class"], v["Cost"]]
        temp_row += [v["CostType"],v["Caption"].replace('\n','$')]
        asset_csv.writerow(temp_row)
    else:
        temp_row=[k,v["Class"],v["Cost"]]
        if v["Cost"]==0:
            temp_row+=["None"]
        else:
            temp_row+=[v["CostType"]]
        temp_row +=[v["Type"],len(v["Stats"])]
        for i in v["Stats"]:
            temp_row+=i
        asset_csv.writerow(temp_row)

asset_csv.writerows([[""],[""],["SKILL INFO"]])
for i,skill in enumerate(skill_info):
    temp_row=["Skill"+str(i),skill["Title"],skill["Caption"].replace("\n","$")]
    asset_csv.writerow(temp_row)

asset_csv.writerows([[""],[""],["RES COLORS"]])
asset_csv.writerow(map(ColorConvert,[Color(0,2,0), Color(1,1,3), COLOR_PURPLE, Color(2,2,0), Color(2,2,2), Color(2,2,2)]))


csv_file.flush()
#sys.exit()



DrawLegend()
DrawFrame()
pygame.display.flip()

pygame.time.set_timer(pygame.USEREVENT,1000)

running = True
while running:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
        elif event.type==pygame.USEREVENT:
            if output_mode==OUTPUT_GAME:
                redraw=False
                original_batt=hero["Batt"]
                hero["Batt"]+=hero["Batt Rate"]
                original_hp = hero["HP"]
                hero["HP"]+=hero["HP Recharge"]
                if hero["activity"]:
                    if hero["target_type"]=="Mineral":
                        if hero["Batt"]>=hero["Mine Cost"]:
                            if skill_info[SKILL_BATTERY_SAVER]["Active"]==False or random.randrange(5)!=0:
                                hero["Batt"] -= hero["Mine Cost"]
                            hero["activity_ticks"]+=1
                            redraw=True
                            if hero["activity_ticks"]==hero["activity_ticks_max"]:
                                hero[mineral_data[hero["target_index"]]["Type"]]+=1
                                if skill_info[SKILL_MASTER_MINER]["Active"]:
                                    hero[mineral_data[hero["target_index"]]["Type"]] += 1
                                    AddExp(2)
                                mineral_data[hero["target_index"]]["Active"]=False
                                AddExp(2)
                                hero["target_type"]="None"
                                hero["activity"]=False
                                DrawFrame()
                    elif hero["target_type"]=="Rock":
                        if hero["Batt"] >= hero["Drill Cost"]:
                            hero["Batt"] -= hero["Drill Cost"]
                            hero["activity_ticks"] += 1
                            redraw = True
                            if hero["activity_ticks"] == hero["activity_ticks_max"]:
                                maze_data[hero["target_index"][1]][hero["target_index"][0]]=MAP_BLANK
                                AddExp(1)
                                hero["target_type"]="None"
                                hero["activity"]=False
                                if skill_info[SKILL_LUCKY_DRILLER]["Active"]:
                                    if random.randrange(4) == 0:
                                        temp_rand = random.randrange(3)
                                        if temp_rand == 0:
                                            hero["Blue"] += 1
                                        elif temp_rand == 1:
                                            hero["Red"] += 1
                                        else:
                                            hero["Yellow"] += 1
                                        AddExp(2)
                                DrawFrame()
                    elif hero["target_type"]=="Monster":
                        if hero["Batt"]>=hero["Attack Cost"]:
                            hero["Batt"] -= hero["Attack Cost"]
                            if skill_info[SKILL_INSTAKILL]["Active"]:
                                if random.randrange(20)==0:
                                    hero["activity_ticks"] = 0
                                else:
                                    hero["activity_ticks"] -= hero["Attack"]
                            else:
                                hero["activity_ticks"] -= hero["Attack"]
                                if random.randrange(100)<hero["Crit Rate"]:
                                    if skill_info[SKILL_CRIT_LORD]["Active"]:
                                        hero["activity_ticks"] -= hero["Attack"]
                                    else:
                                        hero["activity_ticks"] -= int(hero["Attack"]/2)
                            redraw=True
                            if hero["activity_ticks"] <= 0:
                                monster_data[hero["target_index"]]["Active"]=False
                                if skill_info[SKILL_EXPERIENCED]["Active"]:
                                    AddExp(11)
                                else:
                                    AddExp(10)
                                hero["target_type"]="None"
                                hero["activity"]=False
                                if skill_info[SKILL_BOUNTY_HUNTER]["Active"]:
                                    if random.randrange(10)==0:
                                        temp_rand=random.randrange(3)
                                        if temp_rand==0:
                                            hero["Blue"]+=1
                                        elif temp_rand==1:
                                            hero["Red"]+=1
                                        else:
                                            hero["Yellow"]+=1
                                DrawFrame()
                        if random.randrange(2):
                            hero["HP"] -= 2
                            if CheckHP():
                                output_mode=OUTPUT_GAME_OVER
                if hero["Batt"] > hero["Batt Max"]:
                    hero["Batt"] = hero["Batt Max"]
                if hero["HP"] > hero["HP Max"]:
                    hero["HP"]=hero["HP Max"]
                if hero["Batt"]!=original_batt:
                    redraw=True
                if hero["HP"] != original_hp:
                    redraw = True

                #Check for lava
                if LavaExitCheck():
                    redraw=True

                if redraw:
                    if output_mode!=OUTPUT_GAME_OVER:
                        DrawLegend()
                        pygame.display.flip()

        elif event.type == pygame.KEYDOWN:
            if output_mode == OUTPUT_GAME:
                KeyHandlerGame(event.key)
            elif output_mode == OUTPUT_GAME_OVER:
                if event.key==pygame.K_ESCAPE:
                    running=False
            else:
                KeyHandlerMenu(event.key)
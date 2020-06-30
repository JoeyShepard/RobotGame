 PAGE $0
 ORG $FFFC
 FDB main
 ORG $0
RB1_COPY:
 DFS $1
RB2_COPY:
 DFS $1
RB3_COPY:
 DFS $1
RB4_COPY:
 DFS $1
saveA:
 DFS $1
dummy:
 DFS $1
ret_val:
 DFS $2
rand_val:
 DFS $2
 ORG $C000
CharTable:
 FCB $0,$0,$0,$0,$0,$0,$0,$0
 FCB $4,$4,$4,$4,$4,$0,$4,$0
 FCB $A,$A,$A,$0,$0,$0,$0,$0
 FCB $A,$A,$1F,$A,$1F,$A,$A,$0
 FCB $4,$1E,$5,$E,$14,$F,$4,$0
 FCB $3,$13,$8,$4,$2,$19,$18,$0
 FCB $6,$9,$5,$2,$15,$9,$16,$0
 FCB $3,$2,$1,$0,$0,$0,$0,$0
 FCB $4,$2,$1,$1,$1,$2,$4,$0
 FCB $4,$8,$10,$10,$10,$8,$4,$0
 FCB $0,$4,$15,$E,$15,$4,$0,$0
 FCB $0,$4,$4,$1F,$4,$4,$0,$0
 FCB $0,$0,$0,$0,$0,$6,$4,$2
 FCB $0,$0,$0,$1F,$0,$0,$0,$0
 FCB $0,$0,$0,$0,$0,$6,$6,$0
 FCB $0,$10,$8,$4,$2,$1,$0,$0
 FCB $E,$11,$19,$15,$13,$11,$E,$0
 FCB $4,$6,$4,$4,$4,$4,$E,$0
 FCB $E,$11,$10,$8,$4,$2,$1F,$0
 FCB $1F,$8,$4,$8,$10,$11,$E,$0
 FCB $8,$C,$A,$9,$1F,$8,$8,$0
 FCB $1F,$1,$F,$10,$10,$11,$E,$0
 FCB $C,$2,$1,$F,$11,$11,$E,$0
 FCB $1F,$10,$8,$4,$2,$2,$2,$0
 FCB $E,$11,$11,$E,$11,$11,$E,$0
 FCB $E,$11,$11,$1E,$10,$8,$6,$0
 FCB $0,$6,$6,$0,$6,$6,$0,$0
 FCB $0,$6,$6,$0,$6,$4,$2,$0
 FCB $8,$4,$2,$1,$2,$4,$8,$0
 FCB $0,$0,$1F,$0,$1F,$0,$0,$0
 FCB $2,$4,$8,$10,$8,$4,$2,$0
 FCB $E,$11,$10,$8,$4,$0,$4,$0
 FCB $E,$11,$10,$16,$15,$15,$E,$0
 FCB $4,$A,$11,$11,$1F,$11,$11,$0
 FCB $F,$11,$11,$1F,$11,$11,$F,$0
 FCB $E,$11,$1,$1,$1,$11,$E,$0
 FCB $7,$9,$11,$11,$11,$9,$7,$0
 FCB $1F,$1,$1,$F,$1,$1,$1F,$0
 FCB $1F,$1,$1,$F,$1,$1,$1,$0
 FCB $E,$11,$1,$1D,$11,$11,$E,$0
 FCB $11,$11,$11,$1F,$11,$11,$11,$0
 FCB $E,$4,$4,$4,$4,$4,$E,$0
 FCB $1C,$8,$8,$8,$8,$9,$6,$0
 FCB $11,$9,$5,$3,$5,$9,$11,$0
 FCB $1,$1,$1,$1,$1,$1,$1F,$0
 FCB $11,$1B,$15,$15,$11,$11,$11,$0
 FCB $11,$11,$13,$15,$19,$11,$11,$0
 FCB $E,$11,$11,$11,$11,$11,$E,$0
 FCB $F,$11,$11,$F,$1,$1,$1,$0
 FCB $E,$11,$11,$11,$15,$9,$16,$0
 FCB $F,$11,$11,$F,$5,$9,$11,$0
 FCB $E,$11,$1,$E,$10,$11,$E,$0
 FCB $1F,$4,$4,$4,$4,$4,$4,$0
 FCB $11,$11,$11,$11,$11,$11,$E,$0
 FCB $11,$11,$11,$11,$11,$A,$4,$0
 FCB $11,$11,$11,$15,$15,$1B,$11,$0
 FCB $11,$11,$A,$4,$A,$11,$11,$0
 FCB $11,$11,$A,$4,$4,$4,$4,$0
 FCB $1F,$10,$8,$4,$2,$1,$1F,$0
 FCB $E,$2,$2,$2,$2,$2,$E,$0
 FCB $0,$1,$2,$4,$8,$10,$0,$0
 FCB $E,$8,$8,$8,$8,$8,$E,$0
 FCB $4,$A,$11,$0,$0,$0,$0,$0
 FCB $0,$0,$0,$0,$0,$0,$1F,$0
 FCB $1,$2,$4,$0,$0,$0,$0,$0
 FCB $0,$0,$E,$10,$1E,$11,$1E,$0
 FCB $1,$1,$1,$F,$11,$11,$F,$0
 FCB $0,$0,$E,$11,$1,$11,$E,$0
 FCB $10,$10,$10,$1E,$11,$11,$1E,$0
 FCB $0,$0,$E,$11,$1F,$1,$E,$0
 FCB $C,$12,$2,$7,$2,$2,$2,$0
 FCB $0,$0,$1E,$11,$1E,$10,$E,$0
 FCB $1,$1,$1,$F,$11,$11,$11,$0
 FCB $0,$4,$0,$6,$4,$4,$E,$0
 FCB $8,$0,$8,$8,$8,$9,$6,$0
 FCB $1,$1,$9,$5,$3,$5,$9,$0
 FCB $6,$4,$4,$4,$4,$4,$E,$0
 FCB $0,$0,$B,$15,$15,$11,$11,$0
 FCB $0,$0,$D,$13,$11,$11,$11,$0
 FCB $0,$0,$E,$11,$11,$11,$E,$0
 FCB $0,$0,$F,$11,$1F,$1,$1,$0
 FCB $0,$0,$1E,$11,$1E,$10,$10,$0
 FCB $0,$0,$D,$13,$1,$1,$1,$0
 FCB $0,$0,$E,$1,$E,$10,$F,$0
 FCB $2,$2,$7,$2,$2,$12,$C,$0
 FCB $0,$0,$11,$11,$11,$19,$16,$0
 FCB $0,$0,$11,$11,$11,$A,$4,$0
 FCB $0,$0,$11,$15,$15,$15,$A,$0
 FCB $0,$0,$11,$A,$4,$A,$11,$0
 FCB $0,$0,$11,$11,$1E,$10,$E,$0
 FCB $0,$0,$1F,$8,$4,$2,$1F,$0
 FCB $8,$4,$4,$2,$4,$4,$8,$0
 FCB $4,$4,$4,$0,$4,$4,$4,$0
 FCB $2,$4,$4,$8,$4,$4,$2,$0
 FCB $8,$15,$2,$0,$0,$0,$0,$0
debug_nl:
 RTS
debug:
 RTS
str_Basic_Head:
 FCB "Basic Head",$0
str_Head_MKII:
 FCB "Head MKII",$0
str_Head_MKIII:
 FCB "Head MKIII",$0
str_Head_MKIV:
 FCB "Head MKIV",$0
str_Lightning:
 FCB "Lightning",$0
str_Basic_Body:
 FCB "Basic Body",$0
str_Tin_Body:
 FCB "Tin Body",$0
str_Iron_Body:
 FCB "Iron Body",$0
str_Steel_Body:
 FCB "Steel Body",$0
str_Fortress:
 FCB "Fortress",$0
str_Basic_Legs:
 FCB "Basic Legs",$0
str_Fast_Legs:
 FCB "Fast Legs",$0
str_Quick_Legs:
 FCB "Quick Legs",$0
str_Agile_Legs:
 FCB "Agile Legs",$0
str_Mustang:
 FCB "Mustang",$0
str_Basic_Gun:
 FCB "Basic Gun",$0
str_Blaster:
 FCB "Blaster",$0
str_Laser:
 FCB "Laser",$0
str_Phaser:
 FCB "Phaser",$0
str_Death_Ray:
 FCB "Death Ray",$0
str_Basic_Tool:
 FCB "Basic Tool",$0
str_Rock_Pick:
 FCB "Rock Pick",$0
str_Rock_Drill:
 FCB "Rock Drill",$0
str_Rock_Borer:
 FCB "Rock Borer",$0
str_Laser_Bit:
 FCB "Laser Bit",$0
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
item_Basic_Head:
 FCB $0,$0,$6,$0,$1,$0,$2
item_Head_MKII:
 FCB $0,$2,$1,$1,$1,$0,$4
item_Head_MKIII:
 FCB $0,$5,$1,$2,$2,$0,$5,$5,$5
item_Head_MKIV:
 FCB $0,$8,$2,$3,$3,$0,$8,$5,$A,$7,$2
item_Lightning:
 FCB $0,$F,$0,$4,$3,$0,$C,$5,$14,$9,$1
item_Basic_Body:
 FCB $1,$0,$6,$0,$1,$1,$5
item_Tin_Body:
 FCB $1,$2,$0,$1,$1,$1,$8
item_Iron_Body:
 FCB $1,$5,$1,$2,$2,$1,$A,$0,$3
item_Steel_Body:
 FCB $1,$8,$2,$3,$3,$1,$C,$0,$5,$2,$2
item_Fortress:
 FCB $1,$F,$1,$4,$3,$1,$14,$0,$A,$A,$1
item_Basic_Legs:
 FCB $2,$0,$6,$0,$1,$1,$3
item_Fast_Legs:
 FCB $2,$2,$0,$1,$1,$1,$5
item_Quick_Legs:
 FCB $2,$5,$0,$2,$2,$1,$6,$6,$19
item_Agile_Legs:
 FCB $2,$8,$1,$3,$3,$1,$7,$6,$32,$3,$2
item_Mustang:
 FCB $2,$F,$0,$4,$3,$1,$C,$2,$4,$B,$0
item_Basic_Gun:
 FCB $3,$0,$6,$0,$1,$2,$4
item_Blaster:
 FCB $3,$2,$2,$1,$1,$2,$6
item_Laser:
 FCB $3,$5,$0,$2,$2,$2,$8,$5,$A
item_Phaser:
 FCB $3,$8,$1,$3,$3,$2,$A,$5,$F,$0,$2
item_Death_Ray:
 FCB $3,$F,$2,$4,$3,$2,$C,$5,$1E,$C,$0
item_Basic_Tool:
 FCB $4,$0,$6,$0,$1,$3,$1
item_Rock_Pick:
 FCB $4,$2,$2,$1,$1,$3,$2
item_Rock_Drill:
 FCB $4,$5,$2,$2,$2,$3,$3,$7,$2
item_Rock_Borer:
 FCB $4,$8,$0,$3,$3,$3,$5,$7,$3,$0,$3
item_Laser_Bit:
 FCB $4,$F,$2,$4,$3,$4,$0,$8,$0,$D,$3
str_Res_HP_Heal:
 FCB "Heals HP to*full",$0
str_Res_HP_Upgrade:
 FCB "+1 HP",$0
str_Res_Batt_Heal:
 FCB "Recharges*battery to*full",$0
str_Res_Batt_Upgrade:
 FCB "+1 Batt",$0
str_Res_Exp_Upgrade:
 FCB "+10 Exp point",$0
str_Res_Dmg_Upgrade:
 FCB "+1 Dmg",$0
res_descriptions:
 FDB str_Res_HP_Heal
 FDB str_Res_HP_Upgrade
 FDB str_Res_Batt_Heal
 FDB str_Res_Batt_Upgrade
 FDB str_Res_Exp_Upgrade
 FDB str_Res_Dmg_Upgrade
item_Res_HP_Heal:
 FCB $E,$1,$0,$0
item_Res_HP_Upgrade:
 FCB $E,$A,$0,$1
item_Res_Batt_Heal:
 FCB $E,$1,$1,$2
item_Res_Batt_Upgrade:
 FCB $E,$A,$1,$3
item_Res_Exp_Upgrade:
 FCB $E,$1,$2,$4
item_Res_Dmg_Upgrade:
 FCB $E,$A,$2,$5
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
str_stat_Batt:
 FCB "+$ Batt",$0
str_stat_HP:
 FCB "+$ HP",$0
str_stat_Dmg:
 FCB "+$ Dmg",$0
str_stat_Mine:
 FCB "-$s Mine",$0
str_stat_Mine1s:
 FCB "1s Mine",$0
str_stat_Crit:
 FCB "+$% Crit",$0
str_stat_Lava:
 FCB "-$% Lava",$0
str_stat_Drill:
 FCB "-$s Drill",$0
str_stat_Drill1s:
 FCB "1s Drill",$0
str_stat_Batt_Recharge:
 FCB "+$/s Batt",$0
str_stat_HP_Recharge:
 FCB "+$/s HP",$0
str_stat_LavaHeals:
 FCB "Lava Heals",$0
str_stat_AttackCost50:
 FCB "-50% Cost",$0
str_stat_MineCost50:
 FCB "-50% Cost",$0
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
 FCB $30
 FCB $3
 FCB $1
 FCB $17
 FCB $17
 FCB $1
 FCB $B
 FCB $32
 FCB $32
 FCB $30
 FCB $3
 FCB $3
 FCB $1
 FCB $17
stat_pointers:
 FDB hero_Batt_Max
 FDB hero_HP_Max_temp
 FDB hero_Dmg
 FDB $0
 FDB $0
 FDB hero_Crit_Rate
 FDB hero_Lava_Res
 FDB $0
 FDB $0
 FDB hero_Batt_Recharge
 FDB hero_HP_Recharge
 FDB $0
 FDB $0
 FDB $0
str_hero_stat_HP:
 FCB "HP:   $",$0
str_hero_stat_Batt:
 FCB "Batt: $",$0
str_hero_stat_Dmg:
 FCB "Dmg:  $",$0
str_hero_stat_Crit:
 FCB "Crit: $%",$0
str_hero_stat_Mine:
 FCB "Mine: $s",$0
str_hero_stat_Drill:
 FCB "Drill:$s",$0
str_hero_stat_Lava:
 FCB "Lava: -$%",$0
hero_stat_colors:
 FCB $3
 FCB $30
 FCB $1
 FCB $1
 FCB $17
 FCB $32
 FCB $B
hero_stat_texts:
 FDB str_hero_stat_HP
 FDB str_hero_stat_Batt
 FDB str_hero_stat_Dmg
 FDB str_hero_stat_Crit
 FDB str_hero_stat_Mine
 FDB str_hero_stat_Drill
 FDB str_hero_stat_Lava
hero_stat_pointers:
 FDB $0
 FDB hero_Batt_Max
 FDB hero_Dmg
 FDB hero_Crit_Rate
 FDB hero_Mine_Speed
 FDB hero_Drill_Speed
 FDB hero_Lava_Res
str_Skill0_title:
 FCB "Battery Saver",$0
str_Skill1_title:
 FCB "Bounty Hunter",$0
str_Skill2_title:
 FCB "Fast Digger",$0
str_Skill3_title:
 FCB "Lucky Driller",$0
str_Skill4_title:
 FCB "Master Miner",$0
str_Skill5_title:
 FCB "Lucky Crit",$0
str_Skill6_title:
 FCB "Crit Lord",$0
str_Skill7_title:
 FCB "Experienced",$0
str_Skill8_title:
 FCB "Instakill",$0
str_Skill9_title:
 FCB "Ghost",$0
str_Skill10_title:
 FCB "Free Lunch",$0
str_Skill11_title:
 FCB "Wise Rewards",$0
str_Skill12_title:
 FCB "Big Discount",$0
str_Skill13_title:
 FCB "Only the Best",$0
str_Skill14_title:
 FCB "Crystalsmith",$0
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
str_Skill0_description:
 FCB "20% chance that*mining won't*consume energy",$0
str_Skill1_description:
 FCB "10% chance of*crystal when*you kill an*enemy",$0
str_Skill2_description:
 FCB "-2 Mine and*Drill time",$0
str_Skill3_description:
 FCB "25% chance of*crystal when*mining rock",$0
str_Skill4_description:
 FCB "Mine double*crystals",$0
str_Skill5_description:
 FCB "+20% chance of*critical hit",$0
str_Skill6_description:
 FCB "Crit damage*raised from*150% to 200%",$0
str_Skill7_description:
 FCB "+10% bonus to*experience on*kill",$0
str_Skill8_description:
 FCB "5% chance to*kill enemy in*one hit",$0
str_Skill9_description:
 FCB "Walk through*enemies",$0
str_Skill10_description:
 FCB "20% chance that*crafting will*cost nothing",$0
str_Skill11_description:
 FCB "+5 random*crystal when*leveling up",$0
str_Skill12_description:
 FCB "-1 to cost of*items",$0
str_Skill13_description:
 FCB "10% chance*that crafted*items will be*yellow quality",$0
str_Skill14_description:
 FCB "Pay with any*crystal",$0
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
tile_Ground_0:
 FCB [$B6]$0
tile_Ground_90:
 FCB [$BA]$0
tile_Ground_180:
 FCB [$B6]$0
tile_Ground_270:
 FCB [$BA]$0
tile_Rock:
 FCB [$B6]$0
tile_Lava:
 FCB [$B6]$0
tile_Crystal_red:
 FCB [$22A]$0
tile_Crystal_yellow:
 FCB [$22A]$0
tile_Crystal_blue:
 FCB [$22A]$0
tile_Robot_left:
 FCB [$202]$0
tile_Robot_right:
 FCB [$202]$0
tile_Menu_item_temp:
 FCB [$B2]$0
tile_Skill_temp:
 FCB [$4B]$0
tile_Menu_body:
 FCB $10,$10,$10,$40,$0,$10,$40,$0,$10,$40,$0,$10,$40,$0,$5,$40,$6,$41,$5,$40,$0,$3,$40,$3,$41,$4,$42,$3,$41,$3,$40,$0,$2,$40
 FCB $1,$41,$1,$42,$1,$41,$6,$42,$1,$41,$1,$42,$1,$41,$2,$40,$0,$1,$40,$1,$41,$2,$42,$1,$41,$6,$42,$1,$41,$2,$42,$1,$41,$1,$40
 FCB $0,$1,$41,$3,$42,$1,$41,$6,$42,$1,$41,$3,$42,$1,$41,$0,$1,$41,$2,$42,$2,$41,$6,$42,$2,$41,$2,$42,$1,$41,$0,$1,$40,$2,$41
 FCB $1,$40,$1,$41,$6,$42,$1,$41,$1,$40,$2,$41,$1,$40,$0,$4,$40,$2,$41,$4,$42,$2,$41,$4,$40,$0,$5,$40,$6,$41,$5,$40,$0,$10,$40
 FCB $0,$10,$40,$0,$10,$40,$0
tile_Menu_head:
 FCB $10,$10,$10,$40,$0,$3,$40,$1,$47,$3,$48,$9,$40,$0,$2,$40,$3,$47,$3,$48,$8,$40,$0,$3,$40,$1,$47,$2,$40,$2,$48,$8,$40,$0,$7
 FCB $40,$2,$48,$7,$40,$0,$7,$40,$2,$48,$7,$40,$0,$2,$40,$C,$49,$2,$40,$0,$1,$40,$2,$49,$A,$4A,$2,$49,$1,$40,$0,$1,$40,$1,$49
 FCB $C,$4A,$1,$49,$1,$40,$0,$1,$40,$1,$49,$3,$4A,$1,$3F,$1,$0,$3,$4A,$1,$3F,$1,$0,$2,$4A,$1,$49,$1,$40,$0,$1,$40,$1,$49,$3,$4A
 FCB $2,$3F,$3,$4A,$2,$3F,$2,$4A,$1,$49,$1,$40,$0,$1,$40,$1,$49,$C,$4A,$1,$49,$1,$40,$0,$1,$40,$1,$49,$3,$4A,$1,$4B,$8,$4A,$1
 FCB $49,$1,$40,$0,$1,$40,$1,$49,$4,$4A,$5,$4B,$3,$4A,$1,$49,$1,$40,$0,$1,$40,$2,$49,$A,$4A,$2,$49,$1,$40,$0,$2,$40,$C,$49,$2
 FCB $40,$0
tile_Menu_legs:
 FCB $10,$10,$10,$40,$0,$10,$40,$0,$10,$40,$0,$10,$40,$0,$10,$40,$0,$3,$40,$3,$43,$3,$40,$3,$43,$4,$40,$0,$3,$40,$1,$43,$1,$44
 FCB $1,$43,$3,$40,$1,$43,$1,$44,$1,$43,$4,$40,$0,$3,$40,$1,$43,$1,$44,$1,$43,$3,$40,$1,$43,$1,$44,$1,$43,$4,$40,$0,$3,$40,$1,$43
 FCB $1,$44,$1,$43,$3,$40,$1,$43,$1,$44,$1,$43,$4,$40,$0,$3,$40,$1,$43,$1,$44,$1,$43,$3,$40,$1,$43,$1,$44,$1,$43,$4,$40,$0,$3,$40
 FCB $1,$43,$2,$44,$1,$43,$2,$40,$1,$43,$2,$44,$1,$43,$3,$40,$0,$3,$40,$1,$43,$3,$44,$1,$43,$1,$40,$1,$43,$3,$44,$1,$43,$2,$40,$0
 FCB $3,$40,$5,$43,$1,$40,$5,$43,$2,$40,$0,$10,$40,$0,$10,$40,$0,$10,$40,$0
tile_Menu_gun:
 FCB $10,$10,$10,$40,$0,$10,$40,$0,$10,$40,$0,$9,$40,$1,$45,$6,$40,$0,$8,$40,$3,$45,$5,$40,$0,$7,$40,$1,$45,$2,$46,$2,$45,$4,$40
 FCB $0,$6,$40,$1,$45,$3,$46,$1,$45,$5,$40,$0,$6,$40,$1,$45,$2,$46,$3,$45,$4,$40,$0,$5,$40,$8,$45,$3,$40,$0,$4,$40,$3,$45,$3,$40
 FCB $4,$45,$2,$40,$0,$3,$40,$2,$46,$1,$45,$5,$40,$3,$45,$2,$40,$0,$3,$40,$2,$46,$7,$40,$1,$45,$3,$40,$0,$10,$40,$0,$10,$40,$0
 FCB $10,$40,$0,$10,$40,$0
tile_Menu_tool:
 FCB $10,$10,$10,$40,$0,$10,$40,$0,$10,$40,$0,$9,$40,$2,$4C,$5,$40,$0,$8,$40,$2,$4C,$6,$40,$0,$8,$40,$2,$4C,$2,$40,$1,$4C,$3,$40
 FCB $0,$7,$40,$6,$4C,$3,$40,$0,$6,$40,$6,$4C,$4,$40,$0,$5,$40,$5,$4C,$6,$40,$0,$4,$40,$5,$4C,$7,$40,$0,$3,$40,$5,$4C,$8,$40,$0,$3,$40
 FCB $4,$4C,$9,$40,$0,$4,$40,$2,$4C,$A,$40,$0,$10,$40,$0,$10,$40,$0,$10,$40,$0
tile_Robot_left_raw:
 FCB $20,$20,$20,$40,$0,$12,$40,$3,$48,$1,$47,$A,$40,$0,$11,$40,$3,$48,$3,$47,$9,$40,$0,$11,$40,$2,$48,$2,$40,$1,$47,$A,$40
 FCB $0,$10,$40,$2,$48,$E,$40,$0,$10,$40,$2,$48,$E,$40,$0,$B,$40,$C,$49,$9,$40,$0,$A,$40,$2,$49,$A,$4A,$2,$49,$8,$40,$0
 FCB $A,$40,$1,$49,$C,$4A,$1,$49,$8,$40,$0,$A,$40,$1,$49,$2,$4A,$1,$0,$1,$3F,$3,$4A,$1,$0,$1,$3F,$3,$4A,$1,$49,$8,$40,$0,$A
 FCB $40,$1,$49,$2,$4A,$2,$3F,$3,$4A,$2,$3F,$3,$4A,$1,$49,$8,$40,$0,$A,$40,$1,$49,$C,$4A,$1,$49,$8,$40,$0,$A,$40,$1,$49,$8
 FCB $4A,$1,$4B,$3,$4A,$1,$49,$8,$40,$0,$A,$40
 FCB $1,$49,$3,$4A,$5,$4B,$4,$4A,$1,$49,$8,$40,$0,$6,$40,$1,$45,$3,$40,$2,$49,$A,$4A,$2,$49,$8,$40,$0,$5,$40,$3,$45,$3,$40,$C
 FCB $49,$5,$40,$2,$4C,$2,$40,$0,$4,$40,$1,$45,$2,$46,$2,$45,$3,$40,$A,$41,$5,$40,$2,$4C,$3,$40,$0,$3,$40,$1,$45,$3,$46,$1,$45
 FCB $1,$40,$4,$41,$8,$42
 FCB $4,$41,$2,$40,$2,$4C,$2,$40,$1,$4C,$0,$3,$40,$1,$45,$2,$46,$2,$45,$1,$41,$2,$42,$1,$41,$A,$42,$1,$41,$2,$42,$1,$41,$6,$4C
 FCB $0,$2,$40,$5,$45,$1,$41,$3,$42,$1,$41,$A,$42,$1,$41,$3,$42,$1,$41,$4,$4C,$1,$40,$0,$1,$40,$3,$45,$2,$40,$1,$41,$3,$42,$2
 FCB $41,$A,$42,$2,$41,$3
 FCB $42,$1,$41,$1,$4C,$3,$40,$0,$2,$46,$1,$45,$3,$40,$1,$41,$2,$42,$1,$41,$1,$40,$1,$41,$A,$42,$1,$41,$1,$40,$1,$41,$2,$42
 FCB $1,$41,$4,$40,$0,$2,$46,$5,$40,$2,$41,$1,$45,$1,$40,$2,$41,$8,$42,$2,$41,$1,$40,$1,$4C,$2,$41,$5,$40,$0,$C,$40,$A,$41
 FCB $1,$40,$3,$4C,$6,$40,$0,$D
 FCB $40,$3,$43,$3,$40,$3,$43,$1,$40,$2,$4C,$7,$40,$0,$D,$40,$1,$43,$1,$44,$1,$43,$3,$40,$1,$43,$1,$44,$1,$43,$A,$40,$0,$D
 FCB $40,$1,$43,$1,$44,$1,$43,$3,$40,$1,$43,$1,$44,$1,$43,$A,$40,$0,$D,$40,$1,$43,$1,$44,$1,$43,$3,$40,$1,$43,$1,$44,$1,$43
 FCB $A,$40,$0,$D,$40,$1
 FCB $43,$1,$44,$1,$43,$3,$40,$1,$43,$1,$44,$1,$43,$A,$40,$0,$C,$40,$1,$43,$2,$44,$1,$43,$2,$40,$1,$43,$2,$44,$1,$43,$A,$40
 FCB $0,$B,$40,$1,$43,$3,$44,$1,$43,$1,$40,$1,$43,$3,$44,$1,$43,$A,$40,$0,$B,$40,$5,$43,$1,$40,$5,$43,$A,$40,$0
tile_Robot_right_raw:
 FCB $20,$20,$20,$40,$0,$C,$40,$1,$47,$3,$48,$10,$40,$0,$B,$40,$3,$47,$3,$48,$F,$40,$0,$C,$40,$1,$47,$2,$40,$2,$48,$F,$40
 FCB $0,$10,$40,$2,$48,$E,$40,$0,$10,$40,$2,$48,$E,$40,$0,$B,$40,$C,$49,$9,$40,$0,$A,$40,$2,$49,$A,$4A,$2,$49,$8,$40,$0
 FCB $A,$40,$1,$49,$C
 FCB $4A,$1,$49,$8,$40,$0,$A,$40,$1,$49,$3,$4A,$1,$3F,$1,$0,$3,$4A,$1,$3F,$1,$0,$2,$4A,$1,$49,$8,$40,$0,$A,$40,$1,$49,$3,$4A,$2
 FCB $3F,$3,$4A,$2,$3F,$2,$4A,$1,$49,$8,$40,$0,$A,$40,$1,$49,$C,$4A,$1,$49,$8,$40,$0,$A,$40,$1,$49,$3,$4A,$1,$4B,$8,$4A,$1,$49,$8
 FCB $40,$0,$A,$40
 FCB $1,$49,$4,$4A,$5,$4B,$3,$4A,$1,$49,$8,$40,$0,$6,$40,$1,$45,$3,$40,$2,$49,$A,$4A,$2,$49,$8,$40,$0,$5,$40,$3,$45,$3,$40,$C
 FCB $49,$5,$40,$2,$4C,$2,$40,$0,$4,$40,$1,$45,$2,$46,$2,$45,$3,$40,$A,$41,$5,$40,$2,$4C,$3,$40,$0,$3,$40,$1,$45,$3,$46,$1,$45,$1,$40
 FCB $4,$41,$8,$42
 FCB $4,$41,$2,$40,$2,$4C,$2,$40,$1,$4C,$0,$3,$40,$1,$45,$2,$46,$2,$45,$1,$41,$2,$42,$1,$41,$A,$42,$1,$41,$2,$42,$1,$41,$6,$4C
 FCB $0,$2,$40,$5,$45,$1,$41,$3,$42,$1,$41,$A,$42,$1,$41,$3,$42,$1,$41,$4,$4C,$1,$40,$0,$1,$40,$3,$45,$2,$40,$1,$41,$3,$42,$2,$41,$A
 FCB $42,$2,$41,$3
 FCB $42,$1,$41,$1,$4C,$3,$40,$0,$2,$46,$1,$45,$3,$40,$1,$41,$2,$42,$1,$41,$1,$40,$1,$41,$A,$42,$1,$41,$1,$40,$1,$41,$2,$42,$1
 FCB $41,$4,$40,$0,$2,$46,$5,$40,$2,$41,$1,$45,$1,$40,$2,$41,$8,$42,$2,$41,$1,$40,$1,$4C,$2,$41,$5,$40,$0,$C,$40,$A,$41,$1,$40,$3
 FCB $4C,$6,$40,$0,$C
 FCB $40,$3,$43,$3,$40,$3,$43,$2,$40,$2,$4C,$7,$40,$0,$C,$40,$1,$43,$1,$44,$1,$43,$3,$40,$1,$43,$1,$44,$1,$43,$B,$40,$0,$C
 FCB $40,$1,$43,$1,$44,$1,$43,$3,$40,$1,$43,$1,$44,$1,$43,$B,$40,$0,$C,$40,$1,$43,$1,$44,$1,$43,$3,$40,$1,$43,$1,$44,$1,$43,$B
 FCB $40,$0,$C,$40,$1
 FCB $43,$1,$44,$1,$43,$3,$40,$1,$43,$1,$44,$1,$43,$B,$40,$0,$C,$40,$1,$43,$2,$44,$1,$43,$2,$40,$1,$43,$2,$44,$1,$43,$A
 FCB $40,$0,$C,$40,$1,$43,$3,$44,$1,$43,$1,$40,$1,$43,$3,$44,$1,$43,$9,$40,$0,$C,$40,$5,$43,$1,$40,$5,$43,$9,$40,$0
tile_Crystal_raw:
 FCB $20,$20,$20,$40,$0,$B,$40,$1,$4D,$14,$40,$0,$A,$40,$1,$4D,$1,$4E,$1,$4D,$7,$40,$1,$4D,$B,$40,$0,$A,$40,$1,$4D,$2
 FCB $4E,$1,$4D,$6,$40,$1,$4D,$B,$40,$0,$9,$40,$1,$4D,$4,$4E,$1,$4D,$4,$40,$2,$4D,$B,$40,$0,$8,$40,$1,$4D,$6,$4E,$1,$4D,$3,$40
 FCB $1,$4D,$1,$4F,$1,$4D,$A
 FCB $40,$0,$8,$40,$1,$4D,$6,$4E,$1,$4D,$2,$40,$1,$4D,$2,$4F,$1,$4D,$A,$40,$0,$8,$40,$1,$4D,$6,$4E,$1,$4D,$2,$40,$1,$4D,$2
 FCB $4F,$1,$4D,$A,$40,$0,$8,$40,$1,$4D,$6,$4E,$1,$4D,$1,$40,$1,$4D,$3,$4F,$1,$4D,$A,$40,$0,$9,$40,$1,$4D,$5,$4E,$1,$4D,$1,$40
 FCB $1,$4D,$3,$4F,$1,$4D,$A
 FCB $40,$0,$9,$40,$1,$4D,$5,$4E,$2,$4D,$4,$4F,$1,$4D,$3,$40,$1,$4D,$6,$40,$0,$9,$40,$1,$4D,$6,$4E,$1,$4D,$5,$4F,$1,$4D,$1
 FCB $40,$1,$4D,$1,$4E,$2,$4D,$4,$40,$0,$3,$40,$3,$4D,$3,$40,$1,$4D,$6,$4E,$1,$4D,$5,$4F,$2,$4D,$4,$4E,$1,$4D,$3,$40,$0,$3,$40,$1
 FCB $4D,$2,$4F,$1,$4D,$2,$40
 FCB $1,$4D,$6,$4E,$1,$4D,$4,$4F,$2,$4D,$5,$4E,$1,$4D,$3,$40,$0,$4,$40,$1,$4D,$1,$4F,$2,$4D,$1,$40,$1,$4D,$6,$4E,$1,$4D,$3
 FCB $4F,$1,$4D,$7,$4E,$1,$4D,$3,$40,$0,$4,$40,$1,$4D,$3,$4F,$1,$4D,$1,$40,$1,$4D,$5,$4E,$1,$4D,$1,$4F,$2,$4D,$7,$4E,$1,$4D,$4
 FCB $40,$0,$5,$40,$1,$4D,$3,$4F
 FCB $2,$4D,$5,$4E,$2,$4D,$9,$4E,$1,$4D,$4,$40,$0,$5,$40,$1,$4D,$4,$4F,$1,$4D,$5,$4E,$1,$4D,$A,$4E,$1,$4D,$4,$40,$0,$6
 FCB $40,$1,$4D,$3,$4F,$1,$4D,$5,$4E,$1,$4D,$9,$4E,$1,$4D,$5,$40,$0,$6,$40,$1,$4D,$3,$4F,$1,$4D,$6,$4E,$1,$4D,$7,$4E,$1,$4D,$6
 FCB $40,$0,$7,$40,$1,$4D,$2,$4F,$1
 FCB $4D,$6,$4E,$1,$4D,$6,$4E,$1,$4D,$7,$40,$0,$7,$40,$1,$4D,$3,$4F,$1,$4D,$5,$4E,$1,$4D,$5,$4E,$1,$4D,$8,$40,$0,$8,$40
 FCB $1,$4D,$2,$4F,$4,$4D,$2,$4E,$1,$4D,$4,$4E,$1,$4D,$9,$40,$0,$8,$40,$1,$4D,$2,$4F,$1,$4D,$2,$50,$1,$4D,$2,$4E,$3,$4D,$1,$4E
 FCB $2,$4D,$9,$40,$0,$7,$40,$4,$4D
 FCB $3,$50,$4,$4D,$1,$50,$5,$4D,$8,$40,$0,$6,$40,$1,$4D,$8,$50,$2,$4D,$6,$50,$2,$4D,$7,$40,$0,$5,$40,$1,$4D,$6,$50,$1
 FCB $51,$8,$50,$1,$51,$2,$50,$2,$4D,$6,$40,$0,$5,$40,$1,$4D,$1,$50,$1,$52,$11,$50,$1,$4D,$6,$40,$0,$5,$40,$1,$4D,$A,$50,$1
 FCB $52,$8,$50,$1,$4D,$6,$40,$0,$5,$40
 FCB $8,$4D,$6,$50,$7,$4D,$6,$40,$0,$C,$40,$7,$4D,$D,$40,$0,$20,$40,$0
tile_Ground_raw:
 FCB $20,$20,$20,$53,$0,$F,$53,$1,$54,$10,$53,$0,$2,$53,$1,$55,$1D,$53,$0,$20,$53,$0,$17,$53,$1,$55,$8,$53,$0,$20,$53,$0
 FCB $5,$53,$1,$54,$1A,$53,$0,$1F,$53,$1,$54,$0,$B,$53,$1,$55,$14,$53,$0,$20,$53,$0,$20,$53,$0,$17,$53,$1,$54,$8,$53,$0,$11,$53
 FCB $1,$55,$E
 FCB $53,$0,$3,$53,$1,$55,$1C,$53,$0,$19,$53,$1,$55,$6,$53,$0,$1D,$53,$1,$55,$2,$53,$0,$20,$53,$0,$A,$53,$1,$54,$15,$53
 FCB $0,$20,$53,$0,$20,$53,$0,$D,$53,$1,$55,$C,$53,$1,$54,$5,$53,$0,$13,$53,$1,$54,$C,$53,$0,$20,$53,$0,$1,$55,$1F,$53,$0
 FCB $4,$53,$1,$54,$1B,$53
 FCB $0,$16,$53,$1,$55,$9,$53,$0,$C,$53,$1,$54,$F,$53,$1,$55,$3,$53,$0,$20,$53,$0,$20,$53,$0,$20,$53,$0,$15,$53,$1,$54
 FCB $A,$53,$0,$3,$53,$1,$55,$1C,$53,$0
tile_Monster:
 FCB $20,$20,$20,$40,$0,$20,$40,$0,$20,$40,$0,$20,$40,$0,$20,$40,$0,$9,$40,$E,$0,$9,$40,$0,$9,$40,$E,$0,$9,$40,$0,$9,$40
 FCB $2,$0,$4,$3,$2,$0,$4,$3,$2,$0,$9,$40,$0,$9,$40,$2,$0,$4,$3,$2,$0,$4,$3,$2,$0,$9,$40,$0,$9,$40,$E,$0,$9,$40,$0,$9,$40,$5,$0,$4,$3
 FCB $5,$0,$9,$40,$0,$9,$40,$4
 FCB $0,$1,$3,$4,$0,$1,$3,$4,$0,$9,$40,$0,$9,$40,$E,$0,$9,$40,$0,$6,$40,$14,$0,$6,$40,$0,$5,$40,$2,$0,$2,$3,$1,$0,$C,$15,$1,$0
 FCB $2,$3,$2,$0,$5,$40,$0,$4,$40,$3,$0,$3,$3,$2,$0,$8,$15,$2,$0,$3,$3,$3,$0,$4,$40,$0,$3,$40,$5,$0,$4,$3,$2,$0,$4,$15,$2,$0,$4,$3,$5,$0
 FCB $3,$40,$0,$2,$40,$5,$0
 FCB $1,$15,$2,$0,$4,$3,$4,$0,$4,$3,$2,$0,$1,$15,$5,$0,$2,$40,$0,$1,$40,$6,$0,$3,$15,$1,$0,$A,$3,$1,$0,$3,$15,$6,$0,$1,$40,$0,$1
 FCB $40,$6,$0,$3,$15,$1,$0,$A,$3,$1,$0,$3,$15,$6,$0,$1,$40,$0,$1,$40,$4,$0,$1,$40,$1,$0,$1,$15,$2,$0,$4,$3,$4,$0,$4,$3,$2,$0,$1,$15
 FCB $1,$0,$1,$40,$4,$0,$1,$40
 FCB $0,$1,$40,$3,$0,$2,$40,$2,$0,$4,$3,$2,$0,$4,$15,$2,$0,$4,$3,$2,$0,$2,$40,$3,$0,$1,$40,$0,$1,$40,$2,$0,$3,$40,$1,$0,$3,$3,$2
 FCB $0,$8,$15,$2,$0,$3,$3,$1,$0,$3,$40,$2,$0,$1,$40,$0,$6,$40,$1,$0,$2,$3,$1,$0,$C,$15,$1,$0,$2,$3,$1,$0,$6,$40,$0,$6,$40,$14,$0,$6
 FCB $40,$0,$8,$40,$7,$0,$2,$40
 FCB $7,$0,$8,$40,$0,$8,$40,$7,$0,$2,$40,$7,$0,$8,$40,$0,$8,$40,$7,$0,$2,$40,$7,$0,$8,$40,$0,$8,$40,$7,$0,$2,$40,$7,$0,$8,$40
 FCB $0,$8,$40,$7,$0,$2,$40,$7,$0,$8,$40,$0,$8,$40,$7,$0,$2,$40,$7,$0,$8,$40,$0,$8,$40,$7,$0,$2,$40,$7,$0,$8,$40,$0
tile_Monster_dead:
 FCB $20,$20,$20,$40,$0,$20,$40,$0,$20,$40,$0,$20,$40,$0,$20,$40,$0,$20,$40,$0,$20,$40,$0,$20,$40,$0,$20,$40,$0,$20,$40
 FCB $0,$20,$40,$0,$20,$40,$0,$9,$40,$C,$0,$B,$40,$0,$9,$40,$1,$0,$2,$2A,$1,$0,$1,$15,$7,$0,$B,$40,$0,$2,$40,$8,$0,$3,$2A,$6
 FCB $0,$1,$2A,$1,$0,$B,$40,$0
 FCB $2,$40,$9,$0,$1,$2A,$6,$0,$1,$2A,$A,$0,$3,$40,$0,$2,$40,$8,$0,$1,$15,$6,$0,$1,$2A,$1,$0,$1,$15,$9,$0,$3,$40,$0,$2,$40
 FCB $8,$0,$1,$15,$5,$0,$2,$2A,$1,$0,$1,$15,$5,$0,$1,$2A,$1,$0,$1,$2A,$1,$0,$3,$40,$0,$2,$40,$8,$0,$2,$15,$1,$0,$4,$2A,$1,$0,$2,$15
 FCB $6,$0,$1,$2A,$2,$0,$3,$40
 FCB $0,$2,$40,$8,$0,$2,$15,$1,$0,$4,$2A,$1,$0,$2,$15,$2,$0,$1,$2A,$2,$0,$1,$2A,$1,$0,$1,$2A,$1,$0,$3,$40,$0,$2,$40,$8,$0,$3
 FCB $15,$1,$0,$2,$2A,$1,$0,$3,$15,$3,$0,$1,$2A,$5,$0,$3,$40,$0,$9,$40,$1,$0,$3,$15,$1,$0,$2,$2A,$1,$0,$3,$15,$3,$0,$1,$2A,$5,$0
 FCB $3,$40,$0,$9,$40,$1,$0,$3,$15
 FCB $1,$0,$2,$2A,$1,$0,$3,$15,$3,$0,$1,$2A,$5,$0,$3,$40,$0,$2,$40,$8,$0,$3,$15,$1,$0,$2,$2A,$1,$0,$3,$15,$3,$0,$1,$2A,$1,$0
 FCB $1,$2A,$1,$0,$1,$2A,$1,$0,$3,$40,$0,$2,$40,$8,$0,$2,$15,$1,$0,$4,$2A,$1,$0,$2,$15,$2,$0,$1,$2A,$3,$0,$1,$2A,$2,$0,$3,$40,$0
 FCB $2,$40,$8,$0,$2,$15,$1,$0,$4
 FCB $2A,$1,$0,$2,$15,$5,$0,$1,$2A,$1,$0,$1,$2A,$1,$0,$3,$40,$0,$2,$40,$8,$0,$1,$15,$5,$0,$2,$2A,$1,$0,$1,$15,$9,$0,$3,$40
 FCB $0,$2,$40,$8,$0,$1,$15,$6,$0,$1,$2A,$1,$0,$1,$15,$9,$0,$3,$40,$0,$2,$40,$9,$0,$1,$2A,$6,$0,$1,$2A,$A,$0,$3,$40,$0,$2,$40
 FCB $8,$0,$3,$2A,$6,$0,$1,$2A,$1,$0
 FCB $B,$40,$0,$9,$40,$1,$0,$2,$2A,$1,$0,$1,$15,$7,$0,$B,$40,$0,$9,$40,$C,$0,$B,$40,$0
tile_Menu_item_slot:
 FCB $10,$10,$10,$0,$0,$1,$0,$F,$8,$0,$1,$0,$1,$8,$D,$0,$1,$8,$0,$1,$0,$1,$8,$1,$0,$B,$4,$1,$0,$1,$8,$0,$1,$0,$1,$8,$1,$0
 FCB $B,$4,$1,$0,$1,$8,$0,$1,$0,$1,$8,$1,$0,$B,$4,$1,$0,$1,$8,$0,$1,$0,$1,$8,$1,$0,$B,$4,$1,$0,$1,$8,$0,$1,$0,$1,$8,$1,$0,$B,$4
 FCB $1,$0,$1,$8,$0,$1,$0,$1,$8,$1,$0
 FCB $B,$4,$1,$0,$1,$8,$0,$1,$0,$1,$8,$1,$0,$B,$4,$1,$0,$1,$8,$0,$1,$0,$1,$8,$1,$0,$B,$4,$1,$0,$1,$8,$0,$1,$0,$1,$8,$1,$0
 FCB $B,$4,$1,$0,$1,$8,$0,$1,$0,$1,$8,$1,$0,$B,$4,$1,$0,$1,$8,$0,$1,$0,$1,$8,$1,$0,$B,$4,$1,$0,$1,$8,$0,$1,$0,$1,$8,$D,$0,$1
 FCB $8,$0,$1,$0,$F,$8,$0
tile_Crystal_base:
 FCB $20,$20,$20,$40,$0,$20,$40,$0,$20,$40,$0,$20,$40,$0,$20,$40,$0,$20,$40,$0,$20,$40,$0,$20,$40,$0,$20,$40,$0,$20,$40
 FCB $0,$20,$40,$0,$20,$40,$0,$20,$40,$0,$20,$40,$0,$20,$40,$0,$20,$40,$0,$20,$40,$0,$20,$40,$0,$20,$40,$0,$20,$40,$0,$20,$40
 FCB $0,$20,$40,$0,$B,$40,$4,$0
 FCB $11,$40,$0,$B,$40,$1,$0,$2,$21,$1,$0,$2,$40,$3,$0,$1,$40,$2,$0,$9,$40,$0,$7,$40,$4,$0,$3,$21,$4,$0,$1,$21,$5,$0,$8,$40
 FCB $0,$6,$40,$1,$0,$8,$21,$2,$0,$6,$21,$2,$0,$7,$40,$0,$5,$40,$1,$0,$6,$21,$1,$2,$8,$21,$1,$2,$2,$21,$2,$0,$6,$40,$0,$5,$40,$1,$0
 FCB $1,$21,$1,$20,$11,$21,$1,$0
 FCB $6,$40,$0,$5,$40,$1,$0,$A,$21,$1,$20,$8,$21,$1,$0,$6,$40,$0,$5,$40,$8,$0,$6,$21,$7,$0,$6,$40,$0,$C,$40,$7,$0,$D,$40
 FCB $0,$20,$40,$0
tile_Hero_target:
 FCB $20,$20,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$F,$F0,$F,$F0,$F,$F0,$F,$F0,$C,$0,$0,$30,$C,$0,$0
 FCB $30,$C,$0,$0,$30,$C,$0,$0,$30,$C,$0,$0,$30,$C,$0,$0,$30,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
 FCB $0,$0,$0,$0,$0,$0,$0
 FCB $0,$0,$C,$0,$0,$30,$C,$0,$0,$30,$C,$0,$0,$30,$C,$0,$0,$30,$C,$0,$0,$30,$C,$0,$0,$30,$F,$F0,$F,$F0,$F,$F0
 FCB $F,$F0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
tile_Menu_item_selector:
 FCB $11,$11,$0,$7,$F0,$0,$7,$F0,$0,$3F,$FE,$0,$3F,$FE,$0,$3F,$FE,$0,$FF,$FF,$80,$FF,$FF,$80,$FF,$FF
 FCB $80,$FF,$FF,$80,$FF,$FF,$80,$FF,$FF,$80,$FF,$FF,$80,$3F,$FE,$0,$3F,$FE,$0,$3F,$FE,$0,$7,$F0,$0
 FCB $7,$F0,$0
tile_Menu_skill_selector:
 FCB $18,$18,$0,$0,$FF,$0,$0,$FF,$0,$3F,$FF,$FC,$3F,$FF,$FC,$3F,$FF,$FC,$3F,$FF,$FC,$3F,$FF,$FC,$3F
 FCB $FF,$FC,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
 FCB $FF,$FF,$3F,$FF,$FC,$3F,$FF,$FC,$3F,$FF,$FC,$3F,$FF,$FC,$3F,$FF,$FC,$3F,$FF,$FC,$0,$FF,$0,$0,$FF,$0
tile_Exit:
 FCB $20,$20,$0,$7F,$FF,$0,$0,$3F,$FF,$0,$1,$1F,$FF,$0,$3,$F,$FF,$0,$7,$7,$FF,$0,$F,$3,$FF,$0,$1F,$1,$FF,$0
 FCB $3F,$0,$FF,$0,$7F,$0,$7F,$0,$FF,$0,$3F,$1,$FF,$0,$1F,$3,$FF,$0,$F,$7,$FF,$0,$7,$F,$FF,$0,$3,$1F,$FF,$0,$1
 FCB $3F,$FF,$0,$0,$7F,$FF
 FCB $FF,$FE,$0,$0,$FF,$FC,$80,$0,$FF,$F8,$C0,$0,$FF,$F0,$E0,$0,$FF,$E0,$F0,$0,$FF,$C0,$F8,$0
 FCB $FF,$80,$FC,$0,$FF,$0,$FE,$0,$FE,$0,$FF,$0,$FC,$0,$FF,$80,$F8,$0,$FF,$C0,$F0,$0,$FF,$E0,$E0,$0
 FCB $FF,$F0,$C0,$0,$FF
 FCB $F8,$80,$0,$FF,$FC,$0,$0,$FF,$FE
tile_Res_HP_Heal:
 FCB $10,$10,$1,$7F,$FE,$C0,$3,$80,$1,$83,$C1,$83,$C1,$83,$C1,$9F,$F9,$9F,$F9,$9F,$F9,$9F,$F9
 FCB $83,$C1,$83,$C1,$83,$C1,$80,$1,$C0,$3,$7F,$FE
tile_Res_Batt_Heal:
 FCB $10,$10,$1,$7F,$FE,$C0,$3,$80,$1,$83,$C1,$83,$C1,$83,$C1,$9F,$F9,$9F,$F9,$9F,$F9,$9F,$F9
 FCB $83,$C1,$83,$C1,$83,$C1,$80,$1,$C0,$3,$7F,$FE
tile_Res_HP_Upgrade:
 FCB $10,$10,$1,$7F,$FE,$C0,$3,$80,$1,$A2,$79,$A2,$45,$A2,$45,$A2,$45,$BE,$79,$A2,$41,$A2,$41,$A2
 FCB $41,$A2,$41,$A2,$41,$80,$1,$C0,$3,$7F,$FE
tile_Res_Batt_Upgrade:
 FCB $10,$10,$1,$7F,$FE,$C0,$3,$80,$1,$87,$C1,$84,$21,$84,$21,$84,$21,$87,$C1,$84,$21,$84,$21,$84
 FCB $21,$84,$21,$87,$C1,$80,$1,$C0,$3,$7F,$FE
tile_Res_Exp_Upgrade:
 FCB $10,$10,$1,$7F,$FE,$C0,$3,$80,$1,$BA,$B9,$A2,$A5,$A2,$A5,$A2,$A5,$B9,$39,$A2,$A1,$A2,$A1
 FCB $A2,$A1,$A2,$A1,$BA,$A1,$80,$1,$C0,$3,$7F,$FE
tile_Res_Dmg_Upgrade:
 FCB $10,$10,$1,$7F,$FE,$C0,$3,$80,$1,$87,$81,$84,$C1,$84,$61,$84,$21,$84,$21,$84,$21,$84,$21,$84
 FCB $61,$84,$C1,$87,$81,$80,$1,$C0,$3,$7F,$FE
tile_Skill0:
 FCB $18,$18,$2,$3F,$FF,$FC,$60,$0,$6,$C0,$0,$3,$80,$0,$1,$87,$E7,$E1,$84,$24,$21,$84,$24,$21,$9F,$FF
 FCB $F9,$90,$0,$9,$90,$0,$89,$90,$0,$89,$97,$C3,$E9,$90,$0,$89,$90,$0,$89,$90,$0,$9,$90,$0,$9,$90,$0
 FCB $9,$90,$0,$9,$9F,$FF
 FCB $F9,$80,$0,$1,$80,$0,$1,$C0,$0,$3,$60,$0,$6,$3F,$FF,$FC
tile_Skill1:
 FCB $18,$18,$2,$3F,$FF,$FC,$60,$0,$6,$C7,$C0,$3,$88,$20,$1,$90,$10,$1,$AA,$A8,$1,$A4,$48,$1,$AA,$A8,$1
 FCB $A0,$8,$1,$9F,$F0,$81,$95,$51,$C1,$9F,$F3,$41,$95,$52,$61,$8F,$E2,$3D,$80,$6,$65,$80,$3C,$CD,$80
 FCB $27,$89,$80,$13,$19
 FCB $80,$9,$91,$80,$F,$F1,$80,$8,$11,$C0,$F,$F3,$60,$0,$6,$3F,$FF,$FC
tile_Skill2:
 FCB $18,$18,$2,$3F,$FF,$FC,$60,$0,$6,$C0,$0,$3,$80,$7E,$1,$80,$42,$1,$80,$42,$1,$80,$42,$1,$80,$42,$1,$87
 FCB $FF,$E1,$84,$C6,$21,$84,$31,$A1,$83,$8C,$41,$82,$63,$41,$81,$18,$81,$81,$C6,$81,$80,$B1,$1,$80
 FCB $8D,$1,$80,$62,$1
 FCB $80,$5A,$1,$80,$24,$1,$80,$18,$1,$C0,$0,$3,$60,$0,$6,$3F,$FF,$FC
tile_Skill3:
 FCB $18,$18,$2,$3F,$FF,$FC,$60,$0,$6,$C1,$E0,$3,$8F,$F0,$1,$9F,$F0,$1,$9E,$D8,$1,$BF,$F8,$1,$BF,$F8
 FCB $1,$B7,$F0,$1,$BF,$E0,$81,$9E,$C1,$C1,$87,$83,$41,$80,$2,$61,$80,$2,$3D,$80,$6,$65,$80,$3C,$CD
 FCB $80,$27,$89,$80,$13
 FCB $19,$80,$9,$91,$80,$F,$F1,$80,$8,$11,$C0,$F,$F3,$60,$0,$6,$3F,$FF,$FC
tile_Skill4:
 FCB $18,$18,$2,$3F,$FF,$FC,$60,$80,$6,$C1,$C0,$3,$83,$40,$1,$82,$60,$1,$82,$3C,$1,$86,$64,$1,$BC,$CC,$1
 FCB $A7,$88,$1,$93,$18,$81,$89,$91,$C1,$8F,$F3,$41,$88,$12,$61,$8F,$F2,$3D,$80,$6,$65,$80,$3C,$CD,$80
 FCB $27,$89,$80
 FCB $13,$19,$80,$9,$91,$80,$F,$F1,$80,$8,$11,$C0,$F,$F3,$60,$0,$6,$3F,$FF,$FC
tile_Skill5:
 FCB $18,$18,$2,$3F,$FF,$FC,$60,$0,$6,$C0,$7C,$3,$80,$82,$1,$81,$1,$1,$82,$AA,$81,$82,$44,$81,$82,$AA
 FCB $81,$82,$0,$81,$81,$FF,$1,$81,$55,$1,$81,$FF,$1,$81,$55,$1,$80,$FE,$1,$80,$0,$1,$9E,$F7,$11,$82,$95
 FCB $21,$9E,$97,$41
 FCB $90,$90,$B9,$90,$91,$29,$9E,$F2,$39,$C0,$0,$3,$60,$0,$6,$3F,$FF,$FC
tile_Skill6:
 FCB $18,$18,$2,$3F,$FF,$FC,$60,$0,$6,$C0,$0,$3,$80,$0,$1,$80,$3F,$E1,$80,$10,$21,$80,$8,$21,$80,$14,$21,$80
 FCB $3E,$21,$80,$41,$21,$80,$F0,$A1,$81,$F,$61,$83,$82,$21,$84,$64,$1,$8C,$18,$1,$92,$10,$1,$A1,$20,$1,$98
 FCB $C0,$1,$86
 FCB $80,$1,$81,$0,$1,$80,$0,$1,$C0,$0,$3,$60,$0,$6,$3F,$FF,$FC
tile_Skill7:
 FCB $18,$18,$2,$3F,$FF,$FC,$60,$0,$6,$C1,$0,$83,$82,$81,$41,$84,$42,$21,$88,$3C,$11,$93,$81,$C9,$A4,$42
 FCB $25,$A8,$24,$15,$A9,$24,$95,$A4,$42,$25,$A3,$81,$C5,$A0,$10,$5,$A0,$24,$5,$A0,$48,$5,$90,$52,$9,$88,$64
 FCB $11,$84,$18
 FCB $21,$82,$0,$41,$81,$FF,$81,$80,$0,$1,$C0,$0,$3,$60,$0,$6,$3F,$FF,$FC
tile_Skill8:
 FCB $18,$18,$2,$3F,$FF,$FC,$60,$0,$6,$C0,$0,$3,$80,$0,$1,$80,$0,$1,$80,$3,$E1,$B3,$4,$11,$88,$88,$9,$80,$15
 FCB $55,$BE,$D2,$25,$80,$15,$55,$88,$10,$5,$B1,$F,$F9,$86,$A,$A9,$80,$F,$F9,$80,$A,$A9,$80,$7,$F1,$80
 FCB $0,$1,$80,$0
 FCB $1,$80,$0,$1,$80,$0,$1,$C0,$0,$3,$60,$0,$6,$3F,$FF,$FC
tile_Skill9:
 FCB $18,$18,$2,$3F,$FF,$FC,$60,$0,$6,$C0,$70,$3,$BC,$88,$1,$81,$4,$1,$81,$4,$1,$BD,$4,$1,$80,$88,$21,$8E
 FCB $70,$11,$89,$E0,$9,$88,$63,$FD,$88,$50,$9,$88,$91,$11,$80,$89,$21,$BD,$A,$1,$81,$84,$1,$81,$60,$1
 FCB $A2,$18,$1,$92,$10
 FCB $1,$8C,$20,$1,$80,$40,$1,$C0,$80,$3,$60,$0,$6,$3F,$FF,$FC
tile_Skill10:
 FCB $18,$18,$2,$3F,$FF,$FC,$60,$0,$6,$C0,$7E,$3,$81,$81,$81,$82,$0,$41,$84,$8,$21,$8C,$1C,$11,$92,$34,$9
 FCB $91,$26,$9,$A0,$E3,$C5,$A0,$66,$45,$A3,$DC,$C5,$A2,$78,$85,$A1,$35,$85,$A0,$9B,$5,$90,$FF,$89
 FCB $90,$81,$49
 FCB $88,$FF,$31,$84,$0,$21,$82,$0,$41,$81,$81,$81,$C0,$7E,$3,$60,$0,$6,$3F,$FF,$FC
tile_Skill11:
 FCB $18,$18,$2,$3F,$FF,$FC,$60,$0,$6,$C2,$0,$3,$85,$0,$1,$88,$80,$1,$90,$40,$1,$BF,$E0,$1,$88,$80,$1,$88
 FCB $80,$1,$88,$80,$81,$88,$81,$C1,$88,$83,$41,$8F,$82,$61,$80,$2,$3D,$80,$6,$65,$80,$3C,$CD,$80,$27
 FCB $89,$80,$13
 FCB $19,$80,$9,$91,$80,$F,$F1,$80,$8,$11,$C0,$F,$F3,$60,$0,$6,$3F,$FF,$FC
tile_Skill12:
 FCB $18,$18,$2,$3F,$FF,$FC,$60,$0,$6,$C0,$0,$3,$80,$40,$1,$80,$C0,$1,$81,$40,$1,$9C,$40,$1,$80,$40,$1,$80
 FCB $40,$1,$81,$F0,$81,$80,$1,$C1,$80,$3,$41,$80,$2,$61,$80,$2,$3D,$80,$6,$65,$80,$3C,$CD,$80,$27,$89,$80
 FCB $13,$19,$80,$9
 FCB $91,$80,$F,$F1,$80,$8,$11,$C0,$F,$F3,$60,$0,$6,$3F,$FF,$FC
tile_Skill13:
 FCB $18,$18,$2,$3F,$FF,$FC,$60,$0,$6,$C0,$8,$3,$80,$14,$1,$80,$22,$1,$80,$41,$1,$80,$FF,$81,$80,$22,$1,$80
 FCB $22,$1,$80,$22,$1,$80,$3E,$1,$80,$0,$1,$80,$7E,$1,$81,$C3,$81,$82,$81,$41,$84,$81,$21,$88,$81,$11,$89
 FCB $81,$91,$86
 FCB $81,$61,$80,$C3,$1,$80,$7E,$1,$C0,$0,$3,$60,$0,$6,$3F,$FF,$FC
tile_Skill14:
 FCB $18,$18,$2,$3F,$FF,$FC,$60,$0,$6,$C0,$2,$3,$84,$2,$9,$82,$2,$11,$81,$8,$21,$80,$9C,$41,$80,$34,$1,$B0,$26
 FCB $1,$8C,$23,$C5,$80,$66,$59,$83,$CC,$C1,$82,$78,$81,$81,$31,$81,$80,$99,$1,$82,$FF,$21,$84,$81,$11
 FCB $88,$FF,$9
 FCB $90,$0,$5,$80,$82,$1,$80,$82,$1,$C1,$1,$3,$60,$0,$6,$3F,$FF,$FC
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
color_Basic_Head:
 FCB $0,$5,$49,$15,$4A,$2A,$48,$2A,$47,$C,$4B,$3F
color_Head_MKII:
 FCB $0,$5,$49,$15,$4A,$3A,$48,$3A,$47,$30,$4B,$3F
color_Head_MKIII:
 FCB $0,$5,$49,$15,$4A,$35,$48,$35,$47,$F,$4B,$3F
color_Head_MKIV:
 FCB $0,$5,$49,$15,$4A,$20,$48,$20,$47,$32,$4B,$3F
color_Lightning:
 FCB $0,$5,$49,$30,$4A,$3F,$48,$3F,$47,$30,$4B,$3
color_Basic_Body:
 FCB $1,$2,$41,$15,$42,$2A
color_Tin_Body:
 FCB $1,$2,$41,$15,$42,$2B
color_Iron_Body:
 FCB $1,$2,$41,$15,$42,$17
color_Steel_Body:
 FCB $1,$2,$41,$15,$42,$2
color_Fortress:
 FCB $1,$2,$41,$3,$42,$3F
color_Basic_Legs:
 FCB $2,$2,$43,$15,$44,$2A
color_Fast_Legs:
 FCB $2,$2,$43,$15,$44,$2E
color_Quick_Legs:
 FCB $2,$2,$43,$15,$44,$1D
color_Agile_Legs:
 FCB $2,$2,$43,$15,$44,$8
color_Mustang:
 FCB $2,$2,$43,$C,$44,$3F
color_Basic_Gun:
 FCB $3,$2,$45,$15,$46,$2A
color_Blaster:
 FCB $3,$2,$45,$15,$46,$3B
color_Laser:
 FCB $3,$2,$45,$15,$46,$37
color_Phaser:
 FCB $3,$2,$45,$15,$46,$22
color_Death_Ray:
 FCB $3,$2,$45,$32,$46,$3F
color_Basic_Tool:
 FCB $4,$1,$4C,$2A
color_Rock_Pick:
 FCB $4,$1,$4C,$2F
color_Rock_Drill:
 FCB $4,$1,$4C,$1F
color_Rock_Borer:
 FCB $4,$1,$4C,$A
color_Laser_Bit:
 FCB $4,$1,$4C,$F
color_Ground_0:
 FCB $5,$3,$53,$3B,$54,$20,$55,$2
color_Ground_90:
 FCB $5,$3,$53,$3B,$54,$2,$55,$8
color_Ground_180:
 FCB $5,$3,$53,$3B,$54,$8,$55,$A
color_Ground_270:
 FCB $5,$3,$53,$3B,$54,$A,$55,$20
color_Rock:
 FCB $5,$3,$53,$21,$54,$32,$55,$20
color_Lava:
 FCB $5,$3,$53,$B,$54,$2,$55,$F
color_Crystal_red:
 FCB $6,$5,$50,$21,$52,$20,$51,$2,$4E,$17,$4F,$2B
color_Crystal_yellow:
 FCB $6,$5,$50,$21,$52,$20,$51,$2,$4E,$1F,$4F,$2F
color_Crystal_blue:
 FCB $6,$5,$50,$21,$52,$20,$51,$2,$4E,$35,$4F,$3A
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
 FCB $2A
 FCB $C
 FCB $30
 FCB $32
 FCB $F
crystal_colors:
 FCB $17
 FCB $35
 FCB $1F
 ORG $200
display_X:
 DFS $1
display_Y:
 DFS $1
hero_X:
 DFS $1
hero_Y:
 DFS $1
hero_HP:
 DFS $2
hero_HP_Max:
 DFS $2
hero_HP_Max_temp:
 DFS $1
hero_HP_Upgrade:
 DFS $1
hero_Batt:
 DFS $1
hero_Batt_Max:
 DFS $1
hero_Batt_Upgrade:
 DFS $1
hero_Dmg:
 DFS $1
hero_Dmg_Upgrade:
 DFS $1
hero_Mine_Speed:
 DFS $1
hero_Drill_Speed:
 DFS $1
hero_Lava_Res:
 DFS $1
hero_Batt_Recharge:
 DFS $1
hero_Crit_Rate:
 DFS $1
hero_HP_Recharge:
 DFS $1
hero_Lava_Dmg:
 DFS $2
hero_Dmg_Cost:
 DFS $1
hero_Mine_Cost:
 DFS $1
hero_Drill_Cost:
 DFS $1
hero_Exp:
 DFS $1
hero_Exp_Max:
 DFS $1
hero_Level:
 DFS $1
hero_Red:
 DFS $1
hero_Blue:
 DFS $1
hero_Yellow:
 DFS $1
hero_Points:
 DFS $1
hero_facing:
 DFS $1
hero_target_direction:
 DFS $1
hero_target_type:
 DFS $1
hero_target_index:
 DFS $1
hero_target_index2:
 DFS $1
hero_activity:
 DFS $1
hero_activity_ticks:
 DFS $2
hero_activity_ticks_max:
 DFS $2
hero_equipped:
 DFS $5
hero_inventory:
 DFS $1E
skill_list:
 DFS $F
menu_char_x:
 DFS $1
menu_char_y:
 DFS $1
menu_skills_x:
 DFS $1
menu_skills_y:
 DFS $1
menu_res_x:
 DFS $1
menu_res_y:
 DFS $1
menu_res_target:
 DFS $1
draw_X:
 DFS $1
output_mode:
 DFS $1
monster_list:
 DFS $78
crystal_list:
 DFS $A0
map_data:
 DFS $320
monster_map:
 DFS $320
crystal_map:
 DFS $320
EnableGfxRAM:
 LDA #$4
 STA $FFE1
 STA RB2_COPY
 LDA #$5
 STA $FFE2
 STA RB3_COPY
 RTS
EnableBankROM:
 LDA #$1
 STA $FFE1
 STA RB2_COPY
 LDA #$2
 STA $FFE2
 STA RB3_COPY
 RTS
Setup:
 LDX #$0
 LDA #$0
 STA $FFE0
 STA RB1_COPY
 JSR EnableGfxRAM
 LDA #$20
 STA rand_val
 LDA #$0
 STA rand_val+$1
 RTS
clrscr:
 LDX #$80
 LDA #$0
 STA dummy
 LDA #$40
 STA dummy+$1
 LDA dummy
 LDY #$0
 .loop_outer:
 .loop_inner:
 STA (dummy),Y
 DEY
 BNE .loop_inner
 INC dummy+$1
 DEX
 BNE .loop_outer
 RTS
CalcXY:
 LDA $61 ;posx
 STA ret_val
 LDA #$40
 CLC
 ADC $62 ;posy
 STA ret_val+$1
 RTS
TileAddress:
 LDA $61 ;tile_id
 ASL
 ADC #tiles # $100
 STA ret_val
 LDA #$0
 ADC #tiles>>$8
 STA ret_val+$1
 LDA (ret_val)
 PHA
 INC ret_val
 BNE .._304.no_carry
 INC ret_val+$1
 .._304.no_carry:
 LDA (ret_val)
 STA ret_val+$1
 PLA
 STA ret_val
 RTS
CopyTile:
 LDA $54 ;dest_id
 STA $61 ;TileAddress.tile_id
 JSR TileAddress
 LDA ret_val
 STA $56 ;dest_ptr
 LDA ret_val+$1
 STA $57 ;dest_ptr
 LDA $55 ;source_id
 STA $61 ;TileAddress.tile_id
 JSR TileAddress
 LDA ret_val
 STA $58 ;source_ptr
 LDA ret_val+$1
 STA $59 ;source_ptr
 LDY #$0
 LDA ($58),Y ;source_ptr
 STA ($56),Y ;dest_ptr
 INY
 LDA ($58),Y ;source_ptr
 STA ($56),Y ;dest_ptr
 TAX
 INY
 .ct.loop:
 LDA ($58),Y ;source_ptr
 STA ($56),Y ;dest_ptr
 BNE .._410.skip
 JMP .if0
 .._410.skip:
 INY
 LDA ($58),Y ;source_ptr
 STA ($56),Y ;dest_ptr
 INY
 BRA .ct.loop
 JMP .if1
 .if0:
 DEX
 BEQ .ct.done
 INY
 CPY #$C8
 BCC .ct.loop
 TYA
 SEC
 SBC #$C8
 TAY
 LDA #$C8
 CLC
 ADC $58 ;source_ptr
 STA $58 ;source_ptr
 BCC .._413.skip
 INC $59 ;source_ptr
 .._413.skip:
 LDA #$C8
 CLC
 ADC $56 ;dest_ptr
 STA $56 ;dest_ptr
 BCC .._423.skip
 INC $57 ;dest_ptr
 .._423.skip:
 BRA .ct.loop
 .if1:
 .ct.done:
 RTS
DrawTile:
 LDA $55 ;xpos
 STA $61 ;CalcXY.posx
 LDA $56 ;ypos
 STA $62 ;CalcXY.posy
 JSR CalcXY
 LDA ret_val
 STA $5B ;gfx_ptr
 LDA ret_val+$1
 STA $5C ;gfx_ptr
 LDA # (tiles) # $100
 STA $5D ;tile_ptr
 LDA # (tiles)/$100
 STA $5E ;tile_ptr
 LDA $54 ;tile
 STA $61 ;TileAddress.tile_id
 JSR TileAddress
 LDA ret_val
 STA $5D ;tile_ptr
 LDA ret_val+$1
 STA $5E ;tile_ptr
 LDA ($5D) ;tile_ptr
 STA $57 ;t_width
 LDY #$1
 LDA ($5D),Y ;tile_ptr
 TAX
 INY
 .dt.loop:
 LDA ($5D),Y ;tile_ptr
 STA $59 ;t_count
 INY
 BEQ .._617.skip
 JMP .if2
 .._617.skip:
 INC $5E ;tile_ptr
 .if2:
 CMP #$0
 BEQ .._622.skip
 JMP .if3
 .._622.skip:
 DEX
 BEQ .dt.return
 LDA #$0
 SEC
 SBC $57 ;t_width
 CLC
 ADC $5B ;gfx_ptr
 STA $5B ;gfx_ptr
 BCC .._623.skip
 INC $5C ;gfx_ptr
 .._623.skip:
 BRA .dt.loop
 JMP .if4
 .if3:
 LDA ($5D),Y ;tile_ptr
 STA $5A ;t_color
 INY
 BEQ .._643.skip
 JMP .if5
 .._643.skip:
 INC $5E ;tile_ptr
 .if5:
 CMP #$40
 BEQ .._647.skip
 JMP .if6
 .._647.skip:
 LDA $59 ;t_count
 CLC
 ADC $5B ;gfx_ptr
 STA $5B ;gfx_ptr
 BCC .._648.skip
 INC $5C ;gfx_ptr
 .._648.skip:
 BRA .dt.loop
 JMP .if7
 .if6:
 PHY
 LDY $59 ;t_count
 DEY
 LDA $5A ;t_color
 .color.for:
 STA ($5B),Y ;gfx_ptr
 DEY
 BPL .color.for
 LDA $59 ;t_count
 CLC
 ADC $5B ;gfx_ptr
 STA $5B ;gfx_ptr
 PLY
 .if7:
 .if4:
 BRA .dt.loop
 .dt.return:
 RTS
DrawTile1bpp:
 STZ $4D ;byte_count
 STZ $4E ;bit_count
 LDA $41 ;xpos
 STA $61 ;CalcXY.posx
 LDA $42 ;ypos
 STA $62 ;CalcXY.posy
 JSR CalcXY
 LDA ret_val
 STA $45 ;gfx_ptr
 LDA ret_val+$1
 STA $46 ;gfx_ptr
 LDA # (tiles) # $100
 STA $47 ;tile_ptr
 LDA # (tiles)/$100
 STA $48 ;tile_ptr
 LDA $40 ;tile
 STA $61 ;TileAddress.tile_id
 JSR TileAddress
 LDA ret_val
 STA $47 ;tile_ptr
 LDA ret_val+$1
 STA $48 ;tile_ptr
 LDA ($47) ;tile_ptr
 STA $49 ;t_width
 LDY #$1
 LDA ($47),Y ;tile_ptr
 STA $4A ;t_height
 STA $4C ;row_count
 INY
 LDA ($47),Y ;tile_ptr
 STA $4B ;edge_style
 INY
 .dt1.loop:
 CPX #$0
 BEQ .._1002.skip
 JMP .if8
 .._1002.skip:
 LDA ($47),Y ;tile_ptr
 STA $4F ;t_pixel
 INY
 LDA $4E ;bit_count
 BEQ .._1005.skip
 JMP .if9
 .._1005.skip:
 LDA $4B ;edge_style
 BEQ .._1008.skip
 JMP .if10
 .._1008.skip:
 LDA #$0
 STA $51 ;trans_row
 JMP .if11
 .if10:
 LDA $4C ;row_count
 CMP #$1
 BEQ .dt1.row1
 CMP $4A ;t_height
 BNE .dt1.row1_done
 .dt1.row1:
 STZ $52 ;t0
 LDA $49 ;t_width
 DEC
 STA $53 ;t1
 LDA $4B ;edge_style
 CMP #$2
 BEQ .._1037.skip
 JMP .if12
 .._1037.skip:
 LDA #$1
 STA $54 ;t2
 LDA $49 ;t_width
 DEC
 DEC
 STA $55 ;t3
 JMP .if13
 .if12:
 LDA #$FF
 STA $54 ;t2
 STA $55 ;t3
 .if13:
 LDA #$FF
 STA $51 ;trans_row
 BRA .dt1.rows_done
 .dt1.row1_done:
 LDA $4C ;row_count
 CMP #$2
 BEQ .dt1.row2a
 LDA $4A ;t_height
 DEC
 CMP $4C ;row_count
 BEQ .dt1.row2a
 BRA .dt1.row_else
 .dt1.row2a:
 LDA $4B ;edge_style
 CMP #$2
 BEQ .._1067.skip
 JMP .if14
 .._1067.skip:
 STZ $52 ;t0
 LDA $49 ;t_width
 DEC
 STA $53 ;t1
 LDA #$FF
 STA $54 ;t2
 STA $55 ;t3
 LDA #$FF
 STA $51 ;trans_row
 JMP .if15
 .if14:
 BRA .dt1.row_else
 .if15:
 BRA .dt1.rows_done
 .dt1.row_else:
 LDA #$0
 STA $51 ;trans_row
 .dt1.rows_done:
 .if11:
 .if9:
 .if8:
 LDA #$0
 STA $50 ;skip_pixel
 LDA $51 ;trans_row
 BNE .._1132.skip
 JMP .if16
 .._1132.skip:
 LDA $4E ;bit_count
 BRA .s1c0
 JMP .s1done
 .s1c0:
 CMP $52 ;t0
 BEQ .._1135.skip
 JMP .s1c1
 .._1135.skip:
 BRA .s1b1
 .s1c1:
 CMP $53 ;t1
 BNE .s1c2
 BRA .s1b1
 BRA .s1b1
 .s1c2:
 CMP $54 ;t2
 BNE .s1c3
 BRA .s1b1
 BRA .s1b1
 .s1c3:
 CMP $55 ;t3
 BNE .s1c4
 BRA .s1b1
 .s1b1:
 LDA #$FF
 STA $50 ;skip_pixel
 .s1c4:
 .s1done:
 .if16:
 .dt1.skip_false:
 LDA $50 ;skip_pixel
 BEQ .._1166.skip
 JMP .if17
 .._1166.skip:
 LDA $4F ;t_pixel
 BMI .._1168.skip
 JMP .if18
 .._1168.skip:
 LDA $43 ;color1
 JMP .if19
 .if18:
 LDA $44 ;color2
 .if19:
 CMP #$40
 BNE .._1174.skip
 JMP .if20
 .._1174.skip:
 STA ($45) ;gfx_ptr
 .if20:
 .if17:
 INC $45 ;gfx_ptr
 BNE .._1179.no_carry
 INC $46 ;gfx_ptr
 .._1179.no_carry:
 ASL $4F ;t_pixel
 INC $4E ;bit_count
 LDA $4E ;bit_count
 CMP $49 ;t_width
 BEQ .._1181.skip
 JMP .if21
 .._1181.skip:
 STZ $4E ;bit_count
 LDX #$0
 DEC $4C ;row_count
 LDA #$0
 SEC
 SBC $49 ;t_width
 CLC
 ADC $45 ;gfx_ptr
 STA $45 ;gfx_ptr
 BCC .._1199.skip
 INC $46 ;gfx_ptr
 .._1199.skip:
 JMP .if22
 .if21:
 CPX #$7
 BEQ .._1228.skip
 JMP .if23
 .._1228.skip:
 LDX #$0
 JMP .if24
 .if23:
 INX
 .if24:
 .if22:
 LDA $4C ;row_count
 BEQ .._1235.skip
 JMP .dt1.loop
 .._1235.skip:
 RTS
RotateTile90:
 LDA $23 ;src
 STA $54 ;DrawTile.tile
 STZ $55 ;DrawTile.xpos
 STZ $56 ;DrawTile.ypos
 JSR DrawTile
 LDA $22 ;dest
 STA $61 ;TileAddress.tile_id
 JSR TileAddress
 LDA ret_val
 STA $26 ;dest_ptr
 LDA ret_val+$1
 STA $27 ;dest_ptr
 LDA $23 ;src
 STA $61 ;TileAddress.tile_id
 JSR TileAddress
 LDA ret_val
 STA $24 ;gfx_ptr
 LDA ret_val+$1
 STA $25 ;gfx_ptr
 LDY #$1
 LDA ($24),Y ;gfx_ptr
 STA $29 ;row_count
 STA ($26),Y ;dest_ptr
 DEY
 LDA ($24),Y ;gfx_ptr
 STA $28 ;t_width
 STA ($26),Y ;dest_ptr
 LDY #$2
 STZ $24 ;gfx_ptr
 .rt.loop_outer:
 LDA $28 ;t_width
 CLC
 ADC #$3F
 STA $25 ;gfx_ptr
 LDA ($24) ;gfx_ptr
 STA $2B ;new_color
 LDA #$1
 STA $2C ;new_count
 DEC $25 ;gfx_ptr
 LDA $28 ;t_width
 DEC
 LDX $28 ;t_width
 DEX
 .rt.loop_inner:
 LDA ($24) ;gfx_ptr
 CMP $2B ;new_color
 BEQ .._1468.skip
 JMP .if25
 .._1468.skip:
 INC $2C ;new_count
 JMP .if26
 .if25:
 PHA
 LDA $2C ;new_count
 STA ($26),Y ;dest_ptr
 INY
 LDA $2B ;new_color
 STA ($26),Y ;dest_ptr
 INY
 PLA
 STA $2B ;new_color
 LDA #$1
 STA $2C ;new_count
 .if26:
 DEC $25 ;gfx_ptr
 DEX
 BNE .rt.loop_inner
 LDA $2C ;new_count
 STA ($26),Y ;dest_ptr
 INY
 LDA $2B ;new_color
 STA ($26),Y ;dest_ptr
 INY
 LDA #$0
 STA ($26),Y ;dest_ptr
 INY
 INC $24 ;gfx_ptr
 CPY #$C8
 BCS .._1474.skip
 JMP .if27
 .._1474.skip:
 TYA
 SEC
 SBC #$C8
 TAY
 LDA #$C8
 CLC
 ADC $26 ;dest_ptr
 STA $26 ;dest_ptr
 BCC .._1475.skip
 INC $27 ;dest_ptr
 .._1475.skip:
 .if27:
 DEC $29 ;row_count
 BNE .rt.loop_outer
 RTS
ColorTile:
 LDA $54 ;tile
 STA $61 ;TileAddress.tile_id
 JSR TileAddress
 LDA ret_val
 STA $56 ;tile_ptr
 LDA ret_val+$1
 STA $57 ;tile_ptr
 LDA $54 ;tile
 BRA .s2c0
 JMP .s2done
 .s2c0:
 CMP #$9
 BEQ .._1563.skip
 JMP .s2c1
 .._1563.skip:
 BRA .s2b1
 .s2c1:
 CMP #$A
 BNE .s2c2
 BRA .s2b1
 BRA .s2b1
 .s2c2:
 CMP #$B
 BNE .s2c3
 BRA .s2b1
 .s2b1:
 LDA # (item_colors) # $100
 STA $58 ;color_table
 LDA # (item_colors)/$100
 STA $59 ;color_table
 JMP .s2done
 .s2c3:
 LDA # (tile_colors) # $100
 STA $58 ;color_table
 LDA # (tile_colors)/$100
 STA $59 ;color_table
 .s2c4:
 .s2done:
 LDA $55 ;color_index
 ASL
 CLC
 ADC $58 ;color_table
 STA $58 ;color_table
 BCC .._1608.skip
 INC $59 ;color_table
 .._1608.skip:
 LDA ($58) ;color_table
 PHA
 LDY #$1
 LDA ($58),Y ;color_table
 STA $59 ;color_table
 PLA
 STA $58 ;color_table
 LDA ($56),Y ;tile_ptr
 STA $5A ;row_count
 LDA ($58),Y ;color_table
 STA $5C ;c_size
 INY
 .color.loop1:
 LDA ($56),Y ;tile_ptr
 BEQ .._1623.skip
 JMP .if28
 .._1623.skip:
 INY
 CPY #$C8
 BCS .._1626.skip
 JMP .if29
 .._1626.skip:
 TYA
 SEC
 SBC #$C8
 TAY
 LDA #$C8
 CLC
 ADC $56 ;tile_ptr
 STA $56 ;tile_ptr
 BCC .._1627.skip
 INC $57 ;tile_ptr
 .._1627.skip:
 .if29:
 DEC $5A ;row_count
 BNE .color.loop1
 JMP .if30
 .if28:
 INY
 LDA ($56),Y ;tile_ptr
 STA $5B ;t_color
 CMP #$41
 BCS .._1647.skip
 JMP .if31
 .._1647.skip:
 PHY
 LDY #$2
 LDX $5C ;c_size
 .color.loop2:
 LDA $5B ;t_color
 CMP ($58),Y ;color_table
 BEQ .._1649.skip
 JMP .if32
 .._1649.skip:
 INY
 LDA ($58),Y ;color_table
 PLY
 STA ($56),Y ;tile_ptr
 INY
 BRA .color.loop1
 JMP .if33
 .if32:
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
tiles_to_color:
 FCB $0,$1,$2,$3,$4,$5
 FCB $6,$8,$7
LoadTiles:
 LDA #$0
 STA $54 ;CopyTile.dest_id
 LDA #$15
 STA $55 ;CopyTile.source_id
 JSR CopyTile
 LDA #$1
 STA $22 ;RotateTile90.dest
 LDA #$0
 STA $23 ;RotateTile90.src
 JSR RotateTile90
 LDA #$2
 STA $22 ;RotateTile90.dest
 LDA #$1
 STA $23 ;RotateTile90.src
 JSR RotateTile90
 LDA #$3
 STA $22 ;RotateTile90.dest
 LDA #$2
 STA $23 ;RotateTile90.src
 JSR RotateTile90
 LDA #$4
 STA $54 ;CopyTile.dest_id
 LDA #$15
 STA $55 ;CopyTile.source_id
 JSR CopyTile
 LDA #$5
 STA $54 ;CopyTile.dest_id
 LDA #$15
 STA $55 ;CopyTile.source_id
 JSR CopyTile
 LDA #$6
 STA $54 ;CopyTile.dest_id
 LDA #$14
 STA $55 ;CopyTile.source_id
 JSR CopyTile
 LDA #$8
 STA $54 ;CopyTile.dest_id
 LDA #$14
 STA $55 ;CopyTile.source_id
 JSR CopyTile
 LDA #$7
 STA $54 ;CopyTile.dest_id
 LDA #$14
 STA $55 ;CopyTile.source_id
 JSR CopyTile
 LDY #$0
 .lt.loop:
 LDA tiles_to_color,Y
 STA $21 ;color_tile
 PHY
 LDA $21 ;color_tile
 STA $54 ;ColorTile.tile
 LDA $21 ;color_tile
 STA $55 ;ColorTile.color_index
 JSR ColorTile
 PLY
 INY
 CPY #$9
 BNE .lt.loop
 RTS
ColorHero:
 LDA #$9
 STA $54 ;CopyTile.dest_id
 LDA #$12
 STA $55 ;CopyTile.source_id
 JSR CopyTile
 LDA #$9
 STA $54 ;ColorTile.tile
 LDA hero_equipped+$0
 STA $55 ;ColorTile.color_index
 JSR ColorTile
 LDA #$9
 STA $54 ;ColorTile.tile
 LDA hero_equipped+$1
 STA $55 ;ColorTile.color_index
 JSR ColorTile
 LDA #$9
 STA $54 ;ColorTile.tile
 LDA hero_equipped+$2
 STA $55 ;ColorTile.color_index
 JSR ColorTile
 LDA #$9
 STA $54 ;ColorTile.tile
 LDA hero_equipped+$3
 STA $55 ;ColorTile.color_index
 JSR ColorTile
 LDA #$9
 STA $54 ;ColorTile.tile
 LDA hero_equipped+$4
 STA $55 ;ColorTile.color_index
 JSR ColorTile
 LDA #$A
 STA $54 ;CopyTile.dest_id
 LDA #$13
 STA $55 ;CopyTile.source_id
 JSR CopyTile
 LDA #$A
 STA $54 ;ColorTile.tile
 LDA hero_equipped+$0
 STA $55 ;ColorTile.color_index
 JSR ColorTile
 LDA #$A
 STA $54 ;ColorTile.tile
 LDA hero_equipped+$1
 STA $55 ;ColorTile.color_index
 JSR ColorTile
 LDA #$A
 STA $54 ;ColorTile.tile
 LDA hero_equipped+$2
 STA $55 ;ColorTile.color_index
 JSR ColorTile
 LDA #$A
 STA $54 ;ColorTile.tile
 LDA hero_equipped+$3
 STA $55 ;ColorTile.color_index
 JSR ColorTile
 LDA #$A
 STA $54 ;ColorTile.tile
 LDA hero_equipped+$4
 STA $55 ;ColorTile.color_index
 JSR ColorTile
 RTS
rand:
 LDA rand_val+$1
 CLC
 ROR
 LDA rand_val
 ROR
 EOR rand_val+$1
 STA rand_val+$1
 LDA #$0
 ROR
 EOR rand_val
 STA rand_val
 LDA rand_val+$1
 CLC
 ROR
 EOR rand_val
 STA rand_val
 LDA rand_val
 EOR rand_val+$1
 STA rand_val+$1
 RTS
rand8:
 JSR rand
 LDA rand_val
 STA ret_val
 LDA rand_val+$1
 STA ret_val+$1
 LDA $2F ;max
 STA $31 ;divisor
 STZ $30 ;divisor
 .r8.loop:
 LDA ret_val
 SEC
 SBC $30 ;divisor
 STA ret_val
 LDA ret_val+$1
 SBC $31 ;divisor
 STA ret_val+$1
 BCS .r8.loop
 LDA $30 ;divisor
 CLC
 ADC ret_val
 STA ret_val
 LDA $31 ;divisor
 ADC ret_val+$1
 STA ret_val+$1
 CLC
 ROR $31 ;divisor
 ROR $30 ;divisor
 LDA ret_val+$1
 BNE .r8.loop
 LDA ret_val
 CMP $2F ;max
 BCS .r8.loop
 RTS
rand5050:
 JSR rand
 LDA rand_val
 AND #$1
 STA ret_val
 RTS
CalcStats:
 LDA hero_HP_Upgrade
 CLC
 ADC #$2
 STA hero_HP_Max_temp
 LDA hero_Batt_Upgrade
 CLC
 ADC #$3
 STA hero_Batt_Max
 LDA hero_Dmg_Upgrade
 STA hero_Dmg
 LDA #$8
 STA hero_Mine_Speed
 LDA #$C
 STA hero_Drill_Speed
 LDA #$1
 STA hero_Batt_Recharge
 LDA #$5
 STA hero_Crit_Rate
 STZ hero_HP_Recharge
 STZ hero_Lava_Res
 LDA #$4
 STA hero_Lava_Dmg
 LDA #$0
 STA hero_Lava_Dmg+$1
 LDA #$4
 STA hero_Dmg_Cost
 LDA #$2
 STA hero_Mine_Cost
 LDA #$2
 STA hero_Drill_Cost
 LDA #$0
 STA $2D ;Mine1s
 LDA #$0
 STA $2E ;Drill1s
 STZ $2F ;item_counter
 .cs.loop:
 LDY $2F ;item_counter
 LDA hero_equipped,Y
 ASL
 TAY
 LDA item_stats,Y
 STA $34 ;item_ptr
 LDA item_stats+$1,Y
 STA $35 ;item_ptr
 LDY #$4
 LDA ($34),Y ;item_ptr
 STA $31 ;stat_max
 LDX #$0
 .cs.stats:
 TXA
 ASL
 ADC #$5
 TAY
 LDA ($34),Y ;item_ptr
 PHY
 STA $32 ;stat_ID
 ASL
 TAY
 LDA stat_pointers,Y
 STA $36 ;stat_ptr
 LDA stat_pointers+$1,Y
 STA $37 ;stat_ptr
 PLY
 INY
 LDA ($34),Y ;item_ptr
 STA $33 ;stat_val
 LDA $36 ;stat_ptr
 ORA $37 ;stat_ptr
 BEQ .._2590.skip
 JMP .if34
 .._2590.skip:
 LDA $32 ;stat_ID
 BRA .s3c0
 JMP .s3done
 .s3c0:
 CMP #$3
 BEQ .._2593.skip
 JMP .s3c1
 .._2593.skip:
 .s3b1:
 LDA hero_Mine_Speed
 SEC
 SBC $33 ;stat_val
 STA hero_Mine_Speed
 JMP .s3done
 .s3c1:
 CMP #$4
 BEQ .._2602.skip
 JMP .s3c2
 .._2602.skip:
 .s3b2:
 LDA #$FF
 STA $2D ;Mine1s
 JMP .s3done
 .s3c2:
 CMP #$7
 BEQ .._2626.skip
 JMP .s3c3
 .._2626.skip:
 .s3b3:
 LDA hero_Drill_Speed
 SEC
 SBC $33 ;stat_val
 STA hero_Drill_Speed
 JMP .s3done
 .s3c3:
 CMP #$8
 BEQ .._2635.skip
 JMP .s3c4
 .._2635.skip:
 .s3b4:
 LDA #$FF
 STA $2E ;Drill1s
 JMP .s3done
 .s3c4:
 CMP #$B
 BEQ .._2658.skip
 JMP .s3c5
 .._2658.skip:
 .s3b5:
 LDA #$FF
 STA hero_Lava_Dmg
 LDA #$FF
 STA hero_Lava_Dmg+$1
 JMP .s3done
 .s3c5:
 CMP #$C
 BEQ .._2684.skip
 JMP .s3c6
 .._2684.skip:
 .s3b6:
 LDA #$2
 STA hero_Dmg_Cost
 JMP .s3done
 .s3c6:
 CMP #$D
 BEQ .._2710.skip
 JMP .s3c7
 .._2710.skip:
 .s3b7:
 LDA #$1
 STA hero_Mine_Cost
 .s3c7:
 .s3done:
 JMP .if35
 .if34:
 LDA $33 ;stat_val
 CLC
 ADC ($36) ;stat_ptr
 STA ($36) ;stat_ptr
 .if35:
 INX
 CPX $31 ;stat_max
 BEQ .._2744.skip
 JMP .cs.stats
 .._2744.skip:
 INC $2F ;item_counter
 LDA $2F ;item_counter
 CMP #$5
 BEQ .._2745.skip
 JMP .cs.loop
 .._2745.skip:
 LDA skill_list+$2
 BNE .._2748.skip
 JMP .if36
 .._2748.skip:
 DEC hero_Mine_Speed
 DEC hero_Mine_Speed
 DEC hero_Drill_Speed
 DEC hero_Drill_Speed
 .if36:
 LDA $2D ;Mine1s
 BNE .._2753.skip
 JMP .if37
 .._2753.skip:
 LDA #$1
 STA hero_Mine_Speed
 .if37:
 LDA $2E ;Drill1s
 BNE .._2775.skip
 JMP .if38
 .._2775.skip:
 LDA #$1
 STA hero_Drill_Speed
 .if38:
 LDA skill_list+$5
 BNE .._2797.skip
 JMP .if39
 .._2797.skip:
 LDA hero_Crit_Rate
 CLC
 ADC #$14
 STA hero_Crit_Rate
 .if39:
 LDA hero_Lava_Dmg
 AND hero_Lava_Dmg+$1
 CMP #$FF
 BNE .._2801.skip
 JMP .if40
 .._2801.skip:
 LDA hero_Lava_Res
 BRA .s4c0
 JMP .s4done
 .s4c0:
 CMP #$19
 BEQ .._2804.skip
 JMP .s4c1
 .._2804.skip:
 .s4b1:
 LDA #$3
 STA hero_Lava_Dmg
 LDA #$0
 STA hero_Lava_Dmg+$1
 JMP .s4done
 .s4c1:
 CMP #$32
 BEQ .._2830.skip
 JMP .s4c2
 .._2830.skip:
 .s4b2:
 LDA #$2
 STA hero_Lava_Dmg
 LDA #$0
 STA hero_Lava_Dmg+$1
 .s4c2:
 .s4done:
 .if40:
 LDA hero_HP_Max_temp
 STA hero_HP_Max
 LDA hero_HP_Max
 CMP hero_HP
 BCC .._2890.skip
 JMP .if41
 .._2890.skip:
 LDA hero_HP_Max
 STA hero_HP
 LDA hero_HP_Max+$1
 STA hero_HP+$1
 .if41:
 LDA hero_Batt_Max
 CMP hero_Batt
 BCC .._2921.skip
 JMP .if42
 .._2921.skip:
 LDA hero_Batt_Max
 STA hero_Batt
 .if42:
 RTS
MazeHorizStripe:
 LDA #$28
 STA $2F ;rand8.max
 JSR rand8
 LDA ret_val
 STA $25 ;stripe_X
 LDA #$14
 STA $2F ;rand8.max
 JSR rand8
 LDA ret_val
 STA $26 ;stripe_Y
 LDA #$4
 STA $2F ;rand8.max
 JSR rand8
 LDA ret_val
 CLC
 ADC #$1
 STA $27 ;stripe_width
 LDA #$4
 STA $2F ;rand8.max
 JSR rand8
 LDA ret_val
 CLC
 ADC #$1
 STA $28 ;stripe_height
 JSR rand5050
 LDA ret_val
 STA $29 ;stripe_dx
 JSR rand5050
 LDA ret_val
 STA $2A ;stripe_dy
 LDA #map_data # $100
 CLC
 ADC $25 ;stripe_X
 STA $2B ;map_ptr
 LDA #map_data>>$8
 ADC #$0
 STA $2C ;map_ptr
 LDY $26 ;stripe_Y
 BNE .._3181.skip
 JMP .if43
 .._3181.skip:
 .mhs.mult:
 LDA #$28
 CLC
 ADC $2B ;map_ptr
 STA $2B ;map_ptr
 BCC .._3182.skip
 INC $2C ;map_ptr
 .._3182.skip:
 DEY
 BNE .mhs.mult
 .if43:
 .mhs.height:
 LDY $27 ;stripe_width
 .mhs.width:
 LDA $25 ;stripe_X
 CMP #$28
 BCS .mhs.done
 LDA $26 ;stripe_Y
 CMP #$14
 BCS .mhs.done
 LDA $24 ;value
 STA ($2B) ;map_ptr
 LDA $29 ;stripe_dx
 BNE .._3202.skip
 JMP .if44
 .._3202.skip:
 DEC $25 ;stripe_X
 BMI .mhs.done
 LDA $2B ;map_ptr
 SEC
 SBC #$1
 STA $2B ;map_ptr
 BCS .._3203.no_underflow
 DEC $2C ;map_ptr
 .._3203.no_underflow:
 JMP .if45
 .if44:
 INC $25 ;stripe_X
 INC $2B ;map_ptr
 BNE .._3206.no_carry
 INC $2C ;map_ptr
 .._3206.no_carry:
 .if45:
 DEY
 BNE .mhs.width
 LDA $2A ;stripe_dy
 BNE .._3211.skip
 JMP .if46
 .._3211.skip:
 DEC $26 ;stripe_Y
 BMI .mhs.done
 LDA $2B ;map_ptr
 SEC
 SBC #$28
 STA $2B ;map_ptr
 BCS .._3212.skip
 DEC $2C ;map_ptr
 .._3212.skip:
 JMP .if47
 .if46:
 INC $26 ;stripe_Y
 LDA #$28
 CLC
 ADC $2B ;map_ptr
 STA $2B ;map_ptr
 BCC .._3230.skip
 INC $2C ;map_ptr
 .._3230.skip:
 .if47:
 DEC $28 ;stripe_height
 BNE .mhs.height
 .mhs.done:
 RTS
FillMap:
 LDA $24 ;ptr_in
 STA $27 ;map_ptr
 LDA $25 ;ptr_in
 STA $28 ;map_ptr
 LDA #$4
 STA $29 ;counter
 .fm.loop_outer:
 LDA $26 ;value
 LDY #$C8
 .fm.loop:
 DEY
 STA ($27),Y ;map_ptr
 BNE .fm.loop
 LDA #$C8
 CLC
 ADC $27 ;map_ptr
 STA $27 ;map_ptr
 BCC .._3286.skip
 INC $28 ;map_ptr
 .._3286.skip:
 DEC $29 ;counter
 BNE .fm.loop_outer
 RTS
OffsetXY:
 LDA $2D ;map
 STA ret_val
 LDA $2E ;map
 STA ret_val+$1
 LDY $30 ;mY
 .oxy.mult:
 BNE .._3322.skip
 JMP .if48
 .._3322.skip:
 LDA #$28
 CLC
 ADC ret_val
 STA ret_val
 BCC .._3323.skip
 INC ret_val+$1
 .._3323.skip:
 DEY
 BRA .oxy.mult
 .if48:
 LDA $2F ;mX
 CLC
 ADC ret_val
 STA ret_val
 BCC .._3334.skip
 INC ret_val+$1
 .._3334.skip:
 RTS
MapXY:
 LDA $2D ;map
 STA ret_val
 LDA $2E ;map
 STA ret_val+$1
 LDY $30 ;mY
 .mxy.mult:
 BNE .._3372.skip
 JMP .if49
 .._3372.skip:
 LDA #$28
 CLC
 ADC ret_val
 STA ret_val
 BCC .._3373.skip
 INC ret_val+$1
 .._3373.skip:
 DEY
 BRA .mxy.mult
 .if49:
 LDY $2F ;mX
 LDA (ret_val),Y
 STA ret_val
 RTS
MakeMap:
 LDA # (map_data) # $100
 STA $24 ;FillMap.ptr_in
 LDA # (map_data)/$100
 STA $25 ;FillMap.ptr_in
 LDA #$0
 STA $26 ;FillMap.value
 JSR FillMap
 LDX #$14
 .mm.lava_loop:
 LDA #$5
 STA $24 ;MazeHorizStripe.value
 JSR MazeHorizStripe
 DEX
 BNE .mm.lava_loop
 LDX #$3C
 .mm.rock_loop:
 LDA #$4
 STA $24 ;MazeHorizStripe.value
 JSR MazeHorizStripe
 DEX
 BNE .mm.rock_loop
 LDA # (map_data) # $100
 STA $21 ;map_ptr
 LDA # (map_data)/$100
 STA $22 ;map_ptr
 LDX #$4
 LDY #$0
 .mm.blank_loop:
 LDA ($21),Y ;map_ptr
 CMP #$0
 BEQ .._3479.skip
 JMP .if50
 .._3479.skip:
 LDA #$4
 STA $2F ;rand8.max
 JSR rand8
 LDA ret_val
 BRA .s5c0
 JMP .s5done
 .s5c0:
 CMP #$1
 BEQ .._3503.skip
 JMP .s5c1
 .._3503.skip:
 .s5b1:
 LDA #$1
 JMP .s5done
 .s5c1:
 CMP #$2
 BEQ .._3512.skip
 JMP .s5c2
 .._3512.skip:
 .s5b2:
 LDA #$2
 JMP .s5done
 .s5c2:
 CMP #$3
 BEQ .._3521.skip
 JMP .s5c3
 .._3521.skip:
 .s5b3:
 LDA #$3
 JMP .s5done
 .s5c3:
 LDA #$0
 .s5c4:
 .s5done:
 STA ($21),Y ;map_ptr
 .if50:
 INY
 CPY #$C8
 BNE .mm.blank_loop
 LDY #$0
 LDA #$C8
 CLC
 ADC $21 ;map_ptr
 STA $21 ;map_ptr
 BCC .._3538.skip
 INC $22 ;map_ptr
 .._3538.skip:
 DEX
 BNE .mm.blank_loop
 LDA # (map_data) # $100
 STA $2D ;OffsetXY.map
 LDA # (map_data)/$100
 STA $2E ;OffsetXY.map
 LDA #$1
 STA $2F ;OffsetXY.mX
 LDA #$1
 STA $30 ;OffsetXY.mY
 JSR OffsetXY
 LDA #$0
 STA (ret_val)
 LDA #$A
 STA $2F ;rand8.max
 JSR rand8
 LDA ret_val
 CLC
 ADC #$A
 STA $23 ;counter
 LDA #$14
 STA $2F ;rand8.max
 JSR rand8
 LDA ret_val
 CLC
 ADC #$14
 STA ret_val
 LDA # (map_data) # $100
 STA $2D ;OffsetXY.map
 LDA # (map_data)/$100
 STA $2E ;OffsetXY.map
 LDA ret_val
 STA $2F ;OffsetXY.mX
 LDA $23 ;counter
 STA $30 ;OffsetXY.mY
 JSR OffsetXY
 LDA #$6
 STA (ret_val)
 RTS
CheckForMonster:
 LDA # (monster_map) # $100
 STA $2D ;MapXY.map
 LDA # (monster_map)/$100
 STA $2E ;MapXY.map
 LDA $31 ;mX
 STA $2F ;MapXY.mX
 LDA $32 ;mY
 STA $30 ;MapXY.mY
 JSR MapXY
 LDA ret_val
 STZ ret_val
 STA $31 ;mX
 CMP #$FF
 BNE .._3748.skip
 JMP .if51
 .._3748.skip:
 ASL
 CLC
 ADC $31 ;mX
 ADC #$2
 TAY
 LDA monster_list,Y
 STA ret_val
 .if51:
 RTS
CheckForCrystal:
 LDA # (crystal_map) # $100
 STA $2D ;MapXY.map
 LDA # (crystal_map)/$100
 STA $2E ;MapXY.map
 LDA $31 ;mX
 STA $2F ;MapXY.mX
 LDA $32 ;mY
 STA $30 ;MapXY.mY
 JSR MapXY
 LDA ret_val
 STZ ret_val
 CMP #$FF
 BNE .._3806.skip
 JMP .if52
 .._3806.skip:
 ASL
 ASL
 CLC
 ADC #$2
 TAY
 LDA crystal_list,Y
 STA ret_val
 .if52:
 RTS
LoadMonsters:
 LDA # (monster_map) # $100
 STA $24 ;FillMap.ptr_in
 LDA # (monster_map)/$100
 STA $25 ;FillMap.ptr_in
 LDA #$FF
 STA $26 ;FillMap.value
 JSR FillMap
 STZ $23 ;counter
 .lm.loop:
 LDA #$28
 STA $2F ;rand8.max
 JSR rand8
 LDA ret_val
 STA $21 ;mX
 LDA #$14
 STA $2F ;rand8.max
 JSR rand8
 LDA ret_val
 STA $22 ;mY
 CMP #$1
 BEQ .._3933.skip
 JMP .if53
 .._3933.skip:
 LDA $21 ;mX
 CMP #$1
 BEQ .._3935.skip
 JMP .if54
 .._3935.skip:
 BRA .lm.loop
 .if54:
 .if53:
 LDA $21 ;mX
 STA $31 ;CheckForMonster.mX
 LDA $22 ;mY
 STA $32 ;CheckForMonster.mY
 JSR CheckForMonster
 LDA ret_val
 BEQ .._3980.skip
 JMP .if55
 .._3980.skip:
 LDA # (map_data) # $100
 STA $2D ;MapXY.map
 LDA # (map_data)/$100
 STA $2E ;MapXY.map
 LDA $21 ;mX
 STA $2F ;MapXY.mX
 LDA $22 ;mY
 STA $30 ;MapXY.mY
 JSR MapXY
 LDA ret_val
 BRA .s6c0
 JMP .s6done
 .s6c0:
 CMP #$0
 BEQ .._4032.skip
 JMP .s6c1
 .._4032.skip:
 BRA .s6b1
 .s6c1:
 CMP #$1
 BNE .s6c2
 BRA .s6b1
 BRA .s6b1
 .s6c2:
 CMP #$2
 BNE .s6c3
 BRA .s6b1
 BRA .s6b1
 .s6c3:
 CMP #$3
 BNE .s6c4
 BRA .s6b1
 .s6b1:
 LDA # (monster_map) # $100
 STA $2D ;OffsetXY.map
 LDA # (monster_map)/$100
 STA $2E ;OffsetXY.map
 LDA $21 ;mX
 STA $2F ;OffsetXY.mX
 LDA $22 ;mY
 STA $30 ;OffsetXY.mY
 JSR OffsetXY
 LDA $23 ;counter
 STA (ret_val)
 ASL
 ADC $23 ;counter
 TAY
 LDA $21 ;mX
 STA monster_list,Y
 INY
 LDA $22 ;mY
 STA monster_list,Y
 INY
 LDA #$FF
 STA monster_list,Y
 LDA $23 ;counter
 INC
 CMP #$28
 BEQ .lm.done
 STA $23 ;counter
 JMP .lm.loop
 .s6c4:
 .s6done:
 .if55:
 JMP .lm.loop
 .lm.done:
 RTS
LoadCrystals:
 LDA # (crystal_map) # $100
 STA $24 ;FillMap.ptr_in
 LDA # (crystal_map)/$100
 STA $25 ;FillMap.ptr_in
 LDA #$FF
 STA $26 ;FillMap.value
 JSR FillMap
 LDX #$0
 .lc.loop:
 LDA #$28
 STA $2F ;rand8.max
 JSR rand8
 LDA ret_val
 STA $21 ;mX
 LDA #$14
 STA $2F ;rand8.max
 JSR rand8
 LDA ret_val
 STA $22 ;mY
 CMP #$1
 BEQ .._4211.skip
 JMP .if56
 .._4211.skip:
 LDA $21 ;mX
 CMP #$1
 BEQ .._4213.skip
 JMP .if57
 .._4213.skip:
 BRA .lc.loop
 .if57:
 .if56:
 LDA $21 ;mX
 STA $31 ;CheckForMonster.mX
 LDA $22 ;mY
 STA $32 ;CheckForMonster.mY
 JSR CheckForMonster
 LDA ret_val
 BEQ .._4258.skip
 JMP .if58
 .._4258.skip:
 LDA $21 ;mX
 STA $31 ;CheckForCrystal.mX
 LDA $22 ;mY
 STA $32 ;CheckForCrystal.mY
 JSR CheckForCrystal
 LDA ret_val
 BEQ .._4299.skip
 JMP .if59
 .._4299.skip:
 LDA # (map_data) # $100
 STA $2D ;MapXY.map
 LDA # (map_data)/$100
 STA $2E ;MapXY.map
 LDA $21 ;mX
 STA $2F ;MapXY.mX
 LDA $22 ;mY
 STA $30 ;MapXY.mY
 JSR MapXY
 LDA ret_val
 BRA .s7c0
 JMP .s7done
 .s7c0:
 CMP #$0
 BEQ .._4351.skip
 JMP .s7c1
 .._4351.skip:
 BRA .s7b1
 .s7c1:
 CMP #$1
 BNE .s7c2
 BRA .s7b1
 BRA .s7b1
 .s7c2:
 CMP #$2
 BNE .s7c3
 BRA .s7b1
 BRA .s7b1
 .s7c3:
 CMP #$3
 BNE .s7c4
 BRA .s7b1
 .s7b1:
 LDA # (crystal_map) # $100
 STA $2D ;OffsetXY.map
 LDA # (crystal_map)/$100
 STA $2E ;OffsetXY.map
 LDA $21 ;mX
 STA $2F ;OffsetXY.mX
 LDA $22 ;mY
 STA $30 ;OffsetXY.mY
 JSR OffsetXY
 TXA
 STA (ret_val)
 ASL
 ASL
 TAY
 LDA $21 ;mX
 STA crystal_list,Y
 INY
 LDA $22 ;mY
 STA crystal_list,Y
 INY
 LDA #$FF
 STA crystal_list,Y
 INY
 LDA #$3
 STA $2F ;rand8.max
 JSR rand8
 LDA ret_val
 BRA .s8c0
 JMP .s8done
 .s8c0:
 CMP #$0
 BEQ .._4432.skip
 JMP .s8c1
 .._4432.skip:
 .s8b1:
 LDA #$0
 JMP .s8done
 .s8c1:
 CMP #$1
 BEQ .._4441.skip
 JMP .s8c2
 .._4441.skip:
 .s8b2:
 LDA #$1
 JMP .s8done
 .s8c2:
 CMP #$2
 BEQ .._4450.skip
 JMP .s8c3
 .._4450.skip:
 .s8b3:
 LDA #$2
 .s8c3:
 .s8done:
 STA crystal_list,Y
 INX
 CPX #$28
 BEQ .lc.done
 JMP .lc.loop
 .s7c4:
 .s7done:
 .if59:
 .if58:
 JMP .lc.loop
 .lc.done:
 RTS
UpdateTarget:
 LDA display_X
 CLC
 ADC hero_X
 STA $21 ;tX
 LDA display_Y
 CLC
 ADC hero_Y
 STA $22 ;tY
 LDA #$0
 STA hero_target_type
 LDA hero_target_direction
 BRA .s9c0
 JMP .s9done
 .s9c0:
 CMP #$1
 BEQ .._4495.skip
 JMP .s9c1
 .._4495.skip:
 .s9b1:
 LDA hero_Y
 BNE .._4503.skip
 JMP .ut.done
 .._4503.skip:
 DEC $22 ;tY
 JMP .s9done
 .s9c1:
 CMP #$2
 BEQ .._4505.skip
 JMP .s9c2
 .._4505.skip:
 .s9b2:
 LDA hero_Y
 CMP #$3
 BNE .._4513.skip
 JMP .ut.done
 .._4513.skip:
 INC $22 ;tY
 JMP .s9done
 .s9c2:
 CMP #$3
 BEQ .._4515.skip
 JMP .s9c3
 .._4515.skip:
 .s9b3:
 LDA hero_X
 BNE .._4523.skip
 JMP .ut.done
 .._4523.skip:
 DEC $21 ;tX
 JMP .s9done
 .s9c3:
 CMP #$4
 BEQ .._4525.skip
 JMP .s9c4
 .._4525.skip:
 .s9b4:
 LDA hero_X
 CMP #$4
 BNE .._4533.skip
 JMP .ut.done
 .._4533.skip:
 INC $21 ;tX
 .s9c4:
 .s9done:
 LDA $21 ;tX
 STA hero_target_index
 LDA $22 ;tY
 STA hero_target_index2
 LDA # (map_data) # $100
 STA $2D ;MapXY.map
 LDA # (map_data)/$100
 STA $2E ;MapXY.map
 LDA $21 ;tX
 STA $2F ;MapXY.mX
 LDA $22 ;tY
 STA $30 ;MapXY.mY
 JSR MapXY
 LDA ret_val
 BRA .s10c0
 JMP .s10done
 .s10c0:
 CMP #$4
 BEQ .._4608.skip
 JMP .s10c1
 .._4608.skip:
 .s10b1:
 LDA #$1
 STA hero_target_type
 JMP .s10done
 .s10c1:
 CMP #$6
 BEQ .._4627.skip
 JMP .s10c2
 .._4627.skip:
 .s10b2:
 LDA #$2
 STA hero_target_type
 JMP .s10done
 .s10c2:
 LDA $21 ;tX
 STA $31 ;CheckForMonster.mX
 LDA $22 ;tY
 STA $32 ;CheckForMonster.mY
 JSR CheckForMonster
 LDA ret_val
 BNE .._4683.skip
 JMP .if60
 .._4683.skip:
 LDA #$3
 STA hero_target_type
 LDA # (monster_map) # $100
 STA $2D ;MapXY.map
 LDA # (monster_map)/$100
 STA $2E ;MapXY.map
 LDA $21 ;tX
 STA $2F ;MapXY.mX
 LDA $22 ;tY
 STA $30 ;MapXY.mY
 JSR MapXY
 LDA ret_val
 STA hero_target_index
 JMP .if61
 .if60:
 LDA $21 ;tX
 STA $31 ;CheckForCrystal.mX
 LDA $22 ;tY
 STA $32 ;CheckForCrystal.mY
 JSR CheckForCrystal
 LDA ret_val
 BNE .._4788.skip
 JMP .if62
 .._4788.skip:
 LDA #$4
 STA hero_target_type
 LDA # (crystal_map) # $100
 STA $2D ;MapXY.map
 LDA # (crystal_map)/$100
 STA $2E ;MapXY.map
 LDA $21 ;tX
 STA $2F ;MapXY.mX
 LDA $22 ;tY
 STA $30 ;MapXY.mY
 JSR MapXY
 LDA ret_val
 STA hero_target_index
 .if62:
 .if61:
 .s10c3:
 .s10done:
 .ut.done:
 RTS
DrawRect:
 LDA $44 ;width
 BEQ .dr.done
 STZ $61 ;CalcXY.posx
 LDA $43 ;ypos
 STA $62 ;CalcXY.posy
 JSR CalcXY
 LDA ret_val
 STA $47 ;gfx_ptr
 LDA ret_val+$1
 STA $48 ;gfx_ptr
 .dr.loop_outer:
 LDY $42 ;xpos
 LDA $46 ;color
 LDX $44 ;width
 .dr.loop:
 STA ($47),Y ;gfx_ptr
 INY
 DEX
 BNE .dr.loop
 INC $48 ;gfx_ptr
 DEC $45 ;height
 BNE .dr.loop_outer
 .dr.done:
 RTS
DrawText:
 LDA draw_X
 STA $5E ;original_X
 LDA draw_X
 STA $61 ;CalcXY.posx
 LDA $53 ;ypos
 STA $62 ;CalcXY.posy
 JSR CalcXY
 LDA ret_val
 STA $56 ;gfx_ptr
 LDA ret_val+$1
 STA $57 ;gfx_ptr
 STZ $5A ;digit_count
 .dtxt.loop:
 LDA $5A ;digit_count
 BNE .._5098.skip
 JMP .if63
 .._5098.skip:
 LDA $5A ;digit_count
 BRA .s11c0
 JMP .s11done
 .s11c0:
 CMP #$1
 BEQ .._5101.skip
 JMP .s11c1
 .._5101.skip:
 .s11b1:
 LDA #$1
 JMP .s11done
 .s11c1:
 CMP #$2
 BEQ .._5110.skip
 JMP .s11c2
 .._5110.skip:
 .s11b2:
 LDA #$A
 JMP .s11done
 .s11c2:
 CMP #$3
 BEQ .._5119.skip
 JMP .s11c3
 .._5119.skip:
 .s11b3:
 LDA #$64
 .s11c3:
 .s11done:
 DEC $5A ;digit_count
 STA $5C ;subtractor
 LDA #$30
 STA $5D ;character
 .dtxt.digit:
 LDA $5B ;digit
 SEC
 SBC $5C ;subtractor
 BCS .._5143.skip
 JMP .if64
 .._5143.skip:
 STA $5B ;digit
 INC $5D ;character
 BRA .dtxt.digit
 JMP .if65
 .if64:
 CLC
 ADC $5C ;subtractor
 STA $5B ;digit
 .if65:
 LDA $5D ;character
 JMP .if66
 .if63:
 .dtxt.next:
 LDA ($4F) ;str_ptr
 BNE .._5150.skip
 JMP .dtxt.done
 .._5150.skip:
 INC $4F ;str_ptr
 BNE .._5151.no_carry
 INC $50 ;str_ptr
 .._5151.no_carry:
 CMP #$24
 BEQ .._5153.skip
 JMP .if67
 .._5153.skip:
 LDA #$1
 STA $5A ;digit_count
 LDA $51 ;arg1
 STA $5B ;digit
 PHA
 LDA $52 ;arg2
 STA $51 ;arg1
 PLA
 CMP #$A
 BCC .dtxt.loop
 INC $5A ;digit_count
 CMP #$64
 BCC .dtxt.loop
 INC $5A ;digit_count
 JMP .dtxt.loop
 JMP .if68
 .if67:
 CMP #$2A
 BEQ .._5220.skip
 JMP .if69
 .._5220.skip:
 LDA $5E ;original_X
 STA $56 ;gfx_ptr
 LDA #$0
 CLC
 ADC $56 ;gfx_ptr
 STA $56 ;gfx_ptr
 LDA #$A
 ADC $57 ;gfx_ptr
 STA $57 ;gfx_ptr
 BRA .dtxt.next
 .if69:
 .if68:
 .if66:
 SEC
 SBC #$20
 STZ $59 ;char_ptr
 ASL
 ROL $59 ;char_ptr
 ROL
 ROL $59 ;char_ptr
 ROL
 ROL $59 ;char_ptr
 ADC #CharTable # $100
 STA $58 ;char_ptr
 LDA $59 ;char_ptr
 ADC #CharTable>>$8
 STA $59 ;char_ptr
 LDY #$0
 .dtxt.row:
 LDA ($58),Y ;char_ptr
 LDX #$6
 CLC
 .dtxt.pixel:
 ROR
 PHA
 BCC .._5231.skip
 JMP .if70
 .._5231.skip:
 LDA $55 ;bg_color
 JMP .if71
 .if70:
 CLC
 LDA $54 ;fg_color
 .if71:
 STA ($56) ;gfx_ptr
 INC $56 ;gfx_ptr
 PLA
 DEX
 BNE .dtxt.pixel
 LDA $56 ;gfx_ptr
 SEC
 SBC #$6
 STA $56 ;gfx_ptr
 INC $57 ;gfx_ptr
 INY
 CPY #$8
 BNE .dtxt.row
 LDA $56 ;gfx_ptr
 CLC
 ADC #$6
 STA $56 ;gfx_ptr
 LDA $57 ;gfx_ptr
 SEC
 SBC #$8
 STA $57 ;gfx_ptr
 JMP .dtxt.loop
 .dtxt.done:
 RTS
DrawBar:
 LDA $2F ;stat1
 STA $33 ;bar_width
 STZ $34 ;bar_width
 CLC
 ROL $33 ;bar_width
 ROL $34 ;bar_width
 ROL $33 ;bar_width
 ROL $34 ;bar_width
 ROL $33 ;bar_width
 ROL $34 ;bar_width
 ROL $33 ;bar_width
 ROL $34 ;bar_width
 LDA $33 ;bar_width
 STA $35 ;mult_buff
 LDA $34 ;bar_width
 STA $36 ;mult_buff
 ROL $33 ;bar_width
 ROL $34 ;bar_width
 ROL $33 ;bar_width
 ROL $34 ;bar_width
 LDA $33 ;bar_width
 CLC
 ADC $35 ;mult_buff
 STA $35 ;mult_buff
 LDA $34 ;bar_width
 ADC $36 ;mult_buff
 STA $36 ;mult_buff
 STZ $33 ;bar_width
 STZ $34 ;bar_width
 LDA $30 ;stat2
 STA $38 ;div_buff
 STZ $37 ;div_buff
 LDA #$0
 STA ret_val
 LDA #$1
 STA ret_val+$1
 .dbar.div1:
 LDA $35 ;mult_buff
 SEC
 SBC $37 ;div_buff
 STA $35 ;mult_buff
 LDA $36 ;mult_buff
 SBC $38 ;div_buff
 STA $36 ;mult_buff
 BCS .._5357.skip
 JMP .if72
 .._5357.skip:
 LDA ret_val
 CLC
 ADC $33 ;bar_width
 STA $33 ;bar_width
 LDA ret_val+$1
 ADC $34 ;bar_width
 STA $34 ;bar_width
 BRA .dbar.div1
 .if72:
 LDA $37 ;div_buff
 CLC
 ADC $35 ;mult_buff
 STA $35 ;mult_buff
 LDA $38 ;div_buff
 ADC $36 ;mult_buff
 STA $36 ;mult_buff
 CLC
 ROR $38 ;div_buff
 ROR $37 ;div_buff
 CLC
 ROR ret_val+$1
 ROR ret_val
 LDA ret_val
 ORA ret_val+$1
 BNE .dbar.div1
 LDA $2D ;xpos
 STA $42 ;DrawRect.xpos
 LDA $2E ;ypos
 STA $43 ;DrawRect.ypos
 LDA $33 ;bar_width
 STA $44 ;DrawRect.width
 LDA #$6
 STA $45 ;DrawRect.height
 LDA $31 ;fg_color
 STA $46 ;DrawRect.color
 JSR DrawRect
 LDA $2D ;xpos
 CLC
 ADC $33 ;bar_width
 STA $2D ;xpos
 LDA #$50
 SEC
 SBC $33 ;bar_width
 STA $33 ;bar_width
 LDA $2D ;xpos
 STA $42 ;DrawRect.xpos
 LDA $2E ;ypos
 STA $43 ;DrawRect.ypos
 LDA $33 ;bar_width
 STA $44 ;DrawRect.width
 LDA #$6
 STA $45 ;DrawRect.height
 LDA $32 ;bg_color
 STA $46 ;DrawRect.color
 JSR DrawRect
 RTS
DrawLegend:
 LDA #$A0
 STA $42 ;DrawRect.xpos
 LDA #$0
 STA $43 ;DrawRect.ypos
 LDA #$60
 STA $44 ;DrawRect.width
 LDA #$80
 STA $45 ;DrawRect.height
 LDA #$15
 STA $46 ;DrawRect.color
 JSR DrawRect
 LDA #$A8
 STA draw_X
 BRA .._5734.str_skip
 .._5734.str_addr:
 FCB "HP:$/$",$0
 .._5734.str_skip:
 LDA # (.._5734.str_addr) # $100
 STA $4F ;DrawText.str_ptr
 LDA # (.._5734.str_addr)/$100
 STA $50 ;DrawText.str_ptr
 LDA hero_HP
 STA $51 ;DrawText.arg1
 LDA hero_HP_Max
 STA $52 ;DrawText.arg2
 LDA #$4
 STA $53 ;DrawText.ypos
 LDA #$3F
 STA $54 ;DrawText.fg_color
 LDA #$15
 STA $55 ;DrawText.bg_color
 JSR DrawText
 LDA #$A8
 STA $2D ;DrawBar.xpos
 LDA #$D
 STA $2E ;DrawBar.ypos
 LDA hero_HP
 STA $2F ;DrawBar.stat1
 LDA hero_HP_Max
 STA $30 ;DrawBar.stat2
 LDA #$3
 STA $31 ;DrawBar.fg_color
 LDA #$2
 STA $32 ;DrawBar.bg_color
 JSR DrawBar
 LDA #$A8
 STA draw_X
 BRA .._5979.str_skip
 .._5979.str_addr:
 FCB "Batt:$/$",$0
 .._5979.str_skip:
 LDA # (.._5979.str_addr) # $100
 STA $4F ;DrawText.str_ptr
 LDA # (.._5979.str_addr)/$100
 STA $50 ;DrawText.str_ptr
 LDA hero_Batt
 STA $51 ;DrawText.arg1
 LDA hero_Batt_Max
 STA $52 ;DrawText.arg2
 LDA #$18
 STA $53 ;DrawText.ypos
 LDA #$3F
 STA $54 ;DrawText.fg_color
 LDA #$15
 STA $55 ;DrawText.bg_color
 JSR DrawText
 LDA #$A8
 STA $2D ;DrawBar.xpos
 LDA #$21
 STA $2E ;DrawBar.ypos
 LDA hero_Batt
 STA $2F ;DrawBar.stat1
 LDA hero_Batt_Max
 STA $30 ;DrawBar.stat2
 LDA #$30
 STA $31 ;DrawBar.fg_color
 LDA #$20
 STA $32 ;DrawBar.bg_color
 JSR DrawBar
 LDA #$A8
 STA draw_X
 BRA .._6224.str_skip
 .._6224.str_addr:
 FCB "Exp:$/$",$0
 .._6224.str_skip:
 LDA # (.._6224.str_addr) # $100
 STA $4F ;DrawText.str_ptr
 LDA # (.._6224.str_addr)/$100
 STA $50 ;DrawText.str_ptr
 LDA hero_Exp
 STA $51 ;DrawText.arg1
 LDA hero_Exp_Max
 STA $52 ;DrawText.arg2
 LDA #$2C
 STA $53 ;DrawText.ypos
 LDA #$3F
 STA $54 ;DrawText.fg_color
 LDA #$15
 STA $55 ;DrawText.bg_color
 JSR DrawText
 LDA #$A8
 STA $2D ;DrawBar.xpos
 LDA #$35
 STA $2E ;DrawBar.ypos
 LDA hero_Exp
 STA $2F ;DrawBar.stat1
 LDA hero_Exp_Max
 STA $30 ;DrawBar.stat2
 LDA #$C
 STA $31 ;DrawBar.fg_color
 LDA #$8
 STA $32 ;DrawBar.bg_color
 JSR DrawBar
 LDA hero_target_type
 BRA .s12c0
 JMP .s12done
 .s12c0:
 CMP #$1
 BEQ .._6453.skip
 JMP .s12c1
 .._6453.skip:
 .s12b1:
 LDA #$A8
 STA draw_X
 BRA .._6479.str_skip
 .._6479.str_addr:
 FCB "Rock",$0
 .._6479.str_skip:
 LDA # (.._6479.str_addr) # $100
 STA $4F ;DrawText.str_ptr
 LDA # (.._6479.str_addr)/$100
 STA $50 ;DrawText.str_ptr
 STZ $51 ;DrawText.arg1
 STZ $52 ;DrawText.arg2
 LDA #$40
 STA $53 ;DrawText.ypos
 LDA #$21
 STA $54 ;DrawText.fg_color
 LDA #$15
 STA $55 ;DrawText.bg_color
 JSR DrawText
 JMP .s12done
 .s12c1:
 CMP #$2
 BEQ .._6578.skip
 JMP .s12c2
 .._6578.skip:
 .s12b2:
 LDA #$A8
 STA draw_X
 BRA .._6604.str_skip
 .._6604.str_addr:
 FCB "Exit",$0
 .._6604.str_skip:
 LDA # (.._6604.str_addr) # $100
 STA $4F ;DrawText.str_ptr
 LDA # (.._6604.str_addr)/$100
 STA $50 ;DrawText.str_ptr
 STZ $51 ;DrawText.arg1
 STZ $52 ;DrawText.arg2
 LDA #$40
 STA $53 ;DrawText.ypos
 LDA #$35
 STA $54 ;DrawText.fg_color
 LDA #$15
 STA $55 ;DrawText.bg_color
 JSR DrawText
 JMP .s12done
 .s12c2:
 CMP #$3
 BEQ .._6703.skip
 JMP .s12c3
 .._6703.skip:
 .s12b3:
 LDA #$A8
 STA draw_X
 BRA .._6729.str_skip
 .._6729.str_addr:
 FCB "Evil robot",$0
 .._6729.str_skip:
 LDA # (.._6729.str_addr) # $100
 STA $4F ;DrawText.str_ptr
 LDA # (.._6729.str_addr)/$100
 STA $50 ;DrawText.str_ptr
 STZ $51 ;DrawText.arg1
 STZ $52 ;DrawText.arg2
 LDA #$40
 STA $53 ;DrawText.ypos
 LDA #$1
 STA $54 ;DrawText.fg_color
 LDA #$15
 STA $55 ;DrawText.bg_color
 JSR DrawText
 JMP .s12done
 .s12c3:
 CMP #$4
 BEQ .._6828.skip
 JMP .s12c4
 .._6828.skip:
 .s12b4:
 LDA #$A8
 STA draw_X
 LDA hero_target_index
 ASL
 ASL
 ADC #$3
 TAY
 LDA crystal_list,Y
 BRA .s13c0
 JMP .s13done
 .s13c0:
 CMP #$0
 BEQ .._6853.skip
 JMP .s13c1
 .._6853.skip:
 .s13b1:
 BRA .._6864.str_skip
 .._6864.str_addr:
 FCB "Crystal",$0
 .._6864.str_skip:
 LDA # (.._6864.str_addr) # $100
 STA $4F ;DrawText.str_ptr
 LDA # (.._6864.str_addr)/$100
 STA $50 ;DrawText.str_ptr
 STZ $51 ;DrawText.arg1
 STZ $52 ;DrawText.arg2
 LDA #$40
 STA $53 ;DrawText.ypos
 LDA #$17
 STA $54 ;DrawText.fg_color
 LDA #$15
 STA $55 ;DrawText.bg_color
 JSR DrawText
 JMP .s13done
 .s13c1:
 CMP #$1
 BEQ .._6963.skip
 JMP .s13c2
 .._6963.skip:
 .s13b2:
 BRA .._6974.str_skip
 .._6974.str_addr:
 FCB "Crystal",$0
 .._6974.str_skip:
 LDA # (.._6974.str_addr) # $100
 STA $4F ;DrawText.str_ptr
 LDA # (.._6974.str_addr)/$100
 STA $50 ;DrawText.str_ptr
 STZ $51 ;DrawText.arg1
 STZ $52 ;DrawText.arg2
 LDA #$40
 STA $53 ;DrawText.ypos
 LDA #$35
 STA $54 ;DrawText.fg_color
 LDA #$15
 STA $55 ;DrawText.bg_color
 JSR DrawText
 JMP .s13done
 .s13c2:
 CMP #$2
 BEQ .._7073.skip
 JMP .s13c3
 .._7073.skip:
 .s13b3:
 BRA .._7084.str_skip
 .._7084.str_addr:
 FCB "Crystal",$0
 .._7084.str_skip:
 LDA # (.._7084.str_addr) # $100
 STA $4F ;DrawText.str_ptr
 LDA # (.._7084.str_addr)/$100
 STA $50 ;DrawText.str_ptr
 STZ $51 ;DrawText.arg1
 STZ $52 ;DrawText.arg2
 LDA #$40
 STA $53 ;DrawText.ypos
 LDA #$1F
 STA $54 ;DrawText.fg_color
 LDA #$15
 STA $55 ;DrawText.bg_color
 JSR DrawText
 .s13c3:
 .s13done:
 .s12c4:
 .s12done:
 LDA hero_activity
 BNE .._7194.skip
 JMP .if73
 .._7194.skip:
 LDA #$A8
 STA $2D ;DrawBar.xpos
 LDA #$49
 STA $2E ;DrawBar.ypos
 LDA hero_activity_ticks
 STA $2F ;DrawBar.stat1
 LDA hero_activity_ticks_max
 STA $30 ;DrawBar.stat2
 LDA #$32
 STA $31 ;DrawBar.fg_color
 LDA #$21
 STA $32 ;DrawBar.bg_color
 JSR DrawBar
 .if73:
 LDA # (map_data) # $100
 STA $3B ;map_ptr
 LDA # (map_data)/$100
 STA $3C ;map_ptr
 LDA #$A8
 STA $61 ;CalcXY.posx
 LDA #$54
 STA $62 ;CalcXY.posy
 JSR CalcXY
 LDA ret_val
 STA $39 ;gfx_ptr
 LDA ret_val+$1
 STA $3A ;gfx_ptr
 LDA #$14
 STA $3D ;height
 STZ $3E ;mX
 STZ $3F ;mY
 .dl.loop_outer:
 LDY #$0
 .dl.loop:
 LDA #$0
 STA $40 ;if_monster
 LDA #$0
 STA $41 ;if_crystal
 PHY
 LDA $3E ;mX
 STA $31 ;CheckForMonster.mX
 LDA $3F ;mY
 STA $32 ;CheckForMonster.mY
 JSR CheckForMonster
 LDA ret_val
 STA $40 ;if_monster
 LDA $3E ;mX
 STA $31 ;CheckForCrystal.mX
 LDA $3F ;mY
 STA $32 ;CheckForCrystal.mY
 JSR CheckForCrystal
 LDA ret_val
 STA $41 ;if_crystal
 PLY
 LDA $3E ;mX
 INC
 CMP #$28
 BNE .._7574.skip
 JMP .if74
 .._7574.skip:
 STA $3E ;mX
 JMP .if75
 .if74:
 STZ $3E ;mX
 INC $3F ;mY
 .if75:
 LDA $40 ;if_monster
 BNE .._7581.skip
 JMP .if76
 .._7581.skip:
 LDA #$3
 BRA .dl.pixel
 .if76:
 LDA $41 ;if_crystal
 BNE .._7586.skip
 JMP .if77
 .._7586.skip:
 LDA #$F
 BRA .dl.pixel
 .if77:
 LDA ($3B),Y ;map_ptr
 BRA .s14c0
 JMP .s14done
 .s14c0:
 CMP #$0
 BEQ .._7591.skip
 JMP .s14c1
 .._7591.skip:
 BRA .s14b1
 .s14c1:
 CMP #$1
 BNE .s14c2
 BRA .s14b1
 BRA .s14b1
 .s14c2:
 CMP #$2
 BNE .s14c3
 BRA .s14b1
 BRA .s14b1
 .s14c3:
 CMP #$3
 BNE .s14c4
 BRA .s14b1
 .s14b1:
 LDA #$3B
 JMP .s14done
 .s14c4:
 CMP #$4
 BEQ .._7600.skip
 JMP .s14c5
 .._7600.skip:
 .s14b2:
 LDA #$21
 JMP .s14done
 .s14c5:
 CMP #$5
 BEQ .._7609.skip
 JMP .s14c6
 .._7609.skip:
 .s14b3:
 LDA #$B
 JMP .s14done
 .s14c6:
 CMP #$6
 BEQ .._7618.skip
 JMP .s14c7
 .._7618.skip:
 .s14b4:
 LDA #$35
 JMP .s14done
 .s14c7:
 LDA #$3F
 .s14c8:
 .s14done:
 .dl.pixel:
 PHY
 PHA
 TYA
 ASL
 TAY
 PLA
 STA ($39),Y ;gfx_ptr
 INY
 STA ($39),Y ;gfx_ptr
 INC $3A ;gfx_ptr
 STA ($39),Y ;gfx_ptr
 DEY
 STA ($39),Y ;gfx_ptr
 DEC $3A ;gfx_ptr
 PLY
 INY
 CPY #$28
 BEQ .._7633.skip
 JMP .dl.loop
 .._7633.skip:
 LDA #$A8
 STA $39 ;gfx_ptr
 INC $3A ;gfx_ptr
 INC $3A ;gfx_ptr
 LDA #$28
 CLC
 ADC $3B ;map_ptr
 STA $3B ;map_ptr
 BCC .._7634.skip
 INC $3C ;map_ptr
 .._7634.skip:
 DEC $3D ;height
 BEQ .._7646.skip
 JMP .dl.loop_outer
 .._7646.skip:
 LDA display_X
 ASL
 ADC #$A8
 STA $39 ;gfx_ptr
 STA $3B ;map_ptr
 LDA display_Y
 ASL
 ADC #$94
 STA $3A ;gfx_ptr
 ADC #$7
 STA $3C ;map_ptr
 LDY #$0
 LDA #$C
 .dl.hline:
 STA ($39),Y ;gfx_ptr
 STA ($3B),Y ;map_ptr
 INY
 CPY #$A
 BNE .dl.hline
 LDA $39 ;gfx_ptr
 CLC
 ADC #$9
 STA $3B ;map_ptr
 INC $3A ;gfx_ptr
 LDA $3A ;gfx_ptr
 STA $3C ;map_ptr
 LDY #$6
 LDA #$C
 .dh.vline:
 STA ($39) ;gfx_ptr
 STA ($3B) ;map_ptr
 INC $3A ;gfx_ptr
 INC $3C ;map_ptr
 DEY
 BNE .dh.vline
 RTS
DrawFrame:
 LDA # (map_data) # $100
 STA $2D ;OffsetXY.map
 LDA # (map_data)/$100
 STA $2E ;OffsetXY.map
 LDA display_X
 STA $2F ;OffsetXY.mX
 LDA display_Y
 STA $30 ;OffsetXY.mY
 JSR OffsetXY
 LDA ret_val
 STA $34 ;map_ptr
 LDA ret_val+$1
 STA $35 ;map_ptr
 LDA # (monster_map) # $100
 STA $2D ;OffsetXY.map
 LDA # (monster_map)/$100
 STA $2E ;OffsetXY.map
 LDA display_X
 STA $2F ;OffsetXY.mX
 LDA display_Y
 STA $30 ;OffsetXY.mY
 JSR OffsetXY
 LDA ret_val
 STA $36 ;monster_ptr
 LDA ret_val+$1
 STA $37 ;monster_ptr
 LDA # (crystal_map) # $100
 STA $2D ;OffsetXY.map
 LDA # (crystal_map)/$100
 STA $2E ;OffsetXY.map
 LDA display_X
 STA $2F ;OffsetXY.mX
 LDA display_Y
 STA $30 ;OffsetXY.mY
 JSR OffsetXY
 LDA ret_val
 STA $38 ;crystal_ptr
 LDA ret_val+$1
 STA $39 ;crystal_ptr
 STZ $32 ;i
 STZ $33 ;j
 .df.loop_y:
 .df.loop_x:
 LDA ($34) ;map_ptr
 BRA .s15c0
 JMP .s15done
 .s15c0:
 CMP #$0
 BEQ .._7934.skip
 JMP .s15c1
 .._7934.skip:
 .s15b1:
 LDA #$0
 STA $31 ;tile
 JMP .s15done
 .s15c1:
 CMP #$1
 BEQ .._7954.skip
 JMP .s15c2
 .._7954.skip:
 .s15b2:
 LDA #$1
 STA $31 ;tile
 JMP .s15done
 .s15c2:
 CMP #$2
 BEQ .._7974.skip
 JMP .s15c3
 .._7974.skip:
 .s15b3:
 LDA #$2
 STA $31 ;tile
 JMP .s15done
 .s15c3:
 CMP #$3
 BEQ .._7994.skip
 JMP .s15c4
 .._7994.skip:
 .s15b4:
 LDA #$3
 STA $31 ;tile
 JMP .s15done
 .s15c4:
 CMP #$4
 BEQ .._8014.skip
 JMP .s15c5
 .._8014.skip:
 .s15b5:
 LDA #$4
 STA $31 ;tile
 JMP .s15done
 .s15c5:
 CMP #$5
 BEQ .._8034.skip
 JMP .s15c6
 .._8034.skip:
 .s15b6:
 LDA #$5
 STA $31 ;tile
 JMP .s15done
 .s15c6:
 CMP #$6
 BEQ .._8054.skip
 JMP .s15c7
 .._8054.skip:
 .s15b7:
 LDA #$1D
 STA $31 ;tile
 .s15c7:
 .s15done:
 CMP #$1D
 BEQ .._8079.skip
 JMP .if78
 .._8079.skip:
 LDA #$1D
 STA $40 ;DrawTile1bpp.tile
 LDA $32 ;i
 STA $41 ;DrawTile1bpp.xpos
 LDA $33 ;j
 STA $42 ;DrawTile1bpp.ypos
 LDA #$0
 STA $43 ;DrawTile1bpp.color1
 LDA #$30
 STA $44 ;DrawTile1bpp.color2
 JSR DrawTile1bpp
 JMP .if79
 .if78:
 LDA $31 ;tile
 STA $54 ;DrawTile.tile
 LDA $32 ;i
 STA $55 ;DrawTile.xpos
 LDA $33 ;j
 STA $56 ;DrawTile.ypos
 JSR DrawTile
 .if79:
 INC $34 ;map_ptr
 BNE .._8227.no_carry
 INC $35 ;map_ptr
 .._8227.no_carry:
 LDA ($36) ;monster_ptr
 CMP #$FF
 BNE .._8229.skip
 JMP .if80
 .._8229.skip:
 ASL
 ADC ($36) ;monster_ptr
 ADC #$2
 TAY
 LDA monster_list,Y
 BNE .._8232.skip
 JMP .if81
 .._8232.skip:
 LDA #$16
 STA $54 ;DrawTile.tile
 LDA $32 ;i
 STA $55 ;DrawTile.xpos
 LDA $33 ;j
 STA $56 ;DrawTile.ypos
 JSR DrawTile
 JMP .if82
 .if81:
 LDA #$17
 STA $54 ;DrawTile.tile
 LDA $32 ;i
 STA $55 ;DrawTile.xpos
 LDA $33 ;j
 STA $56 ;DrawTile.ypos
 JSR DrawTile
 .if82:
 .if80:
 INC $36 ;monster_ptr
 BNE .._8351.no_carry
 INC $37 ;monster_ptr
 .._8351.no_carry:
 LDA ($38) ;crystal_ptr
 CMP #$FF
 BNE .._8353.skip
 JMP .if83
 .._8353.skip:
 ASL
 ASL
 PHA
 ADC #$2
 TAY
 LDA crystal_list,Y
 BNE .._8356.skip
 JMP .if84
 .._8356.skip:
 PLA
 CLC
 ADC #$3
 TAY
 LDA crystal_list,Y
 BRA .s16c0
 JMP .s16done
 .s16c0:
 CMP #$0
 BEQ .._8359.skip
 JMP .s16c1
 .._8359.skip:
 .s16b1:
 LDA #$6
 STA $54 ;DrawTile.tile
 LDA $32 ;i
 STA $55 ;DrawTile.xpos
 LDA $33 ;j
 STA $56 ;DrawTile.ypos
 JSR DrawTile
 JMP .s16done
 .s16c1:
 CMP #$1
 BEQ .._8424.skip
 JMP .s16c2
 .._8424.skip:
 .s16b2:
 LDA #$8
 STA $54 ;DrawTile.tile
 LDA $32 ;i
 STA $55 ;DrawTile.xpos
 LDA $33 ;j
 STA $56 ;DrawTile.ypos
 JSR DrawTile
 JMP .s16done
 .s16c2:
 CMP #$2
 BEQ .._8489.skip
 JMP .s16c3
 .._8489.skip:
 .s16b3:
 LDA #$7
 STA $54 ;DrawTile.tile
 LDA $32 ;i
 STA $55 ;DrawTile.xpos
 LDA $33 ;j
 STA $56 ;DrawTile.ypos
 JSR DrawTile
 .s16c3:
 .s16done:
 JMP .if85
 .if84:
 PLA
 LDA #$19
 STA $54 ;DrawTile.tile
 LDA $32 ;i
 STA $55 ;DrawTile.xpos
 LDA $33 ;j
 STA $56 ;DrawTile.ypos
 JSR DrawTile
 .if85:
 .if83:
 INC $38 ;crystal_ptr
 BNE .._8620.no_carry
 INC $39 ;crystal_ptr
 .._8620.no_carry:
 LDA $32 ;i
 CLC
 ADC #$20
 STA $32 ;i
 CMP #$A0
 BEQ .._8621.skip
 JMP .df.loop_x
 .._8621.skip:
 LDA #$23
 CLC
 ADC $34 ;map_ptr
 STA $34 ;map_ptr
 BCC .._8622.skip
 INC $35 ;map_ptr
 .._8622.skip:
 LDA #$23
 CLC
 ADC $36 ;monster_ptr
 STA $36 ;monster_ptr
 BCC .._8634.skip
 INC $37 ;monster_ptr
 .._8634.skip:
 LDA #$23
 CLC
 ADC $38 ;crystal_ptr
 STA $38 ;crystal_ptr
 BCC .._8645.skip
 INC $39 ;crystal_ptr
 .._8645.skip:
 STZ $32 ;i
 LDA $33 ;j
 CLC
 ADC #$20
 STA $33 ;j
 CMP #$80
 BNE .._8656.skip
 JMP .if86
 .._8656.skip:
 JMP .df.loop_y
 .if86:
 LDA hero_X
 ASL
 ASL
 ASL
 ASL
 ASL
 STA $32 ;i
 LDA hero_Y
 ASL
 ASL
 ASL
 ASL
 ASL
 STA $33 ;j
 LDA hero_facing
 CMP #$3
 BEQ .._8660.skip
 JMP .if87
 .._8660.skip:
 LDA #$9
 STA $54 ;DrawTile.tile
 LDA $32 ;i
 STA $55 ;DrawTile.xpos
 LDA $33 ;j
 STA $56 ;DrawTile.ypos
 JSR DrawTile
 JMP .if88
 .if87:
 LDA #$A
 STA $54 ;DrawTile.tile
 LDA $32 ;i
 STA $55 ;DrawTile.xpos
 LDA $33 ;j
 STA $56 ;DrawTile.ypos
 JSR DrawTile
 .if88:
 LDA hero_target_direction
 BRA .s17c0
 JMP .s17done
 .s17c0:
 CMP #$1
 BEQ .._8779.skip
 JMP .s17c1
 .._8779.skip:
 .s17b1:
 LDA $33 ;j
 BEQ .df.no_draw
 SEC
 SBC #$20
 STA $33 ;j
 JMP .s17done
 .s17c1:
 CMP #$2
 BEQ .._8788.skip
 JMP .s17c2
 .._8788.skip:
 .s17b2:
 LDA $33 ;j
 CMP #$60
 BEQ .df.no_draw
 CLC
 ADC #$20
 STA $33 ;j
 JMP .s17done
 .s17c2:
 CMP #$3
 BEQ .._8797.skip
 JMP .s17c3
 .._8797.skip:
 .s17b3:
 LDA $32 ;i
 BEQ .df.no_draw
 SEC
 SBC #$20
 STA $32 ;i
 JMP .s17done
 .s17c3:
 CMP #$4
 BEQ .._8806.skip
 JMP .s17c4
 .._8806.skip:
 .s17b4:
 LDA $32 ;i
 CMP #$80
 BEQ .df.no_draw
 CLC
 ADC #$20
 STA $32 ;i
 .s17c4:
 .s17done:
 LDA #$1A
 STA $40 ;DrawTile1bpp.tile
 LDA $32 ;i
 STA $41 ;DrawTile1bpp.xpos
 LDA $33 ;j
 STA $42 ;DrawTile1bpp.ypos
 LDA #$C
 STA $43 ;DrawTile1bpp.color1
 LDA #$40
 STA $44 ;DrawTile1bpp.color2
 JSR DrawTile1bpp
 .df.no_draw:
 RTS
DrawBorder:
 DEC $23 ;width
 DEC $24 ;height
 LDA $21 ;xpos
 STA $26 ;gfx_ptr1
 STA $28 ;gfx_ptr2
 LDA $22 ;ypos
 CLC
 ADC #$40
 STA $27 ;gfx_ptr1
 ADC $24 ;height
 STA $29 ;gfx_ptr2
 LDY $23 ;width
 LDA $25 ;color
 .db.hline:
 STA ($26),Y ;gfx_ptr1
 STA ($28),Y ;gfx_ptr2
 DEY
 BNE .db.hline
 LDA $26 ;gfx_ptr1
 CLC
 ADC $23 ;width
 STA $28 ;gfx_ptr2
 LDA $27 ;gfx_ptr1
 STA $29 ;gfx_ptr2
 LDY $24 ;height
 INY
 LDA $25 ;color
 .db.vline:
 STA ($26) ;gfx_ptr1
 STA ($28) ;gfx_ptr2
 INC $27 ;gfx_ptr1
 INC $29 ;gfx_ptr2
 DEY
 BNE .db.vline
 RTS
DrawMenuBorder:
 LDA #$1
 STA $42 ;DrawRect.xpos
 LDA #$1
 STA $43 ;DrawRect.ypos
 LDA #$FE
 STA $44 ;DrawRect.width
 LDA #$10
 STA $45 ;DrawRect.height
 LDA #$2A
 STA $46 ;DrawRect.color
 JSR DrawRect
 LDA #$1
 STA $42 ;DrawRect.xpos
 LDA #$78
 STA $43 ;DrawRect.ypos
 LDA #$FE
 STA $44 ;DrawRect.width
 LDA #$7
 STA $45 ;DrawRect.height
 LDA #$2A
 STA $46 ;DrawRect.color
 JSR DrawRect
 LDA #$1
 STA $42 ;DrawRect.xpos
 LDA #$11
 STA $43 ;DrawRect.ypos
 LDA #$7
 STA $44 ;DrawRect.width
 LDA #$67
 STA $45 ;DrawRect.height
 LDA #$2A
 STA $46 ;DrawRect.color
 JSR DrawRect
 LDA #$F8
 STA $42 ;DrawRect.xpos
 LDA #$11
 STA $43 ;DrawRect.ypos
 LDA #$7
 STA $44 ;DrawRect.width
 LDA #$67
 STA $45 ;DrawRect.height
 LDA #$2A
 STA $46 ;DrawRect.color
 JSR DrawRect
 STZ $21 ;DrawBorder.xpos
 STZ $22 ;DrawBorder.ypos
 LDA #$0
 STA $23 ;DrawBorder.width
 LDA #$80
 STA $24 ;DrawBorder.height
 LDA #$0
 STA $25 ;DrawBorder.color
 JSR DrawBorder
 LDA #$8
 STA $21 ;DrawBorder.xpos
 LDA #$8
 STA $22 ;DrawBorder.ypos
 LDA #$F0
 STA $23 ;DrawBorder.width
 LDA #$70
 STA $24 ;DrawBorder.height
 LDA #$0
 STA $25 ;DrawBorder.color
 JSR DrawBorder
 LDA #$1
 STA $2A ;counter
 .dmb.loop:
 LDA #$0
 CLC
 SBC $2A ;counter
 STA $2B ;width
 LDA #$80
 CLC
 SBC $2A ;counter
 STA $2C ;height
 LDA $2A ;counter
 STA $61 ;CalcXY.posx
 LDA $2A ;counter
 STA $62 ;CalcXY.posy
 JSR CalcXY
 LDA #$0
 STA (ret_val)
 LDA $2B ;width
 STA $61 ;CalcXY.posx
 LDA $2A ;counter
 STA $62 ;CalcXY.posy
 JSR CalcXY
 LDA #$0
 STA (ret_val)
 LDA $2B ;width
 STA $61 ;CalcXY.posx
 LDA $2C ;height
 STA $62 ;CalcXY.posy
 JSR CalcXY
 LDA #$0
 STA (ret_val)
 LDA $2A ;counter
 STA $61 ;CalcXY.posx
 LDA $2C ;height
 STA $62 ;CalcXY.posy
 JSR CalcXY
 LDA #$0
 STA (ret_val)
 LDA $2A ;counter
 INC
 CMP #$8
 STA $2A ;counter
 BNE .dmb.loop
 LDA #$9
 STA draw_X
 BRA .._9540.str_skip
 .._9540.str_addr:
 FCB "[C]haracter",$0
 .._9540.str_skip:
 LDA # (.._9540.str_addr) # $100
 STA $4F ;DrawText.str_ptr
 LDA # (.._9540.str_addr)/$100
 STA $50 ;DrawText.str_ptr
 STZ $51 ;DrawText.arg1
 STZ $52 ;DrawText.arg2
 LDA #$9
 STA $53 ;DrawText.ypos
 LDA #$3F
 STA $54 ;DrawText.fg_color
 LDA #$8
 STA $55 ;DrawText.bg_color
 JSR DrawText
 LDA #$4C
 STA draw_X
 BRA .._9628.str_skip
 .._9628.str_addr:
 FCB "S[k]ills",$0
 .._9628.str_skip:
 LDA # (.._9628.str_addr) # $100
 STA $4F ;DrawText.str_ptr
 LDA # (.._9628.str_addr)/$100
 STA $50 ;DrawText.str_ptr
 STZ $51 ;DrawText.arg1
 STZ $52 ;DrawText.arg2
 LDA #$9
 STA $53 ;DrawText.ypos
 LDA #$3F
 STA $54 ;DrawText.fg_color
 LDA #$20
 STA $55 ;DrawText.bg_color
 JSR DrawText
 LDA #$7C
 STA draw_X
 BRA .._9716.str_skip
 .._9716.str_addr:
 FCB "[R]esources",$0
 .._9716.str_skip:
 LDA # (.._9716.str_addr) # $100
 STA $4F ;DrawText.str_ptr
 LDA # (.._9716.str_addr)/$100
 STA $50 ;DrawText.str_ptr
 STZ $51 ;DrawText.arg1
 STZ $52 ;DrawText.arg2
 LDA #$9
 STA $53 ;DrawText.ypos
 LDA #$3F
 STA $54 ;DrawText.fg_color
 LDA #$2
 STA $55 ;DrawText.bg_color
 JSR DrawText
 LDA #$4B
 STA $42 ;DrawRect.xpos
 LDA #$9
 STA $43 ;DrawRect.ypos
 LDA #$1
 STA $44 ;DrawRect.width
 LDA #$8
 STA $45 ;DrawRect.height
 LDA #$20
 STA $46 ;DrawRect.color
 JSR DrawRect
 RTS
tile_src:
 FCB $D,$E,$F,$10,$11
DrawItem:
 LDA $4F ;tile
 ASL
 TAY
 LDA item_stats,Y
 STA $52 ;temp_ptr
 LDA item_stats+$1,Y
 STA $53 ;temp_ptr
 LDY #$0
 LDA ($52),Y ;temp_ptr
 TAY
 LDA tile_src,Y
 STA $52 ;temp_ptr
 LDA #$B
 STA $54 ;CopyTile.dest_id
 LDA $52 ;temp_ptr
 STA $55 ;CopyTile.source_id
 JSR CopyTile
 LDA #$B
 STA $54 ;ColorTile.tile
 LDA $4F ;tile
 STA $55 ;ColorTile.color_index
 JSR ColorTile
 LDA #$B
 STA $54 ;DrawTile.tile
 LDA $50 ;xpos
 STA $55 ;DrawTile.xpos
 LDA $51 ;ypos
 STA $56 ;DrawTile.ypos
 JSR DrawTile
 RTS
DrawItemStats:
 LDA $40 ;item
 ASL
 TAY
 LDA item_stats,Y
 STA $4B ;stat_ptr
 LDA item_stats+$1,Y
 STA $4C ;stat_ptr
 LDY #$0
 LDA ($4B),Y ;stat_ptr
 CMP #$E
 BEQ .._10010.skip
 JMP .if89
 .._10010.skip:
 LDY #$3
 LDA ($4B),Y ;stat_ptr
 ASL
 TAY
 LDA res_descriptions,Y
 STA $4B ;stat_ptr
 LDA res_descriptions+$1,Y
 STA $4C ;stat_ptr
 LDA $41 ;xpos
 INC
 INC
 STA draw_X
 INC $42 ;ypos
 INC $42 ;ypos
 LDA $4B ;stat_ptr
 STA $4F ;DrawText.str_ptr
 LDA $4C ;stat_ptr
 STA $50 ;DrawText.str_ptr
 STZ $51 ;DrawText.arg1
 STZ $52 ;DrawText.arg2
 LDA $42 ;ypos
 STA $53 ;DrawText.ypos
 LDA #$3F
 STA $54 ;DrawText.fg_color
 LDA $43 ;bg_color
 STA $55 ;DrawText.bg_color
 JSR DrawText
 JMP .if90
 .if89:
 LDA $40 ;item
 STA $4F ;DrawItem.tile
 LDA $41 ;xpos
 STA $50 ;DrawItem.xpos
 LDA $42 ;ypos
 STA $51 ;DrawItem.ypos
 JSR DrawItem
 LDA $40 ;item
 ASL
 TAY
 LDA item_titles,Y
 STA $49 ;title
 LDA item_titles+$1,Y
 STA $4A ;title
 LDA $41 ;xpos
 CLC
 ADC #$12
 STA draw_X
 LDA $42 ;ypos
 CLC
 ADC #$4
 STA $44 ;stat_y
 LDA $40 ;item
 ASL
 TAY
 LDA item_stats,Y
 STA $4B ;stat_ptr
 LDA item_stats+$1,Y
 STA $4C ;stat_ptr
 LDY #$3
 LDA ($4B),Y ;stat_ptr
 TAY
 LDA title_colors,Y
 STA $47 ;temp_color
 LDA $49 ;title
 STA $4F ;DrawText.str_ptr
 LDA $4A ;title
 STA $50 ;DrawText.str_ptr
 STZ $51 ;DrawText.arg1
 STZ $52 ;DrawText.arg2
 LDA $44 ;stat_y
 STA $53 ;DrawText.ypos
 LDA #$0
 STA $54 ;DrawText.fg_color
 LDA $47 ;temp_color
 STA $55 ;DrawText.bg_color
 JSR DrawText
 LDA $42 ;ypos
 CLC
 ADC #$F
 STA $44 ;stat_y
 LDA $40 ;item
 ASL
 TAY
 LDA item_stats,Y
 STA $4D ;item_ptr
 LDA item_stats+$1,Y
 STA $4E ;item_ptr
 LDY #$4
 LDA ($4D),Y ;item_ptr
 STA $45 ;count
 STZ $46 ;counter
 .dis.stats:
 LDA $46 ;counter
 ASL
 ADC #$5
 TAY
 LDA ($4D),Y ;item_ptr
 TAY
 LDA stat_description_colors,Y
 STA $47 ;temp_color
 TYA
 ASL
 TAY
 LDA stat_descriptions,Y
 STA $49 ;title
 LDA stat_descriptions+$1,Y
 STA $4A ;title
 LDA $46 ;counter
 ASL
 ADC #$6
 TAY
 LDA ($4D),Y ;item_ptr
 STA $48 ;temp_stat
 LDA $41 ;xpos
 CLC
 ADC #$12
 LDA $47 ;temp_color
 CMP $43 ;bg_color
 BEQ .._10414.skip
 JMP .if91
 .._10414.skip:
 LDA #$3
 STA $47 ;temp_color
 .if91:
 LDA $49 ;title
 STA $4F ;DrawText.str_ptr
 LDA $4A ;title
 STA $50 ;DrawText.str_ptr
 LDA $48 ;temp_stat
 STA $51 ;DrawText.arg1
 STZ $52 ;DrawText.arg2
 LDA $44 ;stat_y
 STA $53 ;DrawText.ypos
 LDA $47 ;temp_color
 STA $54 ;DrawText.fg_color
 LDA $43 ;bg_color
 STA $55 ;DrawText.bg_color
 JSR DrawText
 LDA $44 ;stat_y
 CLC
 ADC #$A
 STA $44 ;stat_y
 INC $46 ;counter
 LDA $46 ;counter
 CMP $45 ;count
 BNE .dis.stats
 .if90:
 RTS
DrawMenuInventory:
 LDA #$50
 STA $42 ;DrawRect.xpos
 LDA #$16
 STA $43 ;DrawRect.ypos
 LDA #$50
 STA $44 ;DrawRect.width
 LDA #$2D
 STA $45 ;DrawRect.height
 LDA #$4
 STA $46 ;DrawRect.color
 JSR DrawRect
 LDA #$50
 STA $42 ;DrawRect.xpos
 LDA #$46
 STA $43 ;DrawRect.ypos
 LDA #$50
 STA $44 ;DrawRect.width
 LDA #$2D
 STA $45 ;DrawRect.height
 LDA #$4
 STA $46 ;DrawRect.color
 JSR DrawRect
 STZ $37 ;index
 STZ $33 ;i
 .dmi.loopy:
 STZ $34 ;j
 .dmi.loopx:
 LDA $34 ;j
 ASL
 ASL
 ASL
 ASL
 ADC #$A4
 STA $36 ;xpos
 LDA $33 ;i
 ASL
 ASL
 ASL
 ASL
 ADC #$14
 STA $35 ;ypos
 LDA #$18
 STA $54 ;DrawTile.tile
 LDA $36 ;xpos
 STA $55 ;DrawTile.xpos
 LDA $35 ;ypos
 STA $56 ;DrawTile.ypos
 JSR DrawTile
 LDY $37 ;index
 LDA hero_inventory,Y
 CMP #$20
 BNE .._10860.skip
 JMP .if92
 .._10860.skip:
 ASL
 TAY
 LDA item_stats,Y
 STA $39 ;item_ptr
 LDA item_stats+$1,Y
 STA $3A ;item_ptr
 LDY #$0
 LDA ($39),Y ;item_ptr
 CMP #$E
 BNE .._10862.skip
 JMP .if93
 .._10862.skip:
 STA $38 ;item_type
 LDY $37 ;index
 LDA hero_inventory,Y
 STA $39 ;item_ptr
 LDA $39 ;item_ptr
 STA $4F ;DrawItem.tile
 LDA $36 ;xpos
 STA $50 ;DrawItem.xpos
 LDA $35 ;ypos
 STA $51 ;DrawItem.ypos
 JSR DrawItem
 LDA menu_char_x
 CMP $34 ;j
 BEQ .._10934.skip
 JMP .if94
 .._10934.skip:
 LDA menu_char_y
 CMP $33 ;i
 BEQ .._10936.skip
 JMP .if95
 .._10936.skip:
 LDY $38 ;item_type
 LDA hero_equipped,Y
 STA $39 ;item_ptr
 LDA $39 ;item_ptr
 STA $40 ;DrawItemStats.item
 LDA #$50
 STA $41 ;DrawItemStats.xpos
 LDA #$16
 STA $42 ;DrawItemStats.ypos
 LDA #$4
 STA $43 ;DrawItemStats.bg_color
 JSR DrawItemStats
 LDY $37 ;index
 LDA hero_inventory,Y
 STA $39 ;item_ptr
 LDA $39 ;item_ptr
 STA $40 ;DrawItemStats.item
 LDA #$50
 STA $41 ;DrawItemStats.xpos
 LDA #$46
 STA $42 ;DrawItemStats.ypos
 LDA #$4
 STA $43 ;DrawItemStats.bg_color
 JSR DrawItemStats
 LDA #$1B
 STA $40 ;DrawTile1bpp.tile
 LDA #$50
 STA $41 ;DrawTile1bpp.xpos
 LDA #$46
 STA $42 ;DrawTile1bpp.ypos
 LDA #$40
 STA $43 ;DrawTile1bpp.color1
 LDA #$C
 STA $44 ;DrawTile1bpp.color2
 JSR DrawTile1bpp
 .if95:
 .if94:
 .if93:
 .if92:
 INC $37 ;index
 INC $34 ;j
 LDA $34 ;j
 CMP #$5
 BEQ .._11187.skip
 JMP .dmi.loopx
 .._11187.skip:
 INC $33 ;i
 LDA $33 ;i
 CMP #$6
 BEQ .._11188.skip
 JMP .dmi.loopy
 .._11188.skip:
 LDA #$A4
 STA $42 ;DrawRect.xpos
 LDA #$74
 STA $43 ;DrawRect.ypos
 LDA #$50
 STA $44 ;DrawRect.width
 LDA #$1
 STA $45 ;DrawRect.height
 LDA #$0
 STA $46 ;DrawRect.color
 JSR DrawRect
 LDA #$F4
 STA $42 ;DrawRect.xpos
 LDA #$14
 STA $43 ;DrawRect.ypos
 LDA #$1
 STA $44 ;DrawRect.width
 LDA #$61
 STA $45 ;DrawRect.height
 LDA #$0
 STA $46 ;DrawRect.color
 JSR DrawRect
 LDA menu_char_x
 ASL
 ASL
 ASL
 ASL
 CLC
 ADC #$A4
 STA $36 ;xpos
 LDA menu_char_y
 ASL
 ASL
 ASL
 ASL
 CLC
 ADC #$14
 STA $35 ;ypos
 LDA #$1B
 STA $40 ;DrawTile1bpp.tile
 LDA $36 ;xpos
 STA $41 ;DrawTile1bpp.xpos
 LDA $35 ;ypos
 STA $42 ;DrawTile1bpp.ypos
 LDA #$40
 STA $43 ;DrawTile1bpp.color1
 LDA #$C
 STA $44 ;DrawTile1bpp.color2
 JSR DrawTile1bpp
 RTS
ds.tops:
 FCB $1D,$3B,$59
ds.colors:
 FCB $2E,$3A,$2B
ds.color1:
 FCB $4,$10,$1
ds.color2:
 FCB $8,$35,$17
DrawSkills:
 LDA #$98
 STA $42 ;DrawRect.xpos
 LDA #$1D
 STA $43 ;DrawRect.ypos
 LDA #$5C
 STA $44 ;DrawRect.width
 LDA #$57
 STA $45 ;DrawRect.height
 LDA #$10
 STA $46 ;DrawRect.color
 JSR DrawRect
 LDA #$24
 STA $35 ;index
 STZ $33 ;row
 .ds.rows:
 LDY $33 ;row
 LDA ds.tops,Y
 STA $37 ;top
 LDA ds.colors,Y
 STA $38 ;color
 LDA #$9
 STA $42 ;DrawRect.xpos
 LDA $37 ;top
 STA $43 ;DrawRect.ypos
 LDA #$8C
 STA $44 ;DrawRect.width
 LDA #$1E
 STA $45 ;DrawRect.height
 LDA $38 ;color
 STA $46 ;DrawRect.color
 JSR DrawRect
 STZ $34 ;column
 .ds.columns:
 LDA $34 ;column
 ASL
 ASL
 STA $3A ;mult_buff
 ASL
 ASL
 ASL
 SEC
 SBC $3A ;mult_buff
 CLC
 ADC #$B
 STA $36 ;tleft
 LDA $33 ;row
 ASL
 STA $3A ;mult_buff
 ASL
 ASL
 ASL
 ASL
 SEC
 SBC $3A ;mult_buff
 CLC
 ADC #$20
 STA $37 ;top
 LDA $35 ;index
 SEC
 SBC #$24
 TAY
 LDA skill_list,Y
 BNE .._11727.skip
 JMP .if96
 .._11727.skip:
 LDY $33 ;row
 LDA ds.color1,Y
 STA $38 ;color
 LDA ds.color2,Y
 STA $39 ;color2
 LDA $35 ;index
 STA $40 ;DrawTile1bpp.tile
 LDA $36 ;tleft
 STA $41 ;DrawTile1bpp.xpos
 LDA $37 ;top
 STA $42 ;DrawTile1bpp.ypos
 LDA $38 ;color
 STA $43 ;DrawTile1bpp.color1
 LDA $39 ;color2
 STA $44 ;DrawTile1bpp.color2
 JSR DrawTile1bpp
 JMP .if97
 .if96:
 LDA $35 ;index
 STA $40 ;DrawTile1bpp.tile
 LDA $36 ;tleft
 STA $41 ;DrawTile1bpp.xpos
 LDA $37 ;top
 STA $42 ;DrawTile1bpp.ypos
 LDA #$15
 STA $43 ;DrawTile1bpp.color1
 LDA #$2A
 STA $44 ;DrawTile1bpp.color2
 JSR DrawTile1bpp
 .if97:
 LDA menu_skills_x
 CMP $34 ;column
 BEQ .._11978.skip
 JMP .if98
 .._11978.skip:
 LDA menu_skills_y
 CMP $33 ;row
 BEQ .._11980.skip
 JMP .if99
 .._11980.skip:
 LDA #$1C
 STA $40 ;DrawTile1bpp.tile
 LDA $36 ;tleft
 STA $41 ;DrawTile1bpp.xpos
 LDA $37 ;top
 STA $42 ;DrawTile1bpp.ypos
 LDA #$40
 STA $43 ;DrawTile1bpp.color1
 LDA #$C
 STA $44 ;DrawTile1bpp.color2
 JSR DrawTile1bpp
 LDA menu_skills_y
 ASL
 ASL
 CLC
 ADC menu_skills_y
 ADC menu_skills_x
 ASL
 STA $3B ;index_buff
 TAY
 LDA skill_titles,Y
 STA $3C ;str_ptr
 LDA skill_titles+$1,Y
 STA $3D ;str_ptr
 LDY #$0
 .ds.title:
 LDA ($3C),Y ;str_ptr
 BEQ .ds.title_done
 INY
 BNE .ds.title
 .ds.title_done:
 TYA
 ASL
 STA $3A ;mult_buff
 ASL
 CLC
 ADC $3A ;mult_buff
 STA $3A ;mult_buff
 LDA #$5C
 SEC
 SBC $3A ;mult_buff
 LSR
 CLC
 ADC #$98
 STA draw_X
 LDY menu_skills_y
 LDA ds.color2,Y
 STA $38 ;color
 LDA $3C ;str_ptr
 STA $4F ;DrawText.str_ptr
 LDA $3D ;str_ptr
 STA $50 ;DrawText.str_ptr
 STZ $51 ;DrawText.arg1
 STZ $52 ;DrawText.arg2
 LDA #$1F
 STA $53 ;DrawText.ypos
 LDA #$3F
 STA $54 ;DrawText.fg_color
 LDA $38 ;color
 STA $55 ;DrawText.bg_color
 JSR DrawText
 LDY $3B ;index_buff
 LDA skill_descriptions,Y
 STA $3C ;str_ptr
 LDA skill_descriptions+$1,Y
 STA $3D ;str_ptr
 LDA #$9A
 STA draw_X
 LDA $3C ;str_ptr
 STA $4F ;DrawText.str_ptr
 LDA $3D ;str_ptr
 STA $50 ;DrawText.str_ptr
 STZ $51 ;DrawText.arg1
 STZ $52 ;DrawText.arg2
 LDA #$2B
 STA $53 ;DrawText.ypos
 LDA #$3F
 STA $54 ;DrawText.fg_color
 LDA #$10
 STA $55 ;DrawText.bg_color
 JSR DrawText
 LDA $3B ;index_buff
 LSR
 TAY
 LDA skill_list,Y
 BEQ .._12375.skip
 JMP .if100
 .._12375.skip:
 LDA menu_skills_x
 BEQ .ds.upgrade
 DEY
 LDA skill_list,Y
 BNE .._12378.skip
 JMP .if101
 .._12378.skip:
 .ds.upgrade:
 LDA #$9A
 STA draw_X
 BRA .._12400.str_skip
 .._12400.str_addr:
 FCB "[Enter]Upgrade",$0
 .._12400.str_skip:
 LDA # (.._12400.str_addr) # $100
 STA $4F ;DrawText.str_ptr
 LDA # (.._12400.str_addr)/$100
 STA $50 ;DrawText.str_ptr
 STZ $51 ;DrawText.arg1
 STZ $52 ;DrawText.arg2
 LDA #$6A
 STA $53 ;DrawText.ypos
 LDA #$F
 STA $54 ;DrawText.fg_color
 LDA #$10
 STA $55 ;DrawText.bg_color
 JSR DrawText
 .if101:
 .if100:
 .if99:
 .if98:
 INC $35 ;index
 INC $34 ;column
 LDA $34 ;column
 CMP #$5
 BEQ .._12524.skip
 JMP .ds.columns
 .._12524.skip:
 INC $33 ;row
 LDA $33 ;row
 CMP #$3
 BEQ .._12525.skip
 JMP .ds.rows
 .._12525.skip:
 RTS
dres.colors:
 FCB $8,$35,$32,$A,$2A,$2A
dres.items:
 FCB $1E,$20,$22,$1F,$21,$23
DrawResources:
 LDA #$20
 STA menu_res_target
 STA $36 ;draw_item
 LDA #$98
 STA $42 ;DrawRect.xpos
 LDA #$1D
 STA $43 ;DrawRect.ypos
 LDA #$5C
 STA $44 ;DrawRect.width
 LDA #$57
 STA $45 ;DrawRect.height
 LDA #$1
 STA $46 ;DrawRect.color
 JSR DrawRect
 STZ $33 ;row
 .dres.rows:
 LDA $33 ;row
 INC
 STA $35 ;tile_index
 LDA #$0
 CLC
 LDY $33 ;row
 .._12669.loop:
 BEQ .._12669.done
 ADC #$17
 DEY
 BNE .._12669.loop
 .._12669.done:
 ADC #$B
 STA $37 ;tleft
 LDY $33 ;row
 LDA dres.colors,Y
 STA $39 ;color
 LDA $37 ;tleft
 STA $42 ;DrawRect.xpos
 LDA #$13
 STA $43 ;DrawRect.ypos
 LDA #$17
 STA $44 ;DrawRect.width
 LDA #$61
 STA $45 ;DrawRect.height
 LDA $39 ;color
 STA $46 ;DrawRect.color
 JSR DrawRect
 STZ $34 ;column
 .dres.columns:
 LDA $33 ;row
 CMP #$4
 BCC .._12813.skip
 JMP .if102
 .._12813.skip:
 LDA #$0
 CLC
 LDY $33 ;row
 .._12814.loop:
 BEQ .._12814.done
 ADC #$17
 DEY
 BNE .._12814.loop
 .._12814.done:
 ADC #$E
 STA $37 ;tleft
 LDA #$0
 CLC
 LDY $34 ;column
 .._12815.loop:
 BEQ .._12815.done
 ADC #$13
 DEY
 BNE .._12815.loop
 .._12815.done:
 ADC #$15
 STA $38 ;top
 LDA $35 ;tile_index
 STA $4F ;DrawItem.tile
 LDA $37 ;tleft
 STA $50 ;DrawItem.xpos
 LDA $38 ;top
 STA $51 ;DrawItem.ypos
 JSR DrawItem
 LDA $35 ;tile_index
 STA $36 ;draw_item
 LDA $35 ;tile_index
 CLC
 ADC #$5
 STA $35 ;tile_index
 JMP .if103
 .if102:
 LDA $34 ;column
 CMP #$3
 BCC .._12938.skip
 JMP .if104
 .._12938.skip:
 LDA $33 ;row
 SEC
 SBC #$4
 STA $3D ;mult_buff
 ASL
 ADC $3D ;mult_buff
 ADC $34 ;column
 TAY
 LDA dres.items,Y
 STA $3B ;item
 LDA #$0
 CLC
 LDY $33 ;row
 .._12939.loop:
 BEQ .._12939.done
 ADC #$17
 DEY
 BNE .._12939.loop
 .._12939.done:
 ADC #$E
 STA $37 ;tleft
 LDA #$0
 CLC
 LDY $34 ;column
 .._12940.loop:
 BEQ .._12940.done
 ADC #$13
 DEY
 BNE .._12940.loop
 .._12940.done:
 ADC #$15
 STA $38 ;top
 LDA $3B ;item
 BRA .s18c0
 JMP .s18done
 .s18c0:
 CMP #$1E
 BEQ .._12943.skip
 JMP .s18c1
 .._12943.skip:
 BRA .s18b1
 .s18c1:
 CMP #$1F
 BNE .s18c2
 BRA .s18b1
 .s18b1:
 LDA #$1
 STA $39 ;color
 LDA #$17
 STA $3A ;color2
 JMP .s18done
 .s18c2:
 CMP #$20
 BEQ .._12977.skip
 JMP .s18c3
 .._12977.skip:
 BRA .s18b2
 .s18c3:
 CMP #$21
 BNE .s18c4
 BRA .s18b2
 .s18b2:
 LDA #$10
 STA $39 ;color
 LDA #$35
 STA $3A ;color2
 JMP .s18done
 .s18c4:
 CMP #$22
 BEQ .._13011.skip
 JMP .s18c5
 .._13011.skip:
 BRA .s18b3
 .s18c5:
 CMP #$23
 BNE .s18c6
 BRA .s18b3
 .s18b3:
 LDA #$5
 STA $39 ;color
 LDA #$1F
 STA $3A ;color2
 .s18c6:
 .s18done:
 LDA $3B ;item
 STA $40 ;DrawTile1bpp.tile
 LDA $37 ;tleft
 STA $41 ;DrawTile1bpp.xpos
 LDA $38 ;top
 STA $42 ;DrawTile1bpp.ypos
 LDA $39 ;color
 STA $43 ;DrawTile1bpp.color1
 LDA $3A ;color2
 STA $44 ;DrawTile1bpp.color2
 JSR DrawTile1bpp
 LDA $34 ;column
 ASL
 CLC
 ADC $33 ;row
 CLC
 ADC #$15
 STA $36 ;draw_item
 JMP .if105
 .if104:
 LDA #$20
 STA $36 ;draw_item
 .if105:
 .if103:
 LDA $33 ;row
 CMP menu_res_x
 BEQ .._13208.skip
 JMP .if106
 .._13208.skip:
 LDA $34 ;column
 CMP menu_res_y
 BEQ .._13210.skip
 JMP .if107
 .._13210.skip:
 LDA #$0
 CLC
 LDY $34 ;column
 .._13211.loop:
 BEQ .._13211.done
 ADC #$13
 DEY
 BNE .._13211.loop
 .._13211.done:
 ADC #$15
 STA $38 ;top
 LDA #$1B
 STA $40 ;DrawTile1bpp.tile
 LDA $37 ;tleft
 STA $41 ;DrawTile1bpp.xpos
 LDA $38 ;top
 STA $42 ;DrawTile1bpp.ypos
 LDA #$40
 STA $43 ;DrawTile1bpp.color1
 LDA #$C
 STA $44 ;DrawTile1bpp.color2
 JSR DrawTile1bpp
 LDA $36 ;draw_item
 CMP #$20
 BNE .._13337.skip
 JMP .if108
 .._13337.skip:
 LDA $36 ;draw_item
 STA $40 ;DrawItemStats.item
 LDA #$98
 STA $41 ;DrawItemStats.xpos
 LDA #$1D
 STA $42 ;DrawItemStats.ypos
 LDA #$1
 STA $43 ;DrawItemStats.bg_color
 JSR DrawItemStats
 LDA $36 ;draw_item
 STA menu_res_target
 .if108:
 .if107:
 .if106:
 INC $34 ;column
 LDA $34 ;column
 CMP #$5
 BEQ .._13471.skip
 JMP .dres.columns
 .._13471.skip:
 INC $33 ;row
 LDA $33 ;row
 CMP #$6
 BEQ .._13472.skip
 JMP .dres.rows
 .._13472.skip:
 LDA menu_res_target
 CMP #$20
 BNE .._13474.skip
 JMP .if109
 .._13474.skip:
 ASL
 TAY
 LDA item_stats,Y
 STA $3E ;item_ptr
 LDA item_stats+$1,Y
 STA $3F ;item_ptr
 LDY #$1
 LDA ($3E),Y ;item_ptr
 STA $3C ;temp_cost
 LDY #$2
 LDA ($3E),Y ;item_ptr
 TAY
 LDA crystal_colors,Y
 STA $39 ;color
 LDA #$9A
 STA draw_X
 BRA .._13498.str_skip
 .._13498.str_addr:
 FCB "Cost: $",$0
 .._13498.str_skip:
 LDA # (.._13498.str_addr) # $100
 STA $4F ;DrawText.str_ptr
 LDA # (.._13498.str_addr)/$100
 STA $50 ;DrawText.str_ptr
 LDA $3C ;temp_cost
 STA $51 ;DrawText.arg1
 STZ $52 ;DrawText.arg2
 LDA #$6B
 STA $53 ;DrawText.ypos
 LDA $39 ;color
 STA $54 ;DrawText.fg_color
 LDA #$1
 STA $55 ;DrawText.bg_color
 JSR DrawText
 .if109:
 RTS
DrawMenu:
 LDA output_mode
 BRA .s19c0
 JMP .s19done
 .s19c0:
 CMP #$1
 BEQ .._13648.skip
 JMP .s19c1
 .._13648.skip:
 .s19b1:
 LDA #$9
 STA $42 ;DrawRect.xpos
 LDA #$11
 STA $43 ;DrawRect.ypos
 LDA #$EE
 STA $44 ;DrawRect.width
 LDA #$66
 STA $45 ;DrawRect.height
 LDA #$8
 STA $46 ;DrawRect.color
 JSR DrawRect
 LDA #$A
 STA $54 ;DrawTile.tile
 LDA #$1B
 STA $55 ;DrawTile.xpos
 LDA #$15
 STA $56 ;DrawTile.ypos
 JSR DrawTile
 LDA #$38
 STA $2D ;stat_y
 STZ $2E ;counter
 .dm.loop:
 LDA $2E ;counter
 ASL
 TAY
 LDA hero_stat_pointers,Y
 STA $31 ;stat_ptr
 LDA hero_stat_pointers+$1,Y
 STA $32 ;stat_ptr
 ORA hero_stat_pointers,Y
 BEQ .._13796.skip
 JMP .if110
 .._13796.skip:
 LDA hero_HP_Max
 STA $2F ;temp_stat
 JMP .if111
 .if110:
 LDA ($31) ;stat_ptr
 STA $2F ;temp_stat
 .if111:
 LDA hero_stat_texts,Y
 STA $31 ;stat_ptr
 LDA hero_stat_texts+$1,Y
 STA $32 ;stat_ptr
 LDY $2E ;counter
 LDA hero_stat_colors,Y
 STA $30 ;temp_color
 LDA #$D
 STA draw_X
 LDA $31 ;stat_ptr
 STA $4F ;DrawText.str_ptr
 LDA $32 ;stat_ptr
 STA $50 ;DrawText.str_ptr
 LDA $2F ;temp_stat
 STA $51 ;DrawText.arg1
 STZ $52 ;DrawText.arg2
 LDA $2D ;stat_y
 STA $53 ;DrawText.ypos
 LDA $30 ;temp_color
 STA $54 ;DrawText.fg_color
 LDA #$8
 STA $55 ;DrawText.bg_color
 JSR DrawText
 LDA $2D ;stat_y
 CLC
 ADC #$9
 STA $2D ;stat_y
 LDA $2E ;counter
 INC
 STA $2E ;counter
 CMP #$7
 BNE .dm.loop
 JSR DrawMenuInventory
 JMP .s19done
 .s19c1:
 CMP #$2
 BEQ .._13933.skip
 JMP .s19c2
 .._13933.skip:
 .s19b2:
 LDA #$9
 STA $42 ;DrawRect.xpos
 LDA #$11
 STA $43 ;DrawRect.ypos
 LDA #$EE
 STA $44 ;DrawRect.width
 LDA #$66
 STA $45 ;DrawRect.height
 LDA #$20
 STA $46 ;DrawRect.color
 JSR DrawRect
 LDA #$B
 STA draw_X
 BRA .._14033.str_skip
 .._14033.str_addr:
 FCB "Points: $",$0
 .._14033.str_skip:
 LDA # (.._14033.str_addr) # $100
 STA $4F ;DrawText.str_ptr
 LDA # (.._14033.str_addr)/$100
 STA $50 ;DrawText.str_ptr
 LDA hero_Points
 STA $51 ;DrawText.arg1
 STZ $52 ;DrawText.arg2
 LDA #$14
 STA $53 ;DrawText.ypos
 LDA #$3F
 STA $54 ;DrawText.fg_color
 LDA #$20
 STA $55 ;DrawText.bg_color
 JSR DrawText
 JSR DrawSkills
 JMP .s19done
 .s19c2:
 CMP #$3
 BEQ .._14127.skip
 JMP .s19c3
 .._14127.skip:
 .s19b3:
 LDA #$9
 STA $42 ;DrawRect.xpos
 LDA #$11
 STA $43 ;DrawRect.ypos
 LDA #$EE
 STA $44 ;DrawRect.width
 LDA #$66
 STA $45 ;DrawRect.height
 LDA #$2
 STA $46 ;DrawRect.color
 JSR DrawRect
 LDA #$98
 STA $42 ;DrawRect.xpos
 LDA #$13
 STA $43 ;DrawRect.ypos
 LDA #$5C
 STA $44 ;DrawRect.width
 LDA #$A
 STA $45 ;DrawRect.height
 LDA #$0
 STA $46 ;DrawRect.color
 JSR DrawRect
 LDA #$AB
 STA draw_X
 BRA .._14303.str_skip
 .._14303.str_addr:
 FCB "$",$0
 .._14303.str_skip:
 LDA # (.._14303.str_addr) # $100
 STA $4F ;DrawText.str_ptr
 LDA # (.._14303.str_addr)/$100
 STA $50 ;DrawText.str_ptr
 LDA hero_Red
 STA $51 ;DrawText.arg1
 STZ $52 ;DrawText.arg2
 LDA #$15
 STA $53 ;DrawText.ypos
 LDA #$17
 STA $54 ;DrawText.fg_color
 LDA #$0
 STA $55 ;DrawText.bg_color
 JSR DrawText
 LDA #$C3
 STA draw_X
 BRA .._14410.str_skip
 .._14410.str_addr:
 FCB "$",$0
 .._14410.str_skip:
 LDA # (.._14410.str_addr) # $100
 STA $4F ;DrawText.str_ptr
 LDA # (.._14410.str_addr)/$100
 STA $50 ;DrawText.str_ptr
 LDA hero_Blue
 STA $51 ;DrawText.arg1
 STZ $52 ;DrawText.arg2
 LDA #$15
 STA $53 ;DrawText.ypos
 LDA #$35
 STA $54 ;DrawText.fg_color
 LDA #$0
 STA $55 ;DrawText.bg_color
 JSR DrawText
 LDA #$DB
 STA draw_X
 BRA .._14517.str_skip
 .._14517.str_addr:
 FCB "$",$0
 .._14517.str_skip:
 LDA # (.._14517.str_addr) # $100
 STA $4F ;DrawText.str_ptr
 LDA # (.._14517.str_addr)/$100
 STA $50 ;DrawText.str_ptr
 LDA hero_Yellow
 STA $51 ;DrawText.arg1
 STZ $52 ;DrawText.arg2
 LDA #$15
 STA $53 ;DrawText.ypos
 LDA #$1F
 STA $54 ;DrawText.fg_color
 LDA #$0
 STA $55 ;DrawText.bg_color
 JSR DrawText
 JSR DrawResources
 .s19c3:
 .s19done:
 RTS
CheckHP:
 LDA hero_HP+$1
 BMI .chp.dead
 ORA hero_HP
 BEQ .chp.dead
 BRA .chp.alive
 .chp.dead:
 STZ hero_HP
 STZ hero_HP+$1
 JSR DrawFrame
 JSR DrawLegend
 LDA #$64
 STA $42 ;DrawRect.xpos
 LDA #$38
 STA $43 ;DrawRect.ypos
 LDA #$36
 STA $44 ;DrawRect.width
 LDA #$10
 STA $45 ;DrawRect.height
 LDA #$0
 STA $46 ;DrawRect.color
 JSR DrawRect
 LDA #$68
 STA draw_X
 BRA .._14706.str_skip
 .._14706.str_addr:
 FCB "You died",$0
 .._14706.str_skip:
 LDA # (.._14706.str_addr) # $100
 STA $4F ;DrawText.str_ptr
 LDA # (.._14706.str_addr)/$100
 STA $50 ;DrawText.str_ptr
 STZ $51 ;DrawText.arg1
 STZ $52 ;DrawText.arg2
 LDA #$3C
 STA $53 ;DrawText.ypos
 LDA #$3F
 STA $54 ;DrawText.fg_color
 LDA #$0
 STA $55 ;DrawText.bg_color
 JSR DrawText
 .chp.loop:
 BRA .chp.loop
 .chp.alive:
 LDA hero_HP_Max
 CMP hero_HP
 BCC .._14770.skip
 JMP .if112
 .._14770.skip:
 LDA hero_HP_Max
 STA hero_HP
 LDA hero_HP_Max+$1
 STA hero_HP+$1
 .if112:
 .chp.done:
 RTS
CheckLavaExit:
 LDA display_X
 CLC
 ADC hero_X
 STA $6B ;mX
 LDA display_Y
 CLC
 ADC hero_Y
 STA $6C ;mY
 LDA # (map_data) # $100
 STA $2D ;MapXY.map
 LDA # (map_data)/$100
 STA $2E ;MapXY.map
 LDA $6B ;mX
 STA $2F ;MapXY.mX
 LDA $6C ;mY
 STA $30 ;MapXY.mY
 JSR MapXY
 LDA ret_val
 BRA .s20c0
 JMP .s20done
 .s20c0:
 CMP #$5
 BEQ .._14839.skip
 JMP .s20c1
 .._14839.skip:
 .s20b1:
 LDA hero_HP
 SEC
 SBC hero_Lava_Dmg
 STA hero_HP
 LDA hero_HP+$1
 SBC hero_Lava_Dmg+$1
 STA hero_HP+$1
 JSR CheckHP
 LDA #$FF
 STA ret_val
 BRA .cle.done
 JMP .s20done
 .s20c1:
 CMP #$6
 BEQ .._14865.skip
 JMP .s20c2
 .._14865.skip:
 .s20b2:
 JSR MakeMap
 JSR LoadMonsters
 JSR LoadCrystals
 JSR ResetGame
 LDA #$FF
 STA ret_val
 BRA .cle.done
 .s20c2:
 .s20done:
 LDA #$0
 STA ret_val
 .cle.done:
 RTS
AddExp:
 LDA hero_Exp
 CLC
 ADC $2D ;exp
 STA hero_Exp
 CMP hero_Exp_Max
 BCS .._14918.skip
 JMP .if113
 .._14918.skip:
 LDA hero_Exp
 SEC
 SBC hero_Exp_Max
 STA hero_Exp
 LDA hero_Exp_Max
 CLC
 ADC #$A
 STA hero_Exp_Max
 INC hero_Level
 INC hero_Points
 LDA hero_HP_Max
 STA hero_HP
 LDA hero_HP_Max+$1
 STA hero_HP+$1
 LDA hero_Batt_Max
 STA hero_Batt
 LDA skill_list+$B
 BNE .._14941.skip
 JMP .if114
 .._14941.skip:
 LDA #$3
 STA $2F ;rand8.max
 JSR rand8
 LDA ret_val
 BRA .s21c0
 JMP .s21done
 .s21c0:
 CMP #$0
 BEQ .._14964.skip
 JMP .s21c1
 .._14964.skip:
 .s21b1:
 LDA hero_Blue
 CLC
 ADC #$5
 STA hero_Blue
 JMP .s21done
 .s21c1:
 CMP #$1
 BEQ .._14973.skip
 JMP .s21c2
 .._14973.skip:
 .s21b2:
 LDA hero_Red
 CLC
 ADC #$5
 STA hero_Red
 JMP .s21done
 .s21c2:
 CMP #$2
 BEQ .._14982.skip
 JMP .s21c3
 .._14982.skip:
 .s21b3:
 LDA hero_Yellow
 CLC
 ADC #$5
 STA hero_Yellow
 .s21c3:
 .s21done:
 .if114:
 .if113:
 RTS
TickHandler:
 LDA #$0
 STA $63 ;redraw
 LDA hero_HP
 STA $64 ;original_hp
 LDA hero_Batt
 STA $65 ;original_batt
 LDA hero_HP_Recharge
 CLC
 ADC hero_HP
 STA hero_HP
 BCC .._15063.skip
 INC hero_HP+$1
 .._15063.skip:
 LDA hero_Batt_Recharge
 CLC
 ADC hero_Batt
 STA hero_Batt
 BCC .._15083.skip
 INC hero_Batt+$1
 .._15083.skip:
 LDA hero_activity
 BNE .._15105.skip
 JMP .if115
 .._15105.skip:
 LDA hero_target_type
 BRA .s22c0
 JMP .s22done
 .s22c0:
 CMP #$4
 BEQ .._15108.skip
 JMP .s22c1
 .._15108.skip:
 .s22b1:
 LDA hero_Batt
 CMP hero_Mine_Cost
 BCS .._15118.skip
 JMP .if116
 .._15118.skip:
 LDA skill_list+$0
 BEQ .th.batt_saver
 LDA #$5
 STA $2F ;rand8.max
 JSR rand8
 LDA ret_val
 BEQ .th.batt_saver_done
 .th.batt_saver:
 LDA hero_Batt
 SEC
 SBC hero_Mine_Cost
 STA hero_Batt
 .th.batt_saver_done:
 INC hero_activity_ticks
 LDA #$FF
 STA $63 ;redraw
 LDA hero_activity_ticks
 CMP hero_activity_ticks_max
 BEQ .._15160.skip
 JMP .if117
 .._15160.skip:
 LDA hero_target_index
 ASL
 ASL
 CLC
 STA $68 ;index5
 ADC #$3
 TAY
 LDA crystal_list,Y
 BRA .s23c0
 JMP .s23done
 .s23c0:
 CMP #$0
 BEQ .._15163.skip
 JMP .s23c1
 .._15163.skip:
 .s23b1:
 INC hero_Red
 JMP .s23done
 .s23c1:
 CMP #$1
 BEQ .._15172.skip
 JMP .s23c2
 .._15172.skip:
 .s23b2:
 INC hero_Blue
 JMP .s23done
 .s23c2:
 CMP #$2
 BEQ .._15181.skip
 JMP .s23c3
 .._15181.skip:
 .s23b3:
 INC hero_Yellow
 .s23c3:
 .s23done:
 LDA skill_list+$4
 BNE .._15196.skip
 JMP .if118
 .._15196.skip:
 LDA crystal_list,Y
 BRA .s24c0
 JMP .s24done
 .s24c0:
 CMP #$0
 BEQ .._15199.skip
 JMP .s24c1
 .._15199.skip:
 .s24b1:
 INC hero_Red
 JMP .s24done
 .s24c1:
 CMP #$1
 BEQ .._15208.skip
 JMP .s24c2
 .._15208.skip:
 .s24b2:
 INC hero_Blue
 JMP .s24done
 .s24c2:
 CMP #$2
 BEQ .._15217.skip
 JMP .s24c3
 .._15217.skip:
 .s24b3:
 INC hero_Yellow
 .s24c3:
 .s24done:
 LDA #$2
 STA $2D ;AddExp.exp
 JSR AddExp
 .if118:
 LDA $68 ;index5
 CLC
 ADC #$2
 TAY
 LDA #$0
 STA crystal_list,Y
 LDA #$2
 STA $2D ;AddExp.exp
 JSR AddExp
 LDA #$0
 STA hero_target_type
 LDA #$0
 STA hero_activity
 JSR DrawFrame
 LDA #$FF
 STA $63 ;redraw
 .if117:
 .if116:
 JMP .s22done
 .s22c1:
 CMP #$1
 BEQ .._15335.skip
 JMP .s22c2
 .._15335.skip:
 .s22b2:
 LDA hero_Batt
 CMP hero_Drill_Cost
 BCS .._15345.skip
 JMP .if119
 .._15345.skip:
 LDA hero_Batt
 SEC
 SBC hero_Drill_Cost
 STA hero_Batt
 INC hero_activity_ticks
 LDA #$FF
 STA $63 ;redraw
 LDA hero_activity_ticks
 CMP hero_activity_ticks_max
 BEQ .._15361.skip
 JMP .if120
 .._15361.skip:
 LDA # (map_data) # $100
 STA $2D ;OffsetXY.map
 LDA # (map_data)/$100
 STA $2E ;OffsetXY.map
 LDA hero_target_index
 STA $2F ;OffsetXY.mX
 LDA hero_target_index2
 STA $30 ;OffsetXY.mY
 JSR OffsetXY
 LDA #$0
 STA (ret_val)
 LDA #$1
 STA $2D ;AddExp.exp
 JSR AddExp
 LDA #$0
 STA hero_target_type
 LDA #$0
 STA hero_activity
 LDA skill_list+$3
 BNE .._15490.skip
 JMP .if121
 .._15490.skip:
 LDA #$4
 STA $2F ;rand8.max
 JSR rand8
 LDA ret_val
 BEQ .._15519.skip
 JMP .if122
 .._15519.skip:
 LDA #$3
 STA $2F ;rand8.max
 JSR rand8
 LDA ret_val
 BRA .s25c0
 JMP .s25done
 .s25c0:
 CMP #$0
 BEQ .._15548.skip
 JMP .s25c1
 .._15548.skip:
 .s25b1:
 INC hero_Red
 JMP .s25done
 .s25c1:
 CMP #$1
 BEQ .._15557.skip
 JMP .s25c2
 .._15557.skip:
 .s25b2:
 INC hero_Blue
 JMP .s25done
 .s25c2:
 CMP #$2
 BEQ .._15566.skip
 JMP .s25c3
 .._15566.skip:
 .s25b3:
 INC hero_Yellow
 .s25c3:
 .s25done:
 LDA #$2
 STA $2D ;AddExp.exp
 JSR AddExp
 .if122:
 .if121:
 JSR DrawFrame
 LDA #$FF
 STA $63 ;redraw
 .if120:
 .if119:
 JMP .s22done
 .s22c2:
 CMP #$3
 BEQ .._15630.skip
 JMP .s22c3
 .._15630.skip:
 .s22b3:
 LDA hero_Batt
 CMP hero_Dmg_Cost
 BCS .._15640.skip
 JMP .if123
 .._15640.skip:
 LDA hero_Batt
 SEC
 SBC hero_Dmg_Cost
 STA hero_Batt
 LDA skill_list+$8
 BNE .._15643.skip
 JMP .if124
 .._15643.skip:
 LDA #$14
 STA $2F ;rand8.max
 JSR rand8
 LDA ret_val
 BEQ .._15672.skip
 JMP .if125
 .._15672.skip:
 STZ hero_activity_ticks
 .if125:
 .if124:
 LDA hero_activity_ticks
 BNE .._15694.skip
 JMP .if126
 .._15694.skip:
 LDA hero_activity_ticks
 SEC
 SBC hero_Dmg
 STA hero_activity_ticks
 BCS .._15695.skip
 DEC hero_activity_ticks+$1
 .._15695.skip:
 LDA #$64
 STA $2F ;rand8.max
 JSR rand8
 LDA ret_val
 CMP hero_Crit_Rate
 BCC .._15743.skip
 JMP .if127
 .._15743.skip:
 LDA skill_list+$6
 BNE .._15746.skip
 JMP .if128
 .._15746.skip:
 LDA hero_activity_ticks
 SEC
 SBC hero_Dmg
 STA hero_activity_ticks
 BCS .._15747.skip
 DEC hero_activity_ticks+$1
 .._15747.skip:
 JMP .if129
 .if128:
 LDA hero_Dmg
 LSR
 STA $67 ;mult_buff
 LDA hero_activity_ticks
 SEC
 SBC $67 ;mult_buff
 STA hero_activity_ticks
 BCS .._15769.skip
 DEC hero_activity_ticks+$1
 .._15769.skip:
 .if129:
 .if127:
 .if126:
 LDA hero_activity_ticks+$1
 BMI .th.mob_dead
 ORA hero_activity_ticks
 BEQ .th.mob_dead
 BRA .th.mob_done
 .th.mob_dead:
 LDA hero_target_index
 ASL
 CLC
 ADC hero_target_index
 ADC #$2
 TAY
 LDA #$0
 STA monster_list,Y
 LDA skill_list+$7
 BNE .._15792.skip
 JMP .if130
 .._15792.skip:
 LDA #$B
 STA $2D ;AddExp.exp
 JSR AddExp
 JMP .if131
 .if130:
 LDA #$A
 STA $2D ;AddExp.exp
 JSR AddExp
 .if131:
 LDA #$0
 STA hero_target_type
 LDA #$0
 STA hero_activity
 LDA skill_list+$1
 BNE .._15881.skip
 JMP .if132
 .._15881.skip:
 LDA #$A
 STA $2F ;rand8.max
 JSR rand8
 LDA ret_val
 BEQ .._15910.skip
 JMP .if133
 .._15910.skip:
 LDA #$3
 STA $2F ;rand8.max
 JSR rand8
 LDA ret_val
 BRA .s26c0
 JMP .s26done
 .s26c0:
 CMP #$0
 BEQ .._15939.skip
 JMP .s26c1
 .._15939.skip:
 .s26b1:
 INC hero_Red
 JMP .s26done
 .s26c1:
 CMP #$1
 BEQ .._15948.skip
 JMP .s26c2
 .._15948.skip:
 .s26b2:
 INC hero_Blue
 JMP .s26done
 .s26c2:
 CMP #$2
 BEQ .._15957.skip
 JMP .s26c3
 .._15957.skip:
 .s26b3:
 INC hero_Yellow
 .s26c3:
 .s26done:
 .if133:
 .if132:
 JSR DrawFrame
 .th.mob_done:
 LDA #$FF
 STA $63 ;redraw
 .if123:
 JSR rand5050
 LDA ret_val
 BNE .._15996.skip
 JMP .if134
 .._15996.skip:
 LDA hero_HP
 SEC
 SBC #$2
 STA hero_HP
 BCS .._15997.skip
 DEC hero_HP+$1
 .._15997.skip:
 .if134:
 .s22c3:
 .s22done:
 .if115:
 LDA hero_Batt_Max
 CMP hero_Batt
 BCC .._16021.skip
 JMP .if135
 .._16021.skip:
 LDA hero_Batt_Max
 STA hero_Batt
 .if135:
 LDA hero_Batt
 CMP $65 ;original_batt
 BNE .._16047.skip
 JMP .if136
 .._16047.skip:
 LDA #$FF
 STA $63 ;redraw
 .if136:
 JSR CheckHP
 LDA hero_HP
 CMP $64 ;original_hp
 BNE .._16067.skip
 JMP .if137
 .._16067.skip:
 LDA #$FF
 STA $63 ;redraw
 .if137:
 JSR CheckLavaExit
 LDA ret_val
 BNE .._16088.skip
 JMP .if138
 .._16088.skip:
 LDA #$FF
 STA $63 ;redraw
 .if138:
 LDA $63 ;redraw
 BNE .._16107.skip
 JMP .if139
 .._16107.skip:
 JSR DrawLegend
 .if139:
 RTS
KeyHandlerGame:
 LDA $FFE4
 STA $63 ;key
 LDA $63 ;key
 BRA .s27c0
 JMP .s27done
 .s27c0:
 CMP #$6D
 BEQ .._16145.skip
 JMP .s27c1
 .._16145.skip:
 BRA .s27b1
 .s27c1:
 CMP #$63
 BNE .s27c2
 BRA .s27b1
 .s27b1:
 LDA #$1
 STA output_mode
 JMP .s27done
 .s27c2:
 CMP #$6B
 BEQ .._16168.skip
 JMP .s27c3
 .._16168.skip:
 .s27b2:
 LDA #$2
 STA output_mode
 JMP .s27done
 .s27c3:
 CMP #$72
 BEQ .._16191.skip
 JMP .s27c4
 .._16191.skip:
 .s27b3:
 LDA #$3
 STA output_mode
 .s27c4:
 .s27done:
 LDA output_mode
 CMP #$0
 BNE .._16219.skip
 JMP .if140
 .._16219.skip:
 JSR DrawMenuBorder
 JSR DrawMenu
 JMP .if141
 .if140:
 LDA #$0
 STA $64 ;redraw
 LDA #$0
 STA $68 ;moved
 LDA hero_activity
 BEQ .._16250.skip
 JMP .if142
 .._16250.skip:
 LDA $63 ;key
 BRA .s28c0
 JMP .s28done
 .s28c0:
 CMP #$77
 BEQ .._16253.skip
 JMP .s28c1
 .._16253.skip:
 .s28b1:
 LDA hero_target_direction
 CMP #$1
 BNE .._16262.skip
 JMP .if143
 .._16262.skip:
 LDA #$1
 STA hero_target_direction
 LDA #$FF
 STA $64 ;redraw
 JMP .if144
 .if143:
 LDA display_Y
 CLC
 ADC hero_Y
 CMP #$1
 BCS .._16294.skip
 JMP .if145
 .._16294.skip:
 DEC
 STA $66 ;mY
 LDA display_X
 CLC
 ADC hero_X
 STA $65 ;mX
 LDA # (map_data) # $100
 STA $2D ;MapXY.map
 LDA # (map_data)/$100
 STA $2E ;MapXY.map
 LDA $65 ;mX
 STA $2F ;MapXY.mX
 LDA $66 ;mY
 STA $30 ;MapXY.mY
 JSR MapXY
 LDA ret_val
 CMP #$4
 BNE .._16356.skip
 JMP .if146
 .._16356.skip:
 LDA $65 ;mX
 STA $31 ;CheckForMonster.mX
 LDA $66 ;mY
 STA $32 ;CheckForMonster.mY
 JSR CheckForMonster
 LDA ret_val
 EOR #$FF
 STA $67 ;or_buff
 LDY #$9
 LDA skill_list,Y
 ORA $67 ;or_buff
 BNE .._16405.skip
 JMP .if147
 .._16405.skip:
 LDA hero_Y
 CMP #$2
 BCS .._16408.skip
 JMP .if148
 .._16408.skip:
 DEC hero_Y
 LDA #$FF
 STA $68 ;moved
 JMP .if149
 .if148:
 CMP #$1
 BEQ .._16421.skip
 JMP .if150
 .._16421.skip:
 LDA display_Y
 BEQ .._16423.skip
 JMP .if151
 .._16423.skip:
 STZ hero_Y
 LDA #$FF
 STA $68 ;moved
 JMP .if152
 .if151:
 DEC display_Y
 LDA #$FF
 STA $68 ;moved
 .if152:
 .if150:
 .if149:
 .if147:
 LDA $68 ;moved
 BNE .._16468.skip
 JMP .if153
 .._16468.skip:
 JSR CheckLavaExit
 .if153:
 .if146:
 .if145:
 .if144:
 JMP .s28done
 .s28c1:
 CMP #$73
 BEQ .._16480.skip
 JMP .s28c2
 .._16480.skip:
 .s28b2:
 LDA hero_target_direction
 CMP #$2
 BNE .._16489.skip
 JMP .if154
 .._16489.skip:
 LDA #$2
 STA hero_target_direction
 LDA #$1
 STA $64 ;redraw
 JMP .if155
 .if154:
 LDA display_Y
 SEC
 ADC hero_Y
 CMP #$14
 BCC .._16521.skip
 JMP .if156
 .._16521.skip:
 STA $66 ;mY
 LDA display_X
 CLC
 ADC hero_X
 STA $65 ;mX
 LDA # (map_data) # $100
 STA $2D ;MapXY.map
 LDA # (map_data)/$100
 STA $2E ;MapXY.map
 LDA $65 ;mX
 STA $2F ;MapXY.mX
 LDA $66 ;mY
 STA $30 ;MapXY.mY
 JSR MapXY
 LDA ret_val
 CMP #$4
 BNE .._16583.skip
 JMP .if157
 .._16583.skip:
 LDA $65 ;mX
 STA $31 ;CheckForMonster.mX
 LDA $66 ;mY
 STA $32 ;CheckForMonster.mY
 JSR CheckForMonster
 LDA ret_val
 EOR #$FF
 STA $67 ;or_buff
 LDY #$9
 LDA skill_list,Y
 ORA $67 ;or_buff
 BNE .._16632.skip
 JMP .if158
 .._16632.skip:
 LDA hero_Y
 CMP #$2
 BCC .._16635.skip
 JMP .if159
 .._16635.skip:
 INC hero_Y
 LDA #$FF
 STA $68 ;moved
 JMP .if160
 .if159:
 CMP #$2
 BEQ .._16648.skip
 JMP .if161
 .._16648.skip:
 LDA display_Y
 CMP #$10
 BEQ .._16650.skip
 JMP .if162
 .._16650.skip:
 LDA #$3
 STA hero_Y
 LDA #$FF
 STA $68 ;moved
 JMP .if163
 .if162:
 INC display_Y
 LDA #$FF
 STA $68 ;moved
 .if163:
 .if161:
 .if160:
 .if158:
 LDA $68 ;moved
 BNE .._16695.skip
 JMP .if164
 .._16695.skip:
 JSR CheckLavaExit
 .if164:
 .if157:
 .if156:
 .if155:
 JMP .s28done
 .s28c2:
 CMP #$61
 BEQ .._16707.skip
 JMP .s28c3
 .._16707.skip:
 .s28b3:
 LDA hero_facing
 CMP #$4
 BEQ .._16716.skip
 JMP .if165
 .._16716.skip:
 LDA #$3
 STA hero_facing
 LDA #$1
 STA $64 ;redraw
 .if165:
 LDA hero_target_direction
 CMP #$3
 BNE .._16747.skip
 JMP .if166
 .._16747.skip:
 LDA #$3
 STA hero_target_direction
 LDA #$1
 STA $64 ;redraw
 JMP .if167
 .if166:
 LDA display_X
 CLC
 ADC hero_X
 CMP #$1
 BCS .._16779.skip
 JMP .if168
 .._16779.skip:
 DEC
 STA $65 ;mX
 LDA display_Y
 CLC
 ADC hero_Y
 STA $66 ;mY
 LDA # (map_data) # $100
 STA $2D ;MapXY.map
 LDA # (map_data)/$100
 STA $2E ;MapXY.map
 LDA $65 ;mX
 STA $2F ;MapXY.mX
 LDA $66 ;mY
 STA $30 ;MapXY.mY
 JSR MapXY
 LDA ret_val
 CMP #$4
 BNE .._16841.skip
 JMP .if169
 .._16841.skip:
 LDA $65 ;mX
 STA $31 ;CheckForMonster.mX
 LDA $66 ;mY
 STA $32 ;CheckForMonster.mY
 JSR CheckForMonster
 LDA ret_val
 EOR #$FF
 STA $67 ;or_buff
 LDY #$9
 LDA skill_list,Y
 ORA $67 ;or_buff
 BNE .._16890.skip
 JMP .if170
 .._16890.skip:
 LDA hero_X
 CMP #$2
 BCS .._16893.skip
 JMP .if171
 .._16893.skip:
 DEC hero_X
 LDA #$FF
 STA $68 ;moved
 JMP .if172
 .if171:
 CMP #$1
 BEQ .._16906.skip
 JMP .if173
 .._16906.skip:
 LDA display_X
 BEQ .._16909.skip
 JMP .if174
 .._16909.skip:
 STZ hero_X
 LDA #$FF
 STA $68 ;moved
 JMP .if175
 .if174:
 DEC display_X
 LDA #$FF
 STA $68 ;moved
 .if175:
 .if173:
 .if172:
 .if170:
 LDA $68 ;moved
 BNE .._16954.skip
 JMP .if176
 .._16954.skip:
 JSR CheckLavaExit
 .if176:
 .if169:
 .if168:
 .if167:
 JMP .s28done
 .s28c3:
 CMP #$64
 BEQ .._16966.skip
 JMP .s28c4
 .._16966.skip:
 .s28b4:
 LDA hero_facing
 CMP #$3
 BEQ .._16975.skip
 JMP .if177
 .._16975.skip:
 LDA #$4
 STA hero_facing
 LDA #$1
 STA $64 ;redraw
 .if177:
 LDA hero_target_direction
 CMP #$4
 BNE .._17006.skip
 JMP .if178
 .._17006.skip:
 LDA #$4
 STA hero_target_direction
 LDA #$1
 STA $64 ;redraw
 JMP .if179
 .if178:
 LDA display_X
 SEC
 ADC hero_X
 CMP #$28
 BCC .._17038.skip
 JMP .if180
 .._17038.skip:
 STA $65 ;mX
 LDA display_Y
 CLC
 ADC hero_Y
 STA $66 ;mY
 LDA # (map_data) # $100
 STA $2D ;MapXY.map
 LDA # (map_data)/$100
 STA $2E ;MapXY.map
 LDA $65 ;mX
 STA $2F ;MapXY.mX
 LDA $66 ;mY
 STA $30 ;MapXY.mY
 JSR MapXY
 LDA ret_val
 CMP #$4
 BNE .._17100.skip
 JMP .if181
 .._17100.skip:
 LDA $65 ;mX
 STA $31 ;CheckForMonster.mX
 LDA $66 ;mY
 STA $32 ;CheckForMonster.mY
 JSR CheckForMonster
 LDA ret_val
 EOR #$FF
 STA $67 ;or_buff
 LDY #$9
 LDA skill_list,Y
 ORA $67 ;or_buff
 BNE .._17149.skip
 JMP .if182
 .._17149.skip:
 LDA hero_X
 CMP #$3
 BCC .._17152.skip
 JMP .if183
 .._17152.skip:
 INC hero_X
 LDA #$FF
 STA $68 ;moved
 JMP .if184
 .if183:
 CMP #$3
 BEQ .._17165.skip
 JMP .if185
 .._17165.skip:
 LDA display_X
 CMP #$23
 BEQ .._17167.skip
 JMP .if186
 .._17167.skip:
 LDA #$4
 STA hero_X
 LDA #$FF
 STA $68 ;moved
 JMP .if187
 .if186:
 INC display_X
 LDA #$FF
 STA $68 ;moved
 .if187:
 .if185:
 .if184:
 .if182:
 LDA $68 ;moved
 BNE .._17212.skip
 JMP .if188
 .._17212.skip:
 JSR CheckLavaExit
 .if188:
 .if181:
 .if180:
 .if179:
 JMP .s28done
 .s28c4:
 CMP #$20
 BEQ .._17224.skip
 JMP .s28c5
 .._17224.skip:
 .s28b5:
 LDA hero_target_type
 BRA .s29c0
 JMP .s29done
 .s29c0:
 CMP #$4
 BEQ .._17234.skip
 JMP .s29c1
 .._17234.skip:
 .s29b1:
 LDA hero_Mine_Speed
 STA hero_activity_ticks_max
 LDA hero_Mine_Speed+$1
 STA hero_activity_ticks_max+$1
 STZ hero_activity_ticks
 STZ hero_activity_ticks+$1
 LDA #$FF
 STA hero_activity
 LDA #$FF
 STA $64 ;redraw
 JMP .s29done
 .s29c1:
 CMP #$1
 BEQ .._17304.skip
 JMP .s29c2
 .._17304.skip:
 .s29b2:
 LDA hero_Drill_Speed
 STA hero_activity_ticks_max
 LDA hero_Drill_Speed+$1
 STA hero_activity_ticks_max+$1
 STZ hero_activity_ticks
 STZ hero_activity_ticks+$1
 LDA #$FF
 STA hero_activity
 LDA #$FF
 STA $64 ;redraw
 JMP .s29done
 .s29c2:
 CMP #$3
 BEQ .._17374.skip
 JMP .s29c3
 .._17374.skip:
 .s29b3:
 LDA #$1E
 STA hero_activity_ticks_max
 LDA #$0
 STA hero_activity_ticks_max+$1
 LDA #$1E
 STA hero_activity_ticks
 LDA #$0
 STA hero_activity_ticks+$1
 LDA #$FF
 STA hero_activity
 LDA #$FF
 STA $64 ;redraw
 .s29c3:
 .s29done:
 .s28c5:
 .s28done:
 .if142:
 LDA $64 ;redraw
 ORA $68 ;moved
 BNE .._17451.skip
 JMP .if189
 .._17451.skip:
 JSR UpdateTarget
 JSR DrawFrame
 JSR DrawLegend
 .if189:
 .if141:
 RTS
KeyHandlerMenu:
 LDA #$0
 STA $25 ;bought
 LDA #$0
 STA $26 ;redraw
 LDA #$0
 STA $27 ;redraw_skills
 LDA #$0
 STA $28 ;redraw_resources
 LDA $FFE4
 STA $21 ;key
 BRA .s30c0
 JMP .s30done
 .s30c0:
 CMP #$6D
 BEQ .._17546.skip
 JMP .s30c1
 .._17546.skip:
 .s30b1:
 LDA #$0
 STA output_mode
 JSR DrawFrame
 JSR DrawLegend
 JMP .khm.done
 JMP .s30done
 .s30c1:
 CMP #$63
 BEQ .._17577.skip
 JMP .s30c2
 .._17577.skip:
 .s30b2:
 LDA #$1
 STA output_mode
 JSR DrawMenu
 JMP .khm.done
 JMP .s30done
 .s30c2:
 CMP #$6B
 BEQ .._17606.skip
 JMP .s30c3
 .._17606.skip:
 .s30b3:
 LDA #$2
 STA output_mode
 JSR DrawMenu
 JMP .khm.done
 JMP .s30done
 .s30c3:
 CMP #$72
 BEQ .._17635.skip
 JMP .s30c4
 .._17635.skip:
 .s30b4:
 LDA #$3
 STA output_mode
 JSR DrawMenu
 JMP .khm.done
 .s30c4:
 .s30done:
 LDA output_mode
 BRA .s31c0
 JMP .s31done
 .s31c0:
 CMP #$1
 BEQ .._17670.skip
 JMP .s31c1
 .._17670.skip:
 .s31b1:
 LDA $21 ;key
 BRA .s32c0
 JMP .s32done
 .s32c0:
 CMP #$77
 BEQ .._17680.skip
 JMP .s32c1
 .._17680.skip:
 .s32b1:
 LDA menu_char_y
 CMP #$1
 BCS .._17690.skip
 JMP .if190
 .._17690.skip:
 DEC menu_char_y
 JSR DrawMenuInventory
 .if190:
 JMP .s32done
 .s32c1:
 CMP #$73
 BEQ .._17696.skip
 JMP .s32c2
 .._17696.skip:
 .s32b2:
 LDA menu_char_y
 CMP #$5
 BCC .._17706.skip
 JMP .if191
 .._17706.skip:
 INC menu_char_y
 JSR DrawMenuInventory
 .if191:
 JMP .s32done
 .s32c2:
 CMP #$64
 BEQ .._17712.skip
 JMP .s32c3
 .._17712.skip:
 .s32b3:
 LDA menu_char_x
 CMP #$4
 BCC .._17722.skip
 JMP .if192
 .._17722.skip:
 INC menu_char_x
 JSR DrawMenuInventory
 JMP .if193
 .if192:
 LDA menu_char_y
 CMP #$5
 BCC .._17729.skip
 JMP .if194
 .._17729.skip:
 STZ menu_char_x
 INC menu_char_y
 JSR DrawMenuInventory
 .if194:
 .if193:
 JMP .s32done
 .s32c3:
 CMP #$61
 BEQ .._17737.skip
 JMP .s32c4
 .._17737.skip:
 .s32b4:
 LDA menu_char_x
 CMP #$1
 BCS .._17747.skip
 JMP .if195
 .._17747.skip:
 DEC menu_char_x
 JSR DrawMenuInventory
 JMP .if196
 .if195:
 LDA menu_char_y
 CMP #$1
 BCS .._17754.skip
 JMP .if197
 .._17754.skip:
 LDA #$4
 STA menu_char_x
 DEC menu_char_y
 JSR DrawMenuInventory
 .if197:
 .if196:
 JMP .s32done
 .s32c4:
 CMP #$D
 BEQ .._17780.skip
 JMP .s32c5
 .._17780.skip:
 .s32b5:
 LDA menu_char_y
 ASL
 ASL
 ADC menu_char_y
 ADC menu_char_x
 TAY
 LDA hero_inventory,Y
 CMP #$20
 BNE .._17789.skip
 JMP .if198
 .._17789.skip:
 STA $22 ;temp_item
 STY $23 ;temp_index
 ASL
 TAY
 LDA item_stats,Y
 STA $2B ;item_ptr
 LDA item_stats+$1,Y
 STA $2C ;item_ptr
 LDY #$0
 LDA ($2B),Y ;item_ptr
 TAY
 LDA hero_equipped,Y
 PHY
 LDY $23 ;temp_index
 STA hero_inventory,Y
 LDA $22 ;temp_item
 PLY
 STA hero_equipped,Y
 JSR ColorHero
 JSR CalcStats
 JSR DrawMenu
 .if198:
 .s32c5:
 .s32done:
 JMP .s31done
 .s31c1:
 CMP #$2
 BEQ .._17804.skip
 JMP .s31c2
 .._17804.skip:
 .s31b2:
 LDA $21 ;key
 BRA .s33c0
 JMP .s33done
 .s33c0:
 CMP #$77
 BEQ .._17814.skip
 JMP .s33c1
 .._17814.skip:
 .s33b1:
 LDA menu_skills_y
 BNE .._17824.skip
 JMP .if199
 .._17824.skip:
 DEC menu_skills_y
 JSR DrawSkills
 .if199:
 JMP .s33done
 .s33c1:
 CMP #$73
 BEQ .._17830.skip
 JMP .s33c2
 .._17830.skip:
 .s33b2:
 LDA menu_skills_y
 CMP #$2
 BCC .._17840.skip
 JMP .if200
 .._17840.skip:
 INC menu_skills_y
 JSR DrawSkills
 .if200:
 JMP .s33done
 .s33c2:
 CMP #$61
 BEQ .._17846.skip
 JMP .s33c3
 .._17846.skip:
 .s33b3:
 LDA menu_skills_x
 BNE .._17856.skip
 JMP .if201
 .._17856.skip:
 DEC menu_skills_x
 JSR DrawSkills
 .if201:
 JMP .s33done
 .s33c3:
 CMP #$64
 BEQ .._17862.skip
 JMP .s33c4
 .._17862.skip:
 .s33b4:
 LDA menu_skills_x
 CMP #$4
 BCC .._17872.skip
 JMP .if202
 .._17872.skip:
 INC menu_skills_x
 JSR DrawSkills
 .if202:
 JMP .s33done
 .s33c4:
 CMP #$D
 BEQ .._17878.skip
 JMP .s33c5
 .._17878.skip:
 .s33b5:
 LDA hero_Points
 BNE .._17888.skip
 JMP .if203
 .._17888.skip:
 LDA menu_skills_y
 ASL
 ASL
 CLC
 ADC menu_skills_y
 ADC menu_skills_x
 TAY
 LDA skill_list,Y
 BEQ .._17891.skip
 JMP .if204
 .._17891.skip:
 LDA menu_skills_x
 BEQ .khm.skills
 LDA skill_list-$1,Y
 BEQ .khm.skills_done
 .khm.skills:
 DEC hero_Points
 LDA #$FF
 STA skill_list,Y
 JSR CalcStats
 LDA #$FF
 STA $26 ;redraw
 .khm.skills_done:
 .if204:
 .if203:
 .s33c5:
 .s33done:
 JMP .s31done
 .s31c2:
 CMP #$3
 BEQ .._17915.skip
 JMP .s31c3
 .._17915.skip:
 .s31b3:
 LDA $21 ;key
 BRA .s34c0
 JMP .s34done
 .s34c0:
 CMP #$77
 BEQ .._17925.skip
 JMP .s34c1
 .._17925.skip:
 .s34b1:
 LDA menu_res_y
 BNE .._17935.skip
 JMP .if205
 .._17935.skip:
 DEC menu_res_y
 JSR DrawResources
 .if205:
 JMP .s34done
 .s34c1:
 CMP #$73
 BEQ .._17941.skip
 JMP .s34c2
 .._17941.skip:
 .s34b2:
 LDA menu_res_y
 CMP #$4
 BCC .._17951.skip
 JMP .if206
 .._17951.skip:
 INC menu_res_y
 JSR DrawResources
 .if206:
 JMP .s34done
 .s34c2:
 CMP #$61
 BEQ .._17957.skip
 JMP .s34c3
 .._17957.skip:
 .s34b3:
 LDA menu_res_x
 BNE .._17967.skip
 JMP .if207
 .._17967.skip:
 DEC menu_res_x
 JSR DrawResources
 .if207:
 JMP .s34done
 .s34c3:
 CMP #$64
 BEQ .._17973.skip
 JMP .s34c4
 .._17973.skip:
 .s34b4:
 LDA menu_res_x
 CMP #$5
 BCC .._17983.skip
 JMP .if208
 .._17983.skip:
 INC menu_res_x
 JSR DrawResources
 .if208:
 JMP .s34done
 .s34c4:
 CMP #$D
 BEQ .._17989.skip
 JMP .s34c5
 .._17989.skip:
 .s34b5:
 LDA menu_res_target
 CMP #$20
 BNE .._17998.skip
 JMP .if209
 .._17998.skip:
 STZ $24 ;discount
 LDA menu_res_x
 CMP #$4
 BCC .._18014.skip
 JMP .if210
 .._18014.skip:
 LDA skill_list+$C
 BNE .._18017.skip
 JMP .if211
 .._18017.skip:
 LDA #$1
 STA $24 ;discount
 .if211:
 .if210:
 LDA menu_res_target
 ASL
 TAY
 LDA item_stats,Y
 STA $2B ;item_ptr
 LDA item_stats+$1,Y
 STA $2C ;item_ptr
 LDA skill_list+$E
 BNE .._18037.skip
 JMP .if212
 .._18037.skip:
 STZ $2A ;res_total
 LDA hero_Red
 CLC
 ADC hero_Blue
 BCC .._18038.skip
 INC $2A ;res_total
 .._18038.skip:
 CLC
 ADC hero_Yellow
 BCC .._18051.skip
 INC $2A ;res_total
 .._18051.skip:
 STA $29 ;res_total
 LDA $2A ;res_total
 BNE .khm.res_enough
 LDY #$1
 LDA ($2B),Y ;item_ptr
 SEC
 SBC $24 ;discount
 STA $23 ;temp_index
 LDA $29 ;res_total
 CMP $23 ;temp_index
 BCS .._18066.skip
 JMP .if213
 .._18066.skip:
 .khm.res_enough:
 LDA skill_list+$A
 BEQ .khm.res_csmith
 LDA #$5
 STA $2F ;rand8.max
 JSR rand8
 LDA ret_val
 BEQ .khm.res_csmith_done
 .khm.res_csmith:
 LDY #$1
 LDA ($2B),Y ;item_ptr
 SEC
 SBC $24 ;discount
 STA $29 ;res_total
 .khm.res_loop_red:
 LDA $29 ;res_total
 BEQ .khm.res_loop_blue
 LDA hero_Red
 BEQ .khm.res_loop_blue
 DEC $29 ;res_total
 DEC hero_Red
 BRA .khm.res_loop_red
 .khm.res_loop_blue:
 LDA $29 ;res_total
 BEQ .khm.res_loop_yellow
 LDA hero_Blue
 BEQ .khm.res_loop_yellow
 DEC $29 ;res_total
 DEC hero_Blue
 BRA .khm.res_loop_blue
 .khm.res_loop_yellow:
 LDA $29 ;res_total
 BEQ .khm.res_csmith_done
 LDA hero_Yellow
 BEQ .khm.res_csmith_done
 DEC $29 ;res_total
 DEC hero_Yellow
 BRA .khm.res_loop_yellow
 .khm.res_csmith_done:
 LDA #$FF
 STA $25 ;bought
 LDA #$FF
 STA $26 ;redraw
 .if213:
 JMP .if214
 .if212:
 LDY #$2
 LDA ($2B),Y ;item_ptr
 PHA
 LDY #$1
 LDA ($2B),Y ;item_ptr
 CLC
 SBC $24 ;discount
 TAY
 PLA
 BRA .s35c0
 JMP .s35done
 .s35c0:
 CMP #$0
 BEQ .._18125.skip
 JMP .s35c1
 .._18125.skip:
 .s35b1:
 TYA
 CMP hero_Red
 BCC .._18135.skip
 JMP .if215
 .._18135.skip:
 STA $23 ;temp_index
 LDA skill_list+$A
 BEQ .khm.res_red
 LDA #$5
 STA $2F ;rand8.max
 JSR rand8
 LDA ret_val
 BEQ .khm.res_red_done
 .khm.res_red:
 LDA hero_Red
 CLC
 SBC $23 ;temp_index
 STA hero_Red
 .khm.res_red_done:
 LDA #$FF
 STA $25 ;bought
 LDA #$FF
 STA $26 ;redraw
 .if215:
 JMP .s35done
 .s35c1:
 CMP #$1
 BEQ .._18191.skip
 JMP .s35c2
 .._18191.skip:
 .s35b2:
 TYA
 CMP hero_Blue
 BCC .._18201.skip
 JMP .if216
 .._18201.skip:
 STA $23 ;temp_index
 LDA skill_list+$A
 BEQ .khm.res_blue
 LDA #$5
 STA $2F ;rand8.max
 JSR rand8
 LDA ret_val
 BEQ .khm.res_blue_done
 .khm.res_blue:
 LDA hero_Blue
 CLC
 SBC $23 ;temp_index
 STA hero_Blue
 .khm.res_blue_done:
 LDA #$FF
 STA $25 ;bought
 LDA #$FF
 STA $26 ;redraw
 .if216:
 JMP .s35done
 .s35c2:
 CMP #$2
 BEQ .._18257.skip
 JMP .s35c3
 .._18257.skip:
 .s35b3:
 TYA
 CMP hero_Yellow
 BCC .._18267.skip
 JMP .if217
 .._18267.skip:
 STA $23 ;temp_index
 LDA skill_list+$A
 BEQ .khm.res_yellow
 LDA #$5
 STA $2F ;rand8.max
 JSR rand8
 LDA ret_val
 BEQ .khm.res_yellow_done
 .khm.res_yellow:
 LDA hero_Yellow
 CLC
 SBC $23 ;temp_index
 STA hero_Yellow
 .khm.res_yellow_done:
 LDA #$FF
 STA $25 ;bought
 LDA #$FF
 STA $26 ;redraw
 .if217:
 .s35c3:
 .s35done:
 .if214:
 .if209:
 LDA $25 ;bought
 BNE .._18333.skip
 JMP .if218
 .._18333.skip:
 LDA menu_res_target
 BRA .s36c0
 JMP .s36done
 .s36c0:
 CMP #$19
 BEQ .._18336.skip
 JMP .s36c1
 .._18336.skip:
 .s36b1:
 LDA hero_HP_Max
 STA hero_HP
 LDA hero_HP_Max+$1
 STA hero_HP+$1
 JMP .s36done
 .s36c1:
 CMP #$1A
 BEQ .._18373.skip
 JMP .s36c2
 .._18373.skip:
 .s36b2:
 INC hero_HP_Upgrade
 JSR CalcStats
 LDA hero_HP_Max
 STA hero_HP
 LDA hero_HP_Max+$1
 STA hero_HP+$1
 JMP .s36done
 .s36c2:
 CMP #$1B
 BEQ .._18412.skip
 JMP .s36c3
 .._18412.skip:
 .s36b3:
 LDA hero_Batt_Max
 STA hero_Batt
 JMP .s36done
 .s36c3:
 CMP #$1C
 BEQ .._18449.skip
 JMP .s36c4
 .._18449.skip:
 .s36b4:
 INC hero_Batt_Upgrade
 JSR CalcStats
 LDA hero_Batt_Max
 STA hero_Batt
 JMP .s36done
 .s36c4:
 CMP #$1D
 BEQ .._18488.skip
 JMP .s36c5
 .._18488.skip:
 .s36b5:
 LDA #$A
 STA $2D ;AddExp.exp
 JSR AddExp
 JMP .s36done
 .s36c5:
 CMP #$1E
 BEQ .._18526.skip
 JMP .s36c6
 .._18526.skip:
 .s36b6:
 INC hero_Dmg_Upgrade
 JSR CalcStats
 JMP .s36done
 .s36c6:
 LDY #$0
 .khm.loop:
 LDA hero_inventory,Y
 CMP #$20
 BEQ .._18539.skip
 JMP .if219
 .._18539.skip:
 LDA skill_list+$D
 BNE .._18542.skip
 JMP .if220
 .._18542.skip:
 LDA #$A
 STA $2F ;rand8.max
 JSR rand8
 LDA ret_val
 BNE .khm.no_upgrade
 PHY
 LDA menu_res_target
 ASL
 TAY
 LDA item_stats,Y
 STA $2B ;item_ptr
 LDA item_stats+$1,Y
 STA $2C ;item_ptr
 LDY #$0
 LDA ($2B),Y ;item_ptr
 BRA .s37c0
 JMP .s37done
 .s37c0:
 CMP #$0
 BEQ .._18574.skip
 JMP .s37c1
 .._18574.skip:
 .s37b1:
 LDA #$4
 JMP .s37done
 .s37c1:
 CMP #$1
 BEQ .._18583.skip
 JMP .s37c2
 .._18583.skip:
 .s37b2:
 LDA #$9
 JMP .s37done
 .s37c2:
 CMP #$2
 BEQ .._18592.skip
 JMP .s37c3
 .._18592.skip:
 .s37b3:
 LDA #$E
 JMP .s37done
 .s37c3:
 CMP #$3
 BEQ .._18601.skip
 JMP .s37c4
 .._18601.skip:
 .s37b4:
 LDA #$13
 JMP .s37done
 .s37c4:
 CMP #$4
 BEQ .._18610.skip
 JMP .s37c5
 .._18610.skip:
 .s37b5:
 LDA #$18
 .s37c5:
 .s37done:
 PLY
 STA hero_inventory,Y
 JMP .if221
 .if220:
 .khm.no_upgrade:
 LDA menu_res_target
 STA hero_inventory,Y
 .if221:
 BRA .khm.loop_done
 .if219:
 INY
 CPY #$1E
 BEQ .._18629.skip
 JMP .khm.loop
 .._18629.skip:
 .khm.loop_done:
 .s36c7:
 .s36done:
 .if218:
 .s34c5:
 .s34done:
 .s31c3:
 .s31done:
 .khm.done:
 LDA $26 ;redraw
 BNE .._18649.skip
 JMP .if222
 .._18649.skip:
 JSR DrawMenu
 .if222:
 LDA $27 ;redraw_skills
 BNE .._18656.skip
 JMP .if223
 .._18656.skip:
 JSR DrawSkills
 .if223:
 LDA $28 ;redraw_resources
 BNE .._18663.skip
 JMP .if224
 .._18663.skip:
 JSR DrawResources
 .if224:
 RTS
InitHero:
 STZ hero_Exp
 LDA #$28
 STA hero_Exp_Max
 STZ hero_HP_Upgrade
 STZ hero_Batt_Upgrade
 STZ hero_Dmg_Upgrade
 LDA #$1
 STA hero_Level
 STZ hero_Red
 STZ hero_Blue
 STZ hero_Yellow
 STZ hero_Points
 LDA #$0
 STA hero_activity
 LDA #$0
 STA hero_equipped+$0
 LDA #$5
 STA hero_equipped+$1
 LDA #$A
 STA hero_equipped+$2
 LDA #$F
 STA hero_equipped+$3
 LDA #$14
 STA hero_equipped+$4
 LDA #$20
 LDY #$0
 .ih.iloop:
 STA hero_inventory,Y
 INY
 CPY #$1E
 BNE .ih.iloop
 LDY #$F
 LDA #$0
 .ih.sloop:
 STA skill_list,Y
 DEY
 BNE .ih.sloop
 RTS
ResetGame:
 STZ display_X
 STZ display_Y
 LDA #$1
 STA hero_X
 LDA #$1
 STA hero_Y
 LDA #$0
 STA hero_activity
 LDA hero_HP_Max
 STA hero_HP
 LDA hero_Batt_Max
 STA hero_Batt
 LDA #$4
 STA hero_facing
 LDA #$4
 STA hero_target_direction
 LDA #$0
 STA output_mode
 JSR UpdateTarget
 RTS
main:
 JSR Setup
 JSR LoadTiles
 JSR MakeMap
 JSR LoadMonsters
 JSR LoadCrystals
 JSR InitHero
 JSR CalcStats
 JSR ColorHero
 JSR ResetGame
 JSR DrawFrame
 JSR DrawLegend
 .m.loop:
 LDA $FFE6
 CMP $20 ;timer_save
 BNE .._18921.skip
 JMP .if225
 .._18921.skip:
 STA $20 ;timer_save
 LDA output_mode
 CMP #$0
 BEQ .._18923.skip
 JMP .if226
 .._18923.skip:
 JSR TickHandler
 .if226:
 .if225:
 LDA output_mode
 CMP #$0
 BEQ .._18931.skip
 JMP .if227
 .._18931.skip:
 JSR KeyHandlerGame
 JMP .if228
 .if227:
 JSR KeyHandlerMenu
 .if228:
 BRA .m.loop
 RTS
GENRAM set *
	OUTRADIX 10
;Display memory usage in console
;===============================
	MESSAGE " "
	MESSAGE "Memory usage"
	MESSAGE "============"
	;AddCommas EEPROM-$C000
	;MESSAGE "ROM size:	\{comma_ret} bytes (\{100*(EEPROM-$C000)/$4000}%) of 16k bank"
comma_ret set "\{GENRAM-$200}"
comma_ret set "\{substr(comma_ret,0,strlen(comma_ret)-3)},\{substr(comma_ret,strlen(comma_ret)-3,strlen(comma_ret))}"
	MESSAGE "RAM size:	\{comma_ret} bytes (\{100*(GENRAM-$200)/($4000-$200)}%) of 15.8k bank"
	;Tell script that prints assembler output to stop outputting
	;Eliminates double output (because of multiple passes???)
	MESSAGE "END"

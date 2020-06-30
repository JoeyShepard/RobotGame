f_in=open("filtered.lst")
f_out=open("listing.lst","w")

ignore_list=["FCB","FDB","PAGE","ORG","DFS"]

asm_list=["jsr", "adc", "and", "cmp", "eor", "lda", "ora", "sbc", "sta",
          "bit", "dec", "inc", "dea", "ina", "jmp", "bra", "phx", "phy",
          "plx", "ply", "stz", "trb", "tsb",
          "bbr", "bbr0", "bbr1", "bbr2", "bbr3", "bbr4", "bbr5", "bbr6", "bbr7",
          "bbs", "bbs0", "bbs1", "bbs2", "bbs3", "bbs4", "bbs5", "bbs6", "bbs7",
          "rmb", "rmb0", "rmb1", "rmb2", "rmb3", "rmb4", "rmb5", "rmb6", "rmb7",
          "smb", "smb0", "smb1", "smb2", "smb3", "smb4", "smb5", "smb6", "smb7",
          "stp", "wai", "brk", "asl", "lsr", "rol", "ror",
          "bcc", "bcs", "beq", "bne", "bmi", "bpl", "bvc", "bvs", "clc", "sec",
          "cld", "sed", "cli", "sei", "clv", "cpx", "cpy", "dex", "dey", "inx",
          "iny", "ldx", "ldy", "pha", "pla", "plp", "rti", "rts", "stx", "sty",
          "tax", "tay", "txa", "tya", "tsx", "txs"
          ]

asm_list=[i.upper() for i in asm_list]

for i,line in enumerate(f_in):
    outline=""
    recognized=False

    if i>0:
        addr=line[13:17].strip()
        addr="0"*(4-len(addr))+addr
        
        short_line=(addr+" "+line[40:-1].strip())
        line_list=(short_line).split()
        short_line=" ".join(line_list)

        #print(line_list)
        
        if len(line_list)==1:
            recognized=True
        elif line_list[1] in ignore_list:
            recognized=True
        elif line_list[1][-1]==":":
            #label found
            if len(line_list)==2:
                outline=short_line
            else:
                if line_list[2] not in ignore_list:
                    outline=line_list[0]+" "+line_list[1]+"\n"+line_list[0]
                    for i in line_list[2:]:
                        outline+=" "+i
            recognized=True
        elif line_list[1] in asm_list:
            recognized=True
            outline=short_line
                
        if recognized==False:    
            print("Unrecognized:",i,line)
            break

    #f_out.write(outline+"\n")
    if outline!="":
        f_out.write(outline+"\n")
        
f_in.close()
f_out.close()

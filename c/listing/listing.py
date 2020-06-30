f_in=open("RobotGame\\listing\\temp.asm")
#f_in=open("temp.asm")
f_out=open("listing.lst","w")

ignore_list=[";",".fopt",".setcpu",".smart",".autoimport",".case",
             ".debuginfo",".importzp",".macpack",".dbg",".forceimport",
             ".export",".word",".byte",".addr",".res", ".endproc"]

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
          "tax", "tay", "txa", "tya", "tsx", "txs",
          #macros from cc65
          "jcs", "jcc", "jne", "jeq"
          ]

#Extracted manually from map file
segments={
    '"ZEROPAGE"':0x80,
    '"BSS"':0x200,
    '"BANK_ROM"':0x8000,
    '"STARTUP"':0xC000,
    '"ONCE"':0xC017,
    '"CODE"':0xC023,
    '"RODATA"':0xF476,
    '"DATA"':0xFD13
    }

print("Values taken manually from main.map:")
for k,v in segments.items():
    print("   ",k,hex(v)[2:])

def AddrAdjust(old_addr):
    addr=int(old_addr,16)
    
    if segment!="":
        addr+=segments[segment]
    addr=hex(addr)[2:].upper()
    return (4-len(addr))*"0"+addr

macro_mode=False
segment=""
for i,line in enumerate(f_in):
    recognized=False
    outline=""

    #if i>9700:
        #print(i)

    if i<7:
        recognized=True
        pass #write blank line
    else:
        short_line=(AddrAdjust(line[2:6])+" "+line[24:-1]).replace("     "," ")
        short_line=short_line.replace(" \t"," ")
        line_list=(short_line).split()
        
        if len(line_list)==1:
            recognized=True
        elif macro_mode:
            recognized=True
            if line_list[1]==".endmacro":
                macro_mode=False
        elif line_list[1] in ignore_list:
            recognized=True
        elif line_list[1]==".macro":
            recognized=True
            macro_mode=True
        elif line_list[1]==".segment":
            recognized=True
            segment=line_list[2]
        elif line_list[1][-1]==":":
            #label found
            if segment=="":
                pass
            elif len(line_list)==2:
                outline=short_line
            else:
                outline=line_list[0]+" "+line_list[1]+"\n"+line_list[0]
                for i in line_list[2:]:
                    outline+=" "+i
            recognized=True
        elif line_list[1]==".proc":
            recognized=True
            outline=line_list[0]+" "+line_list[2][1:]
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

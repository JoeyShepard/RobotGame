#f_lst=open(".\\listing\\temp.lst")
#f_map=open(".\\listing\\temp.map")
#f_out=open(".\\listing\\listing.lst","w")

f_lst=open("temp.lst")
f_map=open("temp.map")
f_out=open("listing.lst","w")

symbols={}

for line in f_map:
    key=line[0:5]
    #DOES NOT STAY CONSTANT!
    #val=line[8:40].strip()
    val=line[8:35].strip()
    if key not in symbols.keys():
        symbols[key]=[]
    symbols[key]+=[val]

for line in f_lst:
    line=line[:-1]
    if (len(line)>=57) and (line[56]=="|"):
        pass #line is data so skip
    else:
        #remove instruction bytes
        line_num="$"+line[1:5]
        line=line[17:].replace(","," ,")
        line=line.split()
        for i,item in enumerate(line):
            if item in symbols.keys():
                line[i]=symbols[item][0]
        temp_str=line[0]
        if len(line)>0:
            temp_str+=" "
            for arg in line[1:]:
                temp_str+=arg
        if line_num in symbols:
            for label in symbols[line_num]:
                f_out.write(line_num[1:]+" "+label+":\n")
        f_out.write(line_num[1:]+" "+temp_str+"\n")

f_lst.close()
f_map.close()
f_out.close()

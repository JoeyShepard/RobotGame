import csv
f=open("assets.csv")
writer=open("output.txt","w")
reader=csv.reader(f)
for row in reader:
    if len(row)==1:
        if row[0]!='':
            writer.write("\ " + row[0] + "\n")
    else:
        #Comment this out if not needed
        out_line="\ "+row[0]+" "+str(len(row[1:]))+"\n"
        out_line+="create " + row[0] + " "
        for cell in row[1:]:
            if (cell.isnumeric()):
                out_line+=hex(int(cell))[2:]+" c, "
            else:
                out_line+=cell+" c, "
            if len(out_line)>=240:
                writer.write(out_line+"\n")
                out_line=""
        if (out_line!=""):
            writer.write(out_line+"\n")
        
writer.close()
f.close()

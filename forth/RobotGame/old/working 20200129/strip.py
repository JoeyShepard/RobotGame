import sys

commented=False
read_file=open(sys.argv[1],"r")
write_file=open(sys.argv[2],"w")
for line in read_file.readlines():
    if (line[:-1].strip()=="("): commented=True;
    if (commented==False):
        if (line[:-1].strip()!=""):
            write_file.write(line)
    if (line[:-1].strip()==")"): commented=False;
read_file.close()
write_file.close()


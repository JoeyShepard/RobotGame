import sys

f=open(sys.argv[1],"r")
for line in f:
  if len(line)==1 and ord(line)==10:
    pass
  elif line[:-1]=="END":
    sys.exit()
  else:
    print(line[:-1])
f.close()
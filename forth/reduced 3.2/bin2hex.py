"""
Short script to convert to hex format

THIS IS NOT A GENERAL PURPOSE UTILITY!
"""

import sys

print("Generating hex file...")

try:
    address=int(sys.argv[1],16)
except:
    print("  Error: bad or missing address - "+sys.argv[1])
    sys.exit()

try:
    read_file=open(sys.argv[2],mode="rb")
except:
    print("  Error: input file not found - "+sys.argv[2])
    sys.exit()

try:
    write_file=open(sys.argv[3],mode="w")
except:
    print("  Error: output file can't be opened - "+sys.argv[3])
    sys.exit()


def pad(num,zeroes):
    return ("0"*zeroes+num)[-zeroes:]

def gen_line(data,address,checksum):
    if data=="":
        return ""
    out_str=":"+pad(hex(int(len(data)/2))[2:],2)+pad(hex(address)[2:],4)+"00"+data
    checksum+=int(len(data)/2)
    checksum+=(address&0xFF)+(address>>8)
    out_str+=pad(hex(((checksum&0xFF)^0xFF)+1)[2:],2)
    return out_str.upper()+"\n"

read_data=read_file.read()
data_len=len(read_data)

print("  "+sys.argv[3][sys.argv[3].rfind("\\")+1:])
temp="  "+pad(hex(address),4)+" - "+pad(hex(address+data_len-1),4)
if len(str(data_len))<4: temp+=" ("+str(data_len)
else: temp+=" ("+str(data_len)[:len(str(data_len))-3]+","+str(data_len)[-3:]
print(temp.upper()+" bytes)")

write_data=""
checksum=0
for i in read_data:
    write_data+=pad(hex(i)[2:],2)
    checksum+=i
    if len(write_data)==64:
        write_file.write(gen_line(write_data,address,checksum))
        write_data=""
        checksum=0
        address+=32
        
#Remaining bytes
#write_file.write(gen_line(write_data,address,checksum))
#Reset vector
#write_file.write(gen_line("0080",0xFFFC,0x20))
#End of record
#write_file.write(":00000001FF")

  

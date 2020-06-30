r=0x20
def rd():
    global r
    r=(r^((r<<7)&0xFFFF))&0xFFFF
    print("   "+str(hex(r)))
    r=(r^((r>>9)&0xFFFF))&0xFFFF
    print("   "+str(hex(r)))
    r=(r^((r<<8)&0xFFFF))&0xFFFF
    print("   "+str(hex(r)))
    return r

for i in range(10):
    print(hex(rd()))

#nums=[0]*0x10000

#for i in range(0xFFFF):
#    x=rd()
#    nums[x]=1

#for i in range(0xFFFF):
#    if nums[i]==0:
#        print(i)

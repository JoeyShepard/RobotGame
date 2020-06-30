f=open("raw.txt")
fout=open("prog.hex",mode="wt")
address=0
hi_address=0

def form_str(data):
    new_data=data+[((255-sum(data)%256)+1)%256]
    out_str=":"
    for byte in new_data:
        out_str+=hex(byte)[2:].zfill(2).upper()
    return out_str
    
for line in f.readlines():
    #remove "Bank XX" and blank lines
    if len(line)>10:
        data=line[8:55].split()
        data=[int(x,16) for x in data]
        data=[16,address>>8,address&0xFF,00]+data
        fout.write(form_str(data)+"\n")
        address+=16
        if (hi_address<<16)+address>0x273A0:
            break
        if address>=0x10000:
            hi_address+=1
            data=[2,0,0,4,0,hi_address%256]
            fout.write(form_str(data)+"\n")
            address-=0x10000

fout.write(form_str([2,0,0,4,0,0])+"\n")
fout.write(form_str([2,0xFF,0xFC,0,0x09,0x3A])+"\n")
f.close()
fout.close()

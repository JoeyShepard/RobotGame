import sys
import string


forth_words=["cold","abort","quit",'abort"',"abs","accept","action-of","again","align","aligned","allot","allow-native","also",
             "always-native","and","at-xy","\\","base","begin","bell","bl","bounds","[char]","[']","bye","c,","c@","c!","case",
             "cell+","cells","char","char+","chars","cleave","cmove","cmove>",":",":NONAME",",","compare","compile,","compile-only",
             "constant","count","cr","create","d-","d+","d>s","dabs","decimal","defer","defer@","defer!","definitions","depth",
             "digit?","dnegate","?do","do","does>",".",".(",'."',".r",".s","d.","d.r","drop","dump","dup","else","emit","endcase",
             "endof","=","blank","erase","fill","execute","execute-parsing","exit","false","@","find","find-name","fm/mod",
             "evaluate","forth-wordlist","get-current","get-order",">","here","hex","hexstore","hold","i","if","immediate",
             "input","input>r","int>name","invert","is","j","key","latestnt","latestxt","leave","[","<#","<","literal","loop",
             "+loop","lshift","m*","marker","max","min","-","-leading","-trailing","mod","move","name>int","name>string","nc-limit",
             "negate","never-native","nip","<>","-rot","number","#","#>","#s","of","1","1-","1+","only","or","output","over","pad",
             "page","(","parse-name","parse","pick","+","+!","postpone","?","?dup","r@","r>","r>input","recurse","refill","repeat",
             "]","rot","rshift","s\"","see","set-current","set-order",'s"',"s>d","search",";","sign","/","/mod","/string","sliteral",
             "sm/rem","source","source-id","space","spaces","*","*/","*/mod","state","!","strip-underflow","swap","then","list","'",
             "to",">body",">in",">number",">r","true","tuck","2","2drop","2dup","2@","2over","2r@","2r>","2/","2*","2!","2swap","2>r",
             "2constant","2literal","2variable","type","u.","u.r","u>","u<","ud.","ud.r","um/mod","um*","unloop","until","unused",
             "useraddr","value","variable","while","within","word","wordlist","words","wordsize","xor","0","0=","0>","0<","0<>"]

exception_words=["run","dump8"]

const_words={}
words_used={}
for word in forth_words:
    words_used[word]=False
replacements={}
replace_counter=0
enum_counter=0
state="not quoted"

def base36(number):
    base36_str="0123456789abcdefghijklmnopqrstuvwxyz"
    if number==0: return "0"
    i=number
    ret_str=""
    while (i):
        ret_str=base36_str[i%36]+ret_str
        i=int(i/36)
    return ret_str

def assign(word,debug_file):
    global replace_counter,state
    global exception_words, const_words
    global enum_counter
    if word.lower() in exception_words:
        return word
    elif word.lower()=="begin_enum":
        enum_counter=0
        return ""
    elif word.lower() in [k.lower() for k in const_words]:
        return {k.lower():v for (k,v) in const_words.items()}[word.lower()]
    elif word.lower() in forth_words:
        words_used[word.lower()]=True
        if word.lower() in ['."','abort"','s"','s\\"']:
            state="quoted"
            return word+" "
        elif word in ["\\","("]:
            state="commented"
        return word
    elif all(c in string.hexdigits for c in word):
        return word
    elif word[0]=="-" and all(c in string.hexdigits for c in word[1:]):
        return word
    else:
        word=word.lower()
        if word in replacements:
            return replacements[word]
        else:
            if len("x"+base36(replace_counter))<len(word):
                replacements[word]="x"+base36(replace_counter)
            else:
                replacements[word]=word
            debug_file.write(replacements[word].ljust(6))
            debug_file.write(word+"\n")
            replace_counter+=1
            return replacements[word]

def main():
    global state, enum_counter
    read_file=open(sys.argv[1],"r")
    write_file=open(sys.argv[2],"w")
    debug_file=open(sys.argv[3],"w")
    debug_file.write("Replaced symbols\n")
    debug_file.write("================\n")
    
    for line in read_file.readlines():
        output_line=""
        word=""
        state="not quoted"
        if line[-1]=="\n":
            temp_line=line[:-1]
        else:
            temp_line=line
        const_check=temp_line.split()
        skip_parsing=False
        if len(const_check)>=3 and const_check[1].lower()=="const":
            const_words[const_check[2]]=const_check[0]
        elif len(const_check)>=2 and const_check[0].lower()=="enum":
            const_words[const_check[1]]=str(hex(enum_counter)[2:])
            enum_counter+=1
        else:
            for char in temp_line:
                if state=="not quoted":
                    if char not in [" ","\t"]:
                        word+=char
                    else:
                        if word!="":
                            if (output_line!=""): output_line+=" "
                            output_line+=assign(word,debug_file)
                        word=""
                elif state=="quoted":
                    if char=='"':
                        output_line+=word+'"'
                        word=""
                        state="not quoted"
                    else:
                        word+=char
                elif state=="commented":
                    word+=char
                    if char==")" and word[-1]==" ":
                        state="not quoted"
                    
            if state=="not quoted":
                if word!="":
                    if output_line!="": output_line+=" "
                    output_line+=assign(word,debug_file)
            elif state=="commented":
                output_line+=" "+word
                
            write_file.write(output_line)
            if line[-1]=="\n": write_file.write("\n")

    debug_file.write("\n\nReplaced constants and enums\n")
    debug_file.write("============================\n")
    lpad=len(max(const_words,key=len))+2
    for const in const_words:
        debug_file.write(const.ljust(lpad))
        debug_file.write(const_words[const]+"\n")

    debug_file.write("\n\nUnused Forth words\n")
    debug_file.write("=================\n")
    for k,v in words_used.items():
        if v==False:
            debug_file.write(k+"\n")
            
    read_file.close()
    write_file.close()
    debug_file.close()

main()

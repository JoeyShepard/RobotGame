; da65 V2.18 - Git 28584b3
; Created:    2020-05-11 20:20:50
; Input file: C:\Users\druzy\Google Drive\Electronics\6502\CC65\projects\RobotGame\\main-2.bin
; Page:       1


        .setcpu "65C02"

L0020           := $0020
L0040           := $0040
L0053           := $0053
L0073           := $0073
L0305           := $0305
L2020           := $2020
L206B           := $206B
L206C           := $206C
L2108           := $2108
L246C           := $246C
L2900           := $2900
L3032           := $3032
L3500           := $3500
L4002           := $4002
L4003           := $4003
L4005           := $4005
L4006           := $4006
L4007           := $4007
L4009           := $4009
L400A           := $400A
L4700           := $4700
L5200           := $5200
L6120           := $6120
L6152           := $6152
L6153           := $6153
L6375           := $6375
L6520           := $6520
L6548           := $6548
L654C           := $654C
L656C           := $656C
L666F           := $666F
L6765           := $6765
L6769           := $6769
L6942           := $6942
L6944           := $6944
L6950           := $6950
L6968           := $6968
L6D73           := $6D73
L6E61           := $6E61
L6F42           := $6F42
L6F54           := $6F54
L6F63           := $6F63
L6F6E           := $6F6E
L6F74           := $6F74
L7244           := $7244
L7263           := $7263
L7266           := $7266
L726F           := $726F
L7361           := $7361
L7547           := $7547
L7548           := $7548
L754C           := $754C
L7571           := $7571
L7720           := $7720
L776F           := $776F
L7F00           := $7F00
L8001           := $8001
L8003           := $8003
L9001           := $9001
L9977           := $9977
L9AD5           := $9AD5
L9B9A           := $9B9A
L9C75           := $9C75
L9D48           := $9D48
L9D90           := $9D90
L9D93           := $9D93
L9F66           := $9F66
L9F6B           := $9F6B
LA052           := $A052
LA1F1           := $A1F1
LA3B5           := $A3B5
LA3BF           := $A3BF
LA438           := $A438
LA4CB           := $A4CB
LA4CD           := $A4CD
LA4FF           := $A4FF
LA558           := $A558
LA6C9           := $A6C9
LA72B           := $A72B
LA819           := $A819
LAB1D           := $AB1D
LAB69           := $AB69
LAC05           := $AC05
LAC0C           := $AC0C
LAD44           := $AD44
LAE12           := $AE12
LF1BD           := $F1BD
LF26D           := $F26D
LF288           := $F288
LF295           := $F295
LF2B8           := $F2B8
LF2CE           := $F2CE
LF2D7           := $F2D7
LF2E4           := $F2E4
LF2F1           := $F2F1
LF2FE           := $F2FE
LF325           := $F325
LF327           := $F327
LF353           := $F353
LF370           := $F370
LF375           := $F375
LF37F           := $F37F
LF3BA           := $F3BA
LF405           := $F405
LF419           := $F419
LF441           := $F441
LF453           := $F453
LF455           := $F455
LF457           := $F457
LF489           := $F489
LF49F           := $F49F
LF4A1           := $F4A1
LF4AA           := $F4AA
LF4DA           := $F4DA
        .byte   $42
LC001:  adc     (L0073,x)
        adc     #$63
        jsr     L6548
        adc     ($64,x)
        brk
        pha
        adc     $61
        stz     L0020
        eor     $494B
        eor     #$00
        pha
        adc     $61
        stz     L0020
        eor     $494B
        eor     #$49
        brk
        pha
        adc     $61
        stz     L0020
        eor     $494B
        lsr     $00,x
        jmp     L6769

        pla
        stz     $6E,x
        adc     #$6E
        rmb6    $00
        .byte   $42
        adc     (L0073,x)
        adc     #$63
        jsr     L6F42
        stz     $79
        brk
        .byte   $54
        adc     #$6E
        jsr     L6F42
        stz     $79
        brk
        eor     #$72
        bbr6    $6E,LC06D
        .byte   $42
        bbr6    $64,LC0CA
        brk
        .byte   $53
        stz     $65,x
        adc     $6C
        jsr     L6F42
        stz     $79
        brk
        lsr     $6F
        adc     ($74)
        adc     ($65)
        .byte   $73
        .byte   $73
        brk
        .byte   $42
        adc     (L0073,x)
        adc     #$63
        .byte   $20
        .byte   $4C
LC06D:  adc     $67
        .byte   $73
        brk
        lsr     $61
        .byte   $73
        stz     L0020,x
        jmp     L6765

        .byte   $73
        brk
        eor     ($75),y
        adc     #$63
        .byte   $6B
        jsr     L654C
        rmb6    L0073
        brk
        eor     ($67,x)
        adc     #$6C
        adc     L0020
        jmp     L6765

        .byte   $73
        brk
        eor     $7375
        stz     $61,x
        ror     a:$67
        .byte   $42
        adc     (L0073,x)
        adc     #$63
        jsr     L7547
        ror     $4200
        jmp     (L7361)

        stz     $65,x
        adc     ($00)
        jmp     L7361

        adc     $72
        brk
        bvc     LC11B
        adc     (L0073,x)
        adc     $72
        brk
        .byte   $44
        adc     $61
        stz     $68,x
        jsr     L6152
        adc     $4200,y
        adc     (L0073,x)
LC0C5:  adc     #$63
        jsr     L6F54
LC0CA:  bbr6    $6C,LC0CD
LC0CD:  eor     ($6F)
        .byte   $63
        .byte   $6B
        jsr     L6950
        .byte   $63
        .byte   $6B
        brk
        eor     ($6F)
        .byte   $63
        .byte   $6B
        jsr     L7244
        adc     #$6C
        .byte   $6C
        brk
LC0E2:  eor     ($6F)
        .byte   $63
        .byte   $6B
        jsr     L6F42
        adc     ($65)
        adc     ($00)
        .byte   $4C
        .byte   $61
LC0EF:  .byte   $73
        adc     $72
        jsr     L6942
        stz     $00,x
        brk
        bra     LC105
        .byte   $80
LC0FB:  ora     $80,x
        jsr     $2A80
        bra     LC136
        bra     LC143
        .byte   $80
LC105:  pha
        bra     LC15A
LC108:  bra     LC167
LC10A:  bra     LC172
        bra     LC17F
        bra     LC18B
        .byte   $80
LC111:  stx     $80
        sta     ($80),y
LC115:  sta     $A380,y
        bra     LC0C5
        .byte   $80
LC11B:  lda     ($80),y
        clv
LC11E:  bra     LC0E2
        bra     LC0EF
        bra     LC0FB
        bra     LC108
        bra     LC115
        bra     LC16C
LC12A:  adc     ($74,x)
        stz     $65,x
        adc     ($79)
        jsr     L6153
        ror     $65,x
        .byte   $72
LC136:  brk
        .byte   $42
        bbr6    $75,LC1A9
        stz     $79,x
        jsr     L7548
        ror     $6574
LC143:  adc     ($00)
        lsr     $61
        .byte   $73
        stz     L0020,x
        .byte   $44
        adc     #$67
        rmb6    $65
        adc     ($00)
LC151:  jmp     L6375

        .byte   $6B
        adc     $4420,y
        adc     ($69)
LC15A:  jmp     (L656C)

        adc     ($00)
        eor     L7361
        stz     $65,x
        adc     (L0020)
        .byte   $4D
LC167:  adc     #$6E
        adc     $72
        brk
LC16C:  jmp     L6375

        .byte   $6B
        .byte   $79
        .byte   $20
LC172:  .byte   $43
        adc     ($69)
        stz     $00,x
        .byte   $43
        adc     ($69)
        stz     L0020,x
        jmp     L726F

LC17F:  stz     $00
        eor     $78
        bvs     LC1EA
        adc     ($69)
        adc     $6E
        .byte   $63
        .byte   $65
LC18B:  stz     $00
        eor     #$6E
        .byte   $73
        stz     $61,x
        .byte   $6B
LC193:  adc     #$6C
        jmp     (L4700)

        pla
        bbr6    L0073,LC210
        brk
        lsr     $72
        adc     $65
        jsr     L754C
        ror     $6863
        brk
        .byte   $57
LC1A9:  adc     #$73
        adc     L0020
        eor     ($65)
        rmb7    $61
        adc     ($64)
        .byte   $73
        brk
        .byte   $42
        adc     #$67
        jsr     L6944
        .byte   $73
        .byte   $63
        bbr6    $75,LC22E
        .byte   $74
LC1C1:  brk
        bbr4    $6E,LC231
        adc     $7420,y
        pla
        adc     L0020
        .byte   $42
        adc     L0073
        stz     $00,x
        .byte   $43
        adc     ($79)
        .byte   $73
        stz     $61,x
        jmp     (L6D73)

        adc     #$74
        pla
        brk
        and     ($30)
        and     L0020
        .byte   $63
        pla
        adc     ($6E,x)
        .byte   $63
        adc     L0020
        stz     $68,x
LC1EA:  adc     ($74,x)
        bit     $6D
        adc     #$6E
        adc     #$6E
        rmb6    L0020
        rmb7    $6F
        ror     $7427
        bit     $63
        bbr6    $6E,LC271
        adc     $6D,x
        adc     L0020
        adc     $6E
        adc     $72
        rmb6    $79
        brk
        and     ($30),y
        and     L0020
        .byte   $63
        pla
        .byte   $61
LC210:  ror     $6563
        jsr     L666F
        bit     $63
        adc     ($79)
        .byte   $73
        stz     $61,x
        jmp     (L7720)

        pla
        adc     $6E
        bit     $79
        bbr6    $75,LC248
        .byte   $6B
        adc     #$6C
        jmp     (L6120)

LC22E:  ror     $6524
LC231:  ror     $6D65
        adc     $2D00,y
        and     (L0020)
        eor     $6E69
        adc     L0020
        adc     ($6E,x)
        stz     $24
        .byte   $44
        adc     ($69)
        jmp     (L206C)

LC248:  stz     $69,x
        adc     a:$65
        and     ($35)
        and     L0020
        .byte   $63
        pla
        adc     ($6E,x)
        .byte   $63
        adc     L0020
        bbr6    $66,LC27F
        .byte   $63
        adc     ($79)
        .byte   $73
        stz     $61,x
        jmp     (L7720)

        pla
        adc     $6E
        bit     $6D
        adc     #$6E
        adc     #$6E
        rmb6    L0020
        adc     ($6F)
LC271:  .byte   $63
        .byte   $6B
        brk
        eor     $6E69
        adc     L0020
        stz     $6F
        adc     $62,x
        .byte   $6C
        .byte   $65
LC27F:  bit     $63
        adc     ($79)
        .byte   $73
        stz     $61,x
        jmp     (L0073)

        .byte   $2B
        and     ($30)
        and     L0020
        .byte   $63
        pla
        adc     ($6E,x)
        .byte   $63
        adc     L0020
        bbr6    $66,LC2BC
        .byte   $63
        adc     ($69)
        stz     $69,x
        .byte   $63
        adc     ($6C,x)
        jsr     L6968
        stz     $00,x
        .byte   $43
        adc     ($69)
        stz     L0020,x
        stz     $61
        adc     $6761
        adc     $24
        adc     ($61)
        adc     #$73
        adc     $64
        jsr     L7266
        .byte   $6F
        .byte   $6D
LC2BC:  bit     $31
        and     $30,x
        and     L0020
        stz     $6F,x
        jsr     L3032
        bmi     LC2EE
        brk
        .byte   $2B
        and     ($30),y
        and     L0020
        .byte   $62
        bbr6    $6E,LC348
        .byte   $73
        jsr     L6F74
        bit     $65
        sei
        bvs     LC341
        adc     ($69)
        adc     $6E
        .byte   $63
        adc     L0020
        bbr6    $6E,LC30A
        .byte   $6B
        adc     #$6C
        jmp     (L3500)

        and     L0020
LC2EE:  .byte   $63
        pla
        adc     ($6E,x)
        .byte   $63
        adc     L0020
        stz     $6F,x
        bit     $6B
        adc     #$6C
        jmp     (L6520)

        ror     $6D65
        adc     $6920,y
        ror     $6F24
        ror     $2065
LC30A:  pla
        adc     #$74
        brk
        rmb5    $61
        jmp     (L206B)

        stz     $68,x
        adc     ($6F)
        adc     $67,x
        pla
        bit     $65
        ror     $6D65
        adc     #$65
        .byte   $73
        brk
        and     ($30)
        and     L0020
        .byte   $63
        pla
        adc     ($6E,x)
        .byte   $63
        adc     L0020
        stz     $68,x
        adc     ($74,x)
        bit     $63
        adc     ($61)
        ror     $74
        adc     #$6E
        rmb6    L0020
        rmb7    $69
        jmp     (L246C)

LC341:  .byte   $63
        bbr6    L0073,LC3B9
        jsr     L6F6E
LC348:  stz     $68,x
        adc     #$6E
        rmb6    $00
        .byte   $2B
        and     L0020,x
        adc     ($61)
        ror     $6F64
        adc     $6324
        adc     ($79)
        .byte   $73
        stz     $61,x
        jmp     (L7720)

        pla
        adc     $6E
        bit     $6C
        adc     $76
        adc     $6C
        adc     #$6E
        rmb6    L0020
        adc     $70,x
        brk
        and     $2031
        stz     $6F,x
        jsr     L6F63
        .byte   $73
        stz     L0020,x
        bbr6    $66,LC3A3
        adc     #$74
        adc     $6D
        .byte   $73
        brk
        and     ($30),y
        and     L0020
        .byte   $63
        pla
        adc     ($6E,x)
        .byte   $63
        adc     $24
        stz     $68,x
        adc     ($74,x)
        jsr     L7263
        adc     ($66,x)
        stz     $65,x
        stz     $24
        adc     #$74
        adc     $6D
        .byte   $73
        .byte   $20
LC3A3:  rmb7    $69
        jmp     (L206C)

        .byte   $62
        adc     $24
        adc     $6C65,y
        jmp     (L776F)

        jsr     L7571
        adc     ($6C,x)
        adc     #$74
        .byte   $79
LC3B9:  brk
        bvc     LC41D
        adc     L7720,y
        adc     #$74
        pla
        jsr     L6E61
        adc     $6324,y
        adc     ($79)
        .byte   $73
        stz     $61,x
        jmp     (L2900)

        sta     ($37,x)
        sta     ($45,x)
        sta     ($51,x)
        sta     ($5F,x)
        sta     ($6C,x)
        sta     ($77,x)
        sta     ($81,x)
        sta     ($8D,x)
        sta     ($97,x)
        sta     ($9D,x)
        sta     ($A8,x)
        sta     ($B5,x)
        sta     ($C2,x)
        sta     ($D0,x)
        sta     ($DD,x)
        sta     ($09,x)
        .byte   $82
        rol     $82,x
        eor     $7482
        .byte   $82
        bit     #$82
        lda     $82
        dex
        .byte   $82
        .byte   $EB
        .byte   $82
        asl     $2383
        .byte   $83
        lsr     $7183
        .byte   $83
        sta     $83
        tsx
        .byte   $83
        bpl     LC41D
        bpl     LC44F
LC40F:  brk
        .byte   $03
        rti

        ora     ($47,x)
        .byte   $03
        pha
        ora     #$40
        brk
        .byte   $02
        rti

        .byte   $03
        .byte   $47
LC41D:  .byte   $03
        pha
        php
        rti

        brk
        .byte   $03
        rti

        ora     ($47,x)
        .byte   $02
        rti

        .byte   $02
        pha
        php
        rti

        brk
        rmb0    L0040
        .byte   $02
        pha
        rmb0    L0040
        brk
        rmb0    L0040
        .byte   $02
        pha
        rmb0    L0040
        brk
        .byte   $02
        rti

LC43D:  tsb     $0249
        rti

        brk
        ora     (L0040,x)
        .byte   $02
        eor     #$0A
        lsr     a
        .byte   $02
        eor     #$01
        rti

        brk
        ora     (L0040,x)
LC44F:  ora     ($49,x)
        tsb     $014A
        eor     #$01
        rti

        brk
        ora     (L0040,x)
        ora     ($49,x)
        .byte   $03
        lsr     a
        ora     ($3F,x)
        ora     ($00,x)
        .byte   $03
        lsr     a
        ora     ($3F,x)
        ora     ($00,x)
        .byte   $02
        lsr     a
        ora     ($49,x)
        ora     (L0040,x)
        brk
        ora     (L0040,x)
        ora     ($49,x)
        .byte   $03
        lsr     a
        .byte   $02
        bbr3    $03,LC4C3
        .byte   $02
        bbr3    $02,LC4C7
        ora     ($49,x)
        ora     (L0040,x)
        brk
        ora     (L0040,x)
        ora     ($49,x)
        tsb     $014A
        eor     #$01
        rti

        brk
        ora     (L0040,x)
        ora     ($49,x)
        .byte   $03
        lsr     a
        ora     ($4B,x)
        php
        lsr     a
        ora     ($49,x)
        ora     (L0040,x)
        brk
        ora     (L0040,x)
        ora     ($49,x)
        tsb     $4A
        ora     $4B
LC4A4:  .byte   $03
        lsr     a
        ora     ($49,x)
        ora     (L0040,x)
        brk
        ora     (L0040,x)
        .byte   $02
        eor     #$0A
        lsr     a
        .byte   $02
        eor     #$01
        rti

        brk
        .byte   $02
        rti

        tsb     $0249
        rti

        brk
        bpl     LC4CF
        bpl     LC501
        brk
        .byte   $10
LC4C3:  rti

        brk
        bpl     LC507
LC4C7:  brk
        bpl     LC50A
        brk
        ora     L0040
        asl     $41
LC4CF:  ora     L0040
        brk
        .byte   $03
        rti

        .byte   $03
        eor     ($04,x)
        .byte   $42
        .byte   $03
        eor     ($03,x)
        rti

        brk
        .byte   $02
        rti

        ora     ($41,x)
        ora     ($42,x)
        ora     ($41,x)
        asl     $42
        ora     ($41,x)
        ora     ($42,x)
        ora     ($41,x)
        .byte   $02
        rti

        brk
        ora     (L0040,x)
        ora     ($41,x)
        .byte   $02
        .byte   $42
        ora     ($41,x)
        asl     $42
        ora     ($41,x)
        .byte   $02
        .byte   $42
        ora     ($41,x)
        .byte   $01
LC501:  rti

        brk
        ora     ($41,x)
        .byte   $03
        .byte   $42
LC507:  ora     ($41,x)
        .byte   $06
LC50A:  .byte   $42
        ora     ($41,x)
        .byte   $03
        .byte   $42
        ora     ($41,x)
        brk
        ora     ($41,x)
        .byte   $02
        .byte   $42
        .byte   $02
        eor     ($06,x)
        .byte   $42
        .byte   $02
        eor     ($02,x)
        .byte   $42
        ora     ($41,x)
        brk
        ora     (L0040,x)
        .byte   $02
        eor     ($01,x)
        rti

        ora     ($41,x)
        asl     $42
        ora     ($41,x)
        ora     (L0040,x)
        .byte   $02
        eor     ($01,x)
        rti

        brk
        tsb     L0040
        .byte   $02
        eor     ($04,x)
        .byte   $42
        .byte   $02
        eor     ($04,x)
        rti

        brk
        ora     L0040
        asl     $41
        ora     L0040
        brk
        bpl     LC588
        brk
        bpl     LC58B
        brk
        bpl     LC58E
        brk
        bpl     LC561
        bpl     LC593
        brk
        bpl     LC596
        brk
        bpl     LC599
        brk
        bpl     LC59C
        brk
        bpl     LC59F
        brk
        .byte   $03
LC561:  rti

        .byte   $03
        .byte   $43
        .byte   $03
        rti

        .byte   $03
        .byte   $43
        tsb     L0040
        brk
        .byte   $03
        rti

        ora     ($43,x)
        ora     ($44,x)
        ora     ($43,x)
        .byte   $03
        rti

        ora     ($43,x)
        ora     ($44,x)
        ora     ($43,x)
        tsb     L0040
        brk
        .byte   $03
        rti

        ora     ($43,x)
        ora     ($44,x)
        ora     ($43,x)
        .byte   $03
        rti

LC588:  ora     ($43,x)
        .byte   $01
LC58B:  .byte   $44
        ora     ($43,x)
LC58E:  tsb     L0040
        brk
        .byte   $03
        rti

LC593:  ora     ($43,x)
        .byte   $01
LC596:  .byte   $44
        ora     ($43,x)
LC599:  .byte   $03
        rti

        .byte   $01
LC59C:  .byte   $43
        ora     ($44,x)
LC59F:  ora     ($43,x)
        tsb     L0040
        brk
        .byte   $03
        rti

        ora     ($43,x)
        ora     ($44,x)
        ora     ($43,x)
        .byte   $03
        rti

        ora     ($43,x)
        ora     ($44,x)
        ora     ($43,x)
        tsb     L0040
        brk
        .byte   $03
        rti

        ora     ($43,x)
        .byte   $02
        .byte   $44
        ora     ($43,x)
        .byte   $02
        rti

        ora     ($43,x)
        .byte   $02
        .byte   $44
        ora     ($43,x)
        .byte   $03
        rti

        brk
        .byte   $03
        rti

        ora     ($43,x)
        .byte   $03
        .byte   $44
        ora     ($43,x)
        ora     (L0040,x)
        ora     ($43,x)
        .byte   $03
        .byte   $44
        ora     ($43,x)
        .byte   $02
        rti

        brk
        .byte   $03
        rti

        ora     $43
        ora     (L0040,x)
        ora     $43
        .byte   $02
        rti

        brk
        bpl     LC62A
        brk
        bpl     LC62D
        brk
        bpl     LC630
        brk
LC5F1:  bpl     LC603
        bpl     LC635
        brk
        bpl     LC638
        brk
        bpl     LC63B
        brk
        ora     #$40
        ora     ($45,x)
        asl     L0040
        brk
LC603:  php
        rti

        .byte   $03
        eor     $05
        rti

        brk
        rmb0    L0040
        ora     ($45,x)
        .byte   $02
        lsr     $02
        eor     $04
        rti

        brk
        asl     L0040
        ora     ($45,x)
        .byte   $03
        lsr     $01
        eor     $05
        rti

        brk
        asl     L0040
        ora     ($45,x)
        .byte   $02
        lsr     $03
        eor     $04
        rti

LC62A:  brk
        ora     L0040
LC62D:  php
        eor     $03
LC630:  rti

        brk
        tsb     L0040
        .byte   $03
LC635:  eor     $03
        rti

LC638:  tsb     $45
        .byte   $02
LC63B:  rti

        brk
        .byte   $03
        rti

        .byte   $02
        lsr     $01
        eor     $05
        rti

        .byte   $03
        eor     $02
        rti

        brk
        .byte   $03
        rti

        .byte   $02
        lsr     $07
        rti

        ora     ($45,x)
        .byte   $03
        rti

        brk
        bpl     LC697
        brk
        bpl     LC69A
        brk
        bpl     LC69D
        brk
        bpl     LC6A0
        brk
        bpl     LC673
        bpl     LC6A5
        brk
        bpl     LC6A8
        brk
        bpl     LC6AB
        brk
        ora     #$40
        .byte   $02
        jmp     L4005

        brk
LC673:  php
        rti

        .byte   $02
        .byte   $4C
LC677:  asl     L0040
        brk
        php
        rti

        .byte   $02
        jmp     L4002

        ora     ($4C,x)
        .byte   $03
        rti

        brk
        rmb0    L0040
        asl     $4C
        .byte   $03
        rti

        brk
        asl     L0040
        asl     $4C
        tsb     L0040
        brk
        ora     L0040
        ora     $4C
LC697:  asl     L0040
        brk
LC69A:  tsb     L0040
        .byte   $05
LC69D:  jmp     L4007

LC6A0:  brk
        .byte   $03
        rti

        ora     $4C
LC6A5:  php
        rti

        brk
LC6A8:  .byte   $03
        rti

        .byte   $04
LC6AB:  jmp     L4009

        brk
        tsb     L0040
        .byte   $02
        jmp     L400A

        brk
        bpl     LC6F8
        brk
        bpl     LC6FB
        brk
        bpl     LC6FE
        brk
        jsr     L2020
        rti

        brk
        ora     (L0040)
        .byte   $03
        pha
        ora     ($47,x)
        asl     a
        rti

        brk
        ora     (L0040),y
        .byte   $03
        pha
        .byte   $03
        rmb4    $09
        rti

        brk
        ora     (L0040),y
        .byte   $02
        pha
        .byte   $02
        rti

        ora     ($47,x)
        asl     a
        rti

        brk
        bpl     LC723
        .byte   $02
        pha
        asl     a:L0040
        bpl     LC72A
        .byte   $02
        pha
        asl     a:L0040
        .byte   $0B
        rti

        tsb     $0949
        rti

        brk
        asl     a
        rti

LC6F8:  .byte   $02
        eor     #$0A
LC6FB:  lsr     a
        .byte   $02
        .byte   $49
LC6FE:  php
        rti

        brk
        asl     a
        rti

        ora     ($49,x)
        tsb     $014A
        eor     #$08
        rti

        brk
        asl     a
        rti

        ora     ($49,x)
        .byte   $02
        lsr     a
        ora     ($00,x)
        ora     ($3F,x)
        .byte   $03
        lsr     a
        ora     ($00,x)
        ora     ($3F,x)
        .byte   $03
        lsr     a
        ora     ($49,x)
        php
        rti

        brk
LC723:  asl     a
        rti

        ora     ($49,x)
        .byte   $02
        lsr     a
        .byte   $02
LC72A:  bbr3    $03,LC777
        .byte   $02
        bbr3    $03,LC77B
        ora     ($49,x)
        php
        rti

        brk
        asl     a
        rti

        ora     ($49,x)
        tsb     $014A
        eor     #$08
        rti

        brk
        asl     a
        rti

        ora     ($49,x)
        php
        lsr     a
        ora     ($4B,x)
        .byte   $03
        lsr     a
        ora     ($49,x)
        php
        rti

        brk
        asl     a
        rti

        ora     ($49,x)
        .byte   $03
        lsr     a
        ora     $4B
        tsb     $4A
        ora     ($49,x)
        php
        rti

        brk
        asl     L0040
        ora     ($45,x)
        .byte   $03
        rti

        .byte   $02
        eor     #$0A
        lsr     a
        .byte   $02
        eor     #$08
        rti

        brk
        ora     L0040
        .byte   $03
        eor     $03
        rti

        tsb     $0549
LC777:  rti

        .byte   $02
        .byte   $4C
        .byte   $02
LC77B:  rti

        brk
        tsb     L0040
        ora     ($45,x)
        .byte   $02
        lsr     $02
        eor     $03
        rti

        asl     a
        eor     ($05,x)
        rti

        .byte   $02
        jmp     L4003

        brk
        .byte   $03
        rti

        ora     ($45,x)
        .byte   $03
        lsr     $01
        eor     $01
        rti

        tsb     $41
        php
        .byte   $42
        tsb     $41
        .byte   $02
        rti

        .byte   $02
        jmp     L4002

        ora     ($4C,x)
        brk
        .byte   $03
        rti

        ora     ($45,x)
        .byte   $02
        lsr     $02
        eor     $01
        eor     ($02,x)
        .byte   $42
        ora     ($41,x)
        asl     a
        .byte   $42
        ora     ($41,x)
        .byte   $02
        .byte   $42
        ora     ($41,x)
        asl     $4C
        brk
        .byte   $02
        rti

        ora     $45
        ora     ($41,x)
        .byte   $03
        .byte   $42
        ora     ($41,x)
        asl     a
        .byte   $42
        ora     ($41,x)
        .byte   $03
        .byte   $42
        ora     ($41,x)
        tsb     $4C
        ora     (L0040,x)
        brk
        ora     (L0040,x)
        .byte   $03
        eor     $02
        rti

        ora     ($41,x)
LC7E1:  .byte   $03
        .byte   $42
        .byte   $02
        eor     ($0A,x)
        .byte   $42
        .byte   $02
        eor     ($03,x)
        .byte   $42
        ora     ($41,x)
        ora     ($4C,x)
        .byte   $03
        rti

        brk
        .byte   $02
        lsr     $01
        eor     $03
        rti

        ora     ($41,x)
        .byte   $02
        .byte   $42
        ora     ($41,x)
        ora     (L0040,x)
        ora     ($41,x)
        asl     a
        .byte   $42
        ora     ($41,x)
        ora     (L0040,x)
        ora     ($41,x)
        .byte   $02
        .byte   $42
        ora     ($41,x)
        tsb     L0040
        brk
        .byte   $02
        lsr     $05
        rti

        .byte   $02
        eor     ($01,x)
        eor     $01
        rti

        .byte   $02
        eor     ($08,x)
        .byte   $42
        .byte   $02
        eor     ($01,x)
        rti

        ora     ($4C,x)
        .byte   $02
        eor     ($05,x)
        rti

        brk
        tsb     $0A40
        eor     ($01,x)
        rti

        .byte   $03
        jmp     L4006

        brk
        ora     $0340
        .byte   $43
        .byte   $03
        rti

        .byte   $03
        .byte   $43
        ora     (L0040,x)
        .byte   $02
        jmp     L4007

        brk
        ora     $0140
        .byte   $43
        ora     ($44,x)
        ora     ($43,x)
        .byte   $03
        rti

        ora     ($43,x)
        ora     ($44,x)
        ora     ($43,x)
        asl     a
        rti

        brk
        ora     $0140
        .byte   $43
        ora     ($44,x)
        ora     ($43,x)
        .byte   $03
        rti

        ora     ($43,x)
        ora     ($44,x)
        ora     ($43,x)
        asl     a
        rti

        brk
        ora     $0140
        .byte   $43
        ora     ($44,x)
        ora     ($43,x)
        .byte   $03
        rti

        ora     ($43,x)
        ora     ($44,x)
        ora     ($43,x)
        asl     a
        rti

        brk
        ora     $0140
        .byte   $43
        ora     ($44,x)
        ora     ($43,x)
        .byte   $03
        rti

        ora     ($43,x)
        ora     ($44,x)
        ora     ($43,x)
        asl     a
        rti

        brk
        tsb     $0140
        .byte   $43
        .byte   $02
        .byte   $44
        ora     ($43,x)
        .byte   $02
        rti

        ora     ($43,x)
        .byte   $02
        .byte   $44
        ora     ($43,x)
        asl     a
        rti

        brk
        .byte   $0B
        rti

        ora     ($43,x)
        .byte   $03
        .byte   $44
        ora     ($43,x)
        ora     (L0040,x)
        ora     ($43,x)
        .byte   $03
        .byte   $44
        ora     ($43,x)
        asl     a
        rti

        brk
        .byte   $0B
        rti

        ora     $43
        ora     (L0040,x)
        ora     $43
        asl     a
        rti

        brk
        jsr     L2020
        rti

        brk
        tsb     $0140
        rmb4    $03
        pha
        bpl     LC90E
        brk
        .byte   $0B
        rti

        .byte   $03
        rmb4    $03
        pha
        bbr0    L0040,LC8D8
LC8D8:  tsb     $0140
        rmb4    $02
        rti

        .byte   $02
        pha
        bbr0    L0040,LC8E3
LC8E3:  bpl     LC925
        .byte   $02
        pha
        asl     a:L0040
        bpl     LC92C
        .byte   $02
        pha
        asl     a:L0040
        .byte   $0B
        rti

        tsb     $0949
        rti

        brk
        asl     a
        rti

        .byte   $02
        eor     #$0A
        lsr     a
        .byte   $02
        eor     #$08
        rti

        brk
        asl     a
        rti

        ora     ($49,x)
        tsb     $014A
        eor     #$08
        rti

        brk
LC90E:  asl     a
        rti

        ora     ($49,x)
        .byte   $03
        lsr     a
        ora     ($3F,x)
        ora     ($00,x)
        .byte   $03
        lsr     a
        ora     ($3F,x)
        ora     ($00,x)
        .byte   $02
        lsr     a
        ora     ($49,x)
        php
        rti

        brk
LC925:  asl     a
        rti

        ora     ($49,x)
        .byte   $03
        lsr     a
        .byte   $02
LC92C:  bbr3    $03,LC979
        .byte   $02
        bbr3    $02,LC97D
        ora     ($49,x)
        php
        rti

        brk
        asl     a
        rti

        ora     ($49,x)
        tsb     $014A
        eor     #$08
        rti

        brk
        asl     a
        rti

        ora     ($49,x)
        .byte   $03
        lsr     a
        ora     ($4B,x)
        php
        lsr     a
        ora     ($49,x)
        php
        rti

        brk
        asl     a
        rti

        ora     ($49,x)
        tsb     $4A
        ora     $4B
        .byte   $03
        lsr     a
        ora     ($49,x)
        php
        rti

        brk
        asl     L0040
        ora     ($45,x)
        .byte   $03
        rti

        .byte   $02
        eor     #$0A
        lsr     a
        .byte   $02
        eor     #$08
        rti

        brk
        ora     L0040
        .byte   $03
        eor     $03
        rti

        tsb     $0549
LC979:  rti

        .byte   $02
        .byte   $4C
        .byte   $02
LC97D:  rti

        brk
        tsb     L0040
        ora     ($45,x)
        .byte   $02
        lsr     $02
        eor     $03
        rti

        asl     a
        eor     ($05,x)
        rti

        .byte   $02
        jmp     L4003

        brk
        .byte   $03
        rti

        ora     ($45,x)
        .byte   $03
        lsr     $01
        eor     $01
        rti

        tsb     $41
        php
        .byte   $42
        tsb     $41
        .byte   $02
        rti

        .byte   $02
        jmp     L4002

        ora     ($4C,x)
        brk
        .byte   $03
        rti

        ora     ($45,x)
        .byte   $02
        lsr     $02
        eor     $01
        eor     ($02,x)
        .byte   $42
        ora     ($41,x)
        asl     a
        .byte   $42
        ora     ($41,x)
        .byte   $02
        .byte   $42
        ora     ($41,x)
        asl     $4C
        brk
        .byte   $02
        rti

        ora     $45
        ora     ($41,x)
        .byte   $03
        .byte   $42
        ora     ($41,x)
        asl     a
        .byte   $42
        ora     ($41,x)
        .byte   $03
        .byte   $42
        ora     ($41,x)
        tsb     $4C
        ora     (L0040,x)
        brk
        ora     (L0040,x)
        .byte   $03
        eor     $02
        rti

        ora     ($41,x)
        .byte   $03
        .byte   $42
        .byte   $02
        eor     ($0A,x)
        .byte   $42
        .byte   $02
        eor     ($03,x)
        .byte   $42
        ora     ($41,x)
        ora     ($4C,x)
        .byte   $03
        rti

        brk
        .byte   $02
        lsr     $01
        eor     $03
        rti

        ora     ($41,x)
        .byte   $02
        .byte   $42
        ora     ($41,x)
        ora     (L0040,x)
        ora     ($41,x)
        asl     a
        .byte   $42
        ora     ($41,x)
        ora     (L0040,x)
        ora     ($41,x)
        .byte   $02
        .byte   $42
        ora     ($41,x)
        tsb     L0040
        brk
        .byte   $02
        lsr     $05
        rti

        .byte   $02
        eor     ($01,x)
        eor     $01
        rti

        .byte   $02
        eor     ($08,x)
        .byte   $42
        .byte   $02
        eor     ($01,x)
        rti

        ora     ($4C,x)
        .byte   $02
        eor     ($05,x)
        rti

        brk
        tsb     $0A40
        eor     ($01,x)
        rti

        .byte   $03
        jmp     L4006

        brk
        tsb     $0340
        .byte   $43
        .byte   $03
        rti

        .byte   $03
        .byte   $43
        .byte   $02
        rti

        .byte   $02
        jmp     L4007

        brk
        tsb     $0140
        .byte   $43
        ora     ($44,x)
        ora     ($43,x)
        .byte   $03
        rti

        ora     ($43,x)
        ora     ($44,x)
        ora     ($43,x)
        .byte   $0B
        rti

        brk
        tsb     $0140
        .byte   $43
        ora     ($44,x)
        ora     ($43,x)
        .byte   $03
        rti

        ora     ($43,x)
        ora     ($44,x)
        ora     ($43,x)
        .byte   $0B
        rti

        brk
        tsb     $0140
        .byte   $43
        ora     ($44,x)
        ora     ($43,x)
        .byte   $03
        rti

        ora     ($43,x)
        ora     ($44,x)
        ora     ($43,x)
        .byte   $0B
        rti

        brk
        tsb     $0140
        .byte   $43
        ora     ($44,x)
        ora     ($43,x)
        .byte   $03
        rti

        ora     ($43,x)
        ora     ($44,x)
        ora     ($43,x)
        .byte   $0B
        rti

        brk
        tsb     $0140
        .byte   $43
        .byte   $02
        .byte   $44
        ora     ($43,x)
        .byte   $02
        rti

        ora     ($43,x)
        .byte   $02
        .byte   $44
        ora     ($43,x)
        asl     a
        rti

        brk
        tsb     $0140
        .byte   $43
        .byte   $03
        .byte   $44
        ora     ($43,x)
        ora     (L0040,x)
        ora     ($43,x)
        .byte   $03
        .byte   $44
        ora     ($43,x)
        ora     #$40
        brk
        tsb     $0540
        .byte   $43
        ora     (L0040,x)
        ora     $43
        ora     #$40
        brk
        jsr     L2020
        rti

        brk
        .byte   $0B
        rti

        ora     ($4D,x)
        trb     L0040
        brk
        asl     a
        rti

        ora     ($4D,x)
        ora     ($4E,x)
        ora     ($4D,x)
        rmb0    L0040
        ora     ($4D,x)
        .byte   $0B
        rti

        brk
        asl     a
        rti

        ora     ($4D,x)
        .byte   $02
        lsr     $4D01
        asl     L0040
        ora     ($4D,x)
        .byte   $0B
        rti

        brk
        ora     #$40
        ora     ($4D,x)
        tsb     $4E
        ora     ($4D,x)
        tsb     L0040
        .byte   $02
        eor     $400B
        brk
        php
        rti

        ora     ($4D,x)
        asl     $4E
        ora     ($4D,x)
        .byte   $03
        rti

        ora     ($4D,x)
        ora     ($4F,x)
        ora     ($4D,x)
        asl     a
        rti

        brk
        php
        rti

        ora     ($4D,x)
        asl     $4E
        ora     ($4D,x)
        .byte   $02
        rti

        ora     ($4D,x)
        .byte   $02
        bbr4    $01,LCB6C
        asl     a
        rti

        brk
        php
        rti

        ora     ($4D,x)
        asl     $4E
        ora     ($4D,x)
        .byte   $02
        rti

        ora     ($4D,x)
        .byte   $02
        bbr4    $01,LCB7F
        asl     a
        rti

        brk
        php
        rti

        ora     ($4D,x)
        asl     $4E
        ora     ($4D,x)
        ora     (L0040,x)
        ora     ($4D,x)
        .byte   $03
        bbr4    $01,LCB92
        asl     a
        rti

        brk
        ora     #$40
        ora     ($4D,x)
        ora     $4E
        ora     ($4D,x)
        ora     (L0040,x)
        ora     ($4D,x)
        .byte   $03
        bbr4    $01,LCBA5
        asl     a
        rti

        brk
        ora     #$40
        ora     ($4D,x)
        ora     $4E
        .byte   $02
        eor     $4F04
        ora     ($4D,x)
        .byte   $03
        rti

        ora     ($4D,x)
        .byte   $06
LCB6C:  rti

        brk
        ora     #$40
        ora     ($4D,x)
        asl     $4E
        ora     ($4D,x)
        ora     $4F
        ora     ($4D,x)
        ora     (L0040,x)
        ora     ($4D,x)
        .byte   $01
LCB7F:  lsr     $4D02
        tsb     L0040
        brk
        .byte   $03
        rti

        .byte   $03
        eor     L4003
        ora     ($4D,x)
        asl     $4E
        ora     ($4D,x)
        .byte   $05
LCB92:  bbr4    $02,LCBE2
        tsb     $4E
        ora     ($4D,x)
        .byte   $03
        rti

        brk
        .byte   $03
        rti

        ora     ($4D,x)
        .byte   $02
        bbr4    $01,LCBF1
        .byte   $02
LCBA5:  rti

        ora     ($4D,x)
        asl     $4E
        ora     ($4D,x)
        tsb     $4F
        .byte   $02
        eor     $4E05
        ora     ($4D,x)
        .byte   $03
        rti

        brk
        tsb     L0040
        ora     ($4D,x)
        ora     ($4F,x)
        .byte   $02
        eor     $4001
        ora     ($4D,x)
        asl     $4E
        ora     ($4D,x)
        .byte   $03
        bbr4    $01,LCC18
        rmb0    $4E
        ora     ($4D,x)
        .byte   $03
        rti

        brk
        tsb     L0040
        ora     ($4D,x)
        .byte   $03
        bbr4    $01,LCC27
        ora     (L0040,x)
        ora     ($4D,x)
        ora     $4E
        ora     ($4D,x)
LCBE2:  ora     ($4F,x)
        .byte   $02
        eor     $4E07
        ora     ($4D,x)
        tsb     L0040
        brk
        ora     L0040
        ora     ($4D,x)
LCBF1:  .byte   $03
        bbr4    $02,LCC42
        ora     $4E
        .byte   $02
        eor     $4E09
        ora     ($4D,x)
        tsb     L0040
        brk
        ora     L0040
        ora     ($4D,x)
        tsb     $4F
        ora     ($4D,x)
        ora     $4E
        ora     ($4D,x)
        asl     a
        lsr     $4D01
        tsb     L0040
        brk
        asl     L0040
        ora     ($4D,x)
        .byte   $03
LCC18:  bbr4    $01,LCC68
        ora     $4E
        ora     ($4D,x)
        ora     #$4E
        ora     ($4D,x)
        ora     L0040
        brk
        .byte   $06
LCC27:  rti

        ora     ($4D,x)
        .byte   $03
        bbr4    $01,LCC7B
        asl     $4E
        ora     ($4D,x)
        rmb0    $4E
        ora     ($4D,x)
        asl     L0040
        brk
        rmb0    L0040
        ora     ($4D,x)
        .byte   $02
        bbr4    $01,LCC8E
        .byte   $06
LCC42:  lsr     $4D01
        asl     $4E
        ora     ($4D,x)
        rmb0    L0040
        brk
        rmb0    L0040
        ora     ($4D,x)
        .byte   $03
        bbr4    $01,LCCA1
        ora     $4E
        ora     ($4D,x)
        ora     $4E
        ora     ($4D,x)
        php
        rti

        brk
        php
        rti

        ora     ($4D,x)
        .byte   $02
        bbr4    $04,LCCB4
        .byte   $02
LCC68:  lsr     $4D01
        tsb     $4E
        ora     ($4D,x)
        ora     #$40
        brk
        php
        rti

        ora     ($4D,x)
        .byte   $02
        bbr4    $01,LCCC7
        .byte   $02
LCC7B:  bvc     LCC7E
        .byte   $4D
LCC7E:  .byte   $02
        lsr     $4D03
        ora     ($4E,x)
        .byte   $02
        eor     L4009
        brk
        rmb0    L0040
        tsb     $4D
        .byte   $03
LCC8E:  bvc     LCC94
        eor     $5001
        .byte   $05
LCC94:  eor     $4008
        brk
        asl     L0040
        ora     ($4D,x)
        php
        bvc     LCCA1
        .byte   $4D
        .byte   $06
LCCA1:  bvc     LCCA5
        .byte   $4D
        .byte   $07
LCCA5:  rti

        brk
        ora     L0040
        ora     ($4D,x)
        asl     $50
        ora     ($51,x)
        php
        bvc     LCCB3
        .byte   $51
LCCB3:  .byte   $02
LCCB4:  bvc     LCCB8
        .byte   $4D
        .byte   $06
LCCB8:  rti

        brk
        ora     L0040
        ora     ($4D,x)
        ora     ($50,x)
        ora     ($52,x)
        ora     ($50),y
        ora     ($4D,x)
        .byte   $06
LCCC7:  rti

        brk
        ora     L0040
        ora     ($4D,x)
        asl     a
        bvc     LCCD1
        .byte   $52
LCCD1:  php
        bvc     LCCD5
        .byte   $4D
LCCD5:  asl     L0040
        brk
        ora     L0040
        php
        eor     $5006
        rmb0    $4D
        asl     L0040
        brk
        tsb     $0740
        eor     $400D
        brk
        jsr     L0040
        jsr     L2020
        .byte   $53
        brk
        bbr0    L0053,LCCF6
        .byte   $54
LCCF6:  bpl     LCD4B
        brk
        .byte   $02
        .byte   $53
        ora     ($55,x)
        ora     a:L0053,x
        jsr     L0053
        rmb1    L0053
        ora     ($55,x)
        php
        .byte   $53
        brk
        jsr     L0053
        ora     L0053
        ora     ($54,x)
        inc     a
        .byte   $53
        brk
        bbr1    L0053,LCD18
        .byte   $54
LCD18:  brk
        .byte   $0B
        .byte   $53
        ora     ($55,x)
        trb     L0053
        brk
        jsr     L0053
        jsr     L0053
        rmb1    L0053
        ora     ($54,x)
        php
        .byte   $53
        brk
        ora     (L0053),y
        ora     ($55,x)
        asl     a:L0053
        .byte   $03
        .byte   $53
        ora     ($55,x)
        trb     a:L0053
        ora     $0153,y
        eor     $06,x
        .byte   $53
        brk
        ora     $0153,x
        eor     $02,x
        .byte   $53
        brk
        .byte   $20
        .byte   $53
LCD4B:  brk
        asl     a
        .byte   $53
        ora     ($54,x)
        ora     L0053,x
        brk
        jsr     L0053
        jsr     L0053
        ora     $0153
        eor     $0C,x
        .byte   $53
        ora     ($54,x)
        ora     L0053
        brk
        .byte   $13
        .byte   $53
        ora     ($54,x)
        tsb     a:L0053
        jsr     L0053
        ora     ($55,x)
        bbr1    L0053,LCD73
LCD73:  tsb     L0053
        ora     ($54,x)
        .byte   $1B
        .byte   $53
        brk
        asl     L0053,x
        ora     ($55,x)
        ora     #$53
        brk
        tsb     $0153
        .byte   $54
        bbr0    L0053,LCD89
        .byte   $55
LCD89:  .byte   $03
        .byte   $53
        brk
        jsr     L0053
        jsr     L0053
        jsr     L0053
        ora     L0053,x
        ora     ($54,x)
        asl     a
        .byte   $53
        brk
        .byte   $03
        .byte   $53
        ora     ($55,x)
        trb     a:L0053
        jsr     L2020
        rti

        brk
        jsr     L0040
        jsr     L0040
        jsr     L0040
        jsr     L0040
        ora     #$40
        asl     $0900
        rti

        brk
        ora     #$40
        asl     $0900
        rti

        brk
        ora     #$40
        .byte   $02
        brk
        tsb     $03
        .byte   $02
        brk
        tsb     $03
        .byte   $02
        brk
        ora     #$40
        brk
        ora     #$40
        .byte   $02
        brk
        tsb     $03
        .byte   $02
        brk
        tsb     $03
        .byte   $02
        brk
        ora     #$40
        brk
        ora     #$40
        asl     $0900
        rti

        brk
        ora     #$40
        ora     $00
        tsb     $03
        ora     $00
        ora     #$40
        brk
        ora     #$40
        tsb     $00
        ora     ($03,x)
        tsb     $00
        ora     ($03,x)
        tsb     $00
        ora     #$40
        brk
        ora     #$40
        asl     $0900
        rti

        brk
        asl     L0040
        trb     $00
        asl     L0040
        brk
        ora     L0040
        .byte   $02
        brk
        .byte   $02
        .byte   $03
        ora     ($00,x)
        tsb     $0115
        brk
        .byte   $02
        .byte   $03
        .byte   $02
        brk
        ora     L0040
        brk
        tsb     L0040
        .byte   $03
        brk
        .byte   $03
        .byte   $03
        .byte   $02
        brk
        php
        ora     $02,x
        brk
        .byte   $03
        .byte   $03
        .byte   $03
        brk
        tsb     L0040
        brk
        .byte   $03
        rti

        ora     $00
        tsb     $03
        .byte   $02
        brk
        tsb     $15
        .byte   $02
        brk
        tsb     $03
        ora     $00
        .byte   $03
        rti

        brk
        .byte   $02
        rti

        ora     $00
        ora     ($15,x)
        .byte   $02
        brk
        tsb     $03
        tsb     $00
        tsb     $03
        .byte   $02
        brk
        ora     ($15,x)
        ora     $00
        .byte   $02
        rti

        brk
        ora     (L0040,x)
        asl     $00
        .byte   $03
        ora     $01,x
        brk
        asl     a
        .byte   $03
        ora     ($00,x)
        .byte   $03
        ora     $06,x
        brk
        ora     (L0040,x)
        brk
        ora     (L0040,x)
        asl     $00
        .byte   $03
        ora     $01,x
        brk
        asl     a
        .byte   $03
        ora     ($00,x)
        .byte   $03
        ora     $06,x
        brk
        ora     (L0040,x)
        brk
        ora     (L0040,x)
        tsb     $00
        ora     (L0040,x)
        ora     ($00,x)
        ora     ($15,x)
        .byte   $02
        brk
        tsb     $03
        tsb     $00
        tsb     $03
        .byte   $02
        brk
        ora     ($15,x)
        ora     ($00,x)
        ora     (L0040,x)
        tsb     $00
        ora     (L0040,x)
        brk
        ora     (L0040,x)
        .byte   $03
        brk
        .byte   $02
        rti

        .byte   $02
        brk
        tsb     $03
        .byte   $02
        brk
        tsb     $15
        .byte   $02
        brk
        tsb     $03
        .byte   $02
        brk
        .byte   $02
        rti

        .byte   $03
        brk
        ora     (L0040,x)
        brk
        ora     (L0040,x)
        .byte   $02
        brk
        .byte   $03
        rti

        ora     ($00,x)
        .byte   $03
        .byte   $03
        .byte   $02
        brk
        php
        ora     $02,x
        brk
        .byte   $03
        .byte   $03
        ora     ($00,x)
        .byte   $03
        rti

        .byte   $02
        brk
        ora     (L0040,x)
        brk
        asl     L0040
        ora     ($00,x)
        .byte   $02
        .byte   $03
        ora     ($00,x)
        tsb     $0115
        brk
        .byte   $02
        .byte   $03
        ora     ($00,x)
        asl     L0040
        brk
        asl     L0040
        trb     $00
        asl     L0040
        brk
        php
        rti

        rmb0    $00
        .byte   $02
        rti

        rmb0    $00
        php
        rti

        brk
        php
        rti

        rmb0    $00
        .byte   $02
        rti

        rmb0    $00
        php
        rti

        brk
        php
        rti

        rmb0    $00
        .byte   $02
        rti

        rmb0    $00
        php
        rti

        brk
        php
        rti

        rmb0    $00
        .byte   $02
        rti

        rmb0    $00
        php
        rti

        brk
        php
        rti

        rmb0    $00
        .byte   $02
        rti

        rmb0    $00
        php
        rti

        brk
        php
        rti

        rmb0    $00
        .byte   $02
        rti

        rmb0    $00
        php
        rti

        brk
        php
        rti

        rmb0    $00
        .byte   $02
        rti

        rmb0    $00
        php
        rti

        brk
        jsr     L2020
        rti

        brk
        jsr     L0040
        jsr     L0040
        jsr     L0040
        jsr     L0040
        jsr     L0040
        jsr     L0040
        jsr     L0040
        jsr     L0040
        jsr     L0040
        jsr     L0040
        jsr     L0040
        ora     #$40
        tsb     $0B00
        rti

        brk
        ora     #$40
        ora     ($00,x)
        .byte   $02
        rol     a
        ora     ($00,x)
        ora     ($15,x)
        rmb0    $00
        .byte   $0B
        rti

        brk
        .byte   $02
        rti

        php
        brk
        .byte   $03
        rol     a
        asl     $00
        ora     ($2A,x)
        ora     ($00,x)
        .byte   $0B
        rti

        brk
        .byte   $02
        rti

        ora     #$00
        ora     ($2A,x)
        asl     $00
        ora     ($2A,x)
        asl     a
        brk
        .byte   $03
        rti

        brk
        .byte   $02
        rti

        php
        brk
        ora     ($15,x)
        asl     $00
        ora     ($2A,x)
        ora     ($00,x)
        ora     ($15,x)
        ora     #$00
        .byte   $03
        rti

        brk
        .byte   $02
        rti

        php
        brk
        ora     ($15,x)
        ora     $00
        .byte   $02
        rol     a
        ora     ($00,x)
        ora     ($15,x)
        ora     $00
        ora     ($2A,x)
        ora     ($00,x)
        ora     ($2A,x)
        ora     ($00,x)
        .byte   $03
        rti

        brk
        .byte   $02
        rti

        php
        brk
        .byte   $02
        ora     $01,x
        brk
        tsb     $2A
        ora     ($00,x)
        .byte   $02
        ora     $06,x
        brk
        ora     ($2A,x)
        .byte   $02
        brk
        .byte   $03
        rti

        brk
        .byte   $02
        rti

        php
        brk
        .byte   $02
        ora     $01,x
        brk
        tsb     $2A
        ora     ($00,x)
        .byte   $02
        ora     $02,x
        brk
        ora     ($2A,x)
        .byte   $02
        brk
        ora     ($2A,x)
        ora     ($00,x)
        ora     ($2A,x)
        ora     ($00,x)
        .byte   $03
        rti

        brk
        .byte   $02
        rti

        php
        brk
        .byte   $03
        ora     $01,x
        brk
        .byte   $02
        rol     a
        ora     ($00,x)
        .byte   $03
        ora     $03,x
        brk
        ora     ($2A,x)
        ora     $00
        .byte   $03
        rti

        brk
        ora     #$40
        ora     ($00,x)
        .byte   $03
        ora     $01,x
        brk
        .byte   $02
        rol     a
        ora     ($00,x)
        .byte   $03
        ora     $03,x
        brk
        ora     ($2A,x)
        ora     $00
        .byte   $03
        rti

        brk
        ora     #$40
        ora     ($00,x)
        .byte   $03
        ora     $01,x
        brk
        .byte   $02
        rol     a
        ora     ($00,x)
        .byte   $03
        ora     $03,x
        brk
        ora     ($2A,x)
        ora     $00
        .byte   $03
        rti

        brk
        .byte   $02
        rti

        php
        brk
        .byte   $03
        ora     $01,x
        brk
        .byte   $02
        rol     a
        ora     ($00,x)
        .byte   $03
        ora     $03,x
        brk
        ora     ($2A,x)
        ora     ($00,x)
        ora     ($2A,x)
        ora     ($00,x)
        ora     ($2A,x)
        ora     ($00,x)
        .byte   $03
        rti

        brk
        .byte   $02
        rti

        php
        brk
        .byte   $02
        ora     $01,x
        brk
        tsb     $2A
        ora     ($00,x)
        .byte   $02
        ora     $02,x
        brk
        ora     ($2A,x)
        .byte   $03
        brk
        ora     ($2A,x)
        .byte   $02
        brk
        .byte   $03
        rti

        brk
        .byte   $02
        rti

        php
        brk
        .byte   $02
        ora     $01,x
        brk
        tsb     $2A
        ora     ($00,x)
        .byte   $02
        ora     $05,x
        brk
        ora     ($2A,x)
        ora     ($00,x)
        ora     ($2A,x)
        ora     ($00,x)
        .byte   $03
        rti

        brk
        .byte   $02
        rti

        php
        brk
        ora     ($15,x)
        ora     $00
        .byte   $02
        rol     a
        ora     ($00,x)
        ora     ($15,x)
        ora     #$00
        .byte   $03
        rti

        brk
        .byte   $02
        rti

        php
        brk
        ora     ($15,x)
        asl     $00
        ora     ($2A,x)
        ora     ($00,x)
        ora     ($15,x)
        ora     #$00
        .byte   $03
        rti

        brk
        .byte   $02
        rti

        ora     #$00
        ora     ($2A,x)
        asl     $00
        ora     ($2A,x)
        asl     a
        brk
        .byte   $03
        rti

        brk
        .byte   $02
        rti

        php
        brk
        .byte   $03
        rol     a
        asl     $00
        ora     ($2A,x)
        ora     ($00,x)
        .byte   $0B
        rti

        brk
        ora     #$40
        ora     ($00,x)
        .byte   $02
        rol     a
        ora     ($00,x)
        ora     ($15,x)
        rmb0    $00
        .byte   $0B
        rti

        brk
        ora     #$40
        tsb     $0B00
        rti

        brk
        bpl     LD105
        bpl     LD0F7
LD0F7:  brk
        ora     ($00,x)
        bbr0    $08,LD0FD
LD0FD:  ora     ($00,x)
        ora     ($08,x)
        ora     $0100
        php
LD105:  brk
        ora     ($00,x)
        ora     ($08,x)
        ora     ($00,x)
        .byte   $0B
        tsb     $01
        brk
        ora     ($08,x)
        brk
        ora     ($00,x)
        ora     ($08,x)
        ora     ($00,x)
        .byte   $0B
        tsb     $01
        brk
        ora     ($08,x)
        brk
        ora     ($00,x)
        ora     ($08,x)
        ora     ($00,x)
        .byte   $0B
        tsb     $01
        brk
        ora     ($08,x)
        brk
        ora     ($00,x)
        ora     ($08,x)
        ora     ($00,x)
        .byte   $0B
        tsb     $01
        brk
        ora     ($08,x)
        brk
        ora     ($00,x)
        ora     ($08,x)
        ora     ($00,x)
        .byte   $0B
        tsb     $01
        brk
        ora     ($08,x)
        brk
        ora     ($00,x)
        ora     ($08,x)
        ora     ($00,x)
        .byte   $0B
        tsb     $01
        brk
        ora     ($08,x)
        brk
        ora     ($00,x)
        ora     ($08,x)
        ora     ($00,x)
        .byte   $0B
        tsb     $01
        brk
        ora     ($08,x)
        brk
        ora     ($00,x)
        ora     ($08,x)
        ora     ($00,x)
        .byte   $0B
        tsb     $01
        brk
        ora     ($08,x)
        brk
        ora     ($00,x)
        ora     ($08,x)
        ora     ($00,x)
        .byte   $0B
        tsb     $01
        brk
        ora     ($08,x)
        brk
        ora     ($00,x)
        ora     ($08,x)
        ora     ($00,x)
        .byte   $0B
        tsb     $01
        brk
        ora     ($08,x)
        brk
        ora     ($00,x)
        ora     ($08,x)
        ora     ($00,x)
        .byte   $0B
        tsb     $01
        brk
        ora     ($08,x)
        brk
        ora     ($00,x)
        ora     ($08,x)
        ora     $0100
        php
        brk
        ora     ($00,x)
        bbr0    $08,LD1A3
LD1A3:  jsr     L2020
        rti

        brk
        jsr     L0040
        jsr     L0040
        jsr     L0040
        jsr     L0040
        jsr     L0040
        jsr     L0040
        jsr     L0040
        jsr     L0040
        jsr     L0040
        jsr     L0040
        jsr     L0040
        jsr     L0040
        jsr     L0040
        jsr     L0040
        jsr     L0040
        jsr     L0040
        jsr     L0040
        jsr     L0040
        jsr     L0040
        jsr     L0040
        jsr     L0040
        .byte   $0B
        rti

        tsb     $00
        ora     (L0040),y
        brk
        .byte   $0B
        rti

        ora     ($00,x)
        .byte   $02
        and     ($01,x)
        brk
        .byte   $02
        rti

        .byte   $03
        brk
        ora     (L0040,x)
        .byte   $02
        brk
        ora     #$40
        brk
        rmb0    L0040
        tsb     $00
        .byte   $03
        and     ($04,x)
        brk
        ora     ($21,x)
        ora     $00
        php
        rti

        brk
        asl     L0040
        ora     ($00,x)
        php
        and     ($02,x)
        brk
        asl     $21
        .byte   $02
        brk
        rmb0    L0040
        brk
        ora     L0040
        ora     ($00,x)
        asl     $21
        ora     ($02,x)
        php
        and     ($01,x)
        .byte   $02
        .byte   $02
        and     ($02,x)
        brk
        asl     L0040
        brk
        ora     L0040
        ora     ($00,x)
        ora     ($21,x)
        ora     (L0020,x)
        ora     ($21),y
        ora     ($00,x)
        asl     L0040
        brk
        ora     L0040
        ora     ($00,x)
        asl     a
        and     ($01,x)
        jsr     L2108
        ora     ($00,x)
        asl     L0040
        brk
        ora     L0040
        php
        brk
        asl     $21
        rmb0    $00
        asl     L0040
        brk
        tsb     $0740
        brk
        ora     a:L0040
        jsr     L0040
        jsr     L0020
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        bbr0    $F0,LD28A
        beq     LD28C
LD27D:  beq     LD28E
        .byte   $F0
LD280:  tsb     a:$00
LD283:  bmi     LD291
        brk
LD286:  brk
        bmi     LD295
LD289:  brk
LD28A:  brk
        .byte   $30
LD28C:  .byte   $0C
LD28D:  brk
LD28E:  brk
LD28F:  bmi     LD29D
LD291:  brk
        brk
        bmi     LD2A1
LD295:  brk
        brk
        bmi     LD299
LD299:  brk
        brk
        brk
        brk
LD29D:  brk
        brk
        brk
        brk
LD2A1:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        tsb     a:$00
        bmi     LD2C9
        brk
        brk
        bmi     LD2CD
        brk
        brk
        bmi     LD2D1
        brk
        brk
        bmi     LD2D5
LD2C9:  brk
        brk
        bmi     LD2D9
LD2CD:  brk
        brk
        bmi     LD2E0
LD2D1:  beq     LD2E2
        beq     LD2E4
LD2D5:  beq     LD2E6
        beq     LD2D9
LD2D9:  brk
        brk
        brk
        brk
        brk
        brk
        brk
LD2E0:  brk
        brk
LD2E2:  brk
        brk
LD2E4:  brk
        brk
LD2E6:  brk
        brk
        ora     ($11),y
        brk
        rmb0    $F0
        brk
        rmb0    $F0
        brk
        bbr3    $FE,LD2F4
LD2F4:  bbr3    $FE,LD2F7
LD2F7:  bbr3    $FE,LD2FA
LD2FA:  bbs7    $FF,LD27D
        bbs7    $FF,LD280
        bbs7    $FF,LD283
        bbs7    $FF,LD286
        bbs7    $FF,LD289
        bbs7    $FF,LD28C
        bbs7    $FF,LD28F
        bbr3    $FE,LD312
LD312:  bbr3    $FE,LD315
LD315:  bbr3    $FE,LD318
LD318:  rmb0    $F0
        brk
        rmb0    $F0
        brk
        clc
        clc
        brk
        brk
        bbs7    $00,LD325
LD325:  bbs7    $00,LD367
        bbs7    $FC,LD36A
        bbs7    $FC,LD36D
        bbs7    $FC,LD370
        .byte   $FF
        .byte   $FC
LD333:  bbr3    $FF,$D332
        bbr3    $FF,$D335
LD339:  bbs7    $FF,$D33B
LD33C:  bbs7    $FF,$D33E
LD33F:  bbs7    $FF,$D341
LD342:  bbs7    $FF,$D344
LD345:  bbs7    $FF,$D347
LD348:  bbs7    $FF,$D34A
LD34B:  bbs7    $FF,$D34D
LD34E:  bbs7    $FF,$D350
        bbr3    $FF,$D350
        bbr3    $FF,$D353
        bbr3    $FF,$D356
        bbr3    $FF,$D359
        bbr3    $FF,$D35C
        bbr3    $FF,$D35F
        brk
LD364:  .byte   $FF
LD365:  brk
        brk
LD367:  bbs7    $00,LD38A
LD36A:  jsr     L7F00
LD36D:  bbs7    $00,LD370
LD370:  bbr3    $FF,LD373
LD373:  ora     ($1F,x)
        .byte   $FF
LD376:  brk
LD377:  .byte   $03
        bbr0    $FF,LD37B
LD37B:  rmb0    $07
        bbs7    $00,LD38F
        .byte   $03
        bbs7    $00,LD3A3
        ora     ($FF,x)
        brk
        .byte   $3F
        brk
LD389:  .byte   $FF
LD38A:  brk
        bbr7    $00,LD40D
        brk
LD38F:  .byte   $FF
        brk
LD391:  .byte   $3F
        .byte   $01
LD393:  .byte   $FF
LD394:  brk
        .byte   $1F
        .byte   $03
LD397:  bbs7    $00,LD3A9
LD39A:  .byte   $07
LD39B:  .byte   $FF
        brk
LD39D:  rmb0    $0F
LD39F:  .byte   $FF
LD3A0:  brk
LD3A1:  .byte   $03
        .byte   $1F
LD3A3:  bbs7    $00,LD3A7
        .byte   $3F
LD3A7:  .byte   $FF
        brk
LD3A9:  brk
        .byte   $7F
        .byte   $FF
LD3AC:  bbs7    $FE,LD3AF
LD3AF:  brk
        bbs7    $FC,LD333
        brk
        bbs7    $F8,LD377
        brk
        bbs7    $F0,LD39B
LD3BB:  brk
        .byte   $FF
LD3BD:  cpx     #$F0
        brk
        .byte   $FF
        .byte   $C0
LD3C2:  sed
LD3C3:  brk
        bbs7    $80,LD3C3
        brk
        .byte   $FF
LD3C9:  brk
        inc     $FE00,x
LD3CD:  brk
        bbs7    $00,LD3CD
        brk
        bbs7    $80,LD3CD
        brk
        bbs7    $C0,LD3C9
        brk
        bbs7    $E0,LD3BD
        brk
        bbs7    $F0,LD3A1
        brk
        bbs7    $F8,LD365
        brk
        bbs7    $FC,LD3E9
LD3E9:  brk
        bbs7    $FE,LD3FD
        bpl     LD3F0
        .byte   $7F
LD3F0:  inc     $03C0,x
        bra     LD3F6
        .byte   $83
LD3F6:  cmp     ($83,x)
        cmp     ($83,x)
        cmp     ($9F,x)
        .byte   $F9
LD3FD:  bbs1    $F9,LD39F
        sbc     $F99F,y
        .byte   $83
        cmp     ($83,x)
        cmp     ($83,x)
        cmp     ($80,x)
        ora     ($C0,x)
        .byte   $03
LD40D:  bbr7    $FE,LD420
        bpl     LD413
        .byte   $7F
LD413:  inc     $03C0,x
        bra     LD419
        .byte   $83
LD419:  cmp     ($83,x)
        cmp     ($83,x)
        cmp     ($9F,x)
        .byte   $F9
LD420:  bbs1    $F9,LD3C2
        sbc     $F99F,y
        .byte   $83
        cmp     ($83,x)
        cmp     ($83,x)
        cmp     ($80,x)
        ora     ($C0,x)
        .byte   $03
        bbr7    $FE,LD443
        bpl     LD436
        .byte   $7F
LD436:  inc     $03C0,x
        bra     LD43C
        .byte   $A2
LD43C:  adc     $45A2,y
        ldx     #$45
        ldx     #$45
LD443:  ldx     $A279,y
        eor     ($A2,x)
        eor     ($A2,x)
        eor     ($A2,x)
        eor     ($A2,x)
        eor     ($80,x)
        ora     ($C0,x)
        .byte   $03
        bbr7    $FE,LD466
        bpl     LD459
        .byte   $7F
LD459:  inc     $03C0,x
        bra     LD45F
        .byte   $87
LD45F:  cmp     ($84,x)
        and     ($84,x)
        and     ($84,x)
        .byte   $21
LD466:  smb0    $C1
        sty     $21
LD46A:  sty     $21
        sty     $21
        sty     $21
        smb0    $C1
        bra     LD475
        .byte   $C0
LD475:  .byte   $03
        bbr7    $FE,LD489
        bpl     LD47C
LD47B:  .byte   $7F
LD47C:  inc     $03C0,x
        bra     LD482
        tsx
LD482:  lda     $A5A2,y
        ldx     #$A5
        ldx     #$A5
LD489:  lda     $A239,y
        lda     ($A2,x)
        lda     ($A2,x)
        lda     ($A2,x)
        lda     ($BA,x)
        lda     ($80,x)
        ora     ($C0,x)
        .byte   $03
        bbr7    $FE,LD4AC
        bpl     LD49F
        .byte   $7F
LD49F:  inc     $03C0,x
        bra     LD4A5
        .byte   $87
LD4A5:  sta     ($84,x)
        cmp     ($84,x)
        adc     ($84,x)
LD4AB:  .byte   $21
LD4AC:  sty     $21
        sty     $21
        sty     $21
        sty     $61
        sty     $C1
        smb0    $81
        bra     LD4BB
        .byte   $C0
LD4BB:  .byte   $03
        bbr7    $FE,LD4D7
        clc
LD4C0:  .byte   $02
        bbr3    $FF,LD4C0
        rts

        brk
        asl     $C0
        brk
LD4C9:  .byte   $03
        bra     LD4CC
LD4CC:  ora     ($87,x)
        smb6    $E1
        sty     $24
        and     ($84,x)
        bit     $21
        .byte   $9F
LD4D7:  bbs7    $F9,LD46A
        brk
        ora     #$90
        brk
        bit     #$90
        brk
        bit     #$97
        .byte   $C3
        sbc     #$90
        brk
        bit     #$90
        brk
        bit     #$90
        brk
        ora     #$90
        brk
        ora     #$90
        brk
        ora     #$90
        brk
        .byte   $09
LD4F7:  bbs1    $FF,$D4F3
        bra     $D4FC
        ora     ($80,x)
        brk
        ora     ($C0,x)
        brk
        .byte   $03
        rts

        brk
        asl     $3F
        bbs7    $FC,LD522
        clc
LD50B:  .byte   $02
        bbr3    $FF,LD50B
        rts

        brk
        asl     $C7
        cpy     #$03
        dey
        jsr     L9001
        bpl     LD51C
        tax
LD51C:  tay
        ora     ($A4,x)
        pha
        ora     ($AA,x)
LD522:  tay
        ora     ($A0,x)
        php
        ora     ($9F,x)
        beq     LD4AB
        sta     $51,x
        cmp     ($9F,x)
        .byte   $F3
        eor     ($95,x)
        eor     ($61)
        bbs0    $E2,LD573
        .byte   $80
LD537:  asl     $65
        bra     $D577
        cmp     $2780
LD53E:  bit     #$80
        .byte   $13
        ora     $0980,y
        sta     ($80),y
        bbr0    $F1,LD4C9
        php
        ora     ($C0),y
        bbr0    $F3,LD5AF
        brk
        asl     $3F
        bbs7    $FC,LD56D
        clc
LD556:  .byte   $02
        bbr3    $FF,LD556
        rts

        brk
        asl     $C0
        brk
LD55F:  .byte   $03
        bra     LD5E0
        ora     ($80,x)
        .byte   $42
        ora     ($80,x)
        .byte   $42
        ora     ($80,x)
        .byte   $42
        ora     ($80,x)
LD56D:  .byte   $42
        ora     ($87,x)
        bbs7    $E1,LD4F7
LD573:  dec     $21
        sty     $31
        lda     ($83,x)
        sty     $8241
        .byte   $63
        eor     ($81,x)
        clc
        sta     ($81,x)
        dec     $81
        bra     LD537
        ora     ($80,x)
        sta     L8001
        .byte   $62
        ora     ($80,x)
        phy
        ora     ($80,x)
        bit     $01
        bra     LD5AD
        ora     ($C0,x)
        brk
        .byte   $03
        rts

        brk
        asl     $3F
        bbs7    $FC,LD5B8
        clc
LD5A1:  .byte   $02
        bbr3    $FF,LD5A1
        rts

        brk
        asl     $C1
        .byte   $E0
LD5AA:  .byte   $03
        .byte   $8F
        .byte   $F0
LD5AD:  ora     ($9F,x)
LD5AF:  beq     LD5B2
        .byte   $9E
LD5B2:  cld
        ora     ($BF,x)
        sed
        ora     ($BF,x)
LD5B8:  sed
        ora     ($B7,x)
        beq     LD5BE
        .byte   $BF
LD5BE:  cpx     #$81
        stz     LC1C1,x
        smb0    $83
        eor     ($80,x)
        .byte   $02
        adc     ($80,x)
        .byte   $02
        and     $0680,x
        adc     $80
        bit     $80CD,x
        rmb2    $89
        bra     LD5EA
        .byte   $19
LD5D8:  bra     $D5E3
        sta     ($80),y
        bbr0    $F1,LD55F
        php
LD5E0:  ora     ($C0),y
        bbr0    $F3,LD645
        brk
        asl     $3F
        .byte   $FF
        .byte   $FC
LD5EA:  clc
        clc
LD5EC:  .byte   $02
        bbr3    $FF,LD5EC
        rts

        bra     LD5F9
        cmp     ($C0,x)
        .byte   $03
        .byte   $83
        rti

        .byte   $01
LD5F9:  .byte   $82
        rts

        ora     ($82,x)
        bit     $8601,x
LD600:  stz     $01
        ldy     $01CC,x
        smb2    $88
        ora     ($93,x)
        clc
        sta     ($89,x)
        sta     ($C1),y
        bbs0    $F3,LD652
        dey
        .byte   $12
LD613:  adc     ($8F,x)
        sbc     ($3D)
        bra     LD61F
        adc     $80
        bit     $80CD,x
        .byte   $27
LD61F:  bit     #$80
        .byte   $13
        ora     $0980,y
        sta     ($80),y
        bbr0    $F1,LD5AA
        php
LD62B:  ora     ($C0),y
        bbr0    $F3,LD690
        brk
        asl     $3F
        bbs7    $FC,LD64E
        clc
LD637:  .byte   $02
        bbr3    $FF,LD637
        rts

        brk
        asl     $C0
        jmp     (L8003,x)
        .byte   $82
        ora     ($81,x)
LD645:  ora     ($01,x)
        .byte   $82
        tax
        sta     ($82,x)
        .byte   $44
        sta     ($82,x)
LD64E:  tax
        sta     ($82,x)
        brk
LD652:  sta     ($81,x)
LD654:  bbs7    $01,LD5D8
        eor     $01,x
        sta     ($FF,x)
        ora     ($81,x)
        eor     $01,x
LD65F:  bra     LD65F
        ora     ($80,x)
        brk
        ora     ($9E,x)
        smb7    $11
        .byte   $82
        sta     $21,x
        stz     $4197,x
        bcc     LD600
        lda     $9190,y
        and     #$9E
        sbc     ($39)
        cpy     #$00
        .byte   $03
        rts

        brk
        asl     $3F
        bbs7    $FC,LD699
        clc
LD682:  .byte   $02
        bbr3    $FF,LD682
        rts

        brk
        asl     $C0
        brk
LD68B:  .byte   $03
        bra     LD68E
LD68E:  ora     ($80,x)
LD690:  bbr3    $E1,LD613
LD693:  bpl     LD6B6
        bra     LD69F
        and     ($80,x)
LD699:  trb     $21
        bra     LD6DB
        and     ($80,x)
LD69F:  eor     ($21,x)
        bra     LD693
        lda     ($81,x)
        bbr0    $61,LD62B
        .byte   $82
        and     ($84,x)
        stz     $01
        sty     $0118
        sta     ($10)
        ora     ($A1,x)
        .byte   $20
        .byte   $01
LD6B6:  tya
        cpy     #$01
        stx     $80
        ora     ($81,x)
        brk
        ora     ($80,x)
        brk
        ora     ($C0,x)
        brk
        .byte   $03
        rts

        brk
LD6C7:  asl     $3F
        bbs7    $FC,LD6E4
        clc
LD6CD:  .byte   $02
        bbr3    $FF,LD6CD
        rts

        brk
        asl     $C1
        brk
        .byte   $83
        .byte   $82
        sta     ($41,x)
        .byte   $84
LD6DB:  .byte   $42
        and     ($88,x)
        bit     $9311,x
        sta     ($C9,x)
        .byte   $A4
LD6E4:  .byte   $42
        and     $A8
        bit     $15
        lda     #$24
        sta     $A4,x
        .byte   $42
        and     $A3
        sta     ($C5,x)
        ldy     #$10
        ora     $A0
        bit     $05
        ldy     #$48
        ora     $90
        eor     ($09)
        dey
        stz     $11
        sty     $18
        and     ($82,x)
        brk
        eor     ($81,x)
        bbs7    $81,LD68B
        brk
        ora     ($C0,x)
        brk
        .byte   $03
        rts

        brk
        asl     $3F
        .byte   $FF
        .byte   $FC
LD716:  clc
        clc
LD718:  .byte   $02
        bbr3    $FF,LD718
        rts

        brk
        asl     $C0
        brk
        .byte   $03
        bra     LD724
LD724:  ora     ($80,x)
        brk
        ora     ($80,x)
        .byte   $03
        sbc     ($B3,x)
        tsb     $11
        dey
LD72F:  dey
        ora     #$80
        ora     $55,x
        ldx     $25D2,y
        bra     LD74E
        eor     $88,x
        bpl     LD742
        lda     ($0F),y
        sbc     $0A86,y
LD742:  lda     #$80
        bbr0    $F9,LD6C7
        asl     a
        lda     #$80
        rmb0    $F1
        bra     LD74E
LD74E:  ora     ($80,x)
        brk
        ora     ($80,x)
        brk
        ora     ($80,x)
        brk
        ora     ($C0,x)
        brk
        .byte   $03
        rts

        brk
        asl     $3F
        bbs7    $FC,LD77A
        clc
LD763:  .byte   $02
        bbr3    $FF,LD763
        rts

        brk
        .byte   $06
LD76A:  cpy     #$70
        .byte   $03
        ldy     $0188,x
LD770:  sta     ($04,x)
        ora     ($81,x)
        tsb     $01
        lda     $0104,x
        .byte   $80
LD77A:  dey
        and     ($8E,x)
        bvs     LD790
        bit     #$E0
        ora     #$88
        .byte   $63
        sbc     $5088,x
        ora     #$88
        sta     ($11),y
        bra     LD716
        and     ($BD,x)
        asl     a
LD790:  ora     ($81,x)
        sty     $01
        sta     ($60,x)
        ora     ($A2,x)
        clc
LD799:  ora     ($92,x)
        bpl     LD79E
        .byte   $8C
LD79E:  jsr     L8001
        rti

        ora     ($C0,x)
        bra     LD7A9
        rts

        brk
LD7A8:  .byte   $06
LD7A9:  bbr3    $FF,LD7A8
        clc
        clc
LD7AE:  .byte   $02
        bbr3    $FF,LD7AE
        rts

        brk
        asl     $C0
        .byte   $7E
LD7B7:  .byte   $03
        sta     ($81,x)
        sta     ($82,x)
        brk
        eor     ($84,x)
        php
        and     ($8C,x)
        trb     $9211
        bit     $09,x
        sta     ($26),y
        ora     #$A0
        .byte   $E3
        cmp     $A0
        ror     $45
        .byte   $A3
        .byte   $DC
        cmp     $A2
        sei
        sta     $A1
        and     $85,x
        ldy     #$9B
        ora     $90
        bbs7    $89,LD770
        sta     ($49,x)
        dey
        .byte   $FF
LD7E4:  and     ($84),y
        brk
        and     ($82,x)
        brk
        eor     ($81,x)
        sta     ($81,x)
        cpy     #$7E
        .byte   $03
        rts

        brk
        asl     $3F
        bbs7    $FC,LD810
        clc
LD7F9:  .byte   $02
        bbr3    $FF,LD7F9
        rts

        brk
        asl     $C2
        brk
LD802:  .byte   $03
        sta     $00
        ora     ($88,x)
        bra     LD80A
        .byte   $90
LD80A:  rti

        ora     ($BF,x)
        cpx     #$01
        dey
LD810:  bra     LD813
        dey
LD813:  bra     LD816
        dey
LD816:  bra     LD799
        dey
        sta     ($C1,x)
        dey
        .byte   $83
        eor     ($8F,x)
        .byte   $82
        adc     ($80,x)
        .byte   $02
        and     $0680,x
        adc     $80
        bit     $80CD,x
        rmb2    $89
        bra     LD842
        ora     $0980,y
        sta     ($80),y
        bbr0    $F1,LD7B7
        php
        ora     ($C0),y
        bbr0    $F3,LD89D
        brk
        asl     $3F
        .byte   $FF
        .byte   $FC
LD842:  clc
        clc
LD844:  .byte   $02
        bbr3    $FF,LD844
        rts

        brk
        asl     $C0
        brk
        .byte   $03
        bra     LD890
        ora     ($80,x)
        cpy     #$01
        sta     (L0040,x)
        ora     ($9C,x)
        rti

        ora     ($80,x)
        rti

        ora     ($80,x)
        rti

        ora     ($81,x)
        beq     LD7E4
        bra     LD866
        .byte   $C1
LD866:  bra     LD86B
        eor     ($80,x)
        .byte   $02
LD86B:  adc     ($80,x)
        .byte   $02
        and     $0680,x
        adc     $80
        bit     $80CD,x
        rmb2    $89
        bra     LD88D
        ora     $0980,y
        sta     ($80),y
        bbr0    $F1,LD802
        php
        ora     ($C0),y
        bbr0    $F3,LD8E8
        brk
        asl     $3F
        .byte   $FF
        .byte   $FC
LD88D:  clc
LD88E:  clc
LD88F:  .byte   $02
LD890:  bbr3    $FF,LD88F
        rts

        brk
        asl     $C0
        php
        .byte   $03
        bra     LD8AF
        ora     ($80,x)
LD89D:  .byte   $22
        ora     ($80,x)
LD8A0:  eor     ($01,x)
LD8A2:  .byte   $80
LD8A3:  bbs7    $81,$D826
        .byte   $22
        ora     ($80,x)
        .byte   $22
        ora     ($80,x)
        .byte   $22
        ora     ($80,x)
LD8AF:  rol     L8001,x
        brk
        ora     ($80,x)
        ror     $8101,x
        .byte   $C3
        sta     ($82,x)
        sta     ($41,x)
        sty     $81
        and     ($88,x)
        sta     ($11,x)
        bit     #$81
        sta     ($86),y
        sta     ($61,x)
        bra     LD88E
        ora     ($80,x)
        ror     LC001,x
        brk
        .byte   $03
        rts

        brk
        asl     $3F
        bbs7    $FC,LD8F1
        clc
LD8DA:  .byte   $02
        bbr3    $FF,LD8DA
        rts

        brk
        asl     $C0
        .byte   $02
        .byte   $03
        sty     $02
        ora     #$82
LD8E8:  .byte   $02
        ora     ($81),y
        php
        and     ($80,x)
        stz     $8041
LD8F1:  bit     $01,x
        bcs     LD91B
        ora     ($8C,x)
        .byte   $23
        cmp     $80
        ror     $59
        .byte   $83
        cpy     $82C1
        sei
        sta     ($81,x)
        and     ($81),y
        bra     LD8A0
        ora     ($82,x)
        bbs7    $21,LD890
        sta     ($11,x)
        dey
        bbs7    $09,LD8A2
        brk
        ora     $80
        .byte   $82
        ora     ($80,x)
        .byte   $82
        ora     ($C1,x)
LD91B:  ora     ($03,x)
        rts

        brk
        asl     $3F
        bbs7    $FC,LD929
        .byte   $03
        .byte   $53
        .byte   $3B
        .byte   $54
        .byte   $20
LD929:  eor     $02,x
        ora     $03
        .byte   $53
        .byte   $3B
        .byte   $54
        .byte   $02
        eor     $08,x
        ora     $03
        .byte   $53
        .byte   $3B
        .byte   $54
        php
        eor     $0A,x
        ora     $03
        .byte   $53
        .byte   $3B
        .byte   $54
        asl     a
        eor     L0020,x
        asl     $05
        bvc     LD968
        eor     (L0020)
        eor     ($02),y
        lsr     $4F17
        .byte   $2B
        asl     $05
        bvc     LD974
        eor     (L0020)
        eor     ($02),y
        lsr     $4F1F
        bbr2    $06,LD962
        bvc     LD980
        eor     (L0020)
        .byte   $51
LD962:  .byte   $02
        lsr     $4F35
        dec     a
        .byte   $05
LD968:  .byte   $03
        .byte   $53
        and     ($54,x)
        and     ($55)
        jsr     L0305
        .byte   $53
        .byte   $0B
        .byte   $54
LD974:  .byte   $02
        eor     $0F,x
        jsr     LF457
        bra     LD9B0
LD97C:  ldy     #$03
        lda     ($80),y
LD980:  tax
        dey
        lda     ($80),y
        sta     $84
        stx     $85
        inc     a
        bne     LD98C
        inx
LD98C:  jsr     LF4A1
        lda     $84
        ldx     $85
        jsr     LF457
        ldy     #$03
        lda     ($80),y
        tax
        dey
        lda     ($80),y
        sta     $84
        stx     $85
        inc     a
        bne     LD9A6
        inx
LD9A6:  jsr     LF4A1
        ldy     #$00
        lda     ($84)
        jsr     LF489
LD9B0:  ldy     #$01
        lda     ($80),y
        sta     $89
        lda     ($80)
        sta     $88
        lda     ($88)
        bne     LD97C
        tax
        jmp     LF375

        jsr     LF441
        jsr     LF2D7
        ldy     #$02
        lda     ($80),y
        cmp     #$6D
        beq     LD9D4
        cmp     #$63
        bne     LD9D8
LD9D4:  lda     #$01
        bra     LD9E9
LD9D8:  lda     ($80),y
        cmp     #$6B
        bne     LD9E1
        tya
        bra     LD9E9
LD9E1:  lda     ($80),y
        cmp     #$72
        bne     LD9EF
        lda     #$03
LD9E9:  sta     $FE10
        stz     $FE11
LD9EF:  lda     $FE10
        ora     $FE11
        beq     LD9FE
        ldx     #$00
        lda     #$03
        jmp     LF370

LD9FE:  dey
        sta     ($80),y
        sta     ($80)
        lda     $0228
        beq     LDA0B
        jmp     L9D93

LDA0B:  iny
        lda     ($80),y
        cmp     #$73
        beq     LDA15
        jmp     L9AD5

LDA15:  ldx     #$00
        lda     $0224
        cmp     #$02
        beq     LDA26
        tya
        sta     $0224
        dec     a
        jmp     L9D90

LDA26:  lda     $0203
        clc
        adc     $0205
        bcc     LDA30
        inx
LDA30:  inc     a
        bne     LDA34
        inx
LDA34:  cpx     #$00
        bne     LDA3A
        cmp     #$14
LDA3A:  bcc     LDA3F
        jmp     L9D93

LDA3F:  ldx     #$00
        lda     $0203
        clc
        adc     $0205
        bcc     LDA4B
        inx
LDA4B:  inc     a
        bne     LDA4F
        inx
LDA4F:  jsr     LF457
        lda     #$28
        jsr     LF3BA
        clc
        adc     #$90
        sta     $88
        txa
        adc     #$04
        sta     $89
        ldx     #$00
        lda     $0202
        clc
        adc     $0204
        bcc     LDA6E
        inx
        clc
LDA6E:  adc     $88
        sta     $88
        txa
        adc     $89
        sta     $89
        lda     ($88)
        cmp     #$04
        bne     LDA80
        jmp     L9D93

LDA80:  lda     $0202
        clc
        adc     $0204
        jsr     LF441
        lda     $0203
        clc
        adc     $0205
        inc     a
        jsr     LC4A4
        cmp     #$00
        beq     LDAA0
        lda     $0259
        cmp     #$01
        bne     LDAC8
LDAA0:  lda     $0205
        cmp     #$02
        bcs     LDAAC
        inc     $0205
        bra     LDAC4
LDAAC:  lda     $0205
        cmp     #$02
        bne     LDAC8
        lda     $0203
        cmp     #$10
        bne     LDAC1
        lda     #$03
        sta     $0205
        bra     LDAC4
LDAC1:  inc     $0203
LDAC4:  lda     #$01
        sta     ($80)
LDAC8:  lda     ($80)
        bne     LDACF
        jmp     L9D93

LDACF:  jsr     LF1BD
        jmp     L9D93

        lda     ($80),y
        cmp     #$77
        beq     LDADE
        jmp     L9B9A

LDADE:  ldx     #$00
        lda     $0224
        cmp     #$01
        beq     LDAEF
        lda     #$01
        sta     $0224
        jmp     L9D90

LDAEF:  lda     $0203
        clc
        adc     $0205
        bcc     LDAF9
        inx
LDAF9:  cpx     #$00
        bne     LDB04
        cmp     #$00
        bne     LDB04
        jmp     L9D93

LDB04:  ldx     #$00
        lda     $0203
        clc
        adc     $0205
        bcc     LDB10
        inx
LDB10:  sec
        sbc     #$01
        bcs     LDB16
        dex
LDB16:  jsr     LF457
        lda     #$28
        jsr     LF3BA
        clc
        adc     #$90
        sta     $88
        txa
        adc     #$04
        sta     $89
        ldx     #$00
        lda     $0202
        clc
        adc     $0204
        bcc     LDB35
        inx
        clc
LDB35:  adc     $88
        sta     $88
        txa
        adc     $89
        sta     $89
        lda     ($88)
        cmp     #$04
        bne     LDB47
        jmp     L9D93

LDB47:  lda     $0202
        clc
        adc     $0204
        jsr     LF441
        lda     $0203
        clc
        adc     $0205
        sec
        sbc     #$01
        jsr     LC4A4
        cmp     #$00
        beq     LDB69
        lda     $0259
        cmp     #$01
        bne     LDB8D
LDB69:  lda     $0205
        cmp     #$02
        bcc     LDB75
        dec     $0205
        bra     LDB89
LDB75:  lda     $0205
        cmp     #$01
        bne     LDB8D
        lda     $0203
        bne     LDB86
        stz     $0205
        bra     LDB89
LDB86:  dec     $0203
LDB89:  lda     #$01
        sta     ($80)
LDB8D:  lda     ($80)
        bne     LDB94
        jmp     L9D93

LDB94:  jsr     LF1BD
        jmp     L9D93

        lda     ($80),y
        cmp     #$64
        beq     LDBA3
        jmp     L9C75

LDBA3:  ldx     #$00
        lda     $0223
        cmp     #$03
        bne     LDBB5
        inc     a
        sta     $0223
        lda     #$01
        dey
        sta     ($80),y
LDBB5:  lda     $0224
        cmp     #$04
        beq     LDBC6
        lda     #$04
        sta     $0224
        lda     #$01
        jmp     L9D90

LDBC6:  lda     $0202
        clc
        adc     $0204
        bcc     LDBD0
        inx
LDBD0:  inc     a
        bne     LDBD4
        inx
LDBD4:  cpx     #$00
        bne     LDBDA
        cmp     #$28
LDBDA:  bcc     LDBDF
        jmp     L9D93

LDBDF:  ldx     #$00
        lda     $0203
        clc
        adc     $0205
        bcc     LDBEB
        inx
LDBEB:  jsr     LF457
        lda     #$28
        jsr     LF3BA
        clc
        adc     #$90
        sta     $88
        txa
        adc     #$04
        sta     $89
        ldx     #$00
        lda     $0202
        clc
        adc     $0204
        bcc     LDC09
        inx
LDC09:  inc     a
        bne     LDC0D
        inx
LDC0D:  clc
        adc     $88
        sta     $88
        txa
        adc     $89
        sta     $89
        lda     ($88)
        cmp     #$04
        bne     LDC20
        jmp     L9D93

LDC20:  lda     $0202
        clc
        adc     $0204
        inc     a
        jsr     LF441
        lda     $0203
        clc
        adc     $0205
        jsr     LC4A4
        cmp     #$00
        beq     LDC40
        lda     $0259
        cmp     #$01
        bne     LDC68
LDC40:  lda     $0204
        cmp     #$03
        bcs     LDC4C
        inc     $0204
        bra     LDC64
LDC4C:  lda     $0204
        cmp     #$03
        bne     LDC68
        lda     $0202
        cmp     #$23
        bne     LDC61
        lda     #$04
        sta     $0204
        bra     LDC64
LDC61:  inc     $0202
LDC64:  lda     #$01
        sta     ($80)
LDC68:  lda     ($80)
        bne     LDC6F
        jmp     L9D93

LDC6F:  jsr     LF1BD
        jmp     L9D93

        lda     ($80),y
        cmp     #$61
        beq     LDC7E
        jmp     L9D48

LDC7E:  ldx     #$00
        lda     $0223
        cmp     #$04
        bne     LDC90
        dec     a
        sta     $0223
        lda     #$01
        dey
        sta     ($80),y
LDC90:  lda     $0224
        cmp     #$03
        beq     LDCA1
        lda     #$03
        sta     $0224
        lda     #$01
        jmp     L9D90

LDCA1:  lda     $0202
        clc
        adc     $0204
        bcc     LDCAB
        inx
LDCAB:  cpx     #$00
        bne     LDCB6
        cmp     #$00
        bne     LDCB6
        jmp     L9D93

LDCB6:  ldx     #$00
        lda     $0203
        clc
        adc     $0205
        bcc     LDCC2
        inx
LDCC2:  jsr     LF457
        lda     #$28
        jsr     LF3BA
        clc
        adc     #$90
        sta     $88
        txa
        adc     #$04
        sta     $89
        ldx     #$00
        lda     $0202
        clc
        adc     $0204
        bcc     LDCE0
        inx
LDCE0:  sec
        sbc     #$01
        bcs     LDCE6
        dex
LDCE6:  clc
        adc     $88
        sta     $88
        txa
        adc     $89
        sta     $89
        lda     ($88)
        cmp     #$04
        bne     LDCF9
        jmp     L9D93

LDCF9:  lda     $0202
        clc
        adc     $0204
        sec
        sbc     #$01
        jsr     LF441
        lda     $0203
        clc
        adc     $0205
        jsr     LC4A4
        cmp     #$00
        beq     LDD1B
        lda     $0259
        cmp     #$01
        bne     LDD3F
LDD1B:  lda     $0204
        cmp     #$02
        bcc     LDD27
        dec     $0204
        bra     LDD3B
LDD27:  lda     $0204
        cmp     #$01
        bne     LDD3F
        lda     $0202
        bne     LDD38
        stz     $0204
        bra     LDD3B
LDD38:  dec     $0202
LDD3B:  lda     #$01
        sta     ($80)
LDD3F:  lda     ($80)
        beq     LDD93
        jsr     LF1BD
        bra     LDD93
        lda     ($80),y
        cmp     #$20
        bne     LDD93
        lda     $0225
        cmp     #$03
        bne     LDD63
        stz     $022C
        lda     $0211
        sta     $022B
        stz     $0229
        bra     LDD88
LDD63:  lda     $0225
        bne     LDD76
        stz     $022C
        lda     $0212
        sta     $022B
        stz     $0229
        bra     LDD88
LDD76:  lda     $0225
        cmp     #$01
        bne     LDD93
        lda     #$1E
        sta     $022B
        stz     $022C
        sta     $0229
LDD88:  stz     $022A
        lda     #$01
        sta     $0228
        tay
        sta     ($80),y
LDD93:  ldy     #$01
        ldx     #$00
        lda     ($80),y
        cmp     #$01
        beq     LDDA7
        lda     ($80)
        cmp     #$01
        beq     LDDA7
        txa
        jmp     LF370

LDDA7:  lda     #$1C
        jmp     LF370

        jsr     LF441
        jsr     LF2FE
        lda     #$00
        jsr     LF441
        jsr     LF441
        jsr     LF2E4
        lda     #$00
        ldy     #$09
        sta     ($80),y
        dey
        sta     ($80),y
        dey
        sta     ($80),y
        ldy     #$0A
        lda     ($80),y
        cmp     #$6D
        bne     LDDDE
        ldx     #$00
        stz     $FE10
        stz     $FE11
        lda     #$18
        jmp     LA4FF

LDDDE:  lda     ($80),y
        cmp     #$63
        bne     LDDE8
        lda     #$01
        bra     LDDFA
LDDE8:  lda     ($80),y
        cmp     #$6B
        bne     LDDF2
        lda     #$02
        bra     LDDFA
LDDF2:  lda     ($80),y
        cmp     #$72
        bne     LDE08
        lda     #$03
LDDFA:  sta     $FE10
        stz     $FE11
        ldy     #$03
        lda     ($80),y
        ora     #$02
        sta     ($80),y
LDE08:  lda     $FE11
        beq     LDE10
        jmp     L9F6B

LDE10:  lda     $FE10
        cmp     #$01
        beq     LDE1A
        jmp     L9F6B

LDE1A:  ldy     #$0A
        lda     ($80),y
        cmp     #$77
        bne     LDE38
        lda     $FE0B
        bne     LDE2A
        jmp     LA4CB

LDE2A:  dec     $FE0B
        ldy     #$03
        lda     ($80),y
        ora     #$20
        sta     ($80),y
        jmp     LA4CB

LDE38:  lda     ($80),y
        cmp     #$73
        bne     LDE56
        lda     $FE0B
        cmp     #$05
        bcc     LDE48
        jmp     LA4CB

LDE48:  inc     $FE0B
        ldy     #$03
        lda     ($80),y
        ora     #$20
        sta     ($80),y
        jmp     LA4CB

LDE56:  lda     ($80),y
        cmp     #$61
        bne     LDE88
        lda     $FE0A
        beq     LDE6D
        dec     $FE0A
        ldy     #$03
        lda     ($80),y
        ora     #$20
        jmp     L9F66

LDE6D:  lda     $FE0B
        bne     LDE75
        jmp     LA4CB

LDE75:  lda     #$04
        sta     $FE0A
        dec     $FE0B
        ldy     #$03
        lda     ($80),y
        ora     #$20
        sta     ($80),y
        jmp     LA4CB

LDE88:  lda     ($80),y
        cmp     #$64
        bne     LDEBC
        lda     $FE0A
        cmp     #$04
        bcs     LDEA1
        inc     $FE0A
        ldy     #$03
        lda     ($80),y
        ora     #$20
        jmp     L9F66

LDEA1:  lda     $FE0B
        cmp     #$05
        bcc     LDEAB
        jmp     LA4CB

LDEAB:  stz     $FE0A
        inc     $FE0B
        ldy     #$03
        lda     ($80),y
        ora     #$20
        sta     ($80),y
        jmp     LA4CB

LDEBC:  lda     ($80),y
        cmp     #$0D
        beq     LDEC5
        jmp     LA4CB

LDEC5:  ldx     #$00
        lda     $FE0B
        jsr     LF405
        clc
        adc     $FE0A
        ldy     #$05
        sta     ($80),y
        tay
        lda     $0232,y
        cmp     #$20
        bne     LDEE0
        jmp     LA4CB

LDEE0:  ldy     #$05
        lda     ($80),y
        tay
        lda     $0232,y
        ldy     #$06
        sta     ($80),y
        lda     #$32
        ldx     #$02
        dey
        clc
        adc     ($80),y
        bcc     LDEF7
        inx
LDEF7:  sta     $82
        stx     $83
        ldx     #$00
        iny
        lda     ($80),y
        asl     a
        bcc     LDF05
        inx
        clc
LDF05:  adc     #$15
        sta     $88
        txa
        adc     #$F7
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $88
        stx     $89
        lda     ($88)
        sta     $88
        lda     #$00
        clc
        adc     #$02
        sta     $89
        ldy     #$2D
        lda     ($88),y
        sta     ($82)
        ldy     #$06
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LDF35
        inx
        clc
LDF35:  adc     #$15
        sta     $88
        txa
        adc     #$F7
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $88
        stx     $89
        lda     ($88)
        clc
        adc     #$2D
        sta     $88
        lda     #$00
        adc     #$02
        sta     $89
        ldy     #$06
        lda     ($80),y
        sta     ($88)
        jsr     LC5F1
        jsr     LC193
        lda     #$01
        ldy     #$09
        sta     ($80),y
        jmp     LA4CB

        lda     $FE11
        beq     LDF73
        jmp     LA052

LDF73:  lda     $FE10
        cmp     #$02
        beq     LDF7D
        jmp     LA052

LDF7D:  ldy     #$0A
        lda     ($80),y
        cmp     #$77
        bne     LDF99
        lda     $FE0D
        bne     LDF8D
        jmp     LA4CB

LDF8D:  dec     $FE0D
        lda     #$01
        ldy     #$08
        sta     ($80),y
        jmp     LA4CB

LDF99:  lda     ($80),y
        cmp     #$73
        bne     LDFB5
        lda     $FE0D
        cmp     #$02
        bcc     LDFA9
        jmp     LA4CB

LDFA9:  inc     $FE0D
        lda     #$01
        ldy     #$08
        sta     ($80),y
        jmp     LA4CB

LDFB5:  lda     ($80),y
        cmp     #$61
        bne     LDFCF
        lda     $FE0C
        bne     LDFC3
        jmp     LA4CB

LDFC3:  dec     $FE0C
        lda     #$01
        ldy     #$08
        sta     ($80),y
        jmp     LA4CB

LDFCF:  lda     ($80),y
        cmp     #$64
        bne     LDFEB
        lda     $FE0C
        cmp     #$04
        bcc     LDFDF
        jmp     LA4CB

LDFDF:  inc     $FE0C
        lda     #$01
        ldy     #$08
        sta     ($80),y
        jmp     LA4CB

LDFEB:  lda     ($80),y
        cmp     #$0D
        beq     LDFF4
        jmp     LA4CB

LDFF4:  lda     $0222
        bne     LDFFC
        jmp     LA4CB

LDFFC:  ldx     #$00
        lda     $FE0D
        jsr     LF405
        clc
        adc     $FE0C
        ldy     #$05
        sta     ($80),y
        tay
        lda     $0250,y
        beq     LE015
        jmp     LA4CB

LE015:  lda     $FE0C
        beq     LE039
        ldy     #$05
        ldx     #$00
        lda     ($80),y
        sec
        sbc     #$01
        bcs     LE026
        dex
LE026:  sta     $88
        txa
        clc
        adc     #$02
        sta     $89
        ldy     #$50
        lda     ($88),y
        cmp     #$01
        beq     LE039
        jmp     LA4CB

LE039:  dec     $0222
        ldy     #$05
        lda     ($80),y
        tay
        lda     #$01
        sta     $0250,y
        jsr     LC193
        lda     #$01
        ldy     #$09
        sta     ($80),y
        jmp     LA4CD

        lda     $FE11
        beq     LE05A
        jmp     LA4CB

LE05A:  lda     $FE10
        cmp     #$03
        beq     LE064
        jmp     LA4CB

LE064:  ldy     #$0A
        lda     ($80),y
        cmp     #$77
        bne     LE080
        lda     $FE0F
        bne     LE074
        jmp     LA4CB

LE074:  dec     $FE0F
        lda     #$01
        ldy     #$07
        sta     ($80),y
        jmp     LA4CB

LE080:  lda     ($80),y
        cmp     #$73
        bne     LE09C
        lda     $FE0F
        cmp     #$04
        bcc     LE090
        jmp     LA4CB

LE090:  inc     $FE0F
        lda     #$01
        ldy     #$07
        sta     ($80),y
        jmp     LA4CB

LE09C:  lda     ($80),y
        cmp     #$61
        bne     LE0B6
        lda     $FE0E
        bne     LE0AA
        jmp     LA4CB

LE0AA:  dec     $FE0E
        lda     #$01
        ldy     #$07
        sta     ($80),y
        jmp     LA4CB

LE0B6:  lda     ($80),y
        cmp     #$64
        bne     LE0D2
        lda     $FE0E
        cmp     #$05
        bcc     LE0C6
        jmp     LA4CB

LE0C6:  inc     $FE0E
        lda     #$01
        ldy     #$07
        sta     ($80),y
        jmp     LA4CB

LE0D2:  lda     ($80),y
        cmp     #$0D
        beq     LE0DB
        jmp     LA4CB

LE0DB:  lda     $025F
        cmp     #$20
        bne     LE0E5
        jmp     LA3BF

LE0E5:  lda     $025C
        cmp     #$01
        bne     LE0F3
        lda     $FE0E
        cmp     #$04
        bcc     LE0F7
LE0F3:  lda     #$00
        bra     LE0F9
LE0F7:  lda     #$01
LE0F9:  ldy     #$02
        sta     ($80),y
        ldx     #$00
        lda     $025E
        cmp     #$01
        beq     LE109
        jmp     LA1F1

LE109:  lda     $021F
        clc
        adc     $0220
        bcc     LE114
        inx
        clc
LE114:  adc     $0221
        bcc     LE11A
        inx
LE11A:  jsr     LF49F
        jsr     LF457
        ldx     #$00
        lda     $025F
        asl     a
        bcc     LE12A
        inx
        clc
LE12A:  adc     #$15
        sta     $88
        txa
        adc     #$F7
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $88
        stx     $89
        ldy     #$01
        lda     ($88),y
        sec
        ldy     #$04
        sbc     ($80),y
        jsr     LF325
        bcs     LE14F
        jmp     LA3BF

LE14F:  lda     $025A
        beq     LE160
        lda     #$05
        jsr     LE7EB
        cmp     #$00
        bne     LE160
        jmp     LA3B5

LE160:  ldx     #$00
        lda     $025F
        asl     a
        bcc     LE16A
        inx
        clc
LE16A:  adc     #$15
        sta     $88
        txa
        adc     #$F7
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $88
        stx     $89
        ldy     #$01
        lda     ($88),y
        sec
        iny
        sbc     ($80),y
        ldx     #$00
        jsr     LF49F
        bra     LE19E
LE18D:  lda     ($80),y
        tax
        lda     ($80)
        sec
        sbc     #$01
        bcs     LE198
        dex
LE198:  jsr     LF49F
        dec     $021F
LE19E:  lda     ($80)
        ldy     #$01
        ora     ($80),y
        beq     LE1BE
        lda     $021F
        bne     LE18D
        bra     LE1BE
LE1AD:  lda     ($80),y
        tax
        lda     ($80)
        sec
        sbc     #$01
        bcs     LE1B8
        dex
LE1B8:  jsr     LF49F
        dec     $0220
LE1BE:  lda     ($80)
        ldy     #$01
        ora     ($80),y
        beq     LE1DE
        lda     $0220
        bne     LE1AD
        bra     LE1DE
LE1CD:  lda     ($80),y
        tax
        lda     ($80)
        sec
        sbc     #$01
        bcs     LE1D8
        dex
LE1D8:  jsr     LF49F
        dec     $0221
LE1DE:  lda     ($80)
        ldy     #$01
        ora     ($80),y
        bne     LE1E9
        jmp     LA3B5

LE1E9:  lda     $0221
        bne     LE1CD
        jmp     LA3B5

        lda     $025F
        asl     a
        bcc     LE1F9
        inx
        clc
LE1F9:  adc     #$15
        sta     $88
        txa
        adc     #$F7
        sta     $89
        dey
        lda     ($88),y
        tax
        lda     ($88)
        sta     $88
        stx     $89
        iny
LE20D:  ldx     #$00
        lda     ($88),y
        bne     LE28A
        lda     $021F
        jsr     LF455
        lda     $025F
        asl     a
        bcc     LE222
        ldx     #$01
        clc
LE222:  adc     #$15
        sta     $88
        txa
        adc     #$F7
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $88
        stx     $89
        ldy     #$01
        lda     ($88),y
        sec
        ldy     #$04
        sbc     ($80),y
        jsr     LF325
        bcs     LE247
        jmp     LA3BF

LE247:  lda     $025A
        beq     LE258
        lda     #$05
        jsr     LE7EB
        cmp     #$00
        bne     LE258
        jmp     LA3B5

LE258:  ldx     #$00
        lda     $025F
        asl     a
        bcc     LE262
        inx
        clc
LE262:  adc     #$15
        sta     $88
        txa
        adc     #$F7
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $88
        stx     $89
        ldy     #$01
        lda     ($88),y
        sec
        iny
        sbc     ($80),y
        eor     #$FF
        sec
        adc     $021F
        sta     $021F
        jmp     LA3B5

LE28A:  lda     $025F
        asl     a
        bcc     LE292
        inx
        clc
LE292:  adc     #$15
        sta     $88
        txa
        adc     #$F7
        sta     $89
        dey
        lda     ($88),y
        tax
        lda     ($88)
        sta     $88
        stx     $89
        iny
        ldx     #$00
        lda     ($88),y
        cmp     #$01
        bne     LE325
        lda     $0220
        jsr     LF455
        lda     $025F
        asl     a
        bcc     LE2BD
        ldx     #$01
        clc
LE2BD:  adc     #$15
        sta     $88
        txa
        adc     #$F7
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $88
        stx     $89
        ldy     #$01
        lda     ($88),y
        sec
        ldy     #$04
        sbc     ($80),y
        jsr     LF325
        bcs     LE2E2
        jmp     LA3BF

LE2E2:  lda     $025A
        beq     LE2F3
        lda     #$05
        jsr     LE7EB
        cmp     #$00
        bne     LE2F3
        jmp     LA3B5

LE2F3:  ldx     #$00
        lda     $025F
        asl     a
        bcc     LE2FD
        inx
        clc
LE2FD:  adc     #$15
        sta     $88
        txa
        adc     #$F7
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $88
        stx     $89
        ldy     #$01
        lda     ($88),y
        sec
        iny
        sbc     ($80),y
        eor     #$FF
        sec
        adc     $0220
        sta     $0220
        jmp     LA3B5

LE325:  lda     $025F
        asl     a
        bcc     LE32D
        inx
        clc
LE32D:  adc     #$15
        sta     $88
        txa
        adc     #$F7
        sta     $89
        dey
        lda     ($88),y
        tax
        lda     ($88)
        sta     $88
        stx     $89
        iny
        lda     ($88),y
        cmp     #$02
        bne     LE3BF
        lda     $0221
        jsr     LF455
        lda     $025F
        asl     a
        bcc     LE356
        ldx     #$01
        clc
LE356:  adc     #$15
        sta     $88
        txa
        adc     #$F7
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $88
        stx     $89
        ldy     #$01
        lda     ($88),y
        sec
        ldy     #$04
        sbc     ($80),y
        jsr     LF325
        bcc     LE3BF
        lda     $025A
        beq     LE386
        lda     #$05
        jsr     LE7EB
        cmp     #$00
        beq     LE3B5
LE386:  ldx     #$00
        lda     $025F
        asl     a
        bcc     LE390
        inx
        clc
LE390:  adc     #$15
        sta     $88
        txa
        adc     #$F7
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $88
        stx     $89
        ldy     #$01
        lda     ($88),y
        sec
        iny
        sbc     ($80),y
        eor     #$FF
        sec
        adc     $0221
        sta     $0221
LE3B5:  lda     #$01
        ldy     #$04
        sta     ($80),y
        ldy     #$09
        sta     ($80),y
LE3BF:  ldy     #$04
        lda     ($80),y
        cmp     #$01
        beq     LE3CA
        jmp     LA4CB

LE3CA:  lda     $025F
        cmp     #$19
        beq     LE3E7
        cmp     #$1A
        beq     LE3F6
        cmp     #$1B
        beq     LE40B
        cmp     #$1C
        beq     LE414
        cmp     #$1D
        beq     LE423
        cmp     #$1E
        beq     LE42B
        bra     LE434
LE3E7:  lda     $0209
        sta     $0207
        lda     $0208
        sta     $0206
        jmp     LA4CB

LE3F6:  inc     $020B
        jsr     LC193
        lda     $0209
        sta     $0207
        lda     $0208
        sta     $0206
        jmp     LA4CB

LE40B:  lda     $020D
        sta     $020C
        jmp     LA4CB

LE414:  inc     $020E
        jsr     LC193
        lda     $020D
        sta     $020C
        jmp     LA4CB

LE423:  lda     #$0A
        jsr     LC10A
        jmp     LA4CB

LE42B:  inc     $0210
        jsr     LC193
        jmp     LA4CB

LE434:  lda     #$00
        ldy     #$02
        sta     ($80),y
        cmp     #$1E
        bcc     LE441
        jmp     LA4CB

LE441:  lda     ($80),y
        tay
        lda     $0232,y
        cmp     #$20
        bne     LE4C3
        lda     $025D
        cmp     #$01
        bne     LE4B6
        lda     #$0A
        jsr     LE7EB
        cmp     #$00
        bne     LE4B6
        tax
        lda     $025F
        asl     a
        bcc     LE464
        inx
        clc
LE464:  adc     #$15
        sta     $88
        txa
        adc     #$F7
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $88
        stx     $89
        lda     ($88)
        beq     LE48E
        cmp     #$01
        beq     LE496
        cmp     #$02
        beq     LE49E
        cmp     #$03
        beq     LE4A6
        cmp     #$04
        beq     LE4AE
        bra     LE4CB
LE48E:  iny
        lda     ($80),y
        tay
        lda     #$04
        bra     LE4BE
LE496:  iny
        lda     ($80),y
        tay
        lda     #$09
        bra     LE4BE
LE49E:  iny
        lda     ($80),y
        tay
        lda     #$0E
        bra     LE4BE
LE4A6:  iny
        lda     ($80),y
        tay
        lda     #$13
        bra     LE4BE
LE4AE:  iny
        lda     ($80),y
        tay
        lda     #$18
        bra     LE4BE
LE4B6:  ldy     #$02
        lda     ($80),y
        tay
        lda     $025F
LE4BE:  sta     $0232,y
        bra     LE4CB
LE4C3:  ldy     #$02
        lda     ($80),y
        inc     a
        jmp     LA438

LE4CB:  ldy     #$09
        lda     ($80),y
        cmp     #$01
        bne     LE4DB
        ldy     #$03
        lda     ($80),y
        ora     #$02
        bra     LE4F7
LE4DB:  dey
        lda     ($80),y
        cmp     #$01
        bne     LE4EA
        ldy     #$03
        lda     ($80),y
        ora     #$40
        bra     LE4F7
LE4EA:  dey
        lda     ($80),y
        cmp     #$01
        bne     LE4F9
        ldy     #$03
        lda     ($80),y
        ora     #$80
LE4F7:  sta     ($80),y
LE4F9:  ldy     #$03
        lda     ($80),y
        ldx     #$00
        ldy     #$0B
        jmp     LF288

        lda     #$00
        jsr     LF441
        jsr     LF2E4
        lda     #$00
        ldy     #$01
LE510:  sta     ($80),y
        cmp     #$14
        bcc     LE519
        jmp     LA6C9

LE519:  lda     #$00
        iny
LE51C:  sta     ($80),y
        cmp     #$28
        bcs     LE552
        dey
        lda     ($80),y
        jsr     LF455
        lda     #$28
        jsr     LF3BA
        clc
        adc     #$D0
        sta     $88
        txa
        adc     #$0A
        sta     $89
        ldy     #$02
        lda     ($80),y
        clc
        adc     $88
        ldx     $89
        bcc     LE543
        inx
LE543:  sta     $88
        stx     $89
        lda     #$FF
        sta     ($88)
        ldy     #$02
        lda     ($80),y
        inc     a
        bra     LE51C
LE552:  dey
        lda     ($80),y
        inc     a
        bra     LE510
        lda     #$28
        jsr     LE7EB
        ldy     #$02
        sta     ($80),y
        lda     #$14
        jsr     LE7EB
        ldy     #$01
        sta     ($80),y
        iny
        lda     ($80),y
        cmp     #$01
        bne     LE578
        dey
        lda     ($80),y
        cmp     #$01
        beq     LE57A
LE578:  lda     #$00
LE57A:  jsr     LF2B8
        bne     LE582
        jmp     LA6C9

LE582:  ldy     #$02
        lda     ($80),y
        jsr     LF441
        ldy     #$02
        lda     ($80),y
        jsr     LC4A4
        cmp     #$00
        beq     LE597
        jmp     LA6C9

LE597:  ldy     #$02
        lda     ($80),y
        jsr     LF441
        ldy     #$02
        lda     ($80),y
        jsr     LC43D
        cmp     #$00
        beq     LE5AC
        jmp     LA6C9

LE5AC:  ldy     #$01
        lda     ($80),y
        jsr     LF455
        lda     #$28
        jsr     LF3BA
        clc
        adc     #$90
        sta     $88
        txa
        adc     #$04
        sta     $89
        ldy     #$02
        lda     ($80),y
        tay
        lda     ($88),y
        beq     LE5DA
        cmp     #$01
        beq     LE5DA
        cmp     #$02
        beq     LE5DA
        cmp     #$03
        beq     LE5DA
        jmp     LA6C9

LE5DA:  ldy     #$03
        ldx     #$00
        lda     ($80),y
        jsr     LF295
        clc
        adc     #$50
        tay
        txa
        adc     #$03
        tax
        tya
        jsr     LF457
        ldy     #$04
        lda     ($80),y
        ldx     #$00
        ldy     #$00
        jsr     LF4AA
        ldy     #$03
        lda     ($80),y
        jsr     LF295
        clc
        adc     #$50
        tay
        txa
        adc     #$03
        tax
        tya
        jsr     LF457
        ldy     #$03
        lda     ($80),y
        ldx     #$00
        dey
        jsr     LF4AA
        iny
        lda     ($80),y
        jsr     LF295
        clc
        adc     #$50
        sta     $88
        txa
        adc     #$03
        sta     $89
        lda     #$01
        iny
        sta     ($88),y
        iny
        dec     a
        sta     ($88),y
        lda     #$03
        jsr     LE7EB
        sta     ($80)
        lda     ($80)
        bne     LE656
        ldy     #$03
        tax
        lda     ($80),y
        jsr     LF295
        clc
        adc     #$50
        sta     $88
        txa
        adc     #$03
        sta     $89
        lda     #$00
        ldy     #$06
        sta     ($88),y
        iny
        bra     LE695
LE656:  lda     ($80)
        cmp     #$01
        bne     LE673
        ldy     #$03
        ldx     #$00
        lda     ($80),y
        jsr     LF295
        clc
        adc     #$50
        sta     $88
        txa
        adc     #$03
        sta     $89
        lda     #$01
        bra     LE68E
LE673:  lda     ($80)
        cmp     #$02
        bne     LE697
        ldy     #$03
        ldx     #$00
        lda     ($80),y
        jsr     LF295
        clc
        adc     #$50
        sta     $88
        txa
        adc     #$03
        sta     $89
        lda     #$02
LE68E:  ldy     #$06
        sta     ($88),y
        iny
        lda     #$00
LE695:  sta     ($88),y
LE697:  ldy     #$01
        lda     ($80),y
        jsr     LF455
        lda     #$28
        jsr     LF3BA
        clc
        adc     #$D0
        sta     $88
        txa
        adc     #$0A
        sta     $89
        ldy     #$02
        lda     ($80),y
        clc
        adc     $88
        ldx     $89
        bcc     LE6B9
        inx
LE6B9:  sta     $88
        stx     $89
        iny
        lda     ($80),y
        sta     ($88)
        ldy     #$03
        lda     ($80),y
        inc     a
        sta     ($80),y
        ldy     #$03
        lda     ($80),y
        cmp     #$28
        bcs     LE6D4
        jmp     LA558

LE6D4:  ldx     #$00
        txa
        jmp     LF375

        lda     #$00
        jsr     LF441
        jsr     LF2D7
        lda     #$00
LE6E4:  sta     ($80)
        cmp     #$14
        bcc     LE6ED
        jmp     LA819

LE6ED:  lda     #$00
        ldy     #$01
LE6F1:  sta     ($80),y
        cmp     #$28
        bcs     LE726
        lda     ($80)
        jsr     LF455
        lda     #$28
        jsr     LF3BA
        clc
        adc     #$B0
        sta     $88
        txa
        adc     #$07
        sta     $89
        ldy     #$01
        lda     ($80),y
        clc
        adc     $88
        ldx     $89
        bcc     LE717
        inx
LE717:  sta     $88
        stx     $89
        lda     #$FF
        sta     ($88)
        ldy     #$01
        lda     ($80),y
        inc     a
        bra     LE6F1
LE726:  lda     ($80)
        inc     a
        bra     LE6E4
        lda     #$28
        jsr     LE7EB
        ldy     #$01
        sta     ($80),y
        lda     #$14
        jsr     LE7EB
        sta     ($80)
        ldy     #$01
        lda     ($80),y
        cmp     #$01
        bne     LE749
        lda     ($80)
        cmp     #$01
        beq     LE74B
LE749:  lda     #$00
LE74B:  jsr     LF2B8
        bne     LE753
        jmp     LA819

LE753:  ldy     #$01
        lda     ($80),y
        jsr     LF441
        ldy     #$01
        lda     ($80),y
        jsr     LC4A4
        cmp     #$00
        beq     LE768
        jmp     LA819

LE768:  lda     ($80)
        jsr     LF455
        lda     #$28
        jsr     LF3BA
        clc
        adc     #$90
        sta     $88
        txa
        adc     #$04
        sta     $89
        ldy     #$01
        lda     ($80),y
        tay
        lda     ($88),y
        beq     LE794
        cmp     #$01
        beq     LE794
        cmp     #$02
        beq     LE794
        cmp     #$03
        beq     LE794
        jmp     LA819

LE794:  ldy     #$02
        ldx     #$00
        lda     ($80),y
        jsr     LF419
        clc
        adc     #$60
        tay
        txa
        adc     #$02
        tax
        tya
        jsr     LF457
        ldy     #$03
        lda     ($80),y
        ldx     #$00
        ldy     #$00
        jsr     LF4AA
        ldy     #$02
        lda     ($80),y
        jsr     LF419
        clc
        adc     #$60
        tay
        txa
        adc     #$02
        tax
        tya
        jsr     LF457
        ldy     #$02
        lda     ($80),y
        ldx     #$00
        jsr     LF4AA
        lda     ($80),y
        jsr     LF419
        clc
        adc     #$60
        sta     $88
        txa
        adc     #$02
        sta     $89
        lda     #$01
        ldy     #$04
LE7E3:  sta     ($88),y
        iny
        dec     a
        sta     ($88),y
        lda     ($80)
LE7EB:  jsr     LF455
        lda     #$28
        jsr     LF3BA
        clc
        adc     #$B0
        sta     $88
        txa
        adc     #$07
        sta     $89
        ldy     #$01
        lda     ($80),y
        clc
        adc     $88
        ldx     $89
        bcc     LE809
        inx
LE809:  sta     $88
        stx     $89
        iny
        lda     ($80),y
        sta     ($88)
        ldy     #$02
        lda     ($80),y
        inc     a
        sta     ($80),y
        ldy     #$02
        lda     ($80),y
        cmp     #$28
        bcs     LE824
        jmp     LA72B

LE824:  ldx     #$00
        txa
        jmp     LF370

        ldy     #$09
        jsr     LF4DA
        ldy     #$08
LE831:  lda     $FDF3,y
        sta     ($80),y
        dey
        bpl     LE831
        jsr     LF2CE
        lda     #$37
        jsr     LF455
        lda     #$11
        jsr     LC7E1
        lda     #$38
        jsr     LF455
        lda     #$12
        jsr     LC7E1
        lda     #$39
        jsr     LF455
        lda     #$13
        jsr     LC7E1
        lda     #$3A
        jsr     LF455
        lda     #$14
        jsr     LC7E1
        lda     #$3B
        jsr     LF455
        lda     #$15
        jsr     LC7E1
        lda     #$3C
        jsr     LF455
        lda     #$16
        jsr     LC7E1
        lda     #$3D
        jsr     LF455
        lda     #$17
        jsr     LC7E1
        lda     #$3E
        jsr     LF455
        lda     #$1A
        jsr     LC7E1
        lda     #$3F
        jsr     LF455
        lda     #$1B
        jsr     LC7E1
        lda     #$40
        jsr     LF455
        lda     #$1C
        jsr     LC7E1
        lda     #$41
        jsr     LF455
        lda     #$1D
        jsr     LC7E1
        lda     #$42
        jsr     LF455
        lda     #$1E
        jsr     LED69
        lda     #$43
        jsr     LF455
        lda     #$1F
        jsr     LED69
        lda     #$44
        jsr     LF455
        lda     #$20
        jsr     LED69
        lda     #$45
        jsr     LF455
        lda     #$21
        jsr     LED69
        lda     #$46
        jsr     LF455
        lda     #$22
        jsr     LED69
        lda     #$48
        jsr     LF455
        lda     #$24
        jsr     LED69
        lda     #$47
        jsr     LF455
        lda     #$23
        jsr     LED69
        lda     #$49
        jsr     LF455
        lda     #$25
        jsr     LED69
        lda     #$4A
        jsr     LF455
        lda     #$26
        jsr     LED69
        lda     #$4B
        jsr     LF455
        lda     #$27
        jsr     LED69
        lda     #$00
        sta     ($80)
        tax
LE913:  lda     ($80)
        cmp     #$0F
        bcs     LE93A
        clc
        adc     #$4C
        bcc     LE91F
        inx
LE91F:  jsr     LF457
        ldy     #$02
        ldx     #$00
        lda     ($80),y
        clc
        adc     #$28
        bcc     LE92E
        inx
LE92E:  jsr     LED69
        ldx     #$00
        lda     ($80)
        inc     a
        sta     ($80)
        bra     LE913
LE93A:  jsr     LF453
        lda     #$19
        jsr     LC7E1
        lda     #$01
        jsr     LF455
        dec     a
        jsr     LAC0C
        lda     #$02
        jsr     LF455
        dec     a
        jsr     LAC0C
        lda     #$03
        jsr     LF455
        dec     a
        jsr     LAC0C
        lda     #$04
        jsr     LF455
        lda     #$19
        jsr     LC7E1
        lda     #$05
        jsr     LF455
        lda     #$19
        jsr     LC7E1
        lda     #$06
        jsr     LF455
        lda     #$18
        jsr     LC7E1
        lda     #$08
        jsr     LF455
        lda     #$18
        jsr     LC7E1
        lda     #$07
        jsr     LF455
        lda     #$18
        jsr     LC7E1
        lda     #$00
        sta     ($80)
        tax
LE994:  lda     ($80)
        cmp     #$09
        bcs     LE9D9
        lda     $80
        ldx     $81
        clc
        adc     #$01
        bcc     LE9A5
        inx
        clc
LE9A5:  adc     ($80)
        bcc     LE9AA
        inx
LE9AA:  sta     $88
        stx     $89
        lda     ($88)
        jsr     LF455
        lda     $80
        ldx     $81
        clc
        adc     #$03
        bcc     LE9BD
        inx
LE9BD:  ldy     #$02
        clc
        adc     ($80),y
        bcc     LE9C5
        inx
LE9C5:  sta     $88
        stx     $89
        lda     ($88)
        ldx     #$00
        jsr     LC677
        ldx     #$00
        lda     ($80)
        inc     a
        sta     ($80)
        bra     LE994
LE9D9:  txa
        ldy     #$0A
        jmp     LF288

        lda     $A6
        ldx     $A7
        jsr     LF457
        lda     #$04
        sta     $A7
        lda     #$90
        sta     $A6
        lda     $A5
        jsr     LF441
        lda     $A4
        jsr     LF441
        lda     $A2
        ldx     $A3
        jsr     LF457
        stz     $A2
        stz     $A3
LEA03:  lda     $A2
        cmp     #$20
        lda     $A3
        sbc     #$03
        bvc     LEA0F
        eor     #$80
LEA0F:  asl     a
        bcc     LEA34
        lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        inc     a
        bne     LEA1E
        inx
LEA1E:  sta     $A6
        stx     $A7
        lda     #$00
        sta     ($84)
        lda     $A2
        ldx     $A3
        inc     a
        bne     LEA2E
        inx
LEA2E:  sta     $A2
        stx     $A3
        bra     LEA03
LEA34:  stz     $A2
        stz     $A3
LEA38:  lda     $A2
        cmp     #$14
        lda     $A3
        sbc     #$00
        bvc     LEA44
        eor     #$80
LEA44:  asl     a
        bcc     LEA5A
        lda     #$05
        jsr     LAB1D
        lda     $A2
        ldx     $A3
        inc     a
        bne     LEA54
        inx
LEA54:  sta     $A2
        stx     $A3
        bra     LEA38
LEA5A:  stz     $A2
        stz     $A3
LEA5E:  lda     $A2
        cmp     #$3C
        lda     $A3
        sbc     #$00
        bvc     LEA6A
        eor     #$80
LEA6A:  bpl     LEA7F
        lda     #$04
        jsr     LAB1D
        lda     $A2
        ldx     $A3
        inc     a
        bne     LEA79
        inx
LEA79:  sta     $A2
        stx     $A3
        bra     LEA5E
LEA7F:  lda     #$04
        sta     $A7
        lda     #$90
        sta     $A6
        stz     $A2
        stz     $A3
LEA8B:  lda     $A2
        cmp     #$20
        lda     $A3
        sbc     #$03
        bvc     LEA97
        eor     #$80
LEA97:  asl     a
        bcc     LEAD1
        lda     ($A6)
        sta     $A5
        lda     $A5
        bne     LEAB7
        lda     #$04
        jsr     LE7EB
        sta     $A4
        cmp     #$01
        beq     LEAB5
        cmp     #$02
        beq     LEAB5
        cmp     #$03
        bne     LEAB7
LEAB5:  sta     ($A6)
LEAB7:  lda     $A6
        ldx     $A7
        inc     a
        bne     LEABF
        inx
LEABF:  sta     $A6
        stx     $A7
        lda     $A2
        ldx     $A3
        inc     a
        bne     LEACB
        inx
LEACB:  sta     $A2
        stx     $A3
        bra     LEA8B
LEAD1:  stz     $04B9
        lda     #$0A
        jsr     LE7EB
        clc
        adc     #$0A
        bcc     LEADF
        inx
LEADF:  jsr     LF457
        lda     #$28
        jsr     LF3BA
        clc
        adc     #$90
        tay
        txa
        adc     #$04
        tax
        tya
        jsr     LF457
        lda     #$14
        jsr     LE7EB
        clc
        adc     #$14
        bcc     LEAFE
        inx
LEAFE:  jsr     LF26D
        sta     $88
        stx     $89
        lda     #$06
        ldy     #$00
        sta     ($88)
        ldx     #$00
        txa
        pha
LEB0F:  lda     ($80),y
        sta     $A2,y
        iny
        cpy     #$06
        bne     LEB0F
        pla
        jmp     LF37F

        jsr     LF441
        lda     #$28
        jsr     LE7EB
        jsr     LF441
        lda     #$14
        jsr     LE7EB
        jsr     LF441
        lda     #$04
        jsr     LE7EB
        inc     a
        jsr     LF441
        lda     #$04
        jsr     LE7EB
        inc     a
        jsr     LF441
        jsr     LF2F1
        jsr     LE7E3
        tax
        beq     LEB4F
        lda     #$FF
        bra     LEB50
LEB4F:  inc     a
LEB50:  ldy     #$03
        sta     ($80),y
        jsr     LE7E3
        tax
        beq     LEB5E
        lda     #$FF
        bra     LEB5F
LEB5E:  inc     a
LEB5F:  ldy     #$02
        sta     ($80),y
        lda     #$00
        dey
        sta     ($80),y
        tax
        lda     ($80),y
        ldy     #$04
        cmp     ($80),y
        txa
        sbc     #$00
        bcc     LEB77
        jmp     LAC05

LEB77:  lda     #$00
LEB79:  sta     ($80)
        ldy     #$05
        cmp     ($80),y
        txa
        sbc     #$00
        bcs     LEBEE
        ldy     #$07
        lda     ($80),y
        sec
        sbc     #$28
        bvc     LEB8F
        eor     #$80
LEB8F:  bpl     LEBDA
        dey
        lda     ($80),y
        sec
        sbc     #$14
        bvc     LEB9B
        eor     #$80
LEB9B:  bpl     LEBDA
        iny
        lda     ($80),y
        tax
        bmi     LEBDA
        dey
        lda     ($80),y
        tax
        bmi     LEBDA
        ldx     #$00
        lda     ($80),y
        bpl     LEBB0
        dex
LEBB0:  jsr     LF457
        lda     #$28
        jsr     LF3BA
        clc
        adc     #$90
        sta     $88
        txa
        adc     #$04
        sta     $89
        ldx     #$00
        ldy     #$07
        lda     ($80),y
        bpl     LEBCB
        dex
LEBCB:  clc
        adc     $88
        sta     $88
        txa
        adc     $89
        sta     $89
        iny
        lda     ($80),y
        sta     ($88)
LEBDA:  ldy     #$03
        lda     ($80),y
        cmp     #$80
        ldy     #$07
        clc
        adc     ($80),y
        sta     ($80),y
        ldx     #$00
        lda     ($80)
        inc     a
        bra     LEB79
LEBEE:  ldy     #$02
        lda     ($80),y
        cmp     #$80
        ldy     #$06
        clc
        adc     ($80),y
        sta     ($80),y
        ldy     #$01
        lda     ($80),y
        inc     a
        sta     ($80),y
        jmp     LAB69

        lda     #$00
        ldy     #$09
        jmp     LF288

        jsr     LF457
        lda     $A6
        ldx     $A7
        jsr     LF457
        ldy     #$05
        lda     ($80),y
        sta     $90
        dey
        lda     ($80),y
        asl     a
        rol     $90
        clc
        adc     #$B1
        sta     $88
        lda     $90
        adc     #$F8
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $A6
        stx     $A7
        lda     $A4
        ldx     $A5
        jsr     LF457
        ldy     #$05
        lda     ($80),y
        sta     $90
        dey
        lda     ($80),y
        asl     a
        rol     $90
        clc
        adc     #$B1
        sta     $88
        lda     $90
        adc     #$F8
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $A4
        stx     $A5
        lda     $A3
        jsr     LF441
        ldy     #$01
        lda     ($A4),y
        sta     $A3
        lda     $A2
        jsr     LF441
        lda     $A1
        jsr     LF441
        lda     $A0
        jsr     LF441
        lda     $9F
        jsr     LF441
        jsr     LF453
        jsr     LC40F
        sta     $A4
        stx     $A5
        stz     $A0
LEC8C:  lda     $A0
        jsr     LF455
        lda     $A3
        inc     a
        bne     LEC98
        ldx     #$01
LEC98:  jsr     LF327
        bcs     LECE8
        stz     $9F
LEC9F:  lda     $9F
        jsr     LF455
        lda     $A3
        inc     a
        bne     LECAB
        ldx     #$01
LECAB:  jsr     LF327
        bcs     LECC8
        lda     $A4
        ldx     $A5
        sta     $84
        stx     $85
        inc     a
        bne     LECBC
        inx
LECBC:  sta     $A4
        stx     $A5
        lda     #$40
        sta     ($84)
        inc     $9F
        bra     LEC9F
LECC8:  lda     #$00
        sec
        sbc     $A3
        pha
        lda     #$01
        sbc     #$00
        tax
        pla
        sec
        sbc     #$01
        bcs     LECDA
        dex
LECDA:  clc
        adc     $A4
        sta     $A4
        txa
        adc     $A5
        sta     $A5
        inc     $A0
        bra     LEC8C
LECE8:  jsr     LF2F1
        ldy     #$0E
        lda     ($80),y
        tax
        dey
        lda     ($80),y
        ldy     #$02
        sta     ($80),y
        iny
        txa
        sta     ($80),y
        lda     #$01
        sta     ($80)
        tay
        dec     a
        sta     ($80),y
        tax
        tya
        jsr     LE20D
        lda     #$01
        jsr     LF455
        lda     $A3
        jsr     LC40F
        sta     $A4
        stx     $A5
        lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        inc     a
        bne     LED22
        inx
LED22:  sta     $A6
        stx     $A7
        lda     $A3
        ldy     #$00
        sta     ($84)
        lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        inc     a
        bne     LED38
        inx
LED38:  sta     $A6
        stx     $A7
        lda     $A3
        sta     ($84)
        stz     $A0
        ldx     #$00
        lda     $A0
        cmp     $A3
        txa
        bcc     LED4E
        jmp     LAE12

LED4E:  inc     a
        sta     $A2
        lda     ($A4)
        sta     $A1
        lda     $A4
        sec
        sbc     #$00
        sta     $A4
        lda     $A5
        sbc     #$01
        sta     $A5
        stz     $9F
LED64:  lda     $9F
        jsr     LF455
LED69:  lda     $A3
        sec
        sbc     #$01
        bcs     LED72
        ldx     #$FF
LED72:  jsr     LF327
        bcs     LEDC2
        lda     ($A4)
        cmp     $A1
        bne     LED81
        inc     $A2
        bra     LEDB1
LED81:  lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        inc     a
        bne     LED8D
        inx
LED8D:  sta     $A6
        stx     $A7
        lda     $A2
        sta     ($84)
        lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        inc     a
        bne     LEDA1
        inx
LEDA1:  sta     $A6
        stx     $A7
        lda     $A1
        sta     ($84)
        lda     #$01
        sta     $A2
        lda     ($A4)
        sta     $A1
LEDB1:  lda     $A4
        sec
        sbc     #$00
        sta     $A4
        lda     $A5
        sbc     #$01
        sta     $A5
        inc     $9F
        bra     LED64
LEDC2:  lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        inc     a
        bne     LEDCE
        inx
LEDCE:  sta     $A6
        stx     $A7
        lda     $A2
        ldy     #$00
        sta     ($84)
        lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        inc     a
        bne     LEDE4
        inx
LEDE4:  sta     $A6
        stx     $A7
        lda     $A1
        sta     ($84)
        lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        inc     a
        bne     LEDF8
        inx
LEDF8:  sta     $A6
        stx     $A7
        tya
        sta     ($84)
        inc     a
        clc
        adc     $A4
        sta     $A4
        lda     $A3
        adc     $A5
        sta     $A5
        ldx     #$00
        inc     $A0
        jmp     LAD44

        pha
LEE13:  lda     ($80),y
        sta     $9F,y
        iny
        cpy     #$09
        bne     LEE13
        pla
        ldy     #$0D
        jmp     LF288

        jsr     LF2CE
        stz     $021C
        lda     #$28
        sta     $021D
        stz     $020B
        stz     $020E
        stz     $0210
        lda     #$01
        sta     $021E
        lda     #$32
        sta     $021F
        sta     $0220
        sta     $0221
        stz     $0222
        stz     $0228
        stz     $022D
        lda     #$05
        sta     $022E
        lda     #$0A
        sta     $022F
        lda     #$0F
        sta     $0230
        lda     #$14
        sta     $0231
        lda     #$00
LEE66:  sta     ($80)
        cmp     #$1E
        bcs     LEE79
        lda     ($80)
        tay
        lda     #$20
        sta     $0232,y
        lda     ($80)
        inc     a
        bra     LEE66
LEE79:  lda     #$00
        sta     ($80)
        tax
LEE7E:  lda     ($80)
        cmp     #$0F
        bcs     LEE91
        tay
        lda     #$00
        sta     $0250,y
        lda     ($80)
        inc     a
        sta     ($80)
        bra     LEE7E
LEE91:  lda     #$00
        jmp     LF353

        jsr     LF2CE
        lda     #$00
LEE9B:  sta     ($80)
        cmp     #$0F
        bcs     LEF18
        ldx     #$00
        lda     ($80)
        asl     a
        bcc     LEEAA
        inx
        clc
LEEAA:  adc     #$93
        sta     $88
        txa
        adc     #$F8
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        jsr     LF457
        ldy     #$02
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LEEC8
        inx
        clc
LEEC8:  adc     #$ED
        sta     $88
        txa
        adc     #$83
        sta     $89
        dey
        lda     ($88),y
        tax
        lda     ($88)
        jsr     L9977
        ldx     #$00
        lda     ($80)
        asl     a
        bcc     LEEE3
        inx
        clc
LEEE3:  adc     #$75
        sta     $88
        txa
        adc     #$F8
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        jsr     LF457
        ldy     #$02
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LEF01
        inx
        clc
LEF01:  adc     #$CF
        sta     $88
        txa
        adc     #$83
        sta     $89
        dey
        lda     ($88),y
        tax
        lda     ($88)
        jsr     L9977
        lda     ($80)
        inc     a
        bra     LEE9B
LEF18:  lda     #$00
        sta     ($80)
        tax
LEF1D:  lda     ($80)
        cmp     #$19
        bcs     LEF61
        asl     a
        bcc     LEF28
        inx
        clc
LEF28:  adc     #$90
        sta     $88
        txa
        adc     #$F5
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        jsr     LF457
        ldy     #$02
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LEF46
        inx
        clc
LEF46:  adc     #$F7
        sta     $88
        txa
        adc     #$80
        sta     $89
        dey
        lda     ($88),y
        tax
        lda     ($88)
        jsr     L9977
        ldx     #$00
        lda     ($80)
        inc     a
        sta     ($80)
        bra     LEF1D
LEF61:  txa
        jmp     LF353


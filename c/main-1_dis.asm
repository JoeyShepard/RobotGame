; da65 V2.18 - Git 28584b3
; Created:    2020-06-28 22:04:28
; Input file: C:\Users\druzy\Google Drive\Electronics\6502\CC65\projects\RobotGame\\main-1.bin
; Page:       1


        .setcpu "65C02"

L0024           := $0024
L0073           := $0073
L042A           := $042A
L2020           := $2020
L2048           := $2048
L2073           := $2073
L2420           := $2420
L242D           := $242D
L2524           := $2524
L2B00           := $2B00
L3100           := $3100
L3A6C           := $3A6C
L4200           := $4200
L4800           := $4800
L5048           := $5048
L6142           := $6142
L614C           := $614C
L694D           := $694D
L6964           := $6964
L6B0F           := $6B0F
L6F72           := $6F72
L7243           := $7243
L7244           := $7244
L7324           := $7324
L7661           := $7661
L7845           := $7845
L99C2           := $99C2
L9DAC           := $9DAC
LA504           := $A504
LA6DA           := $A6DA
LA82A           := $A82A
LA9DF           := $A9DF
LAE23           := $AE23
LAE94           := $AE94
LFD5B           := $FD5B
LFD61           := $FD61
LFFFF           := $FFFF
        lda     #$00
        ldx     #$40
        sta     $80
        stx     $81
        jsr     LF453
        jsr     LC017
        jsr     LE8EC
        pha
        jsr     LF1CE
        pla
        rts

LC017:  ldy     #$00
        beq     LC022
        lda     #$23
        ldx     #$C0
        jmp     LFD15

LC022:  rts

LC023:  jsr     LF34D
        jsr     LF1DA
        ldy     #$01
        lda     ($80),y
        clc
        adc     $021A
        sta     $021A
        cmp     $021B
        bcc     LC09F
        lda     $021B
        eor     #$FF
        sec
        adc     $021A
        sta     $021A
        lda     #$0A
        clc
        adc     $021B
        sta     $021B
        inc     $021C
        inc     $0220
        lda     $0207
        sta     $0205
        lda     $0206
        sta     $0204
        lda     $020B
        sta     $020A
        lda     $0259
        cmp     #$01
        bne     LC09F
        lda     #$03
        jsr     LEA3A
        sta     ($80)
        lda     ($80)
        bne     LC084
        lda     #$05
        clc
        adc     $021E
        sta     $021E
        jmp     LF26E

LC084:  lda     ($80)
        cmp     #$01
        bne     LC096
        lda     #$05
        clc
        adc     $021D
        sta     $021D
        jmp     LF26E

LC096:  lda     #$05
        clc
        adc     $021F
        sta     $021F
LC09F:  jmp     LF26E

LC0A2:  jsr     LF217
        lda     #$00
        jsr     LF34D
        jsr     LF34D
        lda     $0209
        clc
        adc     #$02
        sta     $0208
        lda     $020C
        clc
        adc     #$03
        sta     $020B
        lda     $020E
        sta     $020D
        lda     #$08
        sta     $020F
        lda     #$0C
        sta     $0210
        lda     #$01
        sta     $0212
        lda     #$05
        sta     $0213
        stz     $0214
        stz     $0211
        dec     a
        sta     $0215
        stz     $0216
        sta     $0217
        lda     #$02
        sta     $0218
        sta     $0219
        lda     #$00
        ldy     #$07
LC0F5:  sta     ($80),y
        cmp     #$05
        bcc     LC0FE
        jmp     LC277

LC0FE:  lda     #$00
        dey
LC101:  sta     ($80),y
        lda     ($80),y
        jsr     LF361
        ldy     #$09
        lda     ($80),y
        tay
        lda     $022B,y
        asl     a
        bcc     LC116
        ldx     #$01
        clc
LC116:  adc     #$21
        sta     $88
        txa
        adc     #$F6
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $88
        stx     $89
        ldy     #$04
        lda     ($88),y
        jsr     LF231
        bcc     LC136
        jmp     LC26F

LC136:  ldy     #$07
        lda     ($80),y
        tay
        ldx     #$00
        lda     $022B,y
        asl     a
        bcc     LC145
        inx
        clc
LC145:  adc     #$21
        sta     $88
        txa
        adc     #$F6
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $88
        stx     $89
        ldx     #$00
        ldy     #$06
        lda     ($80),y
        asl     a
        bcc     LC164
        inx
        clc
LC164:  adc     #$05
        bcc     LC16A
        inx
        clc
LC16A:  adc     $88
        sta     $88
        txa
        adc     $89
        sta     $89
        lda     ($88)
        ldy     #$03
        sta     ($80),y
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LC182
        inx
        clc
LC182:  adc     #$05
        sta     $88
        txa
        adc     #$F7
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        ldy     #$04
        jsr     LF3AD
        ldy     #$07
        lda     ($80),y
        tay
        ldx     #$00
        lda     $022B,y
        asl     a
        bcc     LC1A6
        inx
        clc
LC1A6:  adc     #$21
        sta     $88
        txa
        adc     #$F6
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $88
        stx     $89
        ldx     #$00
        ldy     #$06
        lda     ($80),y
        asl     a
        bcc     LC1C5
        inx
        clc
LC1C5:  adc     #$05
        bcc     LC1CA
        inx
LC1CA:  inc     a
        bne     LC1CE
        inx
LC1CE:  clc
        adc     $88
        sta     $88
        txa
        adc     $89
        sta     $89
        lda     ($88)
        ldy     #$02
        sta     ($80),y
        ldy     #$04
        lda     ($80),y
        iny
        ora     ($80),y
        bne     LC24A
        ldy     #$03
        lda     ($80),y
        cmp     #$03
        beq     LC209
        cmp     #$04
        beq     LC217
        cmp     #$07
        beq     LC21E
        cmp     #$08
        beq     LC22C
        cmp     #$0B
        beq     LC232
        cmp     #$0C
        beq     LC23C
        cmp     #$0D
        beq     LC243
        bra     LC267
LC209:  dey
        lda     ($80),y
        eor     #$FF
        sec
        adc     $020F
        sta     $020F
        bra     LC267
LC217:  lda     #$01
        tay
        sta     ($80),y
        bra     LC267
LC21E:  dey
        lda     ($80),y
        eor     #$FF
        sec
        adc     $0210
        sta     $0210
        bra     LC267
LC22C:  lda     #$01
        sta     ($80)
        bra     LC267
LC232:  lda     #$FF
        sta     $0215
        sta     $0216
        bra     LC267
LC23C:  lda     #$02
        sta     $0217
        bra     LC267
LC243:  lda     #$01
        sta     $0218
        bra     LC267
LC24A:  lda     ($80),y
        tax
        dey
        lda     ($80),y
        jsr     LF363
        sta     $88
        stx     $89
        lda     ($88)
        sta     $88
        ldy     #$04
        lda     ($80),y
        clc
        adc     $88
        ldy     #$00
        jsr     LF395
LC267:  ldy     #$06
        lda     ($80),y
        inc     a
        jmp     LC101

LC26F:  ldy     #$07
        lda     ($80),y
        inc     a
        jmp     LC0F5

LC277:  lda     $0250
        cmp     #$01
        bne     LC290
        lda     $020F
        sec
        sbc     #$02
        sta     $020F
        lda     $0210
        sec
        sbc     #$02
        sta     $0210
LC290:  ldy     #$01
        lda     ($80),y
        cmp     #$01
        bne     LC29B
        sta     $020F
LC29B:  lda     ($80)
        cmp     #$01
        bne     LC2A4
        sta     $0210
LC2A4:  lda     $0253
        cmp     #$01
        bne     LC2B4
        lda     #$14
        clc
        adc     $0213
        sta     $0213
LC2B4:  lda     $0216
        cmp     #$FF
        bne     LC2C2
        lda     $0215
        cmp     #$FF
        beq     LC2DC
LC2C2:  lda     $0211
        cmp     #$19
        bne     LC2CD
        lda     #$03
        bra     LC2D6
LC2CD:  lda     $0211
        cmp     #$32
        bne     LC2DC
        lda     #$02
LC2D6:  sta     $0215
        stz     $0216
LC2DC:  stz     $0207
        lda     $0208
        sta     $0206
        lda     $0204
        ldx     $0205
        jsr     LF363
        lda     $0206
        ldx     $0207
        jsr     LF233
        bmi     LC307
        beq     LC307
        lda     $0207
        sta     $0205
        lda     $0206
        sta     $0204
LC307:  lda     $020A
        sec
        sbc     $020B
        bcc     LC318
        beq     LC318
        lda     $020B
        sta     $020A
LC318:  jmp     LF295

LC31B:  jsr     LF363
        lda     LF496
        ldx     LF497
        jsr     LF363
        ldy     #$02
        lda     ($80),y
        tax
        lda     #$00
        jsr     LF179
        sta     $88
        stx     $89
        ldy     #$03
        lda     ($80),y
        tax
        dey
        lda     ($80),y
        clc
        adc     $88
        pha
        txa
        adc     $89
        tax
        pla
        jmp     LF281

LC349:  jsr     LF34D
        lda     ($80)
        jsr     LF361
        lda     #$28
        jsr     LF2C6
        clc
        adc     #$D4
        sta     $88
        txa
        adc     #$0A
        sta     $89
        ldy     #$01
        lda     ($80),y
        tay
        ldx     #$00
        lda     ($88),y
        cmp     #$FF
        beq     LC3AC
        lda     ($80)
        jsr     LF361
        lda     #$28
        jsr     LF2C6
        clc
        adc     #$D4
        sta     $88
        txa
        adc     #$0A
        sta     $89
        ldy     #$01
        lda     ($80),y
        tay
        ldx     #$00
        lda     ($88),y
        jsr     LF1A1
        clc
        adc     #$54
        sta     $88
        txa
        adc     #$03
        sta     $89
        ldy     #$05
        lda     ($88),y
        tax
        dey
        lda     ($88),y
        cpx     #$00
        bne     LC3AA
        cmp     #$01
        bne     LC3AC
        jmp     LF26E

LC3AA:  ldx     #$00
LC3AC:  txa
        jmp     LF26E

LC3B0:  jsr     LF34D
        lda     ($80)
        jsr     LF361
        lda     #$28
        jsr     LF2C6
        clc
        adc     #$B4
        sta     $88
        txa
        adc     #$07
        sta     $89
        ldy     #$01
        lda     ($80),y
        tay
        ldx     #$00
        lda     ($88),y
        cmp     #$FF
        beq     LC413
        lda     ($80)
        jsr     LF361
        lda     #$28
        jsr     LF2C6
        clc
        adc     #$B4
        sta     $88
        txa
        adc     #$07
        sta     $89
        ldy     #$01
        lda     ($80),y
        tay
        ldx     #$00
        lda     ($88),y
        jsr     LF325
        clc
        adc     #$64
        sta     $88
        txa
        adc     #$02
        sta     $89
        ldy     #$05
        lda     ($88),y
        tax
        dey
        lda     ($88),y
        cpx     #$00
        bne     LC411
        cmp     #$01
        bne     LC413
        jmp     LF26E

LC411:  ldx     #$00
LC413:  txa
        jmp     LF26E

LC417:  lda     $0204
        ldx     $0205
        jsr     LF363
        lda     $0206
        ldx     $0207
        jsr     LF233
        bmi     LC43A
        beq     LC43A
        lda     $0207
        sta     $0205
        lda     $0206
        sta     $0204
        rts

LC43A:  lda     $0204
        cmp     #$01
        lda     $0205
        sbc     #$00
        bvc     LC448
        eor     #$80
LC448:  bpl     LC498
        jsr     LE8DA
        stz     $0204
        stz     $0205
        jsr     LC970
        jsr     LD178
        jsr     LF1FD
        lda     #$64
        ldy     #$03
        sta     ($80),y
        lda     #$38
        dey
        sta     ($80),y
        dec     a
        dey
        sta     ($80),y
        lda     #$0F
        sta     ($80)
        lda     #$00
        jsr     LDB31
        jsr     LF20A
        lda     #$AE
        ldy     #$03
        sta     ($80),y
        iny
        lda     #$FC
        sta     ($80),y
        lda     #$68
        ldy     #$02
        sta     ($80),y
        lda     #$3C
        dey
        sta     ($80),y
        lda     #$3F
        sta     ($80)
        lda     #$00
        jsr     LE1A7
LC496:  bra     LC496
LC498:  rts

        jsr     LF34D
        lda     $A6
        ldx     $A7
        jsr     LF363
        lda     LF497
        sta     $A7
        lda     LF496
        sta     $A6
        lda     $A4
        ldx     $A5
        jsr     LF363
        stz     $A4
        stz     $A5
LC4B8:  ldx     $A5
        cpx     #$80
        bcs     LC4E2
        lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        inc     a
        bne     LC4CA
        inx
LC4CA:  sta     $A6
        stx     $A7
        ldy     #$04
        lda     ($80),y
        sta     ($84)
        lda     $A4
        ldx     $A5
        inc     a
        bne     LC4DC
        inx
LC4DC:  sta     $A4
        stx     $A5
        bra     LC4B8
LC4E2:  ldy     #$00
LC4E4:  lda     ($80),y
        sta     $A4,y
        iny
        cpy     #$04
        bne     LC4E4
        jmp     LF286

LC4F1:  lda     #$09
        jsr     LF361
        lda     #$3C
        jsr     LC6DA
        lda     #$09
        jsr     LF361
        lda     $022B
        jsr     LC573
        lda     #$09
        jsr     LF361
        lda     $022C
        jsr     LC573
        lda     #$09
        jsr     LF361
        lda     $022D
        jsr     LC573
        lda     #$09
        jsr     LF361
        lda     $022E
        jsr     LC573
        lda     #$09
        jsr     LF361
        lda     $022F
        jsr     LC573
        lda     #$0A
        jsr     LF361
        lda     #$3D
        jsr     LC6DA
        lda     #$0A
        jsr     LF361
        lda     $022B
        jsr     LC573
        lda     #$0A
        jsr     LF361
        lda     $022C
        jsr     LC573
        lda     #$0A
        jsr     LF361
        lda     $022D
        jsr     LC573
        lda     #$0A
        jsr     LF361
        lda     $022E
        jsr     LC573
        lda     #$0A
        jsr     LF361
        lda     $022F
        jmp     LC573

LC573:  jsr     LF363
        lda     $A6
        ldx     $A7
        jsr     LF363
        ldy     #$05
        lda     ($80),y
        sta     $90
        dey
        lda     ($80),y
        asl     a
        rol     $90
        clc
        adc     #$BD
        sta     $88
        lda     $90
        adc     #$F7
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $A6
        stx     $A7
        lda     $A5
        jsr     LF34D
        lda     $A4
        jsr     LF34D
        lda     $A3
        jsr     LF34D
        lda     $A1
        ldx     $A2
        jsr     LF363
        lda     $A0
        jsr     LF34D
        lda     $9F
        jsr     LF34D
        jsr     LF1DA
        ldy     #$0D
        lda     ($80),y
        tax
        dey
        lda     ($80),y
        cpx     #$00
        bne     LC600
        cmp     #$09
        beq     LC5EA
        cmp     #$0A
        beq     LC5EA
        cmp     #$0B
        beq     LC5EA
        cmp     #$0C
        beq     LC5EA
        cmp     #$0D
        beq     LC5EA
        cmp     #$0E
        beq     LC5EA
        cmp     #$0F
        bne     LC600
LC5EA:  dey
        lda     ($80),y
        sta     $90
        dey
        lda     ($80),y
        asl     a
        rol     $90
        clc
        adc     #$15
        sta     $88
        lda     $90
        adc     #$FC
        bra     LC614
LC600:  dey
        lda     ($80),y
        sta     $90
        dey
        lda     ($80),y
        asl     a
        rol     $90
        clc
        adc     #$47
        sta     $88
        lda     $90
        adc     #$FC
LC614:  sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $A1
        stx     $A2
        ldy     #$01
        lda     ($A6),y
        sta     $A5
        lda     ($A1),y
        asl     a
        sta     $A0
        lda     #$02
        clc
        adc     $A6
        sta     $A6
        bcs     LC638
        jmp     LC6C2

LC638:  inc     $A7
        jmp     LC6C2

LC63D:  lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        inc     a
        bne     LC649
        inx
LC649:  sta     $A6
        stx     $A7
        lda     ($84)
        sta     $A4
        lda     $A4
        bne     LC659
        dec     $A5
        bra     LC6C2
LC659:  lda     ($A6)
        sta     $A3
        cmp     #$41
        bcc     LC6B6
        lda     #$00
        sta     ($80)
LC665:  sta     $9F
        lda     $9F
        cmp     $A0
        bcs     LC6B1
        lda     $A3
        jsr     LF361
        lda     $9F
        clc
        adc     #$02
        bcc     LC67C
        ldx     #$01
        clc
LC67C:  adc     $A1
        sta     $88
        txa
        adc     $A2
        sta     $89
        lda     ($88)
        jsr     LF231
        bne     LC6AA
        ldx     #$00
        lda     $9F
        clc
        adc     #$03
        bcc     LC697
        inx
        clc
LC697:  adc     $A1
        sta     $88
        txa
        adc     $A2
        sta     $89
        lda     ($88)
        sta     ($A6)
        lda     #$01
        sta     ($80)
        bra     LC6B1
LC6AA:  lda     #$02
        clc
        adc     $9F
        bra     LC665
LC6B1:  lda     ($80)
        jsr     LF2A0
LC6B6:  lda     $A6
        ldx     $A7
        inc     a
        bne     LC6BE
        inx
LC6BE:  sta     $A6
        stx     $A7
LC6C2:  lda     $A5
        beq     LC6C9
        jmp     LC63D

LC6C9:  ldy     #$01
LC6CB:  lda     ($80),y
        sta     $9E,y
        iny
        cpy     #$0A
        bne     LC6CB
        ldy     #$0E
        jmp     LF194

LC6DA:  jsr     LF363
        lda     $A6
        ldx     $A7
        jsr     LF363
        ldy     #$05
        lda     ($80),y
        sta     $90
        dey
        lda     ($80),y
        asl     a
        rol     $90
        clc
        adc     #$BD
        sta     $88
        lda     $90
        adc     #$F7
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $A6
        stx     $A7
        lda     $A4
        ldx     $A5
        jsr     LF363
        ldy     #$05
        lda     ($80),y
        sta     $90
        dey
        lda     ($80),y
        asl     a
        rol     $90
        clc
        adc     #$BD
        sta     $88
        lda     $90
        adc     #$F7
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $A4
        stx     $A5
        lda     $A3
        jsr     LF34D
        ldy     #$01
        lda     ($A4),y
        sta     $A3
        lda     $A2
        jsr     LF34D
        lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        inc     a
        bne     LC74B
        inx
LC74B:  sta     $A6
        stx     $A7
        lda     $84
        ldx     $85
        jsr     LF363
        lda     $A4
        ldx     $A5
        sta     $84
        stx     $85
        inc     a
        bne     LC762
        inx
LC762:  sta     $A4
        stx     $A5
        ldy     #$00
        lda     ($84)
        jsr     LF395
        bra     LC79F
LC76F:  lda     $A4
        ldx     $A5
        sta     $84
        stx     $85
        inc     a
        bne     LC77B
        inx
LC77B:  sta     $A4
        stx     $A5
        lda     ($84)
        sta     $A2
        lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        inc     a
        bne     LC78F
        inx
LC78F:  sta     $A6
        stx     $A7
        lda     $A2
        sta     ($84)
        lda     $A2
        bne     LC79F
        dec     $A3
        bra     LC7CD
LC79F:  lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        inc     a
        bne     LC7AB
        inx
LC7AB:  sta     $A6
        stx     $A7
        lda     $84
        ldx     $85
        jsr     LF363
        lda     $A4
        ldx     $A5
        sta     $84
        stx     $85
        inc     a
        bne     LC7C2
        inx
LC7C2:  sta     $A4
        stx     $A5
        ldy     #$00
        lda     ($84)
        jsr     LF395
LC7CD:  lda     $A3
        bne     LC76F
        tay
LC7D2:  lda     ($80),y
        sta     $A2,y
        iny
        cpy     #$06
        bne     LC7D2
        ldy     #$0A
        jmp     LF194

LC7E1:  jsr     LF34D
        lda     $A7
        jsr     LF34D
        ldy     #$04
        lda     ($80),y
        jsr     LF361
        lda     #$50
        jsr     LF2C6
        jsr     LF363
        ldy     #$05
        lda     ($80),y
        jsr     LF3F3
        sta     $A7
        jsr     LF1FD
        ldy     #$0A
        lda     ($80),y
        ldy     #$03
        sta     ($80),y
        ldy     #$09
        lda     ($80),y
        ldy     #$02
        sta     ($80),y
        lda     $A7
        dey
        sta     ($80),y
        lda     #$06
        sta     ($80)
        tay
        lda     ($80),y
        jsr     LDB31
        jsr     LF1FD
        ldy     #$0A
        lda     ($80),y
        clc
        adc     $A7
        ldy     #$03
        sta     ($80),y
        ldy     #$09
        lda     ($80),y
        ldy     #$02
        sta     ($80),y
        lda     #$50
        sec
        sbc     $A7
        dey
        sta     ($80),y
        lda     #$06
        sta     ($80)
        ldy     #$05
        lda     ($80),y
        jsr     LDB31
        ldx     #$00
        txa
        pha
        lda     ($80)
        sta     $A7
        pla
        jmp     LF290

LC858:  jsr     LF34D
        lda     $A6
        ldx     $A7
        jsr     LF363
        ldy     #$07
        lda     ($80),y
        jsr     LF361
        ldy     #$08
        lda     ($80),y
        jsr     LC31B
        sta     $A6
        stx     $A7
        lda     $A4
        ldx     $A5
        jsr     LF363
        ldy     #$07
        lda     ($80),y
        tax
        dey
        lda     ($80),y
        sec
        sbc     #$01
        bcs     LC889
        dex
LC889:  jsr     LF3AD
        ldy     #$05
        lda     ($80),y
        dec     a
        sta     ($80),y
        stz     $A4
        stz     $A5
LC897:  lda     $A4
        ldy     #$06
        cmp     ($80),y
        lda     $A5
        iny
        sbc     ($80),y
        bcs     LC8C8
        lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        inc     a
        bne     LC8B0
        inx
LC8B0:  sta     $A6
        stx     $A7
        ldy     #$04
        lda     ($80),y
        sta     ($84)
        lda     $A4
        ldx     $A5
        inc     a
        bne     LC8C2
        inx
LC8C2:  sta     $A4
        stx     $A5
        bra     LC897
LC8C8:  stz     $A4
        stz     $A5
LC8CC:  lda     $A4
        ldy     #$05
        cmp     ($80),y
        lda     $A5
        sbc     #$00
        bcs     LC8F8
        dey
        lda     ($80),y
        sta     ($A6)
        lda     #$00
        clc
        adc     $A6
        sta     $A6
        lda     #$01
        adc     $A7
        sta     $A7
        lda     $A4
        ldx     $A5
        inc     a
        bne     LC8F2
        inx
LC8F2:  sta     $A4
        stx     $A5
        bra     LC8CC
LC8F8:  stz     $A4
        stz     $A5
LC8FC:  lda     $A4
        ldy     #$06
        cmp     ($80),y
        lda     $A5
        iny
        sbc     ($80),y
        bcs     LC92F
        lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        sec
        sbc     #$01
        bcs     LC917
        dex
LC917:  sta     $A6
        stx     $A7
        ldy     #$04
        lda     ($80),y
        sta     ($84)
        lda     $A4
        ldx     $A5
        inc     a
        bne     LC929
        inx
LC929:  sta     $A4
        stx     $A5
        bra     LC8FC
LC92F:  stz     $A4
        stz     $A5
LC933:  lda     $A4
        ldy     #$05
        cmp     ($80),y
        lda     $A5
        sbc     #$00
        bcs     LC95F
        dey
        lda     ($80),y
        sta     ($A6)
        lda     $A6
        sec
        sbc     #$00
        sta     $A6
        lda     $A7
        sbc     #$01
        sta     $A7
        lda     $A4
        ldx     $A5
        inc     a
        bne     LC959
        inx
LC959:  sta     $A4
        stx     $A5
        bra     LC933
LC95F:  ldy     #$00
LC961:  lda     ($80),y
        sta     $A4,y
        iny
        cpy     #$04
        bne     LC961
        ldy     #$0A
        jmp     LF194

LC970:  jsr     LF1E3
        lda     #$00
        ldy     #$01
LC977:  sta     ($80),y
        cmp     #$04
        bcc     LC980
        jmp     LCD1F

LC980:  lda     #$00
LC982:  sta     ($80)
        cmp     #$05
        bcc     LC98B
        jmp     LCD17

LC98B:  ldy     #$01
        ldx     #$00
        lda     ($80),y
        clc
        adc     $0201
        bcc     LC998
        inx
LC998:  jsr     LF363
        lda     #$28
        jsr     LF2C6
        clc
        adc     #$94
        sta     $88
        txa
        adc     #$04
        sta     $89
        ldx     #$00
        lda     ($80)
        clc
        adc     $0200
        bcc     LC9B6
        inx
        clc
LC9B6:  adc     $88
        sta     $88
        txa
        adc     $89
        sta     $89
        lda     ($88)
        beq     LC9DD
        cmp     #$01
        beq     LC9E9
        cmp     #$02
        beq     LC9F0
        cmp     #$03
        beq     LC9F7
        cmp     #$04
        beq     LC9FE
        cmp     #$05
        beq     LCA05
        cmp     #$06
        beq     LCA0C
        bra     LCA41
LC9DD:  jsr     LF1FD
        lda     #$00
        ldy     #$02
        sta     ($80),y
        iny
        bra     LCA18
LC9E9:  jsr     LF1FD
        lda     #$01
        bra     LCA11
LC9F0:  jsr     LF1FD
        lda     #$02
        bra     LCA11
LC9F7:  jsr     LF1FD
        lda     #$03
        bra     LCA11
LC9FE:  jsr     LF1FD
        lda     #$04
        bra     LCA11
LCA05:  jsr     LF1FD
        lda     #$05
        bra     LCA11
LCA0C:  jsr     LF1FD
        lda     #$45
LCA11:  ldy     #$02
        sta     ($80),y
        iny
        lda     #$00
LCA18:  sta     ($80),y
        iny
        tax
        lda     ($80),y
        jsr     LF1AF
        stx     $90
        asl     a
        rol     $90
        sta     ($80)
        ldy     #$01
        lda     $90
        sta     ($80),y
        ldy     #$05
        ldx     #$00
        lda     ($80),y
        jsr     LF1AF
        stx     $90
        asl     a
        rol     $90
        ldx     $90
        jsr     LE435
LCA41:  ldy     #$01
        ldx     #$00
        lda     ($80),y
        clc
        adc     $0201
        bcc     LCA4E
        inx
LCA4E:  jsr     LF363
        lda     #$28
        jsr     LF2C6
        clc
        adc     #$B4
        sta     $88
        txa
        adc     #$07
        sta     $89
        ldx     #$00
        lda     ($80)
        clc
        adc     $0200
        bcc     LCA6C
        inx
        clc
LCA6C:  adc     $88
        sta     $88
        txa
        adc     $89
        sta     $89
        lda     ($88)
        cmp     #$FF
        bne     LCA7E
        jmp     LCB18

LCA7E:  ldy     #$01
        ldx     #$00
        lda     ($80),y
        clc
        adc     $0201
        bcc     LCA8B
        inx
LCA8B:  jsr     LF363
        lda     #$28
        jsr     LF2C6
        clc
        adc     #$B4
        sta     $88
        txa
        adc     #$07
        sta     $89
        ldx     #$00
        lda     ($80)
        clc
        adc     $0200
        bcc     LCAA9
        inx
        clc
LCAA9:  adc     $88
        sta     $88
        txa
        adc     $89
        sta     $89
        ldx     #$00
        lda     ($88)
        jsr     LF325
        clc
        adc     #$64
        sta     $88
        txa
        adc     #$02
        sta     $89
        ldy     #$05
        lda     ($88),y
        tax
        dey
        lda     ($88),y
        cpx     #$00
        bne     LCAE3
        cmp     #$01
        bne     LCAE3
        jsr     LF1FD
        lda     #$3E
        ldy     #$02
        sta     ($80),y
        iny
        txa
        sta     ($80),y
        iny
        bra     LCAF3
LCAE3:  jsr     LF1FD
        lda     #$3F
        ldy     #$02
        sta     ($80),y
        iny
        lda     #$00
        sta     ($80),y
        iny
        tax
LCAF3:  lda     ($80),y
        jsr     LF1AF
        stx     $90
        asl     a
        rol     $90
        sta     ($80)
        ldy     #$01
        lda     $90
        sta     ($80),y
        ldy     #$05
        ldx     #$00
        lda     ($80),y
        jsr     LF1AF
        stx     $90
        asl     a
        rol     $90
        ldx     $90
        jsr     LE435
LCB18:  ldy     #$01
        ldx     #$00
        lda     ($80),y
        clc
        adc     $0201
        bcc     LCB25
        inx
LCB25:  jsr     LF363
        lda     #$28
        jsr     LF2C6
        clc
        adc     #$D4
        sta     $88
        txa
        adc     #$0A
        sta     $89
        ldx     #$00
        lda     ($80)
        clc
        adc     $0200
        bcc     LCB43
        inx
        clc
LCB43:  adc     $88
        sta     $88
        txa
        adc     $89
        sta     $89
        lda     ($88)
        cmp     #$FF
        bne     LCB55
        jmp     LCD11

LCB55:  ldy     #$01
        ldx     #$00
        lda     ($80),y
        clc
        adc     $0201
        bcc     LCB62
        inx
LCB62:  jsr     LF363
        lda     #$28
        jsr     LF2C6
        clc
        adc     #$D4
        sta     $88
        txa
        adc     #$0A
        sta     $89
        ldx     #$00
        lda     ($80)
        clc
        adc     $0200
        bcc     LCB80
        inx
        clc
LCB80:  adc     $88
        sta     $88
        txa
        adc     $89
        sta     $89
        ldx     #$00
        lda     ($88)
        jsr     LF1A1
        clc
        adc     #$54
        sta     $88
        txa
        adc     #$03
        sta     $89
        ldy     #$05
        lda     ($88),y
        tax
        dey
        lda     ($88),y
        cpx     #$00
        beq     LCBA9
        jmp     LCCDC

LCBA9:  cmp     #$01
        beq     LCBB0
        jmp     LCCDC

LCBB0:  tay
        lda     ($80),y
        clc
        adc     $0201
        bcc     LCBBA
        inx
LCBBA:  jsr     LF363
        lda     #$28
        jsr     LF2C6
        clc
        adc     #$D4
        sta     $88
        txa
        adc     #$0A
        sta     $89
        ldx     #$00
        lda     ($80)
        clc
        adc     $0200
        bcc     LCBD8
        inx
        clc
LCBD8:  adc     $88
        sta     $88
        txa
        adc     $89
        sta     $89
        ldx     #$00
        lda     ($88)
        jsr     LF1A1
        clc
        adc     #$54
        sta     $88
        txa
        adc     #$03
        sta     $89
        ldy     #$07
        lda     ($88),y
        tax
        dey
        lda     ($88),y
        cpx     #$00
        bne     LCC12
        cmp     #$00
        bne     LCC12
        jsr     LF1FD
        tya
        ldy     #$02
        sta     ($80),y
        iny
        txa
        sta     ($80),y
        iny
        jmp     LCCEC

LCC12:  ldy     #$01
        ldx     #$00
        lda     ($80),y
        clc
        adc     $0201
        bcc     LCC1F
        inx
LCC1F:  jsr     LF363
        lda     #$28
        jsr     LF2C6
        clc
        adc     #$D4
        sta     $88
        txa
        adc     #$0A
        sta     $89
        ldx     #$00
        lda     ($80)
        clc
        adc     $0200
        bcc     LCC3D
        inx
        clc
LCC3D:  adc     $88
        sta     $88
        txa
        adc     $89
        sta     $89
        ldx     #$00
        lda     ($88)
        jsr     LF1A1
        clc
        adc     #$54
        sta     $88
        txa
        adc     #$03
        sta     $89
        ldy     #$07
        lda     ($88),y
        tax
        dey
        lda     ($88),y
        cpx     #$00
        bne     LCC77
        cmp     #$01
        bne     LCC77
        jsr     LF1FD
        lda     #$08
        ldy     #$02
        sta     ($80),y
        iny
        txa
        sta     ($80),y
        iny
        bra     LCCEC
LCC77:  ldy     #$01
        ldx     #$00
        lda     ($80),y
        clc
        adc     $0201
        bcc     LCC84
        inx
LCC84:  jsr     LF363
        lda     #$28
        jsr     LF2C6
        clc
        adc     #$D4
        sta     $88
        txa
        adc     #$0A
        sta     $89
        ldx     #$00
        lda     ($80)
        clc
        adc     $0200
        bcc     LCCA2
        inx
        clc
LCCA2:  adc     $88
        sta     $88
        txa
        adc     $89
        sta     $89
        ldx     #$00
        lda     ($88)
        jsr     LF1A1
        clc
        adc     #$54
        sta     $88
        txa
        adc     #$03
        sta     $89
        ldy     #$07
        lda     ($88),y
        tax
        dey
        lda     ($88),y
        cpx     #$00
        bne     LCD11
        cmp     #$02
        bne     LCD11
        jsr     LF1FD
        lda     #$07
        ldy     #$02
        sta     ($80),y
        iny
        txa
        sta     ($80),y
        iny
        bra     LCCEC
LCCDC:  jsr     LF1FD
        lda     #$41
        ldy     #$02
        sta     ($80),y
        iny
        lda     #$00
        sta     ($80),y
        iny
        tax
LCCEC:  lda     ($80),y
        jsr     LF1AF
        stx     $90
        asl     a
        rol     $90
        sta     ($80)
        ldy     #$01
        lda     $90
        sta     ($80),y
        ldy     #$05
        ldx     #$00
        lda     ($80),y
        jsr     LF1AF
        stx     $90
        asl     a
        rol     $90
        ldx     $90
        jsr     LE435
LCD11:  lda     ($80)
        inc     a
        jmp     LC982

LCD17:  ldy     #$01
        lda     ($80),y
        inc     a
        jmp     LC977

LCD1F:  lda     $0221
        cmp     #$03
        bne     LCD2D
        jsr     LF1FD
        lda     #$09
        bra     LCD39
LCD2D:  lda     $0221
        cmp     #$04
        bne     LCD67
        jsr     LF1FD
        lda     #$0A
LCD39:  iny
        sta     ($80),y
        iny
        lda     #$00
        sta     ($80),y
        tax
        lda     $0202
        jsr     LF1AF
        stx     $90
        asl     a
        rol     $90
        sta     ($80)
        ldy     #$01
        lda     $90
        sta     ($80),y
        ldx     #$00
        lda     $0203
        jsr     LF1AF
        stx     $90
        asl     a
        rol     $90
        ldx     $90
        jsr     LE435
LCD67:  lda     $0222
        cmp     #$01
        bne     LCDA6
        lda     $0203
        beq     LCDA6
        jsr     LF1FD
        lda     #$42
        ldy     #$02
        sta     ($80),y
        iny
        lda     #$00
        sta     ($80),y
        tax
        lda     $0202
        jsr     LF1AF
        stx     $90
        asl     a
        rol     $90
        sta     ($80)
        ldy     #$01
        lda     $90
        sta     ($80),y
        ldx     #$00
        lda     $0203
        sec
        sbc     #$01
        bcc     LCDA2
        jmp     LCE43

LCDA2:  dex
        jmp     LCE43

LCDA6:  lda     $0222
        cmp     #$02
        bne     LCDE1
        lda     $0203
        cmp     #$03
        beq     LCDE1
        jsr     LF1FD
        lda     #$42
        ldy     #$02
        sta     ($80),y
        iny
        lda     #$00
        sta     ($80),y
        tax
        lda     $0202
        jsr     LF1AF
        stx     $90
        asl     a
        rol     $90
        sta     ($80)
        ldy     #$01
        lda     $90
        sta     ($80),y
        ldx     #$00
        lda     $0203
        inc     a
        bne     LCE43
        inx
        bra     LCE43
LCDE1:  lda     $0222
        cmp     #$03
        bne     LCE07
        lda     $0202
        beq     LCE07
        jsr     LF1FD
        lda     #$42
        ldy     #$02
        sta     ($80),y
        iny
        lda     #$00
        sta     ($80),y
        tax
        lda     $0202
        sec
        sbc     #$01
        bcs     LCE2E
        dex
        bra     LCE2E
LCE07:  lda     $0222
        cmp     #$04
        bne     LCE50
        lda     $0202
        cmp     #$04
        bne     LCE18
        jmp     LF26E

LCE18:  jsr     LF1FD
        lda     #$42
        ldy     #$02
        sta     ($80),y
        iny
        lda     #$00
        sta     ($80),y
        tax
        lda     $0202
        inc     a
        bne     LCE2E
        inx
LCE2E:  jsr     LF1AF
        stx     $90
        asl     a
        rol     $90
        sta     ($80)
        ldy     #$01
        lda     $90
        sta     ($80),y
        ldx     #$00
        lda     $0203
LCE43:  jsr     LF1AF
        stx     $90
        asl     a
        rol     $90
        ldx     $90
        jsr     LE435
LCE50:  jmp     LF26E

LCE53:  jsr     LF34D
        jsr     LF20A
        ldy     #$04
LCE5B:  lda     LFCE0,y
        sta     ($80),y
        dey
        bpl     LCE5B
        jsr     LF20A
        ldy     #$04
LCE68:  lda     LFCE5,y
        sta     ($80),y
        dey
        bpl     LCE68
        jsr     LF1DA
        ldy     #$0D
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LCE7E
        inx
        clc
LCE7E:  adc     #$21
        sta     $88
        txa
        adc     #$F6
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $88
        stx     $89
        lda     ($88)
        sta     ($80)
        lda     $80
        ldx     $81
        clc
        adc     #$06
        bcc     LCEA1
        inx
        clc
LCEA1:  adc     ($80)
        bcc     LCEA6
        inx
LCEA6:  sta     $88
        stx     $89
        lda     ($88)
        jsr     LF361
        lda     $80
        ldx     $81
        clc
        adc     #$03
        bcc     LCEB9
        inx
LCEB9:  ldy     #$02
        clc
        adc     ($80),y
        bcc     LCEC1
        inx
LCEC1:  sta     $88
        stx     $89
        lda     ($88)
        ldx     #$00
        jsr     LC6DA
        lda     $80
        ldx     $81
        clc
        adc     #$06
        bcc     LCED6
        inx
LCED6:  clc
        adc     ($80)
        bcc     LCEDC
        inx
LCEDC:  sta     $88
        stx     $89
        lda     ($88)
        jsr     LF361
        ldy     #$0F
        lda     ($80),y
        jsr     LC573
        jsr     LF1FD
        lda     $80
        ldx     $81
        clc
        adc     #$0A
        bcc     LCEF9
        inx
LCEF9:  ldy     #$04
        clc
        adc     ($80),y
        bcc     LCF01
        inx
LCF01:  sta     $88
        stx     $89
        lda     ($88)
        ldy     #$02
        sta     ($80),y
        iny
        lda     #$00
        sta     ($80),y
        ldy     #$10
        lda     ($80),y
        sta     ($80)
        ldy     #$01
        lda     #$00
        sta     ($80),y
        ldy     #$0F
        lda     ($80),y
        ldx     #$00
        jsr     LE435
        ldy     #$0E
        jmp     LF194

LCF2A:  jsr     LF34D
        ldy     #$01
        lda     ($80),y
        clc
        adc     #$0F
        jsr     LF34D
        jsr     LF1F0
        ldy     #$07
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LCF45
        inx
        clc
LCF45:  adc     #$21
        sta     $88
        txa
        adc     #$F6
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $88
        stx     $89
        lda     ($88)
        cmp     #$0E
        bne     LCFCD
        jsr     LF217
        ldy     #$0D
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LCF6D
        inx
        clc
LCF6D:  adc     #$21
        sta     $88
        txa
        adc     #$F6
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $88
        stx     $89
        ldy     #$03
        lda     ($88),y
        stz     $90
        asl     a
        rol     $90
        clc
        adc     #$FD
        sta     $88
        lda     $90
        adc     #$F5
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        ldy     #$04
        sta     ($80),y
        iny
        txa
        sta     ($80),y
        ldy     #$0C
        lda     ($80),y
        clc
        adc     #$02
        ldy     #$03
        sta     ($80),y
        ldy     #$0B
        lda     ($80),y
        clc
        adc     #$02
        ldy     #$02
        sta     ($80),y
        lda     #$0A
        dey
        sta     ($80),y
        lda     #$3F
        sta     ($80)
        ldy     #$0A
        lda     ($80),y
        jsr     LE38B
        jmp     LF295

LCFCD:  jsr     LF1E3
        ldy     #$09
        lda     ($80),y
        ldy     #$01
        sta     ($80),y
        ldy     #$08
        lda     ($80),y
        sta     ($80)
        dey
        lda     ($80),y
        jsr     LCE53
        jsr     LF20A
        ldy     #$0C
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LCFF2
        inx
        clc
LCFF2:  adc     #$9C
        sta     $88
        txa
        adc     #$F4
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        ldy     #$03
        sta     ($80),y
        iny
        txa
        sta     ($80),y
        ldy     #$0B
        lda     ($80),y
        clc
        adc     #$12
        ldy     #$02
        sta     ($80),y
        ldy     #$0A
        lda     ($80),y
        clc
        adc     #$04
        ldy     #$01
        sta     ($80),y
        lda     #$00
        sta     ($80)
        ldy     #$0C
        tax
        lda     ($80),y
        asl     a
        bcc     LD02E
        inx
        clc
LD02E:  adc     #$21
        sta     $88
        txa
        adc     #$F6
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $88
        stx     $89
        ldy     #$03
        lda     ($88),y
        sta     $88
        lda     #$00
        clc
        adc     #$FC
        sta     $89
        ldy     #$59
        lda     ($88),y
        jsr     LE1A7
        lda     #$00
        ldy     #$02
LD05A:  sta     ($80),y
        lda     ($80),y
        jsr     LF361
        ldy     #$09
        lda     ($80),y
        asl     a
        bcc     LD06B
        ldx     #$01
        clc
LD06B:  adc     #$21
        sta     $88
        txa
        adc     #$F6
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $88
        stx     $89
        ldy     #$04
        lda     ($88),y
        jsr     LF231
        bcc     LD08B
        jmp     LF295

LD08B:  ldy     #$07
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LD096
        inx
        clc
LD096:  adc     #$21
        sta     $88
        txa
        adc     #$F6
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $88
        stx     $89
        ldx     #$00
        iny
        lda     ($80),y
        asl     a
        bcc     LD0B4
        inx
        clc
LD0B4:  adc     #$05
        bcc     LD0BA
        inx
        clc
LD0BA:  adc     $88
        sta     $88
        txa
        adc     $89
        sta     $89
        lda     ($88)
        dey
        sta     ($80),y
        tay
        lda     LF6F7,y
        sta     ($80)
        ldx     #$00
        lda     ($80)
        ldy     #$04
        cmp     ($80),y
        bne     LD0DC
        lda     #$03
        sta     ($80)
LD0DC:  jsr     LF224
        ldy     #$08
        lda     ($80),y
        asl     a
        bcc     LD0E8
        inx
        clc
LD0E8:  adc     #$DB
        sta     $88
        txa
        adc     #$F6
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        ldy     #$05
        sta     ($80),y
        iny
        txa
        sta     ($80),y
        ldy     #$0E
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LD10B
        inx
        clc
LD10B:  adc     #$21
        sta     $88
        txa
        adc     #$F6
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $88
        stx     $89
        ldx     #$00
        ldy     #$09
        lda     ($80),y
        asl     a
        bcc     LD12A
        inx
        clc
LD12A:  adc     #$05
        bcc     LD12F
        inx
LD12F:  inc     a
        bne     LD133
        inx
LD133:  clc
        adc     $88
        sta     $88
        txa
        adc     $89
        sta     $89
        lda     ($88)
        ldy     #$04
        sta     ($80),y
        lda     #$00
        dey
        sta     ($80),y
        ldy     #$0D
        lda     ($80),y
        clc
        adc     #$12
        ldy     #$02
        sta     ($80),y
        ldy     #$0A
        lda     ($80),y
        ldy     #$01
        sta     ($80),y
        ldy     #$07
        lda     ($80),y
        sta     ($80)
        ldy     #$0B
        lda     ($80),y
        jsr     LE2CE
        ldy     #$03
        clc
        lda     #$0A
        adc     ($80),y
        sta     ($80),y
        dey
        lda     ($80),y
        inc     a
        jmp     LD05A

LD178:  lda     $A6
        ldx     $A7
        jsr     LF363
        lda     $A4
        ldx     $A5
        jsr     LF363
        lda     #$04
        sta     $A5
        lda     #$94
        sta     $A4
        lda     $A3
        jsr     LF34D
        lda     $A2
        jsr     LF34D
        lda     $A1
        jsr     LF34D
        jsr     LF1FD
        lda     #$A0
        ldy     #$03
        sta     ($80),y
        lda     #$00
        dey
        sta     ($80),y
        lda     #$60
        dey
        sta     ($80),y
        lda     #$80
        sta     ($80)
        lda     #$15
        jsr     LDB31
        jsr     LF224
        lda     #$CF
        ldy     #$05
        sta     ($80),y
        iny
        lda     #$FC
        sta     ($80),y
        lda     $0204
        ldy     #$04
        sta     ($80),y
        lda     $0206
        dey
        sta     ($80),y
        lda     #$A8
        dey
        sta     ($80),y
        lda     #$04
        dey
        sta     ($80),y
        lda     #$3F
        sta     ($80)
        lda     #$15
        jsr     LE2CE
        jsr     LF20A
        lda     #$A8
        ldy     #$04
        sta     ($80),y
        lda     #$0D
        dey
        sta     ($80),y
        lda     $0204
        dey
        sta     ($80),y
        lda     $0206
        dey
        sta     ($80),y
        lda     #$03
        sta     ($80)
        dec     a
        jsr     LC7E1
        jsr     LF224
        lda     #$A5
        ldy     #$05
        sta     ($80),y
        iny
        lda     #$FC
        sta     ($80),y
        lda     $020A
        ldy     #$04
        sta     ($80),y
        lda     $020B
        dey
        sta     ($80),y
        lda     #$A8
        dey
        sta     ($80),y
        lda     #$18
        dey
        sta     ($80),y
        lda     #$3F
        sta     ($80)
        lda     #$15
        jsr     LE2CE
        jsr     LF20A
        lda     #$A8
        ldy     #$04
        sta     ($80),y
        lda     #$21
        dey
        sta     ($80),y
        lda     $020A
        dey
        sta     ($80),y
        lda     $020B
        dey
        sta     ($80),y
        lda     #$30
        sta     ($80)
        lda     #$20
        jsr     LC7E1
        jsr     LF224
        lda     #$BF
        ldy     #$05
        sta     ($80),y
        iny
        lda     #$FC
        sta     ($80),y
        lda     $021A
        ldy     #$04
        sta     ($80),y
        lda     $021B
        dey
        sta     ($80),y
        lda     #$A8
        dey
        sta     ($80),y
        lda     #$2C
        dey
        sta     ($80),y
        lda     #$3F
        sta     ($80)
        lda     #$15
        jsr     LE2CE
        jsr     LF20A
        lda     #$A8
        ldy     #$04
        sta     ($80),y
        lda     #$35
        dey
        sta     ($80),y
        lda     $021A
        dey
        sta     ($80),y
        lda     $021B
        dey
        sta     ($80),y
        lda     #$0C
        sta     ($80)
        lda     #$08
        jsr     LC7E1
        ldx     #$00
        lda     $0223
        beq     LD2C8
        cmp     #$01
        beq     LD302
        cmp     #$02
        beq     LD2E5
        cmp     #$03
        beq     LD31E
        cmp     #$04
        bne     LD2C5
        jmp     LD366

LD2C5:  jmp     LD366

LD2C8:  jsr     LF20A
        lda     #$DB
        ldy     #$03
        sta     ($80),y
        iny
        lda     #$FC
        sta     ($80),y
        lda     #$A8
        ldy     #$02
        sta     ($80),y
        lda     #$40
        dey
        sta     ($80),y
        lda     #$21
        bra     LD35F
LD2E5:  jsr     LF20A
        lda     #$D6
        ldy     #$03
        sta     ($80),y
        iny
        lda     #$FC
        sta     ($80),y
        lda     #$A8
        ldy     #$02
        sta     ($80),y
        lda     #$40
        dey
        sta     ($80),y
        lda     #$35
        bra     LD35F
LD302:  jsr     LF20A
        lda     #$88
        ldy     #$03
        sta     ($80),y
        iny
        lda     #$FC
        sta     ($80),y
        lda     #$A8
        ldy     #$02
        sta     ($80),y
        lda     #$40
        dey
        sta     ($80),y
        tya
        bra     LD35F
LD31E:  lda     $0224
        jsr     LF1A1
        clc
        adc     #$54
        sta     $88
        txa
        adc     #$03
        sta     $89
        ldy     #$07
        lda     ($88),y
        tax
        dey
        lda     ($88),y
        sta     $88
        txa
        clc
        adc     #$FC
        sta     $89
        ldy     #$5E
        lda     ($88),y
        sta     $A3
        jsr     LF20A
        lda     #$C7
        ldy     #$03
        sta     ($80),y
        iny
        lda     #$FC
        sta     ($80),y
        lda     #$A8
        ldy     #$02
        sta     ($80),y
        lda     #$40
        dey
        sta     ($80),y
        lda     $A3
LD35F:  sta     ($80)
        lda     #$15
        jsr     LE1A7
LD366:  lda     $0226
        cmp     #$01
        bne     LD390
        jsr     LF20A
        lda     #$A8
        ldy     #$04
        sta     ($80),y
        lda     #$49
        dey
        sta     ($80),y
        lda     $0227
        dey
        sta     ($80),y
        lda     $0229
        dey
        sta     ($80),y
        lda     #$32
        sta     ($80)
        lda     #$21
        jsr     LC7E1
LD390:  lda     #$A8
        jsr     LF361
        lda     #$54
        jsr     LC31B
        sta     $A6
        stx     $A7
        stz     $A3
        ldx     #$00
LD3A2:  lda     $A3
        cmp     #$14
        bcc     LD3AB
        jmp     LD46A

LD3AB:  stz     $A2
LD3AD:  lda     $A2
        cmp     #$28
        bcc     LD3B6
        jmp     LD456

LD3B6:  jsr     LF34D
        lda     $A3
        jsr     LC3B0
        cmp     #$01
        bne     LD3C6
        lda     #$03
        bra     LD408
LD3C6:  lda     $A2
        jsr     LF34D
        lda     $A3
        jsr     LC349
        cmp     #$01
        bne     LD3D8
        lda     #$0F
        bra     LD408
LD3D8:  lda     ($A4)
        beq     LD3F6
        cmp     #$01
        beq     LD3F6
        cmp     #$02
        beq     LD3F6
        cmp     #$03
        beq     LD3F6
        cmp     #$04
        beq     LD3FA
        cmp     #$05
        beq     LD3FE
        cmp     #$06
        beq     LD402
        bra     LD406
LD3F6:  lda     #$3B
        bra     LD408
LD3FA:  lda     #$21
        bra     LD408
LD3FE:  lda     #$0B
        bra     LD408
LD402:  lda     #$35
        bra     LD408
LD406:  lda     #$3F
LD408:  sta     $A1
        sta     ($A6)
        lda     $A6
        ldx     $A7
        inc     a
        bne     LD414
        inx
LD414:  sta     $88
        stx     $89
        lda     $A1
        sta     ($88)
        lda     $A6
        ldx     $A7
        inx
        sta     $88
        stx     $89
        lda     $A1
        sta     ($88)
        lda     $A6
        ldx     $A7
        inx
        inc     a
        bne     LD432
        inx
LD432:  sta     $88
        stx     $89
        lda     $A1
        sta     ($88)
        lda     #$02
        clc
        adc     $A6
        sta     $A6
        bcc     LD445
        inc     $A7
LD445:  lda     $A4
        ldx     $A5
        inc     a
        bne     LD44D
        inx
LD44D:  sta     $A4
        stx     $A5
        inc     $A2
        jmp     LD3AD

LD456:  lda     #$B0
        clc
        adc     $A6
        sta     $A6
        lda     #$01
        adc     $A7
        sta     $A7
        ldx     #$00
        inc     $A3
        jmp     LD3A2

LD46A:  lda     $0200
        asl     a
        bcc     LD472
        inx
        clc
LD472:  adc     #$A0
        bcc     LD478
        inx
        clc
LD478:  adc     #$08
        bcc     LD47D
        inx
LD47D:  jsr     LF363
        ldx     #$00
        lda     $0201
        asl     a
        bcc     LD48A
        inx
        clc
LD48A:  adc     #$54
        bcc     LD48F
        inx
LD48F:  jsr     LC31B
        sta     $A6
        stx     $A7
        stz     $A3
        ldx     #$00
LD49A:  lda     $A3
        cmp     #$0A
        bcs     LD4C5
        lda     #$0C
        sta     ($A6)
        lda     $A6
        sta     $88
        lda     $A7
        clc
        adc     #$07
        sta     $89
        lda     #$0C
        sta     ($88)
        lda     $A6
        ldx     $A7
        inc     a
        bne     LD4BB
        inx
LD4BB:  sta     $A6
        stx     $A7
        ldx     #$00
        inc     $A3
        bra     LD49A
LD4C5:  lda     $0200
        asl     a
        bcc     LD4CD
        inx
        clc
LD4CD:  adc     #$A0
        bcc     LD4D3
        inx
        clc
LD4D3:  adc     #$08
        bcc     LD4D8
        inx
LD4D8:  jsr     LF363
        ldx     #$00
        lda     $0201
        asl     a
        bcc     LD4E5
        inx
        clc
LD4E5:  adc     #$54
        bcc     LD4EA
        inx
LD4EA:  jsr     LC31B
        sta     $A6
        stx     $A7
        stz     $A3
LD4F3:  lda     $A3
        cmp     #$08
        bcs     LD526
        lda     #$0C
        sta     ($A6)
        lda     $A6
        ldx     $A7
        clc
        adc     #$0A
        bcc     LD507
        inx
LD507:  sec
        sbc     #$01
        bcs     LD50D
        dex
LD50D:  sta     $88
        stx     $89
        lda     #$0C
        sta     ($88)
        lda     #$00
        clc
        adc     $A6
        sta     $A6
        lda     #$01
        adc     $A7
        sta     $A7
        inc     $A3
        bra     LD4F3
LD526:  ldy     #$00
LD528:  lda     ($80),y
        sta     $A1,y
        iny
        cpy     #$07
        bne     LD528
        jmp     LF290

LD535:  jsr     LF1FD
        ldy     #$01
LD53A:  lda     LFCEA,y
        sta     ($80),y
        dey
        bpl     LD53A
        jsr     LF1E3
        lda     LFD14
        beq     LD54D
        jmp     LD652

LD54D:  lda     LFD13
        cmp     #$01
        beq     LD557
        jmp     LD652

LD557:  jsr     LF1FD
        lda     #$09
        ldy     #$03
        sta     ($80),y
        lda     #$11
        dey
        sta     ($80),y
        lda     #$EE
        dey
        sta     ($80),y
        lda     #$66
        sta     ($80)
        lda     #$08
        jsr     LDB31
        jsr     LF1FD
        lda     #$0A
        ldy     #$02
        sta     ($80),y
        iny
        lda     #$00
        sta     ($80),y
        lda     #$1B
        sta     ($80)
        ldy     #$01
        lda     #$00
        sta     ($80),y
        tax
        lda     #$15
        jsr     LE435
        lda     #$38
        ldy     #$01
        sta     ($80),y
        lda     #$00
        ldy     #$04
LD59B:  sta     ($80),y
        cmp     #$07
        bcc     LD5A4
        jmp     LD64C

LD5A4:  ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LD5AD
        inx
        clc
LD5AD:  adc     #$73
        sta     $88
        txa
        adc     #$F7
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        cpx     #$00
        bne     LD5CA
        cmp     #$00
        bne     LD5CA
        lda     $0206
        bra     LD5EB
LD5CA:  ldy     #$04
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LD5D5
        inx
        clc
LD5D5:  adc     #$73
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
LD5EB:  sta     ($80)
        jsr     LF224
        ldy     #$0B
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LD5FB
        inx
        clc
LD5FB:  adc     #$65
        sta     $88
        txa
        adc     #$F7
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        ldy     #$05
        sta     ($80),y
        iny
        txa
        sta     ($80),y
        iny
        lda     ($80),y
        ldy     #$04
        sta     ($80),y
        lda     #$00
        dey
        sta     ($80),y
        lda     #$0D
        dey
        sta     ($80),y
        ldy     #$08
        lda     ($80),y
        ldy     #$01
        sta     ($80),y
        ldy     #$0B
        lda     ($80),y
        tay
        lda     LF75E,y
        sta     ($80)
        lda     #$08
        jsr     LE2CE
        ldy     #$01
        clc
        lda     #$09
        adc     ($80),y
        sta     ($80),y
        ldy     #$04
        lda     ($80),y
        inc     a
        jmp     LD59B

LD64C:  jsr     LD92E
        jmp     LF28B

LD652:  lda     LFD14
        bne     LD6C6
        lda     LFD13
        cmp     #$02
        bne     LD6C6
        jsr     LF1FD
        lda     #$09
        ldy     #$03
        sta     ($80),y
        lda     #$11
        dey
        sta     ($80),y
        lda     #$EE
        dey
        sta     ($80),y
        lda     #$66
        sta     ($80)
        lda     #$20
        jsr     LDB31
        jsr     LF20A
        lda     #$9C
        ldy     #$03
        sta     ($80),y
        iny
        lda     #$FC
        sta     ($80),y
        lda     #$0B
        ldy     #$02
        sta     ($80),y
        lda     #$14
        dey
        sta     ($80),y
        lda     #$3F
        sta     ($80)
        lda     #$20
        jsr     LE1A7
        ldy     #$05
        sta     ($80),y
        jsr     LF1FD
        lda     $0220
        ldy     #$03
        sta     ($80),y
        ldy     #$09
        lda     ($80),y
        ldy     #$02
        sta     ($80),y
        lda     #$14
        dey
        sta     ($80),y
        lda     #$3F
        sta     ($80)
        lda     #$20
        jsr     LE7D7
        jsr     LDE50
        jmp     LF28B

LD6C6:  lda     LFD14
        beq     LD6CE
        jmp     LF28B

LD6CE:  lda     LFD13
        cmp     #$03
        beq     LD6D8
        jmp     LF28B

LD6D8:  jsr     LF1FD
        lda     #$09
        ldy     #$03
        sta     ($80),y
        lda     #$11
        dey
        sta     ($80),y
        lda     #$EE
        dey
        sta     ($80),y
        lda     #$66
        sta     ($80)
        lda     #$02
        jsr     LDB31
        jsr     LF1FD
        lda     #$98
        ldy     #$03
        sta     ($80),y
        lda     #$13
        dey
        sta     ($80),y
        lda     #$5C
        dey
        sta     ($80),y
        lda     #$0A
        sta     ($80)
        lda     #$00
        jsr     LDB31
        jsr     LF1FD
        lda     $021D
        ldy     #$03
        sta     ($80),y
        lda     #$AB
        dey
        sta     ($80),y
        lda     #$15
        dey
        sta     ($80),y
        lda     #$17
        sta     ($80)
        lda     #$00
        jsr     LE7D7
        jsr     LF1FD
        lda     $021E
        ldy     #$03
        sta     ($80),y
        lda     #$C3
        dey
        sta     ($80),y
        lda     #$15
        dey
        sta     ($80),y
        lda     #$35
        sta     ($80)
        lda     #$00
        jsr     LE7D7
        jsr     LF1FD
        lda     $021F
        ldy     #$03
        sta     ($80),y
        lda     #$DB
        dey
        sta     ($80),y
        lda     #$15
        dey
        sta     ($80),y
        lda     #$1F
        sta     ($80)
        lda     #$00
        jsr     LE7D7
        jsr     LDBB4
        jmp     LF28B

LD76D:  jsr     LF20A
        lda     #$01
        ldy     #$03
        sta     ($80),y
        dey
        sta     ($80),y
        lda     #$FE
        dey
        sta     ($80),y
        lda     #$10
        sta     ($80)
        lda     #$2A
        jsr     LDB31
        jsr     LF1FD
        lda     #$01
        ldy     #$03
        sta     ($80),y
        lda     #$78
        dey
        sta     ($80),y
        lda     #$FE
        dey
        sta     ($80),y
        lda     #$07
        sta     ($80)
        lda     #$2A
        jsr     LDB31
        jsr     LF1FD
        lda     #$01
        ldy     #$03
        sta     ($80),y
        lda     #$11
        dey
        sta     ($80),y
        lda     #$07
        dey
        sta     ($80),y
        lda     #$67
        sta     ($80)
        lda     #$2A
        jsr     LDB31
        jsr     LF1FD
        lda     #$F8
        ldy     #$03
        sta     ($80),y
        lda     #$11
        dey
        sta     ($80),y
        lda     #$07
        dey
        sta     ($80),y
        lda     #$67
        sta     ($80)
        lda     #$2A
        jsr     LDB31
        jsr     LF20A
        lda     #$00
        ldy     #$04
        sta     ($80),y
        dey
        sta     ($80),y
        ldy     #$01
        sta     ($80),y
        iny
        inc     a
        sta     ($80),y
        lda     #$80
        sta     ($80)
        lda     #$00
        jsr     LC858
        jsr     LF20A
        lda     #$08
        ldy     #$04
        sta     ($80),y
        dey
        sta     ($80),y
        lda     #$F0
        ldy     #$01
        sta     ($80),y
        iny
        lda     #$00
        sta     ($80),y
        lda     #$70
        sta     ($80)
        lda     #$00
        jsr     LC858
        lda     #$01
LD81A:  sta     ($80)
        cmp     #$08
        bcc     LD823
        jmp     LD8AB

LD823:  lda     ($80)
        jsr     LF361
        ldy     #$02
        lda     ($80),y
        jsr     LC31B
        sta     $88
        stx     $89
        lda     #$00
        sta     ($88)
        sec
        sbc     ($80)
        pha
        lda     #$01
        sbc     #$00
        tax
        pla
        sec
        sbc     #$01
        bcs     LD847
        dex
LD847:  jsr     LF363
        ldy     #$02
        lda     ($80),y
        ldx     #$00
        jsr     LC31B
        sta     $88
        stx     $89
        lda     #$00
        sta     ($88)
        sec
        sbc     ($80)
        pha
        lda     #$01
        sbc     #$00
        tax
        pla
        sec
        sbc     #$01
        bcs     LD86B
        dex
LD86B:  jsr     LF363
        lda     #$80
        sec
        ldy     #$02
        sbc     ($80),y
        ldx     #$00
        sec
        sbc     #$01
        bcs     LD87D
        dex
LD87D:  jsr     LC31B
        sta     $88
        stx     $89
        lda     #$00
        sta     ($88)
        lda     ($80)
        jsr     LF361
        lda     #$80
        sec
        ldy     #$02
        sbc     ($80),y
        sec
        sbc     #$01
        .byte   $B0
LD898:  ora     ($CA,x)
LD89A:  jsr     LC31B
        sta     $88
        stx     $89
        lda     #$00
        sta     ($88)
        lda     ($80)
        inc     a
        jmp     LD81A

LD8AB:  jsr     LF20A
        lda     #$7C
        ldy     #$03
        sta     ($80),y
        iny
        lda     #$FC
        sta     ($80),y
        lda     #$09
        ldy     #$02
        sta     ($80),y
        dey
        sta     ($80),y
        lda     #$3F
        sta     ($80)
        lda     #$08
        jsr     LE1A7
        jsr     LF20A
        lda     #$93
        ldy     #$03
        sta     ($80),y
        iny
        lda     #$FC
        sta     ($80),y
        lda     #$4C
        ldy     #$02
        sta     ($80),y
        lda     #$09
        dey
        sta     ($80),y
        lda     #$3F
        sta     ($80)
        lda     #$20
        jsr     LE1A7
        jsr     LF20A
        lda     #$70
        ldy     #$03
        sta     ($80),y
        iny
        lda     #$FC
        sta     ($80),y
        lda     #$7C
        ldy     #$02
        sta     ($80),y
        lda     #$09
        dey
        sta     ($80),y
        lda     #$3F
        sta     ($80)
        lda     #$02
        jsr     LE1A7
        jsr     LF1FD
        lda     #$4B
        ldy     #$03
        sta     ($80),y
        lda     #$09
        dey
        sta     ($80),y
        lda     #$01
        dey
        sta     ($80),y
        lda     #$08
        sta     ($80)
        lda     #$20
        jsr     LDB31
        jmp     LF25F

LD92E:  jsr     LF1E3
        lda     #$00
        jsr     LF34D
        jsr     LF1FD
        lda     #$50
        ldy     #$03
        sta     ($80),y
        lda     #$16
        dey
        sta     ($80),y
        lda     #$50
        dey
        sta     ($80),y
        lda     #$2D
        sta     ($80)
        lda     #$04
        jsr     LDB31
        jsr     LF1FD
        lda     #$50
        ldy     #$03
        sta     ($80),y
        lda     #$46
        dey
        sta     ($80),y
        lda     #$50
        dey
        sta     ($80),y
        lda     #$2D
        sta     ($80)
        lda     #$04
        jsr     LDB31
        lda     #$00
        ldy     #$02
LD972:  sta     ($80),y
        cmp     #$06
        bcc     LD97B
        jmp     LDAC6

LD97B:  lda     #$00
        dey
LD97E:  sta     ($80),y
        cmp     #$05
        bcc     LD987
        jmp     LDABF

LD987:  jsr     LF1FD
        lda     #$40
        iny
        sta     ($80),y
        iny
        lda     #$00
        sta     ($80),y
        ldy     #$05
        tax
        lda     ($80),y
        jsr     LF1AF
        clc
        adc     #$A4
        bcc     LD9A2
        inx
LD9A2:  sta     ($80)
        ldy     #$01
        txa
        sta     ($80),y
        ldy     #$06
        ldx     #$00
        lda     ($80),y
        jsr     LF1AF
        clc
        adc     #$14
        bcc     LD9B8
        inx
LD9B8:  jsr     LE435
        lda     ($80)
        tay
        lda     $0230,y
        cmp     #$20
        bne     LD9C8
        jmp     LDAB2

LD9C8:  lda     ($80)
        tay
        ldx     #$00
        lda     $0230,y
        asl     a
        bcc     LD9D5
        inx
        clc
LD9D5:  adc     #$21
        sta     $88
        txa
        adc     #$F6
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $88
        stx     $89
        lda     ($88)
        cmp     #$0E
        bne     LD9F2
        jmp     LDAB2

LD9F2:  jsr     LF1E3
        iny
        lda     ($80),y
        tay
        lda     $0230,y
        ldy     #$01
        sta     ($80),y
        ldy     #$03
        lda     ($80),y
        asl     a
        asl     a
        asl     a
        asl     a
        clc
        adc     #$A4
        sta     ($80)
        iny
        lda     ($80),y
        asl     a
        asl     a
        asl     a
        asl     a
        clc
        adc     #$14
        jsr     LCE53
        ldy     #$01
        lda     ($80),y
        cmp     $025D
        beq     LDA26
        jmp     LDAB2

LDA26:  iny
        lda     ($80),y
        cmp     $025E
        beq     LDA31
        jmp     LDAB2

LDA31:  jsr     LF1F0
        iny
        lda     ($80),y
        tay
        ldx     #$00
        lda     $0230,y
        asl     a
        bcc     LDA42
        inx
        clc
LDA42:  adc     #$21
        sta     $88
        txa
        adc     #$F6
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
        ldy     #$2B
        lda     ($88),y
        ldy     #$02
        sta     ($80),y
        lda     #$50
        dey
        sta     ($80),y
        lda     #$16
        sta     ($80)
        lda     #$04
        jsr     LCF2A
        jsr     LF1F0
        ldy     #$03
        lda     ($80),y
        tay
        lda     $0230,y
        ldy     #$02
        sta     ($80),y
        lda     #$50
        dey
        sta     ($80),y
        lda     #$46
        sta     ($80)
        lda     #$04
        jsr     LCF2A
        jsr     LF1FD
        lda     #$43
        ldy     #$02
        sta     ($80),y
        iny
        lda     #$00
        sta     ($80),y
        lda     #$50
        sta     ($80)
        ldy     #$01
        lda     #$00
        sta     ($80),y
        tax
        lda     #$46
        jsr     LE435
LDAB2:  lda     ($80)
        inc     a
        sta     ($80)
        ldy     #$01
        lda     ($80),y
        inc     a
        jmp     LD97E

LDABF:  iny
        lda     ($80),y
        inc     a
        jmp     LD972

LDAC6:  jsr     LF1FD
        lda     #$A4
        iny
        sta     ($80),y
        lda     #$74
        dey
        sta     ($80),y
        lda     #$50
        dey
        sta     ($80),y
        tya
        sta     ($80)
        dec     a
        jsr     LDB31
        jsr     LF1FD
        lda     #$F4
        ldy     #$03
        sta     ($80),y
        lda     #$14
        dey
        sta     ($80),y
        lda     #$01
        dey
        sta     ($80),y
        lda     #$61
        sta     ($80)
        lda     #$00
        jsr     LDB31
        jsr     LF1FD
        lda     #$43
        ldy     #$02
        sta     ($80),y
        iny
        lda     #$00
        sta     ($80),y
        tax
        lda     $025D
        jsr     LF1AF
        clc
        adc     #$A4
        bcc     LDB16
        inx
LDB16:  sta     ($80)
        ldy     #$01
        txa
        sta     ($80),y
        ldx     #$00
        lda     $025E
        jsr     LF1AF
        clc
        adc     #$14
        bcc     LDB2B
        inx
LDB2B:  jsr     LE435
        jmp     LF27C

LDB31:  jsr     LF34D
        lda     $A6
        ldx     $A7
        jsr     LF363
        ldy     #$06
        lda     ($80),y
        jsr     LF361
        ldy     #$07
        lda     ($80),y
        jsr     LC31B
        sta     $A6
        stx     $A7
        lda     $A5
        jsr     LF34D
        lda     $A4
        jsr     LF34D
        stz     $A5
        ldx     #$00
LDB5B:  lda     $A5
        ldy     #$05
        cmp     ($80),y
        bcs     LDBA3
        stz     $A4
LDB65:  lda     $A4
        ldy     #$06
        cmp     ($80),y
        txa
        bcs     LDB8A
        lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        inc     a
        bne     LDB7A
        inx
LDB7A:  sta     $A6
        stx     $A7
        ldy     #$04
        lda     ($80),y
        sta     ($84)
        ldx     #$00
        inc     $A4
        bra     LDB65
LDB8A:  sbc     ($80),y
        pha
        lda     #$01
        sbc     #$00
        tax
        pla
        clc
        adc     $A6
        sta     $A6
        txa
        adc     $A7
        sta     $A7
        ldx     #$00
        inc     $A5
        bra     LDB5B
LDBA3:  ldy     #$00
LDBA5:  lda     ($80),y
        sta     $A4,y
        iny
        cpy     #$04
        bne     LDBA5
        ldy     #$09
        jmp     LF194

LDBB4:  jsr     LF217
        ldy     #$05
LDBB9:  lda     LFCEC,y
        sta     ($80),y
        dey
        bpl     LDBB9
        jsr     LF217
        ldy     #$05
LDBC6:  lda     LFCF2,y
        sta     ($80),y
        dey
        bpl     LDBC6
        jsr     LF1F0
        lda     #$20
        jsr     LF34D
        jsr     LF1E3
        lda     #$20
        sta     $0263
        jsr     LF1FD
        lda     #$98
        ldy     #$03
        sta     ($80),y
        lda     #$1D
        dey
        sta     ($80),y
        lda     #$5C
        dey
        sta     ($80),y
        lda     #$57
        sta     ($80)
        tya
        jsr     LDB31
        lda     #$00
        ldy     #$05
LDBFD:  sta     ($80),y
        cmp     #$06
        bcc     LDC06
        jmp     LDDBF

LDC06:  lda     ($80),y
        inc     a
        ldy     #$03
        sta     ($80),y
        jsr     LF1FD
        ldy     #$09
        lda     ($80),y
        jsr     LF361
        lda     #$17
        jsr     LF2C6
        clc
        adc     #$0B
        ldy     #$03
        sta     ($80),y
        lda     #$13
        dey
        sta     ($80),y
        lda     #$17
        dey
        sta     ($80),y
        lda     #$61
        sta     ($80)
        lda     $80
        ldx     $81
        clc
        adc     #$10
        bcc     LDC3B
        inx
LDC3B:  ldy     #$09
        clc
        adc     ($80),y
        bcc     LDC43
        inx
LDC43:  sta     $88
        stx     $89
        lda     ($88)
        jsr     LDB31
        lda     #$00
        ldy     #$04
LDC50:  sta     ($80),y
        cmp     #$05
        bcc     LDC59
        jmp     LDDB8

LDC59:  iny
        lda     ($80),y
        cmp     #$04
        bcs     LDC9C
        jsr     LF1E3
        lda     ($80),y
        ldy     #$01
        sta     ($80),y
        ldy     #$07
        lda     ($80),y
        jsr     LF361
        lda     #$17
        jsr     LF2C6
        clc
        adc     #$0E
        sta     ($80)
        ldy     #$06
        lda     ($80),y
        jsr     LF361
        lda     #$13
        jsr     LF2C6
        clc
        adc     #$15
        jsr     LCE53
        ldy     #$03
        lda     ($80),y
        dey
        sta     ($80),y
        iny
        clc
        lda     #$05
        adc     ($80),y
        jmp     LDD3A

LDC9C:  dey
        lda     ($80),y
        cmp     #$03
        bcc     LDCA6
        jmp     LDD36

LDCA6:  jsr     LF1FD
        ldy     #$08
        lda     ($80),y
        jsr     LF361
        ldy     #$0B
        lda     ($80),y
        sec
        sbc     #$04
        bcs     LDCBB
        ldx     #$FF
LDCBB:  jsr     LF300
        jsr     LF179
        clc
        adc     #$0A
        bcc     LDCC8
        inx
        clc
LDCC8:  adc     $80
        sta     $88
        txa
        adc     $81
        sta     $89
        lda     ($88)
        ldy     #$02
        sta     ($80),y
        iny
        lda     #$00
        sta     ($80),y
        ldy     #$09
        lda     ($80),y
        jsr     LF361
        lda     #$17
        jsr     LF2C6
        clc
        adc     #$0E
        bcc     LDCEE
        inx
LDCEE:  sta     ($80)
        ldy     #$01
        txa
        sta     ($80),y
        ldy     #$08
        lda     ($80),y
        jsr     LF361
        lda     #$13
        jsr     LF2C6
        clc
        adc     #$15
        bcc     LDD07
        inx
LDD07:  jsr     LE435
        ldy     #$04
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LDD14
        inx
LDD14:  sta     $88
        stx     $89
        ldx     #$00
        iny
        lda     ($80),y
        sec
        sbc     #$04
        bcs     LDD23
        dex
LDD23:  clc
        adc     $88
        pha
        txa
        adc     $89
        pla
        ldy     #$02
        sta     ($80),y
        clc
        lda     #$19
        adc     ($80),y
        bra     LDD3A
LDD36:  lda     #$20
        ldy     #$02
LDD3A:  sta     ($80),y
        ldy     #$05
        lda     ($80),y
        cmp     $0261
        bne     LDDB0
        dey
        lda     ($80),y
        cmp     $0262
        bne     LDDB2
        jsr     LF1FD
        lda     #$43
        ldy     #$02
        sta     ($80),y
        iny
        lda     #$00
        sta     ($80),y
        ldy     #$09
        lda     ($80),y
        jsr     LF361
        lda     #$17
        jsr     LF2C6
        clc
        adc     #$0E
        bcc     LDD6D
        inx
LDD6D:  sta     ($80)
        ldy     #$01
        txa
        sta     ($80),y
        ldy     #$08
        lda     ($80),y
        jsr     LF361
        lda     #$13
        jsr     LF2C6
        clc
        adc     #$15
        bcc     LDD86
        inx
LDD86:  jsr     LE435
        ldy     #$02
        lda     ($80),y
        cmp     #$20
        beq     LDDB0
        jsr     LF1F0
        ldy     #$05
        lda     ($80),y
        ldy     #$02
        sta     ($80),y
        lda     #$98
        dey
        sta     ($80),y
        lda     #$1D
        sta     ($80)
        tya
        jsr     LCF2A
        ldy     #$02
        lda     ($80),y
        sta     $0263
LDDB0:  ldy     #$04
LDDB2:  lda     ($80),y
        inc     a
        jmp     LDC50

LDDB8:  iny
        lda     ($80),y
        inc     a
        jmp     LDBFD

LDDBF:  lda     $0263
        cmp     #$20
        bne     LDDC9
        jmp     LDE4B

LDDC9:  ldx     #$00
        lda     $0263
        asl     a
        bcc     LDDD3
        inx
        clc
LDDD3:  adc     #$21
        sta     $88
        txa
        adc     #$F6
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $88
        stx     $89
        ldy     #$01
        lda     ($88),y
        sta     ($80),y
        ldx     #$00
        lda     $0263
        asl     a
        bcc     LDDF7
        inx
        clc
LDDF7:  adc     #$21
        sta     $88
        txa
        adc     #$F6
        sta     $89
        lda     ($88),y
        tax
        lda     ($88)
        sta     $88
        stx     $89
        iny
        lda     ($88),y
        sta     $88
        lda     #$00
        clc
        adc     #$FC
        sta     $89
        ldy     #$5E
        lda     ($88),y
        sta     ($80)
        jsr     LF224
        lda     #$B7
        ldy     #$05
        sta     ($80),y
        iny
        lda     #$FC
        sta     ($80),y
        ldy     #$08
        lda     ($80),y
        ldy     #$04
        sta     ($80),y
        lda     #$00
        dey
        sta     ($80),y
        lda     #$9A
        dey
        sta     ($80),y
        lda     #$6B
        dey
        sta     ($80),y
        ldy     #$07
        lda     ($80),y
        sta     ($80)
        lda     #$01
        jsr     LE2CE
LDE4B:  ldy     #$12
        jmp     LF194

LDE50:  jsr     LF1F0
        ldy     #$02
LDE55:  lda     LFCF8,y
        sta     ($80),y
        dey
        bpl     LDE55
        jsr     LF1F0
        ldy     #$02
LDE62:  lda     LFCFB,y
        sta     ($80),y
        dey
        bpl     LDE62
        jsr     LF1F0
        ldy     #$02
LDE6F:  lda     LFCFE,y
        sta     ($80),y
        dey
        bpl     LDE6F
        jsr     LF1F0
        ldy     #$02
LDE7C:  lda     LFD01,y
        sta     ($80),y
        dey
        bpl     LDE7C
        jsr     LF1E3
        lda     #$4C
        jsr     LF34D
        jsr     LF20A
        ldy     #$01
LDE91:  lda     LFD04,y
        sta     ($80),y
        dey
        bpl     LDE91
        jsr     LF1FD
        lda     #$98
        ldy     #$03
        sta     ($80),y
        lda     #$1D
        dey
        sta     ($80),y
        lda     #$5C
        dey
        sta     ($80),y
        lda     #$57
        sta     ($80)
        lda     #$10
        jsr     LDB31
        lda     #$00
        ldy     #$07
        sta     ($80),y
        tax
LDEBC:  lda     ($80),y
        cmp     #$03
        bcc     LDEC5
        jmp     LE0AA

LDEC5:  jsr     LF1FD
        lda     #$09
        ldy     #$03
        sta     ($80),y
        lda     $80
        ldx     $81
        clc
        adc     #$0F
        bcc     LDED8
        inx
LDED8:  ldy     #$0B
        clc
        adc     ($80),y
        bcc     LDEE0
        inx
LDEE0:  sta     $88
        stx     $89
        lda     ($88)
        ldy     #$02
        sta     ($80),y
        lda     #$8C
        dey
        sta     ($80),y
        lda     #$1E
        sta     ($80)
        lda     $80
        ldx     $81
        clc
        adc     #$0C
        bcc     LDEFD
        inx
LDEFD:  ldy     #$0B
        clc
        adc     ($80),y
        bcc     LDF05
        inx
LDF05:  sta     $88
        stx     $89
        lda     ($88)
        jsr     LDB31
        lda     #$00
        ldy     #$06
LDF12:  sta     ($80),y
        cmp     #$05
        bcc     LDF1B
        jmp     LE09F

LDF1B:  iny
        ldx     #$00
        lda     ($80),y
        jsr     LF311
        sta     $88
        stx     $89
        dey
        lda     ($80),y
        clc
        adc     $88
        ldx     $89
        bcc     LDF32
        inx
LDF32:  sta     $88
        txa
        clc
        adc     #$02
        sta     $89
        ldy     #$4E
        lda     ($88),y
        cmp     #$01
        bne     LDFA7
        jsr     LF1FD
        ldy     #$09
        lda     ($80),y
        ldy     #$03
        sta     ($80),y
        ldy     #$0A
        lda     ($80),y
        jsr     LF361
        lda     #$1C
        jsr     LF2C6
        clc
        adc     #$0B
        ldy     #$02
        sta     ($80),y
        ldy     #$0B
        lda     ($80),y
        jsr     LF361
        lda     #$1E
        jsr     LF2C6
        clc
        adc     #$20
        ldy     #$01
        sta     ($80),y
        lda     $80
        ldx     $81
        clc
        adc     #$15
        bcc     LDF7D
        inx
LDF7D:  ldy     #$0B
        clc
        adc     ($80),y
        bcc     LDF85
        inx
LDF85:  sta     $88
        stx     $89
        lda     ($88)
        sta     ($80)
        lda     $80
        ldx     $81
        clc
        adc     #$12
        bcc     LDF97
        inx
LDF97:  ldy     #$0B
        clc
        adc     ($80),y
        bcc     LDF9F
        inx
LDF9F:  sta     $88
        stx     $89
        lda     ($88)
        bra     LDFDE
LDFA7:  jsr     LF1FD
        ldy     #$09
        lda     ($80),y
        ldy     #$03
        sta     ($80),y
        ldy     #$0A
        lda     ($80),y
        jsr     LF361
        lda     #$1C
        jsr     LF2C6
        clc
        adc     #$0B
        ldy     #$02
        sta     ($80),y
        ldy     #$0B
        lda     ($80),y
        jsr     LF361
        lda     #$1E
        jsr     LF2C6
        clc
        adc     #$20
        ldy     #$01
        sta     ($80),y
        lda     #$15
        sta     ($80)
        lda     #$2A
LDFDE:  jsr     LE511
        ldy     #$06
        lda     ($80),y
        cmp     $025F
        beq     LDFED
        jmp     LE091

LDFED:  iny
        lda     ($80),y
        cmp     $0260
        beq     LDFF8
        jmp     LE091

LDFF8:  jsr     LF1FD
        lda     #$44
        ldy     #$02
        sta     ($80),y
        iny
        lda     #$00
        sta     ($80),y
        ldy     #$0A
        lda     ($80),y
        jsr     LF361
        lda     #$1C
        jsr     LF2C6
        clc
        adc     #$0B
        bcc     LE018
        inx
LE018:  sta     ($80)
        ldy     #$01
        txa
        sta     ($80),y
        ldy     #$0B
        lda     ($80),y
        jsr     LF361
        lda     #$1E
        jsr     LF2C6
        clc
        adc     #$20
        bcc     LE031
        inx
LE031:  jsr     LE435
        ldy     #$07
        ldx     #$00
        lda     ($80),y
        jsr     LF311
        sta     $88
        dey
        lda     ($80),y
        clc
        adc     $88
        ldy     #$02
        sta     ($80),y
        tay
        lda     $024E,y
        bne     LE091
        lda     $025F
        beq     LE070
        ldy     #$02
        ldx     #$00
        lda     ($80),y
        sec
        sbc     #$01
        bcs     LE060
        dex
LE060:  sta     $88
        txa
        clc
        adc     #$02
        sta     $89
        ldy     #$4E
        lda     ($88),y
        cmp     #$01
        bne     LE091
LE070:  jsr     LF20A
        lda     #$61
        ldy     #$03
        sta     ($80),y
        iny
        lda     #$FC
        sta     ($80),y
        lda     #$9A
        ldy     #$02
        sta     ($80),y
        lda     #$6A
        dey
        sta     ($80),y
        lda     #$0F
        sta     ($80)
        inc     a
        jsr     LE1A7
LE091:  ldy     #$05
        lda     ($80),y
        inc     a
        sta     ($80),y
        iny
        lda     ($80),y
        inc     a
        jmp     LDF12

LE09F:  iny
        ldx     #$00
        lda     ($80),y
        inc     a
        sta     ($80),y
        jmp     LDEBC

LE0AA:  lda     $0260
        jsr     LF311
        clc
        adc     $025F
        bcc     LE0B7
        inx
LE0B7:  stx     $90
        asl     a
        rol     $90
        clc
        adc     #$81
        sta     $88
        lda     $90
        adc     #$F7
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        ldy     #$03
        jsr     LF3AD
        lda     #$00
        ldy     #$07
        bra     LE0E0
LE0D9:  ldy     #$07
        clc
        lda     #$06
        adc     ($80),y
LE0E0:  sta     ($80),y
        ldy     #$04
        lda     ($80),y
        tax
        dey
        lda     ($80),y
        sta     $84
        stx     $85
        inc     a
        bne     LE0F2
        inx
LE0F2:  jsr     LF3AD
        lda     ($84)
        bne     LE0D9
        jsr     LF20A
        ldx     #$00
        lda     $0260
        jsr     LF311
        clc
        adc     $025F
        bcc     LE10B
        inx
LE10B:  stx     $90
        asl     a
        rol     $90
        clc
        adc     #$81
        sta     $88
        lda     $90
        adc     #$F7
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        ldy     #$03
        sta     ($80),y
        iny
        txa
        sta     ($80),y
        lda     #$5C
        sec
        ldy     #$0C
        sbc     ($80),y
        lsr     a
        clc
        adc     #$98
        ldy     #$02
        sta     ($80),y
        lda     #$1F
        dey
        sta     ($80),y
        lda     #$3F
        sta     ($80)
        lda     $80
        ldx     $81
        clc
        adc     #$13
        bcc     LE14C
        inx
LE14C:  ldy     $0260
        sta     $88
        stx     $89
        lda     ($88),y
        jsr     LE1A7
        jsr     LF217
        ldx     #$00
        lda     $0260
        jsr     LF311
        clc
        adc     $025F
        bcc     LE16A
        inx
LE16A:  stx     $90
        asl     a
        rol     $90
        clc
        adc     #$9F
        sta     $88
        lda     $90
        adc     #$F7
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        ldy     #$04
        sta     ($80),y
        iny
        txa
        sta     ($80),y
        lda     #$9A
        ldy     #$03
        sta     ($80),y
        lda     #$2B
        dey
        sta     ($80),y
        lda     #$0A
        dey
        sta     ($80),y
        lda     #$3F
        sta     ($80)
        lda     #$10
        jsr     LE38B
        ldy     #$14
        jmp     LF194

LE1A7:  jsr     LF34D
        lda     $A6
        ldx     $A7
        jsr     LF363
        ldy     #$05
        lda     ($80),y
        jsr     LF361
        ldy     #$06
        lda     ($80),y
        jsr     LC31B
        sta     $A6
        stx     $A7
        lda     $A4
        ldx     $A5
        jsr     LF363
        ldy     #$09
        lda     ($80),y
        sta     $A5
        dey
        lda     ($80),y
        sta     $A4
        lda     $A2
        ldx     $A3
        jsr     LF363
        lda     $A1
        jsr     LF34D
        jsr     LF1DA
        ldy     #$0B
        lda     ($80),y
        jsr     LF34D
        lda     $A0
        jsr     LF34D
        lda     $9F
        jsr     LF34D
        jmp     LE28F

LE1F8:  lda     ($80),y
        sec
        sbc     #$20
        bcs     LE200
        dex
LE200:  jsr     LF1A1
        clc
        adc     #$73
        sta     $A2
        txa
        adc     #$F8
        sta     $A3
        stz     $A0
LE20F:  lda     $A0
        cmp     #$08
        bcs     LE279
        lda     $A2
        ldx     $A3
        sta     $84
        stx     $85
        inc     a
        bne     LE221
        inx
LE221:  sta     $A2
        stx     $A3
        lda     ($84)
        sta     $A1
        stz     $9F
LE22B:  lda     $9F
        cmp     #$06
        bcs     LE26A
        lda     $A1
        and     #$01
        beq     LE24B
        lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        inc     a
        bne     LE243
        inx
LE243:  sta     $A6
        stx     $A7
        ldy     #$0C
        bra     LE25D
LE24B:  lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        inc     a
        bne     LE257
        inx
LE257:  sta     $A6
        stx     $A7
        ldy     #$0B
LE25D:  lda     ($80),y
        sta     ($84)
        lda     $A1
        lsr     a
        sta     $A1
        inc     $9F
        bra     LE22B
LE26A:  lda     #$FA
        clc
        adc     $A6
        sta     $A6
        bcc     LE275
        inc     $A7
LE275:  inc     $A0
        bra     LE20F
LE279:  lda     $A6
        sec
        sbc     #$FA
        sta     $A6
        lda     $A7
        sbc     #$07
        sta     $A7
        ldy     #$02
        clc
        lda     #$06
        adc     ($80),y
        sta     ($80),y
LE28F:  lda     $A4
        ldx     $A5
        sta     $84
        stx     $85
        inc     a
        bne     LE29B
        inx
LE29B:  sta     $A4
        stx     $A5
        ldx     #$00
        lda     ($84)
        ldy     #$03
        sta     ($80),y
        lda     ($80),y
        beq     LE2AE
        jmp     LE1F8

LE2AE:  dey
        lda     ($80),y
        pha
        ldy     #$04
LE2B4:  lda     ($80),y
        sta     $9D,y
        iny
        cpy     #$0B
        bne     LE2B4
        lda     ($80)
        sta     $9F
        ldy     #$01
        lda     ($80),y
        sta     $A0
        pla
        ldy     #$11
        jmp     LF194

LE2CE:  jsr     LF34D
        jsr     LF1E3
        ldy     #$01
LE2D6:  lda     LFD06,y
        sta     ($80),y
        dey
        bpl     LE2D6
        jmp     LE374

LE2E1:  iny
        lda     ($80),y
        sta     $89
        dey
        lda     ($80),y
        sta     $88
        lda     ($88)
        cmp     #$24
        bne     LE322
        jsr     LF1FD
        ldy     #$0B
        lda     ($80),y
        ldy     #$03
        sta     ($80),y
        ldy     #$09
        lda     ($80),y
        ldy     #$02
        sta     ($80),y
        ldy     #$08
        lda     ($80),y
        ldy     #$01
        sta     ($80),y
        ldy     #$07
        lda     ($80),y
        sta     ($80)
        dey
        lda     ($80),y
        jsr     LE7D7
        ldy     #$05
        sta     ($80),y
        iny
        lda     ($80),y
        iny
        bra     LE363
LE322:  iny
        lda     ($80),y
        sta     $89
        dey
        lda     ($80),y
        sta     $88
        lda     ($88)
        sta     ($80)
        jsr     LF20A
        lda     $80
        ldx     $81
        clc
        adc     #$05
        bcc     LE33D
        inx
LE33D:  ldy     #$03
        sta     ($80),y
        iny
        txa
        sta     ($80),y
        ldy     #$0A
        lda     ($80),y
        ldy     #$02
        sta     ($80),y
        ldy     #$09
        lda     ($80),y
        ldy     #$01
        sta     ($80),y
        ldy     #$08
        lda     ($80),y
        sta     ($80)
        dey
        lda     ($80),y
        jsr     LE1A7
        ldy     #$05
LE363:  sta     ($80),y
        ldy     #$09
        lda     ($80),y
        tax
        dey
        lda     ($80),y
        inc     a
        bne     LE371
        inx
LE371:  jsr     LF3AD
LE374:  ldy     #$09
        lda     ($80),y
        sta     $89
        dey
        lda     ($80),y
        sta     $88
        lda     ($88)
        beq     LE386
        jmp     LE2E1

LE386:  ldy     #$0A
        jmp     LF194

LE38B:  jsr     LF34D
        ldy     #$03
        lda     ($80),y
        jsr     LF34D
        ldy     #$05
        lda     ($80),y
        jsr     LF34D
        jsr     LF1E3
        ldy     #$01
LE3A1:  lda     LFD08,y
        sta     ($80),y
        dey
        bpl     LE3A1
        bra     LE41E
LE3AB:  iny
        lda     ($80),y
        sta     $89
        dey
        lda     ($80),y
        sta     $88
        lda     ($88)
        cmp     #$24
        bne     LE3CC
        ldy     #$06
        lda     ($80),y
        ldy     #$03
        clc
        adc     ($80),y
        sta     ($80),y
        ldy     #$08
        lda     ($80),y
        bra     LE40B
LE3CC:  iny
        lda     ($80),y
        sta     $89
        dey
        lda     ($80),y
        sta     $88
        lda     ($88)
        sta     ($80)
        jsr     LF20A
        lda     $80
        ldx     $81
        clc
        adc     #$05
        bcc     LE3E7
        inx
LE3E7:  ldy     #$03
        sta     ($80),y
        iny
        txa
        sta     ($80),y
        ldy     #$07
        lda     ($80),y
        ldy     #$02
        sta     ($80),y
        ldy     #$08
        lda     ($80),y
LE3FB:  ldy     #$01
        sta     ($80),y
        ldy     #$0A
        lda     ($80),y
        sta     ($80)
        dey
        lda     ($80),y
        jsr     LE1A7
LE40B:  ldy     #$02
        sta     ($80),y
        ldy     #$0A
        lda     ($80),y
        tax
        dey
        lda     ($80),y
        inc     a
        bne     LE41B
        inx
LE41B:  jsr     LF3AD
LE41E:  ldy     #$0A
        lda     ($80),y
        sta     $89
        dey
        lda     ($80),y
        sta     $88
        lda     ($88)
        beq     LE430
        jmp     LE3AB

LE430:  ldy     #$0B
        jmp     LF194

LE435:  jsr     LF363
        jsr     LF1E3
        ldy     #$07
        lda     ($80),y
        tax
        dey
        lda     ($80),y
        cpx     #$00
        bne     LE4B7
        cmp     #$42
        beq     LE471
        cmp     #$43
        beq     LE47D
        cmp     #$44
        beq     LE47D
        cmp     #$45
        beq     LE489
        cmp     #$46
        beq     LE494
        cmp     #$47
        beq     LE494
        cmp     #$48
        beq     LE49F
        cmp     #$49
        beq     LE49F
        cmp     #$4A
        beq     LE4AB
        cmp     #$4B
        beq     LE4AB
        bra     LE4B7
LE471:  lda     #$0C
        ldy     #$01
        sta     ($80),y
        lda     #$40
        sta     ($80)
        bra     LE4E7
LE47D:  lda     #$40
        ldy     #$01
        sta     ($80),y
        lda     #$0C
        sta     ($80)
        bra     LE4E7
LE489:  txa
        ldy     #$01
        sta     ($80),y
        lda     #$30
        sta     ($80)
        bra     LE4E7
LE494:  lda     #$01
        tay
        sta     ($80),y
        lda     #$17
        sta     ($80)
        bra     LE4E7
LE49F:  lda     #$10
        ldy     #$01
        sta     ($80),y
        lda     #$35
        sta     ($80)
        bra     LE4E7
LE4AB:  lda     #$05
        ldy     #$01
        sta     ($80),y
        lda     #$1F
        sta     ($80)
        bra     LE4E7
LE4B7:  jsr     LF1FD
        ldy     #$0B
        lda     ($80),y
        tax
        dey
        lda     ($80),y
        ldy     #$02
        sta     ($80),y
        iny
        txa
        sta     ($80),y
        ldy     #$09
        lda     ($80),y
        tax
        dey
        lda     ($80),y
        sta     ($80)
        ldy     #$01
        txa
        sta     ($80),y
        ldy     #$07
        lda     ($80),y
        tax
        dey
        lda     ($80),y
        jsr     LE6D4
        jmp     LF295

LE4E7:  jsr     LF1FD
        ldy     #$0A
        lda     ($80),y
        ldy     #$03
        sta     ($80),y
        ldy     #$08
        lda     ($80),y
        ldy     #$02
        sta     ($80),y
        ldy     #$06
        lda     ($80),y
        ldy     #$01
        sta     ($80),y
        ldy     #$05
        lda     ($80),y
        sta     ($80)
        dey
        lda     ($80),y
        jsr     LE511
        jmp     LF295

LE511:  jsr     LF34D
        lda     $A6
        ldx     $A7
        jsr     LF363
        ldy     #$05
        lda     ($80),y
        jsr     LF361
        ldy     #$06
        lda     ($80),y
        jsr     LC31B
        sta     $A6
        stx     $A7
        lda     $A4
        ldx     $A5
        jsr     LF363
        ldy     #$08
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LE53F
        inx
        clc
LE53F:  adc     #$BD
        sta     $88
        txa
        adc     #$F7
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $A4
        stx     $A5
        lda     $A3
        jsr     LF34D
        lda     $A2
        jsr     LF34D
        lda     $A1
        jsr     LF34D
        lda     $A0
        jsr     LF34D
        lda     $9F
        jsr     LF34D
        lda     $9E
        jsr     LF34D
        lda     $9D
        jsr     LF34D
        jsr     LF20A
        lda     #$00
        jsr     LF34D
        stz     $A2
        stz     $A3
        lda     ($A4)
        sta     $9F
        ldy     #$01
        lda     ($A4),y
        sta     $A0
        sta     $A1
        iny
        lda     ($A4),y
        sta     $9D
        lda     #$03
        clc
        adc     $A4
        sta     $A4
        bcs     LE59F
        jmp     LE6BC

LE59F:  inc     $A5
        jmp     LE6BC

LE5A4:  lda     $A2
        beq     LE5AB
        jmp     LE634

LE5AB:  lda     $A4
        ldx     $A5
        sta     $84
        stx     $85
        inc     a
        bne     LE5B7
        inx
LE5B7:  sta     $A4
        stx     $A5
        lda     ($84)
        sta     $9E
        lda     $A3
        bne     LE634
        lda     $9D
        beq     LE630
        lda     $A1
        cmp     #$01
        beq     LE5D3
        lda     $A0
        cmp     $A1
        bne     LE5F2
LE5D3:  lda     #$00
        ldy     #$05
        sta     ($80),y
        lda     $9F
        sec
        sbc     #$01
        dey
        sta     ($80),y
        lda     $9D
        cmp     #$02
        bne     LE626
        dec     a
        dey
        sta     ($80),y
        lda     $9F
        sec
        sbc     #$02
        bra     LE62B
LE5F2:  lda     $A1
        cmp     #$02
        beq     LE60E
        ldx     #$00
        lda     $A0
        sec
        sbc     #$01
        bcs     LE602
        dex
LE602:  cpx     #$00
        bne     LE60A
        cmp     $A1
        beq     LE60E
LE60A:  lda     #$00
        bra     LE630
LE60E:  lda     $9D
        cmp     #$02
        beq     LE618
        lda     #$00
        bra     LE630
LE618:  lda     #$00
        ldy     #$05
        sta     ($80),y
        lda     $9F
        sec
        sbc     #$01
        dey
        sta     ($80),y
LE626:  lda     #$FF
        dey
        sta     ($80),y
LE62B:  dey
        sta     ($80),y
        lda     #$01
LE630:  ldy     #$01
        sta     ($80),y
LE634:  ldy     #$01
        lda     ($80),y
        cmp     #$01
        bne     LE65D
        ldy     #$05
        lda     ($80),y
        cmp     $A3
        beq     LE659
        dey
        lda     ($80),y
        cmp     $A3
        beq     LE659
        dey
        lda     ($80),y
        cmp     $A3
        beq     LE659
        dey
        lda     ($80),y
        cmp     $A3
        bne     LE65D
LE659:  lda     #$01
        bra     LE65F
LE65D:  lda     #$00
LE65F:  sta     ($80)
        lda     ($80)
        bne     LE679
        lda     $9E
        and     #$80
        beq     LE66F
        ldy     #$12
        bra     LE671
LE66F:  ldy     #$11
LE671:  lda     ($80),y
        cmp     #$40
        beq     LE679
        sta     ($A6)
LE679:  lda     $A6
        ldx     $A7
        inc     a
        bne     LE681
        inx
LE681:  sta     $A6
        stx     $A7
        lda     $9E
        asl     a
        sta     $9E
        inc     $A3
        lda     $9F
        cmp     $A3
        bne     LE6B0
        lda     #$00
        stz     $A3
        stz     $A2
        dec     $A1
        sec
        sbc     $9F
        pha
        lda     #$01
        sbc     #$00
        tax
        pla
        clc
        adc     $A6
        sta     $A6
        txa
        adc     $A7
        sta     $A7
        bra     LE6BC
LE6B0:  lda     $A2
        cmp     #$07
        bne     LE6BA
        stz     $A2
        bra     LE6BC
LE6BA:  inc     $A2
LE6BC:  lda     $A1
        beq     LE6C3
        jmp     LE5A4

LE6C3:  ldy     #$06
LE6C5:  lda     ($80),y
        sta     $97,y
        iny
        cpy     #$11
        bne     LE6C5
        ldy     #$16
        jmp     LF194

LE6D4:  jsr     LF363
        lda     $A6
        ldx     $A7
        jsr     LF363
        ldy     #$07
        jsr     LF37B
        ldy     #$05
        lda     ($80),y
        tax
        dey
        lda     ($80),y
        jsr     LC31B
        sta     $A6
        stx     $A7
        lda     $A4
        ldx     $A5
        jsr     LF363
        ldy     #$09
        lda     ($80),y
        sta     $90
        dey
        lda     ($80),y
        asl     a
        rol     $90
        clc
        adc     #$BD
        sta     $88
        lda     $90
        adc     #$F7
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $A4
        stx     $A5
        lda     $A3
        jsr     LF34D
        lda     $A2
        jsr     LF34D
        lda     $A1
        jsr     LF34D
        lda     $A0
        jsr     LF34D
        lda     $9F
        jsr     LF34D
        lda     ($A4)
        sta     $9F
        ldy     #$01
        lda     ($A4),y
        sta     $A0
        lda     #$02
        clc
        adc     $A4
        sta     $A4
        bcc     LE7C3
        inc     $A5
        bra     LE7C3
LE74B:  lda     $A4
        ldx     $A5
        sta     $84
        stx     $85
        inc     a
        bne     LE757
        inx
LE757:  sta     $A4
        stx     $A5
        ldy     #$00
        lda     ($84)
        sta     $A3
        lda     $A3
        bne     LE77D
        dec     $A0
        sec
        sbc     $9F
        pha
        lda     #$01
        sbc     #$00
        tax
        pla
        clc
        adc     $A6
        sta     $A6
        txa
        adc     $A7
        sta     $A7
        bra     LE7C3
LE77D:  lda     $A4
        ldx     $A5
        sta     $84
        stx     $85
        inc     a
        bne     LE789
        inx
LE789:  sta     $A4
        stx     $A5
        lda     ($84)
        sta     $A2
        cmp     #$40
        bne     LE7A3
        lda     $A3
        clc
        adc     $A6
        sta     $A6
        tya
        adc     $A7
        sta     $A7
        bra     LE7C3
LE7A3:  stz     $A1
LE7A5:  lda     $A1
        cmp     $A3
        bcs     LE7C3
        lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        inc     a
        bne     LE7B7
        inx
LE7B7:  sta     $A6
        stx     $A7
        lda     $A2
        sta     ($84),y
        inc     $A1
        bra     LE7A5
LE7C3:  lda     $A0
        bne     LE74B
        tay
LE7C8:  lda     ($80),y
        sta     $9F,y
        iny
        cpy     #$09
        bne     LE7C8
        ldy     #$0F
        jmp     LF194

LE7D7:  jsr     LF34D
        lda     #$64
        jsr     LF34D
        jsr     LF1FD
        lda     #$00
        jsr     LF34D
        jsr     LF34D
        ldy     #$0A
        lda     ($80),y
        jsr     LF34D
        bra     LE85A
LE7F3:  lda     ($80),y
        ldy     #$0C
        eor     #$FF
        sec
        adc     ($80),y
        sta     ($80),y
        ldy     #$01
        lda     ($80),y
        inc     a
        sta     ($80),y
LE805:  ldy     #$0C
        ldx     #$00
        lda     ($80),y
        ldy     #$07
        cmp     ($80),y
        bcs     LE7F3
        ldy     #$01
        lda     ($80),y
        bne     LE81C
        iny
        lda     ($80),y
        beq     LE846
LE81C:  ldy     #$02
        lda     ($80),y
        pha
        inc     a
        sta     ($80),y
        pla
        clc
        adc     #$03
        bcc     LE82C
        inx
        clc
LE82C:  adc     $80
        sta     $88
        txa
        adc     $81
        sta     $89
        dey
        lda     ($80),y
        clc
        adc     #$30
        sta     ($88)
        clc
        lda     #$06
        adc     ($80)
        sta     ($80)
        lda     #$00
LE846:  ldy     #$01
        sta     ($80),y
        ldy     #$07
        lda     ($80),y
        jsr     LF361
        lda     #$0A
        jsr     LF3F3
        ldy     #$07
        sta     ($80),y
LE85A:  ldy     #$07
        lda     ($80),y
        bne     LE805
        ldy     #$02
        lda     ($80),y
        bne     LE889
        tax
        lda     ($80),y
        pha
        inc     a
        sta     ($80),y
        pla
        clc
        adc     #$03
        bcc     LE875
        inx
        clc
LE875:  adc     $80
        sta     $88
        txa
        adc     $81
        sta     $89
        lda     #$30
        sta     ($88)
        clc
        lda     #$06
        adc     ($80)
        sta     ($80)
LE889:  lda     $80
        ldx     $81
        clc
        adc     #$03
        bcc     LE893
        inx
LE893:  ldy     #$02
        sta     $88
        stx     $89
        lda     ($80),y
        tay
        lda     #$00
        sta     ($88),y
        jsr     LF20A
        lda     $80
        ldx     $81
        clc
        adc     #$08
        bcc     LE8AD
        inx
LE8AD:  ldy     #$03
        sta     ($80),y
        iny
        txa
        sta     ($80),y
        ldy     #$10
        lda     ($80),y
        ldy     #$02
        sta     ($80),y
        ldy     #$0F
        lda     ($80),y
        ldy     #$01
        sta     ($80),y
        ldy     #$0E
        lda     ($80),y
        sta     ($80)
        dey
        lda     ($80),y
        jsr     LE1A7
        ldx     #$00
        lda     ($80)
        ldy     #$0D
        jmp     LF194

LE8DA:  lda     LF47B
        sta     $89
        lda     LF47A
        sta     $88
        lda     #$05
        sta     ($88)
        sta     $0DF6
        rts

LE8EC:  jsr     LF1F0
        jsr     LEA7D
        jsr     LAE94
        jsr     LA82A
        jsr     LA9DF
        jsr     LA6DA
        jsr     LA504
        jsr     LAE23
        jsr     LC0A2
        jsr     LE8DA
        jsr     LC4F1
        jsr     LEA4F
        jsr     LC970
        jsr     LD178
LE916:  ldy     #$01
        lda     ($80),y
        jsr     LF361
        lda     LF483
        sta     $89
        lda     LF482
        sta     $88
        lda     ($88)
        jsr     LF231
        beq     LE949
        lda     LF483
        sta     $89
        lda     LF482
        sta     $88
        lda     ($88)
        ldy     #$01
        sta     ($80),y
        lda     LFD13
        ora     LFD14
        bne     LE949
        jsr     LEAC2
LE949:  lda     LF47F
        sta     $89
        lda     LF47E
        sta     $88
        lda     ($88)
        ldy     #$02
        sta     ($80),y
        lda     ($80),y
        beq     LE916
        jsr     LEFBD
        lda     LFD13
        ora     LFD14
        bne     LE971
        ldy     #$02
        lda     ($80),y
        jsr     L99C2
        bra     LE978
LE971:  ldy     #$02
        lda     ($80),y
        jsr     L9DAC
LE978:  sta     ($80)
        jsr     LE8DA
        lda     ($80)
        and     #$01
        beq     LE986
        jsr     LD76D
LE986:  lda     ($80)
        and     #$04
        beq     LE98F
        jsr     LEE8E
LE98F:  lda     ($80)
        and     #$02
        beq     LE998
        jsr     LD535
LE998:  lda     ($80)
        and     #$08
        beq     LE9A1
        jsr     LC970
LE9A1:  lda     ($80)
        and     #$10
        beq     LE9AA
        jsr     LD178
LE9AA:  lda     ($80)
        and     #$20
        beq     LE9B3
        jsr     LD92E
LE9B3:  lda     ($80)
        and     #$40
        beq     LE9BC
        jsr     LDE50
LE9BC:  lda     ($80)
        and     #$80
        bne     LE9C5
        jmp     LE916

LE9C5:  jsr     LDBB4
        jmp     LE916

LE9CB:  lda     LF47B
        sta     $89
        lda     LF47A
        sta     $88
        lda     $0DF7
        sta     ($88)
        lda     $0DF7
        sta     $0DF6
        rts

LE9E1:  lda     $0DF6
        sta     $0DF7
        rts

LE9E8:  lda     $0DF4
        ldx     $0DF5
        jsr     LF1AF
        jsr     LF1A1
        eor     $0DF4
        pha
        txa
        eor     $0DF5
        tax
        pla
        sta     $0DF4
        stx     $0DF5
        sta     $88
        stx     $89
        lda     $0DF5
        lsr     a
        eor     $88
        pha
        lda     #$00
        eor     $89
        tax
        pla
        sta     $0DF4
        stx     $0DF5
        sta     $88
        stx     $89
        lda     #$00
        eor     $88
        pha
        lda     $0DF4
        eor     $89
        tax
        pla
        sta     $0DF4
        stx     $0DF5
        rts

LEA32:  jsr     LE9E8
        and     #$01
        ldx     #$00
        rts

LEA3A:  jsr     LF34D
        jsr     LE9E8
        jsr     LF363
        ldy     #$02
        lda     ($80),y
        jsr     LF442
        ldx     #$00
        jmp     LF25F

LEA4F:  stz     $0200
        stz     $0201
        lda     #$01
        sta     $0202
        sta     $0203
        stz     $0226
        lda     $0207
        sta     $0205
        lda     $0206
        sta     $0204
        lda     $020B
        sta     $020A
        lda     #$04
        sta     $0221
        sta     $0222
        jmp     LEE8E

LEA7D:  lda     LF477
        sta     $89
        lda     LF476
        sta     $88
        lda     #$00
        sta     ($88)
        lda     LF479
        sta     $89
        lda     LF478
        sta     $88
        lda     #$04
        sta     ($88)
        lda     LF47B
        sta     $89
        lda     LF47A
        sta     $88
        lda     #$02
        sta     ($88)
        lda     #$20
        sta     $0DF4
        stz     $0DF5
        stz     $025D
        stz     $025E
        stz     $025F
        stz     $0260
        stz     $0261
        stz     $0262
        rts

LEAC2:  lda     #$00
        jsr     LF34D
        lda     $0204
        jsr     LF34D
        lda     $020A
        jsr     LF34D
        jsr     LF1DA
        lda     $0214
        clc
        adc     $0204
        sta     $0204
        lda     #$00
        adc     $0205
        sta     $0205
        lda     $0212
        clc
        adc     $020A
        sta     $020A
        lda     $0226
        bne     LEAFA
        jmp     LEE3E

LEAFA:  lda     $0223
        cmp     #$03
        beq     LEB04
        jmp     LEC76

LEB04:  lda     $020A
        cmp     $0218
        bcs     LEB0F
        jmp     LEE3E

LEB0F:  lda     $024E
        beq     LEB1D
        lda     #$05
        jsr     LEA3A
        cmp     #$00
        beq     LEB29
LEB1D:  lda     $0218
        eor     #$FF
        sec
        adc     $020A
        sta     $020A
LEB29:  lda     $0227
        ldx     $0228
        inc     a
        bne     LEB33
        inx
LEB33:  sta     $0227
        stx     $0228
        lda     #$01
        ldy     #$03
        sta     ($80),y
        lda     $0229
        ldx     $022A
        cpx     $0228
        beq     LEB4D
        jmp     LEE3E

LEB4D:  cmp     $0227
        beq     LEB55
        jmp     LEE3E

LEB55:  ldx     #$00
        lda     $0224
        jsr     LF1A1
        clc
        adc     #$54
        sta     $88
        txa
        adc     #$03
        sta     $89
        ldy     #$07
        lda     ($88),y
        tax
        dey
        lda     ($88),y
        cpx     #$00
        bne     LEB7C
        cmp     #$00
        bne     LEB7E
        inc     $021D
        bra     LEBC8
LEB7C:  ldx     #$00
LEB7E:  lda     $0224
        jsr     LF1A1
        clc
        adc     #$54
        sta     $88
        txa
        adc     #$03
        sta     $89
        iny
        lda     ($88),y
        tax
        dey
        lda     ($88),y
        cpx     #$00
        bne     LEBA2
        cmp     #$01
        bne     LEBA4
        inc     $021E
        bra     LEBC8
LEBA2:  ldx     #$00
LEBA4:  lda     $0224
        jsr     LF1A1
        clc
        adc     #$54
        sta     $88
        txa
        adc     #$03
        sta     $89
        iny
        lda     ($88),y
        tax
        dey
        lda     ($88),y
        cpx     #$00
        bne     LEBC6
        cmp     #$02
        bne     LEBC8
        inc     $021F
LEBC6:  ldx     #$00
LEBC8:  lda     $0252
        cmp     #$01
        bne     LEC44
        lda     $0224
        jsr     LF1A1
        clc
        adc     #$54
        sta     $88
        txa
        adc     #$03
        sta     $89
        iny
        lda     ($88),y
        tax
        dey
        lda     ($88),y
        cpx     #$00
        bne     LEBF3
        cmp     #$00
        bne     LEBF5
        inc     $021D
        bra     LEC3D
LEBF3:  ldx     #$00
LEBF5:  lda     $0224
        jsr     LF1A1
        clc
        adc     #$54
        sta     $88
        txa
        adc     #$03
        sta     $89
        iny
        lda     ($88),y
        tax
        dey
        lda     ($88),y
        cpx     #$00
        bne     LEC19
        cmp     #$01
        bne     LEC1B
        inc     $021E
        bra     LEC3D
LEC19:  ldx     #$00
LEC1B:  lda     $0224
        jsr     LF1A1
        clc
        adc     #$54
        sta     $88
        txa
        adc     #$03
        sta     $89
        iny
        lda     ($88),y
        tax
        dey
        lda     ($88),y
        cpx     #$00
        bne     LEC3D
        cmp     #$02
        bne     LEC3D
        inc     $021F
LEC3D:  lda     #$02
        jsr     LC023
        ldx     #$00
LEC44:  lda     $0224
        jsr     LF1A1
        clc
        adc     #$54
        sta     $88
        txa
        adc     #$03
        sta     $89
        lda     #$00
        ldy     #$04
        sta     ($88),y
        iny
        sta     ($88),y
        lda     #$02
        jsr     LC023
        lda     #$04
        sta     $0223
        stz     $0226
        jsr     LC970
        lda     #$01
        ldy     #$03
        sta     ($80),y
        jmp     LEE3E

LEC76:  lda     $0223
        beq     LEC7E
        jmp     LED2F

LEC7E:  lda     $020A
        cmp     $0219
        bcs     LEC89
        jmp     LEE3E

LEC89:  lda     $0219
        eor     #$FF
        sec
        adc     $020A
        sta     $020A
        lda     $0227
        ldx     $0228
        inc     a
        bne     LEC9F
        inx
LEC9F:  sta     $0227
        stx     $0228
        lda     #$01
        ldy     #$03
        sta     ($80),y
        lda     $0229
        ldx     $022A
        cpx     $0228
        beq     LECB9
        jmp     LEE3E

LECB9:  cmp     $0227
        beq     LECC1
        jmp     LEE3E

LECC1:  lda     $0225
        jsr     LF361
        lda     #$28
        jsr     LF2C6
        clc
        adc     #$94
        tay
        txa
        adc     #$04
        tax
        tya
        clc
        adc     $0224
        bcc     LECDC
        inx
LECDC:  sta     $88
        stx     $89
        lda     #$00
        sta     ($88)
        inc     a
        jsr     LC023
        lda     #$04
        sta     $0223
        stz     $0226
        lda     $0251
        cmp     #$01
        bne     LED23
        lda     #$04
        jsr     LEA3A
        cmp     #$00
        bne     LED23
        lda     #$03
        jsr     LEA3A
        sta     ($80)
        lda     ($80)
        bne     LED10
        inc     $021E
        bra     LED1E
LED10:  lda     ($80)
        cmp     #$01
        bne     LED1B
        inc     $021D
        bra     LED1E
LED1B:  inc     $021F
LED1E:  lda     #$02
        jsr     LC023
LED23:  jsr     LC970
        lda     #$01
        ldy     #$03
        sta     ($80),y
        jmp     LEE3E

LED2F:  lda     $0223
        cmp     #$01
        beq     LED39
        jmp     LEE3E

LED39:  lda     $020A
        cmp     $0217
        bcs     LED44
        jmp     LEE2A

LED44:  lda     $0217
        eor     #$FF
        sec
        adc     $020A
        sta     $020A
        lda     $0256
        cmp     #$01
        bne     LED66
        lda     #$14
        jsr     LEA3A
        cmp     #$00
        bne     LED66
        stz     $0227
        stz     $0228
LED66:  lda     $0227
        ora     $0228
        beq     LEDB0
        lda     $020D
        eor     #$FF
        sec
        adc     $0227
        sta     $0227
        lda     #$FF
        adc     $0228
        sta     $0228
        lda     #$64
        jsr     LEA3A
        cmp     $0213
        txa
        sbc     #$00
        bcs     LEDB0
        lda     $0254
        cmp     #$01
        bne     LED9B
        lda     $020D
        bra     LED9F
LED9B:  lda     $020D
        lsr     a
LED9F:  eor     #$FF
        sec
        adc     $0227
        sta     $0227
        lda     #$FF
        adc     $0228
        sta     $0228
LEDB0:  lda     $0227
        cmp     #$01
        lda     $0228
        sbc     #$00
        bvc     LEDBE
        eor     #$80
LEDBE:  bpl     LEE24
        ldx     #$00
        lda     $0224
        jsr     LF325
        clc
        adc     #$64
        sta     $88
        txa
        adc     #$02
        sta     $89
        lda     #$00
        ldy     #$04
        sta     ($88),y
        iny
        sta     ($88),y
        lda     $0255
        cmp     #$01
        bne     LEDE6
        lda     #$0B
        bra     LEDE8
LEDE6:  lda     #$0A
LEDE8:  jsr     LC023
        lda     #$04
        sta     $0223
        stz     $0226
        lda     $024F
        cmp     #$01
        bne     LEE21
        lda     #$0A
        jsr     LEA3A
LEDFF:  cmp     #$00
        bne     LEE21
        lda     #$03
        jsr     LEA3A
        sta     ($80)
        lda     ($80)
        bne     LEE13
        inc     $021D
        bra     LEE21
LEE13:  lda     ($80)
        cmp     #$01
        bne     LEE1E
        inc     $021E
        bra     LEE21
LEE1E:  inc     $021F
LEE21:  jsr     LC970
LEE24:  lda     #$01
        ldy     #$03
        sta     ($80),y
LEE2A:  jsr     LEA32
        tax
        beq     LEE3E
        lda     $0204
        sec
        sbc     #$02
        sta     $0204
        bcs     LEE3E
        dec     $0205
LEE3E:  lda     $020A
        sec
        sbc     $020B
        bcc     LEE4F
        beq     LEE4F
        lda     $020B
        sta     $020A
LEE4F:  ldy     #$01
        lda     ($80),y
        cmp     $020A
        beq     LEE5D
        tya
        ldy     #$03
        sta     ($80),y
LEE5D:  jsr     LC417
        ldx     #$00
        ldy     #$02
        lda     ($80),y
        cpx     $0205
        bne     LEE70
        cmp     $0204
        beq     LEE75
LEE70:  lda     #$01
        iny
        sta     ($80),y
LEE75:  jsr     LF0C9
        cmp     #$01
        bne     LEE80
        ldy     #$03
        sta     ($80),y
LEE80:  ldy     #$03
        lda     ($80),y
        cmp     #$01
        bne     LEE8B
        jsr     LD178
LEE8B:  jmp     LF281

LEE8E:  lda     $0200
        clc
        adc     $0202
        jsr     LF34D
        lda     $0201
        clc
        adc     $0203
        jsr     LF34D
        lda     #$04
        sta     $0223
        lda     $0222
        cmp     #$01
        bne     LEEBE
        lda     $0203
        bne     LEEB6
        jmp     LF26E

LEEB6:  ldy     #$00
        lda     ($80)
        pha
        dec     a
        bra     LEF01
LEEBE:  lda     $0222
        cmp     #$02
        bne     LEED3
        lda     $0203
        cmp     #$03
        bne     LEECF
        jmp     LF26E

LEECF:  ldy     #$00
        bra     LEEFD
LEED3:  lda     $0222
        cmp     #$03
        bne     LEEEA
        lda     $0202
        bne     LEEE2
        jmp     LF26E

LEEE2:  ldy     #$01
        lda     ($80),y
        pha
        dec     a
        bra     LEF01
LEEEA:  lda     $0222
        cmp     #$04
        bne     LEF04
        lda     $0203
        cmp     #$04
        bne     LEEFB
        jmp     LF26E

LEEFB:  ldy     #$01
LEEFD:  lda     ($80),y
        pha
        inc     a
LEF01:  sta     ($80),y
        pla
LEF04:  ldy     #$01
        lda     ($80),y
        sta     $0224
        lda     ($80)
        sta     $0225
        lda     ($80)
        jsr     LF361
        lda     #$28
        jsr     LF2C6
        clc
        adc     #$94
        sta     $88
        txa
        adc     #$04
        sta     $89
        ldy     #$01
        lda     ($80),y
        tay
        lda     ($88),y
        cmp     #$04
        bne     LEF35
        stz     $0223
        jmp     LF26E

LEF35:  lda     ($80)
        jsr     LF361
        lda     #$28
        jsr     LF2C6
        clc
        adc     #$94
        sta     $88
        txa
        adc     #$04
        sta     $89
        ldy     #$01
        lda     ($80),y
        tay
        lda     ($88),y
        cmp     #$06
        bne     LEF5C
        lda     #$02
        sta     $0223
        jmp     LF26E

LEF5C:  ldy     #$01
        lda     ($80),y
        jsr     LF34D
        ldy     #$01
        lda     ($80),y
        jsr     LC3B0
        cmp     #$01
        bne     LEF85
        sta     $0223
        lda     ($80)
        jsr     LF361
        lda     #$28
        jsr     LF2C6
        clc
        adc     #$B4
        sta     $88
        txa
        adc     #$07
        bra     LEFAE
LEF85:  ldy     #$01
        lda     ($80),y
        jsr     LF34D
        ldy     #$01
        lda     ($80),y
        jsr     LC349
        cmp     #$01
        bne     LEFBA
        lda     #$03
        sta     $0223
        lda     ($80)
        jsr     LF361
        lda     #$28
        jsr     LF2C6
        clc
        adc     #$D4
        sta     $88
        txa
        adc     #$0A
LEFAE:  sta     $89
        ldy     #$01
        lda     ($80),y
        tay
        lda     ($88),y
        sta     $0224
LEFBA:  jmp     LF26E

LEFBD:  lda     LF47B
        sta     $89
        lda     LF47A
        sta     $88
        lda     #$02
        sta     ($88)
        sta     $0DF6
        rts

        jsr     LF363
        lda     $A6
        ldx     $A7
        jsr     LF363
        ldy     #$05
        lda     ($80),y
        sta     $90
        dey
        lda     ($80),y
        asl     a
        rol     $90
        clc
        adc     #$BD
        sta     $88
        lda     $90
        adc     #$F7
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $A6
        stx     $A7
        lda     $A4
        ldx     $A5
        jsr     LF363
        ldy     #$05
        lda     ($80),y
        sta     $90
        dey
        lda     ($80),y
        asl     a
        rol     $90
        clc
        adc     #$BD
        sta     $88
        lda     $90
        adc     #$F7
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $A4
        stx     $A5
        lda     $A3
        jsr     LF34D
        lda     $A2
        jsr     LF34D
        jsr     LF1E3
        lda     ($A4)
        lsr     a
        lsr     a
        lsr     a
        sta     $A3
        lda     ($A4)
        jsr     LF361
        lda     $A3
        jsr     LF1A1
        jsr     LF3D3
        cpx     #$00
        bne     LF04D
        cmp     #$00
        beq     LF04F
LF04D:  inc     $A3
LF04F:  ldy     #$01
        lda     ($A4),y
        sta     $A2
        lda     #$00
        sta     ($80)
        ldy     #$01
        sta     ($80),y
LF05D:  jsr     LF379
        lda     $A3
        jsr     LF361
        lda     $A2
        jsr     LF2C6
        clc
        adc     #$03
        bcc     LF070
        inx
LF070:  jsr     LF233
        bcs     LF0B3
        lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        inc     a
        bne     LF081
        inx
LF081:  sta     $A6
        stx     $A7
        lda     $84
        ldx     $85
        jsr     LF363
        lda     $A4
        ldx     $A5
        sta     $84
        stx     $85
        inc     a
        bne     LF098
        inx
LF098:  sta     $A4
        stx     $A5
        ldy     #$00
        lda     ($84)
        jsr     LF395
        ldy     #$01
        lda     ($80),y
        tax
        lda     ($80)
        inc     a
        bne     LF0AE
        inx
LF0AE:  jsr     LF3AB
        bra     LF05D
LF0B3:  ldx     #$00
        txa
        pha
        ldy     #$02
LF0B9:  lda     ($80),y
        sta     $A0,y
        iny
        cpy     #$08
        bne     LF0B9
        pla
        ldy     #$0C
        jmp     LF194

LF0C9:  ldx     #$00
        lda     $0201
        clc
        adc     $0203
        bcc     LF0D5
        inx
LF0D5:  jsr     LF363
        lda     #$28
        jsr     LF2C6
        clc
        adc     #$94
        sta     $88
        txa
        adc     #$04
        sta     $89
        ldx     #$00
        lda     $0200
        clc
        adc     $0202
        bcc     LF0F4
        inx
        clc
LF0F4:  adc     $88
        sta     $88
        txa
        adc     $89
        sta     $89
        ldx     #$00
        lda     ($88)
        cmp     #$05
        bne     LF124
        lda     $0215
        eor     #$FF
        sec
        adc     $0204
        sta     $0204
        lda     $0216
        eor     #$FF
        adc     $0205
        sta     $0205
        jsr     LC417
        ldx     #$00
        lda     #$01
        rts

LF124:  lda     $0201
        clc
        adc     $0203
        bcc     LF12E
        inx
LF12E:  jsr     LF363
        lda     #$28
        jsr     LF2C6
        clc
        adc     #$94
        sta     $88
        txa
        adc     #$04
        sta     $89
        ldx     #$00
        lda     $0200
        clc
        adc     $0202
        bcc     LF14D
        inx
        clc
LF14D:  adc     $88
        sta     $88
        txa
        adc     $89
        sta     $89
        ldx     #$00
        lda     ($88)
        cmp     #$06
        bne     LF175
        jsr     LE9E1
        jsr     LA9DF
        jsr     LA6DA
        jsr     LA504
        jsr     LE9CB
        jsr     LEA4F
        ldx     #$00
        lda     #$01
        rts

LF175:  txa
        rts

        ldx     #$00
LF179:  clc
        ldy     #$00
        adc     ($80),y
        iny
        sta     $90
        txa
        adc     ($80),y
        tax
        clc
        lda     $80
        adc     #$02
        sta     $80
        bcc     LF190
        inc     $81
LF190:  lda     $90
        rts

LF193:  iny
LF194:  pha
        clc
        tya
        adc     $80
        sta     $80
        bcc     LF19F
        inc     $81
LF19F:  pla
        rts

LF1A1:  stx     $90
        asl     a
        rol     $90
        asl     a
        rol     $90
        asl     a
        rol     $90
        ldx     $90
        rts

LF1AF:  stx     $90
        asl     a
        rol     $90
        asl     a
        rol     $90
        asl     a
        rol     $90
        asl     a
        rol     $90
        ldx     $90
        rts

        cpx     #$00
        bne     LF1CA
        tax
        bne     LF1CA
        lda     #$01
        rts

LF1CA:  ldx     #$00
        txa
        rts

LF1CE:  ldy     #$00
        beq     LF1D9
        lda     #$13
        ldx     #$FD
        jmp     LFD15

LF1D9:  rts

LF1DA:  ldy     $80
        bne     LF1E0
        dec     $81
LF1E0:  dec     $80
        rts

LF1E3:  lda     $80
        sec
        sbc     #$02
        sta     $80
        bcc     LF1ED
        rts

LF1ED:  dec     $81
        rts

LF1F0:  lda     $80
        sec
        sbc     #$03
        sta     $80
        bcc     LF1FA
        rts

LF1FA:  dec     $81
        rts

LF1FD:  lda     $80
        sec
        sbc     #$04
        sta     $80
        bcc     LF207
        rts

LF207:  dec     $81
        rts

LF20A:  lda     $80
        sec
        sbc     #$05
        sta     $80
        bcc     LF214
        rts

LF214:  dec     $81
        rts

LF217:  lda     $80
        sec
        sbc     #$06
        sta     $80
        bcc     LF221
        rts

LF221:  dec     $81
        rts

LF224:  lda     $80
        sec
        sbc     #$07
        sta     $80
        bcc     LF22E
        rts

LF22E:  dec     $81
        rts

LF231:  ldx     #$00
LF233:  sta     $82
        stx     $83
        ldy     #$00
        lda     ($80),y
        tax
        inc     $80
        bne     LF242
        inc     $81
LF242:  lda     ($80),y
        inc     $80
        bne     LF24A
        inc     $81
LF24A:  sec
        sbc     $83
        bne     LF258
        cpx     $82
        beq     LF257
        adc     #$FF
        ora     #$01
LF257:  rts

LF258:  bvc     LF257
        eor     #$FF
        ora     #$01
        rts

LF25F:  inc     $80
        bne     LF265
        inc     $81
LF265:  rts

        ldy     #$01
        lda     ($80),y
        tax
        dey
        lda     ($80),y
LF26E:  inc     $80
        beq     LF277
        inc     $80
        beq     LF279
        rts

LF277:  inc     $80
LF279:  inc     $81
        rts

LF27C:  ldy     #$03
        jmp     LF194

LF281:  ldy     #$04
        jmp     LF194

LF286:  ldy     #$05
        jmp     LF194

LF28B:  ldy     #$06
        jmp     LF194

LF290:  ldy     #$07
        jmp     LF194

LF295:  ldy     #$08
        jmp     LF194

        bne     LF2A2
LF29C:  ldx     #$00
        txa
        rts

LF2A0:  bne     LF29C
LF2A2:  ldx     #$00
        lda     #$01
        rts

        beq     LF2A2
        bmi     LF2A2
        ldx     #$00
        txa
        rts

        beq     LF2B3
        bpl     LF2A2
LF2B3:  ldx     #$00
        txa
        rts

        beq     LF2A2
        bcc     LF2A2
        ldx     #$00
        txa
        rts

        beq     LF29C
        ldx     #$00
        txa
        rol     a
        rts

LF2C6:  sta     $8E
        jsr     LF33B
        tya
        ldy     #$08
        ldx     $89
        beq     LF2EF
        sta     $8F
        lsr     $8E
LF2D6:  bcc     LF2E3
        clc
        adc     $88
        tax
        lda     $89
        adc     $8F
        sta     $8F
        txa
LF2E3:  ror     $8F
        ror     a
        ror     $8E
        dey
        bne     LF2D6
        tax
        lda     $8E
        rts

LF2EF:  lsr     $8E
LF2F1:  bcc     LF2F6
        clc
        adc     $88
LF2F6:  ror     a
        ror     $8E
        dey
        bne     LF2F1
        tax
        lda     $8E
        rts

LF300:  sta     $88
        stx     $89
        asl     a
        rol     $89
        clc
        adc     $88
        pha
        txa
        adc     $89
        tax
        pla
        rts

LF311:  sta     $88
        stx     $89
        asl     a
        rol     $89
        asl     a
        rol     $89
        clc
        adc     $88
        pha
        txa
        adc     $89
        tax
        pla
        rts

LF325:  sta     $88
        stx     $89
        asl     a
        rol     $89
        clc
        adc     $88
        sta     $88
        txa
        adc     $89
        asl     $88
        rol     a
        tax
        lda     $88
        rts

LF33B:  ldy     #$01
        lda     ($80),y
        sta     $89
        dey
        lda     ($80),y
        sta     $88
        jmp     LF26E

        ldy     #$00
        lda     ($80),y
LF34D:  ldy     $80
        beq     LF358
        dec     $80
        ldy     #$00
        sta     ($80),y
        rts

LF358:  dec     $81
        dec     $80
        sta     ($80),y
        rts

        lda     #$00
LF361:  ldx     #$00
LF363:  pha
        lda     $80
        sec
        sbc     #$02
        sta     $80
        bcs     LF36F
        dec     $81
LF36F:  ldy     #$01
        txa
        sta     ($80),y
        pla
        dey
        sta     ($80),y
        rts

LF379:  ldy     #$03
LF37B:  lda     $80
        sec
        sbc     #$02
        sta     $80
        bcs     LF386
        dec     $81
LF386:  lda     ($80),y
        tax
        dey
        lda     ($80),y
        ldy     #$00
        sta     ($80),y
        iny
        txa
        sta     ($80),y
        rts

LF395:  pha
        sty     $90
        ldy     #$01
        lda     ($80),y
        sta     $89
        dey
        lda     ($80),y
        sta     $88
        ldy     $90
        pla
        sta     ($88),y
        jmp     LF26E

LF3AB:  ldy     #$00
LF3AD:  sta     ($80),y
        iny
        pha
        txa
        sta     ($80),y
        pla
        rts

        sty     $90
        pha
        ldy     #$01
        lda     ($80),y
        sta     $89
        dey
        lda     ($80),y
        sta     $88
        ldy     $90
        iny
        txa
        sta     ($88),y
        dey
        pla
        sta     ($88),y
        jmp     LF26E

        ldx     #$00
LF3D3:  sec
        eor     #$FF
        ldy     #$00
        adc     ($80),y
        iny
        pha
        txa
        eor     #$FF
        adc     ($80),y
        tax
        pla
        jmp     LF193

        tya
        eor     #$FF
        sec
        adc     $80
        sta     $80
        bcs     LF3F2
        dec     $81
LF3F2:  rts

LF3F3:  ldx     #$00
        sta     $8E
        stx     $8F
        jsr     LF33B
        jsr     LF404
        lda     $88
        ldx     $89
        rts

LF404:  lda     #$00
        sta     $83
        ldy     #$10
        ldx     $8F
        beq     LF42D
LF40E:  asl     $88
        rol     $89
        rol     a
        rol     $83
        tax
        cmp     $8E
        lda     $83
        sbc     $8F
        bcc     LF426
        sta     $83
        txa
        sbc     $8E
        tax
        inc     $88
LF426:  txa
        dey
        bne     LF40E
        sta     $82
        rts

LF42D:  asl     $88
        rol     $89
        rol     a
        bcs     LF438
        cmp     $8E
        bcc     LF43C
LF438:  sbc     $8E
        inc     $88
LF43C:  dey
        bne     LF42D
        sta     $82
        rts

LF442:  ldx     #$00
        sta     $8E
        stx     $8F
        jsr     LF33B
        jsr     LF404
        lda     $82
        ldx     $83
        rts

LF453:  lda     #$00
        sta     $88
        lda     #$02
        sta     $89
        lda     #$00
        tay
        ldx     #$33
        beq     LF46C
LF462:  sta     ($88),y
        iny
        bne     LF462
        inc     $89
        dex
        bne     LF462
LF46C:  cpy     #$9A
        beq     LF475
        sta     ($88),y
        iny
        bne     LF46C
LF475:  rts

LF476:  .byte   $E0
LF477:  .byte   $FF
LF478:  .byte   $E1
LF479:  .byte   $FF
LF47A:  .byte   $E2
LF47B:  .byte   $FF
        .byte   $E3
LF47D:  .byte   $FF
LF47E:  .byte   $E4
LF47F:  .byte   $FF
        .byte   $E5
LF481:  .byte   $FF
LF482:  .byte   $E6
LF483:  .byte   $FF
        .byte   $E7
LF485:  bbs7    $E8,$F487
        .byte   $E9
LF489:  bbs7    $EA,$F48B
        .byte   $EB
LF48D:  bbs7    $EC,$F48F
        sbc     $EEFF
LF493:  bbs7    $00,$F498
LF496:  brk
LF497:  rti

        brk
        bra     LF49B
LF49B:  cpy     #$F8
        ora     $0E03
        ora     $180E
        .byte   $0E
        .byte   $22
LF4A5:  asl     $0E2C
        rmb3    $0E
        rti

        asl     $0E4A
        eor     $0E,x
        lsr     $690E,x
        asl     $0E73
        ror     $890E,x
        asl     $0E91
        .byte   $9B
        asl     $0EA3
        lda     #$0E
        bcs     LF4D2
        tsx
        asl     $0EC5
        bbs4    $0E,LF4A5
        asl     $0EE5
        brk
        brk
        asl     $00
LF4D2:  ora     ($00,x)
        .byte   $02
        brk
        .byte   $02
        ora     ($01,x)
        ora     ($00,x)
        tsb     $00
        ora     $01
        .byte   $02
        .byte   $02
        brk
        ora     $05
        ora     $00
        php
        .byte   $02
        .byte   $03
        .byte   $03
        brk
        php
        ora     $0A
        rmb0    $02
        brk
        bbr0    $00,LF4F8
        .byte   $03
        brk
        .byte   $0C
        .byte   $05
LF4F8:  trb     $09
        ora     ($01,x)
        brk
        asl     $00
        ora     ($01,x)
        ora     $01
        .byte   $02
        brk
        ora     ($01,x)
        ora     ($08,x)
        ora     ($05,x)
        ora     ($02,x)
        .byte   $02
        ora     ($0A,x)
        brk
        .byte   $03
        ora     ($08,x)
        .byte   $02
        .byte   $03
        .byte   $03
        ora     ($0C,x)
        brk
        ora     $02
        .byte   $02
        ora     ($0F,x)
        ora     ($04,x)
        .byte   $03
        ora     ($14,x)
        brk
        asl     a
        asl     a
        ora     ($02,x)
        brk
        asl     $00
        ora     ($01,x)
        .byte   $03
        .byte   $02
        .byte   $02
        brk
        ora     ($01,x)
        ora     ($05,x)
        .byte   $02
        ora     $00
        .byte   $02
        .byte   $02
        ora     ($06,x)
        asl     $19
        .byte   $02
        php
        ora     ($03,x)
        .byte   $03
        ora     ($07,x)
        asl     $32
        .byte   $03
        .byte   $02
        .byte   $02
        bbr0    $00,LF552
        .byte   $03
        ora     ($0C,x)
        .byte   $02
LF552:  tsb     $0B
        brk
        .byte   $03
        brk
        asl     $00
        ora     ($02,x)
        tsb     $03
        .byte   $02
        .byte   $02
        ora     ($01,x)
        .byte   $02
        asl     $03
        ora     $00
        .byte   $02
        .byte   $02
        .byte   $02
        php
        ora     $0A
        .byte   $03
        php
        ora     ($03,x)
        .byte   $03
        .byte   $02
        asl     a
        ora     $0F
        brk
        .byte   $02
        .byte   $03
        bbr0    $02,LF57F
        .byte   $03
        .byte   $02
        .byte   $0C
        .byte   $05
LF57F:  asl     a:$0C,x
        tsb     $00
        asl     $00
        ora     ($03,x)
        ora     ($04,x)
        .byte   $02
        .byte   $02
        ora     ($01,x)
        .byte   $03
        .byte   $02
        tsb     $05
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $03
        .byte   $03
        rmb0    $02
        tsb     $08
        brk
        .byte   $03
        .byte   $03
        .byte   $03
        ora     $07
        .byte   $03
        brk
        .byte   $03
        tsb     $0F
        .byte   $02
        tsb     $03
        tsb     $00
        php
        brk
        ora     $4803
        adc     $61
        jmp     (L2073)

        pha
        bvc     LF5D8
        stz     $6F,x
        bit     $66
        adc     $6C,x
        .byte   $6C
        brk
LF5C0:  .byte   $2B
        and     ($20),y
        pha
        bvc     LF5C6
LF5C6:  eor     ($65)
        .byte   $63
        pla
        adc     ($72,x)
        rmb6    $65
        .byte   $73
        bit     $62
        adc     ($74,x)
        stz     $65,x
        adc     ($79)
        .byte   $20
LF5D8:  stz     $6F,x
        bit     $66
        adc     $6C,x
        jmp     (L2B00)

        and     ($20),y
        .byte   $42
        adc     ($74,x)
        stz     $00,x
        .byte   $2B
        and     ($30),y
        jsr     L7845
        bvs     LF610
        bvs     LF661
        adc     #$6E
        stz     $00,x
        .byte   $2B
        and     ($20),y
        .byte   $44
        adc     a:$67
        bbs2    $F5,LF5C0
        sbc     $C6,x
        sbc     $E0,x
        sbc     $E8,x
        sbc     $F6,x
        sbc     $0E,x
        ora     ($00,x)
        brk
        asl     a:$0A
LF610:  ora     ($0E,x)
        ora     ($01,x)
        .byte   $02
        asl     $010A
        .byte   $03
        asl     $0201
        tsb     $0E
        asl     a
LF61F:  .byte   $02
        ora     $CE
        .byte   $F4
        cmp     $F4,x
        .byte   $DC
        .byte   $F4
        sbc     $F4
        beq     LF61F
        .byte   $FB
        .byte   $F4
        .byte   $02
        sbc     $09,x
        sbc     $12,x
        sbc     $1D,x
        sbc     $28,x
        sbc     $2F,x
        sbc     $36,x
        sbc     $3F,x
        sbc     $4A,x
        sbc     $55,x
        sbc     $5C,x
        sbc     $63,x
        sbc     $6C,x
        sbc     $77,x
        sbc     $82,x
        sbc     $89,x
        sbc     $90,x
        sbc     $99,x
        sbc     $A4,x
        sbc     $09,x
        inc     $0D,x
        inc     $11,x
        inc     $15,x
        inc     $19,x
        inc     $1D,x
        inc     $2B,x
        .byte   $24
LF661:  jsr     L6142
        stz     $74,x
        brk
        .byte   $2B
        bit     $20
        pha
        bvc     LF66D
LF66D:  .byte   $2B
        bit     $20
        .byte   $44
        adc     a:$67
        and     L7324
        jsr     L694D
        ror     a:$65
        and     (L0073),y
        jsr     L694D
        ror     a:$65
        .byte   $2B
        bit     $25
        jsr     L7243
        adc     #$74
        brk
        and     L2524
        jsr     L614C
        ror     $61,x
        brk
        and     L7324
        jsr     L7244
        adc     #$6C
        jmp     (L3100)

        .byte   $73
        jsr     L7244
        adc     #$6C
        jmp     (L2B00)

        bit     $2F
        .byte   $73
        jsr     L6142
        stz     $74,x
        brk
        .byte   $2B
        bit     $2F
        .byte   $73
        jsr     L5048
        brk
        jmp     L7661

        adc     ($20,x)
        pha
        adc     $61
        jmp     (L0073)

        and     $3035
        and     $20
        .byte   $43
        bbr6    L0073,LF744
        brk
        and     $3035
        and     $20
        .byte   $43
        bbr6    L0073,LF74E
        brk
        bbr5    $F6,LF745
        inc     $6D,x
        inc     $74,x
        inc     $7D,x
        inc     $85,x
        inc     $8E,x
        inc     $97,x
        inc     $A1,x
        inc     $AA,x
        inc     $B4,x
        inc     $BC,x
        inc     $C7,x
        inc     $D1,x
        .byte   $F6
LF6F7:  bmi     LF6FC
        ora     ($17,x)
        .byte   $17
LF6FC:  ora     ($0B,x)
        and     ($32)
        bmi     LF705
        .byte   $03
        ora     ($17,x)
LF705:  .byte   $0B
        .byte   $02
        php
        .byte   $02
        ora     a:$02
        brk
        brk
        brk
        .byte   $13
        .byte   $02
        ora     ($02),y
        brk
        brk
        brk
        brk
        ora     ($02)
        trb     $02
        brk
        brk
        brk
        brk
        brk
        brk
        pha
        bvc     LF75E
        jsr     L2020
        bit     $00
        .byte   $42
        adc     ($74,x)
        stz     $3A,x
        jsr     L0024
        .byte   $44
        adc     $3A67
        jsr     L2420
        brk
        .byte   $43
        adc     ($69)
        stz     $3A,x
LF73E:  jsr     L2524
        brk
        .byte   $4D
        .byte   $69
LF744:  .byte   $6E
LF745:  adc     $3A
        jsr     L7324
        brk
        .byte   $44
        adc     ($69)
LF74E:  jmp     (L3A6C)

        bit     L0073
        brk
        jmp     L7661

        adc     ($3A,x)
        jsr     L242D
        and     $00
LF75E:  .byte   $03
        bmi     LF762
LF761:  .byte   $01
LF762:  rmb1    $32
        .byte   $0B
        and     ($F7,x)
        and     #$F7
        and     ($F7),y
        and     $42F7,y
        smb7    $4B
        smb7    $54
        smb7    $00
        brk
        .byte   $0B
        .byte   $02
        ora     $1302
        .byte   $02
        bbr0    $02,LF78E
        .byte   $02
        ora     ($02),y
LF781:  bbs6    $0E,LF781
        .byte   $0E
        .byte   $0B
LF786:  bbr0    $17,$F798
        and     $0F
        and     ($0F)
        .byte   $3D
LF78E:  bbr0    $47,LF7A0
        .byte   $53
        bbr0    $5D,LF7A4
        .byte   $63
        bbr0    $6E,LF7A8
        .byte   $7B
        .byte   $0F
LF79B:  dey
        .byte   $0F
LF79D:  stx     $0F,y
        .byte   $A3
LF7A0:  bbr0    $CF,LF7B2
        .byte   $FC
LF7A4:  bbr0    $13,LF7B7
        dec     a
LF7A8:  bpl     LF7F9
        bpl     LF817
LF7AC:  bpl     LF73E
        bpl     LF761
        .byte   $10
LF7B1:  .byte   $D4
LF7B2:  bpl     LF79D
        bpl     LF7CA
        .byte   $11
LF7B7:  rmb3    $11
        .byte   $4B
        ora     ($80),y
        ora     ($95),y
        ora     ($4B),y
        ora     ($05)
        .byte   $13
        .byte   $BB
        .byte   $13
        adc     $14,x
        .byte   $2B
        ora     $E1,x
LF7CA:  ora     $0B,x
        clc
        and     $1A,x
        bbr5    $1C,LF833
LF7D2:  asl     $2063,x
        ora     $21,x
        smb2    $21
        eor     #$22
        lda     $1722,y
        .byte   $23
        .byte   $0B
        sty     $BD
        sty     $4F
        sta     $F1
        sta     $61
        stx     $BF
        stx     $C1
        dey
        .byte   $C3
        txa
        sbc     $A38C
        sta     $8F41
        .byte   $F3
        .byte   $90
LF7F7:  .byte   $A3
        .byte   $91
LF7F9:  adc     $92
        inx
        sta     ($1E)
        .byte   $93
        adc     #$93
        cpx     $3293
        sty     $0F,x
        sty     $55,x
        sty     $78,x
        sty     $9B,x
        sty     $BE,x
        sty     $09,x
        sta     $54,x
        sta     $9F,x
        sta     $EA,x
        .byte   $95
LF817:  and     $96,x
        bra     LF7B1
        wai
LF81C:  stx     $16,y
        smb1    $61
        smb1    $AC
        smb1    $F7
        smb1    $42
        tya
        sta     LD898
        tya
        .byte   $62
        .byte   $23
        trb     L0024
        ldx     L0024
        pha
        .byte   $25
LF833:  clv
        and     $16
        rol     $18
        plp
        inc     a
        rol     a
        clv
        .byte   $2B
        ror     a
        and     $2E1A
LF841:  .byte   $DC
        rol     $2F5F
        sta     $2F,x
        cpx     #$2F
        .byte   $63
        bmi     LF7D2
        bmi     LF7F7
        bmi     LF81C
        bmi     LF841
        bmi     LF866
        and     ($35),y
        and     ($80),y
        and     ($CB),y
        and     ($16),y
        and     ($61)
        and     ($AC)
        and     ($F7)
        and     ($42)
        .byte   $33
        .byte   $8D
LF866:  .byte   $33
        cld
        .byte   $33
        .byte   $23
        bit     $6E,x
        bit     $B9,x
        bit     $04,x
        and     $4F,x
        and     $00,x
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        tsb     $04
        tsb     $04
        tsb     $00
        tsb     $00
        asl     a
        asl     a
        asl     a
        brk
        brk
        brk
        brk
        brk
        asl     a
        asl     a
        bbr1    $0A,LF8AF
        asl     a
        asl     a
        brk
        tsb     $1E
        ora     $0E
        trb     $0F
        tsb     $00
        .byte   $03
        .byte   $13
        php
        tsb     $02
        ora     $18,y
        asl     $09
        ora     $02
        ora     $09,x
        asl     $00,x
        .byte   $03
        .byte   $02
        ora     ($00,x)
LF8AF:  brk
        brk
        brk
        brk
        tsb     $02
        ora     ($01,x)
        ora     ($02,x)
        tsb     $00
        tsb     $08
        bpl     LF8CF
        bpl     LF8C9
        tsb     $00
        brk
        tsb     $15
        asl     $0415
LF8C9:  brk
        brk
        brk
        tsb     $04
        .byte   $1F
LF8CF:  tsb     $04
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     $04
        .byte   $02
        brk
        brk
        brk
        bbr1    $00,LF8E1
LF8E1:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     $06
        brk
        brk
        bpl     LF8F6
        tsb     $02
        ora     ($00,x)
        brk
        asl     $1911
LF8F6:  ora     $13,x
        ora     ($0E),y
        brk
        tsb     $06
        tsb     $04
        tsb     $04
        asl     $0E00
        ora     ($10),y
        php
        tsb     $02
        bbr1    $00,LF92B
        php
        tsb     $08
        bpl     LF922
        asl     $0800
        tsb     $090A
        bbr1    $08,LF922
        brk
        bbr1    $01,LF92D
        bpl     LF930
        ora     ($0E),y
LF922:  brk
        tsb     $0102
        bbr0    $11,LF93A
        .byte   $0E
        brk
LF92B:  .byte   $1F
        .byte   $10
LF92D:  php
        tsb     $02
LF930:  .byte   $02
        .byte   $02
        brk
        asl     $1111
        asl     $1111
        .byte   $0E
LF93A:  brk
        asl     $1111
        asl     $0810,x
        asl     $00
        brk
        asl     $06
        brk
        asl     $06
        brk
        brk
        brk
        asl     $06
        brk
        asl     $04
        .byte   $02
        brk
        php
        tsb     $02
        ora     ($02,x)
        tsb     $08
        brk
        brk
        brk
        bbr1    $00,LF97F
        brk
        brk
        brk
        .byte   $02
        tsb     $08
        bpl     LF970
        tsb     $02
        brk
        asl     $1011
        php
        .byte   $04
LF970:  brk
        tsb     $00
        asl     $1011
        asl     $15,x
        ora     $0E,x
        brk
        tsb     $0A
        ora     ($11),y
LF97F:  bbr1    $11,LF993
        brk
        bbr0    $11,LF997
        bbr1    $11,LF99A
        bbr0    $00,LF99A
        ora     ($01),y
        ora     ($01,x)
        ora     ($0E),y
        brk
LF993:  rmb0    $09
        ora     ($11),y
LF997:  ora     ($09),y
        .byte   $07
LF99A:  brk
        bbr1    $01,LF99F
        .byte   $0F
LF99F:  ora     ($01,x)
        bbr1    $00,LF9C3
        ora     ($01,x)
        bbr0    $01,LF9AA
        .byte   $01
LF9AA:  brk
        asl     $0111
        ora     $1111,x
        asl     $1100
        ora     ($11),y
        bbr1    $11,LF9CA
        ora     ($00),y
        asl     $0404
        tsb     $04
        tsb     $0E
        brk
LF9C3:  trb     $0808
        php
        php
        ora     #$06
LF9CA:  brk
        ora     ($09),y
        ora     $03
        ora     $09
        ora     ($00),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        bbr1    $00,LF9ED
        .byte   $1B
        ora     $15,x
        ora     ($11),y
        ora     ($00),y
        ora     ($11),y
        .byte   $13
        ora     $19,x
        ora     ($11),y
        brk
        .byte   $0E
        .byte   $11
LF9ED:  ora     ($11),y
        ora     ($11),y
        asl     $0F00
        ora     ($11),y
        bbr0    $01,LF9FA
        .byte   $01
LF9FA:  brk
        asl     $1111
        ora     ($15),y
        ora     #$16
        brk
        bbr0    $11,LFA17
        bbr0    $05,LFA12
        ora     ($00),y
        asl     $0111
        asl     $1110
        .byte   $0E
LFA12:  brk
        bbr1    $04,LFA1A
        .byte   $04
LFA17:  tsb     $04
        .byte   $04
LFA1A:  brk
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        asl     $1100
        ora     ($11),y
        ora     ($11),y
        asl     a
        tsb     $00
        ora     ($11),y
        ora     ($15),y
        ora     $1B,x
        ora     ($00),y
        ora     ($11),y
        asl     a
        tsb     $0A
        ora     ($11),y
        brk
        ora     ($11),y
        asl     a
        tsb     $04
        tsb     $04
        brk
        bbr1    $10,LFA4E
        tsb     $02
        ora     ($1F,x)
        brk
        asl     $0202
LFA4E:  .byte   $02
        .byte   $02
        .byte   $02
        asl     a:$00
        ora     ($02,x)
        tsb     $08
        bpl     LFA5A
LFA5A:  brk
        asl     $0808
        php
        php
        php
        asl     $0400
        asl     a
        ora     ($00),y
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
        bbr1    $00,LFA75
        .byte   $02
LFA75:  tsb     $00
        brk
        brk
        brk
        brk
        brk
        brk
        asl     $1E10
        ora     ($1E),y
        brk
        ora     ($01,x)
        ora     ($0F,x)
        ora     ($11),y
        bbr0    $00,LFA8C
LFA8C:  brk
        asl     $0111
        ora     ($0E),y
        brk
        bpl     LFAA5
        bpl     LFAB5
        ora     ($11),y
        asl     a:$00,x
        brk
        asl     $1F11
        ora     ($0E,x)
        brk
        .byte   $0C
        .byte   $12
LFAA5:  .byte   $02
        rmb0    $02
        .byte   $02
        .byte   $02
        brk
        brk
        brk
        asl     $1E11,x
        bpl     LFAC0
        brk
        ora     ($01,x)
LFAB5:  ora     ($0F,x)
        ora     ($11),y
        ora     ($00),y
        brk
        tsb     $00
        asl     $04
LFAC0:  tsb     $0E
        brk
        php
        brk
        php
        php
        php
        ora     #$06
        brk
        ora     ($01,x)
        ora     #$05
        .byte   $03
        ora     $09
        brk
        asl     $04
        tsb     $04
        tsb     $04
        asl     a:$00
        brk
        .byte   $0B
        ora     $15,x
        ora     ($11),y
        brk
        brk
        brk
        ora     $1113
        ora     ($11),y
        brk
        brk
        brk
        asl     $1111
        ora     ($0E),y
        brk
        brk
        brk
        bbr0    $11,LFB17
        ora     ($01,x)
        brk
        brk
        brk
        asl     $1E11,x
        bpl     LFB12
        brk
        brk
        brk
        ora     $0113
        ora     ($01,x)
        brk
        brk
        brk
        asl     $0E01
        bpl     LFB21
LFB12:  brk
        .byte   $02
        .byte   $02
        rmb0    $02
LFB17:  .byte   $02
        ora     ($0C)
        brk
        brk
        brk
        ora     ($11),y
        ora     ($19),y
LFB21:  asl     $00,x
        brk
        brk
        ora     ($11),y
        ora     ($0A),y
        tsb     $00
        brk
        brk
        ora     ($15),y
        ora     $15,x
        asl     a
        brk
        brk
        brk
        ora     ($0A),y
        tsb     $0A
        ora     ($00),y
        brk
        brk
        ora     ($11),y
        asl     $0E10,x
        brk
        brk
        brk
        bbr1    $08,LFB4C
        .byte   $02
        bbr1    $00,LFB54
LFB4C:  tsb     $04
        .byte   $02
        tsb     $04
        php
        brk
        .byte   $04
LFB54:  tsb     $04
        brk
        tsb     $04
        tsb     $00
        .byte   $02
        tsb     $04
        php
        tsb     $04
        .byte   $02
        brk
        php
        ora     $02,x
        brk
        brk
        brk
        brk
        brk
        brk
        ora     $49
        ora     $4A,x
        rol     a
        pha
        rol     a
        rmb4    $0C
        .byte   $4B
        bbr3    $00,LFB7E
        eor     #$15
        lsr     a
        dec     a
        pha
LFB7E:  dec     a
        rmb4    $30
        .byte   $4B
        bbr3    $00,LFB8A
        eor     #$15
        lsr     a
        and     $48,x
LFB8A:  and     $47,x
        bbr0    $4B,LFBCE
        brk
        ora     $49
        ora     $4A,x
        jsr     L2048
        rmb4    $32
        .byte   $4B
        bbr3    $00,LFBA2
        eor     #$30
        lsr     a
        .byte   $3F
        pha
LFBA2:  bbr3    $47,LFBD5
        .byte   $4B
        .byte   $03
        ora     ($02,x)
        eor     ($15,x)
        .byte   $42
        rol     a
        ora     ($02,x)
        eor     ($15,x)
        .byte   $42
        .byte   $2B
        ora     ($02,x)
        eor     ($15,x)
        .byte   $42
        .byte   $17
LFBB9:  ora     ($02,x)
        eor     ($15,x)
        .byte   $42
        .byte   $02
        ora     ($02,x)
        eor     ($03,x)
        .byte   $42
        bbr3    $02,LFBC9
        .byte   $43
        .byte   $15
LFBC9:  .byte   $44
        rol     a
        .byte   $02
        .byte   $02
        .byte   $43
LFBCE:  ora     $44,x
        rol     $0202
        .byte   $43
        .byte   $15
LFBD5:  .byte   $44
        ora     $0202,x
        .byte   $43
        ora     $44,x
        php
        .byte   $02
        .byte   $02
        .byte   $43
        tsb     $3F44
        .byte   $03
        .byte   $02
        eor     $15
        lsr     $2A
        .byte   $03
        .byte   $02
        eor     $15
        lsr     $3B
        .byte   $03
        .byte   $02
        eor     $15
        lsr     $37
        .byte   $03
        .byte   $02
        eor     $15
        lsr     $22
        .byte   $03
        .byte   $02
        eor     $32
        lsr     $3F
        tsb     $01
        jmp     L042A

        ora     ($4C,x)
        bbr2    $04,LFC0C
        .byte   $4C
LFC0C:  bbr1    $04,LFC10
        .byte   $4C
LFC10:  asl     a
        tsb     $01
        jmp     L6B0F

        .byte   $FB
        rmb7    $FB
        .byte   $83
        .byte   $FB
        bbs0    $FB,LFBB9
        .byte   $FB
        smb2    $FB
        lda     $B3FB
        .byte   $FB
        lda     $BFFB,y
        .byte   $FB
        cmp     $FB
        wai
        .byte   $FB
        cmp     ($FB),y
LFC2F:  smb5    $FB
        cmp     LE3FB,x
        .byte   $FB
        sbc     #$FB
        bbs6    $FB,LFC2F
        .byte   $FB
        .byte   $FB
        .byte   $FB
        ora     ($FC,x)
        ora     $FC
        ora     #$FC
        ora     $11FC
        .byte   $FC
        .byte   $23
        sta     $992B,y
        .byte   $33
        sta     $993B,y
        rmb6    $99
        bbr6    $99,LFC97
        sta     $994F,y
        .byte   $5B
        sta     $0C2A,y
        bmi     LFC8F
        bbr0    $17,LFC95
        bbr1    $5B,LFCA8
        ror     $6574
        adc     ($5D)
        eor     $70,x
        rmb6    $72
        adc     ($64,x)
        adc     $00
        .byte   $5B
        eor     ($5D)
        adc     L0073
        bbr6    $75,LFCEA
        .byte   $63
        adc     L0073
        brk
        .byte   $5B
        .byte   $43
        eor     $6168,x
        adc     ($61)
        .byte   $63
        stz     $65,x
        adc     ($00)
        eor     $76
        adc     #$6C
        jsr     L6F72
LFC8F:  .byte   $62
        bbr6    $74,LFC93
LFC93:  .byte   $53
        .byte   $5B
LFC95:  .byte   $6B
        .byte   $5D
LFC97:  adc     #$6C
        jmp     (L0073)

        bvc     LFD0D
        adc     #$6E
        stz     L0073,x
        dec     a
        jsr     L4200
        adc     ($74,x)
LFCA8:  stz     $3A,x
        bit     $2F
        bit     $00
        eor     $756F,y
        jsr     L6964
        adc     $64
        brk
        .byte   $43
        bbr6    L0073,LFD2F
        dec     a
        jsr     L0024
        eor     $78
        bvs     LFCFD
        bit     $2F
        bit     $00
        .byte   $43
        adc     ($79)
        .byte   $73
        stz     $61,x
        jmp     (L4800)

        bvc     LFD0C
        bit     $2F
        bit     $00
        eor     $78
        adc     #$74
        brk
        eor     ($6F)
        .byte   $63
        .byte   $6B
        brk
LFCE0:  .byte   $0B
        tsb     $0E0D
        .byte   $0F
LFCE5:  rmb3    $38
        and     $3B3A,y
LFCEA:  eor     ($00,x)
LFCEC:  php
        and     $32,x
        asl     a
        rol     a
        rol     a
LFCF2:  lsr     $48
        lsr     a
        rmb4    $49
        .byte   $4B
LFCF8:  tsb     $10
        .byte   $01
LFCFB:  php
        .byte   $35
LFCFD:  .byte   $17
LFCFE:  ora     $593B,x
LFD01:  rol     $2B3A
LFD04:  eor     ($00,x)
LFD06:  eor     ($00,x)
LFD08:  eor     ($00,x)
        brk
        .byte   $01
LFD0C:  .byte   $02
LFD0D:  .byte   $03
        tsb     $05
        asl     $08
        .byte   $07
LFD13:  brk
LFD14:  brk
LFD15:  sta     LFD23
        stx     LFD24
        sta     LFD2A
        stx     LFD2B
LFD21:  dey
        .byte   $B9
LFD23:  .byte   $FF
LFD24:  bbs7    $8D,LFD5B
        sbc     $B988,x
LFD2A:  .byte   $FF
LFD2B:  bbs7    $8D,LFD61
        .byte   $FD
LFD2F:  sty     LFD36
        jsr     LFFFF
        .byte   $A0
LFD36:  bbs7    $D0,LFD21
        rts


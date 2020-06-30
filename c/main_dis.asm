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

; da65 V2.18 - Git 28584b3
; Created:    2020-06-28 22:04:28
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
LEFCF           := $EFCF
LF0C9           := $F0C9
LF179           := $F179
LF194           := $F194
LF1A1           := $F1A1
LF1C4           := $F1C4
LF1DA           := $F1DA
LF1E3           := $F1E3
LF1F0           := $F1F0
LF1FD           := $F1FD
LF20A           := $F20A
LF231           := $F231
LF233           := $F233
LF25F           := $F25F
LF27C           := $F27C
LF281           := $F281
LF28B           := $F28B
LF2C6           := $F2C6
LF311           := $F311
LF325           := $F325
LF34D           := $F34D
LF35F           := $F35F
LF361           := $F361
LF363           := $F363
LF395           := $F395
LF3AB           := $F3AB
LF3AD           := $F3AD
LF3B6           := $F3B6
LF3E6           := $F3E6
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
LC023:  stz     L0020
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
        .byte   $6E
LC0A2:  brk
        .byte   $42
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
        bra     LC172
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
        adc     #$6C
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
        .byte   $24
LC31B:  adc     $6E
        adc     $6D
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
LC348:  .byte   $74
LC349:  pla
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
        .byte   $6C
        .byte   $6F
LC3B0:  rmb7    L0020
        adc     ($75),y
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
        brk
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

        tsb     $0249
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
        .byte   $03
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
        .byte   $01
LC4F1:  rti

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
LC573:  .byte   $03
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
        bpl     LC603
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
        jmp     L4006

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
LC6DA:  .byte   $02
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
        jsr     LF363
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
LD98C:  jsr     LF3AD
        lda     $84
        ldx     $85
        jsr     LF363
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
LD9A6:  jsr     LF3AD
        ldy     #$00
        lda     ($84)
        jsr     LF395
LD9B0:  ldy     #$01
        lda     ($80),y
        sta     $89
        lda     ($80)
        sta     $88
        lda     ($88)
        bne     LD97C
        tax
        jmp     LF281

        jsr     LF34D
        jsr     LF1E3
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
LD9E9:  sta     $FD13
        stz     $FD14
LD9EF:  lda     $FD13
        ora     $FD14
        beq     LD9FE
        ldx     #$00
        lda     #$03
        jmp     LF27C

LD9FE:  dey
        sta     ($80),y
        sta     ($80)
        lda     $0226
        beq     LDA0B
        jmp     L9D93

LDA0B:  iny
        lda     ($80),y
        cmp     #$73
        beq     LDA15
        jmp     L9AD5

LDA15:  ldx     #$00
        lda     $0222
        cmp     #$02
        beq     LDA26
        tya
        sta     $0222
        dec     a
        jmp     L9D90

LDA26:  lda     $0201
        clc
        adc     $0203
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
        lda     $0201
        clc
        adc     $0203
        bcc     LDA4B
        inx
LDA4B:  inc     a
        bne     LDA4F
        inx
LDA4F:  jsr     LF363
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

LDA80:  lda     $0200
        clc
        adc     $0202
        jsr     LF34D
        lda     $0201
        clc
        adc     $0203
        inc     a
        jsr     LC3B0
        cmp     #$00
        beq     LDAA0
        lda     $0257
        cmp     #$01
        bne     LDAC8
LDAA0:  lda     $0203
        cmp     #$02
        bcs     LDAAC
        inc     $0203
        bra     LDAC4
LDAAC:  lda     $0203
        cmp     #$02
        bne     LDAC8
        lda     $0201
        cmp     #$10
        bne     LDAC1
        lda     #$03
        sta     $0203
        bra     LDAC4
LDAC1:  inc     $0201
LDAC4:  lda     #$01
        sta     ($80)
LDAC8:  lda     ($80)
        bne     LDACF
        jmp     L9D93

LDACF:  jsr     LF0C9
        jmp     L9D93

        lda     ($80),y
        cmp     #$77
        beq     LDADE
        jmp     L9B9A

LDADE:  ldx     #$00
        lda     $0222
        cmp     #$01
        beq     LDAEF
        lda     #$01
        sta     $0222
        jmp     L9D90

LDAEF:  lda     $0201
        clc
        adc     $0203
        bcc     LDAF9
        inx
LDAF9:  cpx     #$00
        bne     LDB04
        cmp     #$00
        bne     LDB04
        jmp     L9D93

LDB04:  ldx     #$00
        lda     $0201
        clc
        adc     $0203
        bcc     LDB10
        inx
LDB10:  sec
        sbc     #$01
        bcs     LDB16
        dex
LDB16:  jsr     LF363
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

LDB47:  lda     $0200
        clc
        adc     $0202
        jsr     LF34D
        lda     $0201
        clc
        adc     $0203
        sec
        sbc     #$01
        jsr     LC3B0
        cmp     #$00
        beq     LDB69
        lda     $0257
        cmp     #$01
        bne     LDB8D
LDB69:  lda     $0203
        cmp     #$02
        bcc     LDB75
        dec     $0203
        bra     LDB89
LDB75:  lda     $0203
        cmp     #$01
        bne     LDB8D
        lda     $0201
        bne     LDB86
        stz     $0203
        bra     LDB89
LDB86:  dec     $0201
LDB89:  lda     #$01
        sta     ($80)
LDB8D:  lda     ($80)
        bne     LDB94
        jmp     L9D93

LDB94:  jsr     LF0C9
        jmp     L9D93

        lda     ($80),y
        cmp     #$64
        beq     LDBA3
        jmp     L9C75

LDBA3:  ldx     #$00
        lda     $0221
        cmp     #$03
        bne     LDBB5
        inc     a
        sta     $0221
        lda     #$01
        dey
        sta     ($80),y
LDBB5:  lda     $0222
        cmp     #$04
        beq     LDBC6
        lda     #$04
        sta     $0222
        lda     #$01
        jmp     L9D90

LDBC6:  lda     $0200
        clc
        adc     $0202
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
        lda     $0201
        clc
        adc     $0203
        bcc     LDBEB
        inx
LDBEB:  jsr     LF363
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

LDC20:  lda     $0200
        clc
        adc     $0202
        inc     a
        jsr     LF34D
        lda     $0201
        clc
        adc     $0203
        jsr     LC3B0
        cmp     #$00
        beq     LDC40
        lda     $0257
        cmp     #$01
        bne     LDC68
LDC40:  lda     $0202
        cmp     #$03
        bcs     LDC4C
        inc     $0202
        bra     LDC64
LDC4C:  lda     $0202
        cmp     #$03
        bne     LDC68
        lda     $0200
        cmp     #$23
        bne     LDC61
        lda     #$04
        sta     $0202
        bra     LDC64
LDC61:  inc     $0200
LDC64:  lda     #$01
        sta     ($80)
LDC68:  lda     ($80)
        bne     LDC6F
        jmp     L9D93

LDC6F:  jsr     LF0C9
        jmp     L9D93

        lda     ($80),y
        cmp     #$61
        beq     LDC7E
        jmp     L9D48

LDC7E:  ldx     #$00
        lda     $0221
        cmp     #$04
        bne     LDC90
        dec     a
        sta     $0221
        lda     #$01
        dey
        sta     ($80),y
LDC90:  lda     $0222
        cmp     #$03
        beq     LDCA1
        lda     #$03
        sta     $0222
        lda     #$01
        jmp     L9D90

LDCA1:  lda     $0200
        clc
        adc     $0202
        bcc     LDCAB
        inx
LDCAB:  cpx     #$00
        bne     LDCB6
        cmp     #$00
        bne     LDCB6
        jmp     L9D93

LDCB6:  ldx     #$00
        lda     $0201
        clc
        adc     $0203
        bcc     LDCC2
        inx
LDCC2:  jsr     LF363
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

LDCF9:  lda     $0200
        clc
        adc     $0202
        sec
        sbc     #$01
        jsr     LF34D
        lda     $0201
        clc
        adc     $0203
        jsr     LC3B0
        cmp     #$00
        beq     LDD1B
        lda     $0257
        cmp     #$01
        bne     LDD3F
LDD1B:  lda     $0202
        cmp     #$02
        bcc     LDD27
        dec     $0202
        bra     LDD3B
LDD27:  lda     $0202
        cmp     #$01
        bne     LDD3F
        lda     $0200
        bne     LDD38
        stz     $0202
        bra     LDD3B
LDD38:  dec     $0200
LDD3B:  lda     #$01
        sta     ($80)
LDD3F:  lda     ($80)
        beq     LDD93
        jsr     LF0C9
        bra     LDD93
        lda     ($80),y
        cmp     #$20
        bne     LDD93
        lda     $0223
        cmp     #$03
        bne     LDD63
        stz     $022A
        lda     $020F
        sta     $0229
        stz     $0227
        bra     LDD88
LDD63:  lda     $0223
        bne     LDD76
        stz     $022A
        lda     $0210
        sta     $0229
        stz     $0227
        bra     LDD88
LDD76:  lda     $0223
        cmp     #$01
        bne     LDD93
        lda     #$1E
        sta     $0229
        stz     $022A
        sta     $0227
LDD88:  stz     $0228
        lda     #$01
        sta     $0226
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
        jmp     LF27C

LDDA7:  lda     #$1C
        jmp     LF27C

        jsr     LF34D
        jsr     LF20A
        lda     #$00
        jsr     LF34D
        jsr     LF34D
        jsr     LF1F0
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
        stz     $FD13
        stz     $FD14
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
LDDFA:  sta     $FD13
        stz     $FD14
        ldy     #$03
        lda     ($80),y
        ora     #$02
        sta     ($80),y
LDE08:  lda     $FD14
        beq     LDE10
        jmp     L9F6B

LDE10:  lda     $FD13
        cmp     #$01
        beq     LDE1A
        jmp     L9F6B

LDE1A:  ldy     #$0A
        lda     ($80),y
        cmp     #$77
        bne     LDE38
        lda     $025E
        bne     LDE2A
        jmp     LA4CB

LDE2A:  dec     $025E
        ldy     #$03
        lda     ($80),y
        ora     #$20
        sta     ($80),y
        jmp     LA4CB

LDE38:  lda     ($80),y
        cmp     #$73
        bne     LDE56
        lda     $025E
        cmp     #$05
        bcc     LDE48
        jmp     LA4CB

LDE48:  inc     $025E
        ldy     #$03
        lda     ($80),y
        ora     #$20
        sta     ($80),y
        jmp     LA4CB

LDE56:  lda     ($80),y
        cmp     #$61
        bne     LDE88
        lda     $025D
        beq     LDE6D
        dec     $025D
        ldy     #$03
        lda     ($80),y
        ora     #$20
        jmp     L9F66

LDE6D:  lda     $025E
        bne     LDE75
        jmp     LA4CB

LDE75:  lda     #$04
        sta     $025D
        dec     $025E
        ldy     #$03
        lda     ($80),y
        ora     #$20
        sta     ($80),y
        jmp     LA4CB

LDE88:  lda     ($80),y
        cmp     #$64
        bne     LDEBC
        lda     $025D
        cmp     #$04
        bcs     LDEA1
        inc     $025D
        ldy     #$03
        lda     ($80),y
        ora     #$20
        jmp     L9F66

LDEA1:  lda     $025E
        cmp     #$05
        bcc     LDEAB
        jmp     LA4CB

LDEAB:  stz     $025D
        inc     $025E
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
        lda     $025E
        jsr     LF311
        clc
        adc     $025D
        ldy     #$05
        sta     ($80),y
        tay
        lda     $0230,y
        cmp     #$20
        bne     LDEE0
        jmp     LA4CB

LDEE0:  ldy     #$05
        lda     ($80),y
        tay
        lda     $0230,y
        ldy     #$06
        sta     ($80),y
        lda     #$30
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
LDF05:  adc     #$21
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
        sta     ($82)
        ldy     #$06
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LDF35
        inx
        clc
LDF35:  adc     #$21
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
        clc
        adc     #$2B
        sta     $88
        lda     #$00
        adc     #$02
        sta     $89
        ldy     #$06
        lda     ($80),y
        sta     ($88)
        jsr     LC4F1
        jsr     LC0A2
        lda     #$01
        ldy     #$09
        sta     ($80),y
        jmp     LA4CB

        lda     $FD14
        beq     LDF73
        jmp     LA052

LDF73:  lda     $FD13
        cmp     #$02
        beq     LDF7D
        jmp     LA052

LDF7D:  ldy     #$0A
        lda     ($80),y
        cmp     #$77
        bne     LDF99
        lda     $0260
        bne     LDF8D
        jmp     LA4CB

LDF8D:  dec     $0260
        lda     #$01
        ldy     #$08
        sta     ($80),y
        jmp     LA4CB

LDF99:  lda     ($80),y
        cmp     #$73
        bne     LDFB5
        lda     $0260
        cmp     #$02
        bcc     LDFA9
        jmp     LA4CB

LDFA9:  inc     $0260
        lda     #$01
        ldy     #$08
        sta     ($80),y
        jmp     LA4CB

LDFB5:  lda     ($80),y
        cmp     #$61
        bne     LDFCF
        lda     $025F
        bne     LDFC3
        jmp     LA4CB

LDFC3:  dec     $025F
        lda     #$01
        ldy     #$08
        sta     ($80),y
        jmp     LA4CB

LDFCF:  lda     ($80),y
        cmp     #$64
        bne     LDFEB
        lda     $025F
        cmp     #$04
        bcc     LDFDF
        jmp     LA4CB

LDFDF:  inc     $025F
        lda     #$01
        ldy     #$08
        sta     ($80),y
        jmp     LA4CB

LDFEB:  lda     ($80),y
        cmp     #$0D
        beq     LDFF4
        jmp     LA4CB

LDFF4:  lda     $0220
        bne     LDFFC
        jmp     LA4CB

LDFFC:  ldx     #$00
        lda     $0260
        jsr     LF311
        clc
        adc     $025F
        ldy     #$05
        sta     ($80),y
        tay
        lda     $024E,y
        beq     LE015
        jmp     LA4CB

LE015:  lda     $025F
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
        ldy     #$4E
        lda     ($88),y
        cmp     #$01
        beq     LE039
        jmp     LA4CB

LE039:  dec     $0220
        ldy     #$05
        lda     ($80),y
        tay
        lda     #$01
        sta     $024E,y
        jsr     LC0A2
        lda     #$01
        ldy     #$09
        sta     ($80),y
        jmp     LA4CD

        lda     $FD14
        beq     LE05A
        jmp     LA4CB

LE05A:  lda     $FD13
        cmp     #$03
        beq     LE064
        jmp     LA4CB

LE064:  ldy     #$0A
        lda     ($80),y
        cmp     #$77
        bne     LE080
        lda     $0262
        bne     LE074
        jmp     LA4CB

LE074:  dec     $0262
        lda     #$01
        ldy     #$07
        sta     ($80),y
        jmp     LA4CB

LE080:  lda     ($80),y
        cmp     #$73
        bne     LE09C
        lda     $0262
        cmp     #$04
        bcc     LE090
        jmp     LA4CB

LE090:  inc     $0262
        lda     #$01
        ldy     #$07
        sta     ($80),y
        jmp     LA4CB

LE09C:  lda     ($80),y
        cmp     #$61
        bne     LE0B6
        lda     $0261
        bne     LE0AA
        jmp     LA4CB

LE0AA:  dec     $0261
        lda     #$01
        ldy     #$07
        sta     ($80),y
        jmp     LA4CB

LE0B6:  lda     ($80),y
        cmp     #$64
        bne     LE0D2
        lda     $0261
        cmp     #$05
        bcc     LE0C6
        jmp     LA4CB

LE0C6:  inc     $0261
        lda     #$01
        ldy     #$07
        sta     ($80),y
        jmp     LA4CB

LE0D2:  lda     ($80),y
        cmp     #$0D
        beq     LE0DB
        jmp     LA4CB

LE0DB:  lda     $0263
        cmp     #$20
        bne     LE0E5
        jmp     LA3BF

LE0E5:  lda     $025A
        cmp     #$01
        bne     LE0F3
        lda     $0261
        cmp     #$04
        bcc     LE0F7
LE0F3:  lda     #$00
        bra     LE0F9
LE0F7:  lda     #$01
LE0F9:  ldy     #$02
        sta     ($80),y
        ldx     #$00
        lda     $025C
        cmp     #$01
        beq     LE109
        jmp     LA1F1

LE109:  lda     $021D
        clc
        adc     $021E
        bcc     LE114
        inx
        clc
LE114:  adc     $021F
        bcc     LE11A
        inx
LE11A:  jsr     LF3AB
        jsr     LF363
        ldx     #$00
        lda     $0263
        asl     a
        bcc     LE12A
        inx
        clc
LE12A:  adc     #$21
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
        sec
        ldy     #$04
        sbc     ($80),y
        jsr     LF231
        bcs     LE14F
        jmp     LA3BF

LE14F:  lda     $0258
        beq     LE160
        lda     #$05
        jsr     LEA3A
        cmp     #$00
        bne     LE160
        jmp     LA3B5

LE160:  ldx     #$00
        lda     $0263
        asl     a
        bcc     LE16A
        inx
        clc
LE16A:  adc     #$21
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
        sec
        iny
        sbc     ($80),y
        ldx     #$00
        jsr     LF3AB
        bra     LE19E
LE18D:  lda     ($80),y
        tax
        lda     ($80)
        sec
        sbc     #$01
        bcs     LE198
        dex
LE198:  jsr     LF3AB
        dec     $021D
LE19E:  lda     ($80)
        ldy     #$01
        ora     ($80),y
        beq     LE1BE
        lda     $021D
        bne     LE18D
        bra     LE1BE
LE1AD:  lda     ($80),y
        tax
        lda     ($80)
        sec
        sbc     #$01
        bcs     LE1B8
        dex
LE1B8:  jsr     LF3AB
        dec     $021E
LE1BE:  lda     ($80)
        ldy     #$01
        ora     ($80),y
        beq     LE1DE
        lda     $021E
        bne     LE1AD
        bra     LE1DE
LE1CD:  lda     ($80),y
        tax
        lda     ($80)
        sec
        sbc     #$01
        bcs     LE1D8
        dex
LE1D8:  jsr     LF3AB
        dec     $021F
LE1DE:  lda     ($80)
        ldy     #$01
        ora     ($80),y
        bne     LE1E9
        jmp     LA3B5

LE1E9:  lda     $021F
        bne     LE1CD
        jmp     LA3B5

        lda     $0263
        asl     a
        bcc     LE1F9
        inx
        clc
LE1F9:  adc     #$21
        sta     $88
        txa
        adc     #$F6
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
        bne     LE28A
        lda     $021D
        jsr     LF361
        lda     $0263
        asl     a
        bcc     LE222
        ldx     #$01
        clc
LE222:  adc     #$21
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
        sec
        ldy     #$04
        sbc     ($80),y
        jsr     LF231
        bcs     LE247
        jmp     LA3BF

LE247:  lda     $0258
        beq     LE258
        lda     #$05
        jsr     LEA3A
        cmp     #$00
        bne     LE258
        jmp     LA3B5

LE258:  ldx     #$00
        lda     $0263
        asl     a
        bcc     LE262
        inx
        clc
LE262:  adc     #$21
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
        sec
        iny
        sbc     ($80),y
        eor     #$FF
        sec
        adc     $021D
        sta     $021D
        jmp     LA3B5

LE28A:  lda     $0263
        asl     a
        bcc     LE292
        inx
        clc
LE292:  adc     #$21
        sta     $88
        txa
        adc     #$F6
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
        lda     $021E
        jsr     LF361
        lda     $0263
        asl     a
        bcc     LE2BD
        ldx     #$01
        clc
LE2BD:  adc     #$21
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
        sec
        ldy     #$04
        sbc     ($80),y
        jsr     LF231
        bcs     LE2E2
        jmp     LA3BF

LE2E2:  lda     $0258
        beq     LE2F3
        lda     #$05
        jsr     LEA3A
        cmp     #$00
        bne     LE2F3
        jmp     LA3B5

LE2F3:  ldx     #$00
        lda     $0263
        asl     a
        bcc     LE2FD
        inx
        clc
LE2FD:  adc     #$21
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
        sec
        iny
        sbc     ($80),y
        eor     #$FF
        sec
        adc     $021E
        sta     $021E
        jmp     LA3B5

LE325:  lda     $0263
        asl     a
        bcc     LE32D
        inx
        clc
LE32D:  adc     #$21
        sta     $88
        txa
        adc     #$F6
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
        lda     $021F
        jsr     LF361
        lda     $0263
        asl     a
        bcc     LE356
        ldx     #$01
        clc
LE356:  adc     #$21
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
        sec
        ldy     #$04
        sbc     ($80),y
        jsr     LF231
        bcc     LE3BF
        lda     $0258
        beq     LE386
        lda     #$05
        jsr     LEA3A
        cmp     #$00
        beq     LE3B5
LE386:  ldx     #$00
        lda     $0263
        asl     a
        bcc     LE390
        inx
        clc
LE390:  adc     #$21
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
        sec
        iny
        sbc     ($80),y
        eor     #$FF
        sec
        adc     $021F
        sta     $021F
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

LE3CA:  lda     $0263
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
LE3E7:  lda     $0207
        sta     $0205
        lda     $0206
        sta     $0204
        jmp     LA4CB

LE3F6:  inc     $0209
        jsr     LC0A2
        lda     $0207
        sta     $0205
        lda     $0206
        sta     $0204
        jmp     LA4CB

LE40B:  lda     $020B
        sta     $020A
        jmp     LA4CB

LE414:  inc     $020C
        jsr     LC0A2
        lda     $020B
        sta     $020A
        jmp     LA4CB

LE423:  lda     #$0A
        jsr     LC023
        jmp     LA4CB

LE42B:  inc     $020E
        jsr     LC0A2
        jmp     LA4CB

LE434:  .byte   $A9
LE435:  brk
        ldy     #$02
        sta     ($80),y
        cmp     #$1E
        bcc     LE441
        jmp     LA4CB

LE441:  lda     ($80),y
        tay
        lda     $0230,y
        cmp     #$20
        bne     LE4C3
        lda     $025B
        cmp     #$01
        bne     LE4B6
        lda     #$0A
        jsr     LEA3A
        cmp     #$00
        bne     LE4B6
        tax
        lda     $0263
        asl     a
        bcc     LE464
        inx
        clc
LE464:  adc     #$21
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
        lda     $0263
LE4BE:  sta     $0230,y
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
        jmp     LF194

        lda     #$00
        jsr     LF34D
        jsr     LF1F0
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
        jsr     LF361
        lda     #$28
        jsr     LF2C6
        clc
        adc     #$D4
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
        jsr     LEA3A
        ldy     #$02
        sta     ($80),y
        lda     #$14
        jsr     LEA3A
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
LE57A:  jsr     LF1C4
        bne     LE582
        jmp     LA6C9

LE582:  ldy     #$02
        lda     ($80),y
        jsr     LF34D
        ldy     #$02
        lda     ($80),y
        jsr     LC3B0
        cmp     #$00
        beq     LE597
        jmp     LA6C9

LE597:  ldy     #$02
        lda     ($80),y
        jsr     LF34D
        ldy     #$02
        lda     ($80),y
        jsr     LC349
        cmp     #$00
        beq     LE5AC
        jmp     LA6C9

LE5AC:  ldy     #$01
        lda     ($80),y
        jsr     LF361
        lda     #$28
        jsr     LF2C6
        clc
        adc     #$94
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
        jsr     LF1A1
        clc
        adc     #$54
        tay
        txa
        adc     #$03
        tax
        tya
        jsr     LF363
        ldy     #$04
        lda     ($80),y
        ldx     #$00
        ldy     #$00
        jsr     LF3B6
        ldy     #$03
        lda     ($80),y
        jsr     LF1A1
        clc
        adc     #$54
        tay
        txa
        adc     #$03
        tax
        tya
        jsr     LF363
        ldy     #$03
        lda     ($80),y
        ldx     #$00
        dey
        jsr     LF3B6
        iny
        lda     ($80),y
        jsr     LF1A1
        clc
        adc     #$54
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
        jsr     LEA3A
        sta     ($80)
        lda     ($80)
        bne     LE656
        ldy     #$03
        tax
        lda     ($80),y
        jsr     LF1A1
        clc
        adc     #$54
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
        jsr     LF1A1
        clc
        adc     #$54
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
        jsr     LF1A1
        clc
        adc     #$54
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
        jsr     LF361
        lda     #$28
        jsr     LF2C6
        clc
        adc     #$D4
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
        jmp     LF281

        lda     #$00
        jsr     LF34D
        jsr     LF1E3
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
        jsr     LEA3A
        ldy     #$01
        sta     ($80),y
        lda     #$14
        jsr     LEA3A
        sta     ($80)
        ldy     #$01
        lda     ($80),y
        cmp     #$01
        bne     LE749
        lda     ($80)
        cmp     #$01
        beq     LE74B
LE749:  lda     #$00
LE74B:  jsr     LF1C4
        bne     LE753
        jmp     LA819

LE753:  ldy     #$01
        lda     ($80),y
        jsr     LF34D
        ldy     #$01
        lda     ($80),y
        jsr     LC3B0
        cmp     #$00
        beq     LE768
        jmp     LA819

LE768:  lda     ($80)
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
        jsr     LF325
        clc
        adc     #$64
        tay
        txa
        adc     #$02
        tax
        tya
        jsr     LF363
        ldy     #$03
        lda     ($80),y
        ldx     #$00
        ldy     #$00
        jsr     LF3B6
        ldy     #$02
        lda     ($80),y
        jsr     LF325
        clc
        adc     #$64
        tay
        txa
        adc     #$02
        tax
        tya
        jsr     LF363
        ldy     #$02
        lda     ($80),y
        ldx     #$00
        jsr     LF3B6
        lda     ($80),y
        jsr     LF325
        clc
        adc     #$64
        sta     $88
        txa
        adc     #$02
        sta     $89
        lda     #$01
        ldy     #$04
        sta     ($88),y
        iny
        dec     a
        sta     ($88),y
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
        jmp     LF27C

        ldy     #$09
        jsr     LF3E6
        ldy     #$08
LE831:  lda     $FD0A,y
        sta     ($80),y
        dey
        bpl     LE831
        jsr     LF1DA
        lda     #$37
        jsr     LF361
        lda     #$11
        jsr     LC6DA
        lda     #$38
        jsr     LF361
        lda     #$12
        jsr     LC6DA
        lda     #$39
        jsr     LF361
        lda     #$13
        jsr     LC6DA
        lda     #$3A
        jsr     LF361
        lda     #$14
        jsr     LC6DA
        lda     #$3B
        jsr     LF361
        lda     #$15
        jsr     LC6DA
        lda     #$3C
        jsr     LF361
        lda     #$16
        jsr     LC6DA
        lda     #$3D
        jsr     LF361
        lda     #$17
        jsr     LC6DA
        lda     #$3E
        jsr     LF361
        lda     #$1A
        jsr     LC6DA
        lda     #$3F
        jsr     LF361
        lda     #$1B
        jsr     LC6DA
        lda     #$40
        jsr     LF361
        lda     #$1C
        jsr     LC6DA
        lda     #$41
        jsr     LF361
        lda     #$1D
        jsr     LC6DA
        lda     #$42
        jsr     LF361
        lda     #$1E
        jsr     LEFCF
        lda     #$43
        jsr     LF361
        lda     #$1F
        jsr     LEFCF
        lda     #$44
        jsr     LF361
        lda     #$20
        jsr     LEFCF
        lda     #$45
        jsr     LF361
        lda     #$21
        jsr     LEFCF
        lda     #$46
        jsr     LF361
        lda     #$22
        jsr     LEFCF
        lda     #$48
        jsr     LF361
        lda     #$24
        jsr     LEFCF
        lda     #$47
        jsr     LF361
        lda     #$23
        jsr     LEFCF
        lda     #$49
        jsr     LF361
        lda     #$25
        jsr     LEFCF
        lda     #$4A
        jsr     LF361
        lda     #$26
        jsr     LEFCF
        lda     #$4B
        jsr     LF361
        lda     #$27
        jsr     LEFCF
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
LE91F:  jsr     LF363
        ldy     #$02
        ldx     #$00
        lda     ($80),y
        clc
        adc     #$28
        bcc     LE92E
        inx
LE92E:  jsr     LEFCF
        ldx     #$00
        lda     ($80)
        inc     a
        sta     ($80)
        bra     LE913
LE93A:  jsr     LF35F
        lda     #$19
        jsr     LC6DA
        lda     #$01
        jsr     LF361
        dec     a
        jsr     LAC0C
        lda     #$02
        jsr     LF361
        dec     a
        jsr     LAC0C
        lda     #$03
        jsr     LF361
        dec     a
        jsr     LAC0C
        lda     #$04
        jsr     LF361
        lda     #$19
        jsr     LC6DA
        lda     #$05
        jsr     LF361
        lda     #$19
        jsr     LC6DA
        lda     #$06
        jsr     LF361
        lda     #$18
        jsr     LC6DA
        lda     #$08
        jsr     LF361
        lda     #$18
        jsr     LC6DA
        lda     #$07
        jsr     LF361
        lda     #$18
        jsr     LC6DA
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
        jsr     LF361
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
        jsr     LC573
        ldx     #$00
        lda     ($80)
        inc     a
        sta     ($80)
        bra     LE994
LE9D9:  txa
        ldy     #$0A
        jmp     LF194

        lda     $A6
        ldx     $A7
        jsr     LF363
        lda     #$04
        sta     $A7
        lda     #$94
        sta     $A6
        lda     $A5
        jsr     LF34D
        lda     $A4
        jsr     LF34D
        lda     $A2
        ldx     $A3
        jsr     LF363
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
LEA32:  bra     LEA03
LEA34:  stz     $A2
        stz     $A3
LEA38:  lda     $A2
LEA3A:  cmp     #$14
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
        lda     #$94
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
        jsr     LEA3A
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
LEAD1:  stz     $04BD
        lda     #$0A
        jsr     LEA3A
        clc
        adc     #$0A
        bcc     LEADF
        inx
LEADF:  jsr     LF363
        lda     #$28
        jsr     LF2C6
        clc
        adc     #$94
        tay
        txa
        adc     #$04
        tax
        tya
        jsr     LF363
        lda     #$14
        jsr     LEA3A
        clc
        adc     #$14
        bcc     LEAFE
        inx
LEAFE:  jsr     LF179
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
        jmp     LF28B

        jsr     LF34D
        lda     #$28
        jsr     LEA3A
        jsr     LF34D
        lda     #$14
        jsr     LEA3A
        jsr     LF34D
        lda     #$04
        jsr     LEA3A
        inc     a
        jsr     LF34D
        lda     #$04
        jsr     LEA3A
        inc     a
        jsr     LF34D
        jsr     LF1FD
        jsr     LEA32
        tax
        beq     LEB4F
        lda     #$FF
        bra     LEB50
LEB4F:  inc     a
LEB50:  ldy     #$03
        sta     ($80),y
        jsr     LEA32
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
LEBB0:  jsr     LF363
        lda     #$28
        jsr     LF2C6
        clc
        adc     #$94
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
        jmp     LF194

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
        ldy     #$01
        lda     ($A4),y
        sta     $A3
        lda     $A2
        jsr     LF34D
        lda     $A1
        jsr     LF34D
        lda     $A0
        jsr     LF34D
        lda     $9F
        jsr     LF34D
        jsr     LF35F
        jsr     LC31B
        sta     $A4
        stx     $A5
        stz     $A0
LEC8C:  lda     $A0
        jsr     LF361
        lda     $A3
        inc     a
        bne     LEC98
        ldx     #$01
LEC98:  jsr     LF233
        bcs     LECE8
        stz     $9F
LEC9F:  lda     $9F
        jsr     LF361
        lda     $A3
        inc     a
        bne     LECAB
        ldx     #$01
LECAB:  jsr     LF233
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
LECE8:  jsr     LF1FD
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
        jsr     LE435
        lda     #$01
        jsr     LF361
        lda     $A3
        jsr     LC31B
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
        jsr     LF361
        lda     $A3
        sec
        sbc     #$01
        bcs     LED72
        ldx     #$FF
LED72:  jsr     LF233
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
        jmp     LF194

        jsr     LF1DA
        stz     $021A
        lda     #$28
        sta     $021B
        stz     $0209
        stz     $020C
        stz     $020E
        lda     #$01
        sta     $021C
        stz     $021D
        stz     $021E
        stz     $021F
        stz     $0220
        stz     $0226
        stz     $022B
        lda     #$05
        sta     $022C
        lda     #$0A
        sta     $022D
        lda     #$0F
        sta     $022E
        lda     #$14
        sta     $022F
        lda     #$00
LEE64:  sta     ($80)
        cmp     #$1E
        bcs     LEE77
        lda     ($80)
        tay
        lda     #$20
        sta     $0230,y
        lda     ($80)
        inc     a
        bra     LEE64
LEE77:  lda     #$00
        sta     ($80)
        tax
LEE7C:  lda     ($80)
        cmp     #$0F
        bcs     LEE8F
        tay
        lda     #$00
        sta     $024E,y
        lda     ($80)
        inc     a
        sta     ($80)
        bra     LEE7C
LEE8F:  lda     #$00
        jmp     LF25F

        jsr     LF1DA
        lda     #$00
LEE99:  sta     ($80)
        cmp     #$0F
        bcs     LEF16
        ldx     #$00
        lda     ($80)
        asl     a
        bcc     LEEA8
        inx
        clc
LEEA8:  adc     #$9F
        sta     $88
        txa
        adc     #$F7
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        jsr     LF363
        ldy     #$02
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LEEC6
        inx
        clc
LEEC6:  adc     #$ED
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
        bcc     LEEE1
        inx
        clc
LEEE1:  adc     #$81
        sta     $88
        txa
        adc     #$F7
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        jsr     LF363
        ldy     #$02
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LEEFF
        inx
        clc
LEEFF:  adc     #$CF
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
        bra     LEE99
LEF16:  lda     #$00
        sta     ($80)
        tax
LEF1B:  lda     ($80)
        cmp     #$19
        bcs     LEF5F
        asl     a
        bcc     LEF26
        inx
        clc
LEF26:  adc     #$9C
        sta     $88
        txa
        adc     #$F4
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        jsr     LF363
        ldy     #$02
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LEF44
        inx
        clc
LEF44:  adc     #$F7
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
        bra     LEF1B
LEF5F:  txa
        jmp     LF25F


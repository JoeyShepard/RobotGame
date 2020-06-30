; da65 V2.18 - Git 28584b3
; Created:    2020-05-11 20:20:50
; Input file: C:\Users\druzy\Google Drive\Electronics\6502\CC65\projects\RobotGame\\main-1.bin
; Page:       1


        .setcpu "65C02"

L0024           := $0024
L0073           := $0073
L042A           := $042A
L2020           := $2020
L2048           := $2048
L2073           := $2073
L210D           := $210D
L2420           := $2420
L242D           := $242D
L2524           := $2524
L2B00           := $2B00
L3100           := $3100
L3A6C           := $3A6C
L4200           := $4200
L4800           := $4800
L5048           := $5048
L5F0F           := $5F0F
L6142           := $6142
L614C           := $614C
L694D           := $694D
L6964           := $6964
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
LAE96           := $AE96
LFE59           := $FE59
LFE5F           := $FE5F
        lda     #$00
        ldx     #$40
        sta     $80
        stx     $81
        jsr     LF547
        jsr     LC017
        jsr     LE6BA
        pha
        jsr     LF2C2
        pla
        rts

LC017:  ldy     #$00
        beq     LC022
        lda     #$23
        ldx     #$C0
        jmp     LFE14

LC022:  rts

LC023:  lda     LF56F
        sta     $89
        lda     LF56E
        sta     $88
        lda     #$02
        sta     ($88)
        sta     $0200
        ldx     #$00
        txa
        rts

LC038:  lda     LF56F
        sta     $89
        lda     LF56E
        sta     $88
        lda     #$05
        sta     ($88)
        sta     $0200
        ldx     #$00
        txa
        rts

LC04D:  lda     $0200
        sta     $0201
        ldx     #$00
        txa
        rts

LC057:  lda     LF56F
        sta     $89
        lda     LF56E
        sta     $88
        lda     $0201
        sta     ($88)
        lda     $0201
        sta     $0200
        ldx     #$00
        txa
        rts

LC070:  jsr     LF457
        bra     LC098
LC075:  lda     LF578
        ldx     LF579
        jsr     LF457
        ldy     #$03
        lda     ($80),y
        tax
        dey
        lda     ($80),y
        sta     $84
        stx     $85
        inc     a
        bne     LC08E
        inx
LC08E:  jsr     LF4A1
        ldy     #$00
        lda     ($84)
        jsr     LF489
LC098:  ldy     #$01
        lda     ($80),y
        sta     $89
        lda     ($80)
        sta     $88
        lda     ($88)
        bne     LC075
        tax
        jmp     LF362

        jsr     LF441
        lda     LF57D
        sta     $89
        lda     LF57C
        sta     $88
        lda     ($80)
        sta     ($88)
        ldx     #$00
        txa
        jmp     LF353

        jsr     LF441
        lda     LF57B
        sta     $89
        lda     LF57A
        sta     $88
        lda     ($80)
        sta     ($88)
        ldx     #$00
        txa
        jmp     LF353

        lda     #$D4
        ldx     #$FD
        jsr     LC070
        ldx     #$00
        txa
        rts

        jsr     LF457
        lda     LF57B
        sta     $89
        lda     LF57A
        sta     $88
        ldy     #$01
        lda     ($80),y
        sta     ($88)
        lda     LF57B
        sta     $89
        lda     LF57A
        sta     $88
        lda     ($80)
        sta     ($88)
        ldx     #$00
        txa
        jmp     LF362

LC10A:  jsr     LF441
        jsr     LF2CE
        ldy     #$01
        lda     ($80),y
        clc
        adc     $021C
        sta     $021C
        ldx     #$00
        lda     $021C
        cmp     $021D
        txa
        bcc     LC190
        lda     $021D
        eor     #$FF
        sec
        adc     $021C
        sta     $021C
        lda     #$0A
        clc
        adc     $021D
        sta     $021D
        inc     $021E
        inc     $0222
        lda     $0209
        sta     $0207
        lda     $0208
        sta     $0206
        lda     $020D
        sta     $020C
        lda     $025B
        cmp     #$01
        bne     LC18F
        lda     #$03
        jsr     LE7EB
        sta     ($80)
        lda     ($80)
        bne     LC171
        tax
        lda     #$05
        clc
        adc     $0220
        sta     $0220
        bra     LC18F
LC171:  lda     ($80)
        cmp     #$01
        bne     LC184
        ldx     #$00
        lda     #$05
        clc
        adc     $021F
        sta     $021F
        bra     LC18F
LC184:  lda     #$05
        clc
        adc     $0221
        sta     $0221
        ldx     #$00
LC18F:  txa
LC190:  jmp     LF362

LC193:  jsr     LF30B
        lda     #$00
        jsr     LF441
        jsr     LF441
        lda     $020B
        clc
        adc     #$02
        sta     $020A
        lda     $020E
        clc
        adc     #$03
        sta     $020D
        lda     $0210
        sta     $020F
        lda     #$08
        sta     $0211
        lda     #$0C
        sta     $0212
        lda     #$01
        sta     $0214
        lda     #$05
        sta     $0215
        stz     $0216
        stz     $0213
        dec     a
        sta     $0217
        stz     $0218
        sta     $0219
        lda     #$02
        sta     $021A
        sta     $021B
        lda     #$00
        ldy     #$07
LC1E6:  sta     ($80),y
        cmp     #$05
        bcc     LC1EF
        jmp     LC368

LC1EF:  lda     #$00
        dey
LC1F2:  sta     ($80),y
        lda     ($80),y
        jsr     LF455
        ldy     #$09
        lda     ($80),y
        tay
        lda     $022D,y
        asl     a
        bcc     LC207
        ldx     #$01
        clc
LC207:  adc     #$15
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
        ldy     #$04
        lda     ($88),y
        jsr     LF325
        bcc     LC227
        jmp     LC360

LC227:  ldy     #$07
        lda     ($80),y
        tay
        ldx     #$00
        lda     $022D,y
        asl     a
        bcc     LC236
        inx
        clc
LC236:  adc     #$15
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
        ldx     #$00
        ldy     #$06
        lda     ($80),y
        asl     a
        bcc     LC255
        inx
        clc
LC255:  adc     #$05
        bcc     LC25B
        inx
        clc
LC25B:  adc     $88
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
        bcc     LC273
        inx
        clc
LC273:  adc     #$F9
        sta     $88
        txa
        adc     #$F7
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        ldy     #$04
        jsr     LF4A1
        ldy     #$07
        lda     ($80),y
        tay
        ldx     #$00
        lda     $022D,y
        asl     a
        bcc     LC297
        inx
        clc
LC297:  adc     #$15
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
        ldx     #$00
        ldy     #$06
        lda     ($80),y
        asl     a
        bcc     LC2B6
        inx
        clc
LC2B6:  adc     #$05
        bcc     LC2BB
        inx
LC2BB:  inc     a
        bne     LC2BF
        inx
LC2BF:  clc
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
        bne     LC33B
        ldy     #$03
        lda     ($80),y
        cmp     #$03
        beq     LC2FA
        cmp     #$04
        beq     LC308
        cmp     #$07
        beq     LC30F
        cmp     #$08
        beq     LC31D
        cmp     #$0B
        beq     LC323
        cmp     #$0C
        beq     LC32D
        cmp     #$0D
        beq     LC334
        bra     LC358
LC2FA:  dey
        lda     ($80),y
        eor     #$FF
        sec
        adc     $0211
        sta     $0211
        bra     LC358
LC308:  lda     #$01
        tay
        sta     ($80),y
        bra     LC358
LC30F:  dey
        lda     ($80),y
        eor     #$FF
        sec
        adc     $0212
        sta     $0212
        bra     LC358
LC31D:  lda     #$01
        sta     ($80)
        bra     LC358
LC323:  lda     #$FF
        sta     $0217
        sta     $0218
        bra     LC358
LC32D:  lda     #$02
        sta     $0219
        bra     LC358
LC334:  lda     #$01
        sta     $021A
        bra     LC358
LC33B:  lda     ($80),y
        tax
        dey
        lda     ($80),y
        jsr     LF457
        sta     $88
        stx     $89
        lda     ($88)
        sta     $88
        ldy     #$04
        lda     ($80),y
        clc
        adc     $88
        ldy     #$00
        jsr     LF489
LC358:  ldy     #$06
        lda     ($80),y
        inc     a
        jmp     LC1F2

LC360:  ldy     #$07
        lda     ($80),y
        inc     a
        jmp     LC1E6

LC368:  lda     $0252
        cmp     #$01
        bne     LC381
        lda     $0211
        sec
        sbc     #$02
        sta     $0211
        lda     $0212
        sec
        sbc     #$02
        sta     $0212
LC381:  ldy     #$01
        lda     ($80),y
        cmp     #$01
        bne     LC38C
        sta     $0211
LC38C:  lda     ($80)
        cmp     #$01
        bne     LC395
        sta     $0212
LC395:  lda     $0255
        cmp     #$01
        bne     LC3A5
        lda     #$14
        clc
        adc     $0215
        sta     $0215
LC3A5:  lda     $0218
        cmp     #$FF
        bne     LC3B3
        lda     $0217
        cmp     #$FF
        beq     LC3CD
LC3B3:  lda     $0213
        cmp     #$19
        bne     LC3BE
        lda     #$03
        bra     LC3C7
LC3BE:  lda     $0213
        cmp     #$32
        bne     LC3CD
        lda     #$02
LC3C7:  sta     $0217
        stz     $0218
LC3CD:  stz     $0209
        lda     $020A
        sta     $0208
        lda     $0206
        ldx     $0207
        jsr     LF457
        lda     $0208
        ldx     $0209
        jsr     LF327
        bmi     LC3F8
        beq     LC3F8
        lda     $0209
        sta     $0207
        lda     $0208
        sta     $0206
LC3F8:  ldx     #$00
        lda     $020C
        sec
        sbc     $020D
        bcc     LC40B
        beq     LC40B
        lda     $020D
        sta     $020C
LC40B:  txa
        jmp     LF389

LC40F:  jsr     LF457
        lda     LF58A
        ldx     LF58B
        jsr     LF457
        ldy     #$02
        lda     ($80),y
        tax
        lda     #$00
        jsr     LF26D
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
        jmp     LF375

LC43D:  jsr     LF441
        lda     ($80)
        jsr     LF455
        lda     #$28
        jsr     LF3BA
        clc
        adc     #$D0
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
        beq     LC4A0
        lda     ($80)
        jsr     LF455
        lda     #$28
        jsr     LF3BA
        clc
        adc     #$D0
        sta     $88
        txa
        adc     #$0A
        sta     $89
        ldy     #$01
        lda     ($80),y
        tay
        ldx     #$00
        lda     ($88),y
        jsr     LF295
        clc
        adc     #$50
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
        bne     LC49E
        cmp     #$01
        bne     LC4A0
        jmp     LF362

LC49E:  ldx     #$00
LC4A0:  txa
        jmp     LF362

LC4A4:  jsr     LF441
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
        tay
        ldx     #$00
        lda     ($88),y
        cmp     #$FF
        beq     LC507
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
        tay
        ldx     #$00
        lda     ($88),y
        jsr     LF419
        clc
        adc     #$60
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
        bne     LC505
        cmp     #$01
        bne     LC507
        jmp     LF362

LC505:  ldx     #$00
LC507:  txa
        jmp     LF362

LC50B:  lda     $0206
        ldx     $0207
        jsr     LF457
        lda     $0208
        ldx     $0209
        jsr     LF327
        bmi     LC52F
        beq     LC52F
        lda     $0209
        sta     $0207
        lda     $0208
        sta     $0206
        bra     LC591
LC52F:  lda     $0206
        cmp     #$01
        lda     $0207
        sbc     #$00
        bvc     LC53D
        eor     #$80
LC53D:  asl     a
        lda     #$00
        tax
        bcc     LC594
        jsr     LC038
        stz     $0206
        stz     $0207
        jsr     LCA7E
        jsr     LD291
        jsr     LF2F1
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
        jsr     LDC59
        jsr     LF2FE
        lda     #$A2
        ldy     #$03
        sta     ($80),y
        iny
        lda     #$FD
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
        jsr     LDF7D
LC58F:  bra     LC58F
LC591:  ldx     #$00
        txa
LC594:  rts

        jsr     LF441
        lda     $A6
        ldx     $A7
        jsr     LF457
        lda     LF58B
        sta     $A7
        lda     LF58A
        sta     $A6
        lda     $A4
        ldx     $A5
        jsr     LF457
        stz     $A4
        stz     $A5
LC5B4:  ldx     $A5
        cpx     #$80
        bcs     LC5DE
        lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        inc     a
        bne     LC5C6
        inx
LC5C6:  sta     $A6
        stx     $A7
        ldy     #$04
        lda     ($80),y
        sta     ($84)
        lda     $A4
        ldx     $A5
        inc     a
        bne     LC5D8
        inx
LC5D8:  sta     $A4
        stx     $A5
        bra     LC5B4
LC5DE:  ldx     #$00
        txa
        pha
        tay
LC5E3:  lda     ($80),y
        sta     $A4,y
        iny
        cpy     #$04
        bne     LC5E3
        pla
        jmp     LF37A

LC5F1:  lda     #$09
        jsr     LF455
        lda     #$3C
        jsr     LC7E1
        lda     #$09
        jsr     LF455
        lda     $022D
        jsr     LC677
        lda     #$09
        jsr     LF455
        lda     $022E
        jsr     LC677
        lda     #$09
        jsr     LF455
        lda     $022F
        jsr     LC677
        lda     #$09
        jsr     LF455
        lda     $0230
        jsr     LC677
        lda     #$09
        jsr     LF455
        lda     $0231
        jsr     LC677
        lda     #$0A
        jsr     LF455
        lda     #$3D
        jsr     LC7E1
        lda     #$0A
        jsr     LF455
        lda     $022D
        jsr     LC677
        lda     #$0A
        jsr     LF455
        lda     $022E
        jsr     LC677
        lda     #$0A
        jsr     LF455
        lda     $022F
        jsr     LC677
        lda     #$0A
        jsr     LF455
        lda     $0230
        jsr     LC677
        lda     #$0A
        jsr     LF455
        lda     $0231
        jsr     LC677
        ldx     #$00
        txa
        rts

LC677:  jsr     LF457
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
        lda     $A5
        jsr     LF441
        lda     $A4
        jsr     LF441
        lda     $A3
        jsr     LF441
        lda     $A1
        ldx     $A2
        jsr     LF457
        lda     $A0
        jsr     LF441
        lda     $9F
        jsr     LF441
        jsr     LF2CE
        ldy     #$0D
        lda     ($80),y
        tax
        dey
        lda     ($80),y
        cpx     #$00
        bne     LC704
        cmp     #$09
        beq     LC6EE
        cmp     #$0A
        beq     LC6EE
        cmp     #$0B
        beq     LC6EE
        cmp     #$0C
        beq     LC6EE
        cmp     #$0D
        beq     LC6EE
        cmp     #$0E
        beq     LC6EE
        cmp     #$0F
        bne     LC704
LC6EE:  dey
        lda     ($80),y
        sta     $90
        dey
        lda     ($80),y
        asl     a
        rol     $90
        clc
        adc     #$09
        sta     $88
        lda     $90
        adc     #$FD
        bra     LC718
LC704:  dey
        lda     ($80),y
        sta     $90
        dey
        lda     ($80),y
        asl     a
        .byte   $26
LC70E:  bcc     $C728
        adc     #$3B
        sta     $88
        lda     $90
        adc     #$FD
LC718:  sta     $89
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
        bcs     LC73C
        jmp     LC7C6

LC73C:  inc     $A7
        jmp     LC7C6

LC741:  lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        inc     a
        bne     LC74D
        inx
LC74D:  sta     $A6
        stx     $A7
        lda     ($84)
        sta     $A4
        lda     $A4
        bne     LC75D
        dec     $A5
        bra     LC7C6
LC75D:  lda     ($A6)
        sta     $A3
        cmp     #$41
        bcc     LC7BA
        lda     #$00
        sta     ($80)
LC769:  sta     $9F
        lda     $9F
        cmp     $A0
        bcs     LC7B5
        lda     $A3
        jsr     LF455
        lda     $9F
        clc
        adc     #$02
        bcc     LC780
        ldx     #$01
        clc
LC780:  adc     $A1
        sta     $88
        txa
        adc     $A2
        sta     $89
        lda     ($88)
        jsr     LF325
        bne     LC7AE
        ldx     #$00
        lda     $9F
        clc
        adc     #$03
        bcc     LC79B
        inx
        clc
LC79B:  adc     $A1
        sta     $88
        txa
        adc     $A2
        sta     $89
        lda     ($88)
        sta     ($A6)
        lda     #$01
        sta     ($80)
        bra     LC7B5
LC7AE:  lda     #$02
        clc
        adc     $9F
        bra     LC769
LC7B5:  lda     ($80)
        jsr     LF394
LC7BA:  lda     $A6
        ldx     $A7
        inc     a
        bne     LC7C2
        inx
LC7C2:  sta     $A6
        stx     $A7
LC7C6:  lda     $A5
        beq     LC7CD
        jmp     LC741

LC7CD:  tax
        pha
        ldy     #$01
LC7D1:  lda     ($80),y
        sta     $9E,y
        iny
        cpy     #$0A
        bne     LC7D1
        pla
        ldy     #$0E
        jmp     LF288

LC7E1:  jsr     LF457
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
        lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        inc     a
        bne     LC852
        inx
LC852:  sta     $A6
        stx     $A7
        lda     $84
        ldx     $85
        jsr     LF457
        lda     $A4
        ldx     $A5
        sta     $84
        stx     $85
        inc     a
        bne     LC869
        inx
LC869:  sta     $A4
        stx     $A5
        ldy     #$00
        lda     ($84)
        jsr     LF489
        bra     LC8A6
LC876:  lda     $A4
        ldx     $A5
        sta     $84
        stx     $85
        inc     a
        bne     LC882
        inx
LC882:  sta     $A4
        stx     $A5
        lda     ($84)
        sta     $A2
        lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        inc     a
        bne     LC896
        inx
LC896:  sta     $A6
        stx     $A7
        lda     $A2
        sta     ($84)
        lda     $A2
        bne     LC8A6
        dec     $A3
        bra     LC8D4
LC8A6:  lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        inc     a
        bne     LC8B2
        inx
LC8B2:  sta     $A6
        stx     $A7
        lda     $84
        ldx     $85
        jsr     LF457
        lda     $A4
        ldx     $A5
        sta     $84
        stx     $85
        inc     a
        bne     LC8C9
        inx
LC8C9:  sta     $A4
        stx     $A5
        ldy     #$00
        lda     ($84)
        jsr     LF489
LC8D4:  lda     $A3
        bne     LC876
        tax
        pha
        tay
LC8DB:  lda     ($80),y
        sta     $A2,y
        iny
        cpy     #$06
        bne     LC8DB
        pla
        ldy     #$0A
        jmp     LF288

LC8EB:  jsr     LF441
        lda     $A7
        jsr     LF441
        ldy     #$04
        lda     ($80),y
        jsr     LF455
        lda     #$50
        jsr     LF3BA
        jsr     LF457
        ldy     #$05
        lda     ($80),y
        jsr     LF4E7
        sta     $A7
        jsr     LF2F1
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
        jsr     LDC59
        jsr     LF2F1
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
        jsr     LDC59
        ldx     #$00
        txa
        pha
        lda     ($80)
        sta     $A7
        pla
        jmp     LF384

LC962:  jsr     LF441
        lda     $A6
        ldx     $A7
        jsr     LF457
        ldy     #$07
        lda     ($80),y
        jsr     LF455
        ldy     #$08
        lda     ($80),y
        jsr     LC40F
        sta     $A6
        stx     $A7
        lda     $A4
        ldx     $A5
        jsr     LF457
        ldy     #$07
        lda     ($80),y
        tax
        dey
        lda     ($80),y
        sec
        sbc     #$01
        bcs     LC993
        dex
LC993:  jsr     LF4A1
        ldy     #$05
        lda     ($80),y
        dec     a
        sta     ($80),y
        stz     $A4
        stz     $A5
LC9A1:  lda     $A4
        ldy     #$06
        cmp     ($80),y
        lda     $A5
        iny
        sbc     ($80),y
        bcs     LC9D2
        lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        inc     a
        bne     LC9BA
        inx
LC9BA:  sta     $A6
        stx     $A7
        ldy     #$04
        lda     ($80),y
        sta     ($84)
        lda     $A4
        ldx     $A5
        inc     a
        bne     LC9CC
        inx
LC9CC:  sta     $A4
        stx     $A5
        bra     LC9A1
LC9D2:  stz     $A4
        stz     $A5
LC9D6:  lda     $A4
        ldy     #$05
        cmp     ($80),y
        lda     $A5
        sbc     #$00
        bcs     LCA02
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
        bne     LC9FC
        inx
LC9FC:  sta     $A4
        stx     $A5
        bra     LC9D6
LCA02:  stz     $A4
        stz     $A5
LCA06:  lda     $A4
        ldy     #$06
        cmp     ($80),y
        lda     $A5
        iny
        sbc     ($80),y
        bcs     LCA39
        lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        sec
        sbc     #$01
        bcs     LCA21
        dex
LCA21:  sta     $A6
        stx     $A7
        ldy     #$04
        lda     ($80),y
        sta     ($84)
        lda     $A4
        ldx     $A5
        inc     a
        bne     LCA33
        inx
LCA33:  sta     $A4
        stx     $A5
        bra     LCA06
LCA39:  stz     $A4
        stz     $A5
LCA3D:  lda     $A4
        ldy     #$05
        cmp     ($80),y
        lda     $A5
        sbc     #$00
        bcs     LCA69
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
        bne     LCA63
        inx
LCA63:  sta     $A4
        stx     $A5
        bra     LCA3D
LCA69:  ldx     #$00
        txa
        pha
        tay
LCA6E:  lda     ($80),y
        sta     $A4,y
        iny
        cpy     #$04
        bne     LCA6E
        pla
        ldy     #$0A
        jmp     LF288

LCA7E:  jsr     LF2D7
        lda     #$00
        ldy     #$01
        sta     ($80),y
        tax
LCA88:  lda     ($80),y
        cmp     #$04
        bcc     LCA91
        jmp     LCE33

LCA91:  txa
LCA92:  sta     ($80)
        cmp     #$05
        bcc     LCA9B
        jmp     LCE27

LCA9B:  ldy     #$01
        ldx     #$00
        lda     ($80),y
        clc
        adc     $0203
        bcc     LCAA8
        inx
LCAA8:  jsr     LF457
        lda     #$28
        jsr     LF3BA
        clc
        adc     #$90
        sta     $88
        txa
        adc     #$04
        sta     $89
        ldx     #$00
        lda     ($80)
        clc
        adc     $0202
        bcc     LCAC6
        inx
        clc
LCAC6:  adc     $88
        sta     $88
        txa
        adc     $89
        sta     $89
        lda     ($88)
        beq     LCAED
        cmp     #$01
        beq     LCAF9
        cmp     #$02
        beq     LCB00
        cmp     #$03
        beq     LCB07
        cmp     #$04
        beq     LCB0E
        cmp     #$05
        beq     LCB15
        cmp     #$06
        beq     LCB1C
        bra     LCB51
LCAED:  jsr     LF2F1
        lda     #$00
        ldy     #$02
        sta     ($80),y
        iny
        bra     LCB28
LCAF9:  jsr     LF2F1
        lda     #$01
        bra     LCB21
LCB00:  jsr     LF2F1
        lda     #$02
        bra     LCB21
LCB07:  jsr     LF2F1
        lda     #$03
        bra     LCB21
LCB0E:  jsr     LF2F1
        lda     #$04
        bra     LCB21
LCB15:  jsr     LF2F1
        lda     #$05
        bra     LCB21
LCB1C:  jsr     LF2F1
        lda     #$45
LCB21:  ldy     #$02
        sta     ($80),y
        iny
        lda     #$00
LCB28:  sta     ($80),y
        iny
        tax
        lda     ($80),y
        jsr     LF2A3
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
        jsr     LF2A3
        stx     $90
        asl     a
        rol     $90
        ldx     $90
        jsr     LE20D
LCB51:  ldy     #$01
        ldx     #$00
        lda     ($80),y
        clc
        adc     $0203
        bcc     LCB5E
        inx
LCB5E:  jsr     LF457
        lda     #$28
        jsr     LF3BA
        clc
        adc     #$B0
        sta     $88
        txa
        adc     #$07
        sta     $89
        ldx     #$00
        lda     ($80)
        clc
        adc     $0202
        bcc     LCB7C
        inx
        clc
LCB7C:  adc     $88
        sta     $88
        txa
        adc     $89
        sta     $89
        lda     ($88)
        cmp     #$FF
        bne     LCB8E
        jmp     LCC28

LCB8E:  ldy     #$01
        ldx     #$00
        lda     ($80),y
        clc
        adc     $0203
        bcc     LCB9B
        inx
LCB9B:  jsr     LF457
        lda     #$28
        jsr     LF3BA
        clc
        adc     #$B0
        sta     $88
        txa
        adc     #$07
        sta     $89
        ldx     #$00
        lda     ($80)
        clc
        adc     $0202
        bcc     LCBB9
        inx
        clc
LCBB9:  adc     $88
        sta     $88
        txa
        adc     $89
        sta     $89
        ldx     #$00
        lda     ($88)
        jsr     LF419
        clc
        adc     #$60
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
        bne     LCBF3
        cmp     #$01
        bne     LCBF3
        jsr     LF2F1
        lda     #$3E
        ldy     #$02
        sta     ($80),y
        iny
        txa
        sta     ($80),y
        iny
        bra     LCC03
LCBF3:  jsr     LF2F1
        lda     #$3F
        ldy     #$02
        sta     ($80),y
        iny
        lda     #$00
        sta     ($80),y
        iny
        tax
LCC03:  lda     ($80),y
        jsr     LF2A3
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
        jsr     LF2A3
        stx     $90
        asl     a
        rol     $90
        ldx     $90
        jsr     LE20D
LCC28:  ldy     #$01
        ldx     #$00
        lda     ($80),y
        clc
        adc     $0203
        bcc     LCC35
        inx
LCC35:  jsr     LF457
        lda     #$28
        jsr     LF3BA
        clc
        adc     #$D0
        sta     $88
        txa
        adc     #$0A
        sta     $89
        ldx     #$00
        lda     ($80)
        clc
        adc     $0202
        bcc     LCC53
        inx
        clc
LCC53:  adc     $88
        sta     $88
        txa
        adc     $89
        sta     $89
        lda     ($88)
        cmp     #$FF
        bne     LCC65
        jmp     LCE21

LCC65:  ldy     #$01
        ldx     #$00
        lda     ($80),y
        clc
        adc     $0203
        bcc     LCC72
        inx
LCC72:  jsr     LF457
        lda     #$28
        jsr     LF3BA
        clc
        adc     #$D0
        sta     $88
        txa
        adc     #$0A
        sta     $89
        ldx     #$00
        lda     ($80)
        clc
        adc     $0202
        bcc     LCC90
        inx
        clc
LCC90:  adc     $88
        sta     $88
        txa
        adc     $89
        sta     $89
        ldx     #$00
        lda     ($88)
        jsr     LF295
        clc
        adc     #$50
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
        beq     LCCB9
        jmp     LCDEC

LCCB9:  cmp     #$01
        beq     LCCC0
        jmp     LCDEC

LCCC0:  tay
        lda     ($80),y
        clc
        adc     $0203
        bcc     LCCCA
        inx
LCCCA:  jsr     LF457
        lda     #$28
        jsr     LF3BA
        clc
        adc     #$D0
        sta     $88
        txa
        adc     #$0A
        sta     $89
        ldx     #$00
        lda     ($80)
        clc
        adc     $0202
        bcc     LCCE8
        inx
        clc
LCCE8:  adc     $88
        sta     $88
        txa
        adc     $89
        sta     $89
        ldx     #$00
        lda     ($88)
        jsr     LF295
        clc
        adc     #$50
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
        bne     LCD22
        cmp     #$00
        bne     LCD22
        jsr     LF2F1
        tya
        ldy     #$02
        sta     ($80),y
        iny
        txa
        sta     ($80),y
        iny
        jmp     LCDFC

LCD22:  ldy     #$01
        ldx     #$00
        lda     ($80),y
        clc
        adc     $0203
        bcc     LCD2F
        inx
LCD2F:  jsr     LF457
        lda     #$28
        jsr     LF3BA
        clc
        adc     #$D0
        sta     $88
        txa
        adc     #$0A
        sta     $89
        ldx     #$00
        lda     ($80)
        clc
        adc     $0202
        bcc     LCD4D
        inx
        clc
LCD4D:  adc     $88
        sta     $88
        txa
        adc     $89
        sta     $89
        ldx     #$00
        lda     ($88)
        jsr     LF295
        clc
        adc     #$50
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
        bne     LCD87
        cmp     #$01
        bne     LCD87
        jsr     LF2F1
        lda     #$08
        ldy     #$02
        sta     ($80),y
        iny
        txa
        sta     ($80),y
        iny
        bra     LCDFC
LCD87:  ldy     #$01
        ldx     #$00
        lda     ($80),y
        clc
        adc     $0203
        bcc     LCD94
        inx
LCD94:  jsr     LF457
        lda     #$28
        jsr     LF3BA
        clc
        adc     #$D0
        sta     $88
        txa
        adc     #$0A
        sta     $89
        ldx     #$00
        lda     ($80)
        clc
        adc     $0202
        bcc     LCDB2
        inx
        clc
LCDB2:  adc     $88
        sta     $88
        txa
        adc     $89
        sta     $89
        ldx     #$00
        lda     ($88)
        jsr     LF295
        clc
        adc     #$50
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
        bne     LCE21
        cmp     #$02
        bne     LCE21
        jsr     LF2F1
        lda     #$07
        ldy     #$02
        sta     ($80),y
        iny
        txa
        sta     ($80),y
        iny
        bra     LCDFC
LCDEC:  jsr     LF2F1
        lda     #$41
        ldy     #$02
        sta     ($80),y
        iny
        lda     #$00
        sta     ($80),y
        iny
        tax
LCDFC:  lda     ($80),y
        jsr     LF2A3
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
        jsr     LF2A3
        stx     $90
        asl     a
        rol     $90
        ldx     $90
        jsr     LE20D
LCE21:  lda     ($80)
        inc     a
        jmp     LCA92

LCE27:  ldy     #$01
        ldx     #$00
        lda     ($80),y
        inc     a
        sta     ($80),y
        jmp     LCA88

LCE33:  lda     $0223
        cmp     #$03
        bne     LCE41
        jsr     LF2F1
        lda     #$09
        bra     LCE4D
LCE41:  lda     $0223
        cmp     #$04
        bne     LCE7B
        jsr     LF2F1
        lda     #$0A
LCE4D:  iny
        sta     ($80),y
        iny
        txa
        sta     ($80),y
        lda     $0204
        jsr     LF2A3
        stx     $90
        asl     a
        rol     $90
        sta     ($80)
        ldy     #$01
        lda     $90
        sta     ($80),y
        ldx     #$00
        lda     $0205
        jsr     LF2A3
        stx     $90
        asl     a
        rol     $90
        ldx     $90
        jsr     LE20D
        ldx     #$00
LCE7B:  lda     $0224
        cmp     #$01
        bne     LCEB8
        lda     $0205
        beq     LCEB8
        jsr     LF2F1
        lda     #$42
        ldy     #$02
        sta     ($80),y
        iny
        txa
        sta     ($80),y
        lda     $0204
        jsr     LF2A3
        stx     $90
        asl     a
        rol     $90
        sta     ($80)
        ldy     #$01
        lda     $90
        sta     ($80),y
        ldx     #$00
        lda     $0205
        sec
        sbc     #$01
        bcc     LCEB4
        jmp     LCF50

LCEB4:  dex
        jmp     LCF50

LCEB8:  lda     $0224
        cmp     #$02
        bne     LCEF1
        lda     $0205
        cmp     #$03
        beq     LCEF1
        jsr     LF2F1
        lda     #$42
        ldy     #$02
        sta     ($80),y
        iny
        txa
        sta     ($80),y
        lda     $0204
        jsr     LF2A3
        stx     $90
        asl     a
        rol     $90
        sta     ($80)
        ldy     #$01
        lda     $90
        sta     ($80),y
        ldx     #$00
        lda     $0205
        inc     a
        bne     LCF50
        inx
        bra     LCF50
LCEF1:  lda     $0224
        cmp     #$03
        bne     LCF15
        lda     $0204
        beq     LCF15
        jsr     LF2F1
        lda     #$42
        ldy     #$02
        sta     ($80),y
        iny
        txa
        sta     ($80),y
        lda     $0204
        sec
        sbc     #$01
        bcs     LCF3B
        dex
        bra     LCF3B
LCF15:  lda     $0224
        cmp     #$04
        bne     LCF23
        lda     $0204
        cmp     #$04
        bne     LCF27
LCF23:  txa
        jmp     LF362

LCF27:  jsr     LF2F1
        lda     #$42
        ldy     #$02
        sta     ($80),y
        iny
        txa
        sta     ($80),y
        lda     $0204
        inc     a
        bne     LCF3B
        inx
LCF3B:  jsr     LF2A3
        stx     $90
        asl     a
        rol     $90
        sta     ($80)
        ldy     #$01
        lda     $90
        sta     ($80),y
        ldx     #$00
        lda     $0205
LCF50:  jsr     LF2A3
        stx     $90
        asl     a
        rol     $90
        ldx     $90
        jsr     LE20D
        ldx     #$00
        txa
        jmp     LF362

LCF63:  jsr     LF441
        jsr     LF2FE
        ldy     #$04
LCF6B:  lda     LFDD7,y
        sta     ($80),y
        dey
        bpl     LCF6B
        jsr     LF2FE
        ldy     #$04
LCF78:  lda     LFDDC,y
        sta     ($80),y
        dey
        bpl     LCF78
        jsr     LF2CE
        ldy     #$0D
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LCF8E
        inx
        clc
LCF8E:  adc     #$15
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
        sta     ($80)
        lda     $80
        ldx     $81
        clc
        adc     #$06
        bcc     LCFB1
        inx
        clc
LCFB1:  adc     ($80)
        bcc     LCFB6
        inx
LCFB6:  sta     $88
        stx     $89
        lda     ($88)
        jsr     LF455
        lda     $80
        ldx     $81
        clc
        adc     #$03
        bcc     LCFC9
        inx
LCFC9:  ldy     #$02
        clc
        adc     ($80),y
        bcc     LCFD1
        inx
LCFD1:  sta     $88
        stx     $89
        lda     ($88)
        ldx     #$00
        jsr     LC7E1
        lda     $80
        ldx     $81
        clc
        adc     #$06
        bcc     LCFE6
        inx
LCFE6:  clc
        adc     ($80)
        bcc     LCFEC
        inx
LCFEC:  sta     $88
        stx     $89
        lda     ($88)
        jsr     LF455
        ldy     #$0F
        lda     ($80),y
        jsr     LC677
        jsr     LF2F1
        lda     $80
        ldx     $81
        clc
        adc     #$0A
        bcc     LD009
        inx
LD009:  ldy     #$04
        clc
        adc     ($80),y
        bcc     LD011
        inx
LD011:  sta     $88
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
        jsr     LE20D
        ldx     #$00
        txa
        ldy     #$0E
        jmp     LF288

LD03D:  jsr     LF441
        ldy     #$01
        lda     ($80),y
        clc
        adc     #$0F
        jsr     LF441
        jsr     LF2E4
        ldy     #$07
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LD058
        inx
        clc
LD058:  adc     #$15
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
        cmp     #$0E
        bne     LD0E0
        jsr     LF30B
        ldy     #$0D
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LD080
        inx
        clc
LD080:  adc     #$15
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
        ldy     #$03
        lda     ($88),y
        stz     $90
        asl     a
        rol     $90
        clc
        adc     #$F1
        sta     $88
        lda     $90
        adc     #$F6
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
        jsr     LE162
        jmp     LD28B

LD0E0:  jsr     LF2D7
        ldy     #$09
        lda     ($80),y
        ldy     #$01
        sta     ($80),y
        ldy     #$08
        lda     ($80),y
        sta     ($80)
        dey
        lda     ($80),y
        jsr     LCF63
        jsr     LF2FE
        ldy     #$0C
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LD105
        inx
        clc
LD105:  adc     #$90
        sta     $88
        txa
        adc     #$F5
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
        bcc     LD141
        inx
        clc
LD141:  adc     #$15
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
        ldy     #$03
        lda     ($88),y
        sta     $88
        lda     #$00
        clc
        adc     #$FD
        sta     $89
        ldy     #$4D
        lda     ($88),y
        jsr     LDF7D
        lda     #$00
        ldy     #$02
LD16D:  sta     ($80),y
        lda     ($80),y
        jsr     LF455
        ldy     #$09
        lda     ($80),y
        asl     a
        bcc     LD17E
        ldx     #$01
        clc
LD17E:  adc     #$15
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
        ldy     #$04
        lda     ($88),y
        jsr     LF325
        bcc     LD19E
        jmp     LD28B

LD19E:  ldy     #$07
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LD1A9
        inx
        clc
LD1A9:  adc     #$15
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
        ldx     #$00
        iny
        lda     ($80),y
        asl     a
        bcc     LD1C7
        inx
        clc
LD1C7:  adc     #$05
        bcc     LD1CD
        inx
        clc
LD1CD:  adc     $88
        sta     $88
        txa
        adc     $89
        sta     $89
        lda     ($88)
        dey
        sta     ($80),y
        tay
        lda     LF7EB,y
        sta     ($80)
        ldx     #$00
        lda     ($80)
        ldy     #$04
        cmp     ($80),y
        bne     LD1EF
        lda     #$03
        sta     ($80)
LD1EF:  jsr     LF318
        ldy     #$08
        lda     ($80),y
        asl     a
        bcc     LD1FB
        inx
        clc
LD1FB:  adc     #$CF
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
        ldy     #$0E
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LD21E
        inx
        clc
LD21E:  adc     #$15
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
        ldx     #$00
        ldy     #$09
        lda     ($80),y
        asl     a
        bcc     LD23D
        inx
        clc
LD23D:  adc     #$05
        bcc     LD242
        inx
LD242:  inc     a
        bne     LD246
        inx
LD246:  clc
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
        jsr     LE0A4
        ldy     #$03
        clc
        lda     #$0A
        adc     ($80),y
        sta     ($80),y
        dey
        lda     ($80),y
        inc     a
        jmp     LD16D

LD28B:  ldx     #$00
        txa
        jmp     LF389

LD291:  lda     $A6
        ldx     $A7
        jsr     LF457
        lda     $A4
        ldx     $A5
        jsr     LF457
        lda     #$04
        sta     $A5
        lda     #$90
        sta     $A4
        lda     $A3
        jsr     LF441
        lda     $A2
        jsr     LF441
        lda     $A1
        jsr     LF441
        jsr     LF2F1
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
        jsr     LDC59
        jsr     LF318
        lda     #$C3
        ldy     #$05
        sta     ($80),y
        iny
        lda     #$FD
        sta     ($80),y
        lda     $0206
        ldy     #$04
        sta     ($80),y
        lda     $0208
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
        jsr     LE0A4
        jsr     LF2FE
        lda     #$A8
        ldy     #$04
        sta     ($80),y
        lda     #$0D
        dey
        sta     ($80),y
        lda     $0206
        dey
        sta     ($80),y
        lda     $0208
        dey
        sta     ($80),y
        lda     #$03
        sta     ($80)
        dec     a
        jsr     LC8EB
        jsr     LF318
        lda     #$99
        ldy     #$05
        sta     ($80),y
        iny
        lda     #$FD
        sta     ($80),y
        lda     $020C
        ldy     #$04
        sta     ($80),y
        lda     $020D
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
        jsr     LE0A4
        jsr     LF2FE
        lda     #$A8
        ldy     #$04
        sta     ($80),y
        lda     #$21
        dey
        sta     ($80),y
        lda     $020C
        dey
        sta     ($80),y
        lda     $020D
        dey
        sta     ($80),y
        lda     #$30
        sta     ($80)
        lda     #$20
        jsr     LC8EB
        jsr     LF318
        lda     #$B3
        ldy     #$05
        sta     ($80),y
        iny
        lda     #$FD
        sta     ($80),y
        lda     $021C
        ldy     #$04
        sta     ($80),y
        lda     $021D
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
        jsr     LE0A4
        jsr     LF2FE
        lda     #$A8
        ldy     #$04
        sta     ($80),y
        lda     #$35
        dey
        sta     ($80),y
        lda     $021C
        dey
        sta     ($80),y
        lda     $021D
        dey
        sta     ($80),y
        lda     #$0C
        sta     ($80)
        lda     #$08
        jsr     LC8EB
        ldx     #$00
        lda     $0225
        beq     LD3E1
        cmp     #$01
        beq     LD41B
        cmp     #$02
        beq     LD3FE
        cmp     #$03
        beq     LD437
        cmp     #$04
        bne     LD3DE
        jmp     LD47F

LD3DE:  jmp     LD47F

LD3E1:  jsr     LF2FE
        lda     #$CA
        ldy     #$03
        sta     ($80),y
        iny
        lda     #$FD
        sta     ($80),y
        lda     #$A8
        ldy     #$02
        sta     ($80),y
        lda     #$40
        dey
        sta     ($80),y
        lda     #$21
        bra     LD478
LD3FE:  jsr     LF2FE
        lda     #$CF
        ldy     #$03
        sta     ($80),y
        iny
        lda     #$FD
        sta     ($80),y
        lda     #$A8
        ldy     #$02
        sta     ($80),y
        lda     #$40
        dey
        sta     ($80),y
        lda     #$35
        bra     LD478
LD41B:  jsr     LF2FE
        lda     #$7C
        ldy     #$03
        sta     ($80),y
        iny
        lda     #$FD
        sta     ($80),y
        lda     #$A8
        ldy     #$02
        sta     ($80),y
        lda     #$40
        dey
        sta     ($80),y
        tya
        bra     LD478
LD437:  lda     $0226
        jsr     LF295
        clc
        adc     #$50
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
        adc     #$FD
        sta     $89
        ldy     #$52
        lda     ($88),y
        sta     $A3
        jsr     LF2FE
        lda     #$BB
        ldy     #$03
        sta     ($80),y
        iny
        lda     #$FD
        sta     ($80),y
        lda     #$A8
        ldy     #$02
        sta     ($80),y
        lda     #$40
        dey
        sta     ($80),y
        lda     $A3
LD478:  sta     ($80)
        lda     #$15
        jsr     LDF7D
LD47F:  lda     $0228
        cmp     #$01
        bne     LD4A9
        jsr     LF2FE
        lda     #$A8
        ldy     #$04
        sta     ($80),y
        lda     #$49
        dey
        sta     ($80),y
        lda     $0229
        dey
        sta     ($80),y
        lda     $022B
        dey
        sta     ($80),y
        lda     #$32
        sta     ($80)
        lda     #$21
        jsr     LC8EB
LD4A9:  lda     #$A8
        jsr     LF455
        lda     #$54
        jsr     LC40F
        sta     $A6
        stx     $A7
        stz     $A3
        ldx     #$00
LD4BB:  lda     $A3
        cmp     #$14
        bcc     LD4C4
        jmp     LD583

LD4C4:  stz     $A2
LD4C6:  lda     $A2
        cmp     #$28
        bcc     LD4CF
        jmp     LD56F

LD4CF:  jsr     LF441
        lda     $A3
        jsr     LC4A4
        cmp     #$01
        bne     LD4DF
        lda     #$03
        bra     LD521
LD4DF:  lda     $A2
        jsr     LF441
        lda     $A3
        jsr     LC43D
        cmp     #$01
        bne     LD4F1
        lda     #$0F
        bra     LD521
LD4F1:  lda     ($A4)
        beq     LD50F
        cmp     #$01
        beq     LD50F
        cmp     #$02
        beq     LD50F
        cmp     #$03
        beq     LD50F
        cmp     #$04
        beq     LD513
        cmp     #$05
        beq     LD517
        cmp     #$06
        beq     LD51B
        bra     LD51F
LD50F:  lda     #$3B
        bra     LD521
LD513:  lda     #$21
        bra     LD521
LD517:  lda     #$0B
        bra     LD521
LD51B:  lda     #$35
        bra     LD521
LD51F:  lda     #$3F
LD521:  sta     $A1
        sta     ($A6)
        lda     $A6
        ldx     $A7
        inc     a
        bne     LD52D
        inx
LD52D:  sta     $88
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
        bne     LD54B
        inx
LD54B:  sta     $88
        stx     $89
        lda     $A1
        sta     ($88)
        lda     #$02
        clc
        adc     $A6
        sta     $A6
        bcc     LD55E
        inc     $A7
LD55E:  lda     $A4
        ldx     $A5
        inc     a
        bne     LD566
        inx
LD566:  sta     $A4
        stx     $A5
        inc     $A2
        jmp     LD4C6

LD56F:  lda     #$B0
        clc
        adc     $A6
        sta     $A6
        lda     #$01
        adc     $A7
        sta     $A7
        ldx     #$00
        inc     $A3
        jmp     LD4BB

LD583:  lda     $0202
        asl     a
        bcc     LD58B
        inx
        clc
LD58B:  adc     #$A0
        bcc     LD591
        inx
        clc
LD591:  adc     #$08
        bcc     LD596
        inx
LD596:  jsr     LF457
        ldx     #$00
        lda     $0203
        asl     a
        bcc     LD5A3
        inx
        clc
LD5A3:  adc     #$54
        bcc     LD5A8
        inx
LD5A8:  jsr     LC40F
        sta     $A6
        stx     $A7
        stz     $A3
        ldx     #$00
LD5B3:  lda     $A3
        cmp     #$0A
        bcs     LD5DE
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
        bne     LD5D4
        inx
LD5D4:  sta     $A6
        stx     $A7
        ldx     #$00
        inc     $A3
        bra     LD5B3
LD5DE:  lda     $0202
        asl     a
        bcc     LD5E6
        inx
        clc
LD5E6:  adc     #$A0
        bcc     LD5EC
        inx
        clc
LD5EC:  adc     #$08
        bcc     LD5F1
        inx
LD5F1:  jsr     LF457
        ldx     #$00
        lda     $0203
        asl     a
        bcc     LD5FE
        inx
        clc
LD5FE:  adc     #$54
        bcc     LD603
        inx
LD603:  jsr     LC40F
        sta     $A6
        stx     $A7
        stz     $A3
        ldx     #$00
LD60E:  lda     $A3
        cmp     #$08
        bcs     LD643
        lda     #$0C
        sta     ($A6)
        lda     $A6
        ldx     $A7
        clc
        adc     #$0A
        bcc     LD622
        inx
LD622:  sec
        sbc     #$01
        bcs     LD628
        dex
LD628:  sta     $88
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
        ldx     #$00
        inc     $A3
        bra     LD60E
LD643:  txa
        pha
        tay
LD646:  lda     ($80),y
        sta     $A1,y
        iny
        cpy     #$07
        bne     LD646
        pla
        jmp     LF384

LD654:  jsr     LF2F1
        ldy     #$01
LD659:  lda     LFDE1,y
        sta     ($80),y
        dey
        bpl     LD659
        jsr     LF2D7
        lda     LFE11
        beq     LD66C
        jmp     LD771

LD66C:  lda     LFE10
        cmp     #$01
        beq     LD676
        jmp     LD771

LD676:  jsr     LF2F1
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
        jsr     LDC59
        jsr     LF2F1
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
        jsr     LE20D
        lda     #$38
        ldy     #$01
        sta     ($80),y
        lda     #$00
        ldy     #$04
LD6BA:  sta     ($80),y
        cmp     #$07
        bcc     LD6C3
        jmp     LD76B

LD6C3:  ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LD6CC
        inx
        clc
LD6CC:  adc     #$67
        sta     $88
        txa
        adc     #$F8
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        cpx     #$00
        bne     LD6E9
        cmp     #$00
        bne     LD6E9
        lda     $0208
        bra     LD70A
LD6E9:  ldy     #$04
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LD6F4
        inx
        clc
LD6F4:  adc     #$67
        sta     $88
        txa
        adc     #$F8
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        sta     $88
        stx     $89
        lda     ($88)
LD70A:  sta     ($80)
        jsr     LF318
        ldy     #$0B
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LD71A
        inx
        clc
LD71A:  adc     #$59
        sta     $88
        txa
        adc     #$F8
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
        lda     LF852,y
        sta     ($80)
        lda     #$08
        jsr     LE0A4
        ldy     #$01
        clc
        lda     #$09
        adc     ($80),y
        sta     ($80),y
        ldy     #$04
        lda     ($80),y
        inc     a
        jmp     LD6BA

LD76B:  jsr     LDA53
        jmp     LD889

LD771:  lda     LFE11
        bne     LD7E5
        lda     LFE10
        cmp     #$02
        bne     LD7E5
        jsr     LF2F1
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
        jsr     LDC59
        jsr     LF2FE
        lda     #$90
        ldy     #$03
        sta     ($80),y
        iny
        lda     #$FD
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
        jsr     LDF7D
        ldy     #$05
        sta     ($80),y
        jsr     LF2F1
        lda     $0222
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
        jsr     LE5B7
        jsr     LEE63
        jmp     LD889

LD7E5:  lda     LFE11
        beq     LD7ED
        jmp     LD889

LD7ED:  lda     LFE10
        cmp     #$03
        beq     LD7F7
        jmp     LD889

LD7F7:  jsr     LF2F1
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
        jsr     LDC59
        jsr     LF2F1
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
        jsr     LDC59
LD82F:  jsr     LF2F1
        lda     $021F
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
        jsr     LE5B7
        jsr     LF2F1
        lda     $0220
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
        jsr     LE5B7
        jsr     LF2F1
        lda     $0221
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
        jsr     LE5B7
        jsr     LDCDE
LD889:  ldx     #$00
        txa
        jmp     LF37F

LD88F:  jsr     LF2FE
        lda     #$01
        ldy     #$03
        sta     ($80),y
LD898:  dey
        sta     ($80),y
        lda     #$FE
        dey
        sta     ($80),y
        lda     #$10
        sta     ($80)
        lda     #$2A
        jsr     LDC59
        jsr     LF2F1
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
        jsr     LDC59
        jsr     LF2F1
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
        jsr     LDC59
        jsr     LF2F1
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
        jsr     LDC59
        jsr     LF2FE
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
        jsr     LC962
        jsr     LF2FE
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
        jsr     LC962
        lda     #$01
LD93C:  sta     ($80)
        cmp     #$08
        bcc     LD945
        jmp     LD9CD

LD945:  lda     ($80)
        jsr     LF455
        ldy     #$02
        lda     ($80),y
        jsr     LC40F
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
        bcs     LD969
        dex
LD969:  jsr     LF457
        ldy     #$02
        lda     ($80),y
        ldx     #$00
        jsr     LC40F
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
        bcs     LD98D
        dex
LD98D:  jsr     LF457
        lda     #$80
        sec
        ldy     #$02
        sbc     ($80),y
        ldx     #$00
        sec
        sbc     #$01
        bcs     LD99F
        dex
LD99F:  jsr     LC40F
        sta     $88
        stx     $89
        lda     #$00
        sta     ($88)
        lda     ($80)
        jsr     LF455
        lda     #$80
        sec
        ldy     #$02
        sbc     ($80),y
        sec
        sbc     #$01
        bcs     LD9BC
        dex
LD9BC:  jsr     LC40F
        sta     $88
        stx     $89
        lda     #$00
        sta     ($88)
        lda     ($80)
        inc     a
        jmp     LD93C

LD9CD:  jsr     LF2FE
        lda     #$70
        ldy     #$03
        sta     ($80),y
        iny
        lda     #$FD
        sta     ($80),y
        lda     #$09
        ldy     #$02
        sta     ($80),y
        dey
        sta     ($80),y
        lda     #$3F
        sta     ($80)
        lda     #$08
        jsr     LDF7D
        jsr     LF2FE
        lda     #$87
        ldy     #$03
        sta     ($80),y
        iny
        lda     #$FD
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
        jsr     LDF7D
        jsr     LF2FE
        lda     #$64
        ldy     #$03
        sta     ($80),y
        iny
        lda     #$FD
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
        jsr     LDF7D
        jsr     LF2F1
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
        jsr     LDC59
        ldx     #$00
        txa
        jmp     LF353

LDA53:  jsr     LF2D7
        lda     #$00
        jsr     LF441
        jsr     LF2F1
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
        jsr     LDC59
        jsr     LF2F1
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
        jsr     LDC59
        lda     #$00
        ldy     #$02
LDA97:  sta     ($80),y
        cmp     #$06
        bcc     LDAA0
        jmp     LDBEB

LDAA0:  lda     #$00
        dey
LDAA3:  sta     ($80),y
        cmp     #$05
        bcc     LDAAC
        jmp     LDBE4

LDAAC:  jsr     LF2F1
        lda     #$40
        iny
        sta     ($80),y
        iny
        lda     #$00
        sta     ($80),y
        ldy     #$05
        tax
        lda     ($80),y
        jsr     LF2A3
        clc
        adc     #$A4
        bcc     LDAC7
        inx
LDAC7:  sta     ($80)
        ldy     #$01
        txa
        sta     ($80),y
        ldy     #$06
        ldx     #$00
        lda     ($80),y
        jsr     LF2A3
        clc
        adc     #$14
        bcc     LDADD
        inx
LDADD:  jsr     LE20D
        lda     ($80)
        tay
        lda     $0232,y
        cmp     #$20
        bne     LDAED
        jmp     LDBD7

LDAED:  lda     ($80)
        tay
        ldx     #$00
        lda     $0232,y
        asl     a
        bcc     LDAFA
        inx
        clc
LDAFA:  adc     #$15
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
        cmp     #$0E
        bne     LDB17
        jmp     LDBD7

LDB17:  jsr     LF2D7
        iny
        lda     ($80),y
        tay
        lda     $0232,y
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
        jsr     LCF63
        ldy     #$01
        lda     ($80),y
        cmp     LFE0A
        beq     LDB4B
        jmp     LDBD7

LDB4B:  iny
        lda     ($80),y
        cmp     LFE0B
        beq     LDB56
        jmp     LDBD7

LDB56:  jsr     LF2E4
        iny
        lda     ($80),y
        tay
        ldx     #$00
        lda     $0232,y
        asl     a
        bcc     LDB67
        inx
        clc
LDB67:  adc     #$15
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
        ldy     #$02
        sta     ($80),y
        lda     #$50
        dey
        sta     ($80),y
        lda     #$16
        sta     ($80)
        lda     #$04
        jsr     LD03D
        jsr     LF2E4
        ldy     #$03
        lda     ($80),y
        tay
        lda     $0232,y
        ldy     #$02
        sta     ($80),y
        lda     #$50
        dey
        sta     ($80),y
        lda     #$46
        sta     ($80)
        lda     #$04
        jsr     LD03D
        jsr     LF2F1
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
        jsr     LE20D
LDBD7:  lda     ($80)
        inc     a
        sta     ($80)
        ldy     #$01
        lda     ($80),y
        inc     a
        jmp     LDAA3

LDBE4:  iny
        lda     ($80),y
        inc     a
        jmp     LDA97

LDBEB:  jsr     LF2F1
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
        jsr     LDC59
        jsr     LF2F1
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
        jsr     LDC59
        jsr     LF2F1
        lda     #$43
        ldy     #$02
        sta     ($80),y
        iny
        lda     #$00
        sta     ($80),y
        tax
        lda     LFE0A
        jsr     LF2A3
        clc
        adc     #$A4
        bcc     LDC3B
        inx
LDC3B:  sta     ($80)
        ldy     #$01
        txa
        sta     ($80),y
        ldx     #$00
        lda     LFE0B
        jsr     LF2A3
        clc
        adc     #$14
        bcc     LDC50
        inx
LDC50:  jsr     LE20D
        ldx     #$00
        txa
        jmp     LF370

LDC59:  jsr     LF441
        lda     $A6
        ldx     $A7
        jsr     LF457
        ldy     #$06
        lda     ($80),y
        jsr     LF455
        ldy     #$07
        lda     ($80),y
        jsr     LC40F
        sta     $A6
        stx     $A7
        lda     $A5
        jsr     LF441
        lda     $A4
        jsr     LF441
        stz     $A5
        ldx     #$00
LDC83:  lda     $A5
        ldy     #$05
        cmp     ($80),y
        txa
        bcs     LDCCC
        stz     $A4
LDC8E:  lda     $A4
        ldy     #$06
        cmp     ($80),y
        txa
        bcs     LDCB3
        lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        inc     a
        bne     LDCA3
        inx
LDCA3:  sta     $A6
        stx     $A7
        ldy     #$04
        lda     ($80),y
        sta     ($84)
        ldx     #$00
        inc     $A4
        bra     LDC8E
LDCB3:  sbc     ($80),y
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
        bra     LDC83
LDCCC:  pha
        tay
LDCCE:  lda     ($80),y
        sta     $A4,y
        iny
        cpy     #$04
        bne     LDCCE
        pla
        ldy     #$09
        jmp     LF288

LDCDE:  jsr     LF30B
        ldy     #$05
LDCE3:  lda     LFDE3,y
        sta     ($80),y
        dey
        bpl     LDCE3
        jsr     LF30B
        ldy     #$05
LDCF0:  lda     LFDE9,y
        sta     ($80),y
        dey
        bpl     LDCF0
        jsr     LF2E4
        lda     #$20
        jsr     LF441
        jsr     LF2D7
        lda     #$20
        sta     $025F
        jsr     LF2F1
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
        jsr     LDC59
        lda     #$00
        ldy     #$05
        sta     ($80),y
        tax
LDD2A:  lda     ($80),y
        cmp     #$06
        bcc     LDD33
        jmp     LDEEE

LDD33:  inc     a
        ldy     #$03
        sta     ($80),y
        jsr     LF2F1
        ldy     #$09
        lda     ($80),y
        jsr     LF455
        lda     #$17
        jsr     LF3BA
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
        bcc     LDD66
        inx
LDD66:  ldy     #$09
        clc
        adc     ($80),y
        bcc     LDD6E
        inx
LDD6E:  sta     $88
        stx     $89
        lda     ($88)
        jsr     LDC59
        lda     #$00
        ldy     #$04
LDD7B:  sta     ($80),y
        cmp     #$05
        bcc     LDD84
        jmp     LDEE3

LDD84:  iny
        lda     ($80),y
        cmp     #$04
        bcs     LDDC7
        jsr     LF2D7
        lda     ($80),y
        ldy     #$01
        sta     ($80),y
        ldy     #$07
        lda     ($80),y
        jsr     LF455
        lda     #$17
        jsr     LF3BA
        clc
        adc     #$0E
        sta     ($80)
        ldy     #$06
        lda     ($80),y
        jsr     LF455
        lda     #$13
        jsr     LF3BA
        clc
        adc     #$15
        jsr     LCF63
        ldy     #$03
        lda     ($80),y
        dey
        sta     ($80),y
        iny
        clc
        lda     #$05
        adc     ($80),y
        jmp     LDE65

LDDC7:  dey
        lda     ($80),y
        cmp     #$03
        bcc     LDDD1
        jmp     LDE61

LDDD1:  jsr     LF2F1
        ldy     #$08
        lda     ($80),y
        jsr     LF455
        ldy     #$0B
        lda     ($80),y
        sec
        sbc     #$04
        bcs     LDDE6
        ldx     #$FF
LDDE6:  jsr     LF3F4
        jsr     LF26D
        clc
        adc     #$0A
        bcc     LDDF3
        inx
        clc
LDDF3:  adc     $80
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
        jsr     LF455
        lda     #$17
        jsr     LF3BA
        clc
        adc     #$0E
        bcc     LDE19
        inx
LDE19:  sta     ($80)
        ldy     #$01
        txa
        sta     ($80),y
        ldy     #$08
        lda     ($80),y
        jsr     LF455
        lda     #$13
        jsr     LF3BA
        clc
        adc     #$15
        bcc     LDE32
        inx
LDE32:  jsr     LE20D
        ldy     #$04
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LDE3F
        inx
LDE3F:  sta     $88
        stx     $89
        ldx     #$00
        iny
        lda     ($80),y
        sec
        sbc     #$04
        bcs     LDE4E
        dex
LDE4E:  clc
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
        bra     LDE65
LDE61:  lda     #$20
        ldy     #$02
LDE65:  sta     ($80),y
        ldy     #$05
        lda     ($80),y
        cmp     LFE0E
        bne     LDEDB
        dey
        lda     ($80),y
        cmp     LFE0F
        bne     LDEDD
        jsr     LF2F1
        lda     #$43
        ldy     #$02
        sta     ($80),y
        iny
        lda     #$00
        sta     ($80),y
        ldy     #$09
        lda     ($80),y
        jsr     LF455
        lda     #$17
        jsr     LF3BA
        clc
        adc     #$0E
        bcc     LDE98
        inx
LDE98:  sta     ($80)
        ldy     #$01
        txa
        sta     ($80),y
        ldy     #$08
        lda     ($80),y
        jsr     LF455
        lda     #$13
        jsr     LF3BA
        clc
        adc     #$15
        bcc     LDEB1
        inx
LDEB1:  jsr     LE20D
        ldy     #$02
        lda     ($80),y
        cmp     #$20
        beq     LDEDB
        jsr     LF2E4
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
        jsr     LD03D
        ldy     #$02
        lda     ($80),y
        sta     $025F
LDEDB:  ldy     #$04
LDEDD:  lda     ($80),y
        inc     a
        jmp     LDD7B

LDEE3:  iny
        ldx     #$00
        lda     ($80),y
        inc     a
        sta     ($80),y
        jmp     LDD2A

LDEEE:  lda     $025F
        cmp     #$20
        bne     LDEF8
        jmp     LDF77

LDEF8:  asl     a
        bcc     LDEFD
        inx
        clc
LDEFD:  adc     #$15
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
        sta     ($80),y
        ldx     #$00
        lda     $025F
        asl     a
        bcc     LDF21
        inx
        clc
LDF21:  adc     #$15
        sta     $88
        txa
        adc     #$F7
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
        adc     #$FD
        sta     $89
        ldy     #$52
        lda     ($88),y
        sta     ($80)
        jsr     LF318
        lda     #$AB
        ldy     #$05
        sta     ($80),y
        iny
        lda     #$FD
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
        jsr     LE0A4
        ldx     #$00
LDF77:  txa
        ldy     #$12
        jmp     LF288

LDF7D:  jsr     LF441
        lda     $A6
        ldx     $A7
        jsr     LF457
        ldy     #$05
        lda     ($80),y
        jsr     LF455
        ldy     #$06
        lda     ($80),y
        jsr     LC40F
        sta     $A6
        stx     $A7
        lda     $A4
        ldx     $A5
        jsr     LF457
        ldy     #$09
        lda     ($80),y
        sta     $A5
        dey
        lda     ($80),y
        sta     $A4
        lda     $A2
        ldx     $A3
        jsr     LF457
        lda     $A1
        jsr     LF441
        jsr     LF2CE
        ldy     #$0B
        lda     ($80),y
        jsr     LF441
        lda     $A0
        jsr     LF441
        lda     $9F
        jsr     LF441
        jmp     LE065

LDFCE:  lda     ($80),y
        sec
        sbc     #$20
        bcs     LDFD6
        dex
LDFD6:  jsr     LF295
        clc
        adc     #$67
        sta     $A2
        txa
        adc     #$F9
        sta     $A3
        stz     $A0
LDFE5:  lda     $A0
        cmp     #$08
        bcs     LE04F
        lda     $A2
        ldx     $A3
        sta     $84
        stx     $85
        inc     a
        bne     LDFF7
        inx
LDFF7:  sta     $A2
        stx     $A3
        lda     ($84)
        sta     $A1
        stz     $9F
LE001:  lda     $9F
        cmp     #$06
        bcs     LE040
        lda     $A1
        and     #$01
        beq     LE021
        lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        inc     a
        bne     LE019
        inx
LE019:  sta     $A6
        stx     $A7
        ldy     #$0C
        bra     LE033
LE021:  lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        inc     a
        bne     LE02D
        inx
LE02D:  sta     $A6
        stx     $A7
        ldy     #$0B
LE033:  lda     ($80),y
        sta     ($84)
        lda     $A1
        lsr     a
        sta     $A1
        inc     $9F
        bra     LE001
LE040:  lda     #$FA
        clc
        adc     $A6
        sta     $A6
        bcc     LE04B
        inc     $A7
LE04B:  inc     $A0
        bra     LDFE5
LE04F:  lda     $A6
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
LE065:  lda     $A4
        ldx     $A5
        sta     $84
        stx     $85
        inc     a
        bne     LE071
        inx
LE071:  sta     $A4
        stx     $A5
        ldx     #$00
        lda     ($84)
        ldy     #$03
        sta     ($80),y
        lda     ($80),y
        beq     LE084
        jmp     LDFCE

LE084:  dey
        lda     ($80),y
        pha
        ldy     #$04
LE08A:  lda     ($80),y
        sta     $9D,y
        iny
        cpy     #$0B
        bne     LE08A
        lda     ($80)
        sta     $9F
        ldy     #$01
        lda     ($80),y
        sta     $A0
        pla
        ldy     #$11
        jmp     LF288

LE0A4:  jsr     LF441
        jsr     LF2D7
        ldy     #$01
LE0AC:  lda     LFDEF,y
        sta     ($80),y
        dey
        bpl     LE0AC
        jmp     LE14A

LE0B7:  iny
        lda     ($80),y
        sta     $89
        dey
        lda     ($80),y
        sta     $88
        lda     ($88)
        cmp     #$24
        bne     LE0F8
        jsr     LF2F1
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
        jsr     LE5B7
        ldy     #$05
        sta     ($80),y
        iny
        lda     ($80),y
        iny
        bra     LE139
LE0F8:  iny
        lda     ($80),y
        sta     $89
        dey
        lda     ($80),y
        sta     $88
        lda     ($88)
        sta     ($80)
        jsr     LF2FE
        lda     $80
        ldx     $81
        clc
        adc     #$05
        bcc     LE113
        inx
LE113:  ldy     #$03
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
        jsr     LDF7D
        ldy     #$05
LE139:  sta     ($80),y
        ldy     #$09
        lda     ($80),y
        tax
        dey
        lda     ($80),y
        inc     a
        bne     LE147
        inx
LE147:  jsr     LF4A1
LE14A:  ldy     #$09
        lda     ($80),y
        sta     $89
        dey
        lda     ($80),y
        sta     $88
        lda     ($88)
        beq     LE15C
        jmp     LE0B7

LE15C:  tax
        ldy     #$0A
        jmp     LF288

LE162:  jsr     LF441
        ldy     #$03
        lda     ($80),y
        jsr     LF441
        ldy     #$05
        lda     ($80),y
        jsr     LF441
        jsr     LF2D7
        ldy     #$01
LE178:  lda     LFDF1,y
        sta     ($80),y
        dey
        bpl     LE178
        bra     LE1F5
LE182:  iny
        lda     ($80),y
        sta     $89
        dey
        lda     ($80),y
        sta     $88
        lda     ($88)
        cmp     #$24
        bne     LE1A3
        ldy     #$06
        lda     ($80),y
        ldy     #$03
        clc
        adc     ($80),y
        sta     ($80),y
        ldy     #$08
        lda     ($80),y
        bra     LE1E2
LE1A3:  iny
        lda     ($80),y
        sta     $89
        dey
        lda     ($80),y
        sta     $88
        lda     ($88)
        sta     ($80)
        jsr     LF2FE
        lda     $80
        ldx     $81
        clc
        adc     #$05
        bcc     LE1BE
        inx
LE1BE:  ldy     #$03
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
        ldy     #$01
        sta     ($80),y
        ldy     #$0A
        lda     ($80),y
        sta     ($80)
        dey
        lda     ($80),y
        jsr     LDF7D
LE1E2:  ldy     #$02
        sta     ($80),y
        ldy     #$0A
        lda     ($80),y
        tax
        dey
        lda     ($80),y
        inc     a
        bne     LE1F2
        inx
LE1F2:  jsr     LF4A1
LE1F5:  ldy     #$0A
        lda     ($80),y
        sta     $89
        dey
        lda     ($80),y
        sta     $88
        lda     ($88)
        beq     LE207
        jmp     LE182

LE207:  tax
        ldy     #$0B
        jmp     LF288

LE20D:  jsr     LF457
        jsr     LF2D7
        ldy     #$07
        lda     ($80),y
        tax
        dey
        lda     ($80),y
        cpx     #$00
        bne     LE28F
        cmp     #$42
        beq     LE249
        cmp     #$43
        beq     LE255
        cmp     #$44
        beq     LE255
        cmp     #$45
        beq     LE261
        cmp     #$46
        beq     LE26C
        cmp     #$47
        beq     LE26C
        cmp     #$48
        beq     LE277
        cmp     #$49
        beq     LE277
        cmp     #$4A
        beq     LE283
        cmp     #$4B
        beq     LE283
        bra     LE28F
LE249:  lda     #$0C
        ldy     #$01
        sta     ($80),y
        lda     #$40
        sta     ($80)
        bra     LE2BE
LE255:  lda     #$40
        ldy     #$01
        sta     ($80),y
        lda     #$0C
        sta     ($80)
        bra     LE2BE
LE261:  txa
        ldy     #$01
        sta     ($80),y
        lda     #$30
        sta     ($80)
        bra     LE2BE
LE26C:  lda     #$01
        tay
        sta     ($80),y
        lda     #$17
        sta     ($80)
        bra     LE2BE
LE277:  lda     #$10
        ldy     #$01
        sta     ($80),y
        lda     #$35
        sta     ($80)
        bra     LE2BE
LE283:  lda     #$05
        ldy     #$01
        sta     ($80),y
        lda     #$1F
        sta     ($80)
        bra     LE2BE
LE28F:  jsr     LF2F1
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
        jsr     LE4B1
        bra     LE2E5
LE2BE:  jsr     LF2F1
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
        jsr     LE2EB
LE2E5:  ldx     #$00
        txa
        jmp     LF389

LE2EB:  jsr     LF441
        lda     $A6
        ldx     $A7
        jsr     LF457
        ldy     #$05
        lda     ($80),y
        jsr     LF455
        ldy     #$06
        lda     ($80),y
        jsr     LC40F
        sta     $A6
        stx     $A7
        lda     $A4
        ldx     $A5
        jsr     LF457
        ldy     #$08
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LE319
        inx
        clc
LE319:  adc     #$B1
        sta     $88
        txa
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
        lda     $A2
        jsr     LF441
        lda     $A1
        jsr     LF441
        lda     $A0
        jsr     LF441
        lda     $9F
        jsr     LF441
        lda     $9E
        jsr     LF441
        lda     $9D
        jsr     LF441
        jsr     LF2FE
        lda     #$00
        jsr     LF441
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
        bcs     LE379
        jmp     LE496

LE379:  inc     $A5
        jmp     LE496

LE37E:  lda     $A2
        beq     LE385
        jmp     LE40E

LE385:  lda     $A4
        ldx     $A5
        sta     $84
        stx     $85
        inc     a
        bne     LE391
        inx
LE391:  sta     $A4
        stx     $A5
        lda     ($84)
        sta     $9E
        lda     $A3
        bne     LE40E
        lda     $9D
        beq     LE40A
        lda     $A1
        cmp     #$01
        beq     LE3AD
        lda     $A0
        cmp     $A1
        bne     LE3CC
LE3AD:  lda     #$00
        ldy     #$05
        sta     ($80),y
        lda     $9F
        sec
        sbc     #$01
        dey
        sta     ($80),y
        lda     $9D
        cmp     #$02
        bne     LE400
        dec     a
        dey
        sta     ($80),y
        lda     $9F
        sec
        sbc     #$02
        bra     LE405
LE3CC:  lda     $A1
        cmp     #$02
        beq     LE3E8
        ldx     #$00
        lda     $A0
        sec
        sbc     #$01
        bcs     LE3DC
        dex
LE3DC:  cpx     #$00
        bne     LE3E4
        cmp     $A1
        beq     LE3E8
LE3E4:  lda     #$00
        bra     LE40A
LE3E8:  lda     $9D
        cmp     #$02
        beq     LE3F2
        lda     #$00
        bra     LE40A
LE3F2:  lda     #$00
        ldy     #$05
        sta     ($80),y
        lda     $9F
        sec
        .byte   $E9
LE3FC:  ora     ($88,x)
        sta     ($80),y
LE400:  lda     #$FF
        dey
        sta     ($80),y
LE405:  dey
        sta     ($80),y
        lda     #$01
LE40A:  ldy     #$01
        sta     ($80),y
LE40E:  ldy     #$01
        lda     ($80),y
        cmp     #$01
        bne     LE437
        ldy     #$05
        lda     ($80),y
        cmp     $A3
        beq     LE433
        dey
        lda     ($80),y
        cmp     $A3
        beq     LE433
        dey
        lda     ($80),y
        cmp     $A3
        beq     LE433
        dey
        lda     ($80),y
        cmp     $A3
        bne     LE437
LE433:  lda     #$01
        bra     LE439
LE437:  lda     #$00
LE439:  sta     ($80)
        lda     ($80)
        bne     LE453
        lda     $9E
        and     #$80
        beq     LE449
        ldy     #$12
        bra     LE44B
LE449:  ldy     #$11
LE44B:  lda     ($80),y
        cmp     #$40
        beq     LE453
        sta     ($A6)
LE453:  lda     $A6
        ldx     $A7
        inc     a
        bne     LE45B
        inx
LE45B:  sta     $A6
        stx     $A7
        lda     $9E
        asl     a
        sta     $9E
        inc     $A3
        lda     $9F
        cmp     $A3
        bne     LE48A
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
        bra     LE496
LE48A:  lda     $A2
        cmp     #$07
        bne     LE494
        stz     $A2
        bra     LE496
LE494:  inc     $A2
LE496:  lda     $A1
        beq     LE49D
        jmp     LE37E

LE49D:  tax
        pha
        ldy     #$06
LE4A1:  lda     ($80),y
        sta     $97,y
        iny
        cpy     #$11
        bne     LE4A1
        pla
        ldy     #$16
        jmp     LF288

LE4B1:  jsr     LF457
        lda     $A6
        ldx     $A7
        jsr     LF457
        ldy     #$07
        jsr     LF46F
        ldy     #$05
        lda     ($80),y
        tax
        dey
        lda     ($80),y
        jsr     LC40F
        sta     $A6
        stx     $A7
        lda     $A4
        ldx     $A5
        jsr     LF457
        ldy     #$09
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
        lda     $A2
        jsr     LF441
        lda     $A1
        jsr     LF441
        lda     $A0
        jsr     LF441
        lda     $9F
        jsr     LF441
        lda     ($A4)
        sta     $9F
        ldy     #$01
        lda     ($A4),y
        sta     $A0
        lda     #$02
        clc
        adc     $A4
        sta     $A4
        bcc     LE5A0
        inc     $A5
        bra     LE5A0
LE528:  lda     $A4
        ldx     $A5
        sta     $84
        stx     $85
        inc     a
        bne     LE534
        inx
LE534:  sta     $A4
        stx     $A5
        ldy     #$00
        lda     ($84)
        sta     $A3
        lda     $A3
        bne     LE55A
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
        bra     LE5A0
LE55A:  lda     $A4
        ldx     $A5
        sta     $84
        stx     $85
        inc     a
        bne     LE566
        inx
LE566:  sta     $A4
        stx     $A5
        lda     ($84)
        sta     $A2
        cmp     #$40
        bne     LE580
        lda     $A3
        clc
        adc     $A6
        sta     $A6
        tya
        adc     $A7
        sta     $A7
        bra     LE5A0
LE580:  stz     $A1
LE582:  lda     $A1
        cmp     $A3
        bcs     LE5A0
        lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        inc     a
        bne     LE594
        inx
LE594:  sta     $A6
        stx     $A7
        lda     $A2
        sta     ($84),y
        inc     $A1
        bra     LE582
LE5A0:  lda     $A0
        bne     LE528
        tax
        pha
        tay
LE5A7:  lda     ($80),y
        sta     $9F,y
        iny
        cpy     #$09
        bne     LE5A7
        pla
        ldy     #$0F
        jmp     LF288

LE5B7:  jsr     LF441
        lda     #$64
        jsr     LF441
        jsr     LF2F1
        lda     #$00
        jsr     LF441
        jsr     LF441
        ldy     #$0A
        lda     ($80),y
        jsr     LF441
        bra     LE63A
LE5D3:  lda     ($80),y
        ldy     #$0C
        eor     #$FF
        sec
        adc     ($80),y
        sta     ($80),y
        ldy     #$01
        lda     ($80),y
        inc     a
        sta     ($80),y
LE5E5:  ldy     #$0C
        ldx     #$00
        lda     ($80),y
        ldy     #$07
        cmp     ($80),y
        bcs     LE5D3
        ldy     #$01
        lda     ($80),y
        bne     LE5FC
        iny
        lda     ($80),y
        beq     LE626
LE5FC:  ldy     #$02
        lda     ($80),y
        pha
        inc     a
        sta     ($80),y
        pla
        clc
        adc     #$03
        bcc     LE60C
        inx
        clc
LE60C:  adc     $80
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
LE626:  ldy     #$01
        sta     ($80),y
        ldy     #$07
        lda     ($80),y
        jsr     LF455
        lda     #$0A
        jsr     LF4E7
        ldy     #$07
        sta     ($80),y
LE63A:  ldy     #$07
        lda     ($80),y
        bne     LE5E5
        ldy     #$02
        lda     ($80),y
        bne     LE669
        tax
        lda     ($80),y
        pha
        inc     a
        sta     ($80),y
        pla
        clc
        adc     #$03
        bcc     LE655
        inx
        clc
LE655:  adc     $80
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
LE669:  lda     $80
        ldx     $81
        clc
        adc     #$03
        bcc     LE673
        inx
LE673:  ldy     #$02
        sta     $88
        stx     $89
        lda     ($80),y
        tay
        lda     #$00
        sta     ($88),y
        jsr     LF2FE
        lda     $80
        ldx     $81
        clc
        adc     #$08
        bcc     LE68D
        inx
LE68D:  ldy     #$03
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
        jsr     LDF7D
        ldx     #$00
        lda     ($80)
        ldy     #$0D
        jmp     LF288

LE6BA:  jsr     LF2E4
        jsr     LE832
        jsr     LAE96
        jsr     LA82A
        jsr     LA9DF
        jsr     LA6DA
        jsr     LA504
        jsr     LAE23
        jsr     LC193
        jsr     LC038
        jsr     LC5F1
        jsr     LE800
        jsr     LCA7E
        jsr     LD291
LE6E4:  ldy     #$01
        lda     ($80),y
        jsr     LF455
        lda     LF577
        sta     $89
        lda     LF576
        sta     $88
        lda     ($88)
        jsr     LF325
        beq     LE717
        lda     LF577
        sta     $89
        lda     LF576
        sta     $88
        lda     ($88)
        ldy     #$01
        sta     ($80),y
        lda     LFE10
        ora     LFE11
        bne     LE717
        jsr     LE860
LE717:  lda     LF573
        sta     $89
        lda     LF572
        sta     $88
        lda     ($88)
        ldy     #$02
        sta     ($80),y
        lda     ($80),y
        beq     LE6E4
        jsr     LC023
        lda     LFE10
        ora     LFE11
        bne     LE73F
        ldy     #$02
        lda     ($80),y
        jsr     L99C2
        bra     LE746
LE73F:  ldy     #$02
        lda     ($80),y
        jsr     L9DAC
LE746:  sta     ($80)
        jsr     LC038
        lda     ($80)
        and     #$01
        beq     LE754
        jsr     LD88F
LE754:  lda     ($80)
        and     #$04
        beq     LE75D
        jsr     LEC31
LE75D:  lda     ($80)
        and     #$02
        beq     LE766
        jsr     LD654
LE766:  lda     ($80)
        and     #$08
        beq     LE76F
        jsr     LCA7E
LE76F:  lda     ($80)
        and     #$10
        beq     LE778
        jsr     LD291
LE778:  lda     ($80)
        and     #$20
        beq     LE781
        jsr     LDA53
LE781:  lda     ($80)
        and     #$40
        beq     LE78A
        jsr     LEE63
LE78A:  lda     ($80)
        and     #$80
        bne     LE793
        jmp     LE6E4

LE793:  jsr     LDCDE
        jmp     LE6E4

LE799:  lda     LFE12
        ldx     LFE13
        jsr     LF2A3
        jsr     LF295
        eor     LFE12
        pha
        txa
        eor     LFE13
        tax
        pla
        sta     LFE12
        stx     LFE13
        sta     $88
        stx     $89
        lda     LFE13
        lsr     a
        eor     $88
        pha
        lda     #$00
        eor     $89
        tax
        pla
        sta     LFE12
        stx     LFE13
        sta     $88
        stx     $89
        lda     #$00
        eor     $88
        pha
        lda     LFE12
        eor     $89
        tax
        pla
        sta     LFE12
        stx     LFE13
        rts

LE7E3:  jsr     LE799
        and     #$01
        ldx     #$00
        rts

LE7EB:  jsr     LF441
        jsr     LE799
        jsr     LF457
        ldy     #$02
        lda     ($80),y
        jsr     LF536
        ldx     #$00
        jmp     LF353

LE800:  stz     $0202
        stz     $0203
        lda     #$01
        sta     $0204
        sta     $0205
        stz     $0228
        lda     $0209
        sta     $0207
        lda     $0208
        sta     $0206
        lda     $020D
        sta     $020C
        lda     #$04
        sta     $0223
        sta     $0224
        jsr     LEC31
        ldx     #$00
        txa
        rts

LE832:  lda     LF56B
        sta     $89
        lda     LF56A
        sta     $88
        lda     #$00
        sta     ($88)
        lda     LF56D
        sta     $89
        lda     LF56C
        sta     $88
        lda     #$04
        sta     ($88)
        lda     LF56F
        sta     $89
        lda     LF56E
        sta     $88
        lda     #$02
        sta     ($88)
        ldx     #$00
        txa
        rts

LE860:  lda     #$00
        jsr     LF441
        lda     $0206
        jsr     LF441
        lda     $020C
        jsr     LF441
        jsr     LF2CE
        lda     $0216
        clc
        adc     $0206
        sta     $0206
        lda     #$00
        adc     $0207
        sta     $0207
        lda     $0214
        clc
        adc     $020C
        sta     $020C
        lda     $0228
        bne     LE898
        jmp     LEBDC

LE898:  lda     $0225
        cmp     #$03
        beq     LE8A2
        jmp     LEA14

LE8A2:  lda     $020C
        cmp     $021A
        bcs     LE8AD
        jmp     LEBDC

LE8AD:  lda     $0250
        beq     LE8BB
        lda     #$05
        jsr     LE7EB
        cmp     #$00
        beq     LE8C7
LE8BB:  lda     $021A
        eor     #$FF
        sec
        adc     $020C
        sta     $020C
LE8C7:  lda     $0229
        ldx     $022A
        inc     a
        bne     LE8D1
        inx
LE8D1:  sta     $0229
        stx     $022A
        lda     #$01
        ldy     #$03
        sta     ($80),y
        lda     $022B
        ldx     $022C
        cpx     $022A
        beq     LE8EB
        jmp     LEBDC

LE8EB:  cmp     $0229
        beq     LE8F3
        jmp     LEBDC

LE8F3:  ldx     #$00
        lda     $0226
        jsr     LF295
        clc
        adc     #$50
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
        bne     LE91A
        cmp     #$00
        bne     LE91C
        inc     $021F
        bra     LE966
LE91A:  ldx     #$00
LE91C:  lda     $0226
        jsr     LF295
        clc
        adc     #$50
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
        bne     LE940
        cmp     #$01
        bne     LE942
        inc     $0220
        bra     LE966
LE940:  ldx     #$00
LE942:  lda     $0226
        jsr     LF295
        clc
        adc     #$50
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
        bne     LE964
        cmp     #$02
        bne     LE966
        inc     $0221
LE964:  ldx     #$00
LE966:  lda     $0254
        cmp     #$01
        bne     LE9E2
        lda     $0226
        jsr     LF295
        clc
        adc     #$50
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
        bne     LE991
        cmp     #$00
        bne     LE993
        inc     $021F
        bra     LE9DB
LE991:  ldx     #$00
LE993:  lda     $0226
        jsr     LF295
        clc
        adc     #$50
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
        bne     LE9B7
        cmp     #$01
        bne     LE9B9
        inc     $0220
        bra     LE9DB
LE9B7:  ldx     #$00
LE9B9:  lda     $0226
        jsr     LF295
        clc
        adc     #$50
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
        bne     LE9DB
        cmp     #$02
        bne     LE9DB
        inc     $0221
LE9DB:  lda     #$02
        jsr     LC10A
        ldx     #$00
LE9E2:  lda     $0226
        jsr     LF295
        clc
        adc     #$50
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
        jsr     LC10A
        lda     #$04
        sta     $0225
        stz     $0228
        jsr     LCA7E
        lda     #$01
        ldy     #$03
        sta     ($80),y
        jmp     LEBDC

LEA14:  lda     $0225
        beq     LEA1C
        jmp     LEACD

LEA1C:  lda     $020C
        cmp     $021B
        bcs     LEA27
        jmp     LEBDC

LEA27:  lda     $021B
        eor     #$FF
        sec
        adc     $020C
        sta     $020C
        lda     $0229
        ldx     $022A
        inc     a
        bne     LEA3D
        inx
LEA3D:  sta     $0229
        stx     $022A
        lda     #$01
        ldy     #$03
        sta     ($80),y
        lda     $022B
        ldx     $022C
        cpx     $022A
        beq     LEA57
        jmp     LEBDC

LEA57:  cmp     $0229
        beq     LEA5F
        jmp     LEBDC

LEA5F:  lda     $0227
        jsr     LF455
        lda     #$28
        jsr     LF3BA
        clc
        adc     #$90
        tay
        txa
        adc     #$04
        tax
        tya
        clc
        adc     $0226
        bcc     LEA7A
        inx
LEA7A:  sta     $88
        stx     $89
        lda     #$00
        sta     ($88)
        inc     a
        jsr     LC10A
        lda     #$04
        sta     $0225
        stz     $0228
        lda     $0253
        cmp     #$01
        bne     LEAC1
        lda     #$04
        jsr     LE7EB
        cmp     #$00
        bne     LEAC1
        lda     #$03
        jsr     LE7EB
        sta     ($80)
        lda     ($80)
        bne     LEAAE
        inc     $0220
        bra     LEABC
LEAAE:  lda     ($80)
        cmp     #$01
        bne     LEAB9
        inc     $021F
        bra     LEABC
LEAB9:  inc     $0221
LEABC:  lda     #$02
        jsr     LC10A
LEAC1:  jsr     LCA7E
        lda     #$01
        ldy     #$03
        sta     ($80),y
        jmp     LEBDC

LEACD:  lda     $0225
        cmp     #$01
        beq     LEAD7
        jmp     LEBDC

LEAD7:  lda     $020C
        cmp     $0219
        bcs     LEAE2
        jmp     LEBC8

LEAE2:  lda     $0219
        eor     #$FF
        sec
        adc     $020C
        sta     $020C
        lda     $0258
        cmp     #$01
        bne     LEB04
        lda     #$14
        jsr     LE7EB
        cmp     #$00
        bne     LEB04
        stz     $0229
        stz     $022A
LEB04:  lda     $0229
        ora     $022A
        beq     LEB4E
        lda     $020F
        eor     #$FF
        sec
        adc     $0229
        sta     $0229
        lda     #$FF
        adc     $022A
        sta     $022A
        lda     #$64
        jsr     LE7EB
        cmp     $0215
        txa
        sbc     #$00
        bcs     LEB4E
        lda     $0256
        cmp     #$01
        bne     LEB39
        lda     $020F
        bra     LEB3D
LEB39:  lda     $020F
        lsr     a
LEB3D:  eor     #$FF
        sec
        adc     $0229
        sta     $0229
        lda     #$FF
        adc     $022A
        sta     $022A
LEB4E:  lda     $0229
        cmp     #$01
        lda     $022A
        sbc     #$00
        bvc     LEB5C
        eor     #$80
LEB5C:  bpl     LEBC2
        ldx     #$00
        lda     $0226
        jsr     LF419
        clc
        adc     #$60
        sta     $88
        txa
        adc     #$02
        sta     $89
        lda     #$00
        ldy     #$04
        sta     ($88),y
        iny
        sta     ($88),y
        lda     $0257
        cmp     #$01
        bne     LEB84
        lda     #$0B
        bra     LEB86
LEB84:  lda     #$0A
LEB86:  jsr     LC10A
        lda     #$04
        sta     $0225
        stz     $0228
        lda     $0251
        cmp     #$01
        bne     LEBBF
        lda     #$0A
        jsr     LE7EB
        cmp     #$00
        bne     LEBBF
        lda     #$03
        jsr     LE7EB
        sta     ($80)
        lda     ($80)
        bne     LEBB1
        inc     $021F
        bra     LEBBF
LEBB1:  lda     ($80)
        cmp     #$01
        bne     LEBBC
        inc     $0220
        bra     LEBBF
LEBBC:  inc     $0221
LEBBF:  jsr     LCA7E
LEBC2:  lda     #$01
        ldy     #$03
        sta     ($80),y
LEBC8:  jsr     LE7E3
        tax
        beq     LEBDC
        lda     $0206
        sec
        sbc     #$02
        sta     $0206
        bcs     LEBDC
        dec     $0207
LEBDC:  lda     $020C
        sec
        sbc     $020D
        bcc     LEBED
        beq     LEBED
        lda     $020D
        sta     $020C
LEBED:  ldy     #$01
        lda     ($80),y
        cmp     $020C
        beq     LEBFB
        tya
        ldy     #$03
        sta     ($80),y
LEBFB:  jsr     LC50B
        ldx     #$00
        ldy     #$02
        lda     ($80),y
        cpx     $0207
        bne     LEC0E
        cmp     $0206
        beq     LEC13
LEC0E:  lda     #$01
        iny
        sta     ($80),y
LEC13:  jsr     LF1BD
        cmp     #$01
        bne     LEC1E
        ldy     #$03
        sta     ($80),y
LEC1E:  ldy     #$03
        ldx     #$00
        lda     ($80),y
        cmp     #$01
        bne     LEC2D
        jsr     LD291
        ldx     #$00
LEC2D:  txa
        jmp     LF375

LEC31:  lda     $0202
        clc
        adc     $0204
        jsr     LF441
        lda     $0203
        clc
        adc     $0205
        jsr     LF441
        lda     #$04
        sta     $0225
        lda     $0224
        cmp     #$01
        bne     LEC62
        lda     $0205
        bne     LEC5A
        tax
        jmp     LF362

LEC5A:  ldy     #$00
        lda     ($80)
        pha
        dec     a
        bra     LECA6
LEC62:  lda     $0224
        cmp     #$02
        bne     LEC77
        lda     $0205
        cmp     #$03
        bne     LEC73
        jmp     LED63

LEC73:  ldy     #$00
        bra     LECA2
LEC77:  lda     $0224
        cmp     #$03
        bne     LEC8F
        lda     $0204
        bne     LEC87
        tax
        jmp     LF362

LEC87:  ldy     #$01
        lda     ($80),y
        pha
        dec     a
        bra     LECA6
LEC8F:  lda     $0224
        cmp     #$04
        bne     LECA9
        lda     $0205
        cmp     #$04
        bne     LECA0
        jmp     LED63

LECA0:  ldy     #$01
LECA2:  lda     ($80),y
        pha
        inc     a
LECA6:  sta     ($80),y
        pla
LECA9:  ldy     #$01
        lda     ($80),y
        sta     $0226
        lda     ($80)
        sta     $0227
        lda     ($80)
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
        cmp     #$04
        bne     LECDD
        ldx     #$00
        txa
        stz     $0225
        jmp     LF362

LECDD:  lda     ($80)
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
        cmp     #$06
        bne     LED05
        ldx     #$00
        lda     #$02
        sta     $0225
        bra     LED65
LED05:  ldy     #$01
        lda     ($80),y
        jsr     LF441
        ldy     #$01
        lda     ($80),y
        jsr     LC4A4
        cmp     #$01
        bne     LED2E
        sta     $0225
        lda     ($80)
        jsr     LF455
        lda     #$28
        jsr     LF3BA
        clc
        adc     #$B0
        sta     $88
        txa
        adc     #$07
        bra     LED57
LED2E:  ldy     #$01
        lda     ($80),y
        jsr     LF441
        ldy     #$01
        lda     ($80),y
        jsr     LC43D
        cmp     #$01
        bne     LED63
        lda     #$03
        sta     $0225
        lda     ($80)
        jsr     LF455
        lda     #$28
        jsr     LF3BA
        clc
        adc     #$D0
        sta     $88
        txa
        adc     #$0A
LED57:  sta     $89
        ldy     #$01
        lda     ($80),y
        tay
        lda     ($88),y
        sta     $0226
LED63:  ldx     #$00
LED65:  txa
        jmp     LF362

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
        lda     $A2
        jsr     LF441
        jsr     LF2D7
        lda     ($A4)
        lsr     a
        lsr     a
        lsr     a
        sta     $A3
        lda     ($A4)
        jsr     LF455
        lda     $A3
        jsr     LF295
        jsr     LF4C7
        cpx     #$00
        bne     LEDE7
        cmp     #$00
        beq     LEDE9
LEDE7:  inc     $A3
LEDE9:  ldy     #$01
        lda     ($A4),y
        sta     $A2
        lda     #$00
        sta     ($80)
        ldy     #$01
        sta     ($80),y
LEDF7:  jsr     LF46D
        lda     $A3
        jsr     LF455
        lda     $A2
        jsr     LF3BA
        clc
        adc     #$03
        bcc     LEE0A
        inx
LEE0A:  jsr     LF327
        bcs     LEE4D
        lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        inc     a
        bne     LEE1B
        inx
LEE1B:  sta     $A6
        stx     $A7
        lda     $84
        ldx     $85
        jsr     LF457
        lda     $A4
        ldx     $A5
        sta     $84
        stx     $85
        inc     a
        bne     LEE32
        inx
LEE32:  sta     $A4
        stx     $A5
        ldy     #$00
        lda     ($84)
        jsr     LF489
        ldy     #$01
        lda     ($80),y
        tax
        lda     ($80)
        inc     a
        bne     LEE48
        inx
LEE48:  jsr     LF49F
        bra     LEDF7
LEE4D:  ldx     #$00
        txa
        pha
        ldy     #$02
LEE53:  lda     ($80),y
        sta     $A0,y
        iny
        cpy     #$08
        bne     LEE53
        pla
        ldy     #$0C
        jmp     LF288

LEE63:  jsr     LF2E4
        ldy     #$02
LEE68:  lda     LFDFC,y
        sta     ($80),y
        dey
        bpl     LEE68
        jsr     LF2E4
        ldy     #$02
LEE75:  lda     LFDFF,y
        sta     ($80),y
        dey
        bpl     LEE75
        jsr     LF2E4
        ldy     #$02
LEE82:  lda     LFE02,y
        sta     ($80),y
        dey
        bpl     LEE82
        jsr     LF2E4
        ldy     #$02
LEE8F:  lda     LFE05,y
        sta     ($80),y
        dey
        bpl     LEE8F
        jsr     LF2D7
        lda     #$4C
        jsr     LF441
        jsr     LF2FE
        ldy     #$01
LEEA4:  lda     LFE08,y
        sta     ($80),y
        dey
        bpl     LEEA4
        jsr     LF2F1
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
        jsr     LDC59
        lda     #$00
        ldy     #$07
        sta     ($80),y
        tax
LEECF:  lda     ($80),y
        cmp     #$03
        bcc     LEED8
        jmp     LF0BD

LEED8:  jsr     LF2F1
        lda     #$09
        ldy     #$03
        sta     ($80),y
        lda     $80
        ldx     $81
        clc
        adc     #$0F
        bcc     LEEEB
        inx
LEEEB:  ldy     #$0B
        clc
        adc     ($80),y
        bcc     LEEF3
        inx
LEEF3:  sta     $88
        stx     $89
        lda     ($88)
        ldy     #$02
        sta     ($80),y
        lda     #$8C
LEEFF:  dey
        sta     ($80),y
        lda     #$1E
        sta     ($80)
        lda     $80
        ldx     $81
        clc
        adc     #$0C
        bcc     LEF10
        inx
LEF10:  ldy     #$0B
        clc
        adc     ($80),y
        bcc     LEF18
        inx
LEF18:  sta     $88
        stx     $89
        lda     ($88)
        jsr     LDC59
        lda     #$00
        ldy     #$06
LEF25:  sta     ($80),y
        cmp     #$05
        bcc     LEF2E
        jmp     LF0B2

LEF2E:  iny
        ldx     #$00
        lda     ($80),y
        jsr     LF405
        sta     $88
        stx     $89
        dey
        lda     ($80),y
        clc
        adc     $88
        ldx     $89
        bcc     LEF45
        inx
LEF45:  sta     $88
        txa
        clc
        adc     #$02
        sta     $89
        ldy     #$50
        lda     ($88),y
        cmp     #$01
        bne     LEFBA
        jsr     LF2F1
        ldy     #$09
        lda     ($80),y
        ldy     #$03
        sta     ($80),y
        ldy     #$0A
        lda     ($80),y
        jsr     LF455
        lda     #$1C
        jsr     LF3BA
        clc
        adc     #$0B
        ldy     #$02
        sta     ($80),y
        ldy     #$0B
        lda     ($80),y
        jsr     LF455
        lda     #$1E
        jsr     LF3BA
        clc
        adc     #$20
        ldy     #$01
        sta     ($80),y
        lda     $80
        ldx     $81
        clc
        adc     #$15
        bcc     LEF90
        inx
LEF90:  ldy     #$0B
        clc
        adc     ($80),y
        bcc     LEF98
        inx
LEF98:  sta     $88
        stx     $89
        lda     ($88)
        sta     ($80)
        lda     $80
        ldx     $81
        clc
        adc     #$12
        bcc     LEFAA
        inx
LEFAA:  ldy     #$0B
        clc
        adc     ($80),y
        bcc     LEFB2
        inx
LEFB2:  sta     $88
        stx     $89
        lda     ($88)
        bra     LEFF1
LEFBA:  jsr     LF2F1
        ldy     #$09
        lda     ($80),y
        ldy     #$03
        sta     ($80),y
        ldy     #$0A
        lda     ($80),y
        jsr     LF455
        lda     #$1C
        jsr     LF3BA
        clc
        adc     #$0B
        ldy     #$02
        sta     ($80),y
        ldy     #$0B
        lda     ($80),y
        jsr     LF455
        lda     #$1E
        jsr     LF3BA
        clc
        adc     #$20
        ldy     #$01
        sta     ($80),y
        lda     #$15
        sta     ($80)
        lda     #$2A
LEFF1:  jsr     LE2EB
        ldy     #$06
        lda     ($80),y
        cmp     LFE0C
        beq     LF000
        jmp     LF0A4

LF000:  iny
        lda     ($80),y
        cmp     LFE0D
        beq     LF00B
        jmp     LF0A4

LF00B:  jsr     LF2F1
        lda     #$44
        ldy     #$02
        sta     ($80),y
        iny
        lda     #$00
        sta     ($80),y
        ldy     #$0A
        lda     ($80),y
        jsr     LF455
        lda     #$1C
        jsr     LF3BA
        clc
        adc     #$0B
        bcc     LF02B
        inx
LF02B:  sta     ($80)
        ldy     #$01
        txa
        sta     ($80),y
        ldy     #$0B
        lda     ($80),y
        jsr     LF455
        lda     #$1E
        jsr     LF3BA
        clc
        adc     #$20
        bcc     LF044
        inx
LF044:  jsr     LE20D
        ldy     #$07
        ldx     #$00
        lda     ($80),y
        jsr     LF405
        sta     $88
        dey
        lda     ($80),y
        clc
        adc     $88
        ldy     #$02
        sta     ($80),y
        tay
        lda     $0250,y
        bne     LF0A4
        lda     LFE0C
        beq     LF083
        ldy     #$02
        ldx     #$00
        lda     ($80),y
        sec
        sbc     #$01
        bcs     LF073
        dex
LF073:  sta     $88
        txa
        clc
        adc     #$02
        sta     $89
        ldy     #$50
        lda     ($88),y
        cmp     #$01
        bne     LF0A4
LF083:  jsr     LF2FE
        lda     #$55
        ldy     #$03
        sta     ($80),y
        iny
        lda     #$FD
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
        jsr     LDF7D
LF0A4:  ldy     #$05
        lda     ($80),y
        inc     a
        sta     ($80),y
        iny
        lda     ($80),y
        inc     a
        jmp     LEF25

LF0B2:  iny
        ldx     #$00
        lda     ($80),y
        inc     a
        sta     ($80),y
        jmp     LEECF

LF0BD:  lda     LFE0D
        jsr     LF405
        clc
        adc     LFE0C
        bcc     LF0CA
        inx
LF0CA:  stx     $90
        asl     a
        rol     $90
        clc
        adc     #$75
        sta     $88
        lda     $90
        adc     #$F8
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        ldy     #$03
        jsr     LF4A1
        lda     #$00
        ldy     #$07
        bra     LF0F3
LF0EC:  ldy     #$07
        clc
        lda     #$06
        adc     ($80),y
LF0F3:  sta     ($80),y
        ldy     #$04
        lda     ($80),y
        tax
        dey
        lda     ($80),y
        sta     $84
        stx     $85
        inc     a
        bne     LF105
        inx
LF105:  jsr     LF4A1
        lda     ($84)
        bne     LF0EC
        jsr     LF2FE
        ldx     #$00
        lda     LFE0D
        jsr     LF405
        clc
        adc     LFE0C
        bcc     LF11E
        inx
LF11E:  stx     $90
        asl     a
        rol     $90
        clc
        adc     #$75
        sta     $88
        lda     $90
        adc     #$F8
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
        bcc     LF15F
        inx
LF15F:  ldy     LFE0D
        sta     $88
        stx     $89
        lda     ($88),y
        jsr     LDF7D
        jsr     LF30B
        ldx     #$00
        lda     LFE0D
        jsr     LF405
        clc
        adc     LFE0C
        bcc     LF17D
        inx
LF17D:  stx     $90
        asl     a
        rol     $90
        clc
        adc     #$93
        sta     $88
        lda     $90
        adc     #$F8
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
        jsr     LE162
        ldx     #$00
        txa
        ldy     #$14
        jmp     LF288

LF1BD:  ldx     #$00
        lda     $0203
        clc
        adc     $0205
        bcc     LF1C9
        inx
LF1C9:  jsr     LF457
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
        bcc     LF1E8
        inx
        clc
LF1E8:  adc     $88
        sta     $88
        txa
        adc     $89
        sta     $89
        ldx     #$00
        lda     ($88)
        cmp     #$05
        bne     LF218
        lda     $0217
        eor     #$FF
        sec
        adc     $0206
        sta     $0206
        lda     $0218
        eor     #$FF
        adc     $0207
        sta     $0207
        jsr     LC50B
        ldx     #$00
        lda     #$01
        rts

LF218:  lda     $0203
        clc
        adc     $0205
        bcc     LF222
        inx
LF222:  jsr     LF457
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
        bcc     LF241
        inx
        clc
LF241:  adc     $88
        sta     $88
        txa
        adc     $89
        sta     $89
        ldx     #$00
        lda     ($88)
        cmp     #$06
        bne     LF269
        jsr     LC04D
        jsr     LA9DF
        jsr     LA6DA
        jsr     LA504
        jsr     LC057
        jsr     LE800
        ldx     #$00
        lda     #$01
        rts

LF269:  txa
        rts

        ldx     #$00
LF26D:  clc
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
        bcc     LF284
        inc     $81
LF284:  lda     $90
        rts

LF287:  iny
LF288:  pha
        clc
        tya
        adc     $80
        sta     $80
        bcc     LF293
        inc     $81
LF293:  pla
        rts

LF295:  stx     $90
        asl     a
        rol     $90
        asl     a
        rol     $90
        asl     a
        rol     $90
        ldx     $90
        rts

LF2A3:  stx     $90
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
        bne     LF2BE
        tax
        bne     LF2BE
        lda     #$01
        rts

LF2BE:  ldx     #$00
        txa
        rts

LF2C2:  ldy     #$00
        beq     LF2CD
        lda     #$0A
        ldx     #$FE
        jmp     LFE14

LF2CD:  rts

LF2CE:  ldy     $80
        bne     LF2D4
        dec     $81
LF2D4:  dec     $80
        rts

LF2D7:  lda     $80
        sec
        sbc     #$02
        sta     $80
        bcc     LF2E1
        rts

LF2E1:  dec     $81
        rts

LF2E4:  lda     $80
        sec
        sbc     #$03
        sta     $80
        bcc     LF2EE
        rts

LF2EE:  dec     $81
        rts

LF2F1:  lda     $80
        sec
        sbc     #$04
        sta     $80
        bcc     LF2FB
        rts

LF2FB:  dec     $81
        rts

LF2FE:  lda     $80
        sec
        sbc     #$05
        sta     $80
        bcc     LF308
        rts

LF308:  dec     $81
        rts

LF30B:  lda     $80
        sec
        sbc     #$06
        sta     $80
        bcc     LF315
        rts

LF315:  dec     $81
        rts

LF318:  lda     $80
        sec
        sbc     #$07
        sta     $80
        bcc     LF322
        rts

LF322:  dec     $81
        rts

LF325:  ldx     #$00
LF327:  sta     $82
        stx     $83
        ldy     #$00
        lda     ($80),y
        tax
        inc     $80
        bne     LF336
        inc     $81
LF336:  lda     ($80),y
        inc     $80
        bne     LF33E
        inc     $81
LF33E:  sec
        sbc     $83
        bne     LF34C
        cpx     $82
        beq     LF34B
        adc     #$FF
        ora     #$01
LF34B:  rts

LF34C:  bvc     LF34B
        eor     #$FF
        ora     #$01
        rts

LF353:  inc     $80
        bne     LF359
        inc     $81
LF359:  rts

        ldy     #$01
        lda     ($80),y
        tax
        dey
        lda     ($80),y
LF362:  inc     $80
        beq     LF36B
        inc     $80
        beq     LF36D
        rts

LF36B:  inc     $80
LF36D:  inc     $81
        rts

LF370:  ldy     #$03
        jmp     LF288

LF375:  ldy     #$04
        jmp     LF288

LF37A:  ldy     #$05
        jmp     LF288

LF37F:  ldy     #$06
        jmp     LF288

LF384:  ldy     #$07
        jmp     LF288

LF389:  ldy     #$08
        jmp     LF288

        bne     LF396
LF390:  ldx     #$00
        txa
        rts

LF394:  bne     LF390
LF396:  ldx     #$00
        lda     #$01
        rts

        beq     LF396
        bmi     LF396
        ldx     #$00
        txa
        rts

        beq     LF3A7
        bpl     LF396
LF3A7:  ldx     #$00
        txa
        rts

        beq     LF396
        bcc     LF396
        ldx     #$00
        txa
        rts

        beq     LF390
        ldx     #$00
        txa
        rol     a
        rts

LF3BA:  sta     $8E
        jsr     LF42F
        tya
        ldy     #$08
        ldx     $89
        beq     LF3E3
        sta     $8F
        lsr     $8E
LF3CA:  bcc     LF3D7
        clc
        adc     $88
        tax
        lda     $89
        adc     $8F
        sta     $8F
        txa
LF3D7:  ror     $8F
        ror     a
        ror     $8E
        dey
        bne     LF3CA
        tax
        lda     $8E
        rts

LF3E3:  lsr     $8E
LF3E5:  bcc     LF3EA
        clc
        adc     $88
LF3EA:  ror     a
        ror     $8E
        dey
        bne     LF3E5
        tax
        lda     $8E
        rts

LF3F4:  sta     $88
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

LF405:  sta     $88
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

LF419:  sta     $88
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

LF42F:  ldy     #$01
        lda     ($80),y
        sta     $89
        dey
        lda     ($80),y
        sta     $88
        jmp     LF362

        ldy     #$00
        lda     ($80),y
LF441:  ldy     $80
        beq     LF44C
        dec     $80
        ldy     #$00
        sta     ($80),y
        rts

LF44C:  dec     $81
        dec     $80
        sta     ($80),y
        rts

        lda     #$00
LF455:  ldx     #$00
LF457:  pha
        lda     $80
        sec
        sbc     #$02
        sta     $80
        bcs     LF463
        dec     $81
LF463:  ldy     #$01
        txa
        sta     ($80),y
        pla
        dey
        sta     ($80),y
        rts

LF46D:  ldy     #$03
LF46F:  lda     $80
        sec
        sbc     #$02
        sta     $80
        bcs     LF47A
        dec     $81
LF47A:  lda     ($80),y
        tax
        dey
        lda     ($80),y
        ldy     #$00
        sta     ($80),y
        iny
        txa
        sta     ($80),y
        rts

LF489:  pha
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
        jmp     LF362

LF49F:  ldy     #$00
LF4A1:  sta     ($80),y
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
        jmp     LF362

        ldx     #$00
LF4C7:  sec
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
        jmp     LF287

        tya
        eor     #$FF
        sec
        adc     $80
        sta     $80
        bcs     LF4E6
        dec     $81
LF4E6:  rts

LF4E7:  ldx     #$00
        sta     $8E
        stx     $8F
        jsr     LF42F
        jsr     LF4F8
        lda     $88
        ldx     $89
        rts

LF4F8:  lda     #$00
        sta     $83
        ldy     #$10
        ldx     $8F
        beq     LF521
LF502:  asl     $88
        rol     $89
        rol     a
        rol     $83
        tax
        cmp     $8E
        lda     $83
        sbc     $8F
        bcc     LF51A
        sta     $83
        txa
        sbc     $8E
        tax
        inc     $88
LF51A:  txa
        dey
        bne     LF502
        sta     $82
        rts

LF521:  asl     $88
        rol     $89
        rol     a
        bcs     LF52C
        cmp     $8E
        bcc     LF530
LF52C:  sbc     $8E
        inc     $88
LF530:  dey
        bne     LF521
        sta     $82
        rts

LF536:  ldx     #$00
        sta     $8E
        stx     $8F
        jsr     LF42F
        jsr     LF4F8
        lda     $82
        ldx     $83
        rts

LF547:  lda     #$00
        sta     $88
        lda     #$02
        sta     $89
        lda     #$00
        tay
        ldx     #$33
        beq     LF560
LF556:  sta     ($88),y
        iny
        bne     LF556
        inc     $89
        dex
        bne     LF556
LF560:  cpy     #$92
        beq     LF569
        sta     ($88),y
        iny
        bne     LF560
LF569:  rts

LF56A:  .byte   $E0
LF56B:  .byte   $FF
LF56C:  .byte   $E1
LF56D:  .byte   $FF
LF56E:  .byte   $E2
LF56F:  .byte   $FF
        .byte   $E3
LF571:  .byte   $FF
LF572:  .byte   $E4
LF573:  .byte   $FF
        .byte   $E5
LF575:  .byte   $FF
LF576:  .byte   $E6
LF577:  .byte   $FF
LF578:  .byte   $E7
LF579:  .byte   $FF
LF57A:  inx
LF57B:  .byte   $FF
LF57C:  .byte   $E9
LF57D:  .byte   $FF
        nop
LF57F:  bbs7    $EB,$F581
        .byte   $EC
LF583:  bbs7    $ED,$F585
        inc     a:$FF
        .byte   $02
LF58A:  brk
LF58B:  rti

LF58C:  brk
        bra     LF58F
LF58F:  cpy     #$F0
        ora     $0DFB
        ora     $0E
        bpl     LF5A6
        inc     a
        asl     $0E24
        bbr2    $0E,LF5D7
        asl     $0E42
        eor     $560E
        .byte   $0E
LF5A6:  adc     ($0E,x)
        .byte   $6B
        asl     $0E76
        sta     ($0E,x)
        bit     #$0E
        .byte   $93
        asl     $0E9B
        lda     ($0E,x)
        tay
        asl     $0EB2
        lda     LC70E,x
        asl     $0ED2
        cmp     a:$0E,x
        brk
        asl     $00
        ora     ($00,x)
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
        .byte   $05
LF5D7:  ora     $05
        brk
        php
        .byte   $02
        .byte   $03
        .byte   $03
        brk
        php
        ora     $0A
        rmb0    $02
        brk
        bbr0    $00,LF5EC
        .byte   $03
        brk
        .byte   $0C
        .byte   $05
LF5EC:  trb     $09
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
        bbr0    $00,LF646
        .byte   $03
        ora     ($0C,x)
        .byte   $02
LF646:  tsb     $0B
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
        bbr0    $02,LF673
        .byte   $03
        .byte   $02
        .byte   $0C
        .byte   $05
LF673:  asl     a:$0C,x
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
        bvc     LF6CC
        stz     $6F,x
        bit     $66
        adc     $6C,x
        jmp     (L2B00)

        and     ($20),y
        pha
        bvc     LF6BA
LF6BA:  eor     ($65)
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
LF6CC:  stz     $6F,x
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
        bvs     LF704
        bvs     LF755
        adc     #$6E
        stz     $00,x
        .byte   $2B
        and     ($20),y
        .byte   $44
        adc     a:$67
        .byte   $A3
        inc     $B4,x
        inc     $BA,x
        inc     $D4,x
        inc     $DC,x
        inc     $EA,x
        inc     $0E,x
        ora     ($00,x)
        brk
        asl     a:$0A
LF704:  ora     ($0E,x)
        ora     ($01,x)
        .byte   $02
        asl     $010A
        .byte   $03
        asl     $0201
        tsb     $0E
        asl     a
        .byte   $02
        ora     $C2
        sbc     $C9,x
        sbc     $D0,x
        sbc     $D9,x
        sbc     $E4,x
        sbc     $EF,x
        sbc     $F6,x
        sbc     $FD,x
        sbc     $06,x
        inc     $11,x
        inc     $1C,x
        inc     $23,x
        inc     $2A,x
        inc     $33,x
        inc     $3E,x
        inc     $49,x
        inc     $50,x
        inc     $57,x
        inc     $60,x
        inc     $6B,x
        inc     $76,x
        inc     $7D,x
        inc     $84,x
        inc     $8D,x
        inc     $98,x
        inc     $FD,x
        inc     $01,x
        smb7    $05
        smb7    $09
        smb7    $0D
        smb7    $11
        smb7    $2B
        .byte   $24
LF755:  jsr     L6142
        stz     $74,x
        brk
        .byte   $2B
        bit     $20
        pha
        bvc     LF761
LF761:  .byte   $2B
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
        bbr6    L0073,LF838
        brk
        and     $3035
        and     $20
        .byte   $43
        bbr6    L0073,LF842
        brk
        .byte   $53
        smb7    $5B
        smb7    $61
        smb7    $68
        smb7    $71
        smb7    $79
        smb7    $82
        smb7    $8B
        smb7    $95
        smb7    $9E
        smb7    $A8
        smb7    $B0
        smb7    $BB
        smb7    $C5
        .byte   $F7
LF7EB:  bmi     LF7F0
        ora     ($17,x)
        .byte   $17
LF7F0:  ora     ($0B,x)
        and     ($32)
        bmi     LF7F9
        .byte   $03
        ora     ($17,x)
LF7F9:  ora     $0A02
        .byte   $02
        bbr0    $02,LF800
LF800:  brk
        brk
        brk
        ora     $02,x
        .byte   $13
        .byte   $02
        brk
        brk
        brk
        brk
        trb     $02
        asl     $02,x
        brk
        brk
        brk
        brk
        brk
        brk
        pha
        bvc     LF852
        jsr     L2020
        bit     $00
        .byte   $42
        adc     ($74,x)
        stz     $3A,x
        jsr     L0024
        .byte   $44
        adc     $3A67
        .byte   $20
LF82A:  jsr     L0024
        .byte   $43
        adc     ($69)
        stz     $3A,x
        jsr     L2524
        brk
        .byte   $4D
        .byte   $69
LF838:  ror     $3A65
        jsr     L7324
        brk
        .byte   $44
        adc     ($69)
LF842:  jmp     (L3A6C)

        bit     L0073
        brk
        jmp     L7661

        adc     ($3A,x)
LF84D:  jsr     L242D
        and     $00
LF852:  .byte   $03
        bmi     LF856
        .byte   $01
LF856:  rmb1    $32
        .byte   $0B
        ora     $F8,x
        ora     $25F8,x
        sed
        and     $36F8
        sed
        bbr3    $F8,LF8AE
        sed
        brk
        brk
        ora     $0F02
        .byte   $02
        ora     $02,x
        ora     ($02),y
        .byte   $12
LF872:  .byte   $02
        .byte   $13
        .byte   $02
        smb6    $0E
        sbc     $0E,x
        .byte   $03
        bbr0    $0F,LF88C
        ora     $2A0F,x
        bbr0    $35,LF892
        bbr3    $0F,LF8D1
        bbr0    $55,LF898
LF889:  .byte   $5B
        .byte   $0F
        .byte   $66
LF88C:  bbr0    L0073,LF89E
LF88F:  bra     LF8A0
        .byte   $8E
LF892:  bbr0    $9B,LF8A4
        smb4    $0F
        .byte   $F4
LF898:  bbr0    $0B,LF8AB
        and     ($10)
        .byte   $47
LF89E:  bpl     LF903
LF8A0:  bpl     LF82A
        bpl     LF84D
LF8A4:  bpl     LF872
        bpl     LF889
        bpl     LF8B6
        .byte   $11
LF8AB:  bbr2    $11,LF8F1
LF8AE:  ora     ($78),y
        ora     ($8D),y
        ora     ($43),y
        ora     ($FD)
LF8B6:  ora     ($B3)
        .byte   $13
        adc     $2314
        ora     $D9,x
        ora     $03,x
        clc
        and     $571A
        trb     $1E59
        .byte   $5B
        jsr     L210D
        bbs1    $21,LF90F
        .byte   $22
        lda     ($22),y
LF8D1:  bbr0    $23,LF8DF
        sty     $BD
        sty     $4F
        sta     $F1
        sta     $61
        stx     $BF
        .byte   $86
LF8DF:  cmp     ($88,x)
        .byte   $C3
        txa
        sbc     $A38C
        sta     $8F41
        .byte   $F3
        bcc     LF88F
        sta     ($65),y
        sta     ($E8)
        .byte   $92
LF8F1:  asl     $6993,x
        .byte   $93
        cpx     $3293
        sty     $0F,x
        sty     $55,x
        sty     $78,x
        sty     $9B,x
        sty     $BE,x
        .byte   $94
LF903:  ora     #$95
        .byte   $54
        sta     $9F,x
LF908:  sta     $EA,x
        sta     $35,x
        stx     $80,y
        .byte   $96
LF90F:  wai
        stx     $16,y
        smb1    $61
        smb1    $AC
        smb1    $F7
        smb1    $42
        tya
        sta     LD898
        tya
        phy
        .byte   $23
        tsb     $9E24
        bit     $40
        and     $B0
        and     $0E
        rol     $10
        plp
LF92D:  ora     ($2A)
        bcs     LF95C
        .byte   $62
        and     $2E12
        .byte   $D4
        rol     $2F57
        sta     LD82F
        bbr2    $5B,LF96F
        ror     $A130,x
        bmi     LF908
        bmi     LF92D
        bmi     LF952
        and     ($2D),y
        and     ($78),y
        and     ($C3),y
        and     ($0E),y
        and     ($59)
LF952:  and     ($A4)
        and     ($EF)
        and     ($3A)
        .byte   $33
        sta     $33
        .byte   $D0
LF95C:  .byte   $33
        .byte   $1B
        bit     $66,x
        bit     $B1,x
        bit     $FC,x
        bit     $47,x
        and     $00,x
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LF96F:  tsb     $04
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
        bbr1    $0A,LF9A3
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
LF9A3:  brk
        brk
        brk
        brk
        tsb     $02
        ora     ($01,x)
        ora     ($02,x)
        tsb     $00
        tsb     $08
        bpl     LF9C3
        bpl     LF9BD
        tsb     $00
        brk
        tsb     $15
        asl     $0415
LF9BD:  brk
        brk
        brk
        tsb     $04
        .byte   $1F
LF9C3:  tsb     $04
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
        bbr1    $00,LF9D5
LF9D5:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     $06
        brk
        brk
        bpl     LF9EA
        tsb     $02
        ora     ($00,x)
        brk
        asl     $1911
LF9EA:  ora     $13,x
        ora     ($0E),y
        brk
        tsb     $06
        tsb     $04
        tsb     $04
        asl     $0E00
        ora     ($10),y
        php
        tsb     $02
        bbr1    $00,LFA1F
        php
        tsb     $08
        bpl     LFA16
        asl     $0800
        tsb     $090A
        bbr1    $08,LFA16
        brk
        bbr1    $01,LFA21
        bpl     LFA24
        ora     ($0E),y
LFA16:  brk
        tsb     $0102
        bbr0    $11,LFA2E
        .byte   $0E
        brk
LFA1F:  .byte   $1F
        .byte   $10
LFA21:  php
        tsb     $02
LFA24:  .byte   $02
        .byte   $02
        brk
        asl     $1111
        asl     $1111
        .byte   $0E
LFA2E:  brk
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
        bbr1    $00,LFA73
        brk
        brk
        brk
        .byte   $02
        tsb     $08
        bpl     LFA64
        tsb     $02
        brk
        asl     $1011
        php
        .byte   $04
LFA64:  brk
        tsb     $00
        asl     $1011
        asl     $15,x
        ora     $0E,x
        brk
        tsb     $0A
        ora     ($11),y
LFA73:  bbr1    $11,LFA87
        brk
        bbr0    $11,LFA8B
        bbr1    $11,LFA8E
        bbr0    $00,LFA8E
        ora     ($01),y
        ora     ($01,x)
        ora     ($0E),y
        brk
LFA87:  rmb0    $09
        ora     ($11),y
LFA8B:  ora     ($09),y
        .byte   $07
LFA8E:  brk
        bbr1    $01,LFA93
        .byte   $0F
LFA93:  ora     ($01,x)
        bbr1    $00,LFAB7
        ora     ($01,x)
        bbr0    $01,LFA9E
        .byte   $01
LFA9E:  brk
        asl     $0111
        ora     $1111,x
        asl     $1100
        ora     ($11),y
        bbr1    $11,LFABE
        ora     ($00),y
        asl     $0404
        tsb     $04
        tsb     $0E
        brk
LFAB7:  trb     $0808
        php
        php
        ora     #$06
LFABE:  brk
        ora     ($09),y
        ora     $03
        ora     $09
        ora     ($00),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        bbr1    $00,LFAE1
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
LFAE1:  ora     ($11),y
        ora     ($11),y
        asl     $0F00
        ora     ($11),y
        bbr0    $01,LFAEE
        .byte   $01
LFAEE:  brk
        asl     $1111
        ora     ($15),y
        ora     #$16
        brk
        bbr0    $11,LFB0B
        bbr0    $05,LFB06
        ora     ($00),y
        asl     $0111
        asl     $1110
        .byte   $0E
LFB06:  brk
        bbr1    $04,LFB0E
        .byte   $04
LFB0B:  tsb     $04
        .byte   $04
LFB0E:  brk
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
        bbr1    $10,LFB42
        tsb     $02
        ora     ($1F,x)
        brk
        asl     $0202
LFB42:  .byte   $02
        .byte   $02
        .byte   $02
        asl     a:$00
        ora     ($02,x)
        tsb     $08
        bpl     LFB4E
LFB4E:  brk
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
        bbr1    $00,LFB69
        .byte   $02
LFB69:  tsb     $00
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
        bbr0    $00,LFB80
LFB80:  brk
        asl     $0111
        ora     ($0E),y
        brk
        bpl     LFB99
        bpl     LFBA9
        ora     ($11),y
        asl     a:$00,x
        brk
        asl     $1F11
        ora     ($0E,x)
        brk
        .byte   $0C
        .byte   $12
LFB99:  .byte   $02
        rmb0    $02
        .byte   $02
        .byte   $02
        brk
        brk
        brk
        asl     $1E11,x
        bpl     LFBB4
        brk
        ora     ($01,x)
LFBA9:  ora     ($0F,x)
        ora     ($11),y
        ora     ($00),y
        brk
        tsb     $00
        asl     $04
LFBB4:  tsb     $0E
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
        bbr0    $11,LFC0B
        ora     ($01,x)
        brk
        brk
        brk
        asl     $1E11,x
        bpl     LFC06
        brk
        brk
        brk
        ora     $0113
        ora     ($01,x)
        brk
        brk
        brk
        asl     $0E01
        bpl     LFC15
LFC06:  brk
        .byte   $02
        .byte   $02
        rmb0    $02
LFC0B:  .byte   $02
        ora     ($0C)
        brk
        brk
        brk
        ora     ($11),y
        ora     ($19),y
LFC15:  asl     $00,x
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
        bbr1    $08,LFC40
        .byte   $02
        bbr1    $00,LFC48
LFC40:  tsb     $04
        .byte   $02
        tsb     $04
        php
        brk
        .byte   $04
LFC48:  tsb     $04
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
        bbr3    $00,LFC72
        eor     #$15
        lsr     a
        dec     a
        pha
LFC72:  dec     a
        rmb4    $30
        .byte   $4B
        bbr3    $00,LFC7E
        eor     #$15
        lsr     a
        and     $48,x
LFC7E:  and     $47,x
        bbr0    $4B,LFCC2
        brk
        ora     $49
        ora     $4A,x
        jsr     L2048
        rmb4    $32
        .byte   $4B
        bbr3    $00,LFC96
        eor     #$30
        lsr     a
        .byte   $3F
        pha
LFC96:  bbr3    $47,LFCC9
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
        rmb1    $01
        .byte   $02
LFCAF:  eor     ($15,x)
        .byte   $42
        .byte   $02
        ora     ($02,x)
        eor     ($03,x)
        .byte   $42
        bbr3    $02,LFCBD
        .byte   $43
        .byte   $15
LFCBD:  .byte   $44
        rol     a
        .byte   $02
        .byte   $02
        .byte   $43
LFCC2:  ora     $44,x
        rol     $0202
        .byte   $43
        .byte   $15
LFCC9:  .byte   $44
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
        bbr2    $04,LFD00
        .byte   $4C
LFD00:  bbr1    $04,LFD04
        .byte   $4C
LFD04:  asl     a
        tsb     $01
        jmp     L5F0F

        .byte   $FC
        .byte   $6B
        .byte   $FC
        rmb7    $FC
        .byte   $83
        .byte   $FC
        bbs0    $FC,LFCAF
        .byte   $FC
        lda     ($FC,x)
        smb2    $FC
        lda     $B3FC
        .byte   $FC
        lda     $BFFC,y
        .byte   $FC
        cmp     $FC
        wai
        .byte   $FC
        cmp     ($FC),y
LFD27:  smb5    $FC
        cmp     LE3FC,x
        .byte   $FC
        sbc     #$FC
        bbs6    $FC,LFD27
        .byte   $FC
        sbc     LFDFC,y
        .byte   $FC
        ora     ($FD,x)
        ora     $FD
        .byte   $23
        sta     $992B,y
        .byte   $33
        sta     $993B,y
        rmb6    $99
        bbr6    $99,LFD8B
        sta     $994F,y
        .byte   $5B
        sta     $0C2A,y
        bmi     LFD83
        bbr0    $17,LFD89
        bbr1    $5B,LFD9C
        ror     $6574
        adc     ($5D)
        eor     $70,x
        rmb6    $72
        adc     ($64,x)
        adc     $00
        .byte   $5B
        eor     ($5D)
        adc     L0073
        bbr6    $75,LFDDE
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
LFD83:  .byte   $62
        bbr6    $74,LFD87
LFD87:  .byte   $53
        .byte   $5B
LFD89:  .byte   $6B
        .byte   $5D
LFD8B:  adc     #$6C
        jmp     (L0073)

        bvc     LFE01
        adc     #$6E
        stz     L0073,x
        dec     a
        jsr     L4200
        adc     ($74,x)
LFD9C:  stz     $3A,x
        bit     $2F
        bit     $00
        eor     $756F,y
        jsr     L6964
        adc     $64
        brk
        .byte   $43
        bbr6    L0073,LFE23
        dec     a
        jsr     L0024
        eor     $78
        bvs     LFDF1
        bit     $2F
        bit     $00
        .byte   $43
        adc     ($79)
        .byte   $73
        stz     $61,x
        jmp     (L4800)

        bvc     LFE00
        bit     $2F
        bit     $00
        eor     ($6F)
        .byte   $63
        .byte   $6B
        brk
        eor     $78
        adc     #$74
        brk
        .byte   $5C
        .byte   $6E
        brk
LFDD7:  .byte   $0B
        tsb     $0E0D
        .byte   $0F
LFDDC:  rmb3    $38
LFDDE:  and     $3B3A,y
LFDE1:  eor     ($00,x)
LFDE3:  php
        and     $32,x
        asl     a
        rol     a
        rol     a
LFDE9:  lsr     $48
        lsr     a
        rmb4    $49
        .byte   $4B
LFDEF:  eor     ($00,x)
LFDF1:  eor     ($00,x)
        brk
        ora     ($02,x)
        .byte   $03
        tsb     $05
        asl     $08
        .byte   $07
LFDFC:  tsb     $10
        .byte   $01
LFDFF:  php
LFE00:  .byte   $35
LFE01:  .byte   $17
LFE02:  ora     $593B,x
LFE05:  rol     $2B3A
LFE08:  eor     ($00,x)
LFE0A:  brk
LFE0B:  brk
LFE0C:  brk
LFE0D:  brk
LFE0E:  brk
LFE0F:  brk
LFE10:  brk
LFE11:  brk
LFE12:  .byte   $20
LFE13:  brk
LFE14:  sta     LFE22
        stx     LFE23
        sta     LFE29
        stx     LFE2A
LFE20:  dey
        .byte   $B9
LFE22:  .byte   $FF
LFE23:  bbs7    $8D,LFE59
        inc     $B988,x
LFE29:  .byte   $FF
LFE2A:  bbs7    $8D,LFE5F
        inc     $358C,x
        inc     $FF20,x
        .byte   $FF
        .byte   $A0
LFE35:  bbs7    $D0,LFE20
        rts


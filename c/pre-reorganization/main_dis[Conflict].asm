; da65 V2.18 - Git 28584b3
; Created:    2020-04-27 23:38:50
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
L870F           := $870F
L99C2           := $99C2
L9DAC           := $9DAC
LA504           := $A504
LA6DA           := $A6DA
LA82A           := $A82A
LA9DF           := $A9DF
LAE23           := $AE23
LAE94           := $AE94
LFEA9           := $FEA9
LFEAF           := $FEAF
        lda     #$00
        ldx     #$40
        sta     $80
        stx     $81
        jsr     LF56F
        jsr     LC017
        jsr     LE6E2
        pha
        jsr     LF2EA
        pla
        rts

LC017:  ldy     #$00
        beq     LC022
        lda     #$23
        ldx     #$C0
        jmp     LFE3C

LC022:  rts

LC023:  lda     LF597
        sta     $89
        lda     LF596
        sta     $88
        lda     #$02
        sta     ($88)
        sta     $0200
        ldx     #$00
        txa
        rts

LC038:  lda     LF597
        sta     $89
        lda     LF596
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

LC057:  lda     LF597
        sta     $89
        lda     LF596
        sta     $88
        lda     $0201
        sta     ($88)
        lda     $0201
        sta     $0200
        ldx     #$00
        txa
        rts

LC070:  jsr     LF47F
        bra     LC098
LC075:  lda     LF5A0
        ldx     LF5A1
        jsr     LF47F
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
LC08E:  jsr     LF4C9
        ldy     #$00
        lda     ($84)
        jsr     LF4B1
LC098:  ldy     #$01
        lda     ($80),y
        sta     $89
        lda     ($80)
        sta     $88
        lda     ($88)
        bne     LC075
        tax
        jmp     LF38A

        jsr     LF469
        lda     LF5A5
        sta     $89
        lda     LF5A4
        sta     $88
        lda     ($80)
        sta     ($88)
        ldx     #$00
        txa
        jmp     LF37B

        jsr     LF469
        lda     LF5A3
        sta     $89
        lda     LF5A2
        sta     $88
        lda     ($80)
        sta     ($88)
        ldx     #$00
        txa
        jmp     LF37B

        lda     #$FC
        ldx     #$FD
        jsr     LC070
        ldx     #$00
        txa
        rts

        jsr     LF47F
        lda     LF5A3
        sta     $89
        lda     LF5A2
        sta     $88
        ldy     #$01
        lda     ($80),y
        sta     ($88)
        lda     LF5A3
        sta     $89
        lda     LF5A2
        sta     $88
        lda     ($80)
        sta     ($88)
        ldx     #$00
        txa
        jmp     LF38A

LC10A:  jsr     LF469
        jsr     LF2F6
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
        jsr     LE813
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
LC190:  jmp     LF38A

LC193:  jsr     LF333
        lda     #$00
        jsr     LF469
        jsr     LF469
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
        jsr     LF47D
        ldy     #$09
        lda     ($80),y
        tay
        lda     $022D,y
        asl     a
        bcc     LC207
        ldx     #$01
        clc
LC207:  adc     #$3D
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
        jsr     LF34D
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
LC236:  adc     #$3D
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
LC273:  adc     #$21
        sta     $88
        txa
        adc     #$F8
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        ldy     #$04
        jsr     LF4C9
        ldy     #$07
        lda     ($80),y
        tay
        ldx     #$00
        lda     $022D,y
        asl     a
        bcc     LC297
        inx
        clc
LC297:  adc     #$3D
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
        jsr     LF47F
        sta     $88
        stx     $89
        lda     ($88)
        sta     $88
        ldy     #$04
        lda     ($80),y
        clc
        adc     $88
        ldy     #$00
        jsr     LF4B1
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
        jsr     LF47F
        lda     $0208
        ldx     $0209
        jsr     LF34F
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
        jmp     LF3B1

LC40F:  jsr     LF47F
        lda     LF5B2
        ldx     LF5B3
        jsr     LF47F
        ldy     #$02
        lda     ($80),y
        tax
        lda     #$00
        jsr     LF295
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
        jmp     LF39D

LC43D:  jsr     LF469
        lda     ($80)
        jsr     LF47D
        lda     #$28
        jsr     LF3E2
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
        jsr     LF47D
        lda     #$28
        jsr     LF3E2
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
        jsr     LF2BD
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
        jmp     LF38A

LC49E:  ldx     #$00
LC4A0:  txa
        jmp     LF38A

LC4A4:  jsr     LF469
        lda     ($80)
        jsr     LF47D
        lda     #$28
        jsr     LF3E2
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
        jsr     LF47D
        lda     #$28
        jsr     LF3E2
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
        jsr     LF441
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
        jmp     LF38A

LC505:  ldx     #$00
LC507:  txa
        jmp     LF38A

LC50B:  lda     $0206
        ldx     $0207
        jsr     LF47F
        lda     $0208
        ldx     $0209
        jsr     LF34F
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
        jsr     LF319
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
        jsr     LF326
        lda     #$CA
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

        jsr     LF469
        lda     $A6
        ldx     $A7
        jsr     LF47F
        lda     LF5B3
        sta     $A7
        lda     LF5B2
        sta     $A6
        lda     $A4
        ldx     $A5
        jsr     LF47F
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
        jmp     LF3A2

LC5F1:  lda     #$09
        jsr     LF47D
        lda     #$3C
        jsr     LC7E1
        lda     #$09
        jsr     LF47D
        lda     $022D
        jsr     LC677
        lda     #$09
        jsr     LF47D
        lda     $022E
        jsr     LC677
        lda     #$09
        jsr     LF47D
        lda     $022F
        jsr     LC677
        lda     #$09
        jsr     LF47D
        lda     $0230
        jsr     LC677
        lda     #$09
        jsr     LF47D
        lda     $0231
        jsr     LC677
        lda     #$0A
        jsr     LF47D
        lda     #$3D
        jsr     LC7E1
        lda     #$0A
        jsr     LF47D
        lda     $022D
        jsr     LC677
        lda     #$0A
        jsr     LF47D
        lda     $022E
        jsr     LC677
        lda     #$0A
        jsr     LF47D
        lda     $022F
        jsr     LC677
        lda     #$0A
        jsr     LF47D
        lda     $0230
        jsr     LC677
        lda     #$0A
        jsr     LF47D
        lda     $0231
        jsr     LC677
        ldx     #$00
        txa
        rts

LC677:  jsr     LF47F
        lda     $A6
        ldx     $A7
        jsr     LF47F
        ldy     #$05
        lda     ($80),y
        sta     $90
        dey
        lda     ($80),y
        asl     a
        rol     $90
        clc
        adc     #$D9
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
        jsr     LF469
        lda     $A4
        jsr     LF469
        lda     $A3
        jsr     LF469
        lda     $A1
        ldx     $A2
        jsr     LF47F
        lda     $A0
        jsr     LF469
        lda     $9F
        jsr     LF469
        jsr     LF2F6
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
        adc     #$31
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
        adc     #$63
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
        jsr     LF47D
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
        jsr     LF34D
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
        jsr     LF3BC
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
        jmp     LF2B0

LC7E1:  jsr     LF47F
        lda     $A6
        ldx     $A7
        jsr     LF47F
        ldy     #$05
        lda     ($80),y
        sta     $90
        dey
        lda     ($80),y
        asl     a
        rol     $90
        clc
        adc     #$D9
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
        jsr     LF47F
        ldy     #$05
        lda     ($80),y
        sta     $90
        dey
        lda     ($80),y
        asl     a
        rol     $90
        clc
        adc     #$D9
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
        jsr     LF469
        ldy     #$01
        lda     ($A4),y
        sta     $A3
        lda     $A2
        jsr     LF469
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
        jsr     LF47F
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
        jsr     LF4B1
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
        jsr     LF47F
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
        jsr     LF4B1
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
        jmp     LF2B0

LC8EB:  jsr     LF469
        lda     $A7
        jsr     LF469
        ldy     #$04
        lda     ($80),y
        jsr     LF47D
        lda     #$50
        jsr     LF3E2
        jsr     LF47F
        ldy     #$05
        lda     ($80),y
        jsr     LF50F
        sta     $A7
        jsr     LF319
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
        jsr     LF319
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
        jmp     LF3AC

LC962:  jsr     LF469
        lda     $A6
        ldx     $A7
        jsr     LF47F
        ldy     #$07
        lda     ($80),y
        jsr     LF47D
        ldy     #$08
        lda     ($80),y
        jsr     LC40F
        sta     $A6
        stx     $A7
        lda     $A4
        ldx     $A5
        jsr     LF47F
        ldy     #$07
        lda     ($80),y
        tax
        dey
        lda     ($80),y
        sec
        sbc     #$01
        bcs     LC993
        dex
LC993:  jsr     LF4C9
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
        jmp     LF2B0

LCA7E:  jsr     LF2FF
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
LCAA8:  jsr     LF47F
        lda     #$28
        jsr     LF3E2
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
LCAED:  jsr     LF319
        lda     #$00
        ldy     #$02
        sta     ($80),y
        iny
        bra     LCB28
LCAF9:  jsr     LF319
        lda     #$01
        bra     LCB21
LCB00:  jsr     LF319
        lda     #$02
        bra     LCB21
LCB07:  jsr     LF319
        lda     #$03
        bra     LCB21
LCB0E:  jsr     LF319
        lda     #$04
        bra     LCB21
LCB15:  jsr     LF319
        lda     #$05
        bra     LCB21
LCB1C:  jsr     LF319
        lda     #$45
LCB21:  ldy     #$02
        sta     ($80),y
        iny
        lda     #$00
LCB28:  sta     ($80),y
        iny
        tax
        lda     ($80),y
        jsr     LF2CB
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
        jsr     LF2CB
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
LCB5E:  jsr     LF47F
        lda     #$28
        jsr     LF3E2
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
LCB9B:  jsr     LF47F
        lda     #$28
        jsr     LF3E2
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
        jsr     LF441
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
        jsr     LF319
        lda     #$3E
        ldy     #$02
        sta     ($80),y
        iny
        txa
        sta     ($80),y
        iny
        bra     LCC03
LCBF3:  jsr     LF319
        lda     #$3F
        ldy     #$02
        sta     ($80),y
        iny
        lda     #$00
        sta     ($80),y
        iny
        tax
LCC03:  lda     ($80),y
        jsr     LF2CB
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
        jsr     LF2CB
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
LCC35:  jsr     LF47F
        lda     #$28
        jsr     LF3E2
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
LCC72:  jsr     LF47F
        lda     #$28
        jsr     LF3E2
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
        jsr     LF2BD
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
LCCCA:  jsr     LF47F
        lda     #$28
        jsr     LF3E2
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
        jsr     LF2BD
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
        jsr     LF319
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
LCD2F:  jsr     LF47F
        lda     #$28
        jsr     LF3E2
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
        jsr     LF2BD
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
        jsr     LF319
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
LCD94:  jsr     LF47F
        lda     #$28
        jsr     LF3E2
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
        jsr     LF2BD
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
        jsr     LF319
        lda     #$07
        ldy     #$02
        sta     ($80),y
        iny
        txa
        sta     ($80),y
        iny
        bra     LCDFC
LCDEC:  jsr     LF319
        lda     #$41
        ldy     #$02
        sta     ($80),y
        iny
        lda     #$00
        sta     ($80),y
        iny
        tax
LCDFC:  lda     ($80),y
        jsr     LF2CB
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
        jsr     LF2CB
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
        jsr     LF319
        lda     #$09
        bra     LCE4D
LCE41:  lda     $0223
        cmp     #$04
        bne     LCE7B
        jsr     LF319
        lda     #$0A
LCE4D:  iny
        sta     ($80),y
        iny
        txa
        sta     ($80),y
        lda     $0204
        jsr     LF2CB
        stx     $90
        asl     a
        rol     $90
        sta     ($80)
        ldy     #$01
        lda     $90
        sta     ($80),y
        ldx     #$00
        lda     $0205
        jsr     LF2CB
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
        jsr     LF319
        lda     #$42
        ldy     #$02
        sta     ($80),y
        iny
        txa
        sta     ($80),y
        lda     $0204
        jsr     LF2CB
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
        jsr     LF319
        lda     #$42
        ldy     #$02
        sta     ($80),y
        iny
        txa
        sta     ($80),y
        lda     $0204
        jsr     LF2CB
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
        jsr     LF319
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
        jmp     LF38A

LCF27:  jsr     LF319
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
LCF3B:  jsr     LF2CB
        stx     $90
        asl     a
        rol     $90
        sta     ($80)
        ldy     #$01
        lda     $90
        sta     ($80),y
        ldx     #$00
        lda     $0205
LCF50:  jsr     LF2CB
        stx     $90
        asl     a
        rol     $90
        ldx     $90
        jsr     LE20D
        ldx     #$00
        txa
        jmp     LF38A

LCF63:  jsr     LF469
        jsr     LF326
        ldy     #$04
LCF6B:  lda     LFDFF,y
        sta     ($80),y
        dey
        bpl     LCF6B
        jsr     LF326
        ldy     #$04
LCF78:  lda     LFE04,y
        sta     ($80),y
        dey
        bpl     LCF78
        jsr     LF2F6
        ldy     #$0D
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LCF8E
        inx
        clc
LCF8E:  adc     #$3D
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
        jsr     LF47D
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
        jsr     LF47D
        ldy     #$0F
        lda     ($80),y
        jsr     LC677
        jsr     LF319
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
        jmp     LF2B0

LD03D:  jsr     LF469
        ldy     #$01
        lda     ($80),y
        clc
        adc     #$0F
        jsr     LF469
        jsr     LF30C
        ldy     #$07
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LD058
        inx
        clc
LD058:  adc     #$3D
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
        jsr     LF333
        ldy     #$0D
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LD080
        inx
        clc
LD080:  adc     #$3D
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
        adc     #$19
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

LD0E0:  jsr     LF2FF
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
        jsr     LF326
        ldy     #$0C
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LD105
        inx
        clc
LD105:  adc     #$B8
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
LD141:  adc     #$3D
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
        ldy     #$75
        lda     ($88),y
        jsr     LDF7D
        lda     #$00
        ldy     #$02
LD16D:  sta     ($80),y
        lda     ($80),y
        jsr     LF47D
        ldy     #$09
        lda     ($80),y
        asl     a
        bcc     LD17E
        ldx     #$01
        clc
LD17E:  adc     #$3D
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
        jsr     LF34D
        bcc     LD19E
        jmp     LD28B

LD19E:  ldy     #$07
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LD1A9
        inx
        clc
LD1A9:  adc     #$3D
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
        lda     LF813,y
        sta     ($80)
        ldx     #$00
        lda     ($80)
        ldy     #$04
        cmp     ($80),y
        bne     LD1EF
        lda     #$03
        sta     ($80)
LD1EF:  jsr     LF340
        ldy     #$08
        lda     ($80),y
        asl     a
        bcc     LD1FB
        inx
        clc
LD1FB:  adc     #$F7
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
LD21E:  adc     #$3D
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
        jmp     LF3B1

LD291:  lda     $A6
        ldx     $A7
        jsr     LF47F
        lda     $A4
        ldx     $A5
        jsr     LF47F
        lda     #$04
        sta     $A5
        lda     #$90
        sta     $A4
        lda     $A3
        jsr     LF469
        lda     $A2
        jsr     LF469
        lda     $A1
        jsr     LF469
        jsr     LF319
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
        jsr     LF340
        lda     #$EB
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
        jsr     LF326
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
        jsr     LF340
        lda     #$C1
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
        jsr     LF326
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
        jsr     LF340
        lda     #$DB
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
        jsr     LF326
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

LD3E1:  jsr     LF326
        lda     #$F2
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
LD3FE:  jsr     LF326
        lda     #$F7
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
LD41B:  jsr     LF326
        lda     #$A4
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
        jsr     LF2BD
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
        ldy     #$7A
        lda     ($88),y
        sta     $A3
        jsr     LF326
        lda     #$E3
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
        jsr     LF326
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
        jsr     LF47D
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

LD4CF:  jsr     LF469
        lda     $A3
        jsr     LC4A4
        cmp     #$01
        bne     LD4DF
        lda     #$03
        bra     LD521
LD4DF:  lda     $A2
        jsr     LF469
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
LD596:  jsr     LF47F
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
LD5F1:  jsr     LF47F
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
        jmp     LF3AC

LD654:  jsr     LF319
        ldy     #$01
LD659:  lda     LFE09,y
        sta     ($80),y
        dey
        bpl     LD659
        jsr     LF2FF
        lda     LFE39
        beq     LD66C
        jmp     LD771

LD66C:  lda     LFE38
        cmp     #$01
        beq     LD676
        jmp     LD771

LD676:  jsr     LF319
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
        jsr     LF319
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
LD6CC:  adc     #$8F
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
LD6F4:  adc     #$8F
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
        jsr     LF340
        ldy     #$0B
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LD71A
        inx
        clc
LD71A:  adc     #$81
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
        lda     LF87A,y
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

LD771:  lda     LFE39
        bne     LD7E5
        lda     LFE38
        cmp     #$02
        bne     LD7E5
        jsr     LF319
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
        jsr     LF326
        lda     #$B8
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
        jsr     LF319
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
        jsr     LE5DF
        jsr     LEE8B
        jmp     LD889

LD7E5:  lda     LFE39
        beq     LD7ED
        jmp     LD889

LD7ED:  lda     LFE38
        cmp     #$03
        beq     LD7F7
        jmp     LD889

LD7F7:  jsr     LF319
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
        jsr     LF319
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
LD82F:  jsr     LF319
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
        jsr     LE5DF
        jsr     LF319
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
        jsr     LE5DF
        jsr     LF319
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
        jsr     LE5DF
        jsr     LDCDE
LD889:  ldx     #$00
        txa
        jmp     LF3A7

LD88F:  jsr     LF326
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
        jsr     LF319
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
        jsr     LF319
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
        jsr     LF319
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
        jsr     LF326
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
        jsr     LF326
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
        jsr     LF47D
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
LD969:  jsr     LF47F
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
LD98D:  jsr     LF47F
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
        jsr     LF47D
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

LD9CD:  jsr     LF326
        lda     #$98
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
        jsr     LF326
        lda     #$AF
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
        jsr     LF326
        lda     #$8C
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
        jsr     LF319
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
        jmp     LF37B

LDA53:  jsr     LF2FF
        lda     #$00
        jsr     LF469
        jsr     LF319
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
        jsr     LF319
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

LDAAC:  jsr     LF319
        lda     #$40
        iny
        sta     ($80),y
        iny
        lda     #$00
        sta     ($80),y
        ldy     #$05
        tax
        lda     ($80),y
        jsr     LF2CB
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
        jsr     LF2CB
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
LDAFA:  adc     #$3D
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

LDB17:  jsr     LF2FF
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
        cmp     LFE32
        beq     LDB4B
        jmp     LDBD7

LDB4B:  iny
        lda     ($80),y
        cmp     LFE33
        beq     LDB56
        jmp     LDBD7

LDB56:  jsr     LF30C
        iny
        lda     ($80),y
        tay
        ldx     #$00
        lda     $0232,y
        asl     a
        bcc     LDB67
        inx
        clc
LDB67:  adc     #$3D
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
        jsr     LF30C
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
        jsr     LF319
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

LDBEB:  jsr     LF319
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
        jsr     LF319
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
        jsr     LF319
        lda     #$43
        ldy     #$02
        sta     ($80),y
        iny
        lda     #$00
        sta     ($80),y
        tax
        lda     LFE32
        jsr     LF2CB
        clc
        adc     #$A4
        bcc     LDC3B
        inx
LDC3B:  sta     ($80)
        ldy     #$01
        txa
        sta     ($80),y
        ldx     #$00
        lda     LFE33
        jsr     LF2CB
        clc
        adc     #$14
        bcc     LDC50
        inx
LDC50:  jsr     LE20D
        ldx     #$00
        txa
        jmp     LF398

LDC59:  jsr     LF469
        lda     $A6
        ldx     $A7
        jsr     LF47F
        ldy     #$06
        lda     ($80),y
        jsr     LF47D
        ldy     #$07
        lda     ($80),y
        jsr     LC40F
        sta     $A6
        stx     $A7
        lda     $A5
        jsr     LF469
        lda     $A4
        jsr     LF469
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
        jmp     LF2B0

LDCDE:  jsr     LF333
        ldy     #$05
LDCE3:  lda     LFE0B,y
        sta     ($80),y
        dey
        bpl     LDCE3
        jsr     LF333
        ldy     #$05
LDCF0:  lda     LFE11,y
        sta     ($80),y
        dey
        bpl     LDCF0
        jsr     LF30C
        lda     #$20
        jsr     LF469
        jsr     LF2FF
        lda     #$20
        sta     $025F
        jsr     LF319
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
        jsr     LF319
        ldy     #$09
        lda     ($80),y
        jsr     LF47D
        lda     #$17
        jsr     LF3E2
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
        jsr     LF2FF
        lda     ($80),y
        ldy     #$01
        sta     ($80),y
        ldy     #$07
        lda     ($80),y
        jsr     LF47D
        lda     #$17
        jsr     LF3E2
        clc
        adc     #$0E
        sta     ($80)
        ldy     #$06
        lda     ($80),y
        jsr     LF47D
        lda     #$13
        jsr     LF3E2
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

LDDD1:  jsr     LF319
        ldy     #$08
        lda     ($80),y
        jsr     LF47D
        ldy     #$0B
        lda     ($80),y
        sec
        sbc     #$04
        bcs     LDDE6
        ldx     #$FF
LDDE6:  jsr     LF41C
        jsr     LF295
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
        jsr     LF47D
        lda     #$17
        jsr     LF3E2
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
        jsr     LF47D
        lda     #$13
        jsr     LF3E2
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
        cmp     LFE36
        bne     LDEDB
        dey
        lda     ($80),y
        cmp     LFE37
        bne     LDEDD
        jsr     LF319
        lda     #$43
        ldy     #$02
        sta     ($80),y
        iny
        lda     #$00
        sta     ($80),y
        ldy     #$09
        lda     ($80),y
        jsr     LF47D
        lda     #$17
        jsr     LF3E2
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
        jsr     LF47D
        lda     #$13
        jsr     LF3E2
        clc
        adc     #$15
        bcc     LDEB1
        inx
LDEB1:  jsr     LE20D
        ldy     #$02
        lda     ($80),y
        cmp     #$20
        beq     LDEDB
        jsr     LF30C
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
LDEFD:  adc     #$3D
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
LDF21:  adc     #$3D
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
        ldy     #$7A
        lda     ($88),y
        sta     ($80)
        jsr     LF340
        lda     #$D3
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
        jmp     LF2B0

LDF7D:  jsr     LF469
        lda     $A6
        ldx     $A7
        jsr     LF47F
        ldy     #$05
        lda     ($80),y
        jsr     LF47D
        ldy     #$06
        lda     ($80),y
        jsr     LC40F
        sta     $A6
        stx     $A7
        lda     $A4
        ldx     $A5
        jsr     LF47F
        ldy     #$09
        lda     ($80),y
        sta     $A5
        dey
        lda     ($80),y
        sta     $A4
        lda     $A2
        ldx     $A3
        jsr     LF47F
        lda     $A1
        jsr     LF469
        jsr     LF2F6
        ldy     #$0B
        lda     ($80),y
        jsr     LF469
        lda     $A0
        jsr     LF469
        lda     $9F
        jsr     LF469
        jmp     LE065

LDFCE:  lda     ($80),y
        sec
        sbc     #$20
        bcs     LDFD6
        dex
LDFD6:  jsr     LF2BD
        clc
        adc     #$8F
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
        jmp     LF2B0

LE0A4:  jsr     LF469
        jsr     LF2FF
        ldy     #$01
LE0AC:  lda     LFE17,y
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
        jsr     LF319
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
        jsr     LE5DF
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
        jsr     LF326
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
LE147:  jsr     LF4C9
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
        jmp     LF2B0

LE162:  jsr     LF469
        ldy     #$03
        lda     ($80),y
        jsr     LF469
        ldy     #$05
        lda     ($80),y
        jsr     LF469
        jsr     LF2FF
        ldy     #$01
LE178:  lda     LFE19,y
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
        jsr     LF326
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
LE1F2:  jsr     LF4C9
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
        jmp     LF2B0

LE20D:  jsr     LF47F
        jsr     LF2FF
        ldy     #$07
        lda     ($80),y
        bne     LE223
        dey
        lda     ($80),y
        cmp     #$0A
        bne     LE222
        brk
        brk
LE222:  iny
LE223:  lda     ($80),y
        tax
        dey
        lda     ($80),y
        cpx     #$00
        bne     LE29D
        cmp     #$42
        beq     LE257
        cmp     #$43
        beq     LE263
        cmp     #$44
        beq     LE263
        cmp     #$45
        beq     LE26F
        cmp     #$46
        beq     LE27A
        cmp     #$47
        beq     LE27A
        cmp     #$48
        beq     LE285
        cmp     #$49
        beq     LE285
        cmp     #$4A
        beq     LE291
        cmp     #$4B
        beq     LE291
        bra     LE29D
LE257:  lda     #$0C
        ldy     #$01
        sta     ($80),y
        lda     #$40
        sta     ($80)
        bra     LE2D7
LE263:  lda     #$40
        ldy     #$01
        sta     ($80),y
        lda     #$0C
        sta     ($80)
        bra     LE2D7
LE26F:  txa
        ldy     #$01
        sta     ($80),y
        lda     #$30
        sta     ($80)
        bra     LE2D7
LE27A:  lda     #$01
        tay
        sta     ($80),y
        lda     #$17
        sta     ($80)
        bra     LE2D7
LE285:  lda     #$10
        ldy     #$01
        sta     ($80),y
        lda     #$35
        sta     ($80)
        bra     LE2D7
LE291:  lda     #$05
        ldy     #$01
        sta     ($80),y
        lda     #$1F
        sta     ($80)
        bra     LE2D7
LE29D:  jsr     LF319
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
        jsr     LE4D9
        ldy     #$07
        lda     ($80),y
        bne     LE30D
        dey
        lda     ($80),y
        cmp     #$0A
        bra     LE309
LE2D7:  jsr     LF319
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
        jsr     LE313
        ldy     #$07
        lda     ($80),y
        bne     LE30D
        dey
        lda     ($80),y
        cmp     #$07
LE309:  bne     LE30D
        brk
        brk
LE30D:  ldx     #$00
        txa
        jmp     LF3B1

LE313:  jsr     LF469
        lda     $A6
        ldx     $A7
        jsr     LF47F
        ldy     #$05
        lda     ($80),y
        jsr     LF47D
        ldy     #$06
        lda     ($80),y
        jsr     LC40F
        sta     $A6
        stx     $A7
        lda     $A4
        ldx     $A5
        jsr     LF47F
        ldy     #$08
        ldx     #$00
        lda     ($80),y
        asl     a
        bcc     LE341
        inx
        clc
LE341:  adc     #$D9
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
        jsr     LF469
        lda     $A2
        jsr     LF469
        lda     $A1
        jsr     LF469
        lda     $A0
        jsr     LF469
        lda     $9F
        jsr     LF469
        lda     $9E
        jsr     LF469
        lda     $9D
        jsr     LF469
        jsr     LF326
        lda     #$00
        jsr     LF469
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
        bcs     LE3A1
        jmp     LE4BE

LE3A1:  inc     $A5
        jmp     LE4BE

LE3A6:  lda     $A2
        beq     LE3AD
        jmp     LE436

LE3AD:  lda     $A4
        ldx     $A5
        sta     $84
        stx     $85
        inc     a
        bne     LE3B9
        inx
LE3B9:  sta     $A4
        stx     $A5
        lda     ($84)
        sta     $9E
        lda     $A3
        bne     LE436
        lda     $9D
        beq     LE432
        lda     $A1
        cmp     #$01
        beq     LE3D5
        lda     $A0
        cmp     $A1
        bne     LE3F4
LE3D5:  lda     #$00
        ldy     #$05
        sta     ($80),y
        lda     $9F
        sec
        sbc     #$01
        dey
        sta     ($80),y
        lda     $9D
        cmp     #$02
        bne     LE428
        dec     a
        dey
        sta     ($80),y
        lda     $9F
        sec
        sbc     #$02
        bra     LE42D
LE3F4:  lda     $A1
        cmp     #$02
        beq     LE410
        ldx     #$00
        lda     $A0
        sec
        sbc     #$01
        bcs     LE404
        dex
LE404:  cpx     #$00
        bne     LE40C
        cmp     $A1
        beq     LE410
LE40C:  lda     #$00
        bra     LE432
LE410:  lda     $9D
        cmp     #$02
        beq     LE41A
        lda     #$00
        bra     LE432
LE41A:  lda     #$00
        ldy     #$05
        sta     ($80),y
        lda     $9F
        sec
        sbc     #$01
        dey
        sta     ($80),y
LE428:  lda     #$FF
        dey
        sta     ($80),y
LE42D:  dey
        sta     ($80),y
        lda     #$01
LE432:  ldy     #$01
        sta     ($80),y
LE436:  ldy     #$01
        lda     ($80),y
        cmp     #$01
        bne     LE45F
        ldy     #$05
        lda     ($80),y
        cmp     $A3
        beq     LE45B
        dey
        lda     ($80),y
        cmp     $A3
        beq     LE45B
        dey
        lda     ($80),y
        cmp     $A3
        beq     LE45B
        dey
        lda     ($80),y
        cmp     $A3
        bne     LE45F
LE45B:  lda     #$01
        bra     LE461
LE45F:  lda     #$00
LE461:  sta     ($80)
        lda     ($80)
        bne     LE47B
        lda     $9E
        and     #$80
        beq     LE471
        ldy     #$12
        bra     LE473
LE471:  ldy     #$11
LE473:  lda     ($80),y
        cmp     #$40
        beq     LE47B
        sta     ($A6)
LE47B:  lda     $A6
        ldx     $A7
        inc     a
        bne     LE483
        inx
LE483:  sta     $A6
        stx     $A7
        lda     $9E
        asl     a
        sta     $9E
        inc     $A3
        lda     $9F
        cmp     $A3
        bne     LE4B2
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
        bra     LE4BE
LE4B2:  lda     $A2
        cmp     #$07
        bne     LE4BC
        stz     $A2
        bra     LE4BE
LE4BC:  inc     $A2
LE4BE:  lda     $A1
        beq     LE4C5
        jmp     LE3A6

LE4C5:  tax
        pha
        ldy     #$06
LE4C9:  lda     ($80),y
        sta     $97,y
        iny
        cpy     #$11
        bne     LE4C9
        pla
        ldy     #$16
        jmp     LF2B0

LE4D9:  jsr     LF47F
        lda     $A6
        ldx     $A7
        jsr     LF47F
        ldy     #$07
        jsr     LF497
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
        jsr     LF47F
        ldy     #$09
        lda     ($80),y
        sta     $90
        dey
        lda     ($80),y
        asl     a
        rol     $90
        clc
        adc     #$D9
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
        jsr     LF469
        lda     $A2
        jsr     LF469
        lda     $A1
        jsr     LF469
        lda     $A0
        jsr     LF469
        lda     $9F
        jsr     LF469
        lda     ($A4)
        sta     $9F
        ldy     #$01
        lda     ($A4),y
        sta     $A0
        lda     #$02
        clc
        adc     $A4
        sta     $A4
        bcc     LE5C8
        inc     $A5
        bra     LE5C8
LE550:  lda     $A4
        ldx     $A5
        sta     $84
        stx     $85
        inc     a
        bne     LE55C
        inx
LE55C:  sta     $A4
        stx     $A5
        ldy     #$00
        lda     ($84)
        sta     $A3
        lda     $A3
        bne     LE582
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
        bra     LE5C8
LE582:  lda     $A4
        ldx     $A5
        sta     $84
        stx     $85
        inc     a
        bne     LE58E
        inx
LE58E:  sta     $A4
        stx     $A5
        lda     ($84)
        sta     $A2
        cmp     #$40
        bne     LE5A8
        lda     $A3
        clc
        adc     $A6
        sta     $A6
        tya
        adc     $A7
        sta     $A7
        bra     LE5C8
LE5A8:  stz     $A1
LE5AA:  lda     $A1
        cmp     $A3
        bcs     LE5C8
        lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        inc     a
        bne     LE5BC
        inx
LE5BC:  sta     $A6
        stx     $A7
        lda     $A2
        sta     ($84),y
        inc     $A1
        bra     LE5AA
LE5C8:  lda     $A0
        bne     LE550
        tax
        pha
        tay
LE5CF:  lda     ($80),y
        sta     $9F,y
        iny
        cpy     #$09
        bne     LE5CF
        pla
        ldy     #$0F
        jmp     LF2B0

LE5DF:  jsr     LF469
        lda     #$64
        jsr     LF469
        jsr     LF319
        lda     #$00
        jsr     LF469
        jsr     LF469
        ldy     #$0A
        lda     ($80),y
        jsr     LF469
        bra     LE662
LE5FB:  lda     ($80),y
        ldy     #$0C
        eor     #$FF
        sec
        adc     ($80),y
        sta     ($80),y
        ldy     #$01
        lda     ($80),y
        inc     a
        sta     ($80),y
LE60D:  ldy     #$0C
        ldx     #$00
        lda     ($80),y
        ldy     #$07
        cmp     ($80),y
        bcs     LE5FB
        ldy     #$01
        lda     ($80),y
        bne     LE624
        iny
        lda     ($80),y
        beq     LE64E
LE624:  ldy     #$02
        lda     ($80),y
        pha
        inc     a
        sta     ($80),y
        pla
        clc
        adc     #$03
        bcc     LE634
        inx
        clc
LE634:  adc     $80
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
LE64E:  ldy     #$01
        sta     ($80),y
        ldy     #$07
        lda     ($80),y
        jsr     LF47D
        lda     #$0A
        jsr     LF50F
        ldy     #$07
        sta     ($80),y
LE662:  ldy     #$07
        lda     ($80),y
        bne     LE60D
        ldy     #$02
        lda     ($80),y
        bne     LE691
        tax
        lda     ($80),y
        pha
        inc     a
        sta     ($80),y
        pla
        clc
        adc     #$03
        bcc     LE67D
        inx
        clc
LE67D:  adc     $80
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
LE691:  lda     $80
        ldx     $81
        clc
        adc     #$03
        bcc     LE69B
        inx
LE69B:  ldy     #$02
        sta     $88
        stx     $89
        lda     ($80),y
        tay
        lda     #$00
        sta     ($88),y
        jsr     LF326
        lda     $80
        ldx     $81
        clc
        adc     #$08
        bcc     LE6B5
        inx
LE6B5:  ldy     #$03
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
        jmp     LF2B0

LE6E2:  jsr     LF30C
        jsr     LE85A
        jsr     LAE94
        jsr     LA82A
        jsr     LA9DF
        jsr     LA6DA
        jsr     LA504
        jsr     LAE23
        jsr     LC193
        jsr     LC038
        jsr     LC5F1
        jsr     LE828
        jsr     LCA7E
        jsr     LD291
LE70C:  ldy     #$01
        lda     ($80),y
        jsr     LF47D
        lda     LF59F
        sta     $89
        lda     LF59E
        sta     $88
        lda     ($88)
        jsr     LF34D
        beq     LE73F
        lda     LF59F
        sta     $89
        lda     LF59E
        sta     $88
        lda     ($88)
        ldy     #$01
        sta     ($80),y
        lda     LFE38
        ora     LFE39
        bne     LE73F
        jsr     LE888
LE73F:  lda     LF59B
        sta     $89
        lda     LF59A
        sta     $88
        lda     ($88)
        ldy     #$02
        sta     ($80),y
        lda     ($80),y
        beq     LE70C
        jsr     LC023
        lda     LFE38
        ora     LFE39
        bne     LE767
        ldy     #$02
        lda     ($80),y
        jsr     L99C2
        bra     LE76E
LE767:  ldy     #$02
        lda     ($80),y
        jsr     L9DAC
LE76E:  sta     ($80)
        jsr     LC038
        lda     ($80)
        and     #$01
        beq     LE77C
        jsr     LD88F
LE77C:  lda     ($80)
        and     #$04
        beq     LE785
        jsr     LEC59
LE785:  lda     ($80)
        and     #$02
        beq     LE78E
        jsr     LD654
LE78E:  lda     ($80)
        and     #$08
        beq     LE797
        jsr     LCA7E
LE797:  lda     ($80)
        and     #$10
        beq     LE7A0
        jsr     LD291
LE7A0:  lda     ($80)
        and     #$20
        beq     LE7A9
        jsr     LDA53
LE7A9:  lda     ($80)
        and     #$40
        beq     LE7B2
        jsr     LEE8B
LE7B2:  lda     ($80)
        and     #$80
        bne     LE7BB
        jmp     LE70C

LE7BB:  jsr     LDCDE
        jmp     LE70C

LE7C1:  lda     LFE3A
        ldx     LFE3B
        jsr     LF2CB
        jsr     LF2BD
        eor     LFE3A
        pha
        txa
        eor     LFE3B
        tax
        pla
        sta     LFE3A
        stx     LFE3B
        sta     $88
        stx     $89
        lda     LFE3B
        lsr     a
        eor     $88
        pha
        lda     #$00
        eor     $89
        tax
        pla
        sta     LFE3A
        stx     LFE3B
        sta     $88
        stx     $89
        lda     #$00
        eor     $88
        pha
        lda     LFE3A
        eor     $89
        tax
        pla
        sta     LFE3A
        stx     LFE3B
        rts

LE80B:  jsr     LE7C1
        and     #$01
        ldx     #$00
        rts

LE813:  jsr     LF469
        jsr     LE7C1
        jsr     LF47F
        ldy     #$02
        lda     ($80),y
        jsr     LF55E
        ldx     #$00
        jmp     LF37B

LE828:  stz     $0202
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
        jsr     LEC59
        ldx     #$00
        txa
        rts

LE85A:  lda     LF593
        sta     $89
        lda     LF592
        sta     $88
        lda     #$00
        sta     ($88)
        lda     LF595
        sta     $89
        lda     LF594
        sta     $88
        lda     #$04
        sta     ($88)
        lda     LF597
        sta     $89
        lda     LF596
        sta     $88
        lda     #$02
        sta     ($88)
        ldx     #$00
        txa
        rts

LE888:  lda     #$00
        jsr     LF469
        lda     $0206
        jsr     LF469
        lda     $020C
        jsr     LF469
        jsr     LF2F6
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
        bne     LE8C0
        jmp     LEC04

LE8C0:  lda     $0225
        cmp     #$03
        beq     LE8CA
        jmp     LEA3C

LE8CA:  lda     $020C
        cmp     $021A
        bcs     LE8D5
        jmp     LEC04

LE8D5:  lda     $0250
        beq     LE8E3
        lda     #$05
        jsr     LE813
        cmp     #$00
        beq     LE8EF
LE8E3:  lda     $021A
        eor     #$FF
        sec
        adc     $020C
        sta     $020C
LE8EF:  lda     $0229
        ldx     $022A
        inc     a
        bne     LE8F9
        inx
LE8F9:  sta     $0229
        stx     $022A
        lda     #$01
        ldy     #$03
        sta     ($80),y
        lda     $022B
        ldx     $022C
        cpx     $022A
        beq     LE913
        jmp     LEC04

LE913:  cmp     $0229
        beq     LE91B
        jmp     LEC04

LE91B:  ldx     #$00
        lda     $0226
        jsr     LF2BD
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
        bne     LE942
        cmp     #$00
        bne     LE944
        inc     $021F
        bra     LE98E
LE942:  ldx     #$00
LE944:  lda     $0226
        jsr     LF2BD
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
        bne     LE968
        cmp     #$01
        bne     LE96A
        inc     $0220
        bra     LE98E
LE968:  ldx     #$00
LE96A:  lda     $0226
        jsr     LF2BD
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
        bne     LE98C
        cmp     #$02
        bne     LE98E
        inc     $0221
LE98C:  ldx     #$00
LE98E:  lda     $0254
        cmp     #$01
        bne     LEA0A
        lda     $0226
        jsr     LF2BD
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
        bne     LE9B9
        cmp     #$00
        bne     LE9BB
        inc     $021F
        bra     LEA03
LE9B9:  ldx     #$00
LE9BB:  lda     $0226
        jsr     LF2BD
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
        bne     LE9DF
        cmp     #$01
        bne     LE9E1
        inc     $0220
        bra     LEA03
LE9DF:  ldx     #$00
LE9E1:  lda     $0226
        jsr     LF2BD
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
        bne     LEA03
        cmp     #$02
        bne     LEA03
        inc     $0221
LEA03:  lda     #$02
        jsr     LC10A
        ldx     #$00
LEA0A:  lda     $0226
        jsr     LF2BD
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
        jmp     LEC04

LEA3C:  lda     $0225
        beq     LEA44
        jmp     LEAF5

LEA44:  lda     $020C
        cmp     $021B
        bcs     LEA4F
        jmp     LEC04

LEA4F:  lda     $021B
        eor     #$FF
        sec
        adc     $020C
        sta     $020C
        lda     $0229
        ldx     $022A
        inc     a
        bne     LEA65
        inx
LEA65:  sta     $0229
        stx     $022A
        lda     #$01
        ldy     #$03
        sta     ($80),y
        lda     $022B
        ldx     $022C
        cpx     $022A
        beq     LEA7F
        jmp     LEC04

LEA7F:  cmp     $0229
        beq     LEA87
        jmp     LEC04

LEA87:  lda     $0227
        jsr     LF47D
        lda     #$28
        jsr     LF3E2
        clc
        adc     #$90
        tay
        txa
        adc     #$04
        tax
        tya
        clc
        adc     $0226
        bcc     LEAA2
        inx
LEAA2:  sta     $88
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
        bne     LEAE9
        lda     #$04
        jsr     LE813
        cmp     #$00
        bne     LEAE9
        lda     #$03
        jsr     LE813
        sta     ($80)
        lda     ($80)
        bne     LEAD6
        inc     $0220
        bra     LEAE4
LEAD6:  lda     ($80)
        cmp     #$01
        bne     LEAE1
        inc     $021F
        bra     LEAE4
LEAE1:  inc     $0221
LEAE4:  lda     #$02
        jsr     LC10A
LEAE9:  jsr     LCA7E
        lda     #$01
        ldy     #$03
        sta     ($80),y
        jmp     LEC04

LEAF5:  lda     $0225
        cmp     #$01
        beq     LEAFF
        jmp     LEC04

LEAFF:  lda     $020C
        cmp     $0219
        bcs     LEB0A
        jmp     LEBF0

LEB0A:  lda     $0219
        eor     #$FF
        sec
        adc     $020C
        sta     $020C
        lda     $0258
        cmp     #$01
        bne     LEB2C
        lda     #$14
        jsr     LE813
        cmp     #$00
        bne     LEB2C
        stz     $0229
        stz     $022A
LEB2C:  lda     $0229
        ora     $022A
        beq     LEB76
        lda     $020F
        eor     #$FF
        sec
        adc     $0229
        sta     $0229
        lda     #$FF
        adc     $022A
        sta     $022A
        lda     #$64
        jsr     LE813
        cmp     $0215
        txa
        sbc     #$00
        bcs     LEB76
        lda     $0256
        cmp     #$01
        bne     LEB61
        lda     $020F
        bra     LEB65
LEB61:  lda     $020F
        lsr     a
LEB65:  eor     #$FF
        sec
        adc     $0229
        sta     $0229
        lda     #$FF
        adc     $022A
        sta     $022A
LEB76:  lda     $0229
        cmp     #$01
        lda     $022A
        sbc     #$00
        bvc     LEB84
        eor     #$80
LEB84:  bpl     LEBEA
        ldx     #$00
        lda     $0226
        jsr     LF441
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
        bne     LEBAC
        lda     #$0B
        bra     LEBAE
LEBAC:  lda     #$0A
LEBAE:  jsr     LC10A
        lda     #$04
        sta     $0225
        stz     $0228
        lda     $0251
        cmp     #$01
        bne     LEBE7
        lda     #$0A
        jsr     LE813
        cmp     #$00
        bne     LEBE7
        lda     #$03
        jsr     LE813
        sta     ($80)
        lda     ($80)
        bne     LEBD9
        inc     $021F
        bra     LEBE7
LEBD9:  lda     ($80)
        cmp     #$01
        bne     LEBE4
        inc     $0220
        bra     LEBE7
LEBE4:  inc     $0221
LEBE7:  jsr     LCA7E
LEBEA:  lda     #$01
        ldy     #$03
        sta     ($80),y
LEBF0:  jsr     LE80B
        tax
        beq     LEC04
        lda     $0206
        sec
        sbc     #$02
        sta     $0206
        bcs     LEC04
        dec     $0207
LEC04:  lda     $020C
        sec
        sbc     $020D
        bcc     LEC15
        beq     LEC15
        lda     $020D
        sta     $020C
LEC15:  ldy     #$01
        lda     ($80),y
        cmp     $020C
        beq     LEC23
        tya
        ldy     #$03
        sta     ($80),y
LEC23:  jsr     LC50B
        ldx     #$00
        ldy     #$02
        lda     ($80),y
        cpx     $0207
        bne     LEC36
        cmp     $0206
        beq     LEC3B
LEC36:  lda     #$01
        iny
        sta     ($80),y
LEC3B:  jsr     LF1E5
        cmp     #$01
        bne     LEC46
        ldy     #$03
        sta     ($80),y
LEC46:  ldy     #$03
        ldx     #$00
        lda     ($80),y
        cmp     #$01
        bne     LEC55
        jsr     LD291
        ldx     #$00
LEC55:  txa
        jmp     LF39D

LEC59:  lda     $0202
        clc
        adc     $0204
        jsr     LF469
        lda     $0203
        clc
        adc     $0205
        jsr     LF469
        lda     #$04
        sta     $0225
        lda     $0224
        cmp     #$01
        bne     LEC8A
        lda     $0205
        bne     LEC82
        tax
        jmp     LF38A

LEC82:  ldy     #$00
        lda     ($80)
        pha
        dec     a
        bra     LECCE
LEC8A:  lda     $0224
        cmp     #$02
        bne     LEC9F
        lda     $0205
        cmp     #$03
        bne     LEC9B
        jmp     LED8B

LEC9B:  ldy     #$00
        bra     LECCA
LEC9F:  lda     $0224
        cmp     #$03
        bne     LECB7
        lda     $0204
        bne     LECAF
        tax
        jmp     LF38A

LECAF:  ldy     #$01
        lda     ($80),y
        pha
        dec     a
        bra     LECCE
LECB7:  lda     $0224
        cmp     #$04
        bne     LECD1
        lda     $0205
        cmp     #$04
        bne     LECC8
        jmp     LED8B

LECC8:  ldy     #$01
LECCA:  lda     ($80),y
        pha
        inc     a
LECCE:  sta     ($80),y
        pla
LECD1:  ldy     #$01
        lda     ($80),y
        sta     $0226
        lda     ($80)
        sta     $0227
        lda     ($80)
        jsr     LF47D
        lda     #$28
        jsr     LF3E2
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
        bne     LED05
        ldx     #$00
        txa
        stz     $0225
        jmp     LF38A

LED05:  lda     ($80)
        jsr     LF47D
        lda     #$28
        jsr     LF3E2
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
        bne     LED2D
        ldx     #$00
        lda     #$02
        sta     $0225
        bra     LED8D
LED2D:  ldy     #$01
        lda     ($80),y
        jsr     LF469
        ldy     #$01
        lda     ($80),y
        jsr     LC4A4
        cmp     #$01
        bne     LED56
        sta     $0225
        lda     ($80)
        jsr     LF47D
        lda     #$28
        jsr     LF3E2
        clc
        adc     #$B0
        sta     $88
        txa
        adc     #$07
        bra     LED7F
LED56:  ldy     #$01
        lda     ($80),y
        jsr     LF469
        ldy     #$01
        lda     ($80),y
        jsr     LC43D
        cmp     #$01
        bne     LED8B
        lda     #$03
        sta     $0225
        lda     ($80)
        jsr     LF47D
        lda     #$28
        jsr     LF3E2
        clc
        adc     #$D0
        sta     $88
        txa
        adc     #$0A
LED7F:  sta     $89
        ldy     #$01
        lda     ($80),y
        tay
        lda     ($88),y
        sta     $0226
LED8B:  ldx     #$00
LED8D:  txa
        jmp     LF38A

        jsr     LF47F
        lda     $A6
        ldx     $A7
        jsr     LF47F
        ldy     #$05
        lda     ($80),y
        sta     $90
        dey
        lda     ($80),y
        asl     a
        rol     $90
        clc
        adc     #$D9
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
        jsr     LF47F
        ldy     #$05
        lda     ($80),y
        sta     $90
        dey
        lda     ($80),y
        asl     a
        rol     $90
        clc
        adc     #$D9
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
        jsr     LF469
        lda     $A2
        jsr     LF469
        jsr     LF2FF
        lda     ($A4)
        lsr     a
        lsr     a
        lsr     a
        sta     $A3
        lda     ($A4)
        jsr     LF47D
        lda     $A3
        jsr     LF2BD
        jsr     LF4EF
        cpx     #$00
        bne     LEE0F
        cmp     #$00
        beq     LEE11
LEE0F:  inc     $A3
LEE11:  ldy     #$01
        lda     ($A4),y
        sta     $A2
        lda     #$00
        sta     ($80)
        ldy     #$01
        sta     ($80),y
LEE1F:  jsr     LF495
        lda     $A3
        jsr     LF47D
        lda     $A2
        jsr     LF3E2
        clc
        adc     #$03
        bcc     LEE32
        inx
LEE32:  jsr     LF34F
        bcs     LEE75
        lda     $A6
        ldx     $A7
        sta     $84
        stx     $85
        inc     a
        bne     LEE43
        inx
LEE43:  sta     $A6
        stx     $A7
        lda     $84
        ldx     $85
        jsr     LF47F
        lda     $A4
        ldx     $A5
        sta     $84
        stx     $85
        inc     a
        bne     LEE5A
        inx
LEE5A:  sta     $A4
        stx     $A5
        ldy     #$00
        lda     ($84)
        jsr     LF4B1
        ldy     #$01
        lda     ($80),y
        tax
        lda     ($80)
        inc     a
        bne     LEE70
        inx
LEE70:  jsr     LF4C7
        bra     LEE1F
LEE75:  ldx     #$00
        txa
        pha
        ldy     #$02
LEE7B:  lda     ($80),y
        sta     $A0,y
        iny
        cpy     #$08
        bne     LEE7B
        pla
        ldy     #$0C
        jmp     LF2B0

LEE8B:  jsr     LF30C
        ldy     #$02
LEE90:  lda     LFE24,y
        sta     ($80),y
        dey
        bpl     LEE90
        jsr     LF30C
        ldy     #$02
LEE9D:  lda     LFE27,y
        sta     ($80),y
        dey
        bpl     LEE9D
        jsr     LF30C
        ldy     #$02
LEEAA:  lda     LFE2A,y
        sta     ($80),y
        dey
        bpl     LEEAA
        jsr     LF30C
        ldy     #$02
LEEB7:  lda     LFE2D,y
        sta     ($80),y
        dey
        bpl     LEEB7
        jsr     LF2FF
        lda     #$4C
        jsr     LF469
        jsr     LF326
        ldy     #$01
LEECC:  lda     LFE30,y
        sta     ($80),y
        dey
        bpl     LEECC
        jsr     LF319
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
LEEF7:  lda     ($80),y
        cmp     #$03
        bcc     LEF00
        .byte   $4C
        .byte   $E5
LEEFF:  .byte   $F0
LEF00:  jsr     LF319
        lda     #$09
        ldy     #$03
        sta     ($80),y
        lda     $80
        ldx     $81
        clc
        adc     #$0F
        bcc     LEF13
        inx
LEF13:  ldy     #$0B
        clc
        adc     ($80),y
        bcc     LEF1B
        inx
LEF1B:  sta     $88
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
        bcc     LEF38
        inx
LEF38:  ldy     #$0B
        clc
        adc     ($80),y
        bcc     LEF40
        inx
LEF40:  sta     $88
        stx     $89
        lda     ($88)
        jsr     LDC59
        lda     #$00
        ldy     #$06
LEF4D:  sta     ($80),y
        cmp     #$05
        bcc     LEF56
        jmp     LF0DA

LEF56:  iny
        ldx     #$00
        lda     ($80),y
        jsr     LF42D
        sta     $88
        stx     $89
        dey
        lda     ($80),y
        clc
        adc     $88
        ldx     $89
        bcc     LEF6D
        inx
LEF6D:  sta     $88
        txa
        clc
        adc     #$02
        sta     $89
        ldy     #$50
        lda     ($88),y
        cmp     #$01
        bne     LEFE2
        jsr     LF319
        ldy     #$09
        lda     ($80),y
        ldy     #$03
        sta     ($80),y
        ldy     #$0A
        lda     ($80),y
        jsr     LF47D
        lda     #$1C
        jsr     LF3E2
        clc
        adc     #$0B
        ldy     #$02
        sta     ($80),y
        ldy     #$0B
        lda     ($80),y
        jsr     LF47D
        lda     #$1E
        jsr     LF3E2
        clc
        adc     #$20
        ldy     #$01
        sta     ($80),y
        lda     $80
        ldx     $81
        clc
        adc     #$15
        bcc     LEFB8
        inx
LEFB8:  ldy     #$0B
        clc
        adc     ($80),y
        bcc     LEFC0
        inx
LEFC0:  sta     $88
        stx     $89
        lda     ($88)
        sta     ($80)
        lda     $80
        ldx     $81
        clc
        adc     #$12
        bcc     LEFD2
        inx
LEFD2:  ldy     #$0B
        clc
        adc     ($80),y
        bcc     LEFDA
        inx
LEFDA:  sta     $88
        stx     $89
        lda     ($88)
        bra     LF019
LEFE2:  jsr     LF319
        ldy     #$09
        lda     ($80),y
        ldy     #$03
        sta     ($80),y
        ldy     #$0A
        lda     ($80),y
        jsr     LF47D
        lda     #$1C
        jsr     LF3E2
        clc
        adc     #$0B
        ldy     #$02
        sta     ($80),y
        ldy     #$0B
        lda     ($80),y
        jsr     LF47D
        lda     #$1E
        jsr     LF3E2
        clc
        adc     #$20
        ldy     #$01
        sta     ($80),y
        lda     #$15
        sta     ($80)
        lda     #$2A
LF019:  jsr     LE313
        ldy     #$06
        lda     ($80),y
        cmp     LFE34
        beq     LF028
        jmp     LF0CC

LF028:  iny
        lda     ($80),y
        cmp     LFE35
        beq     LF033
        jmp     LF0CC

LF033:  jsr     LF319
        lda     #$44
        ldy     #$02
        sta     ($80),y
        iny
        lda     #$00
        sta     ($80),y
        ldy     #$0A
        lda     ($80),y
        jsr     LF47D
        lda     #$1C
        jsr     LF3E2
        clc
        adc     #$0B
        bcc     LF053
        inx
LF053:  sta     ($80)
        ldy     #$01
        txa
        sta     ($80),y
        ldy     #$0B
        lda     ($80),y
        jsr     LF47D
        lda     #$1E
        jsr     LF3E2
        clc
        adc     #$20
        bcc     LF06C
        inx
LF06C:  jsr     LE20D
        ldy     #$07
        ldx     #$00
        lda     ($80),y
        jsr     LF42D
        sta     $88
        dey
        lda     ($80),y
        clc
        adc     $88
        ldy     #$02
        sta     ($80),y
        tay
        lda     $0250,y
        bne     LF0CC
        lda     LFE34
        beq     LF0AB
        ldy     #$02
        ldx     #$00
        lda     ($80),y
        sec
        sbc     #$01
        bcs     LF09B
        dex
LF09B:  sta     $88
        txa
        clc
        adc     #$02
        sta     $89
        ldy     #$50
        lda     ($88),y
        cmp     #$01
        bne     LF0CC
LF0AB:  jsr     LF326
        lda     #$7D
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
LF0CC:  ldy     #$05
        lda     ($80),y
        inc     a
        sta     ($80),y
        iny
        lda     ($80),y
        inc     a
        jmp     LEF4D

LF0DA:  iny
        ldx     #$00
        lda     ($80),y
        inc     a
        sta     ($80),y
        jmp     LEEF7

LF0E5:  lda     LFE35
        jsr     LF42D
        clc
        adc     LFE34
        bcc     LF0F2
        inx
LF0F2:  stx     $90
        asl     a
        rol     $90
        clc
        adc     #$9D
        sta     $88
        lda     $90
        adc     #$F8
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        ldy     #$03
        jsr     LF4C9
        lda     #$00
        ldy     #$07
        bra     LF11B
LF114:  ldy     #$07
        clc
        lda     #$06
        adc     ($80),y
LF11B:  sta     ($80),y
        ldy     #$04
        lda     ($80),y
        tax
        dey
        lda     ($80),y
        sta     $84
        stx     $85
        inc     a
        bne     LF12D
        inx
LF12D:  jsr     LF4C9
        lda     ($84)
        bne     LF114
        jsr     LF326
        ldx     #$00
        lda     LFE35
        jsr     LF42D
        clc
        adc     LFE34
        bcc     LF146
        inx
LF146:  stx     $90
        asl     a
        rol     $90
        clc
        adc     #$9D
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
        bcc     LF187
        inx
LF187:  ldy     LFE35
        sta     $88
        stx     $89
        lda     ($88),y
        jsr     LDF7D
        jsr     LF333
        ldx     #$00
        lda     LFE35
        jsr     LF42D
        clc
        adc     LFE34
        bcc     LF1A5
        inx
LF1A5:  stx     $90
        asl     a
        rol     $90
        clc
        adc     #$BB
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
        jmp     LF2B0

LF1E5:  ldx     #$00
        lda     $0203
        clc
        adc     $0205
        bcc     LF1F1
        inx
LF1F1:  jsr     LF47F
        lda     #$28
        jsr     LF3E2
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
        bcc     LF210
        inx
        clc
LF210:  adc     $88
        sta     $88
        txa
        adc     $89
        sta     $89
        ldx     #$00
        lda     ($88)
        cmp     #$05
        bne     LF240
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

LF240:  lda     $0203
        clc
        adc     $0205
        bcc     LF24A
        inx
LF24A:  jsr     LF47F
        lda     #$28
        jsr     LF3E2
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
        bcc     LF269
        inx
        clc
LF269:  adc     $88
        sta     $88
        txa
        adc     $89
        sta     $89
        ldx     #$00
        lda     ($88)
        cmp     #$06
        bne     LF291
        jsr     LC04D
        jsr     LA9DF
        jsr     LA6DA
        jsr     LA504
        jsr     LC057
        jsr     LE828
        ldx     #$00
        lda     #$01
        rts

LF291:  txa
        rts

        ldx     #$00
LF295:  clc
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
        bcc     LF2AC
        inc     $81
LF2AC:  lda     $90
        rts

LF2AF:  iny
LF2B0:  pha
        clc
        tya
        adc     $80
        sta     $80
        bcc     LF2BB
        inc     $81
LF2BB:  pla
        rts

LF2BD:  stx     $90
        asl     a
        rol     $90
        asl     a
        rol     $90
        asl     a
        rol     $90
        ldx     $90
        rts

LF2CB:  stx     $90
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
        bne     LF2E6
        tax
        bne     LF2E6
        lda     #$01
        rts

LF2E6:  ldx     #$00
        txa
        rts

LF2EA:  ldy     #$00
        beq     LF2F5
        lda     #$32
        ldx     #$FE
        jmp     LFE3C

LF2F5:  rts

LF2F6:  ldy     $80
        bne     LF2FC
        dec     $81
LF2FC:  dec     $80
        rts

LF2FF:  lda     $80
        sec
        sbc     #$02
        sta     $80
        bcc     LF309
        rts

LF309:  dec     $81
        rts

LF30C:  lda     $80
        sec
        sbc     #$03
        sta     $80
        bcc     LF316
        rts

LF316:  dec     $81
        rts

LF319:  lda     $80
        sec
        sbc     #$04
        sta     $80
        bcc     LF323
        rts

LF323:  dec     $81
        rts

LF326:  lda     $80
        sec
        sbc     #$05
        sta     $80
        bcc     LF330
        rts

LF330:  dec     $81
        rts

LF333:  lda     $80
        sec
        sbc     #$06
        sta     $80
        bcc     LF33D
        rts

LF33D:  dec     $81
        rts

LF340:  lda     $80
        sec
        sbc     #$07
        sta     $80
        bcc     LF34A
        rts

LF34A:  dec     $81
        rts

LF34D:  ldx     #$00
LF34F:  sta     $82
        stx     $83
        ldy     #$00
        lda     ($80),y
        tax
        inc     $80
        bne     LF35E
        inc     $81
LF35E:  lda     ($80),y
        inc     $80
        bne     LF366
        inc     $81
LF366:  sec
        sbc     $83
        bne     LF374
        cpx     $82
        beq     LF373
        adc     #$FF
        ora     #$01
LF373:  rts

LF374:  bvc     LF373
        eor     #$FF
        ora     #$01
        rts

LF37B:  inc     $80
        bne     LF381
        inc     $81
LF381:  rts

        ldy     #$01
        lda     ($80),y
        tax
        dey
        lda     ($80),y
LF38A:  inc     $80
        beq     LF393
        inc     $80
        beq     LF395
        rts

LF393:  inc     $80
LF395:  inc     $81
        rts

LF398:  ldy     #$03
        jmp     LF2B0

LF39D:  ldy     #$04
        jmp     LF2B0

LF3A2:  ldy     #$05
        jmp     LF2B0

LF3A7:  ldy     #$06
        jmp     LF2B0

LF3AC:  ldy     #$07
        jmp     LF2B0

LF3B1:  ldy     #$08
        jmp     LF2B0

        bne     LF3BE
LF3B8:  ldx     #$00
        txa
        rts

LF3BC:  bne     LF3B8
LF3BE:  ldx     #$00
        lda     #$01
        rts

        beq     LF3BE
        bmi     LF3BE
        ldx     #$00
        txa
        rts

        beq     LF3CF
        bpl     LF3BE
LF3CF:  ldx     #$00
        txa
        rts

        beq     LF3BE
        bcc     LF3BE
        ldx     #$00
        txa
        rts

        beq     LF3B8
        ldx     #$00
        txa
        rol     a
        rts

LF3E2:  sta     $8E
        jsr     LF457
        tya
        ldy     #$08
        ldx     $89
        beq     LF40B
        sta     $8F
        lsr     $8E
LF3F2:  bcc     LF3FF
        clc
        adc     $88
        tax
        lda     $89
        adc     $8F
LF3FC:  sta     $8F
        txa
LF3FF:  ror     $8F
        ror     a
        ror     $8E
        dey
        bne     LF3F2
        tax
        lda     $8E
        rts

LF40B:  lsr     $8E
LF40D:  bcc     LF412
        clc
        adc     $88
LF412:  ror     a
        ror     $8E
        dey
        bne     LF40D
        tax
        lda     $8E
        rts

LF41C:  sta     $88
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

LF42D:  sta     $88
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

LF441:  sta     $88
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

LF457:  ldy     #$01
        lda     ($80),y
        sta     $89
        dey
        lda     ($80),y
        sta     $88
        jmp     LF38A

        ldy     #$00
        lda     ($80),y
LF469:  ldy     $80
        beq     LF474
        dec     $80
        ldy     #$00
        sta     ($80),y
        rts

LF474:  dec     $81
        dec     $80
        sta     ($80),y
        rts

        lda     #$00
LF47D:  ldx     #$00
LF47F:  pha
        lda     $80
        sec
        sbc     #$02
        sta     $80
        bcs     LF48B
        dec     $81
LF48B:  ldy     #$01
        txa
        sta     ($80),y
        pla
        dey
        sta     ($80),y
        rts

LF495:  ldy     #$03
LF497:  lda     $80
        sec
        sbc     #$02
        sta     $80
        bcs     LF4A2
        dec     $81
LF4A2:  lda     ($80),y
        tax
        dey
        lda     ($80),y
        ldy     #$00
        sta     ($80),y
        iny
        txa
        sta     ($80),y
        rts

LF4B1:  pha
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
        jmp     LF38A

LF4C7:  ldy     #$00
LF4C9:  sta     ($80),y
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
        jmp     LF38A

        ldx     #$00
LF4EF:  sec
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
        jmp     LF2AF

        tya
        eor     #$FF
        sec
        adc     $80
        sta     $80
        bcs     LF50E
        dec     $81
LF50E:  rts

LF50F:  ldx     #$00
        sta     $8E
        stx     $8F
        jsr     LF457
        jsr     LF520
        lda     $88
        ldx     $89
        rts

LF520:  lda     #$00
        sta     $83
        ldy     #$10
        ldx     $8F
        beq     LF549
LF52A:  asl     $88
        rol     $89
        rol     a
        rol     $83
        tax
        cmp     $8E
        lda     $83
        sbc     $8F
        bcc     LF542
        sta     $83
        txa
        sbc     $8E
        tax
        inc     $88
LF542:  txa
        dey
        bne     LF52A
        sta     $82
        rts

LF549:  asl     $88
        rol     $89
        rol     a
        bcs     LF554
        cmp     $8E
        bcc     LF558
LF554:  sbc     $8E
        inc     $88
LF558:  dey
        bne     LF549
        sta     $82
        rts

LF55E:  ldx     #$00
        sta     $8E
        stx     $8F
        jsr     LF457
        jsr     LF520
        lda     $82
        ldx     $83
        rts

LF56F:  lda     #$00
        sta     $88
        lda     #$02
        sta     $89
        lda     #$00
        tay
        ldx     #$33
        beq     LF588
LF57E:  sta     ($88),y
        iny
        bne     LF57E
        inc     $89
        dex
        bne     LF57E
LF588:  cpy     #$92
        beq     LF591
        sta     ($88),y
        iny
        bne     LF588
LF591:  rts

LF592:  .byte   $E0
LF593:  .byte   $FF
LF594:  .byte   $E1
LF595:  .byte   $FF
LF596:  .byte   $E2
LF597:  .byte   $FF
        .byte   $E3
LF599:  .byte   $FF
LF59A:  .byte   $E4
LF59B:  .byte   $FF
        .byte   $E5
LF59D:  .byte   $FF
LF59E:  .byte   $E6
LF59F:  .byte   $FF
LF5A0:  .byte   $E7
LF5A1:  .byte   $FF
LF5A2:  inx
LF5A3:  .byte   $FF
LF5A4:  .byte   $E9
LF5A5:  .byte   $FF
        nop
LF5A7:  bbs7    $EB,$F5A9
        .byte   $EC
LF5AB:  bbs7    $ED,$F5AD
        inc     a:$FF
        .byte   $02
LF5B2:  brk
LF5B3:  rti

LF5B4:  brk
        bra     LF5B7
LF5B7:  cpy     #$F0
        ora     $0DFB
        ora     $0E
        bpl     LF5CE
        inc     a
        asl     $0E24
        bbr2    $0E,LF5FF
        asl     $0E42
        eor     $560E
        .byte   $0E
LF5CE:  adc     ($0E,x)
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
LF5FF:  ora     $05
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
        bbr0    $00,LF614
        .byte   $03
        brk
        .byte   $0C
        .byte   $05
LF614:  trb     $09
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
        bbr0    $00,LF66E
        .byte   $03
        ora     ($0C,x)
        .byte   $02
LF66E:  tsb     $0B
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
        bbr0    $02,LF69B
        .byte   $03
        .byte   $02
        .byte   $0C
        .byte   $05
LF69B:  asl     a:$0C,x
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
        bvc     LF6F4
        stz     $6F,x
        bit     $66
        adc     $6C,x
        jmp     (L2B00)

        and     ($20),y
        pha
        bvc     LF6E2
LF6E2:  eor     ($65)
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
LF6F4:  stz     $6F,x
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
        bvs     LF72C
        bvs     LF77D
        adc     #$6E
        stz     $00,x
        .byte   $2B
        and     ($20),y
        .byte   $44
        adc     a:$67
        wai
        inc     $DC,x
        inc     $E2,x
        inc     $FC,x
        inc     $04,x
        smb7    $12
        smb7    $0E
        ora     ($00,x)
        brk
        asl     a:$0A
LF72C:  ora     ($0E,x)
        ora     ($01,x)
        .byte   $02
        asl     $010A
        .byte   $03
        asl     $0201
        tsb     $0E
        asl     a
        .byte   $02
        ora     $EA
        sbc     $F1,x
        sbc     $F8,x
        sbc     $01,x
        inc     $0C,x
        inc     $17,x
        inc     $1E,x
        inc     $25,x
        inc     $2E,x
        inc     $39,x
        inc     $44,x
        inc     $4B,x
        inc     $52,x
        inc     $5B,x
        inc     $66,x
        inc     $71,x
        inc     $78,x
        inc     $7F,x
        inc     $88,x
        inc     $93,x
        inc     $9E,x
        inc     $A5,x
        inc     $AC,x
        inc     $B5,x
        inc     $C0,x
        inc     $25,x
        smb7    $29
        smb7    $2D
        smb7    $31
        smb7    $35
        smb7    $39
        smb7    $2B
        .byte   $24
LF77D:  jsr     L6142
        stz     $74,x
        brk
        .byte   $2B
        bit     $20
        pha
        bvc     LF789
LF789:  .byte   $2B
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
        bbr6    L0073,LF860
        brk
        and     $3035
        and     $20
        .byte   $43
        bbr6    L0073,LF86A
        brk
        .byte   $7B
        smb7    $83
        smb7    $89
        smb7    $90
        smb7    $99
        smb7    $A1
        smb7    $AA
        smb7    $B3
        smb7    $BD
        smb7    $C6
        smb7    $D0
        smb7    $D8
        smb7    $E3
        smb7    $ED
        .byte   $F7
LF813:  bmi     LF818
        ora     ($17,x)
        .byte   $17
LF818:  ora     ($0B,x)
        and     ($32)
        bmi     LF821
        .byte   $03
        ora     ($17,x)
LF821:  ora     $0A02
        .byte   $02
        bbr0    $02,LF828
LF828:  brk
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
        bvc     LF87A
        jsr     L2020
        bit     $00
        .byte   $42
        adc     ($74,x)
        stz     $3A,x
        jsr     L0024
        .byte   $44
        adc     $3A67
        .byte   $20
LF852:  jsr     L0024
        .byte   $43
        adc     ($69)
        stz     $3A,x
        jsr     L2524
        brk
        .byte   $4D
        .byte   $69
LF860:  ror     $3A65
        jsr     L7324
        brk
        .byte   $44
        adc     ($69)
LF86A:  jmp     (L3A6C)

        bit     L0073
        brk
        jmp     L7661

        adc     ($3A,x)
LF875:  jsr     L242D
        and     $00
LF87A:  .byte   $03
        bmi     LF87E
        .byte   $01
LF87E:  rmb1    $32
        .byte   $0B
        and     $45F8,x
        sed
        .byte   $4D
        sed
LF887:  eor     $F8,x
        lsr     $67F8,x
        sed
        bvs     LF887
        brk
        brk
        ora     $0F02
        .byte   $02
        ora     $02,x
        ora     ($02),y
        .byte   $12
LF89A:  .byte   $02
        .byte   $13
        .byte   $02
        smb6    $0E
        sbc     $0E,x
        .byte   $03
        bbr0    $0F,LF8B4
        ora     $2A0F,x
        bbr0    $35,LF8BA
        bbr3    $0F,LF8F9
        bbr0    $55,LF8C0
LF8B1:  .byte   $5B
        .byte   $0F
        .byte   $66
LF8B4:  bbr0    L0073,LF8C6
LF8B7:  bra     LF8C8
        .byte   $8E
LF8BA:  bbr0    $9B,LF8CC
        smb4    $0F
        .byte   $F4
LF8C0:  bbr0    $0B,LF8D3
        and     ($10)
        .byte   $47
LF8C6:  bpl     LF92B
LF8C8:  bpl     LF852
        bpl     LF875
LF8CC:  bpl     LF89A
        bpl     LF8B1
        bpl     LF8DE
        .byte   $11
LF8D3:  bbr2    $11,LF919
        ora     ($78),y
        ora     ($8D),y
        ora     ($43),y
        ora     ($FD)
LF8DE:  ora     ($B3)
        .byte   $13
        adc     $2314
        ora     $D9,x
        ora     $03,x
        clc
        and     $571A
        trb     $1E59
        .byte   $5B
        jsr     L210D
        bbs1    $21,LF937
        .byte   $22
        lda     ($22),y
LF8F9:  bbr0    $23,LF907
        sty     $BD
        sty     $4F
        sta     $F1
        sta     $61
        stx     $BF
        .byte   $86
LF907:  cmp     ($88,x)
        .byte   $C3
        txa
        sbc     $A38C
        sta     $8F41
        .byte   $F3
        bcc     LF8B7
        sta     ($65),y
        sta     ($E8)
        .byte   $92
LF919:  asl     $6993,x
        .byte   $93
        cpx     $3293
        sty     $0F,x
        sty     $55,x
        sty     $78,x
        sty     $9B,x
        sty     $BE,x
        .byte   $94
LF92B:  ora     #$95
        .byte   $54
        sta     $9F,x
LF930:  sta     $EA,x
        sta     $35,x
        stx     $80,y
        .byte   $96
LF937:  wai
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
LF955:  ora     ($2A)
        bcs     LF984
        .byte   $62
        and     $2E12
        .byte   $D4
        rol     $2F57
        sta     LD82F
        bbr2    $5B,LF997
        ror     $A130,x
        bmi     LF930
        bmi     LF955
        bmi     LF97A
        and     ($2D),y
        and     ($78),y
        and     ($C3),y
        and     ($0E),y
        and     ($59)
LF97A:  and     ($A4)
        and     ($EF)
        and     ($3A)
        .byte   $33
        sta     $33
        .byte   $D0
LF984:  .byte   $33
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
LF997:  tsb     $04
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
        bbr1    $0A,LF9CB
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
LF9CB:  brk
        brk
        brk
        brk
        tsb     $02
        ora     ($01,x)
        ora     ($02,x)
        tsb     $00
        tsb     $08
        bpl     LF9EB
        bpl     LF9E5
        tsb     $00
        brk
        tsb     $15
        asl     $0415
LF9E5:  brk
        brk
        brk
        tsb     $04
        .byte   $1F
LF9EB:  tsb     $04
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
        bbr1    $00,LF9FD
LF9FD:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     $06
        brk
        brk
        bpl     LFA12
        tsb     $02
        ora     ($00,x)
        brk
        asl     $1911
LFA12:  ora     $13,x
        ora     ($0E),y
        brk
        tsb     $06
        tsb     $04
        tsb     $04
        asl     $0E00
        ora     ($10),y
        php
        tsb     $02
        bbr1    $00,LFA47
        php
        tsb     $08
        bpl     LFA3E
        asl     $0800
        tsb     $090A
        bbr1    $08,LFA3E
        brk
        bbr1    $01,LFA49
        bpl     LFA4C
        ora     ($0E),y
LFA3E:  brk
        tsb     $0102
        bbr0    $11,LFA56
        .byte   $0E
        brk
LFA47:  .byte   $1F
        .byte   $10
LFA49:  php
        tsb     $02
LFA4C:  .byte   $02
        .byte   $02
        brk
        asl     $1111
        asl     $1111
        .byte   $0E
LFA56:  brk
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
        bbr1    $00,LFA9B
        brk
        brk
        brk
        .byte   $02
        tsb     $08
        bpl     LFA8C
        tsb     $02
        brk
        asl     $1011
        php
        .byte   $04
LFA8C:  brk
        tsb     $00
        asl     $1011
        asl     $15,x
        ora     $0E,x
        brk
        tsb     $0A
        ora     ($11),y
LFA9B:  bbr1    $11,LFAAF
        brk
        bbr0    $11,LFAB3
        bbr1    $11,LFAB6
        bbr0    $00,LFAB6
        ora     ($01),y
        ora     ($01,x)
        ora     ($0E),y
        brk
LFAAF:  rmb0    $09
        ora     ($11),y
LFAB3:  ora     ($09),y
        .byte   $07
LFAB6:  brk
        bbr1    $01,LFABB
        .byte   $0F
LFABB:  ora     ($01,x)
        bbr1    $00,LFADF
        ora     ($01,x)
        bbr0    $01,LFAC6
        .byte   $01
LFAC6:  brk
        asl     $0111
        ora     $1111,x
        asl     $1100
        ora     ($11),y
        bbr1    $11,LFAE6
        ora     ($00),y
        asl     $0404
        tsb     $04
        tsb     $0E
        brk
LFADF:  trb     $0808
        php
        php
        ora     #$06
LFAE6:  brk
        ora     ($09),y
        ora     $03
        ora     $09
        ora     ($00),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        bbr1    $00,LFB09
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
LFB09:  ora     ($11),y
        ora     ($11),y
        asl     $0F00
        ora     ($11),y
        bbr0    $01,LFB16
        .byte   $01
LFB16:  brk
        asl     $1111
        ora     ($15),y
        ora     #$16
        brk
        bbr0    $11,LFB33
        bbr0    $05,LFB2E
        ora     ($00),y
        asl     $0111
        asl     $1110
        .byte   $0E
LFB2E:  brk
        bbr1    $04,LFB36
        .byte   $04
LFB33:  tsb     $04
        .byte   $04
LFB36:  brk
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
        bbr1    $10,LFB6A
        tsb     $02
        ora     ($1F,x)
        brk
        asl     $0202
LFB6A:  .byte   $02
        .byte   $02
        .byte   $02
        asl     a:$00
        ora     ($02,x)
        tsb     $08
        bpl     LFB76
LFB76:  brk
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
        bbr1    $00,LFB91
        .byte   $02
LFB91:  tsb     $00
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
        bbr0    $00,LFBA8
LFBA8:  brk
        asl     $0111
        ora     ($0E),y
        brk
        bpl     LFBC1
        bpl     LFBD1
        ora     ($11),y
        asl     a:$00,x
        brk
        asl     $1F11
        ora     ($0E,x)
        brk
        .byte   $0C
        .byte   $12
LFBC1:  .byte   $02
        rmb0    $02
        .byte   $02
        .byte   $02
        brk
        brk
        brk
        asl     $1E11,x
        bpl     LFBDC
        brk
        ora     ($01,x)
LFBD1:  ora     ($0F,x)
        ora     ($11),y
        ora     ($00),y
        brk
        tsb     $00
        asl     $04
LFBDC:  tsb     $0E
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
        bbr0    $11,LFC33
        ora     ($01,x)
        brk
        brk
        brk
        asl     $1E11,x
        bpl     LFC2E
        brk
        brk
        brk
        ora     $0113
        ora     ($01,x)
        brk
        brk
        brk
        asl     $0E01
        bpl     LFC3D
LFC2E:  brk
        .byte   $02
        .byte   $02
        rmb0    $02
LFC33:  .byte   $02
        ora     ($0C)
        brk
        brk
        brk
        ora     ($11),y
        ora     ($19),y
LFC3D:  asl     $00,x
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
        bbr1    $08,LFC68
        .byte   $02
        bbr1    $00,LFC70
LFC68:  tsb     $04
        .byte   $02
        tsb     $04
        php
        brk
        .byte   $04
LFC70:  tsb     $04
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
        bbr3    $00,LFC9A
        eor     #$15
        lsr     a
        dec     a
        pha
LFC9A:  dec     a
        rmb4    $30
        .byte   $4B
        bbr3    $00,LFCA6
        eor     #$15
        lsr     a
        and     $48,x
LFCA6:  and     $47,x
        bbr0    $4B,LFCEA
        brk
        ora     $49
        ora     $4A,x
        jsr     L2048
        rmb4    $32
        .byte   $4B
        bbr3    $00,LFCBE
        eor     #$30
        lsr     a
        .byte   $3F
        pha
LFCBE:  bbr3    $47,LFCF1
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
        eor     ($15,x)
        .byte   $42
        .byte   $02
        ora     ($02,x)
        eor     ($03,x)
        .byte   $42
        bbr3    $02,LFCE5
LFCE3:  .byte   $43
        .byte   $15
LFCE5:  .byte   $44
        rol     a
        .byte   $02
        .byte   $02
        .byte   $43
LFCEA:  ora     $44,x
        rol     $0202
        .byte   $43
        .byte   $15
LFCF1:  .byte   $44
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
LFD11:  .byte   $03
        .byte   $02
        eor     $15
        lsr     $22
LFD17:  .byte   $03
        .byte   $02
        eor     $32
        lsr     $3F
        tsb     $01
        jmp     L042A

        ora     ($4C,x)
        .byte   $2F
LFD25:  tsb     $01
        .byte   $4C
LFD28:  bbr1    $04,LFD2C
        .byte   $4C
LFD2C:  asl     a
        tsb     $01
        jmp     L870F

        .byte   $FC
        .byte   $93
        .byte   $FC
        bbs1    $FC,LFCE3
        .byte   $FC
        smb3    $FC
        .byte   $C3
        .byte   $FC
        cmp     #$FC
        bbs4    $FC,LFD17
        .byte   $FC
        stp
        .byte   $FC
        sbc     ($FC,x)
        smb6    $FC
        sbc     LF3FC
        .byte   $FC
        sbc     $FFFC,y
        .byte   $FC
        ora     $FD
        .byte   $0B
        sbc     LFD11,x
        rmb1    $FD
        ora     $21FD,x
        sbc     LFD25,x
        and     #$FD
        and     $23FD
        sta     $992B,y
        .byte   $33
        sta     $993B,y
        rmb6    $99
        bbr6    $99,LFDB3
        sta     $994F,y
        .byte   $5B
        sta     $0C2A,y
        bmi     LFDAB
        bbr0    $17,LFDB1
        bbr1    $5B,LFDC4
        ror     $6574
        adc     ($5D)
        eor     $70,x
        rmb6    $72
        adc     ($64,x)
        adc     $00
        .byte   $5B
        eor     ($5D)
        adc     L0073
        bbr6    $75,LFE06
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
LFDAB:  .byte   $62
        bbr6    $74,LFDAF
LFDAF:  .byte   $53
        .byte   $5B
LFDB1:  .byte   $6B
        .byte   $5D
LFDB3:  adc     #$6C
        jmp     (L0073)

        bvc     LFE29
        adc     #$6E
        stz     L0073,x
        dec     a
        jsr     L4200
        adc     ($74,x)
LFDC4:  stz     $3A,x
        bit     $2F
        bit     $00
        eor     $756F,y
        jsr     L6964
        adc     $64
        brk
        .byte   $43
        bbr6    L0073,LFE4B
        dec     a
        jsr     L0024
        eor     $78
        bvs     LFE19
        bit     $2F
        bit     $00
        .byte   $43
        adc     ($79)
        .byte   $73
        stz     $61,x
        jmp     (L4800)

        bvc     LFE28
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
LFDFF:  .byte   $0B
        tsb     $0E0D
        .byte   $0F
LFE04:  rmb3    $38
LFE06:  and     $3B3A,y
LFE09:  eor     ($00,x)
LFE0B:  php
        and     $32,x
        asl     a
        rol     a
        rol     a
LFE11:  lsr     $48
        lsr     a
        rmb4    $49
        .byte   $4B
LFE17:  eor     ($00,x)
LFE19:  eor     ($00,x)
        brk
        ora     ($02,x)
        .byte   $03
        tsb     $05
        asl     $08
        .byte   $07
LFE24:  tsb     $10
        .byte   $01
LFE27:  php
LFE28:  .byte   $35
LFE29:  .byte   $17
LFE2A:  ora     $593B,x
LFE2D:  rol     $2B3A
LFE30:  eor     ($00,x)
LFE32:  brk
LFE33:  brk
LFE34:  brk
LFE35:  brk
LFE36:  brk
LFE37:  brk
LFE38:  brk
LFE39:  brk
LFE3A:  .byte   $20
LFE3B:  brk
LFE3C:  sta     LFE4A
        stx     LFE4B
        sta     LFE51
        stx     LFE52
LFE48:  dey
        .byte   $B9
LFE4A:  .byte   $FF
LFE4B:  bbs7    $8D,LFEA9
        inc     $B988,x
LFE51:  .byte   $FF
LFE52:  bbs7    $8D,LFEAF
        inc     $5D8C,x
        inc     $FF20,x
        .byte   $FF
        .byte   $A0
LFE5D:  bbs7    $D0,LFE48
        rts

; da65 V2.18 - Git 28584b3
; Created:    2020-04-27 23:38:50
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
LF1E5           := $F1E5
LF295           := $F295
LF2B0           := $F2B0
LF2BD           := $F2BD
LF2E0           := $F2E0
LF2F6           := $F2F6
LF2FF           := $F2FF
LF30C           := $F30C
LF319           := $F319
LF326           := $F326
LF34D           := $F34D
LF34F           := $F34F
LF37B           := $F37B
LF398           := $F398
LF39D           := $F39D
LF3A7           := $F3A7
LF3E2           := $F3E2
LF42D           := $F42D
LF441           := $F441
LF469           := $F469
LF47B           := $F47B
LF47D           := $F47D
LF47F           := $F47F
LF4B1           := $F4B1
LF4C7           := $F4C7
LF4C9           := $F4C9
LF4D2           := $F4D2
LF502           := $F502
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
        jsr     LF47F
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
LD98C:  jsr     LF4C9
        lda     $84
        ldx     $85
        jsr     LF47F
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
LD9A6:  jsr     LF4C9
        ldy     #$00
        lda     ($84)
        jsr     LF4B1
LD9B0:  ldy     #$01
        lda     ($80),y
        sta     $89
        lda     ($80)
        sta     $88
        lda     ($88)
        bne     LD97C
        tax
        jmp     LF39D

        jsr     LF469
        jsr     LF2FF
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
LD9E9:  sta     $FE38
        stz     $FE39
LD9EF:  lda     $FE38
        ora     $FE39
        beq     LD9FE
        ldx     #$00
        lda     #$03
        jmp     LF398

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
LDA4F:  jsr     LF47F
        lda     #$28
        jsr     LF3E2
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
        jsr     LF469
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

LDACF:  jsr     LF1E5
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
LDB16:  jsr     LF47F
        lda     #$28
        jsr     LF3E2
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
        jsr     LF469
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

LDB94:  jsr     LF1E5
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
LDBEB:  jsr     LF47F
        lda     #$28
        jsr     LF3E2
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
        jsr     LF469
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

LDC6F:  jsr     LF1E5
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
LDCC2:  jsr     LF47F
        lda     #$28
        jsr     LF3E2
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
        jsr     LF469
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
        jsr     LF1E5
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
        jmp     LF398

LDDA7:  lda     #$1C
        jmp     LF398

        jsr     LF469
        jsr     LF326
        lda     #$00
        jsr     LF469
        jsr     LF469
        jsr     LF30C
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
        stz     $FE38
        stz     $FE39
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
LDDFA:  sta     $FE38
        stz     $FE39
        ldy     #$03
        lda     ($80),y
        ora     #$02
        sta     ($80),y
LDE08:  lda     $FE39
        beq     LDE10
        jmp     L9F6B

LDE10:  lda     $FE38
        cmp     #$01
        beq     LDE1A
        jmp     L9F6B

LDE1A:  ldy     #$0A
        lda     ($80),y
        cmp     #$77
        bne     LDE38
        lda     $FE33
        bne     LDE2A
        jmp     LA4CB

LDE2A:  dec     $FE33
        ldy     #$03
        lda     ($80),y
        ora     #$20
        sta     ($80),y
        jmp     LA4CB

LDE38:  lda     ($80),y
        cmp     #$73
        bne     LDE56
        lda     $FE33
        cmp     #$05
        bcc     LDE48
        jmp     LA4CB

LDE48:  inc     $FE33
        ldy     #$03
        lda     ($80),y
        ora     #$20
        sta     ($80),y
        jmp     LA4CB

LDE56:  lda     ($80),y
        cmp     #$61
        bne     LDE88
        lda     $FE32
        beq     LDE6D
        dec     $FE32
        ldy     #$03
        lda     ($80),y
        ora     #$20
        jmp     L9F66

LDE6D:  lda     $FE33
        bne     LDE75
        jmp     LA4CB

LDE75:  lda     #$04
        sta     $FE32
        dec     $FE33
        ldy     #$03
        lda     ($80),y
        ora     #$20
        sta     ($80),y
        jmp     LA4CB

LDE88:  lda     ($80),y
        cmp     #$64
        bne     LDEBC
        lda     $FE32
        cmp     #$04
        bcs     LDEA1
        inc     $FE32
        ldy     #$03
        lda     ($80),y
        ora     #$20
        jmp     L9F66

LDEA1:  lda     $FE33
        cmp     #$05
        bcc     LDEAB
        jmp     LA4CB

LDEAB:  stz     $FE32
        inc     $FE33
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
        lda     $FE33
        jsr     LF42D
        clc
        adc     $FE32
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
LDF05:  adc     #$3D
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
LDF35:  adc     #$3D
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

        lda     $FE39
        beq     LDF73
        jmp     LA052

LDF73:  lda     $FE38
        cmp     #$02
        beq     LDF7D
        jmp     LA052

LDF7D:  ldy     #$0A
        lda     ($80),y
        cmp     #$77
        bne     LDF99
        lda     $FE35
        bne     LDF8D
        jmp     LA4CB

LDF8D:  dec     $FE35
        lda     #$01
        ldy     #$08
        sta     ($80),y
        jmp     LA4CB

LDF99:  lda     ($80),y
        cmp     #$73
        bne     LDFB5
        lda     $FE35
        cmp     #$02
        bcc     LDFA9
        jmp     LA4CB

LDFA9:  inc     $FE35
        lda     #$01
        ldy     #$08
        sta     ($80),y
        jmp     LA4CB

LDFB5:  lda     ($80),y
        cmp     #$61
        bne     LDFCF
        lda     $FE34
        bne     LDFC3
        jmp     LA4CB

LDFC3:  dec     $FE34
        lda     #$01
        ldy     #$08
        sta     ($80),y
        jmp     LA4CB

LDFCF:  lda     ($80),y
        cmp     #$64
        bne     LDFEB
        lda     $FE34
        cmp     #$04
        bcc     LDFDF
        jmp     LA4CB

LDFDF:  inc     $FE34
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
        lda     $FE35
        jsr     LF42D
        clc
        adc     $FE34
        ldy     #$05
        sta     ($80),y
        tay
        lda     $0250,y
        beq     LE015
        jmp     LA4CB

LE015:  lda     $FE34
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

        lda     $FE39
        beq     LE05A
        jmp     LA4CB

LE05A:  lda     $FE38
        cmp     #$03
        beq     LE064
        jmp     LA4CB

LE064:  ldy     #$0A
        lda     ($80),y
        cmp     #$77
        bne     LE080
        lda     $FE37
        bne     LE074
        jmp     LA4CB

LE074:  dec     $FE37
        lda     #$01
        ldy     #$07
        sta     ($80),y
        jmp     LA4CB

LE080:  lda     ($80),y
        cmp     #$73
        bne     LE09C
        lda     $FE37
        cmp     #$04
        bcc     LE090
        jmp     LA4CB

LE090:  inc     $FE37
        lda     #$01
        ldy     #$07
        sta     ($80),y
        jmp     LA4CB

LE09C:  lda     ($80),y
        cmp     #$61
        bne     LE0B6
        lda     $FE36
        bne     LE0AA
        jmp     LA4CB

LE0AA:  dec     $FE36
        lda     #$01
        ldy     #$07
        sta     ($80),y
        jmp     LA4CB

LE0B6:  lda     ($80),y
        cmp     #$64
        bne     LE0D2
        lda     $FE36
        cmp     #$05
        bcc     LE0C6
        jmp     LA4CB

LE0C6:  inc     $FE36
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
        lda     $FE36
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
LE11A:  jsr     LF4C7
        jsr     LF47F
        ldx     #$00
        lda     $025F
        asl     a
        bcc     LE12A
        inx
        clc
LE12A:  adc     #$3D
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
        jsr     LF34D
        bcs     LE14F
        jmp     LA3BF

LE14F:  lda     $025A
        beq     LE160
        lda     #$05
        jsr     LE813
        cmp     #$00
        bne     LE160
        jmp     LA3B5

LE160:  ldx     #$00
        lda     $025F
        asl     a
        bcc     LE16A
        inx
        clc
LE16A:  adc     #$3D
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
        jsr     LF4C7
        bra     LE19E
LE18D:  lda     ($80),y
        tax
        lda     ($80)
        sec
        sbc     #$01
        bcs     LE198
        dex
LE198:  jsr     LF4C7
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
LE1B8:  jsr     LF4C7
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
LE1D8:  jsr     LF4C7
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
LE1F9:  adc     #$3D
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
        jsr     LF47D
        lda     $025F
        asl     a
        bcc     LE222
        ldx     #$01
        clc
LE222:  adc     #$3D
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
        jsr     LF34D
        bcs     LE247
        jmp     LA3BF

LE247:  lda     $025A
        beq     LE258
        lda     #$05
        jsr     LE813
        cmp     #$00
        bne     LE258
        jmp     LA3B5

LE258:  ldx     #$00
        lda     $025F
        asl     a
        bcc     LE262
        inx
        clc
LE262:  adc     #$3D
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
LE292:  adc     #$3D
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
        jsr     LF47D
        lda     $025F
        asl     a
        bcc     LE2BD
        ldx     #$01
        clc
LE2BD:  adc     #$3D
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
        jsr     LF34D
        bcs     LE2E2
        jmp     LA3BF

LE2E2:  lda     $025A
        beq     LE2F3
        lda     #$05
        jsr     LE813
        cmp     #$00
        bne     LE2F3
        jmp     LA3B5

LE2F3:  ldx     #$00
        lda     $025F
        asl     a
        bcc     LE2FD
        inx
        clc
LE2FD:  adc     #$3D
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
LE32D:  adc     #$3D
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
        jsr     LF47D
        lda     $025F
        asl     a
        bcc     LE356
        ldx     #$01
        clc
LE356:  adc     #$3D
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
        jsr     LF34D
        bcc     LE3BF
        lda     $025A
        beq     LE386
        lda     #$05
        jsr     LE813
        cmp     #$00
        beq     LE3B5
LE386:  ldx     #$00
        lda     $025F
        asl     a
        bcc     LE390
        inx
        clc
LE390:  adc     #$3D
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
        jsr     LE813
        cmp     #$00
        bne     LE4B6
        tax
        lda     $025F
        asl     a
        bcc     LE464
        inx
        clc
LE464:  adc     #$3D
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
        jmp     LF2B0

        lda     #$00
        jsr     LF469
        jsr     LF30C
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
        jsr     LF47D
        lda     #$28
        jsr     LF3E2
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
        jsr     LE813
        ldy     #$02
        sta     ($80),y
        lda     #$14
        jsr     LE813
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
LE57A:  jsr     LF2E0
        bne     LE582
        jmp     LA6C9

LE582:  ldy     #$02
        lda     ($80),y
        jsr     LF469
        ldy     #$02
        lda     ($80),y
        jsr     LC4A4
        cmp     #$00
        beq     LE597
        jmp     LA6C9

LE597:  ldy     #$02
        lda     ($80),y
        jsr     LF469
        ldy     #$02
        lda     ($80),y
        jsr     LC43D
        cmp     #$00
        beq     LE5AC
        jmp     LA6C9

LE5AC:  ldy     #$01
        lda     ($80),y
        jsr     LF47D
        lda     #$28
        jsr     LF3E2
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
        jsr     LF2BD
        clc
        adc     #$50
        tay
        txa
        adc     #$03
        tax
        tya
        jsr     LF47F
        ldy     #$04
        lda     ($80),y
        ldx     #$00
        ldy     #$00
        jsr     LF4D2
        ldy     #$03
        lda     ($80),y
        jsr     LF2BD
        clc
        adc     #$50
        tay
        txa
        adc     #$03
        tax
        tya
        jsr     LF47F
        ldy     #$03
        lda     ($80),y
        ldx     #$00
        dey
        jsr     LF4D2
        iny
        lda     ($80),y
        jsr     LF2BD
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
        jsr     LE813
        sta     ($80)
        lda     ($80)
        bne     LE656
        ldy     #$03
        tax
        lda     ($80),y
        jsr     LF2BD
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
        jsr     LF2BD
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
        jsr     LF2BD
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
        jsr     LF47D
        lda     #$28
        jsr     LF3E2
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
        jmp     LF39D

        lda     #$00
        jsr     LF469
        jsr     LF2FF
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
        jsr     LF47D
        lda     #$28
        jsr     LF3E2
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
        jsr     LE813
        ldy     #$01
        sta     ($80),y
        lda     #$14
        jsr     LE813
        sta     ($80)
        ldy     #$01
        lda     ($80),y
        cmp     #$01
        bne     LE749
        lda     ($80)
        cmp     #$01
        beq     LE74B
LE749:  lda     #$00
LE74B:  jsr     LF2E0
        bne     LE753
        jmp     LA819

LE753:  ldy     #$01
        lda     ($80),y
        jsr     LF469
        ldy     #$01
        lda     ($80),y
        jsr     LC4A4
        cmp     #$00
        beq     LE768
        jmp     LA819

LE768:  lda     ($80)
        jsr     LF47D
        lda     #$28
        jsr     LF3E2
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
        jsr     LF441
        clc
        adc     #$60
        tay
        txa
        adc     #$02
        tax
        tya
        jsr     LF47F
        ldy     #$03
        lda     ($80),y
        ldx     #$00
        ldy     #$00
        jsr     LF4D2
        ldy     #$02
        lda     ($80),y
        jsr     LF441
        clc
        adc     #$60
        tay
        txa
        adc     #$02
        tax
        tya
        jsr     LF47F
        ldy     #$02
        lda     ($80),y
        ldx     #$00
        jsr     LF4D2
        lda     ($80),y
        jsr     LF441
        clc
        adc     #$60
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
        jsr     LF47D
        lda     #$28
        jsr     LF3E2
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
LE80B:  stx     $89
        iny
        lda     ($80),y
        sta     ($88)
        .byte   $A0
LE813:  .byte   $02
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
        jmp     LF398

        ldy     #$09
        jsr     LF502
        ldy     #$08
LE831:  lda     $FE1B,y
        sta     ($80),y
        dey
        bpl     LE831
        jsr     LF2F6
        lda     #$37
        jsr     LF47D
        lda     #$11
        jsr     LC7E1
        lda     #$38
        jsr     LF47D
        lda     #$12
        jsr     LC7E1
        lda     #$39
        jsr     LF47D
        lda     #$13
        jsr     LC7E1
        lda     #$3A
        jsr     LF47D
        lda     #$14
        jsr     LC7E1
        lda     #$3B
        jsr     LF47D
        lda     #$15
        jsr     LC7E1
        lda     #$3C
        jsr     LF47D
        lda     #$16
        jsr     LC7E1
        lda     #$3D
        jsr     LF47D
        lda     #$17
        jsr     LC7E1
        lda     #$3E
        jsr     LF47D
        lda     #$1A
        jsr     LC7E1
        lda     #$3F
        jsr     LF47D
        lda     #$1B
        jsr     LC7E1
        lda     #$40
        jsr     LF47D
        lda     #$1C
        jsr     LC7E1
        lda     #$41
        jsr     LF47D
        lda     #$1D
        jsr     LC7E1
        lda     #$42
        jsr     LF47D
        lda     #$1E
        jsr     LED91
        lda     #$43
        jsr     LF47D
        lda     #$1F
        jsr     LED91
        lda     #$44
        jsr     LF47D
        lda     #$20
        jsr     LED91
        lda     #$45
        jsr     LF47D
        lda     #$21
        jsr     LED91
        lda     #$46
        jsr     LF47D
        lda     #$22
        jsr     LED91
        lda     #$48
        jsr     LF47D
        lda     #$24
        jsr     LED91
        lda     #$47
        jsr     LF47D
        lda     #$23
        jsr     LED91
        lda     #$49
        jsr     LF47D
        lda     #$25
        jsr     LED91
        lda     #$4A
        jsr     LF47D
        lda     #$26
        jsr     LED91
        lda     #$4B
        jsr     LF47D
        lda     #$27
        jsr     LED91
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
LE91F:  jsr     LF47F
        ldy     #$02
        ldx     #$00
        lda     ($80),y
        clc
        adc     #$28
        bcc     LE92E
        inx
LE92E:  jsr     LED91
        ldx     #$00
        lda     ($80)
        inc     a
        sta     ($80)
        bra     LE913
LE93A:  jsr     LF47B
        lda     #$19
        jsr     LC7E1
        lda     #$01
        jsr     LF47D
        dec     a
        jsr     LAC0C
        lda     #$02
        jsr     LF47D
        dec     a
        jsr     LAC0C
        lda     #$03
        jsr     LF47D
        dec     a
        jsr     LAC0C
        lda     #$04
        jsr     LF47D
        lda     #$19
        jsr     LC7E1
        lda     #$05
        jsr     LF47D
        lda     #$19
        jsr     LC7E1
        lda     #$06
        jsr     LF47D
        lda     #$18
        jsr     LC7E1
        lda     #$08
        jsr     LF47D
        lda     #$18
        jsr     LC7E1
        lda     #$07
        jsr     LF47D
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
        jsr     LF47D
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
        jmp     LF2B0

        lda     $A6
        ldx     $A7
        jsr     LF47F
        lda     #$04
        sta     $A7
        lda     #$90
        sta     $A6
        lda     $A5
        jsr     LF469
        lda     $A4
        jsr     LF469
        lda     $A2
        ldx     $A3
        jsr     LF47F
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
        jsr     LE813
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
        jsr     LE813
        clc
        adc     #$0A
        bcc     LEADF
        inx
LEADF:  jsr     LF47F
        lda     #$28
        jsr     LF3E2
        clc
        adc     #$90
        tay
        txa
        adc     #$04
        tax
        tya
        jsr     LF47F
        lda     #$14
        jsr     LE813
        clc
        adc     #$14
        bcc     LEAFE
        inx
LEAFE:  jsr     LF295
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
        jmp     LF3A7

        jsr     LF469
        lda     #$28
        jsr     LE813
        jsr     LF469
        lda     #$14
        jsr     LE813
        jsr     LF469
        lda     #$04
        jsr     LE813
        inc     a
        jsr     LF469
        lda     #$04
        jsr     LE813
        inc     a
        jsr     LF469
        jsr     LF319
        jsr     LE80B
        tax
        beq     LEB4F
        lda     #$FF
        bra     LEB50
LEB4F:  inc     a
LEB50:  ldy     #$03
        sta     ($80),y
        jsr     LE80B
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
LEBB0:  jsr     LF47F
        lda     #$28
        jsr     LF3E2
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
        jmp     LF2B0

        jsr     LF47F
        lda     $A6
        ldx     $A7
        jsr     LF47F
        ldy     #$05
        lda     ($80),y
        sta     $90
        dey
        lda     ($80),y
        asl     a
        rol     $90
        clc
        adc     #$D9
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
        jsr     LF47F
        ldy     #$05
        lda     ($80),y
        sta     $90
        dey
        lda     ($80),y
        asl     a
        rol     $90
        clc
        adc     #$D9
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
        jsr     LF469
        ldy     #$01
        lda     ($A4),y
        sta     $A3
        lda     $A2
        jsr     LF469
        lda     $A1
        jsr     LF469
        lda     $A0
        jsr     LF469
        lda     $9F
        jsr     LF469
        jsr     LF47B
        jsr     LC40F
        sta     $A4
        stx     $A5
        stz     $A0
LEC8C:  lda     $A0
        jsr     LF47D
        lda     $A3
        inc     a
        bne     LEC98
        ldx     #$01
LEC98:  jsr     LF34F
        bcs     LECE8
        stz     $9F
LEC9F:  lda     $9F
        jsr     LF47D
        lda     $A3
        inc     a
        bne     LECAB
        ldx     #$01
LECAB:  jsr     LF34F
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
LECE8:  jsr     LF319
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
        jsr     LF47D
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
        jsr     LF47D
        lda     $A3
        sec
        sbc     #$01
        bcs     LED72
        ldx     #$FF
LED72:  jsr     LF34F
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
LED91:  lda     $A2
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
        jmp     LF2B0

        jsr     LF2F6
        stz     $021C
        lda     #$28
        sta     $021D
        stz     $020B
        stz     $020E
        stz     $0210
        lda     #$01
        sta     $021E
        stz     $021F
        stz     $0220
        stz     $0221
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
LEE64:  sta     ($80)
        cmp     #$1E
        bcs     LEE77
        lda     ($80)
        tay
        lda     #$20
        sta     $0232,y
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
        sta     $0250,y
        lda     ($80)
        inc     a
        sta     ($80)
        bra     LEE7C
LEE8F:  lda     #$00
        jmp     LF37B

        jsr     LF2F6
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
LEEA8:  adc     #$BB
        sta     $88
        txa
        adc     #$F8
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        jsr     LF47F
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
LEEE1:  adc     #$9D
        sta     $88
        txa
        adc     #$F8
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        jsr     LF47F
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
LEF26:  adc     #$B8
        sta     $88
        txa
        adc     #$F5
        sta     $89
        ldy     #$01
        lda     ($88),y
        tax
        lda     ($88)
        jsr     LF47F
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
        jmp     LF37B


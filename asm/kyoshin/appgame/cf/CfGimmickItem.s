.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_80210264
func_80210264:
/* 80210264 001D9824  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80210268 001D9828  7C 08 02 A6 */	mflr r0
/* 8021026C 001D982C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80210270 001D9830  39 61 00 80 */	addi r11, r1, 0x80
/* 80210274 001D9834  48 0A 9E DD */	bl _savegpr_26
/* 80210278 001D9838  7C 7D 1B 78 */	mr r29, r3
/* 8021027C 001D983C  7C 9E 23 78 */	mr r30, r4
/* 80210280 001D9840  4B FF 86 61 */	bl func_802088E0
/* 80210284 001D9844  3C 60 80 54 */	lis r3, __vt__cf_CfGimmickItem@ha
/* 80210288 001D9848  38 00 00 06 */	li r0, 6
/* 8021028C 001D984C  38 63 92 50 */	addi r3, r3, __vt__cf_CfGimmickItem@l
/* 80210290 001D9850  90 7D 00 00 */	stw r3, 0(r29)
/* 80210294 001D9854  B0 1D 00 82 */	sth r0, 0x82(r29)
/* 80210298 001D9858  4B E2 A7 9D */	bl func_8003AA34
/* 8021029C 001D985C  80 0D A8 AC */	lwz r0, lbl_80666A2C@sda21(r13)
/* 802102A0 001D9860  7C 7B 1B 78 */	mr r27, r3
/* 802102A4 001D9864  90 01 00 58 */	stw r0, 0x58(r1)
/* 802102A8 001D9868  7F A3 EB 78 */	mr r3, r29
/* 802102AC 001D986C  7F 65 DB 78 */	mr r5, r27
/* 802102B0 001D9870  38 9D 00 04 */	addi r4, r29, 4
/* 802102B4 001D9874  B3 DD 00 64 */	sth r30, 0x64(r29)
/* 802102B8 001D9878  38 C1 00 58 */	addi r6, r1, 0x58
/* 802102BC 001D987C  4B FF 8C 79 */	bl func_80208F34
/* 802102C0 001D9880  7F A3 EB 78 */	mr r3, r29
/* 802102C4 001D9884  7F 65 DB 78 */	mr r5, r27
/* 802102C8 001D9888  38 9D 00 1C */	addi r4, r29, 0x1c
/* 802102CC 001D988C  38 C1 00 58 */	addi r6, r1, 0x58
/* 802102D0 001D9890  4B FF 8D 51 */	bl func_80209020
/* 802102D4 001D9894  7F A3 EB 78 */	mr r3, r29
/* 802102D8 001D9898  7F 65 DB 78 */	mr r5, r27
/* 802102DC 001D989C  38 9D 00 10 */	addi r4, r29, 0x10
/* 802102E0 001D98A0  38 C1 00 58 */	addi r6, r1, 0x58
/* 802102E4 001D98A4  4B FF 8F A5 */	bl func_80209288
/* 802102E8 001D98A8  3C 80 80 50 */	lis r4, lbl_80503ECC@ha
/* 802102EC 001D98AC  80 61 00 58 */	lwz r3, 0x58(r1)
/* 802102F0 001D98B0  7F C5 F3 78 */	mr r5, r30
/* 802102F4 001D98B4  38 84 3E CC */	addi r4, r4, lbl_80503ECC@l
/* 802102F8 001D98B8  4B E2 A8 51 */	bl func_8003AB48
/* 802102FC 001D98BC  90 61 00 54 */	stw r3, 0x54(r1)
/* 80210300 001D98C0  3B 40 00 00 */	li r26, 0
/* 80210304 001D98C4  3B 60 00 00 */	li r27, 0
/* 80210308 001D98C8  3B ED 8F 30 */	addi r31, r13, lbl_806650B0@sda21
/* 8021030C 001D98CC  88 01 00 54 */	lbz r0, 0x54(r1)
/* 80210310 001D98D0  3B 80 00 01 */	li r28, 1
/* 80210314 001D98D4  B0 1D 00 66 */	sth r0, 0x66(r29)
.L_80210318:
/* 80210318 001D98D8  80 7F 00 04 */	lwz r3, 4(r31)
/* 8021031C 001D98DC  38 1A 00 41 */	addi r0, r26, 0x41
/* 80210320 001D98E0  80 8D 8F 30 */	lwz r4, lbl_806650B0@sda21(r13)
/* 80210324 001D98E4  7F C5 F3 78 */	mr r5, r30
/* 80210328 001D98E8  98 03 00 00 */	stb r0, 0(r3)
/* 8021032C 001D98EC  98 04 00 00 */	stb r0, 0(r4)
/* 80210330 001D98F0  80 61 00 58 */	lwz r3, 0x58(r1)
/* 80210334 001D98F4  4B E2 A8 15 */	bl func_8003AB48
/* 80210338 001D98F8  90 61 00 50 */	stw r3, 0x50(r1)
/* 8021033C 001D98FC  7C 7D DA 14 */	add r3, r29, r27
/* 80210340 001D9900  80 9F 00 04 */	lwz r4, 4(r31)
/* 80210344 001D9904  7F C5 F3 78 */	mr r5, r30
/* 80210348 001D9908  A0 01 00 50 */	lhz r0, 0x50(r1)
/* 8021034C 001D990C  B0 03 00 84 */	sth r0, 0x84(r3)
/* 80210350 001D9910  80 61 00 58 */	lwz r3, 0x58(r1)
/* 80210354 001D9914  4B E2 A7 F5 */	bl func_8003AB48
/* 80210358 001D9918  90 61 00 4C */	stw r3, 0x4c(r1)
/* 8021035C 001D991C  88 01 00 4C */	lbz r0, 0x4c(r1)
/* 80210360 001D9920  2C 00 00 00 */	cmpwi r0, 0
/* 80210364 001D9924  41 82 00 14 */	beq .L_80210378
/* 80210368 001D9928  80 7D 00 74 */	lwz r3, 0x74(r29)
/* 8021036C 001D992C  7F 80 D0 30 */	slw r0, r28, r26
/* 80210370 001D9930  7C 60 03 78 */	or r0, r3, r0
/* 80210374 001D9934  90 1D 00 74 */	stw r0, 0x74(r29)
.L_80210378:
/* 80210378 001D9938  3B 5A 00 01 */	addi r26, r26, 1
/* 8021037C 001D993C  3B 7B 00 02 */	addi r27, r27, 2
/* 80210380 001D9940  2C 1A 00 03 */	cmpwi r26, 3
/* 80210384 001D9944  41 80 FF 94 */	blt .L_80210318
/* 80210388 001D9948  3F E0 80 50 */	lis r31, lbl_80503ECC@ha
/* 8021038C 001D994C  80 61 00 58 */	lwz r3, 0x58(r1)
/* 80210390 001D9950  3B FF 3E CC */	addi r31, r31, lbl_80503ECC@l
/* 80210394 001D9954  7F C5 F3 78 */	mr r5, r30
/* 80210398 001D9958  38 9F 00 08 */	addi r4, r31, 8
/* 8021039C 001D995C  4B E2 A7 AD */	bl func_8003AB48
/* 802103A0 001D9960  90 61 00 48 */	stw r3, 0x48(r1)
/* 802103A4 001D9964  7F C5 F3 78 */	mr r5, r30
/* 802103A8 001D9968  38 9F 00 0F */	addi r4, r31, 0xf
/* 802103AC 001D996C  A0 01 00 48 */	lhz r0, 0x48(r1)
/* 802103B0 001D9970  B0 1D 00 8A */	sth r0, 0x8a(r29)
/* 802103B4 001D9974  80 61 00 58 */	lwz r3, 0x58(r1)
/* 802103B8 001D9978  4B E2 A7 91 */	bl func_8003AB48
/* 802103BC 001D997C  90 61 00 44 */	stw r3, 0x44(r1)
/* 802103C0 001D9980  7F C5 F3 78 */	mr r5, r30
/* 802103C4 001D9984  38 9F 00 14 */	addi r4, r31, 0x14
/* 802103C8 001D9988  A0 01 00 44 */	lhz r0, 0x44(r1)
/* 802103CC 001D998C  B0 1D 00 6A */	sth r0, 0x6a(r29)
/* 802103D0 001D9990  80 61 00 58 */	lwz r3, 0x58(r1)
/* 802103D4 001D9994  4B E2 A7 75 */	bl func_8003AB48
/* 802103D8 001D9998  90 61 00 40 */	stw r3, 0x40(r1)
/* 802103DC 001D999C  7F C5 F3 78 */	mr r5, r30
/* 802103E0 001D99A0  38 9F 00 19 */	addi r4, r31, 0x19
/* 802103E4 001D99A4  A0 01 00 40 */	lhz r0, 0x40(r1)
/* 802103E8 001D99A8  B0 1D 00 8C */	sth r0, 0x8c(r29)
/* 802103EC 001D99AC  80 61 00 58 */	lwz r3, 0x58(r1)
/* 802103F0 001D99B0  4B E2 A7 59 */	bl func_8003AB48
/* 802103F4 001D99B4  90 61 00 3C */	stw r3, 0x3c(r1)
/* 802103F8 001D99B8  7F C5 F3 78 */	mr r5, r30
/* 802103FC 001D99BC  38 9F 00 1E */	addi r4, r31, 0x1e
/* 80210400 001D99C0  88 01 00 3C */	lbz r0, 0x3c(r1)
/* 80210404 001D99C4  98 1D 00 98 */	stb r0, 0x98(r29)
/* 80210408 001D99C8  80 61 00 58 */	lwz r3, 0x58(r1)
/* 8021040C 001D99CC  4B E2 A7 3D */	bl func_8003AB48
/* 80210410 001D99D0  90 61 00 38 */	stw r3, 0x38(r1)
/* 80210414 001D99D4  7F C5 F3 78 */	mr r5, r30
/* 80210418 001D99D8  38 9F 00 25 */	addi r4, r31, 0x25
/* 8021041C 001D99DC  88 01 00 38 */	lbz r0, 0x38(r1)
/* 80210420 001D99E0  98 1D 00 70 */	stb r0, 0x70(r29)
/* 80210424 001D99E4  80 61 00 58 */	lwz r3, 0x58(r1)
/* 80210428 001D99E8  4B E2 A7 21 */	bl func_8003AB48
/* 8021042C 001D99EC  90 61 00 34 */	stw r3, 0x34(r1)
/* 80210430 001D99F0  7F C5 F3 78 */	mr r5, r30
/* 80210434 001D99F4  38 9F 00 2C */	addi r4, r31, 0x2c
/* 80210438 001D99F8  88 01 00 34 */	lbz r0, 0x34(r1)
/* 8021043C 001D99FC  98 1D 00 99 */	stb r0, 0x99(r29)
/* 80210440 001D9A00  80 61 00 58 */	lwz r3, 0x58(r1)
/* 80210444 001D9A04  4B E2 A7 05 */	bl func_8003AB48
/* 80210448 001D9A08  90 61 00 30 */	stw r3, 0x30(r1)
/* 8021044C 001D9A0C  7F C5 F3 78 */	mr r5, r30
/* 80210450 001D9A10  38 9F 00 34 */	addi r4, r31, 0x34
/* 80210454 001D9A14  88 01 00 30 */	lbz r0, 0x30(r1)
/* 80210458 001D9A18  98 1D 00 9A */	stb r0, 0x9a(r29)
/* 8021045C 001D9A1C  80 61 00 58 */	lwz r3, 0x58(r1)
/* 80210460 001D9A20  4B E2 A6 E9 */	bl func_8003AB48
/* 80210464 001D9A24  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80210468 001D9A28  7F C5 F3 78 */	mr r5, r30
/* 8021046C 001D9A2C  38 9F 00 38 */	addi r4, r31, 0x38
/* 80210470 001D9A30  88 01 00 2C */	lbz r0, 0x2c(r1)
/* 80210474 001D9A34  98 1D 00 9B */	stb r0, 0x9b(r29)
/* 80210478 001D9A38  80 61 00 58 */	lwz r3, 0x58(r1)
/* 8021047C 001D9A3C  4B E2 A6 CD */	bl func_8003AB48
/* 80210480 001D9A40  90 61 00 28 */	stw r3, 0x28(r1)
/* 80210484 001D9A44  7F C5 F3 78 */	mr r5, r30
/* 80210488 001D9A48  38 9F 00 3E */	addi r4, r31, 0x3e
/* 8021048C 001D9A4C  A0 01 00 28 */	lhz r0, 0x28(r1)
/* 80210490 001D9A50  B0 1D 00 92 */	sth r0, 0x92(r29)
/* 80210494 001D9A54  80 61 00 58 */	lwz r3, 0x58(r1)
/* 80210498 001D9A58  4B E2 A6 B1 */	bl func_8003AB48
/* 8021049C 001D9A5C  90 61 00 24 */	stw r3, 0x24(r1)
/* 802104A0 001D9A60  7F C5 F3 78 */	mr r5, r30
/* 802104A4 001D9A64  38 9F 00 44 */	addi r4, r31, 0x44
/* 802104A8 001D9A68  A0 01 00 24 */	lhz r0, 0x24(r1)
/* 802104AC 001D9A6C  B0 1D 00 8E */	sth r0, 0x8e(r29)
/* 802104B0 001D9A70  80 61 00 58 */	lwz r3, 0x58(r1)
/* 802104B4 001D9A74  4B E2 A6 95 */	bl func_8003AB48
/* 802104B8 001D9A78  90 61 00 20 */	stw r3, 0x20(r1)
/* 802104BC 001D9A7C  7F C5 F3 78 */	mr r5, r30
/* 802104C0 001D9A80  38 9F 00 4A */	addi r4, r31, 0x4a
/* 802104C4 001D9A84  A0 01 00 20 */	lhz r0, 0x20(r1)
/* 802104C8 001D9A88  B0 1D 00 90 */	sth r0, 0x90(r29)
/* 802104CC 001D9A8C  80 61 00 58 */	lwz r3, 0x58(r1)
/* 802104D0 001D9A90  4B E2 A6 79 */	bl func_8003AB48
/* 802104D4 001D9A94  90 61 00 1C */	stw r3, 0x1c(r1)
/* 802104D8 001D9A98  3F 80 80 54 */	lis r28, lbl_80538FA0@ha
/* 802104DC 001D9A9C  3B 9C 8F A0 */	addi r28, r28, lbl_80538FA0@l
/* 802104E0 001D9AA0  7F C5 F3 78 */	mr r5, r30
/* 802104E4 001D9AA4  88 01 00 1C */	lbz r0, 0x1c(r1)
/* 802104E8 001D9AA8  98 1D 00 9C */	stb r0, 0x9c(r29)
/* 802104EC 001D9AAC  80 61 00 58 */	lwz r3, 0x58(r1)
/* 802104F0 001D9AB0  80 9C 00 34 */	lwz r4, 0x34(r28)
/* 802104F4 001D9AB4  4B E2 A6 55 */	bl func_8003AB48
/* 802104F8 001D9AB8  90 61 00 18 */	stw r3, 0x18(r1)
/* 802104FC 001D9ABC  7F C5 F3 78 */	mr r5, r30
/* 80210500 001D9AC0  A0 01 00 18 */	lhz r0, 0x18(r1)
/* 80210504 001D9AC4  B0 1D 00 6C */	sth r0, 0x6c(r29)
/* 80210508 001D9AC8  80 61 00 58 */	lwz r3, 0x58(r1)
/* 8021050C 001D9ACC  80 9C 00 38 */	lwz r4, 0x38(r28)
/* 80210510 001D9AD0  4B E2 A6 39 */	bl func_8003AB48
/* 80210514 001D9AD4  90 61 00 14 */	stw r3, 0x14(r1)
/* 80210518 001D9AD8  7F C5 F3 78 */	mr r5, r30
/* 8021051C 001D9ADC  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 80210520 001D9AE0  B0 1D 00 6E */	sth r0, 0x6e(r29)
/* 80210524 001D9AE4  80 61 00 58 */	lwz r3, 0x58(r1)
/* 80210528 001D9AE8  80 9C 00 3C */	lwz r4, 0x3c(r28)
/* 8021052C 001D9AEC  4B E2 A6 1D */	bl func_8003AB48
/* 80210530 001D9AF0  90 61 00 10 */	stw r3, 0x10(r1)
/* 80210534 001D9AF4  7F C5 F3 78 */	mr r5, r30
/* 80210538 001D9AF8  38 9F 00 4D */	addi r4, r31, 0x4d
/* 8021053C 001D9AFC  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 80210540 001D9B00  B0 1D 00 94 */	sth r0, 0x94(r29)
/* 80210544 001D9B04  80 61 00 58 */	lwz r3, 0x58(r1)
/* 80210548 001D9B08  4B E2 A6 01 */	bl func_8003AB48
/* 8021054C 001D9B0C  90 61 00 0C */	stw r3, 0xc(r1)
/* 80210550 001D9B10  7F C5 F3 78 */	mr r5, r30
/* 80210554 001D9B14  38 9F 00 57 */	addi r4, r31, 0x57
/* 80210558 001D9B18  88 01 00 0C */	lbz r0, 0xc(r1)
/* 8021055C 001D9B1C  98 1D 00 96 */	stb r0, 0x96(r29)
/* 80210560 001D9B20  80 61 00 58 */	lwz r3, 0x58(r1)
/* 80210564 001D9B24  4B E2 A5 E5 */	bl func_8003AB48
/* 80210568 001D9B28  90 61 00 08 */	stw r3, 8(r1)
/* 8021056C 001D9B2C  7F A3 EB 78 */	mr r3, r29
/* 80210570 001D9B30  88 01 00 08 */	lbz r0, 8(r1)
/* 80210574 001D9B34  98 1D 00 97 */	stb r0, 0x97(r29)
/* 80210578 001D9B38  81 9D 00 00 */	lwz r12, 0(r29)
/* 8021057C 001D9B3C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80210580 001D9B40  7D 89 03 A6 */	mtctr r12
/* 80210584 001D9B44  4E 80 04 21 */	bctrl 
/* 80210588 001D9B48  88 7D 00 70 */	lbz r3, 0x70(r29)
/* 8021058C 001D9B4C  38 00 00 00 */	li r0, 0
/* 80210590 001D9B50  B0 1D 00 9E */	sth r0, 0x9e(r29)
/* 80210594 001D9B54  2C 03 00 00 */	cmpwi r3, 0
/* 80210598 001D9B58  B0 1D 00 A0 */	sth r0, 0xa0(r29)
/* 8021059C 001D9B5C  41 82 00 18 */	beq .L_802105B4
/* 802105A0 001D9B60  38 80 00 00 */	li r4, 0
/* 802105A4 001D9B64  48 25 29 A9 */	bl func_80462F4C
/* 802105A8 001D9B68  88 7D 00 70 */	lbz r3, 0x70(r29)
/* 802105AC 001D9B6C  C0 22 A9 88 */	lfs f1, float_8066AD08@sda21(r2)
/* 802105B0 001D9B70  48 25 29 45 */	bl func_80462EF4
.L_802105B4:
/* 802105B4 001D9B74  A0 7D 00 64 */	lhz r3, 0x64(r29)
/* 802105B8 001D9B78  4B FF 91 65 */	bl func_8020971C
/* 802105BC 001D9B7C  2C 03 00 00 */	cmpwi r3, 0
/* 802105C0 001D9B80  41 82 00 18 */	beq .L_802105D8
/* 802105C4 001D9B84  88 1D 00 9C */	lbz r0, 0x9c(r29)
/* 802105C8 001D9B88  28 00 00 03 */	cmplwi r0, 3
/* 802105CC 001D9B8C  40 82 00 0C */	bne .L_802105D8
/* 802105D0 001D9B90  38 00 00 05 */	li r0, 5
/* 802105D4 001D9B94  B0 1D 00 9E */	sth r0, 0x9e(r29)
.L_802105D8:
/* 802105D8 001D9B98  39 61 00 80 */	addi r11, r1, 0x80
/* 802105DC 001D9B9C  7F A3 EB 78 */	mr r3, r29
/* 802105E0 001D9BA0  48 0A 9B BD */	bl _restgpr_26
/* 802105E4 001D9BA4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 802105E8 001D9BA8  7C 08 03 A6 */	mtlr r0
/* 802105EC 001D9BAC  38 21 00 80 */	addi r1, r1, 0x80
/* 802105F0 001D9BB0  4E 80 00 20 */	blr 

.global func_802105F4
func_802105F4:
/* 802105F4 001D9BB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802105F8 001D9BB8  7C 08 02 A6 */	mflr r0
/* 802105FC 001D9BBC  2C 03 00 00 */	cmpwi r3, 0
/* 80210600 001D9BC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80210604 001D9BC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80210608 001D9BC8  7C 9F 23 78 */	mr r31, r4
/* 8021060C 001D9BCC  93 C1 00 08 */	stw r30, 8(r1)
/* 80210610 001D9BD0  7C 7E 1B 78 */	mr r30, r3
/* 80210614 001D9BD4  41 82 00 38 */	beq .L_8021064C
/* 80210618 001D9BD8  3C 80 80 54 */	lis r4, __vt__cf_CfGimmickItem@ha
/* 8021061C 001D9BDC  38 84 92 50 */	addi r4, r4, __vt__cf_CfGimmickItem@l
/* 80210620 001D9BE0  90 83 00 00 */	stw r4, 0(r3)
/* 80210624 001D9BE4  4B FF 88 C1 */	bl func_80208EE4
/* 80210628 001D9BE8  38 7E 00 7C */	addi r3, r30, 0x7c
/* 8021062C 001D9BEC  4B FF 9E 09 */	bl func_8020A434
/* 80210630 001D9BF0  7F C3 F3 78 */	mr r3, r30
/* 80210634 001D9BF4  38 80 00 00 */	li r4, 0
/* 80210638 001D9BF8  4B FF 82 F5 */	bl func_8020892C
/* 8021063C 001D9BFC  2C 1F 00 00 */	cmpwi r31, 0
/* 80210640 001D9C00  40 81 00 0C */	ble .L_8021064C
/* 80210644 001D9C04  7F C3 F3 78 */	mr r3, r30
/* 80210648 001D9C08  48 22 45 E5 */	bl __dl__FPv
.L_8021064C:
/* 8021064C 001D9C0C  7F C3 F3 78 */	mr r3, r30
/* 80210650 001D9C10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80210654 001D9C14  83 C1 00 08 */	lwz r30, 8(r1)
/* 80210658 001D9C18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8021065C 001D9C1C  7C 08 03 A6 */	mtlr r0
/* 80210660 001D9C20  38 21 00 10 */	addi r1, r1, 0x10
/* 80210664 001D9C24  4E 80 00 20 */	blr 

.global func_80210668
func_80210668:
/* 80210668 001D9C28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021066C 001D9C2C  7C 08 02 A6 */	mflr r0
/* 80210670 001D9C30  3C 80 80 54 */	lis r4, lbl_80539208@ha
/* 80210674 001D9C34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80210678 001D9C38  38 84 92 08 */	addi r4, r4, lbl_80539208@l
/* 8021067C 001D9C3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80210680 001D9C40  7C 7F 1B 78 */	mr r31, r3
/* 80210684 001D9C44  A0 03 00 9E */	lhz r0, 0x9e(r3)
/* 80210688 001D9C48  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8021068C 001D9C4C  7D 84 02 14 */	add r12, r4, r0
/* 80210690 001D9C50  48 0A 96 CD */	bl __ptmf_scall
/* 80210694 001D9C54  60 00 00 00 */	nop 
/* 80210698 001D9C58  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 8021069C 001D9C5C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 802106A0 001D9C60  41 82 00 3C */	beq .L_802106DC
/* 802106A4 001D9C64  A0 1F 00 66 */	lhz r0, 0x66(r31)
/* 802106A8 001D9C68  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802106AC 001D9C6C  41 82 00 20 */	beq .L_802106CC
/* 802106B0 001D9C70  A0 BF 00 6A */	lhz r5, 0x6a(r31)
/* 802106B4 001D9C74  38 7F 00 7C */	addi r3, r31, 0x7c
/* 802106B8 001D9C78  C0 22 A9 8C */	lfs f1, float_8066AD0C@sda21(r2)
/* 802106BC 001D9C7C  38 9F 00 04 */	addi r4, r31, 4
/* 802106C0 001D9C80  38 C0 00 00 */	li r6, 0
/* 802106C4 001D9C84  38 E0 00 00 */	li r7, 0
/* 802106C8 001D9C88  4B FF 9F E9 */	bl func_8020A6B0
.L_802106CC:
/* 802106CC 001D9C8C  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 802106D0 001D9C90  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 802106D4 001D9C94  90 1F 00 74 */	stw r0, 0x74(r31)
/* 802106D8 001D9C98  48 00 00 0C */	b .L_802106E4
.L_802106DC:
/* 802106DC 001D9C9C  38 7F 00 7C */	addi r3, r31, 0x7c
/* 802106E0 001D9CA0  4B FF 9D 55 */	bl func_8020A434
.L_802106E4:
/* 802106E4 001D9CA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802106E8 001D9CA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802106EC 001D9CAC  7C 08 03 A6 */	mtlr r0
/* 802106F0 001D9CB0  38 21 00 10 */	addi r1, r1, 0x10
/* 802106F4 001D9CB4  4E 80 00 20 */	blr 

.global func_802106F8
func_802106F8:
/* 802106F8 001D9CB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802106FC 001D9CBC  7C 08 02 A6 */	mflr r0
/* 80210700 001D9CC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80210704 001D9CC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80210708 001D9CC8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8021070C 001D9CCC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80210710 001D9CD0  93 81 00 10 */	stw r28, 0x10(r1)
/* 80210714 001D9CD4  7C 7C 1B 78 */	mr r28, r3
/* 80210718 001D9CD8  A0 03 00 6C */	lhz r0, 0x6c(r3)
/* 8021071C 001D9CDC  2C 00 00 00 */	cmpwi r0, 0
/* 80210720 001D9CE0  40 82 00 10 */	bne .L_80210730
/* 80210724 001D9CE4  A0 03 00 6E */	lhz r0, 0x6e(r3)
/* 80210728 001D9CE8  2C 00 00 00 */	cmpwi r0, 0
/* 8021072C 001D9CEC  41 82 00 24 */	beq .L_80210750
.L_80210730:
/* 80210730 001D9CF0  4B E7 1B C5 */	bl func_800822F4
/* 80210734 001D9CF4  A0 1C 00 6C */	lhz r0, 0x6c(r28)
/* 80210738 001D9CF8  7C 00 18 40 */	cmplw r0, r3
/* 8021073C 001D9CFC  41 81 00 E8 */	bgt .L_80210824
/* 80210740 001D9D00  A0 1C 00 6E */	lhz r0, 0x6e(r28)
/* 80210744 001D9D04  7C 03 00 40 */	cmplw r3, r0
/* 80210748 001D9D08  40 81 00 08 */	ble .L_80210750
/* 8021074C 001D9D0C  48 00 00 D8 */	b .L_80210824
.L_80210750:
/* 80210750 001D9D10  A0 7C 00 94 */	lhz r3, 0x94(r28)
/* 80210754 001D9D14  2C 03 00 00 */	cmpwi r3, 0
/* 80210758 001D9D18  41 82 00 24 */	beq .L_8021077C
/* 8021075C 001D9D1C  4B E7 1B F9 */	bl func_80082354
/* 80210760 001D9D20  88 1C 00 97 */	lbz r0, 0x97(r28)
/* 80210764 001D9D24  7C 00 18 00 */	cmpw r0, r3
/* 80210768 001D9D28  41 81 00 BC */	bgt .L_80210824
/* 8021076C 001D9D2C  88 1C 00 96 */	lbz r0, 0x96(r28)
/* 80210770 001D9D30  7C 00 18 00 */	cmpw r0, r3
/* 80210774 001D9D34  40 80 00 08 */	bge .L_8021077C
/* 80210778 001D9D38  48 00 00 AC */	b .L_80210824
.L_8021077C:
/* 8021077C 001D9D3C  80 1C 00 74 */	lwz r0, 0x74(r28)
/* 80210780 001D9D40  38 9C 00 1C */	addi r4, r28, 0x1c
/* 80210784 001D9D44  A0 7C 00 66 */	lhz r3, 0x66(r28)
/* 80210788 001D9D48  38 BC 00 04 */	addi r5, r28, 4
/* 8021078C 001D9D4C  60 00 00 10 */	ori r0, r0, 0x10
/* 80210790 001D9D50  90 1C 00 74 */	stw r0, 0x74(r28)
/* 80210794 001D9D54  80 FC 00 7C */	lwz r7, 0x7c(r28)
/* 80210798 001D9D58  38 DC 00 10 */	addi r6, r28, 0x10
/* 8021079C 001D9D5C  4B FF 8F B9 */	bl func_80209754
/* 802107A0 001D9D60  2C 03 00 00 */	cmpwi r3, 0
/* 802107A4 001D9D64  41 82 00 80 */	beq .L_80210824
/* 802107A8 001D9D68  7F 9F E3 78 */	mr r31, r28
/* 802107AC 001D9D6C  3B C0 00 00 */	li r30, 0
/* 802107B0 001D9D70  3B A0 00 00 */	li r29, 0
.L_802107B4:
/* 802107B4 001D9D74  A0 7F 00 84 */	lhz r3, 0x84(r31)
/* 802107B8 001D9D78  2C 03 00 00 */	cmpwi r3, 0
/* 802107BC 001D9D7C  41 82 00 1C */	beq .L_802107D8
/* 802107C0 001D9D80  4B F4 80 29 */	bl func_801587E8
/* 802107C4 001D9D84  2C 03 00 00 */	cmpwi r3, 0
/* 802107C8 001D9D88  40 82 00 0C */	bne .L_802107D4
/* 802107CC 001D9D8C  3B C0 00 00 */	li r30, 0
/* 802107D0 001D9D90  48 00 00 18 */	b .L_802107E8
.L_802107D4:
/* 802107D4 001D9D94  3B C0 00 01 */	li r30, 1
.L_802107D8:
/* 802107D8 001D9D98  3B BD 00 01 */	addi r29, r29, 1
/* 802107DC 001D9D9C  3B FF 00 02 */	addi r31, r31, 2
/* 802107E0 001D9DA0  2C 1D 00 03 */	cmpwi r29, 3
/* 802107E4 001D9DA4  41 80 FF D0 */	blt .L_802107B4
.L_802107E8:
/* 802107E8 001D9DA8  A0 1C 00 66 */	lhz r0, 0x66(r28)
/* 802107EC 001D9DAC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802107F0 001D9DB0  41 82 00 18 */	beq .L_80210808
/* 802107F4 001D9DB4  A0 7C 00 8E */	lhz r3, 0x8e(r28)
/* 802107F8 001D9DB8  2C 03 00 00 */	cmpwi r3, 0
/* 802107FC 001D9DBC  41 82 00 0C */	beq .L_80210808
/* 80210800 001D9DC0  38 9C 00 04 */	addi r4, r28, 4
/* 80210804 001D9DC4  4B FF 84 45 */	bl func_80208C48
.L_80210808:
/* 80210808 001D9DC8  2C 1E 00 00 */	cmpwi r30, 0
/* 8021080C 001D9DCC  41 82 00 10 */	beq .L_8021081C
/* 80210810 001D9DD0  38 00 00 02 */	li r0, 2
/* 80210814 001D9DD4  B0 1C 00 9E */	sth r0, 0x9e(r28)
/* 80210818 001D9DD8  48 00 00 0C */	b .L_80210824
.L_8021081C:
/* 8021081C 001D9DDC  38 00 00 01 */	li r0, 1
/* 80210820 001D9DE0  B0 1C 00 9E */	sth r0, 0x9e(r28)
.L_80210824:
/* 80210824 001D9DE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80210828 001D9DE8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8021082C 001D9DEC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80210830 001D9DF0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80210834 001D9DF4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80210838 001D9DF8  7C 08 03 A6 */	mtlr r0
/* 8021083C 001D9DFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80210840 001D9E00  4E 80 00 20 */	blr 

.global func_80210844
func_80210844:
/* 80210844 001D9E04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80210848 001D9E08  7C 08 02 A6 */	mflr r0
/* 8021084C 001D9E0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80210850 001D9E10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80210854 001D9E14  7C 7F 1B 78 */	mr r31, r3
/* 80210858 001D9E18  4B FF 96 D5 */	bl func_80209F2C
/* 8021085C 001D9E1C  A0 7F 00 6A */	lhz r3, 0x6a(r31)
/* 80210860 001D9E20  2C 03 00 00 */	cmpwi r3, 0
/* 80210864 001D9E24  41 82 00 58 */	beq .L_802108BC
/* 80210868 001D9E28  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 8021086C 001D9E2C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80210870 001D9E30  41 82 00 28 */	beq .L_80210898
/* 80210874 001D9E34  4B FF 9D 69 */	bl func_8020A5DC
/* 80210878 001D9E38  2C 03 00 00 */	cmpwi r3, 0
/* 8021087C 001D9E3C  41 82 00 0C */	beq .L_80210888
/* 80210880 001D9E40  38 60 00 01 */	li r3, 1
/* 80210884 001D9E44  48 00 00 30 */	b .L_802108B4
.L_80210888:
/* 80210888 001D9E48  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 8021088C 001D9E4C  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80210890 001D9E50  90 1F 00 74 */	stw r0, 0x74(r31)
/* 80210894 001D9E54  48 00 00 1C */	b .L_802108B0
.L_80210898:
/* 80210898 001D9E58  4B FF 9B ED */	bl func_8020A484
/* 8021089C 001D9E5C  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 802108A0 001D9E60  38 60 00 01 */	li r3, 1
/* 802108A4 001D9E64  60 00 00 20 */	ori r0, r0, 0x20
/* 802108A8 001D9E68  90 1F 00 74 */	stw r0, 0x74(r31)
/* 802108AC 001D9E6C  48 00 00 08 */	b .L_802108B4
.L_802108B0:
/* 802108B0 001D9E70  38 60 00 00 */	li r3, 0
.L_802108B4:
/* 802108B4 001D9E74  2C 03 00 00 */	cmpwi r3, 0
/* 802108B8 001D9E78  40 82 00 0C */	bne .L_802108C4
.L_802108BC:
/* 802108BC 001D9E7C  38 00 00 04 */	li r0, 4
/* 802108C0 001D9E80  B0 1F 00 9E */	sth r0, 0x9e(r31)
.L_802108C4:
/* 802108C4 001D9E84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802108C8 001D9E88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802108CC 001D9E8C  7C 08 03 A6 */	mtlr r0
/* 802108D0 001D9E90  38 21 00 10 */	addi r1, r1, 0x10
/* 802108D4 001D9E94  4E 80 00 20 */	blr 

.global func_802108D8
func_802108D8:
/* 802108D8 001D9E98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802108DC 001D9E9C  7C 08 02 A6 */	mflr r0
/* 802108E0 001D9EA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802108E4 001D9EA4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802108E8 001D9EA8  7C 7F 1B 78 */	mr r31, r3
/* 802108EC 001D9EAC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802108F0 001D9EB0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802108F4 001D9EB4  4B FF 96 39 */	bl func_80209F2C
/* 802108F8 001D9EB8  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 802108FC 001D9EBC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80210900 001D9EC0  40 82 01 1C */	bne .L_80210A1C
/* 80210904 001D9EC4  8B BF 00 70 */	lbz r29, 0x70(r31)
/* 80210908 001D9EC8  2C 1D 00 00 */	cmpwi r29, 0
/* 8021090C 001D9ECC  41 82 00 BC */	beq .L_802109C8
/* 80210910 001D9ED0  8B DF 00 9C */	lbz r30, 0x9c(r31)
/* 80210914 001D9ED4  2C 1E 00 00 */	cmpwi r30, 0
/* 80210918 001D9ED8  41 82 00 B0 */	beq .L_802109C8
/* 8021091C 001D9EDC  57 C0 07 7B */	rlwinm. r0, r30, 0, 0x1d, 0x1d
/* 80210920 001D9EE0  41 82 00 34 */	beq .L_80210954
/* 80210924 001D9EE4  57 C0 07 BD */	rlwinm. r0, r30, 0, 0x1e, 0x1e
/* 80210928 001D9EE8  41 82 00 14 */	beq .L_8021093C
/* 8021092C 001D9EEC  C0 22 A9 88 */	lfs f1, float_8066AD08@sda21(r2)
/* 80210930 001D9EF0  7F A3 EB 78 */	mr r3, r29
/* 80210934 001D9EF4  48 25 25 C1 */	bl func_80462EF4
/* 80210938 001D9EF8  48 00 00 0C */	b .L_80210944
.L_8021093C:
/* 8021093C 001D9EFC  7F A3 EB 78 */	mr r3, r29
/* 80210940 001D9F00  48 25 25 D1 */	bl func_80462F10
.L_80210944:
/* 80210944 001D9F04  7F A3 EB 78 */	mr r3, r29
/* 80210948 001D9F08  38 80 00 00 */	li r4, 0
/* 8021094C 001D9F0C  48 25 26 01 */	bl func_80462F4C
/* 80210950 001D9F10  48 00 00 48 */	b .L_80210998
.L_80210954:
/* 80210954 001D9F14  57 C0 07 FF */	clrlwi. r0, r30, 0x1f
/* 80210958 001D9F18  41 82 00 20 */	beq .L_80210978
/* 8021095C 001D9F1C  7F A3 EB 78 */	mr r3, r29
/* 80210960 001D9F20  38 80 00 00 */	li r4, 0
/* 80210964 001D9F24  48 25 26 0D */	bl func_80462F70
/* 80210968 001D9F28  7F A3 EB 78 */	mr r3, r29
/* 8021096C 001D9F2C  38 80 00 01 */	li r4, 1
/* 80210970 001D9F30  48 25 25 DD */	bl func_80462F4C
/* 80210974 001D9F34  48 00 00 24 */	b .L_80210998
.L_80210978:
/* 80210978 001D9F38  57 C0 07 BD */	rlwinm. r0, r30, 0, 0x1e, 0x1e
/* 8021097C 001D9F3C  41 82 00 1C */	beq .L_80210998
/* 80210980 001D9F40  7F A3 EB 78 */	mr r3, r29
/* 80210984 001D9F44  38 80 00 01 */	li r4, 1
/* 80210988 001D9F48  48 25 25 E9 */	bl func_80462F70
/* 8021098C 001D9F4C  7F A3 EB 78 */	mr r3, r29
/* 80210990 001D9F50  38 80 00 01 */	li r4, 1
/* 80210994 001D9F54  48 25 25 B9 */	bl func_80462F4C
.L_80210998:
/* 80210998 001D9F58  57 C0 07 39 */	rlwinm. r0, r30, 0, 0x1c, 0x1c
/* 8021099C 001D9F5C  41 82 00 14 */	beq .L_802109B0
/* 802109A0 001D9F60  7F A3 EB 78 */	mr r3, r29
/* 802109A4 001D9F64  38 80 00 00 */	li r4, 0
/* 802109A8 001D9F68  48 25 25 29 */	bl func_80462ED0
/* 802109AC 001D9F6C  48 00 00 10 */	b .L_802109BC
.L_802109B0:
/* 802109B0 001D9F70  7F A3 EB 78 */	mr r3, r29
/* 802109B4 001D9F74  38 80 00 01 */	li r4, 1
/* 802109B8 001D9F78  48 25 25 19 */	bl func_80462ED0
.L_802109BC:
/* 802109BC 001D9F7C  88 9F 00 99 */	lbz r4, 0x99(r31)
/* 802109C0 001D9F80  7F A3 EB 78 */	mr r3, r29
/* 802109C4 001D9F84  48 25 25 D1 */	bl func_80462F94
.L_802109C8:
/* 802109C8 001D9F88  A0 7F 00 90 */	lhz r3, 0x90(r31)
/* 802109CC 001D9F8C  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 802109D0 001D9F90  2C 03 00 00 */	cmpwi r3, 0
/* 802109D4 001D9F94  60 00 00 08 */	ori r0, r0, 8
/* 802109D8 001D9F98  90 1F 00 74 */	stw r0, 0x74(r31)
/* 802109DC 001D9F9C  41 82 00 0C */	beq .L_802109E8
/* 802109E0 001D9FA0  38 9F 00 04 */	addi r4, r31, 4
/* 802109E4 001D9FA4  4B FF 82 65 */	bl func_80208C48
.L_802109E8:
/* 802109E8 001D9FA8  88 7F 00 9B */	lbz r3, 0x9b(r31)
/* 802109EC 001D9FAC  2C 03 00 00 */	cmpwi r3, 0
/* 802109F0 001D9FB0  41 82 00 1C */	beq .L_80210A0C
/* 802109F4 001D9FB4  38 80 00 00 */	li r4, 0
/* 802109F8 001D9FB8  4B E7 0D C5 */	bl func_800817BC
/* 802109FC 001D9FBC  2C 03 00 00 */	cmpwi r3, 0
/* 80210A00 001D9FC0  90 7F 00 78 */	stw r3, 0x78(r31)
/* 80210A04 001D9FC4  41 82 00 08 */	beq .L_80210A0C
/* 80210A08 001D9FC8  93 E3 00 B0 */	stw r31, 0xb0(r3)
.L_80210A0C:
/* 80210A0C 001D9FCC  A0 7F 00 92 */	lhz r3, 0x92(r31)
/* 80210A10 001D9FD0  2C 03 00 00 */	cmpwi r3, 0
/* 80210A14 001D9FD4  41 82 00 08 */	beq .L_80210A1C
/* 80210A18 001D9FD8  4B E6 A6 B1 */	bl func_8007B0C8
.L_80210A1C:
/* 80210A1C 001D9FDC  A0 7F 00 A0 */	lhz r3, 0xa0(r31)
/* 80210A20 001D9FE0  88 1F 00 98 */	lbz r0, 0x98(r31)
/* 80210A24 001D9FE4  7C 03 00 00 */	cmpw r3, r0
/* 80210A28 001D9FE8  40 80 00 10 */	bge .L_80210A38
/* 80210A2C 001D9FEC  38 03 00 01 */	addi r0, r3, 1
/* 80210A30 001D9FF0  B0 1F 00 A0 */	sth r0, 0xa0(r31)
/* 80210A34 001D9FF4  48 00 00 80 */	b .L_80210AB4
.L_80210A38:
/* 80210A38 001D9FF8  A0 7F 00 8C */	lhz r3, 0x8c(r31)
/* 80210A3C 001D9FFC  2C 03 00 00 */	cmpwi r3, 0
/* 80210A40 001DA000  41 82 00 58 */	beq .L_80210A98
/* 80210A44 001DA004  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 80210A48 001DA008  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80210A4C 001DA00C  41 82 00 28 */	beq .L_80210A74
/* 80210A50 001DA010  4B FF 9B 8D */	bl func_8020A5DC
/* 80210A54 001DA014  2C 03 00 00 */	cmpwi r3, 0
/* 80210A58 001DA018  41 82 00 0C */	beq .L_80210A64
/* 80210A5C 001DA01C  38 60 00 01 */	li r3, 1
/* 80210A60 001DA020  48 00 00 30 */	b .L_80210A90
.L_80210A64:
/* 80210A64 001DA024  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 80210A68 001DA028  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80210A6C 001DA02C  90 1F 00 74 */	stw r0, 0x74(r31)
/* 80210A70 001DA030  48 00 00 1C */	b .L_80210A8C
.L_80210A74:
/* 80210A74 001DA034  4B FF 9A 11 */	bl func_8020A484
/* 80210A78 001DA038  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 80210A7C 001DA03C  38 60 00 01 */	li r3, 1
/* 80210A80 001DA040  60 00 00 20 */	ori r0, r0, 0x20
/* 80210A84 001DA044  90 1F 00 74 */	stw r0, 0x74(r31)
/* 80210A88 001DA048  48 00 00 08 */	b .L_80210A90
.L_80210A8C:
/* 80210A8C 001DA04C  38 60 00 00 */	li r3, 0
.L_80210A90:
/* 80210A90 001DA050  2C 03 00 00 */	cmpwi r3, 0
/* 80210A94 001DA054  40 82 00 20 */	bne .L_80210AB4
.L_80210A98:
/* 80210A98 001DA058  80 9F 00 74 */	lwz r4, 0x74(r31)
/* 80210A9C 001DA05C  38 60 00 00 */	li r3, 0
/* 80210AA0 001DA060  38 00 00 03 */	li r0, 3
/* 80210AA4 001DA064  B0 7F 00 A0 */	sth r3, 0xa0(r31)
/* 80210AA8 001DA068  54 83 07 76 */	rlwinm r3, r4, 0, 0x1d, 0x1b
/* 80210AAC 001DA06C  90 7F 00 74 */	stw r3, 0x74(r31)
/* 80210AB0 001DA070  B0 1F 00 9E */	sth r0, 0x9e(r31)
.L_80210AB4:
/* 80210AB4 001DA074  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80210AB8 001DA078  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80210ABC 001DA07C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80210AC0 001DA080  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80210AC4 001DA084  7C 08 03 A6 */	mtlr r0
/* 80210AC8 001DA088  38 21 00 20 */	addi r1, r1, 0x20
/* 80210ACC 001DA08C  4E 80 00 20 */	blr 

.global func_80210AD0
func_80210AD0:
/* 80210AD0 001DA090  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80210AD4 001DA094  7C 08 02 A6 */	mflr r0
/* 80210AD8 001DA098  90 01 00 24 */	stw r0, 0x24(r1)
/* 80210ADC 001DA09C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80210AE0 001DA0A0  3B E0 00 01 */	li r31, 1
/* 80210AE4 001DA0A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80210AE8 001DA0A8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80210AEC 001DA0AC  3B A0 00 00 */	li r29, 0
/* 80210AF0 001DA0B0  93 81 00 10 */	stw r28, 0x10(r1)
/* 80210AF4 001DA0B4  7C 7C 1B 78 */	mr r28, r3
/* 80210AF8 001DA0B8  7F 9E E3 78 */	mr r30, r28
.L_80210AFC:
/* 80210AFC 001DA0BC  A0 7E 00 84 */	lhz r3, 0x84(r30)
/* 80210B00 001DA0C0  2C 03 00 00 */	cmpwi r3, 0
/* 80210B04 001DA0C4  41 82 00 1C */	beq .L_80210B20
/* 80210B08 001DA0C8  80 9C 00 74 */	lwz r4, 0x74(r28)
/* 80210B0C 001DA0CC  7F E0 E8 30 */	slw r0, r31, r29
/* 80210B10 001DA0D0  7C 80 00 39 */	and. r0, r4, r0
/* 80210B14 001DA0D4  41 82 00 0C */	beq .L_80210B20
/* 80210B18 001DA0D8  38 80 00 01 */	li r4, 1
/* 80210B1C 001DA0DC  4B F4 90 E9 */	bl func_80159C04
.L_80210B20:
/* 80210B20 001DA0E0  3B BD 00 01 */	addi r29, r29, 1
/* 80210B24 001DA0E4  3B DE 00 02 */	addi r30, r30, 2
/* 80210B28 001DA0E8  2C 1D 00 03 */	cmpwi r29, 3
/* 80210B2C 001DA0EC  41 80 FF D0 */	blt .L_80210AFC
/* 80210B30 001DA0F0  A0 7C 00 8A */	lhz r3, 0x8a(r28)
/* 80210B34 001DA0F4  2C 03 00 00 */	cmpwi r3, 0
/* 80210B38 001DA0F8  41 82 00 0C */	beq .L_80210B44
/* 80210B3C 001DA0FC  38 80 00 01 */	li r4, 1
/* 80210B40 001DA100  4B F4 7B 95 */	bl func_801586D4
.L_80210B44:
/* 80210B44 001DA104  88 1C 00 9C */	lbz r0, 0x9c(r28)
/* 80210B48 001DA108  28 00 00 03 */	cmplwi r0, 3
/* 80210B4C 001DA10C  40 82 00 10 */	bne .L_80210B5C
/* 80210B50 001DA110  38 00 00 05 */	li r0, 5
/* 80210B54 001DA114  B0 1C 00 9E */	sth r0, 0x9e(r28)
/* 80210B58 001DA118  48 00 00 20 */	b .L_80210B78
.L_80210B5C:
/* 80210B5C 001DA11C  28 00 00 02 */	cmplwi r0, 2
/* 80210B60 001DA120  40 82 00 10 */	bne .L_80210B70
/* 80210B64 001DA124  38 00 00 05 */	li r0, 5
/* 80210B68 001DA128  B0 1C 00 9E */	sth r0, 0x9e(r28)
/* 80210B6C 001DA12C  48 00 00 0C */	b .L_80210B78
.L_80210B70:
/* 80210B70 001DA130  38 00 00 04 */	li r0, 4
/* 80210B74 001DA134  B0 1C 00 9E */	sth r0, 0x9e(r28)
.L_80210B78:
/* 80210B78 001DA138  A0 7C 00 64 */	lhz r3, 0x64(r28)
/* 80210B7C 001DA13C  2C 03 00 00 */	cmpwi r3, 0
/* 80210B80 001DA140  41 82 00 0C */	beq .L_80210B8C
/* 80210B84 001DA144  38 80 00 01 */	li r4, 1
/* 80210B88 001DA148  4B FF 8B C5 */	bl func_8020974C
.L_80210B8C:
/* 80210B8C 001DA14C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80210B90 001DA150  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80210B94 001DA154  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80210B98 001DA158  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80210B9C 001DA15C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80210BA0 001DA160  7C 08 03 A6 */	mtlr r0
/* 80210BA4 001DA164  38 21 00 20 */	addi r1, r1, 0x20
/* 80210BA8 001DA168  4E 80 00 20 */	blr 

.global func_80210BAC
func_80210BAC:
/* 80210BAC 001DA16C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80210BB0 001DA170  7C 08 02 A6 */	mflr r0
/* 80210BB4 001DA174  90 01 00 14 */	stw r0, 0x14(r1)
/* 80210BB8 001DA178  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80210BBC 001DA17C  7C 7F 1B 78 */	mr r31, r3
/* 80210BC0 001DA180  A0 03 00 66 */	lhz r0, 0x66(r3)
/* 80210BC4 001DA184  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80210BC8 001DA188  40 82 00 38 */	bne .L_80210C00
/* 80210BCC 001DA18C  80 03 00 60 */	lwz r0, 0x60(r3)
/* 80210BD0 001DA190  3C C0 80 54 */	lis r6, lbl_80538FE8@ha
/* 80210BD4 001DA194  3C 80 80 58 */	lis r4, float_80579D98@ha
/* 80210BD8 001DA198  38 A3 00 04 */	addi r5, r3, 4
/* 80210BDC 001DA19C  54 00 10 3A */	slwi r0, r0, 2
/* 80210BE0 001DA1A0  38 C6 8F E8 */	addi r6, r6, lbl_80538FE8@l
/* 80210BE4 001DA1A4  7D 86 00 2E */	lwzx r12, r6, r0
/* 80210BE8 001DA1A8  38 84 9D 98 */	addi r4, r4, float_80579D98@l
/* 80210BEC 001DA1AC  7D 89 03 A6 */	mtctr r12
/* 80210BF0 001DA1B0  38 63 00 1C */	addi r3, r3, 0x1c
/* 80210BF4 001DA1B4  4E 80 04 21 */	bctrl 
/* 80210BF8 001DA1B8  2C 03 00 00 */	cmpwi r3, 0
/* 80210BFC 001DA1BC  40 82 00 0C */	bne .L_80210C08
.L_80210C00:
/* 80210C00 001DA1C0  38 00 00 00 */	li r0, 0
/* 80210C04 001DA1C4  B0 1F 00 9E */	sth r0, 0x9e(r31)
.L_80210C08:
/* 80210C08 001DA1C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80210C0C 001DA1CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80210C10 001DA1D0  7C 08 03 A6 */	mtlr r0
/* 80210C14 001DA1D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80210C18 001DA1D8  4E 80 00 20 */	blr 

.global func_80210C1C
func_80210C1C:
/* 80210C1C 001DA1DC  4E 80 00 20 */	blr 



.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global cf_CfGimmickItem_typestr
cf_CfGimmickItem_typestr:
	.asciz "cf::CfGimmickItem"
	.balign 4


.global lbl_80503ECC
lbl_80503ECC:
	.asciz "rectype"
	.asciz "geItem"
	.asciz "MSG1"
	.asciz "MSG2"
	.asciz "time"
	.asciz "LODObj"
	.asciz "LODSub"
	.asciz "LODType"
	.asciz "EFF"
	.asciz "camID"
	.asciz "swtSE"
	.asciz "finSE"
	.asciz "ct"
	.asciz "quest_Max"
	.asciz "quest_Min"
	.balign 4

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_80539208
lbl_80539208:
	# ROM: 0x535308
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802106F8
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_80210844
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802108D8
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_80210AD0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_80210BAC
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_80210C1C


.global __vt__cf_CfGimmickItem
__vt__cf_CfGimmickItem:
	.4byte __RTTI__cf_CfGimmickItem
	.4byte 0
	.4byte func_802105F4
	.4byte func_8020896C
	.4byte func_80210668
	.4byte func_801F4B64
	.4byte func_801F4BF8
	.4byte func_801F4C8C
	.4byte func_80208988

.global cf_CfGimmickItem_hierarchy
cf_CfGimmickItem_hierarchy:
	.4byte __RTTI__cf_IObjectInfo
	.4byte 0
	.4byte __RTTI__cf_CfGimmick
	.4byte 0
	.4byte 0

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global lbl_806650B0
lbl_806650B0:
	# ROM: 0x570C90
	.4byte lbl_8066ACF8
	.4byte lbl_8066AD00

.global __RTTI__cf_CfGimmickItem
__RTTI__cf_CfGimmickItem:
	.4byte cf_CfGimmickItem_typestr
	.4byte cf_CfGimmickItem_hierarchy

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0


.global lbl_8066ACF8
lbl_8066ACF8:
	.asciz "A_Item"
	.balign 4

.global lbl_8066AD00
lbl_8066AD00:
	.asciz "A_Lost"
	.balign 4


.global float_8066AD08
float_8066AD08:
	# ROM: 0x574B68
	.4byte 0


.global float_8066AD0C
float_8066AD0C:
	# ROM: 0x574B6C
	.4byte 0x40A00000

.section extab, "a"  # 0x800066E0 - 0x80021020

.global lbl_80013294
lbl_80013294:
	.4byte 0x300A0000
	.4byte 0x00000038
	.4byte 0x00C80010
	.4byte 0
	.4byte 0x8680001D
	.4byte 0
	.4byte func_8020892C

.global lbl_800132B0
lbl_800132B0:
	.4byte 0x10080000
	.4byte 0x00000034
	.4byte 0x00020010
	.4byte 0
	.4byte 0x8680001E
	.4byte 0
	.4byte func_8020892C

.global lbl_800132CC
lbl_800132CC:
	.4byte 0x080A0000
	.4byte 0

.global lbl_800132D4
lbl_800132D4:
	.4byte 0x20080000
	.4byte 0

.global lbl_800132DC
lbl_800132DC:
	.4byte 0x08080000
	.4byte 0

.global lbl_800132E4
lbl_800132E4:
	.4byte 0x180A0000
	.4byte 0

.global lbl_800132EC
lbl_800132EC:
	.4byte 0x20080000
	.4byte 0

.global lbl_800132F4
lbl_800132F4:
	.4byte 0x08080000
	.4byte 0


.section extabindex, "a"  # 0x80021020 - 0x80039220

.4byte func_80210264
	.4byte 0x00000390
	.4byte lbl_80013294
	.4byte func_802105F4
	.4byte 0x00000074
	.4byte lbl_800132B0
	.4byte func_80210668
	.4byte 0x00000090
	.4byte lbl_800132CC
	.4byte func_802106F8
	.4byte 0x0000014C
	.4byte lbl_800132D4
	.4byte func_80210844
	.4byte 0x00000094
	.4byte lbl_800132DC
	.4byte func_802108D8
	.4byte 0x000001F8
	.4byte lbl_800132E4
	.4byte func_80210AD0
	.4byte 0x000000DC
	.4byte lbl_800132EC
	.4byte func_80210BAC
	.4byte 0x00000070
	.4byte lbl_800132F4
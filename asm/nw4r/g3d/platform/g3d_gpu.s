.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global GDSetGenMode2__Q34nw4r3g3d4fifoFUcUcUcUc11_GXCullMode
GDSetGenMode2__Q34nw4r3g3d4fifoFUcUcUcUc11_GXCullMode:
/* 803E7468 003B0A28  3D 40 CC 01 */	lis r10, 0xCC008000@ha
/* 803E746C 003B0A2C  39 60 00 61 */	li r11, 0x61
/* 803E7470 003B0A30  3D 20 FE 08 */	lis r9, 0xFE07FC3F@ha
/* 803E7474 003B0A34  39 02 C0 48 */	addi r8, r2, lbl_8066C3C8@sda21
/* 803E7478 003B0A38  7C E8 38 AE */	lbzx r7, r8, r7
/* 803E747C 003B0A3C  39 29 FC 3F */	addi r9, r9, 0xFE07FC3F@l
/* 803E7480 003B0A40  99 6A 80 00 */	stb r11, 0xCC008000@l(r10)
/* 803E7484 003B0A44  38 A5 FF FF */	addi r5, r5, -1
/* 803E7488 003B0A48  54 80 25 36 */	rlwinm r0, r4, 4, 0x14, 0x1b
/* 803E748C 003B0A4C  54 C8 82 1E */	rlwinm r8, r6, 0x10, 8, 0xf
/* 803E7490 003B0A50  54 E6 70 22 */	slwi r6, r7, 0xe
/* 803E7494 003B0A54  91 2A 80 00 */	stw r9, -0x8000(r10)
/* 803E7498 003B0A58  54 A5 50 2A */	slwi r5, r5, 0xa
/* 803E749C 003B0A5C  7C 60 03 78 */	or r0, r3, r0
/* 803E74A0 003B0A60  7C A0 03 78 */	or r0, r5, r0
/* 803E74A4 003B0A64  7D 06 33 78 */	or r6, r8, r6
/* 803E74A8 003B0A68  7C C0 03 78 */	or r0, r6, r0
/* 803E74AC 003B0A6C  99 6A 80 00 */	stb r11, -0x8000(r10)
/* 803E74B0 003B0A70  38 E0 00 10 */	li r7, 0x10
/* 803E74B4 003B0A74  38 C0 00 00 */	li r6, 0
/* 803E74B8 003B0A78  90 0A 80 00 */	stw r0, -0x8000(r10)
/* 803E74BC 003B0A7C  38 A0 10 09 */	li r5, 0x1009
/* 803E74C0 003B0A80  38 00 10 3F */	li r0, 0x103f
/* 803E74C4 003B0A84  98 EA 80 00 */	stb r7, -0x8000(r10)
/* 803E74C8 003B0A88  B0 CA 80 00 */	sth r6, -0x8000(r10)
/* 803E74CC 003B0A8C  B0 AA 80 00 */	sth r5, -0x8000(r10)
/* 803E74D0 003B0A90  90 8A 80 00 */	stw r4, -0x8000(r10)
/* 803E74D4 003B0A94  98 EA 80 00 */	stb r7, -0x8000(r10)
/* 803E74D8 003B0A98  B0 CA 80 00 */	sth r6, -0x8000(r10)
/* 803E74DC 003B0A9C  B0 0A 80 00 */	sth r0, -0x8000(r10)
/* 803E74E0 003B0AA0  90 6A 80 00 */	stw r3, -0x8000(r10)
/* 803E74E4 003B0AA4  4E 80 00 20 */	blr 

.global GDSetCullMode__Q34nw4r3g3d4fifoF11_GXCullMode
GDSetCullMode__Q34nw4r3g3d4fifoF11_GXCullMode:
/* 803E74E8 003B0AA8  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 803E74EC 003B0AAC  38 C0 00 61 */	li r6, 0x61
/* 803E74F0 003B0AB0  3C 80 FE 01 */	lis r4, 0xFE00C000@ha
/* 803E74F4 003B0AB4  98 C5 80 00 */	stb r6, 0xCC008000@l(r5)
/* 803E74F8 003B0AB8  38 04 C0 00 */	addi r0, r4, 0xFE00C000@l
/* 803E74FC 003B0ABC  90 05 80 00 */	stw r0, -0x8000(r5)
/* 803E7500 003B0AC0  38 82 C0 48 */	addi r4, r2, lbl_8066C3C8@sda21
/* 803E7504 003B0AC4  7C 04 18 AE */	lbzx r0, r4, r3
/* 803E7508 003B0AC8  98 C5 80 00 */	stb r6, -0x8000(r5)
/* 803E750C 003B0ACC  54 00 70 22 */	slwi r0, r0, 0xe
/* 803E7510 003B0AD0  90 05 80 00 */	stw r0, -0x8000(r5)
/* 803E7514 003B0AD4  4E 80 00 20 */	blr 

.global GDSetTexCoordScale2__Q34nw4r3g3d4fifoF13_GXTexCoordIDUsUcUcUsUcUc
GDSetTexCoordScale2__Q34nw4r3g3d4fifoF13_GXTexCoordIDUsUcUcUsUcUc:
/* 803E7518 003B0AD8  3D 60 CC 01 */	lis r11, 0xCC008000@ha
/* 803E751C 003B0ADC  39 80 00 61 */	li r12, 0x61
/* 803E7520 003B0AE0  3D 40 FE 04 */	lis r10, 0xFE03FFFF@ha
/* 803E7524 003B0AE4  99 8B 80 00 */	stb r12, 0xCC008000@l(r11)
/* 803E7528 003B0AE8  38 0A FF FF */	addi r0, r10, 0xFE03FFFF@l
/* 803E752C 003B0AEC  38 84 FF FF */	addi r4, r4, -1
/* 803E7530 003B0AF0  54 6A 08 3C */	slwi r10, r3, 1
/* 803E7534 003B0AF4  90 0B 80 00 */	stw r0, -0x8000(r11)
/* 803E7538 003B0AF8  54 A3 82 1E */	rlwinm r3, r5, 0x10, 8, 0xf
/* 803E753C 003B0AFC  54 C5 89 DC */	rlwinm r5, r6, 0x11, 7, 0xe
/* 803E7540 003B0B00  7C 83 1B 78 */	or r3, r4, r3
/* 803E7544 003B0B04  38 0A 00 30 */	addi r0, r10, 0x30
/* 803E7548 003B0B08  7C A3 1B 78 */	or r3, r5, r3
/* 803E754C 003B0B0C  99 8B 80 00 */	stb r12, -0x8000(r11)
/* 803E7550 003B0B10  54 00 C0 0E */	slwi r0, r0, 0x18
/* 803E7554 003B0B14  38 87 FF FF */	addi r4, r7, -1
/* 803E7558 003B0B18  7C 60 03 78 */	or r0, r3, r0
/* 803E755C 003B0B1C  55 03 82 1E */	rlwinm r3, r8, 0x10, 8, 0xf
/* 803E7560 003B0B20  90 0B 80 00 */	stw r0, -0x8000(r11)
/* 803E7564 003B0B24  38 0A 00 31 */	addi r0, r10, 0x31
/* 803E7568 003B0B28  55 25 89 DC */	rlwinm r5, r9, 0x11, 7, 0xe
/* 803E756C 003B0B2C  7C 83 1B 78 */	or r3, r4, r3
/* 803E7570 003B0B30  99 8B 80 00 */	stb r12, -0x8000(r11)
/* 803E7574 003B0B34  7C A3 1B 78 */	or r3, r5, r3
/* 803E7578 003B0B38  54 00 C0 0E */	slwi r0, r0, 0x18
/* 803E757C 003B0B3C  7C 60 03 78 */	or r0, r3, r0
/* 803E7580 003B0B40  90 0B 80 00 */	stw r0, -0x8000(r11)
/* 803E7584 003B0B44  4E 80 00 20 */	blr 

.global GDSetIndTexMtx__Q34nw4r3g3d4fifoFUlRCQ34nw4r4math5MTX34
GDSetIndTexMtx__Q34nw4r3g3d4fifoFUlRCQ34nw4r4math5MTX34:
/* 803E7588 003B0B48  C0 44 00 00 */	lfs f2, 0(r4)
/* 803E758C 003B0B4C  38 A0 00 00 */	li r5, 0
/* 803E7590 003B0B50  C0 64 00 04 */	lfs f3, 4(r4)
/* 803E7594 003B0B54  FC A0 12 10 */	fabs f5, f2
/* 803E7598 003B0B58  C0 02 C0 4C */	lfs f0, float_8066C3CC@sda21(r2)
/* 803E759C 003B0B5C  C0 C4 00 08 */	lfs f6, 8(r4)
/* 803E75A0 003B0B60  FD 20 1A 10 */	fabs f9, f3
/* 803E75A4 003B0B64  C0 84 00 10 */	lfs f4, 0x10(r4)
/* 803E75A8 003B0B68  C0 E4 00 14 */	lfs f7, 0x14(r4)
/* 803E75AC 003B0B6C  C1 04 00 18 */	lfs f8, 0x18(r4)
/* 803E75B0 003B0B70  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 803E75B4 003B0B74  FD 40 32 10 */	fabs f10, f6
/* 803E75B8 003B0B78  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803E75BC 003B0B7C  FD 60 22 10 */	fabs f11, f4
/* 803E75C0 003B0B80  FD 80 3A 10 */	fabs f12, f7
/* 803E75C4 003B0B84  FD A0 42 10 */	fabs f13, f8
/* 803E75C8 003B0B88  4C 41 13 82 */	cror 2, 1, 2
/* 803E75CC 003B0B8C  41 82 00 40 */	beq .L_803E760C
/* 803E75D0 003B0B90  FC 09 00 40 */	fcmpo cr0, f9, f0
/* 803E75D4 003B0B94  4C 41 13 82 */	cror 2, 1, 2
/* 803E75D8 003B0B98  41 82 00 34 */	beq .L_803E760C
/* 803E75DC 003B0B9C  FC 0A 00 40 */	fcmpo cr0, f10, f0
/* 803E75E0 003B0BA0  4C 41 13 82 */	cror 2, 1, 2
/* 803E75E4 003B0BA4  41 82 00 28 */	beq .L_803E760C
/* 803E75E8 003B0BA8  FC 0B 00 40 */	fcmpo cr0, f11, f0
/* 803E75EC 003B0BAC  4C 41 13 82 */	cror 2, 1, 2
/* 803E75F0 003B0BB0  41 82 00 1C */	beq .L_803E760C
/* 803E75F4 003B0BB4  FC 0C 00 40 */	fcmpo cr0, f12, f0
/* 803E75F8 003B0BB8  4C 41 13 82 */	cror 2, 1, 2
/* 803E75FC 003B0BBC  41 82 00 10 */	beq .L_803E760C
/* 803E7600 003B0BC0  FC 0D 00 40 */	fcmpo cr0, f13, f0
/* 803E7604 003B0BC4  4C 41 13 82 */	cror 2, 1, 2
/* 803E7608 003B0BC8  40 82 00 98 */	bne .L_803E76A0
.L_803E760C:
/* 803E760C 003B0BCC  C0 22 C0 50 */	lfs f1, float_8066C3D0@sda21(r2)
/* 803E7610 003B0BD0  C0 02 C0 4C */	lfs f0, float_8066C3CC@sda21(r2)
.L_803E7614:
/* 803E7614 003B0BD4  7C A0 07 74 */	extsb r0, r5
/* 803E7618 003B0BD8  2C 00 00 2E */	cmpwi r0, 0x2e
/* 803E761C 003B0BDC  40 80 01 2C */	bge .L_803E7748
/* 803E7620 003B0BE0  EC A5 00 72 */	fmuls f5, f5, f1
/* 803E7624 003B0BE4  EC 42 00 72 */	fmuls f2, f2, f1
/* 803E7628 003B0BE8  EC 63 00 72 */	fmuls f3, f3, f1
/* 803E762C 003B0BEC  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 803E7630 003B0BF0  EC C6 00 72 */	fmuls f6, f6, f1
/* 803E7634 003B0BF4  EC 84 00 72 */	fmuls f4, f4, f1
/* 803E7638 003B0BF8  EC E7 00 72 */	fmuls f7, f7, f1
/* 803E763C 003B0BFC  ED 08 00 72 */	fmuls f8, f8, f1
/* 803E7640 003B0C00  ED 29 00 72 */	fmuls f9, f9, f1
/* 803E7644 003B0C04  ED 4A 00 72 */	fmuls f10, f10, f1
/* 803E7648 003B0C08  ED 6B 00 72 */	fmuls f11, f11, f1
/* 803E764C 003B0C0C  ED 8C 00 72 */	fmuls f12, f12, f1
/* 803E7650 003B0C10  ED AD 00 72 */	fmuls f13, f13, f1
/* 803E7654 003B0C14  4C 41 13 82 */	cror 2, 1, 2
/* 803E7658 003B0C18  38 A5 00 01 */	addi r5, r5, 1
/* 803E765C 003B0C1C  41 82 FF B8 */	beq .L_803E7614
/* 803E7660 003B0C20  FC 09 00 40 */	fcmpo cr0, f9, f0
/* 803E7664 003B0C24  4C 41 13 82 */	cror 2, 1, 2
/* 803E7668 003B0C28  41 82 FF AC */	beq .L_803E7614
/* 803E766C 003B0C2C  FC 0A 00 40 */	fcmpo cr0, f10, f0
/* 803E7670 003B0C30  4C 41 13 82 */	cror 2, 1, 2
/* 803E7674 003B0C34  41 82 FF A0 */	beq .L_803E7614
/* 803E7678 003B0C38  FC 0B 00 40 */	fcmpo cr0, f11, f0
/* 803E767C 003B0C3C  4C 41 13 82 */	cror 2, 1, 2
/* 803E7680 003B0C40  41 82 FF 94 */	beq .L_803E7614
/* 803E7684 003B0C44  FC 0C 00 40 */	fcmpo cr0, f12, f0
/* 803E7688 003B0C48  4C 41 13 82 */	cror 2, 1, 2
/* 803E768C 003B0C4C  41 82 FF 88 */	beq .L_803E7614
/* 803E7690 003B0C50  FC 0D 00 40 */	fcmpo cr0, f13, f0
/* 803E7694 003B0C54  4C 41 13 82 */	cror 2, 1, 2
/* 803E7698 003B0C58  41 82 FF 7C */	beq .L_803E7614
/* 803E769C 003B0C5C  48 00 00 AC */	b .L_803E7748
.L_803E76A0:
/* 803E76A0 003B0C60  C0 22 C0 50 */	lfs f1, float_8066C3D0@sda21(r2)
/* 803E76A4 003B0C64  FC 05 08 40 */	fcmpo cr0, f5, f1
/* 803E76A8 003B0C68  40 80 00 A0 */	bge .L_803E7748
/* 803E76AC 003B0C6C  FC 09 08 40 */	fcmpo cr0, f9, f1
/* 803E76B0 003B0C70  40 80 00 98 */	bge .L_803E7748
/* 803E76B4 003B0C74  FC 0A 08 40 */	fcmpo cr0, f10, f1
/* 803E76B8 003B0C78  40 80 00 90 */	bge .L_803E7748
/* 803E76BC 003B0C7C  FC 0B 08 40 */	fcmpo cr0, f11, f1
/* 803E76C0 003B0C80  40 80 00 88 */	bge .L_803E7748
/* 803E76C4 003B0C84  FC 0C 08 40 */	fcmpo cr0, f12, f1
/* 803E76C8 003B0C88  40 80 00 80 */	bge .L_803E7748
/* 803E76CC 003B0C8C  FC 0D 08 40 */	fcmpo cr0, f13, f1
/* 803E76D0 003B0C90  40 80 00 78 */	bge .L_803E7748
/* 803E76D4 003B0C94  C0 02 C0 54 */	lfs f0, float_8066C3D4@sda21(r2)
.L_803E76D8:
/* 803E76D8 003B0C98  EC A5 00 32 */	fmuls f5, f5, f0
/* 803E76DC 003B0C9C  38 A5 FF FF */	addi r5, r5, -1
/* 803E76E0 003B0CA0  EC 42 00 32 */	fmuls f2, f2, f0
/* 803E76E4 003B0CA4  EC 63 00 32 */	fmuls f3, f3, f0
/* 803E76E8 003B0CA8  FC 05 08 40 */	fcmpo cr0, f5, f1
/* 803E76EC 003B0CAC  EC C6 00 32 */	fmuls f6, f6, f0
/* 803E76F0 003B0CB0  EC 84 00 32 */	fmuls f4, f4, f0
/* 803E76F4 003B0CB4  EC E7 00 32 */	fmuls f7, f7, f0
/* 803E76F8 003B0CB8  ED 08 00 32 */	fmuls f8, f8, f0
/* 803E76FC 003B0CBC  ED 29 00 32 */	fmuls f9, f9, f0
/* 803E7700 003B0CC0  ED 4A 00 32 */	fmuls f10, f10, f0
/* 803E7704 003B0CC4  ED 6B 00 32 */	fmuls f11, f11, f0
/* 803E7708 003B0CC8  ED 8C 00 32 */	fmuls f12, f12, f0
/* 803E770C 003B0CCC  ED AD 00 32 */	fmuls f13, f13, f0
/* 803E7710 003B0CD0  40 80 00 38 */	bge .L_803E7748
/* 803E7714 003B0CD4  FC 09 08 40 */	fcmpo cr0, f9, f1
/* 803E7718 003B0CD8  40 80 00 30 */	bge .L_803E7748
/* 803E771C 003B0CDC  FC 0A 08 40 */	fcmpo cr0, f10, f1
/* 803E7720 003B0CE0  40 80 00 28 */	bge .L_803E7748
/* 803E7724 003B0CE4  FC 0B 08 40 */	fcmpo cr0, f11, f1
/* 803E7728 003B0CE8  40 80 00 20 */	bge .L_803E7748
/* 803E772C 003B0CEC  FC 0C 08 40 */	fcmpo cr0, f12, f1
/* 803E7730 003B0CF0  40 80 00 18 */	bge .L_803E7748
/* 803E7734 003B0CF4  FC 0D 08 40 */	fcmpo cr0, f13, f1
/* 803E7738 003B0CF8  40 80 00 10 */	bge .L_803E7748
/* 803E773C 003B0CFC  7C A0 07 74 */	extsb r0, r5
/* 803E7740 003B0D00  2C 00 FF EF */	cmpwi r0, -17
/* 803E7744 003B0D04  41 81 FF 94 */	bgt .L_803E76D8
.L_803E7748:
/* 803E7748 003B0D08  C0 A2 C0 58 */	lfs f5, float_8066C3D8@sda21(r2)
/* 803E774C 003B0D0C  39 25 00 11 */	addi r9, r5, 0x11
/* 803E7750 003B0D10  38 03 00 06 */	addi r0, r3, 6
/* 803E7754 003B0D14  3C E0 CC 01 */	lis r7, 0xCC008000@ha
/* 803E7758 003B0D18  EC 45 00 B2 */	fmuls f2, f5, f2
/* 803E775C 003B0D1C  55 25 B2 12 */	rlwinm r5, r9, 0x16, 8, 9
/* 803E7760 003B0D20  EC 05 01 32 */	fmuls f0, f5, f4
/* 803E7764 003B0D24  50 05 C0 0E */	rlwimi r5, r0, 0x18, 0, 7
/* 803E7768 003B0D28  EC 25 00 F2 */	fmuls f1, f5, f3
/* 803E776C 003B0D2C  39 00 00 61 */	li r8, 0x61
/* 803E7770 003B0D30  FC 80 00 1E */	fctiwz f4, f0
/* 803E7774 003B0D34  38 03 00 07 */	addi r0, r3, 7
/* 803E7778 003B0D38  FC 40 10 1E */	fctiwz f2, f2
/* 803E777C 003B0D3C  55 26 A2 12 */	rlwinm r6, r9, 0x14, 8, 9
/* 803E7780 003B0D40  EC 05 01 F2 */	fmuls f0, f5, f7
/* 803E7784 003B0D44  50 06 C0 0E */	rlwimi r6, r0, 0x18, 0, 7
/* 803E7788 003B0D48  D8 41 00 08 */	stfd f2, 8(r1)
/* 803E778C 003B0D4C  FC 60 08 1E */	fctiwz f3, f1
/* 803E7790 003B0D50  FC 40 00 1E */	fctiwz f2, f0
/* 803E7794 003B0D54  D8 81 00 10 */	stfd f4, 0x10(r1)
/* 803E7798 003B0D58  EC 25 01 B2 */	fmuls f1, f5, f6
/* 803E779C 003B0D5C  EC 05 02 32 */	fmuls f0, f5, f8
/* 803E77A0 003B0D60  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803E77A4 003B0D64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E77A8 003B0D68  FC 20 08 1E */	fctiwz f1, f1
/* 803E77AC 003B0D6C  99 07 80 00 */	stb r8, 0xCC008000@l(r7)
/* 803E77B0 003B0D70  54 00 5A A8 */	rlwinm r0, r0, 0xb, 0xa, 0x14
/* 803E77B4 003B0D74  50 80 05 7E */	rlwimi r0, r4, 0, 0x15, 0x1f
/* 803E77B8 003B0D78  FC 00 00 1E */	fctiwz f0, f0
/* 803E77BC 003B0D7C  7C A0 03 78 */	or r0, r5, r0
/* 803E77C0 003B0D80  90 07 80 00 */	stw r0, -0x8000(r7)
/* 803E77C4 003B0D84  38 03 00 08 */	addi r0, r3, 8
/* 803E77C8 003B0D88  55 24 92 12 */	rlwinm r4, r9, 0x12, 8, 9
/* 803E77CC 003B0D8C  D8 41 00 20 */	stfd f2, 0x20(r1)
/* 803E77D0 003B0D90  50 04 C0 0E */	rlwimi r4, r0, 0x18, 0, 7
/* 803E77D4 003B0D94  D8 61 00 18 */	stfd f3, 0x18(r1)
/* 803E77D8 003B0D98  80 61 00 24 */	lwz r3, 0x24(r1)
/* 803E77DC 003B0D9C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803E77E0 003B0DA0  54 65 5A A8 */	rlwinm r5, r3, 0xb, 0xa, 0x14
/* 803E77E4 003B0DA4  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 803E77E8 003B0DA8  50 05 05 7E */	rlwimi r5, r0, 0, 0x15, 0x1f
/* 803E77EC 003B0DAC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 803E77F0 003B0DB0  7C C5 2B 78 */	or r5, r6, r5
/* 803E77F4 003B0DB4  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 803E77F8 003B0DB8  99 07 80 00 */	stb r8, -0x8000(r7)
/* 803E77FC 003B0DBC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803E7800 003B0DC0  90 A7 80 00 */	stw r5, -0x8000(r7)
/* 803E7804 003B0DC4  54 00 5A A8 */	rlwinm r0, r0, 0xb, 0xa, 0x14
/* 803E7808 003B0DC8  50 60 05 7E */	rlwimi r0, r3, 0, 0x15, 0x1f
/* 803E780C 003B0DCC  99 07 80 00 */	stb r8, -0x8000(r7)
/* 803E7810 003B0DD0  7C 80 03 78 */	or r0, r4, r0
/* 803E7814 003B0DD4  90 07 80 00 */	stw r0, -0x8000(r7)
/* 803E7818 003B0DD8  38 21 00 40 */	addi r1, r1, 0x40
/* 803E781C 003B0DDC  4E 80 00 20 */	blr 

.global GDResetCurrentMtx__Q34nw4r3g3d4fifoFv
GDResetCurrentMtx__Q34nw4r3g3d4fifoFv:
/* 803E7820 003B0DE0  3D 00 CC 01 */	lis r8, 0xCC008000@ha
/* 803E7824 003B0DE4  39 20 00 08 */	li r9, 8
/* 803E7828 003B0DE8  99 28 80 00 */	stb r9, 0xCC008000@l(r8)
/* 803E782C 003B0DEC  38 00 00 30 */	li r0, 0x30
/* 803E7830 003B0DF0  3C 80 3C F4 */	lis r4, 0x3CF3CF00@ha
/* 803E7834 003B0DF4  3C 60 00 F4 */	lis r3, 0x00F3CF3C@ha
/* 803E7838 003B0DF8  98 08 80 00 */	stb r0, -0x8000(r8)
/* 803E783C 003B0DFC  38 E4 CF 00 */	addi r7, r4, 0x3CF3CF00@l
/* 803E7840 003B0E00  38 A3 CF 3C */	addi r5, r3, 0x00F3CF3C@l
/* 803E7844 003B0E04  38 C0 00 40 */	li r6, 0x40
/* 803E7848 003B0E08  90 E8 80 00 */	stw r7, -0x8000(r8)
/* 803E784C 003B0E0C  38 80 00 10 */	li r4, 0x10
/* 803E7850 003B0E10  38 60 00 01 */	li r3, 1
/* 803E7854 003B0E14  38 00 10 18 */	li r0, 0x1018
/* 803E7858 003B0E18  99 28 80 00 */	stb r9, -0x8000(r8)
/* 803E785C 003B0E1C  98 C8 80 00 */	stb r6, -0x8000(r8)
/* 803E7860 003B0E20  90 A8 80 00 */	stw r5, -0x8000(r8)
/* 803E7864 003B0E24  98 88 80 00 */	stb r4, -0x8000(r8)
/* 803E7868 003B0E28  B0 68 80 00 */	sth r3, -0x8000(r8)
/* 803E786C 003B0E2C  B0 08 80 00 */	sth r0, -0x8000(r8)
/* 803E7870 003B0E30  90 E8 80 00 */	stw r7, -0x8000(r8)
/* 803E7874 003B0E34  90 A8 80 00 */	stw r5, -0x8000(r8)
/* 803E7878 003B0E38  4E 80 00 20 */	blr 

.global GDSetCurrentMtx__Q34nw4r3g3d4fifoFPCUl
GDSetCurrentMtx__Q34nw4r3g3d4fifoFPCUl:
/* 803E787C 003B0E3C  80 E3 00 00 */	lwz r7, 0(r3)
/* 803E7880 003B0E40  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 803E7884 003B0E44  38 00 00 10 */	li r0, 0x10
/* 803E7888 003B0E48  80 C3 00 04 */	lwz r6, 4(r3)
/* 803E788C 003B0E4C  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 803E7890 003B0E50  38 80 00 01 */	li r4, 1
/* 803E7894 003B0E54  81 03 00 08 */	lwz r8, 8(r3)
/* 803E7898 003B0E58  54 E7 30 32 */	slwi r7, r7, 6
/* 803E789C 003B0E5C  54 C6 60 26 */	slwi r6, r6, 0xc
/* 803E78A0 003B0E60  81 23 00 0C */	lwz r9, 0xc(r3)
/* 803E78A4 003B0E64  B0 85 80 00 */	sth r4, -0x8000(r5)
/* 803E78A8 003B0E68  7C E6 33 78 */	or r6, r7, r6
/* 803E78AC 003B0E6C  38 00 10 18 */	li r0, 0x1018
/* 803E78B0 003B0E70  55 08 90 1A */	slwi r8, r8, 0x12
/* 803E78B4 003B0E74  55 2A C0 0E */	slwi r10, r9, 0x18
/* 803E78B8 003B0E78  80 83 00 14 */	lwz r4, 0x14(r3)
/* 803E78BC 003B0E7C  7D 09 33 78 */	or r9, r8, r6
/* 803E78C0 003B0E80  80 E3 00 18 */	lwz r7, 0x18(r3)
/* 803E78C4 003B0E84  80 C3 00 10 */	lwz r6, 0x10(r3)
/* 803E78C8 003B0E88  7D 49 4B 78 */	or r9, r10, r9
/* 803E78CC 003B0E8C  81 03 00 1C */	lwz r8, 0x1c(r3)
/* 803E78D0 003B0E90  54 83 30 32 */	slwi r3, r4, 6
/* 803E78D4 003B0E94  B0 05 80 00 */	sth r0, -0x8000(r5)
/* 803E78D8 003B0E98  7C C0 1B 78 */	or r0, r6, r3
/* 803E78DC 003B0E9C  54 E4 60 26 */	slwi r4, r7, 0xc
/* 803E78E0 003B0EA0  55 03 90 1A */	slwi r3, r8, 0x12
/* 803E78E4 003B0EA4  7C 80 03 78 */	or r0, r4, r0
/* 803E78E8 003B0EA8  91 25 80 00 */	stw r9, -0x8000(r5)
/* 803E78EC 003B0EAC  7C 60 03 78 */	or r0, r3, r0
/* 803E78F0 003B0EB0  90 05 80 00 */	stw r0, -0x8000(r5)
/* 803E78F4 003B0EB4  4E 80 00 20 */	blr 

.global GDLoadTexMtxImm3x3__Q34nw4r3g3d4fifoFRCQ34nw4r4math5MTX33Ul
GDLoadTexMtxImm3x3__Q34nw4r3g3d4fifoFRCQ34nw4r4math5MTX33Ul:
/* 803E78F8 003B0EB8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803E78FC 003B0EBC  7C 08 02 A6 */	mflr r0
/* 803E7900 003B0EC0  C0 C2 C0 5C */	lfs f6, float_8066C3DC@sda21(r2)
/* 803E7904 003B0EC4  38 A0 00 00 */	li r5, 0
/* 803E7908 003B0EC8  90 01 00 44 */	stw r0, 0x44(r1)
/* 803E790C 003B0ECC  C1 23 00 00 */	lfs f9, 0(r3)
/* 803E7910 003B0ED0  C1 03 00 04 */	lfs f8, 4(r3)
/* 803E7914 003B0ED4  C0 E3 00 08 */	lfs f7, 8(r3)
/* 803E7918 003B0ED8  C0 A3 00 0C */	lfs f5, 0xc(r3)
/* 803E791C 003B0EDC  C0 83 00 10 */	lfs f4, 0x10(r3)
/* 803E7920 003B0EE0  C0 63 00 14 */	lfs f3, 0x14(r3)
/* 803E7924 003B0EE4  C0 43 00 18 */	lfs f2, 0x18(r3)
/* 803E7928 003B0EE8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 803E792C 003B0EEC  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 803E7930 003B0EF0  38 61 00 08 */	addi r3, r1, 8
/* 803E7934 003B0EF4  D1 21 00 08 */	stfs f9, 8(r1)
/* 803E7938 003B0EF8  D1 01 00 0C */	stfs f8, 0xc(r1)
/* 803E793C 003B0EFC  D0 E1 00 10 */	stfs f7, 0x10(r1)
/* 803E7940 003B0F00  D0 C1 00 14 */	stfs f6, 0x14(r1)
/* 803E7944 003B0F04  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 803E7948 003B0F08  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 803E794C 003B0F0C  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 803E7950 003B0F10  D0 C1 00 24 */	stfs f6, 0x24(r1)
/* 803E7954 003B0F14  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 803E7958 003B0F18  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 803E795C 003B0F1C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 803E7960 003B0F20  D0 C1 00 34 */	stfs f6, 0x34(r1)
/* 803E7964 003B0F24  4B F3 6D DD */	bl GXLoadTexMtxImm
/* 803E7968 003B0F28  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803E796C 003B0F2C  7C 08 03 A6 */	mtlr r0
/* 803E7970 003B0F30  38 21 00 40 */	addi r1, r1, 0x40
/* 803E7974 003B0F34  4E 80 00 20 */	blr 

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.global lbl_8066C3C8
lbl_8066C3C8:
	.4byte 0x00020103


.global float_8066C3CC
float_8066C3CC:
	.float 1.0


.global float_8066C3D0
float_8066C3D0:
	.float 0.5


.global float_8066C3D4
float_8066C3D4:
	.float 2 #0x40000000


.global float_8066C3D8
float_8066C3D8:
	.float 1024 #0x44800000


.global float_8066C3DC
float_8066C3DC:
	.4byte 0
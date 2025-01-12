.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global ReadNextCharUTF8__Q34nw4r2ut14CharStrmReaderFv
ReadNextCharUTF8__Q34nw4r2ut14CharStrmReaderFv:
/* 8042B5F0 003F4BB0  80 E3 00 00 */	lwz r7, 0(r3)
/* 8042B5F4 003F4BB4  88 C7 00 00 */	lbz r6, 0(r7)
/* 8042B5F8 003F4BB8  54 C0 06 31 */	rlwinm. r0, r6, 0, 0x18, 0x18
/* 8042B5FC 003F4BBC  40 82 00 14 */	bne .L_8042B610
/* 8042B600 003F4BC0  80 83 00 00 */	lwz r4, 0(r3)
/* 8042B604 003F4BC4  38 04 00 01 */	addi r0, r4, 1
/* 8042B608 003F4BC8  90 03 00 00 */	stw r0, 0(r3)
/* 8042B60C 003F4BCC  48 00 00 54 */	b .L_8042B660
.L_8042B610:
/* 8042B610 003F4BD0  54 C0 06 34 */	rlwinm r0, r6, 0, 0x18, 0x1a
/* 8042B614 003F4BD4  2C 00 00 C0 */	cmpwi r0, 0xc0
/* 8042B618 003F4BD8  40 82 00 24 */	bne .L_8042B63C
/* 8042B61C 003F4BDC  80 83 00 00 */	lwz r4, 0(r3)
/* 8042B620 003F4BE0  88 A7 00 01 */	lbz r5, 1(r7)
/* 8042B624 003F4BE4  38 04 00 02 */	addi r0, r4, 2
/* 8042B628 003F4BE8  54 A4 06 BE */	clrlwi r4, r5, 0x1a
/* 8042B62C 003F4BEC  90 03 00 00 */	stw r0, 0(r3)
/* 8042B630 003F4BF0  50 C4 35 72 */	rlwimi r4, r6, 6, 0x15, 0x19
/* 8042B634 003F4BF4  7C 86 23 78 */	mr r6, r4
/* 8042B638 003F4BF8  48 00 00 28 */	b .L_8042B660
.L_8042B63C:
/* 8042B63C 003F4BFC  80 83 00 00 */	lwz r4, 0(r3)
/* 8042B640 003F4C00  54 C5 63 E6 */	rlwinm r5, r6, 0xc, 0xf, 0x13
/* 8042B644 003F4C04  88 C7 00 01 */	lbz r6, 1(r7)
/* 8042B648 003F4C08  88 E7 00 02 */	lbz r7, 2(r7)
/* 8042B64C 003F4C0C  38 04 00 03 */	addi r0, r4, 3
/* 8042B650 003F4C10  50 C5 35 32 */	rlwimi r5, r6, 6, 0x14, 0x19
/* 8042B654 003F4C14  50 E5 06 BE */	rlwimi r5, r7, 0, 0x1a, 0x1f
/* 8042B658 003F4C18  90 03 00 00 */	stw r0, 0(r3)
/* 8042B65C 003F4C1C  54 A6 04 3E */	clrlwi r6, r5, 0x10
.L_8042B660:
/* 8042B660 003F4C20  7C C3 33 78 */	mr r3, r6
/* 8042B664 003F4C24  4E 80 00 20 */	blr 

.global ReadNextCharUTF16__Q34nw4r2ut14CharStrmReaderFv
ReadNextCharUTF16__Q34nw4r2ut14CharStrmReaderFv:
/* 8042B668 003F4C28  7C 65 1B 78 */	mr r5, r3
/* 8042B66C 003F4C2C  80 63 00 00 */	lwz r3, 0(r3)
/* 8042B670 003F4C30  80 85 00 00 */	lwz r4, 0(r5)
/* 8042B674 003F4C34  A0 63 00 00 */	lhz r3, 0(r3)
/* 8042B678 003F4C38  38 04 00 02 */	addi r0, r4, 2
/* 8042B67C 003F4C3C  90 05 00 00 */	stw r0, 0(r5)
/* 8042B680 003F4C40  4E 80 00 20 */	blr 

.global ReadNextCharCP1252__Q34nw4r2ut14CharStrmReaderFv
ReadNextCharCP1252__Q34nw4r2ut14CharStrmReaderFv:
/* 8042B684 003F4C44  7C 65 1B 78 */	mr r5, r3
/* 8042B688 003F4C48  80 63 00 00 */	lwz r3, 0(r3)
/* 8042B68C 003F4C4C  80 85 00 00 */	lwz r4, 0(r5)
/* 8042B690 003F4C50  88 63 00 00 */	lbz r3, 0(r3)
/* 8042B694 003F4C54  38 04 00 01 */	addi r0, r4, 1
/* 8042B698 003F4C58  90 05 00 00 */	stw r0, 0(r5)
/* 8042B69C 003F4C5C  4E 80 00 20 */	blr 

.global ReadNextCharSJIS__Q34nw4r2ut14CharStrmReaderFv
ReadNextCharSJIS__Q34nw4r2ut14CharStrmReaderFv:
/* 8042B6A0 003F4C60  80 C3 00 00 */	lwz r6, 0(r3)
/* 8042B6A4 003F4C64  38 00 00 00 */	li r0, 0
/* 8042B6A8 003F4C68  88 A6 00 00 */	lbz r5, 0(r6)
/* 8042B6AC 003F4C6C  28 05 00 81 */	cmplwi r5, 0x81
/* 8042B6B0 003F4C70  41 80 00 0C */	blt .L_8042B6BC
/* 8042B6B4 003F4C74  28 05 00 A0 */	cmplwi r5, 0xa0
/* 8042B6B8 003F4C78  41 80 00 0C */	blt .L_8042B6C4
.L_8042B6BC:
/* 8042B6BC 003F4C7C  28 05 00 E0 */	cmplwi r5, 0xe0
/* 8042B6C0 003F4C80  41 80 00 08 */	blt .L_8042B6C8
.L_8042B6C4:
/* 8042B6C4 003F4C84  38 00 00 01 */	li r0, 1
.L_8042B6C8:
/* 8042B6C8 003F4C88  2C 00 00 00 */	cmpwi r0, 0
/* 8042B6CC 003F4C8C  41 82 00 1C */	beq .L_8042B6E8
/* 8042B6D0 003F4C90  80 83 00 00 */	lwz r4, 0(r3)
/* 8042B6D4 003F4C94  88 C6 00 01 */	lbz r6, 1(r6)
/* 8042B6D8 003F4C98  50 A6 44 2E */	rlwimi r6, r5, 8, 0x10, 0x17
/* 8042B6DC 003F4C9C  38 04 00 02 */	addi r0, r4, 2
/* 8042B6E0 003F4CA0  90 03 00 00 */	stw r0, 0(r3)
/* 8042B6E4 003F4CA4  48 00 00 14 */	b .L_8042B6F8
.L_8042B6E8:
/* 8042B6E8 003F4CA8  80 83 00 00 */	lwz r4, 0(r3)
/* 8042B6EC 003F4CAC  7C A6 2B 78 */	mr r6, r5
/* 8042B6F0 003F4CB0  38 04 00 01 */	addi r0, r4, 1
/* 8042B6F4 003F4CB4  90 03 00 00 */	stw r0, 0(r3)
.L_8042B6F8:
/* 8042B6F8 003F4CB8  7C C3 33 78 */	mr r3, r6
/* 8042B6FC 003F4CBC  4E 80 00 20 */	blr 
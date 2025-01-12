.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900


.balign 16, 0
.global __OSCreateNandbootInfo
__OSCreateNandbootInfo:
/* 8035E610 00327BD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035E614 00327BD4  7C 08 02 A6 */	mflr r0
/* 8035E618 00327BD8  3C 60 80 56 */	lis r3, lbl_8055EE98@ha
/* 8035E61C 00327BDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035E620 00327BE0  38 81 00 08 */	addi r4, r1, 8
/* 8035E624 00327BE4  38 63 EE 98 */	addi r3, r3, lbl_8055EE98@l
/* 8035E628 00327BE8  4B FF 11 89 */	bl NANDPrivateGetStatus
/* 8035E62C 00327BEC  2C 03 00 00 */	cmpwi r3, 0
/* 8035E630 00327BF0  40 82 00 18 */	bne .L_8035E648
/* 8035E634 00327BF4  88 01 00 0F */	lbz r0, 0xf(r1)
/* 8035E638 00327BF8  28 00 00 3F */	cmplwi r0, 0x3f
/* 8035E63C 00327BFC  40 82 00 0C */	bne .L_8035E648
/* 8035E640 00327C00  38 60 00 01 */	li r3, 1
/* 8035E644 00327C04  48 00 00 6C */	b .L_8035E6B0
.L_8035E648:
/* 8035E648 00327C08  2C 03 00 00 */	cmpwi r3, 0
/* 8035E64C 00327C0C  40 82 00 2C */	bne .L_8035E678
/* 8035E650 00327C10  88 01 00 0F */	lbz r0, 0xf(r1)
/* 8035E654 00327C14  28 00 00 3F */	cmplwi r0, 0x3f
/* 8035E658 00327C18  41 82 00 20 */	beq .L_8035E678
/* 8035E65C 00327C1C  3C 60 80 56 */	lis r3, lbl_8055EE98@ha
/* 8035E660 00327C20  38 63 EE 98 */	addi r3, r3, lbl_8055EE98@l
/* 8035E664 00327C24  4B FF 04 8D */	bl NANDPrivateDelete
/* 8035E668 00327C28  2C 03 00 00 */	cmpwi r3, 0
/* 8035E66C 00327C2C  41 82 00 1C */	beq .L_8035E688
/* 8035E670 00327C30  38 60 00 00 */	li r3, 0
/* 8035E674 00327C34  48 00 00 3C */	b .L_8035E6B0
.L_8035E678:
/* 8035E678 00327C38  2C 03 FF F4 */	cmpwi r3, -12
/* 8035E67C 00327C3C  41 82 00 0C */	beq .L_8035E688
/* 8035E680 00327C40  38 60 00 00 */	li r3, 0
/* 8035E684 00327C44  48 00 00 2C */	b .L_8035E6B0
.L_8035E688:
/* 8035E688 00327C48  3C 60 80 56 */	lis r3, lbl_8055EE98@ha
/* 8035E68C 00327C4C  38 80 00 3F */	li r4, 0x3f
/* 8035E690 00327C50  38 63 EE 98 */	addi r3, r3, lbl_8055EE98@l
/* 8035E694 00327C54  38 A0 00 00 */	li r5, 0
/* 8035E698 00327C58  4B FF 00 99 */	bl NANDPrivateCreate
/* 8035E69C 00327C5C  2C 03 00 00 */	cmpwi r3, 0
/* 8035E6A0 00327C60  41 82 00 0C */	beq .L_8035E6AC
/* 8035E6A4 00327C64  38 60 00 00 */	li r3, 0
/* 8035E6A8 00327C68  48 00 00 08 */	b .L_8035E6B0
.L_8035E6AC:
/* 8035E6AC 00327C6C  38 60 00 01 */	li r3, 1
.L_8035E6B0:
/* 8035E6B0 00327C70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035E6B4 00327C74  7C 08 03 A6 */	mtlr r0
/* 8035E6B8 00327C78  38 21 00 10 */	addi r1, r1, 0x10
/* 8035E6BC 00327C7C  4E 80 00 20 */	blr 

.balign 16, 0
.global __OSWriteNandbootInfo
__OSWriteNandbootInfo:
/* 8035E6C0 00327C80  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8035E6C4 00327C84  7C 08 02 A6 */	mflr r0
/* 8035E6C8 00327C88  39 03 00 04 */	addi r8, r3, 4
/* 8035E6CC 00327C8C  38 E0 00 00 */	li r7, 0
/* 8035E6D0 00327C90  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8035E6D4 00327C94  38 00 00 40 */	li r0, 0x40
/* 8035E6D8 00327C98  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8035E6DC 00327C9C  7C 7F 1B 78 */	mr r31, r3
/* 8035E6E0 00327CA0  7C 09 03 A6 */	mtctr r0
.L_8035E6E4:
/* 8035E6E4 00327CA4  80 88 00 00 */	lwz r4, 0(r8)
/* 8035E6E8 00327CA8  80 08 00 04 */	lwz r0, 4(r8)
/* 8035E6EC 00327CAC  7C E7 22 14 */	add r7, r7, r4
/* 8035E6F0 00327CB0  80 88 00 08 */	lwz r4, 8(r8)
/* 8035E6F4 00327CB4  7C E7 02 14 */	add r7, r7, r0
/* 8035E6F8 00327CB8  80 08 00 0C */	lwz r0, 0xc(r8)
/* 8035E6FC 00327CBC  7C E7 22 14 */	add r7, r7, r4
/* 8035E700 00327CC0  80 88 00 10 */	lwz r4, 0x10(r8)
/* 8035E704 00327CC4  7C E7 02 14 */	add r7, r7, r0
/* 8035E708 00327CC8  80 08 00 14 */	lwz r0, 0x14(r8)
/* 8035E70C 00327CCC  7C E7 22 14 */	add r7, r7, r4
/* 8035E710 00327CD0  80 88 00 18 */	lwz r4, 0x18(r8)
/* 8035E714 00327CD4  7C E7 02 14 */	add r7, r7, r0
/* 8035E718 00327CD8  80 08 00 1C */	lwz r0, 0x1c(r8)
/* 8035E71C 00327CDC  7C E7 22 14 */	add r7, r7, r4
/* 8035E720 00327CE0  80 88 00 20 */	lwz r4, 0x20(r8)
/* 8035E724 00327CE4  7C E7 02 14 */	add r7, r7, r0
/* 8035E728 00327CE8  80 08 00 24 */	lwz r0, 0x24(r8)
/* 8035E72C 00327CEC  7C E7 22 14 */	add r7, r7, r4
/* 8035E730 00327CF0  80 88 00 28 */	lwz r4, 0x28(r8)
/* 8035E734 00327CF4  7C E7 02 14 */	add r7, r7, r0
/* 8035E738 00327CF8  80 08 00 2C */	lwz r0, 0x2c(r8)
/* 8035E73C 00327CFC  7C E7 22 14 */	add r7, r7, r4
/* 8035E740 00327D00  80 88 00 30 */	lwz r4, 0x30(r8)
/* 8035E744 00327D04  7C E7 02 14 */	add r7, r7, r0
/* 8035E748 00327D08  80 08 00 34 */	lwz r0, 0x34(r8)
/* 8035E74C 00327D0C  7C E7 22 14 */	add r7, r7, r4
/* 8035E750 00327D10  80 88 00 38 */	lwz r4, 0x38(r8)
/* 8035E754 00327D14  7C E7 02 14 */	add r7, r7, r0
/* 8035E758 00327D18  80 08 00 3C */	lwz r0, 0x3c(r8)
/* 8035E75C 00327D1C  7C E7 22 14 */	add r7, r7, r4
/* 8035E760 00327D20  39 08 00 40 */	addi r8, r8, 0x40
/* 8035E764 00327D24  7C E7 02 14 */	add r7, r7, r0
/* 8035E768 00327D28  42 00 FF 7C */	bdnz .L_8035E6E4
/* 8035E76C 00327D2C  80 08 00 00 */	lwz r0, 0(r8)
/* 8035E770 00327D30  3C C0 80 56 */	lis r6, lbl_8055EE98@ha
/* 8035E774 00327D34  80 A8 00 04 */	lwz r5, 4(r8)
/* 8035E778 00327D38  38 81 00 08 */	addi r4, r1, 8
/* 8035E77C 00327D3C  7C E7 02 14 */	add r7, r7, r0
/* 8035E780 00327D40  80 08 00 08 */	lwz r0, 8(r8)
/* 8035E784 00327D44  7C E7 2A 14 */	add r7, r7, r5
/* 8035E788 00327D48  80 A8 00 0C */	lwz r5, 0xc(r8)
/* 8035E78C 00327D4C  7C E7 02 14 */	add r7, r7, r0
/* 8035E790 00327D50  80 08 00 10 */	lwz r0, 0x10(r8)
/* 8035E794 00327D54  7C E7 2A 14 */	add r7, r7, r5
/* 8035E798 00327D58  80 A8 00 14 */	lwz r5, 0x14(r8)
/* 8035E79C 00327D5C  7C E7 02 14 */	add r7, r7, r0
/* 8035E7A0 00327D60  80 08 00 18 */	lwz r0, 0x18(r8)
/* 8035E7A4 00327D64  7C E7 2A 14 */	add r7, r7, r5
/* 8035E7A8 00327D68  38 A0 00 02 */	li r5, 2
/* 8035E7AC 00327D6C  7C E7 02 14 */	add r7, r7, r0
/* 8035E7B0 00327D70  90 E3 00 00 */	stw r7, 0(r3)
/* 8035E7B4 00327D74  38 66 EE 98 */	addi r3, r6, lbl_8055EE98@l
/* 8035E7B8 00327D78  4B FF 12 99 */	bl NANDPrivateOpen
/* 8035E7BC 00327D7C  2C 03 00 00 */	cmpwi r3, 0
/* 8035E7C0 00327D80  40 82 00 40 */	bne .L_8035E800
/* 8035E7C4 00327D84  7F E4 FB 78 */	mr r4, r31
/* 8035E7C8 00327D88  38 61 00 08 */	addi r3, r1, 8
/* 8035E7CC 00327D8C  38 A0 10 20 */	li r5, 0x1020
/* 8035E7D0 00327D90  4B FF 06 51 */	bl NANDWrite
/* 8035E7D4 00327D94  28 03 10 20 */	cmplwi r3, 0x1020
/* 8035E7D8 00327D98  41 82 00 14 */	beq .L_8035E7EC
/* 8035E7DC 00327D9C  38 61 00 08 */	addi r3, r1, 8
/* 8035E7E0 00327DA0  4B FF 14 81 */	bl NANDClose
/* 8035E7E4 00327DA4  38 60 00 00 */	li r3, 0
/* 8035E7E8 00327DA8  48 00 00 1C */	b .L_8035E804
.L_8035E7EC:
/* 8035E7EC 00327DAC  38 61 00 08 */	addi r3, r1, 8
/* 8035E7F0 00327DB0  4B FF 14 71 */	bl NANDClose
/* 8035E7F4 00327DB4  7C 60 00 34 */	cntlzw r0, r3
/* 8035E7F8 00327DB8  54 03 D9 7E */	srwi r3, r0, 5
/* 8035E7FC 00327DBC  48 00 00 08 */	b .L_8035E804
.L_8035E800:
/* 8035E800 00327DC0  38 60 00 00 */	li r3, 0
.L_8035E804:
/* 8035E804 00327DC4  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8035E808 00327DC8  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8035E80C 00327DCC  7C 08 03 A6 */	mtlr r0
/* 8035E810 00327DD0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8035E814 00327DD4  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_8055EE98
lbl_8055EE98:
	.asciz "/shared2/sys/NANDBOOTINFO"
	.balign 4
	.4byte 0

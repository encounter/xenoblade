.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global AHXSBF_Synthesize
AHXSBF_Synthesize:
/* 8038C368 00355928  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038C36C 0035592C  7C 08 02 A6 */	mflr r0
/* 8038C370 00355930  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038C374 00355934  54 A0 10 3A */	slwi r0, r5, 2
/* 8038C378 00355938  54 A5 60 26 */	slwi r5, r5, 0xc
/* 8038C37C 0035593C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8038C380 00355940  7F E3 02 14 */	add r31, r3, r0
/* 8038C384 00355944  54 80 06 FF */	clrlwi. r0, r4, 0x1b
/* 8038C388 00355948  7C A3 2A 14 */	add r5, r3, r5
/* 8038C38C 0035594C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8038C390 00355950  3B C5 00 14 */	addi r30, r5, 0x14
/* 8038C394 00355954  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8038C398 00355958  7C DD 33 78 */	mr r29, r6
/* 8038C39C 0035595C  93 81 00 10 */	stw r28, 0x10(r1)
/* 8038C3A0 00355960  7C 7C 1B 78 */	mr r28, r3
/* 8038C3A4 00355964  80 FF 00 04 */	lwz r7, 4(r31)
/* 8038C3A8 00355968  38 E7 FF C0 */	addi r7, r7, -64
/* 8038C3AC 0035596C  54 E0 05 BE */	clrlwi r0, r7, 0x16
/* 8038C3B0 00355970  90 1F 00 04 */	stw r0, 4(r31)
/* 8038C3B4 00355974  54 E0 15 3A */	rlwinm r0, r7, 2, 0x14, 0x1d
/* 8038C3B8 00355978  7C BE 02 14 */	add r5, r30, r0
/* 8038C3BC 0035597C  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 8038C3C0 00355980  40 82 00 0C */	bne .L_8038C3CC
/* 8038C3C4 00355984  54 C0 06 FF */	clrlwi. r0, r6, 0x1b
/* 8038C3C8 00355988  41 82 00 08 */	beq .L_8038C3D0
.L_8038C3CC:
/* 8038C3CC 0035598C  48 00 00 00 */	b .L_8038C3CC
.L_8038C3D0:
/* 8038C3D0 00355990  7C 83 23 78 */	mr r3, r4
/* 8038C3D4 00355994  7C C4 33 78 */	mr r4, r6
/* 8038C3D8 00355998  4B FF E5 D9 */	bl ahxsbf_mult_flt_ex
/* 8038C3DC 0035599C  80 9F 00 04 */	lwz r4, 4(r31)
/* 8038C3E0 003559A0  3C 60 80 56 */	lis r3, lbl_805657B8@ha
/* 8038C3E4 003559A4  38 63 57 B8 */	addi r3, r3, lbl_805657B8@l
/* 8038C3E8 003559A8  7F A5 EB 78 */	mr r5, r29
/* 8038C3EC 003559AC  7C 80 36 70 */	srawi r0, r4, 6
/* 8038C3F0 003559B0  54 86 10 3A */	slwi r6, r4, 2
/* 8038C3F4 003559B4  54 00 10 3A */	slwi r0, r0, 2
/* 8038C3F8 003559B8  80 9C 00 10 */	lwz r4, 0x10(r28)
/* 8038C3FC 003559BC  7D 83 00 2E */	lwzx r12, r3, r0
/* 8038C400 003559C0  7C 7E 32 14 */	add r3, r30, r6
/* 8038C404 003559C4  7D 89 03 A6 */	mtctr r12
/* 8038C408 003559C8  4E 80 04 21 */	bctrl 
/* 8038C40C 003559CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038C410 003559D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8038C414 003559D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8038C418 003559D8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8038C41C 003559DC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8038C420 003559E0  7C 08 03 A6 */	mtlr r0
/* 8038C424 003559E4  38 21 00 20 */	addi r1, r1, 0x20
/* 8038C428 003559E8  4E 80 00 20 */	blr


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_805657B8
lbl_805657B8:
	.4byte ahxsbf_mult_float_win0
	.4byte ahxsbf_mult_float_win1
	.4byte ahxsbf_mult_float_win2
	.4byte ahxsbf_mult_float_win3
	.4byte ahxsbf_mult_float_win4
	.4byte ahxsbf_mult_float_win5
	.4byte ahxsbf_mult_float_win6
	.4byte ahxsbf_mult_float_win7
	.4byte ahxsbf_mult_float_win8
	.4byte ahxsbf_mult_float_win9
	.4byte ahxsbf_mult_float_win10
	.4byte ahxsbf_mult_float_win11
	.4byte ahxsbf_mult_float_win12
	.4byte ahxsbf_mult_float_win13
	.4byte ahxsbf_mult_float_win14
	.4byte ahxsbf_mult_float_win15
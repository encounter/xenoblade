.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_802B8604
func_802B8604:
/* 802B8604 00281BC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B8608 00281BC8  7C 08 02 A6 */	mflr r0
/* 802B860C 00281BCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B8610 00281BD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B8614 00281BD4  7C 7F 1B 78 */	mr r31, r3
/* 802B8618 00281BD8  4B E6 9E 39 */	bl func_80122450
/* 802B861C 00281BDC  81 9F 00 08 */	lwz r12, 8(r31)
/* 802B8620 00281BE0  7C 60 00 34 */	cntlzw r0, r3
/* 802B8624 00281BE4  7F E3 FB 78 */	mr r3, r31
/* 802B8628 00281BE8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802B862C 00281BEC  54 04 D9 7E */	srwi r4, r0, 5
/* 802B8630 00281BF0  7D 89 03 A6 */	mtctr r12
/* 802B8634 00281BF4  4E 80 04 21 */	bctrl 
/* 802B8638 00281BF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B863C 00281BFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B8640 00281C00  7C 08 03 A6 */	mtlr r0
/* 802B8644 00281C04  38 21 00 10 */	addi r1, r1, 0x10
/* 802B8648 00281C08  4E 80 00 20 */	blr 

.section extab_, "a"  # 0x800066E0 - 0x80021020

.global lbl_8001BE10
lbl_8001BE10:
	.4byte 0x08080000
	.4byte 0


.section extabindex_, "a"  # 0x80021020 - 0x80039220

.4byte func_802B8604
	.4byte 0x00000048
	.4byte lbl_8001BE10
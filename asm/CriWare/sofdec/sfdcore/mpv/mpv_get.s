.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global MPV_GetPicAtr
MPV_GetPicAtr:
/* 803A6504 0036FAC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A6508 0036FAC8  7C 08 02 A6 */	mflr r0
/* 803A650C 0036FACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A6510 0036FAD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A6514 0036FAD4  7C 7F 1B 78 */	mr r31, r3
/* 803A6518 0036FAD8  93 C1 00 08 */	stw r30, 8(r1)
/* 803A651C 0036FADC  7C 9E 23 78 */	mr r30, r4
/* 803A6520 0036FAE0  48 00 24 B9 */	bl MPVLIB_CheckHn
/* 803A6524 0036FAE4  2C 03 00 00 */	cmpwi r3, 0
/* 803A6528 0036FAE8  41 82 00 18 */	beq .L_803A6540
/* 803A652C 0036FAEC  3C 80 FF 03 */	lis r4, 0xFF03020C@ha
/* 803A6530 0036FAF0  38 60 00 00 */	li r3, 0
/* 803A6534 0036FAF4  38 84 02 0C */	addi r4, r4, 0xFF03020C@l
/* 803A6538 0036FAF8  4B FF FD 05 */	bl MPVERR_SetCode
/* 803A653C 0036FAFC  48 00 00 2C */	b .L_803A6568
.L_803A6540:
/* 803A6540 0036FB00  38 00 00 10 */	li r0, 0x10
/* 803A6544 0036FB04  38 BE FF FC */	addi r5, r30, -4
/* 803A6548 0036FB08  38 9F 0B 58 */	addi r4, r31, 0xb58
/* 803A654C 0036FB0C  7C 09 03 A6 */	mtctr r0
.L_803A6550:
/* 803A6550 0036FB10  80 64 00 04 */	lwz r3, 4(r4)
/* 803A6554 0036FB14  84 04 00 08 */	lwzu r0, 8(r4)
/* 803A6558 0036FB18  90 65 00 04 */	stw r3, 4(r5)
/* 803A655C 0036FB1C  94 05 00 08 */	stwu r0, 8(r5)
/* 803A6560 0036FB20  42 00 FF F0 */	bdnz .L_803A6550
/* 803A6564 0036FB24  38 60 00 00 */	li r3, 0
.L_803A6568:
/* 803A6568 0036FB28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A656C 0036FB2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A6570 0036FB30  83 C1 00 08 */	lwz r30, 8(r1)
/* 803A6574 0036FB34  7C 08 03 A6 */	mtlr r0
/* 803A6578 0036FB38  38 21 00 10 */	addi r1, r1, 0x10
/* 803A657C 0036FB3C  4E 80 00 20 */	blr 

.global MPV_GetBitRate
MPV_GetBitRate:
/* 803A6580 0036FB40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A6584 0036FB44  7C 08 02 A6 */	mflr r0
/* 803A6588 0036FB48  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A658C 0036FB4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A6590 0036FB50  7C 7F 1B 78 */	mr r31, r3
/* 803A6594 0036FB54  93 C1 00 08 */	stw r30, 8(r1)
/* 803A6598 0036FB58  7C 9E 23 78 */	mr r30, r4
/* 803A659C 0036FB5C  48 00 24 3D */	bl MPVLIB_CheckHn
/* 803A65A0 0036FB60  2C 03 00 00 */	cmpwi r3, 0
/* 803A65A4 0036FB64  41 82 00 18 */	beq .L_803A65BC
/* 803A65A8 0036FB68  3C 80 FF 03 */	lis r4, 0xFF03020D@ha
/* 803A65AC 0036FB6C  38 60 00 00 */	li r3, 0
/* 803A65B0 0036FB70  38 84 02 0D */	addi r4, r4, 0xFF03020D@l
/* 803A65B4 0036FB74  4B FF FC 89 */	bl MPVERR_SetCode
/* 803A65B8 0036FB78  48 00 00 10 */	b .L_803A65C8
.L_803A65BC:
/* 803A65BC 0036FB7C  80 1F 0C 48 */	lwz r0, 0xc48(r31)
/* 803A65C0 0036FB80  38 60 00 00 */	li r3, 0
/* 803A65C4 0036FB84  90 1E 00 00 */	stw r0, 0(r30)
.L_803A65C8:
/* 803A65C8 0036FB88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A65CC 0036FB8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A65D0 0036FB90  83 C1 00 08 */	lwz r30, 8(r1)
/* 803A65D4 0036FB94  7C 08 03 A6 */	mtlr r0
/* 803A65D8 0036FB98  38 21 00 10 */	addi r1, r1, 0x10
/* 803A65DC 0036FB9C  4E 80 00 20 */	blr 

.global MPV_GetVbvBufSiz
MPV_GetVbvBufSiz:
/* 803A65E0 0036FBA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A65E4 0036FBA4  7C 08 02 A6 */	mflr r0
/* 803A65E8 0036FBA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A65EC 0036FBAC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803A65F0 0036FBB0  7C 7F 1B 78 */	mr r31, r3
/* 803A65F4 0036FBB4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803A65F8 0036FBB8  7C DE 33 78 */	mr r30, r6
/* 803A65FC 0036FBBC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803A6600 0036FBC0  7C BD 2B 78 */	mr r29, r5
/* 803A6604 0036FBC4  93 81 00 10 */	stw r28, 0x10(r1)
/* 803A6608 0036FBC8  7C 9C 23 78 */	mr r28, r4
/* 803A660C 0036FBCC  48 00 23 CD */	bl MPVLIB_CheckHn
/* 803A6610 0036FBD0  2C 03 00 00 */	cmpwi r3, 0
/* 803A6614 0036FBD4  41 82 00 18 */	beq .L_803A662C
/* 803A6618 0036FBD8  3C 80 FF 03 */	lis r4, 0xFF03020F@ha
/* 803A661C 0036FBDC  38 60 00 00 */	li r3, 0
/* 803A6620 0036FBE0  38 84 02 0F */	addi r4, r4, 0xFF03020F@l
/* 803A6624 0036FBE4  4B FF FC 19 */	bl MPVERR_SetCode
/* 803A6628 0036FBE8  48 00 00 60 */	b .L_803A6688
.L_803A662C:
/* 803A662C 0036FBEC  80 1F 0C 4C */	lwz r0, 0xc4c(r31)
/* 803A6630 0036FBF0  54 00 58 28 */	slwi r0, r0, 0xb
/* 803A6634 0036FBF4  90 1C 00 00 */	stw r0, 0(r28)
/* 803A6638 0036FBF8  80 1F 0C 5C */	lwz r0, 0xc5c(r31)
/* 803A663C 0036FBFC  90 1D 00 00 */	stw r0, 0(r29)
/* 803A6640 0036FC00  80 9F 0C 48 */	lwz r4, 0xc48(r31)
/* 803A6644 0036FC04  3C 04 FF FD */	addis r0, r4, 0xfffd
/* 803A6648 0036FC08  28 00 FF FF */	cmplwi r0, 0xffff
/* 803A664C 0036FC0C  40 82 00 10 */	bne .L_803A665C
/* 803A6650 0036FC10  38 00 FF FF */	li r0, -1
/* 803A6654 0036FC14  90 1E 00 00 */	stw r0, 0(r30)
/* 803A6658 0036FC18  48 00 00 2C */	b .L_803A6684
.L_803A665C:
/* 803A665C 0036FC1C  80 1F 0C 5C */	lwz r0, 0xc5c(r31)
/* 803A6660 0036FC20  3C 60 91 A3 */	lis r3, 0x91A2B3C5@ha
/* 803A6664 0036FC24  38 63 B3 C5 */	addi r3, r3, 0x91A2B3C5@l
/* 803A6668 0036FC28  7C 00 21 D6 */	mullw r0, r0, r4
/* 803A666C 0036FC2C  7C 63 00 96 */	mulhw r3, r3, r0
/* 803A6670 0036FC30  7C 03 02 14 */	add r0, r3, r0
/* 803A6674 0036FC34  7C 00 56 70 */	srawi r0, r0, 0xa
/* 803A6678 0036FC38  54 03 0F FE */	srwi r3, r0, 0x1f
/* 803A667C 0036FC3C  7C 00 1A 14 */	add r0, r0, r3
/* 803A6680 0036FC40  90 1E 00 00 */	stw r0, 0(r30)
.L_803A6684:
/* 803A6684 0036FC44  38 60 00 00 */	li r3, 0
.L_803A6688:
/* 803A6688 0036FC48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A668C 0036FC4C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803A6690 0036FC50  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803A6694 0036FC54  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803A6698 0036FC58  83 81 00 10 */	lwz r28, 0x10(r1)
/* 803A669C 0036FC5C  7C 08 03 A6 */	mtlr r0
/* 803A66A0 0036FC60  38 21 00 20 */	addi r1, r1, 0x20
/* 803A66A4 0036FC64  4E 80 00 20 */	blr 

.global MPV_GetLinkFlg
MPV_GetLinkFlg:
/* 803A66A8 0036FC68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A66AC 0036FC6C  7C 08 02 A6 */	mflr r0
/* 803A66B0 0036FC70  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A66B4 0036FC74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803A66B8 0036FC78  7C 7F 1B 78 */	mr r31, r3
/* 803A66BC 0036FC7C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803A66C0 0036FC80  7C BE 2B 78 */	mr r30, r5
/* 803A66C4 0036FC84  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803A66C8 0036FC88  7C 9D 23 78 */	mr r29, r4
/* 803A66CC 0036FC8C  48 00 23 0D */	bl MPVLIB_CheckHn
/* 803A66D0 0036FC90  2C 03 00 00 */	cmpwi r3, 0
/* 803A66D4 0036FC94  41 82 00 18 */	beq .L_803A66EC
/* 803A66D8 0036FC98  3C 80 FF 03 */	lis r4, 0xFF03020E@ha
/* 803A66DC 0036FC9C  38 60 00 00 */	li r3, 0
/* 803A66E0 0036FCA0  38 84 02 0E */	addi r4, r4, 0xFF03020E@l
/* 803A66E4 0036FCA4  4B FF FB 59 */	bl MPVERR_SetCode
/* 803A66E8 0036FCA8  48 00 00 18 */	b .L_803A6700
.L_803A66EC:
/* 803A66EC 0036FCAC  80 1F 0C 54 */	lwz r0, 0xc54(r31)
/* 803A66F0 0036FCB0  38 60 00 00 */	li r3, 0
/* 803A66F4 0036FCB4  90 1D 00 00 */	stw r0, 0(r29)
/* 803A66F8 0036FCB8  80 1F 0C 58 */	lwz r0, 0xc58(r31)
/* 803A66FC 0036FCBC  90 1E 00 00 */	stw r0, 0(r30)
.L_803A6700:
/* 803A6700 0036FCC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A6704 0036FCC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803A6708 0036FCC8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803A670C 0036FCCC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803A6710 0036FCD0  7C 08 03 A6 */	mtlr r0
/* 803A6714 0036FCD4  38 21 00 20 */	addi r1, r1, 0x20
/* 803A6718 0036FCD8  4E 80 00 20 */	blr 
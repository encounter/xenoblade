.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_802A5830
func_802A5830:
/* 802A5830 0026EDF0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802A5834 0026EDF4  7C 08 02 A6 */	mflr r0
/* 802A5838 0026EDF8  38 60 00 01 */	li r3, 1
/* 802A583C 0026EDFC  38 80 00 00 */	li r4, 0
/* 802A5840 0026EE00  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A5844 0026EE04  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802A5848 0026EE08  7C 3F 0B 78 */	mr r31, r1
/* 802A584C 0026EE0C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802A5850 0026EE10  4B FF DA BD */	bl func_802A330C
/* 802A5854 0026EE14  2C 03 00 00 */	cmpwi r3, 0
/* 802A5858 0026EE18  40 82 00 0C */	bne .L_802A5864
/* 802A585C 0026EE1C  38 60 00 00 */	li r3, 0
/* 802A5860 0026EE20  48 00 00 78 */	b .L_802A58D8
.L_802A5864:
/* 802A5864 0026EE24  38 60 00 24 */	li r3, 0x24
/* 802A5868 0026EE28  4B FF DC 7D */	bl func_802A34E4
/* 802A586C 0026EE2C  2C 03 00 00 */	cmpwi r3, 0
/* 802A5870 0026EE30  7C 7E 1B 78 */	mr r30, r3
/* 802A5874 0026EE34  40 82 00 0C */	bne .L_802A5880
/* 802A5878 0026EE38  38 60 00 00 */	li r3, 0
/* 802A587C 0026EE3C  48 00 00 5C */	b .L_802A58D8
.L_802A5880:
/* 802A5880 0026EE40  41 82 00 34 */	beq .L_802A58B4
/* 802A5884 0026EE44  90 3F 00 1C */	stw r1, 0x1c(r31)
/* 802A5888 0026EE48  4B FF E1 F9 */	bl func_802A3A80
/* 802A588C 0026EE4C  3C 60 80 54 */	lis r3, __vt__cf_CVS_THREAD_CHAIN@ha
/* 802A5890 0026EE50  38 00 00 00 */	li r0, 0
/* 802A5894 0026EE54  38 63 D1 CC */	addi r3, r3, __vt__cf_CVS_THREAD_CHAIN@l
/* 802A5898 0026EE58  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 802A589C 0026EE5C  90 1E 00 20 */	stw r0, 0x20(r30)
/* 802A58A0 0026EE60  48 00 00 14 */	b .L_802A58B4
/* 802A58A4 0026EE64  38 60 00 00 */	li r3, 0
/* 802A58A8 0026EE68  38 80 00 00 */	li r4, 0
/* 802A58AC 0026EE6C  38 A0 00 00 */	li r5, 0
/* 802A58B0 0026EE70  48 01 63 0D */	bl __throw
.L_802A58B4:
/* 802A58B4 0026EE74  3C A0 80 54 */	lis r5, lbl_8053D1C0@ha
/* 802A58B8 0026EE78  7F C3 F3 78 */	mr r3, r30
/* 802A58BC 0026EE7C  38 A5 D1 C0 */	addi r5, r5, lbl_8053D1C0@l
/* 802A58C0 0026EE80  80 05 00 04 */	lwz r0, 4(r5)
/* 802A58C4 0026EE84  80 85 00 00 */	lwz r4, 0(r5)
/* 802A58C8 0026EE88  90 9E 00 00 */	stw r4, 0(r30)
/* 802A58CC 0026EE8C  90 1E 00 04 */	stw r0, 4(r30)
/* 802A58D0 0026EE90  80 05 00 08 */	lwz r0, 8(r5)
/* 802A58D4 0026EE94  90 1E 00 08 */	stw r0, 8(r30)
.L_802A58D8:
/* 802A58D8 0026EE98  7F EA FB 78 */	mr r10, r31
/* 802A58DC 0026EE9C  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 802A58E0 0026EEA0  83 CA 00 28 */	lwz r30, 0x28(r10)
/* 802A58E4 0026EEA4  81 41 00 00 */	lwz r10, 0(r1)
/* 802A58E8 0026EEA8  80 0A 00 04 */	lwz r0, 4(r10)
/* 802A58EC 0026EEAC  7D 41 53 78 */	mr r1, r10
/* 802A58F0 0026EEB0  7C 08 03 A6 */	mtlr r0
/* 802A58F4 0026EEB4  4E 80 00 20 */	blr 

.global func_802A58F8
func_802A58F8:
/* 802A58F8 0026EEB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A58FC 0026EEBC  7C 08 02 A6 */	mflr r0
/* 802A5900 0026EEC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A5904 0026EEC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A5908 0026EEC8  7C 7F 1B 78 */	mr r31, r3
/* 802A590C 0026EECC  4B FF E5 7D */	bl func_802A3E88
/* 802A5910 0026EED0  2C 03 00 00 */	cmpwi r3, 0
/* 802A5914 0026EED4  40 82 00 0C */	bne .L_802A5920
/* 802A5918 0026EED8  38 00 00 00 */	li r0, 0
/* 802A591C 0026EEDC  90 1F 00 20 */	stw r0, 0x20(r31)
.L_802A5920:
/* 802A5920 0026EEE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A5924 0026EEE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A5928 0026EEE8  7C 08 03 A6 */	mtlr r0
/* 802A592C 0026EEEC  38 21 00 10 */	addi r1, r1, 0x10
/* 802A5930 0026EEF0  4E 80 00 20 */	blr 

.global func_802A5934
func_802A5934:
/* 802A5934 0026EEF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A5938 0026EEF8  7C 08 02 A6 */	mflr r0
/* 802A593C 0026EEFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A5940 0026EF00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A5944 0026EF04  7C 9F 23 78 */	mr r31, r4
/* 802A5948 0026EF08  93 C1 00 08 */	stw r30, 8(r1)
/* 802A594C 0026EF0C  7C 7E 1B 78 */	mr r30, r3
/* 802A5950 0026EF10  4B FF E2 9D */	bl func_802A3BEC
/* 802A5954 0026EF14  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 802A5958 0026EF18  2C 03 00 00 */	cmpwi r3, 0
/* 802A595C 0026EF1C  41 82 00 08 */	beq .L_802A5964
/* 802A5960 0026EF20  38 63 3E 9C */	addi r3, r3, 0x3e9c
.L_802A5964:
/* 802A5964 0026EF24  7C 03 F8 40 */	cmplw r3, r31
/* 802A5968 0026EF28  40 82 00 0C */	bne .L_802A5974
/* 802A596C 0026EF2C  38 00 00 00 */	li r0, 0
/* 802A5970 0026EF30  90 1E 00 20 */	stw r0, 0x20(r30)
.L_802A5974:
/* 802A5974 0026EF34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A5978 0026EF38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A597C 0026EF3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A5980 0026EF40  7C 08 03 A6 */	mtlr r0
/* 802A5984 0026EF44  38 21 00 10 */	addi r1, r1, 0x10
/* 802A5988 0026EF48  4E 80 00 20 */	blr 

.global func_802A598C
func_802A598C:
/* 802A598C 0026EF4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A5990 0026EF50  7C 08 02 A6 */	mflr r0
/* 802A5994 0026EF54  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A5998 0026EF58  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802A599C 0026EF5C  7C BF 2B 78 */	mr r31, r5
/* 802A59A0 0026EF60  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802A59A4 0026EF64  7C 9E 23 78 */	mr r30, r4
/* 802A59A8 0026EF68  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802A59AC 0026EF6C  7C 7D 1B 78 */	mr r29, r3
/* 802A59B0 0026EF70  4B FF E4 D9 */	bl func_802A3E88
/* 802A59B4 0026EF74  2C 03 00 00 */	cmpwi r3, 0
/* 802A59B8 0026EF78  41 82 00 0C */	beq .L_802A59C4
/* 802A59BC 0026EF7C  7F A3 EB 78 */	mr r3, r29
/* 802A59C0 0026EF80  4B FF E4 69 */	bl func_802A3E28
.L_802A59C4:
/* 802A59C4 0026EF84  2C 1E 00 00 */	cmpwi r30, 0
/* 802A59C8 0026EF88  41 82 00 08 */	beq .L_802A59D0
/* 802A59CC 0026EF8C  3B DE C1 64 */	addi r30, r30, -16028
.L_802A59D0:
/* 802A59D0 0026EF90  2C 1E 00 00 */	cmpwi r30, 0
/* 802A59D4 0026EF94  93 DD 00 20 */	stw r30, 0x20(r29)
/* 802A59D8 0026EF98  41 82 00 08 */	beq .L_802A59E0
/* 802A59DC 0026EF9C  3B DE 3E 9C */	addi r30, r30, 0x3e9c
.L_802A59E0:
/* 802A59E0 0026EFA0  7F A3 EB 78 */	mr r3, r29
/* 802A59E4 0026EFA4  7F C4 F3 78 */	mr r4, r30
/* 802A59E8 0026EFA8  7F E5 FB 78 */	mr r5, r31
/* 802A59EC 0026EFAC  4B FF E2 59 */	bl func_802A3C44
/* 802A59F0 0026EFB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A59F4 0026EFB4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802A59F8 0026EFB8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802A59FC 0026EFBC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802A5A00 0026EFC0  7C 08 03 A6 */	mtlr r0
/* 802A5A04 0026EFC4  38 21 00 20 */	addi r1, r1, 0x20
/* 802A5A08 0026EFC8  4E 80 00 20 */	blr 

.global func_802A5A0C
func_802A5A0C:
/* 802A5A0C 0026EFCC  38 60 00 01 */	li r3, 1
/* 802A5A10 0026EFD0  4E 80 00 20 */	blr 

.global func_802A5A14
func_802A5A14:
/* 802A5A14 0026EFD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A5A18 0026EFD8  7C 08 02 A6 */	mflr r0
/* 802A5A1C 0026EFDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A5A20 0026EFE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A5A24 0026EFE4  7C 9F 23 78 */	mr r31, r4
/* 802A5A28 0026EFE8  93 C1 00 08 */	stw r30, 8(r1)
/* 802A5A2C 0026EFEC  7C 7E 1B 78 */	mr r30, r3
/* 802A5A30 0026EFF0  80 03 3F 00 */	lwz r0, 0x3f00(r3)
/* 802A5A34 0026EFF4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802A5A38 0026EFF8  40 82 00 0C */	bne .L_802A5A44
/* 802A5A3C 0026EFFC  38 60 00 00 */	li r3, 0
/* 802A5A40 0026F000  48 00 00 AC */	b .L_802A5AEC
.L_802A5A44:
/* 802A5A44 0026F004  81 83 00 00 */	lwz r12, 0(r3)
/* 802A5A48 0026F008  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802A5A4C 0026F00C  7D 89 03 A6 */	mtctr r12
/* 802A5A50 0026F010  4E 80 04 21 */	bctrl 
/* 802A5A54 0026F014  2C 03 00 00 */	cmpwi r3, 0
/* 802A5A58 0026F018  41 82 00 0C */	beq .L_802A5A64
/* 802A5A5C 0026F01C  38 60 00 00 */	li r3, 0
/* 802A5A60 0026F020  48 00 00 8C */	b .L_802A5AEC
.L_802A5A64:
/* 802A5A64 0026F024  38 7E 3E 9C */	addi r3, r30, 0x3e9c
/* 802A5A68 0026F028  4B E1 8E 8D */	bl func_800BE8F4
/* 802A5A6C 0026F02C  2C 03 01 2C */	cmpwi r3, 0x12c
/* 802A5A70 0026F030  40 82 00 0C */	bne .L_802A5A7C
/* 802A5A74 0026F034  38 60 00 00 */	li r3, 0
/* 802A5A78 0026F038  48 00 00 74 */	b .L_802A5AEC
.L_802A5A7C:
/* 802A5A7C 0026F03C  38 60 01 2C */	li r3, 0x12c
/* 802A5A80 0026F040  38 80 00 01 */	li r4, 1
/* 802A5A84 0026F044  4B FF D8 89 */	bl func_802A330C
/* 802A5A88 0026F048  2C 03 00 00 */	cmpwi r3, 0
/* 802A5A8C 0026F04C  40 82 00 0C */	bne .L_802A5A98
/* 802A5A90 0026F050  38 60 00 00 */	li r3, 0
/* 802A5A94 0026F054  48 00 00 58 */	b .L_802A5AEC
.L_802A5A98:
/* 802A5A98 0026F058  2C 1F 00 00 */	cmpwi r31, 0
/* 802A5A9C 0026F05C  40 82 00 30 */	bne .L_802A5ACC
/* 802A5AA0 0026F060  2C 1E 00 00 */	cmpwi r30, 0
/* 802A5AA4 0026F064  41 82 00 08 */	beq .L_802A5AAC
/* 802A5AA8 0026F068  3B DE 3E 9C */	addi r30, r30, 0x3e9c
.L_802A5AAC:
/* 802A5AAC 0026F06C  38 60 00 02 */	li r3, 2
/* 802A5AB0 0026F070  48 19 04 4D */	bl mtRand__2mlFi
/* 802A5AB4 0026F074  7C 64 1B 78 */	mr r4, r3
/* 802A5AB8 0026F078  7F C3 F3 78 */	mr r3, r30
/* 802A5ABC 0026F07C  38 84 02 BD */	addi r4, r4, 0x2bd
/* 802A5AC0 0026F080  38 A0 01 2C */	li r5, 0x12c
/* 802A5AC4 0026F084  4B FF E2 91 */	bl func_802A3D54
/* 802A5AC8 0026F088  48 00 00 20 */	b .L_802A5AE8
.L_802A5ACC:
/* 802A5ACC 0026F08C  2C 1E 00 00 */	cmpwi r30, 0
/* 802A5AD0 0026F090  41 82 00 08 */	beq .L_802A5AD8
/* 802A5AD4 0026F094  3B DE 3E 9C */	addi r30, r30, 0x3e9c
.L_802A5AD8:
/* 802A5AD8 0026F098  7F C3 F3 78 */	mr r3, r30
/* 802A5ADC 0026F09C  38 80 02 BF */	li r4, 0x2bf
/* 802A5AE0 0026F0A0  38 A0 01 2C */	li r5, 0x12c
/* 802A5AE4 0026F0A4  4B FF E2 71 */	bl func_802A3D54
.L_802A5AE8:
/* 802A5AE8 0026F0A8  38 60 00 00 */	li r3, 0
.L_802A5AEC:
/* 802A5AEC 0026F0AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A5AF0 0026F0B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A5AF4 0026F0B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A5AF8 0026F0B8  7C 08 03 A6 */	mtlr r0
/* 802A5AFC 0026F0BC  38 21 00 10 */	addi r1, r1, 0x10
/* 802A5B00 0026F0C0  4E 80 00 20 */	blr 

.global func_802A5B04
func_802A5B04:
/* 802A5B04 0026F0C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A5B08 0026F0C8  7C 08 02 A6 */	mflr r0
/* 802A5B0C 0026F0CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A5B10 0026F0D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A5B14 0026F0D4  7C 7F 1B 78 */	mr r31, r3
/* 802A5B18 0026F0D8  80 03 3F 00 */	lwz r0, 0x3f00(r3)
/* 802A5B1C 0026F0DC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802A5B20 0026F0E0  40 82 00 0C */	bne .L_802A5B2C
/* 802A5B24 0026F0E4  38 60 00 00 */	li r3, 0
/* 802A5B28 0026F0E8  48 00 00 4C */	b .L_802A5B74
.L_802A5B2C:
/* 802A5B2C 0026F0EC  38 60 00 0A */	li r3, 0xa
/* 802A5B30 0026F0F0  38 80 00 01 */	li r4, 1
/* 802A5B34 0026F0F4  4B FF D7 D9 */	bl func_802A330C
/* 802A5B38 0026F0F8  2C 03 00 00 */	cmpwi r3, 0
/* 802A5B3C 0026F0FC  40 82 00 0C */	bne .L_802A5B48
/* 802A5B40 0026F100  38 60 00 00 */	li r3, 0
/* 802A5B44 0026F104  48 00 00 30 */	b .L_802A5B74
.L_802A5B48:
/* 802A5B48 0026F108  2C 1F 00 00 */	cmpwi r31, 0
/* 802A5B4C 0026F10C  41 82 00 08 */	beq .L_802A5B54
/* 802A5B50 0026F110  3B FF 3E 9C */	addi r31, r31, 0x3e9c
.L_802A5B54:
/* 802A5B54 0026F114  38 60 00 02 */	li r3, 2
/* 802A5B58 0026F118  48 19 03 A5 */	bl mtRand__2mlFi
/* 802A5B5C 0026F11C  7C 64 1B 78 */	mr r4, r3
/* 802A5B60 0026F120  7F E3 FB 78 */	mr r3, r31
/* 802A5B64 0026F124  38 84 03 21 */	addi r4, r4, 0x321
/* 802A5B68 0026F128  38 A0 00 0A */	li r5, 0xa
/* 802A5B6C 0026F12C  4B FF E1 E9 */	bl func_802A3D54
/* 802A5B70 0026F130  38 60 00 00 */	li r3, 0
.L_802A5B74:
/* 802A5B74 0026F134  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A5B78 0026F138  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A5B7C 0026F13C  7C 08 03 A6 */	mtlr r0
/* 802A5B80 0026F140  38 21 00 10 */	addi r1, r1, 0x10
/* 802A5B84 0026F144  4E 80 00 20 */	blr 

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global cf_CVS_THREAD_CHAIN_typestr
cf_CVS_THREAD_CHAIN_typestr:
	.asciz "cf::CVS_THREAD_CHAIN"
	.balign 4

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_8053D1C0
lbl_8053D1C0:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802A58F8


.global __vt__cf_CVS_THREAD_CHAIN
__vt__cf_CVS_THREAD_CHAIN:
	.4byte __RTTI__cf_CVS_THREAD_CHAIN
	.4byte 0
	.4byte func_802A3B50
	.4byte func_802A5934
	.4byte func_802A5A0C
	.4byte func_802A1EA0
	.4byte func_802A598C

.global cf_CVS_THREAD_CHAIN_hierarchy
cf_CVS_THREAD_CHAIN_hierarchy:
	.4byte __RTTI__cf_CVS_THREAD
	.4byte 0
	.4byte 0
	.4byte 0

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global __RTTI__cf_CVS_THREAD_CHAIN
__RTTI__cf_CVS_THREAD_CHAIN:
	.4byte cf_CVS_THREAD_CHAIN_typestr
	.4byte cf_CVS_THREAD_CHAIN_hierarchy


.section extab, "a"  # 0x800066E0 - 0x80021020

.global lbl_8001AB90
lbl_8001AB90:
	.4byte 0x10180000
	.4byte 0x0000005C
	.4byte 0x00000018
	.4byte 0x00000084
	.4byte 0x00000028
	.4byte 0
	.4byte 0x90000000
	.4byte 0
	.4byte 0x00000074
	.4byte 0x00000008
	.4byte 0x8D000008

.global lbl_8001ABBC
lbl_8001ABBC:
	.4byte 0x08080000
	.4byte 0

.global lbl_8001ABC4
lbl_8001ABC4:
	.4byte 0x10080000
	.4byte 0

.global lbl_8001ABCC
lbl_8001ABCC:
	.4byte 0x18080000
	.4byte 0

.global lbl_8001ABD4
lbl_8001ABD4:
	.4byte 0x10080000
	.4byte 0

.global lbl_8001ABDC
lbl_8001ABDC:
	.4byte 0x08080000
	.4byte 0


.section extabindex, "a"  # 0x80021020 - 0x80039220

.4byte func_802A5830
	.4byte 0x000000C8
	.4byte lbl_8001AB90
	.4byte func_802A58F8
	.4byte 0x0000003C
	.4byte lbl_8001ABBC
	.4byte func_802A5934
	.4byte 0x00000058
	.4byte lbl_8001ABC4
	.4byte func_802A598C
	.4byte 0x00000080
	.4byte lbl_8001ABCC
	.4byte func_802A5A14
	.4byte 0x000000F0
	.4byte lbl_8001ABD4
	.4byte func_802A5B04
	.4byte 0x00000084
	.4byte lbl_8001ABDC
.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

#__ct__Q34nw4r2ut19TagProcessorBase<c>Fv
.global __ct__Q34nw4r2ut19TagProcessorBase_c_Fv
__ct__Q34nw4r2ut19TagProcessorBase_c_Fv:
/* 8042B700 003F4CC0  3C 80 80 57 */	lis r4, lbl_8056E6FC@ha
/* 8042B704 003F4CC4  38 84 E6 FC */	addi r4, r4, lbl_8056E6FC@l
/* 8042B708 003F4CC8  90 83 00 00 */	stw r4, 0(r3)
/* 8042B70C 003F4CCC  4E 80 00 20 */	blr

#__dt__Q34nw4r2ut19TagProcessorBase<c>Fv
.global __dt__Q34nw4r2ut19TagProcessorBase_c_Fv
__dt__Q34nw4r2ut19TagProcessorBase_c_Fv:
/* 8042B710 003F4CD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042B714 003F4CD4  7C 08 02 A6 */	mflr r0
/* 8042B718 003F4CD8  2C 03 00 00 */	cmpwi r3, 0
/* 8042B71C 003F4CDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042B720 003F4CE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042B724 003F4CE4  7C 7F 1B 78 */	mr r31, r3
/* 8042B728 003F4CE8  41 82 00 10 */	beq .L_8042B738
/* 8042B72C 003F4CEC  2C 04 00 00 */	cmpwi r4, 0
/* 8042B730 003F4CF0  40 81 00 08 */	ble .L_8042B738
/* 8042B734 003F4CF4  48 00 94 F9 */	bl __dl__FPv
.L_8042B738:
/* 8042B738 003F4CF8  7F E3 FB 78 */	mr r3, r31
/* 8042B73C 003F4CFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042B740 003F4D00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042B744 003F4D04  7C 08 03 A6 */	mtlr r0
/* 8042B748 003F4D08  38 21 00 10 */	addi r1, r1, 0x10
/* 8042B74C 003F4D0C  4E 80 00 20 */	blr 

#Process__Q34nw4r2ut19TagProcessorBase<c>FUsPQ34nw4r2ut15PrintContext<c>
.global Process__Q34nw4r2ut19TagProcessorBase_c_FUsPQ34nw4r2ut15PrintContext_c
Process__Q34nw4r2ut19TagProcessorBase_c_FUsPQ34nw4r2ut15PrintContext_c:
/* 8042B750 003F4D10  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8042B754 003F4D14  7C 08 02 A6 */	mflr r0
/* 8042B758 003F4D18  90 01 00 54 */	stw r0, 0x54(r1)
/* 8042B75C 003F4D1C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8042B760 003F4D20  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 8042B764 003F4D24  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8042B768 003F4D28  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 8042B76C 003F4D2C  2C 04 00 0A */	cmpwi r4, 0xa
/* 8042B770 003F4D30  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8042B774 003F4D34  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8042B778 003F4D38  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8042B77C 003F4D3C  7C BD 2B 78 */	mr r29, r5
/* 8042B780 003F4D40  41 82 00 14 */	beq .L_8042B794
/* 8042B784 003F4D44  40 80 00 CC */	bge .L_8042B850
/* 8042B788 003F4D48  2C 04 00 09 */	cmpwi r4, 9
/* 8042B78C 003F4D4C  40 80 00 30 */	bge .L_8042B7BC
/* 8042B790 003F4D50  48 00 00 C0 */	b .L_8042B850
.L_8042B794:
/* 8042B794 003F4D54  83 E5 00 00 */	lwz r31, 0(r5)
/* 8042B798 003F4D58  C3 E5 00 08 */	lfs f31, 8(r5)
/* 8042B79C 003F4D5C  C3 DF 00 30 */	lfs f30, 0x30(r31)
/* 8042B7A0 003F4D60  7F E3 FB 78 */	mr r3, r31
/* 8042B7A4 003F4D64  48 00 4E 81 */	bl GetLineHeight__Q34nw4r2ut17TextWriterBase_c_CFv
/* 8042B7A8 003F4D68  EC 1E 08 2A */	fadds f0, f30, f1
/* 8042B7AC 003F4D6C  D3 FF 00 2C */	stfs f31, 0x2c(r31)
/* 8042B7B0 003F4D70  38 60 00 03 */	li r3, 3
/* 8042B7B4 003F4D74  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8042B7B8 003F4D78  48 00 00 9C */	b .L_8042B854
.L_8042B7BC:
/* 8042B7BC 003F4D7C  83 E5 00 00 */	lwz r31, 0(r5)
/* 8042B7C0 003F4D80  83 DF 00 58 */	lwz r30, 0x58(r31)
/* 8042B7C4 003F4D84  2C 1E 00 00 */	cmpwi r30, 0
/* 8042B7C8 003F4D88  40 81 00 80 */	ble .L_8042B848
/* 8042B7CC 003F4D8C  88 1F 00 43 */	lbz r0, 0x43(r31)
/* 8042B7D0 003F4D90  2C 00 00 00 */	cmpwi r0, 0
/* 8042B7D4 003F4D94  41 82 00 0C */	beq .L_8042B7E0
/* 8042B7D8 003F4D98  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8042B7DC 003F4D9C  48 00 00 0C */	b .L_8042B7E8
.L_8042B7E0:
/* 8042B7E0 003F4DA0  7F E3 FB 78 */	mr r3, r31
/* 8042B7E4 003F4DA4  48 00 44 79 */	bl GetFontWidth__Q34nw4r2ut10CharWriterCFv
.L_8042B7E8:
/* 8042B7E8 003F4DA8  3C 00 43 30 */	lis r0, 0x4330
/* 8042B7EC 003F4DAC  6F C3 80 00 */	xoris r3, r30, 0x8000
/* 8042B7F0 003F4DB0  90 61 00 0C */	stw r3, 0xc(r1)
/* 8042B7F4 003F4DB4  C8 42 C5 B0 */	lfd f2, double_8066C930@sda21(r2)
/* 8042B7F8 003F4DB8  90 01 00 08 */	stw r0, 8(r1)
/* 8042B7FC 003F4DBC  C0 9F 00 2C */	lfs f4, 0x2c(r31)
/* 8042B800 003F4DC0  C8 01 00 08 */	lfd f0, 8(r1)
/* 8042B804 003F4DC4  C0 7D 00 08 */	lfs f3, 8(r29)
/* 8042B808 003F4DC8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8042B80C 003F4DCC  90 01 00 18 */	stw r0, 0x18(r1)
/* 8042B810 003F4DD0  EC 84 18 28 */	fsubs f4, f4, f3
/* 8042B814 003F4DD4  EC 20 00 72 */	fmuls f1, f0, f1
/* 8042B818 003F4DD8  EC 04 08 24 */	fdivs f0, f4, f1
/* 8042B81C 003F4DDC  FC 00 00 1E */	fctiwz f0, f0
/* 8042B820 003F4DE0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8042B824 003F4DE4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8042B828 003F4DE8  38 03 00 01 */	addi r0, r3, 1
/* 8042B82C 003F4DEC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8042B830 003F4DF0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8042B834 003F4DF4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8042B838 003F4DF8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8042B83C 003F4DFC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8042B840 003F4E00  EC 03 00 2A */	fadds f0, f3, f0
/* 8042B844 003F4E04  D0 1F 00 2C */	stfs f0, 0x2c(r31)
.L_8042B848:
/* 8042B848 003F4E08  38 60 00 01 */	li r3, 1
/* 8042B84C 003F4E0C  48 00 00 08 */	b .L_8042B854
.L_8042B850:
/* 8042B850 003F4E10  38 60 00 00 */	li r3, 0
.L_8042B854:
/* 8042B854 003F4E14  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 8042B858 003F4E18  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8042B85C 003F4E1C  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 8042B860 003F4E20  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8042B864 003F4E24  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8042B868 003F4E28  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8042B86C 003F4E2C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8042B870 003F4E30  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8042B874 003F4E34  7C 08 03 A6 */	mtlr r0
/* 8042B878 003F4E38  38 21 00 50 */	addi r1, r1, 0x50
/* 8042B87C 003F4E3C  4E 80 00 20 */	blr 

#CalcRect__Q34nw4r2ut19TagProcessorBase<c>FPQ34nw4r2ut4RectUsPQ34nw4r2ut15PrintContext<c>
.global CalcRect__Q34nw4r2ut19TagProcessorBase_c_FPQ34nw4r2ut4RectUsPQ34nw4r2ut15PrintContext_c
CalcRect__Q34nw4r2ut19TagProcessorBase_c_FPQ34nw4r2ut4RectUsPQ34nw4r2ut15PrintContext_c:
/* 8042B880 003F4E40  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8042B884 003F4E44  7C 08 02 A6 */	mflr r0
/* 8042B888 003F4E48  90 01 00 64 */	stw r0, 0x64(r1)
/* 8042B88C 003F4E4C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8042B890 003F4E50  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 8042B894 003F4E54  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8042B898 003F4E58  F3 C1 00 48 */	psq_st f30, 72(r1), 0, qr0
/* 8042B89C 003F4E5C  39 61 00 40 */	addi r11, r1, 0x40
/* 8042B8A0 003F4E60  4B E8 E8 B5 */	bl _savegpr_27
/* 8042B8A4 003F4E64  2C 05 00 0A */	cmpwi r5, 0xa
/* 8042B8A8 003F4E68  7C 9B 23 78 */	mr r27, r4
/* 8042B8AC 003F4E6C  7C DC 33 78 */	mr r28, r6
/* 8042B8B0 003F4E70  41 82 00 14 */	beq .L_8042B8C4
/* 8042B8B4 003F4E74  40 80 01 88 */	bge .L_8042BA3C
/* 8042B8B8 003F4E78  2C 05 00 09 */	cmpwi r5, 9
/* 8042B8BC 003F4E7C  40 80 00 90 */	bge .L_8042B94C
/* 8042B8C0 003F4E80  48 00 01 7C */	b .L_8042BA3C
.L_8042B8C4:
/* 8042B8C4 003F4E84  83 C6 00 00 */	lwz r30, 0(r6)
/* 8042B8C8 003F4E88  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8042B8CC 003F4E8C  D0 04 00 08 */	stfs f0, 8(r4)
/* 8042B8D0 003F4E90  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 8042B8D4 003F4E94  D0 04 00 04 */	stfs f0, 4(r4)
/* 8042B8D8 003F4E98  83 E6 00 00 */	lwz r31, 0(r6)
/* 8042B8DC 003F4E9C  C3 E6 00 08 */	lfs f31, 8(r6)
/* 8042B8E0 003F4EA0  C3 DF 00 30 */	lfs f30, 0x30(r31)
/* 8042B8E4 003F4EA4  7F E3 FB 78 */	mr r3, r31
/* 8042B8E8 003F4EA8  48 00 4D 3D */	bl GetLineHeight__Q34nw4r2ut17TextWriterBase_c_CFv
/* 8042B8EC 003F4EAC  EC 1E 08 2A */	fadds f0, f30, f1
/* 8042B8F0 003F4EB0  D3 FF 00 2C */	stfs f31, 0x2c(r31)
/* 8042B8F4 003F4EB4  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8042B8F8 003F4EB8  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8042B8FC 003F4EBC  D0 1B 00 00 */	stfs f0, 0(r27)
/* 8042B900 003F4EC0  C3 DE 00 30 */	lfs f30, 0x30(r30)
/* 8042B904 003F4EC4  80 7C 00 00 */	lwz r3, 0(r28)
/* 8042B908 003F4EC8  48 00 43 B5 */	bl GetFontHeight__Q34nw4r2ut10CharWriterCFv
/* 8042B90C 003F4ECC  EC 1E 08 2A */	fadds f0, f30, f1
/* 8042B910 003F4ED0  C0 DB 00 04 */	lfs f6, 4(r27)
/* 8042B914 003F4ED4  C0 FB 00 00 */	lfs f7, 0(r27)
/* 8042B918 003F4ED8  38 60 00 03 */	li r3, 3
/* 8042B91C 003F4EDC  C0 BB 00 08 */	lfs f5, 8(r27)
/* 8042B920 003F4EE0  EC 40 30 28 */	fsubs f2, f0, f6
/* 8042B924 003F4EE4  EC 65 38 28 */	fsubs f3, f5, f7
/* 8042B928 003F4EE8  FC 22 01 AE */	fsel f1, f2, f6, f0
/* 8042B92C 003F4EEC  FC 83 29 EE */	fsel f4, f3, f7, f5
/* 8042B930 003F4EF0  FC 63 39 6E */	fsel f3, f3, f5, f7
/* 8042B934 003F4EF4  FC 02 30 2E */	fsel f0, f2, f0, f6
/* 8042B938 003F4EF8  D0 3B 00 04 */	stfs f1, 4(r27)
/* 8042B93C 003F4EFC  D0 9B 00 00 */	stfs f4, 0(r27)
/* 8042B940 003F4F00  D0 7B 00 08 */	stfs f3, 8(r27)
/* 8042B944 003F4F04  D0 1B 00 0C */	stfs f0, 0xc(r27)
/* 8042B948 003F4F08  48 00 00 F8 */	b .L_8042BA40
.L_8042B94C:
/* 8042B94C 003F4F0C  83 A6 00 00 */	lwz r29, 0(r6)
/* 8042B950 003F4F10  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 8042B954 003F4F14  D0 04 00 00 */	stfs f0, 0(r4)
/* 8042B958 003F4F18  83 E6 00 00 */	lwz r31, 0(r6)
/* 8042B95C 003F4F1C  83 DF 00 58 */	lwz r30, 0x58(r31)
/* 8042B960 003F4F20  2C 1E 00 00 */	cmpwi r30, 0
/* 8042B964 003F4F24  40 81 00 80 */	ble .L_8042B9E4
/* 8042B968 003F4F28  88 1F 00 43 */	lbz r0, 0x43(r31)
/* 8042B96C 003F4F2C  2C 00 00 00 */	cmpwi r0, 0
/* 8042B970 003F4F30  41 82 00 0C */	beq .L_8042B97C
/* 8042B974 003F4F34  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8042B978 003F4F38  48 00 00 0C */	b .L_8042B984
.L_8042B97C:
/* 8042B97C 003F4F3C  7F E3 FB 78 */	mr r3, r31
/* 8042B980 003F4F40  48 00 42 DD */	bl GetFontWidth__Q34nw4r2ut10CharWriterCFv
.L_8042B984:
/* 8042B984 003F4F44  3C 00 43 30 */	lis r0, 0x4330
/* 8042B988 003F4F48  6F C3 80 00 */	xoris r3, r30, 0x8000
/* 8042B98C 003F4F4C  90 61 00 0C */	stw r3, 0xc(r1)
/* 8042B990 003F4F50  C8 42 C5 B0 */	lfd f2, double_8066C930@sda21(r2)
/* 8042B994 003F4F54  90 01 00 08 */	stw r0, 8(r1)
/* 8042B998 003F4F58  C0 9F 00 2C */	lfs f4, 0x2c(r31)
/* 8042B99C 003F4F5C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8042B9A0 003F4F60  C0 7C 00 08 */	lfs f3, 8(r28)
/* 8042B9A4 003F4F64  EC 00 10 28 */	fsubs f0, f0, f2
/* 8042B9A8 003F4F68  90 01 00 18 */	stw r0, 0x18(r1)
/* 8042B9AC 003F4F6C  EC 84 18 28 */	fsubs f4, f4, f3
/* 8042B9B0 003F4F70  EC 20 00 72 */	fmuls f1, f0, f1
/* 8042B9B4 003F4F74  EC 04 08 24 */	fdivs f0, f4, f1
/* 8042B9B8 003F4F78  FC 00 00 1E */	fctiwz f0, f0
/* 8042B9BC 003F4F7C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8042B9C0 003F4F80  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8042B9C4 003F4F84  38 03 00 01 */	addi r0, r3, 1
/* 8042B9C8 003F4F88  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8042B9CC 003F4F8C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8042B9D0 003F4F90  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8042B9D4 003F4F94  EC 00 10 28 */	fsubs f0, f0, f2
/* 8042B9D8 003F4F98  EC 01 00 32 */	fmuls f0, f1, f0
/* 8042B9DC 003F4F9C  EC 03 00 2A */	fadds f0, f3, f0
/* 8042B9E0 003F4FA0  D0 1F 00 2C */	stfs f0, 0x2c(r31)
.L_8042B9E4:
/* 8042B9E4 003F4FA4  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 8042B9E8 003F4FA8  7F A3 EB 78 */	mr r3, r29
/* 8042B9EC 003F4FAC  D0 1B 00 08 */	stfs f0, 8(r27)
/* 8042B9F0 003F4FB0  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 8042B9F4 003F4FB4  D0 1B 00 04 */	stfs f0, 4(r27)
/* 8042B9F8 003F4FB8  48 00 42 C5 */	bl GetFontHeight__Q34nw4r2ut10CharWriterCFv
/* 8042B9FC 003F4FBC  C0 5B 00 04 */	lfs f2, 4(r27)
/* 8042BA00 003F4FC0  38 60 00 01 */	li r3, 1
/* 8042BA04 003F4FC4  C0 DB 00 00 */	lfs f6, 0(r27)
/* 8042BA08 003F4FC8  EC 02 08 2A */	fadds f0, f2, f1
/* 8042BA0C 003F4FCC  C0 9B 00 08 */	lfs f4, 8(r27)
/* 8042BA10 003F4FD0  EC 24 30 28 */	fsubs f1, f4, f6
/* 8042BA14 003F4FD4  EC 60 10 28 */	fsubs f3, f0, f2
/* 8042BA18 003F4FD8  FC A1 21 AE */	fsel f5, f1, f6, f4
/* 8042BA1C 003F4FDC  FC 81 31 2E */	fsel f4, f1, f4, f6
/* 8042BA20 003F4FE0  FC 23 00 AE */	fsel f1, f3, f2, f0
/* 8042BA24 003F4FE4  FC 03 10 2E */	fsel f0, f3, f0, f2
/* 8042BA28 003F4FE8  D0 BB 00 00 */	stfs f5, 0(r27)
/* 8042BA2C 003F4FEC  D0 9B 00 08 */	stfs f4, 8(r27)
/* 8042BA30 003F4FF0  D0 3B 00 04 */	stfs f1, 4(r27)
/* 8042BA34 003F4FF4  D0 1B 00 0C */	stfs f0, 0xc(r27)
/* 8042BA38 003F4FF8  48 00 00 08 */	b .L_8042BA40
.L_8042BA3C:
/* 8042BA3C 003F4FFC  38 60 00 00 */	li r3, 0
.L_8042BA40:
/* 8042BA40 003F5000  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 8042BA44 003F5004  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8042BA48 003F5008  E3 C1 00 48 */	psq_l f30, 72(r1), 0, qr0
/* 8042BA4C 003F500C  39 61 00 40 */	addi r11, r1, 0x40
/* 8042BA50 003F5010  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8042BA54 003F5014  4B E8 E7 4D */	bl _restgpr_27
/* 8042BA58 003F5018  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8042BA5C 003F501C  7C 08 03 A6 */	mtlr r0
/* 8042BA60 003F5020  38 21 00 60 */	addi r1, r1, 0x60
/* 8042BA64 003F5024  4E 80 00 20 */	blr 

#__ct__Q34nw4r2ut19TagProcessorBase<w>Fv
.global __ct__Q34nw4r2ut19TagProcessorBase_w_Fv
__ct__Q34nw4r2ut19TagProcessorBase_w_Fv:
/* 8042BA68 003F5028  3C 80 80 57 */	lis r4, lbl_8056E6E8@ha
/* 8042BA6C 003F502C  38 84 E6 E8 */	addi r4, r4, lbl_8056E6E8@l
/* 8042BA70 003F5030  90 83 00 00 */	stw r4, 0(r3)
/* 8042BA74 003F5034  4E 80 00 20 */	blr 

#__dt__Q34nw4r2ut19TagProcessorBase<w>Fv
.global __dt__Q34nw4r2ut19TagProcessorBase_w_Fv
__dt__Q34nw4r2ut19TagProcessorBase_w_Fv:
/* 8042BA78 003F5038  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042BA7C 003F503C  7C 08 02 A6 */	mflr r0
/* 8042BA80 003F5040  2C 03 00 00 */	cmpwi r3, 0
/* 8042BA84 003F5044  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042BA88 003F5048  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042BA8C 003F504C  7C 7F 1B 78 */	mr r31, r3
/* 8042BA90 003F5050  41 82 00 10 */	beq .L_8042BAA0
/* 8042BA94 003F5054  2C 04 00 00 */	cmpwi r4, 0
/* 8042BA98 003F5058  40 81 00 08 */	ble .L_8042BAA0
/* 8042BA9C 003F505C  48 00 91 91 */	bl __dl__FPv
.L_8042BAA0:
/* 8042BAA0 003F5060  7F E3 FB 78 */	mr r3, r31
/* 8042BAA4 003F5064  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042BAA8 003F5068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042BAAC 003F506C  7C 08 03 A6 */	mtlr r0
/* 8042BAB0 003F5070  38 21 00 10 */	addi r1, r1, 0x10
/* 8042BAB4 003F5074  4E 80 00 20 */	blr 

#Process__Q34nw4r2ut19TagProcessorBase<w>FUsPQ34nw4r2ut15PrintContext<w>
.global Process__Q34nw4r2ut19TagProcessorBase_w_FUsPQ34nw4r2ut15PrintContext_w
Process__Q34nw4r2ut19TagProcessorBase_w_FUsPQ34nw4r2ut15PrintContext_w:
/* 8042BAB8 003F5078  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8042BABC 003F507C  7C 08 02 A6 */	mflr r0
/* 8042BAC0 003F5080  90 01 00 54 */	stw r0, 0x54(r1)
/* 8042BAC4 003F5084  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8042BAC8 003F5088  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 8042BACC 003F508C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8042BAD0 003F5090  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 8042BAD4 003F5094  2C 04 00 0A */	cmpwi r4, 0xa
/* 8042BAD8 003F5098  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8042BADC 003F509C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8042BAE0 003F50A0  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8042BAE4 003F50A4  7C BD 2B 78 */	mr r29, r5
/* 8042BAE8 003F50A8  41 82 00 14 */	beq .L_8042BAFC
/* 8042BAEC 003F50AC  40 80 00 CC */	bge .L_8042BBB8
/* 8042BAF0 003F50B0  2C 04 00 09 */	cmpwi r4, 9
/* 8042BAF4 003F50B4  40 80 00 30 */	bge .L_8042BB24
/* 8042BAF8 003F50B8  48 00 00 C0 */	b .L_8042BBB8
.L_8042BAFC:
/* 8042BAFC 003F50BC  83 E5 00 00 */	lwz r31, 0(r5)
/* 8042BB00 003F50C0  C3 E5 00 08 */	lfs f31, 8(r5)
/* 8042BB04 003F50C4  C3 DF 00 30 */	lfs f30, 0x30(r31)
/* 8042BB08 003F50C8  7F E3 FB 78 */	mr r3, r31
/* 8042BB0C 003F50CC  48 00 4C 49 */	bl GetLineHeight__Q34nw4r2ut17TextWriterBase_w_CFv
/* 8042BB10 003F50D0  EC 1E 08 2A */	fadds f0, f30, f1
/* 8042BB14 003F50D4  D3 FF 00 2C */	stfs f31, 0x2c(r31)
/* 8042BB18 003F50D8  38 60 00 03 */	li r3, 3
/* 8042BB1C 003F50DC  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8042BB20 003F50E0  48 00 00 9C */	b .L_8042BBBC
.L_8042BB24:
/* 8042BB24 003F50E4  83 E5 00 00 */	lwz r31, 0(r5)
/* 8042BB28 003F50E8  83 DF 00 58 */	lwz r30, 0x58(r31)
/* 8042BB2C 003F50EC  2C 1E 00 00 */	cmpwi r30, 0
/* 8042BB30 003F50F0  40 81 00 80 */	ble .L_8042BBB0
/* 8042BB34 003F50F4  88 1F 00 43 */	lbz r0, 0x43(r31)
/* 8042BB38 003F50F8  2C 00 00 00 */	cmpwi r0, 0
/* 8042BB3C 003F50FC  41 82 00 0C */	beq .L_8042BB48
/* 8042BB40 003F5100  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8042BB44 003F5104  48 00 00 0C */	b .L_8042BB50
.L_8042BB48:
/* 8042BB48 003F5108  7F E3 FB 78 */	mr r3, r31
/* 8042BB4C 003F510C  48 00 41 11 */	bl GetFontWidth__Q34nw4r2ut10CharWriterCFv
.L_8042BB50:
/* 8042BB50 003F5110  3C 00 43 30 */	lis r0, 0x4330
/* 8042BB54 003F5114  6F C3 80 00 */	xoris r3, r30, 0x8000
/* 8042BB58 003F5118  90 61 00 0C */	stw r3, 0xc(r1)
/* 8042BB5C 003F511C  C8 42 C5 B0 */	lfd f2, double_8066C930@sda21(r2)
/* 8042BB60 003F5120  90 01 00 08 */	stw r0, 8(r1)
/* 8042BB64 003F5124  C0 9F 00 2C */	lfs f4, 0x2c(r31)
/* 8042BB68 003F5128  C8 01 00 08 */	lfd f0, 8(r1)
/* 8042BB6C 003F512C  C0 7D 00 08 */	lfs f3, 8(r29)
/* 8042BB70 003F5130  EC 00 10 28 */	fsubs f0, f0, f2
/* 8042BB74 003F5134  90 01 00 18 */	stw r0, 0x18(r1)
/* 8042BB78 003F5138  EC 84 18 28 */	fsubs f4, f4, f3
/* 8042BB7C 003F513C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8042BB80 003F5140  EC 04 08 24 */	fdivs f0, f4, f1
/* 8042BB84 003F5144  FC 00 00 1E */	fctiwz f0, f0
/* 8042BB88 003F5148  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8042BB8C 003F514C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8042BB90 003F5150  38 03 00 01 */	addi r0, r3, 1
/* 8042BB94 003F5154  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8042BB98 003F5158  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8042BB9C 003F515C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8042BBA0 003F5160  EC 00 10 28 */	fsubs f0, f0, f2
/* 8042BBA4 003F5164  EC 01 00 32 */	fmuls f0, f1, f0
/* 8042BBA8 003F5168  EC 03 00 2A */	fadds f0, f3, f0
/* 8042BBAC 003F516C  D0 1F 00 2C */	stfs f0, 0x2c(r31)
.L_8042BBB0:
/* 8042BBB0 003F5170  38 60 00 01 */	li r3, 1
/* 8042BBB4 003F5174  48 00 00 08 */	b .L_8042BBBC
.L_8042BBB8:
/* 8042BBB8 003F5178  38 60 00 00 */	li r3, 0
.L_8042BBBC:
/* 8042BBBC 003F517C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 8042BBC0 003F5180  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8042BBC4 003F5184  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 8042BBC8 003F5188  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8042BBCC 003F518C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8042BBD0 003F5190  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8042BBD4 003F5194  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8042BBD8 003F5198  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8042BBDC 003F519C  7C 08 03 A6 */	mtlr r0
/* 8042BBE0 003F51A0  38 21 00 50 */	addi r1, r1, 0x50
/* 8042BBE4 003F51A4  4E 80 00 20 */	blr 

#CalcRect__Q34nw4r2ut19TagProcessorBase<w>FPQ34nw4r2ut4RectUsPQ34nw4r2ut15PrintContext<w>
.global CalcRect__Q34nw4r2ut19TagProcessorBase_w_FPQ34nw4r2ut4RectUsPQ34nw4r2ut15PrintContext_w
CalcRect__Q34nw4r2ut19TagProcessorBase_w_FPQ34nw4r2ut4RectUsPQ34nw4r2ut15PrintContext_w:
/* 8042BBE8 003F51A8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8042BBEC 003F51AC  7C 08 02 A6 */	mflr r0
/* 8042BBF0 003F51B0  90 01 00 64 */	stw r0, 0x64(r1)
/* 8042BBF4 003F51B4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8042BBF8 003F51B8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 8042BBFC 003F51BC  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8042BC00 003F51C0  F3 C1 00 48 */	psq_st f30, 72(r1), 0, qr0
/* 8042BC04 003F51C4  39 61 00 40 */	addi r11, r1, 0x40
/* 8042BC08 003F51C8  4B E8 E5 4D */	bl _savegpr_27
/* 8042BC0C 003F51CC  2C 05 00 0A */	cmpwi r5, 0xa
/* 8042BC10 003F51D0  7C 9B 23 78 */	mr r27, r4
/* 8042BC14 003F51D4  7C DC 33 78 */	mr r28, r6
/* 8042BC18 003F51D8  41 82 00 14 */	beq .L_8042BC2C
/* 8042BC1C 003F51DC  40 80 01 88 */	bge .L_8042BDA4
/* 8042BC20 003F51E0  2C 05 00 09 */	cmpwi r5, 9
/* 8042BC24 003F51E4  40 80 00 90 */	bge .L_8042BCB4
/* 8042BC28 003F51E8  48 00 01 7C */	b .L_8042BDA4
.L_8042BC2C:
/* 8042BC2C 003F51EC  83 C6 00 00 */	lwz r30, 0(r6)
/* 8042BC30 003F51F0  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8042BC34 003F51F4  D0 04 00 08 */	stfs f0, 8(r4)
/* 8042BC38 003F51F8  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 8042BC3C 003F51FC  D0 04 00 04 */	stfs f0, 4(r4)
/* 8042BC40 003F5200  83 E6 00 00 */	lwz r31, 0(r6)
/* 8042BC44 003F5204  C3 E6 00 08 */	lfs f31, 8(r6)
/* 8042BC48 003F5208  C3 DF 00 30 */	lfs f30, 0x30(r31)
/* 8042BC4C 003F520C  7F E3 FB 78 */	mr r3, r31
/* 8042BC50 003F5210  48 00 4B 05 */	bl GetLineHeight__Q34nw4r2ut17TextWriterBase_w_CFv
/* 8042BC54 003F5214  EC 1E 08 2A */	fadds f0, f30, f1
/* 8042BC58 003F5218  D3 FF 00 2C */	stfs f31, 0x2c(r31)
/* 8042BC5C 003F521C  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8042BC60 003F5220  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8042BC64 003F5224  D0 1B 00 00 */	stfs f0, 0(r27)
/* 8042BC68 003F5228  C3 DE 00 30 */	lfs f30, 0x30(r30)
/* 8042BC6C 003F522C  80 7C 00 00 */	lwz r3, 0(r28)
/* 8042BC70 003F5230  48 00 40 4D */	bl GetFontHeight__Q34nw4r2ut10CharWriterCFv
/* 8042BC74 003F5234  EC 1E 08 2A */	fadds f0, f30, f1
/* 8042BC78 003F5238  C0 DB 00 04 */	lfs f6, 4(r27)
/* 8042BC7C 003F523C  C0 FB 00 00 */	lfs f7, 0(r27)
/* 8042BC80 003F5240  38 60 00 03 */	li r3, 3
/* 8042BC84 003F5244  C0 BB 00 08 */	lfs f5, 8(r27)
/* 8042BC88 003F5248  EC 40 30 28 */	fsubs f2, f0, f6
/* 8042BC8C 003F524C  EC 65 38 28 */	fsubs f3, f5, f7
/* 8042BC90 003F5250  FC 22 01 AE */	fsel f1, f2, f6, f0
/* 8042BC94 003F5254  FC 83 29 EE */	fsel f4, f3, f7, f5
/* 8042BC98 003F5258  FC 63 39 6E */	fsel f3, f3, f5, f7
/* 8042BC9C 003F525C  FC 02 30 2E */	fsel f0, f2, f0, f6
/* 8042BCA0 003F5260  D0 3B 00 04 */	stfs f1, 4(r27)
/* 8042BCA4 003F5264  D0 9B 00 00 */	stfs f4, 0(r27)
/* 8042BCA8 003F5268  D0 7B 00 08 */	stfs f3, 8(r27)
/* 8042BCAC 003F526C  D0 1B 00 0C */	stfs f0, 0xc(r27)
/* 8042BCB0 003F5270  48 00 00 F8 */	b .L_8042BDA8
.L_8042BCB4:
/* 8042BCB4 003F5274  83 A6 00 00 */	lwz r29, 0(r6)
/* 8042BCB8 003F5278  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 8042BCBC 003F527C  D0 04 00 00 */	stfs f0, 0(r4)
/* 8042BCC0 003F5280  83 E6 00 00 */	lwz r31, 0(r6)
/* 8042BCC4 003F5284  83 DF 00 58 */	lwz r30, 0x58(r31)
/* 8042BCC8 003F5288  2C 1E 00 00 */	cmpwi r30, 0
/* 8042BCCC 003F528C  40 81 00 80 */	ble .L_8042BD4C
/* 8042BCD0 003F5290  88 1F 00 43 */	lbz r0, 0x43(r31)
/* 8042BCD4 003F5294  2C 00 00 00 */	cmpwi r0, 0
/* 8042BCD8 003F5298  41 82 00 0C */	beq .L_8042BCE4
/* 8042BCDC 003F529C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8042BCE0 003F52A0  48 00 00 0C */	b .L_8042BCEC
.L_8042BCE4:
/* 8042BCE4 003F52A4  7F E3 FB 78 */	mr r3, r31
/* 8042BCE8 003F52A8  48 00 3F 75 */	bl GetFontWidth__Q34nw4r2ut10CharWriterCFv
.L_8042BCEC:
/* 8042BCEC 003F52AC  3C 00 43 30 */	lis r0, 0x4330
/* 8042BCF0 003F52B0  6F C3 80 00 */	xoris r3, r30, 0x8000
/* 8042BCF4 003F52B4  90 61 00 0C */	stw r3, 0xc(r1)
/* 8042BCF8 003F52B8  C8 42 C5 B0 */	lfd f2, double_8066C930@sda21(r2)
/* 8042BCFC 003F52BC  90 01 00 08 */	stw r0, 8(r1)
/* 8042BD00 003F52C0  C0 9F 00 2C */	lfs f4, 0x2c(r31)
/* 8042BD04 003F52C4  C8 01 00 08 */	lfd f0, 8(r1)
/* 8042BD08 003F52C8  C0 7C 00 08 */	lfs f3, 8(r28)
/* 8042BD0C 003F52CC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8042BD10 003F52D0  90 01 00 18 */	stw r0, 0x18(r1)
/* 8042BD14 003F52D4  EC 84 18 28 */	fsubs f4, f4, f3
/* 8042BD18 003F52D8  EC 20 00 72 */	fmuls f1, f0, f1
/* 8042BD1C 003F52DC  EC 04 08 24 */	fdivs f0, f4, f1
/* 8042BD20 003F52E0  FC 00 00 1E */	fctiwz f0, f0
/* 8042BD24 003F52E4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8042BD28 003F52E8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8042BD2C 003F52EC  38 03 00 01 */	addi r0, r3, 1
/* 8042BD30 003F52F0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8042BD34 003F52F4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8042BD38 003F52F8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8042BD3C 003F52FC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8042BD40 003F5300  EC 01 00 32 */	fmuls f0, f1, f0
/* 8042BD44 003F5304  EC 03 00 2A */	fadds f0, f3, f0
/* 8042BD48 003F5308  D0 1F 00 2C */	stfs f0, 0x2c(r31)
.L_8042BD4C:
/* 8042BD4C 003F530C  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 8042BD50 003F5310  7F A3 EB 78 */	mr r3, r29
/* 8042BD54 003F5314  D0 1B 00 08 */	stfs f0, 8(r27)
/* 8042BD58 003F5318  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 8042BD5C 003F531C  D0 1B 00 04 */	stfs f0, 4(r27)
/* 8042BD60 003F5320  48 00 3F 5D */	bl GetFontHeight__Q34nw4r2ut10CharWriterCFv
/* 8042BD64 003F5324  C0 5B 00 04 */	lfs f2, 4(r27)
/* 8042BD68 003F5328  38 60 00 01 */	li r3, 1
/* 8042BD6C 003F532C  C0 DB 00 00 */	lfs f6, 0(r27)
/* 8042BD70 003F5330  EC 02 08 2A */	fadds f0, f2, f1
/* 8042BD74 003F5334  C0 9B 00 08 */	lfs f4, 8(r27)
/* 8042BD78 003F5338  EC 24 30 28 */	fsubs f1, f4, f6
/* 8042BD7C 003F533C  EC 60 10 28 */	fsubs f3, f0, f2
/* 8042BD80 003F5340  FC A1 21 AE */	fsel f5, f1, f6, f4
/* 8042BD84 003F5344  FC 81 31 2E */	fsel f4, f1, f4, f6
/* 8042BD88 003F5348  FC 23 00 AE */	fsel f1, f3, f2, f0
/* 8042BD8C 003F534C  FC 03 10 2E */	fsel f0, f3, f0, f2
/* 8042BD90 003F5350  D0 BB 00 00 */	stfs f5, 0(r27)
/* 8042BD94 003F5354  D0 9B 00 08 */	stfs f4, 8(r27)
/* 8042BD98 003F5358  D0 3B 00 04 */	stfs f1, 4(r27)
/* 8042BD9C 003F535C  D0 1B 00 0C */	stfs f0, 0xc(r27)
/* 8042BDA0 003F5360  48 00 00 08 */	b .L_8042BDA8
.L_8042BDA4:
/* 8042BDA4 003F5364  38 60 00 00 */	li r3, 0
.L_8042BDA8:
/* 8042BDA8 003F5368  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 8042BDAC 003F536C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8042BDB0 003F5370  E3 C1 00 48 */	psq_l f30, 72(r1), 0, qr0
/* 8042BDB4 003F5374  39 61 00 40 */	addi r11, r1, 0x40
/* 8042BDB8 003F5378  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8042BDBC 003F537C  4B E8 E3 E5 */	bl _restgpr_27
/* 8042BDC0 003F5380  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8042BDC4 003F5384  7C 08 03 A6 */	mtlr r0
/* 8042BDC8 003F5388  38 21 00 60 */	addi r1, r1, 0x60
/* 8042BDCC 003F538C  4E 80 00 20 */	blr


.section .data, "wa"  # 0x805281E0 - 0x80573C60


.global lbl_8056E6E8
lbl_8056E6E8:
	.4byte 0
	.4byte 0
	.4byte __dt__Q34nw4r2ut19TagProcessorBase_w_Fv
	.4byte Process__Q34nw4r2ut19TagProcessorBase_w_FUsPQ34nw4r2ut15PrintContext_w
	.4byte CalcRect__Q34nw4r2ut19TagProcessorBase_w_FPQ34nw4r2ut4RectUsPQ34nw4r2ut15PrintContext_w


.global lbl_8056E6FC
lbl_8056E6FC:
	.4byte 0
	.4byte 0
	.4byte __dt__Q34nw4r2ut19TagProcessorBase_c_Fv
	.4byte Process__Q34nw4r2ut19TagProcessorBase_c_FUsPQ34nw4r2ut15PrintContext_c
	.4byte CalcRect__Q34nw4r2ut19TagProcessorBase_c_FPQ34nw4r2ut4RectUsPQ34nw4r2ut15PrintContext_c

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.global double_8066C930
double_8066C930:
	.4byte 0x43300000
	.4byte 0x80000000
.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_8006B6A0
func_8006B6A0:
/* 8006B6A0 00034C60  38 63 00 10 */	addi r3, r3, 0x10
/* 8006B6A4 00034C64  4E 80 00 20 */	blr 

.global func_8006B6A8
func_8006B6A8:
/* 8006B6A8 00034C68  80 63 01 64 */	lwz r3, 0x164(r3)
/* 8006B6AC 00034C6C  4E 80 00 20 */	blr 

.global func_8006B6B0
func_8006B6B0:
/* 8006B6B0 00034C70  38 63 00 40 */	addi r3, r3, 0x40
/* 8006B6B4 00034C74  4E 80 00 20 */	blr 

.global func_8006B6B8
func_8006B6B8:
/* 8006B6B8 00034C78  38 63 00 1C */	addi r3, r3, 0x1c
/* 8006B6BC 00034C7C  4E 80 00 20 */	blr 

.global func_8006B6C0
func_8006B6C0:
/* 8006B6C0 00034C80  38 60 00 01 */	li r3, 1
/* 8006B6C4 00034C84  4E 80 00 20 */	blr 

.global func_8006B6C8
func_8006B6C8:
/* 8006B6C8 00034C88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006B6CC 00034C8C  7C 08 02 A6 */	mflr r0
/* 8006B6D0 00034C90  2C 03 00 00 */	cmpwi r3, 0
/* 8006B6D4 00034C94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006B6D8 00034C98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8006B6DC 00034C9C  7C 9F 23 78 */	mr r31, r4
/* 8006B6E0 00034CA0  93 C1 00 08 */	stw r30, 8(r1)
/* 8006B6E4 00034CA4  7C 7E 1B 78 */	mr r30, r3
/* 8006B6E8 00034CA8  41 82 00 1C */	beq .L_8006B704
/* 8006B6EC 00034CAC  38 80 00 00 */	li r4, 0
/* 8006B6F0 00034CB0  48 00 08 31 */	bl func_8006BF20
/* 8006B6F4 00034CB4  2C 1F 00 00 */	cmpwi r31, 0
/* 8006B6F8 00034CB8  40 81 00 0C */	ble .L_8006B704
/* 8006B6FC 00034CBC  7F C3 F3 78 */	mr r3, r30
/* 8006B700 00034CC0  48 3C 95 2D */	bl __dl__FPv
.L_8006B704:
/* 8006B704 00034CC4  7F C3 F3 78 */	mr r3, r30
/* 8006B708 00034CC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8006B70C 00034CCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8006B710 00034CD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006B714 00034CD4  7C 08 03 A6 */	mtlr r0
/* 8006B718 00034CD8  38 21 00 10 */	addi r1, r1, 0x10
/* 8006B71C 00034CDC  4E 80 00 20 */	blr 

.global func_8006B720
func_8006B720:
/* 8006B720 00034CE0  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8006B724 00034CE4  7C 08 02 A6 */	mflr r0
/* 8006B728 00034CE8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8006B72C 00034CEC  39 61 00 90 */	addi r11, r1, 0x90
/* 8006B730 00034CF0  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8006B734 00034CF4  F3 E1 00 98 */	psq_st f31, 152(r1), 0, qr0
/* 8006B738 00034CF8  48 24 EA 15 */	bl _savegpr_25
/* 8006B73C 00034CFC  90 6D 83 1C */	stw r3, lbl_8066449C@sda21(r13)
/* 8006B740 00034D00  7C 7A 1B 78 */	mr r26, r3
/* 8006B744 00034D04  7C 9E 23 78 */	mr r30, r4
/* 8006B748 00034D08  3B E0 00 01 */	li r31, 1
/* 8006B74C 00034D0C  48 01 6A D1 */	bl func_8008221C
/* 8006B750 00034D10  2C 03 00 00 */	cmpwi r3, 0
/* 8006B754 00034D14  41 82 00 24 */	beq .L_8006B778
/* 8006B758 00034D18  48 01 6A C5 */	bl func_8008221C
/* 8006B75C 00034D1C  81 83 00 00 */	lwz r12, 0(r3)
/* 8006B760 00034D20  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8006B764 00034D24  7D 89 03 A6 */	mtctr r12
/* 8006B768 00034D28  4E 80 04 21 */	bctrl 
/* 8006B76C 00034D2C  2C 03 00 00 */	cmpwi r3, 0
/* 8006B770 00034D30  41 82 00 08 */	beq .L_8006B778
/* 8006B774 00034D34  A3 E3 00 8C */	lhz r31, 0x8c(r3)
.L_8006B778:
/* 8006B778 00034D38  3F 60 80 4F */	lis r27, lbl_804F6D00@ha
/* 8006B77C 00034D3C  38 7B 6D 00 */	addi r3, r27, lbl_804F6D00@l
/* 8006B780 00034D40  4B FC F3 25 */	bl func_8003AAA4
/* 8006B784 00034D44  3B 7B 6D 00 */	addi r27, r27, lbl_804F6D00@l
/* 8006B788 00034D48  7C 79 1B 78 */	mr r25, r3
/* 8006B78C 00034D4C  3B 9B 00 0C */	addi r28, r27, 0xc
/* 8006B790 00034D50  7F 83 E3 78 */	mr r3, r28
/* 8006B794 00034D54  48 24 DE 25 */	bl strlen
/* 8006B798 00034D58  90 61 00 54 */	stw r3, 0x54(r1)
/* 8006B79C 00034D5C  7F 84 E3 78 */	mr r4, r28
/* 8006B7A0 00034D60  38 61 00 34 */	addi r3, r1, 0x34
/* 8006B7A4 00034D64  48 25 6F 15 */	bl strcpy
/* 8006B7A8 00034D68  3B 7B 00 0F */	addi r27, r27, 0xf
/* 8006B7AC 00034D6C  7F 63 DB 78 */	mr r3, r27
/* 8006B7B0 00034D70  48 24 DE 09 */	bl strlen
/* 8006B7B4 00034D74  90 61 00 30 */	stw r3, 0x30(r1)
/* 8006B7B8 00034D78  7F 64 DB 78 */	mr r4, r27
/* 8006B7BC 00034D7C  38 61 00 10 */	addi r3, r1, 0x10
/* 8006B7C0 00034D80  48 25 6E F9 */	bl strcpy
/* 8006B7C4 00034D84  3F 80 80 53 */	lis r28, lbl_8052A9CC@ha
/* 8006B7C8 00034D88  57 5B 10 3A */	slwi r27, r26, 2
/* 8006B7CC 00034D8C  3B 9C A9 CC */	addi r28, r28, lbl_8052A9CC@l
/* 8006B7D0 00034D90  7F 5C D8 2E */	lwzx r26, r28, r27
/* 8006B7D4 00034D94  7F 43 D3 78 */	mr r3, r26
/* 8006B7D8 00034D98  48 24 DD E1 */	bl strlen
/* 8006B7DC 00034D9C  7C 7D 1B 78 */	mr r29, r3
/* 8006B7E0 00034DA0  7F 44 D3 78 */	mr r4, r26
/* 8006B7E4 00034DA4  38 61 00 34 */	addi r3, r1, 0x34
/* 8006B7E8 00034DA8  48 25 6F D5 */	bl strcat
/* 8006B7EC 00034DAC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8006B7F0 00034DB0  7F 5C D8 2E */	lwzx r26, r28, r27
/* 8006B7F4 00034DB4  7C 00 EA 14 */	add r0, r0, r29
/* 8006B7F8 00034DB8  90 01 00 54 */	stw r0, 0x54(r1)
/* 8006B7FC 00034DBC  7F 43 D3 78 */	mr r3, r26
/* 8006B800 00034DC0  48 24 DD B9 */	bl strlen
/* 8006B804 00034DC4  7C 7D 1B 78 */	mr r29, r3
/* 8006B808 00034DC8  7F 44 D3 78 */	mr r4, r26
/* 8006B80C 00034DCC  38 61 00 10 */	addi r3, r1, 0x10
/* 8006B810 00034DD0  48 25 6F AD */	bl strcat
/* 8006B814 00034DD4  80 01 00 30 */	lwz r0, 0x30(r1)
/* 8006B818 00034DD8  7F 23 CB 78 */	mr r3, r25
/* 8006B81C 00034DDC  7F E5 FB 78 */	mr r5, r31
/* 8006B820 00034DE0  38 81 00 34 */	addi r4, r1, 0x34
/* 8006B824 00034DE4  7C 00 EA 14 */	add r0, r0, r29
/* 8006B828 00034DE8  90 01 00 30 */	stw r0, 0x30(r1)
/* 8006B82C 00034DEC  4B FC F3 1D */	bl func_8003AB48
/* 8006B830 00034DF0  90 61 00 0C */	stw r3, 0xc(r1)
/* 8006B834 00034DF4  3F A0 43 30 */	lis r29, 0x4330
/* 8006B838 00034DF8  C8 42 87 B0 */	lfd f2, double_80668B30@sda21(r2)
/* 8006B83C 00034DFC  7F 23 CB 78 */	mr r3, r25
/* 8006B840 00034E00  A8 01 00 0C */	lha r0, 0xc(r1)
/* 8006B844 00034E04  7F E5 FB 78 */	mr r5, r31
/* 8006B848 00034E08  93 A1 00 58 */	stw r29, 0x58(r1)
/* 8006B84C 00034E0C  38 81 00 10 */	addi r4, r1, 0x10
/* 8006B850 00034E10  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8006B854 00034E14  C0 02 87 A4 */	lfs f0, float_80668B24@sda21(r2)
/* 8006B858 00034E18  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8006B85C 00034E1C  C8 21 00 58 */	lfd f1, 0x58(r1)
/* 8006B860 00034E20  EC 21 10 28 */	fsubs f1, f1, f2
/* 8006B864 00034E24  EF E0 00 72 */	fmuls f31, f0, f1
/* 8006B868 00034E28  4B FC F2 E1 */	bl func_8003AB48
/* 8006B86C 00034E2C  90 61 00 08 */	stw r3, 8(r1)
/* 8006B870 00034E30  3C 60 80 57 */	lis r3, lbl_80574224@ha
/* 8006B874 00034E34  38 63 42 24 */	addi r3, r3, lbl_80574224@l
/* 8006B878 00034E38  C8 42 87 B0 */	lfd f2, double_80668B30@sda21(r2)
/* 8006B87C 00034E3C  A8 01 00 08 */	lha r0, 8(r1)
/* 8006B880 00034E40  2C 1E 00 00 */	cmpwi r30, 0
/* 8006B884 00034E44  93 A1 00 60 */	stw r29, 0x60(r1)
/* 8006B888 00034E48  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8006B88C 00034E4C  C0 02 87 A8 */	lfs f0, float_80668B28@sda21(r2)
/* 8006B890 00034E50  90 01 00 64 */	stw r0, 0x64(r1)
/* 8006B894 00034E54  C8 21 00 60 */	lfd f1, 0x60(r1)
/* 8006B898 00034E58  D3 E3 00 04 */	stfs f31, 4(r3)
/* 8006B89C 00034E5C  EC 21 10 28 */	fsubs f1, f1, f2
/* 8006B8A0 00034E60  EC 00 00 72 */	fmuls f0, f0, f1
/* 8006B8A4 00034E64  D0 0D 82 C4 */	stfs f0, float_80664444@sda21(r13)
/* 8006B8A8 00034E68  41 82 00 1C */	beq .L_8006B8C4
/* 8006B8AC 00034E6C  48 01 69 4D */	bl func_800821F8
/* 8006B8B0 00034E70  2C 03 00 00 */	cmpwi r3, 0
/* 8006B8B4 00034E74  41 82 00 10 */	beq .L_8006B8C4
/* 8006B8B8 00034E78  80 03 00 04 */	lwz r0, 4(r3)
/* 8006B8BC 00034E7C  64 00 20 00 */	oris r0, r0, 0x2000
/* 8006B8C0 00034E80  90 03 00 04 */	stw r0, 4(r3)
.L_8006B8C4:
/* 8006B8C4 00034E84  39 61 00 90 */	addi r11, r1, 0x90
/* 8006B8C8 00034E88  E3 E1 00 98 */	psq_l f31, 152(r1), 0, qr0
/* 8006B8CC 00034E8C  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 8006B8D0 00034E90  48 24 E8 C9 */	bl _restgpr_25
/* 8006B8D4 00034E94  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8006B8D8 00034E98  7C 08 03 A6 */	mtlr r0
/* 8006B8DC 00034E9C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8006B8E0 00034EA0  4E 80 00 20 */	blr 

.global func_8006B8E4
func_8006B8E4:
/* 8006B8E4 00034EA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006B8E8 00034EA8  7C 08 02 A6 */	mflr r0
/* 8006B8EC 00034EAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006B8F0 00034EB0  48 22 B1 ED */	bl func_80296ADC
/* 8006B8F4 00034EB4  88 03 00 03 */	lbz r0, 3(r3)
/* 8006B8F8 00034EB8  3C A0 80 53 */	lis r5, lbl_8052A9D8@ha
/* 8006B8FC 00034EBC  3C 80 80 53 */	lis r4, lbl_8052A9EC@ha
/* 8006B900 00034EC0  C0 22 87 B8 */	lfs f1, float_80668B38@sda21(r2)
/* 8006B904 00034EC4  54 00 10 3A */	slwi r0, r0, 2
/* 8006B908 00034EC8  38 A5 A9 D8 */	addi r5, r5, lbl_8052A9D8@l
/* 8006B90C 00034ECC  7C 05 04 2E */	lfsx f0, r5, r0
/* 8006B910 00034ED0  38 84 A9 EC */	addi r4, r4, lbl_8052A9EC@l
/* 8006B914 00034ED4  D0 0D 82 B4 */	stfs f0, float_80664434@sda21(r13)
/* 8006B918 00034ED8  C0 02 87 BC */	lfs f0, float_80668B3C@sda21(r2)
/* 8006B91C 00034EDC  88 03 00 02 */	lbz r0, 2(r3)
/* 8006B920 00034EE0  54 00 10 3A */	slwi r0, r0, 2
/* 8006B924 00034EE4  D0 2D 82 B8 */	stfs f1, float_80664438@sda21(r13)
/* 8006B928 00034EE8  7C 44 04 2E */	lfsx f2, r4, r0
/* 8006B92C 00034EEC  D0 4D 82 EC */	stfs f2, float_8066446C@sda21(r13)
/* 8006B930 00034EF0  D0 2D 82 BC */	stfs f1, float_8066443C@sda21(r13)
/* 8006B934 00034EF4  D0 0D 82 C0 */	stfs f0, float_80664440@sda21(r13)
/* 8006B938 00034EF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006B93C 00034EFC  7C 08 03 A6 */	mtlr r0
/* 8006B940 00034F00  38 21 00 10 */	addi r1, r1, 0x10
/* 8006B944 00034F04  4E 80 00 20 */	blr 

.global func_8006B948
func_8006B948:
/* 8006B948 00034F08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006B94C 00034F0C  7C 08 02 A6 */	mflr r0
/* 8006B950 00034F10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006B954 00034F14  48 22 B1 89 */	bl func_80296ADC
/* 8006B958 00034F18  88 03 00 04 */	lbz r0, 4(r3)
/* 8006B95C 00034F1C  3C 60 80 53 */	lis r3, lbl_8052AA00@ha
/* 8006B960 00034F20  38 63 AA 00 */	addi r3, r3, lbl_8052AA00@l
/* 8006B964 00034F24  54 00 10 3A */	slwi r0, r0, 2
/* 8006B968 00034F28  7C 03 04 2E */	lfsx f0, r3, r0
/* 8006B96C 00034F2C  D0 0D 83 20 */	stfs f0, float_806644A0@sda21(r13)
/* 8006B970 00034F30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006B974 00034F34  7C 08 03 A6 */	mtlr r0
/* 8006B978 00034F38  38 21 00 10 */	addi r1, r1, 0x10
/* 8006B97C 00034F3C  4E 80 00 20 */	blr 

.global func_8006B980
func_8006B980:
/* 8006B980 00034F40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006B984 00034F44  7C 08 02 A6 */	mflr r0
/* 8006B988 00034F48  C0 62 87 D4 */	lfs f3, float_80668B54@sda21(r2)
/* 8006B98C 00034F4C  38 A0 00 04 */	li r5, 4
/* 8006B990 00034F50  C0 02 87 D8 */	lfs f0, float_80668B58@sda21(r2)
/* 8006B994 00034F54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006B998 00034F58  38 00 00 00 */	li r0, 0
/* 8006B99C 00034F5C  EC 40 18 24 */	fdivs f2, f0, f3
/* 8006B9A0 00034F60  C0 22 87 DC */	lfs f1, float_80668B5C@sda21(r2)
/* 8006B9A4 00034F64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8006B9A8 00034F68  7C 9F 23 78 */	mr r31, r4
/* 8006B9AC 00034F6C  C0 02 C6 90 */	lfs f0, deg2rad__2mm@sda21(r2)
/* 8006B9B0 00034F70  93 C1 00 08 */	stw r30, 8(r1)
/* 8006B9B4 00034F74  EC 01 00 32 */	fmuls f0, f1, f0
/* 8006B9B8 00034F78  C1 02 87 C0 */	lfs f8, float_80668B40@sda21(r2)
/* 8006B9BC 00034F7C  C0 E2 87 C4 */	lfs f7, float_80668B44@sda21(r2)
/* 8006B9C0 00034F80  7C 7E 1B 78 */	mr r30, r3
/* 8006B9C4 00034F84  C0 C2 87 C8 */	lfs f6, float_80668B48@sda21(r2)
/* 8006B9C8 00034F88  C0 A2 87 CC */	lfs f5, float_80668B4C@sda21(r2)
/* 8006B9CC 00034F8C  C0 82 87 D0 */	lfs f4, float_80668B50@sda21(r2)
/* 8006B9D0 00034F90  D1 0D 82 D8 */	stfs f8, float_80664458@sda21(r13)
/* 8006B9D4 00034F94  D0 ED 83 10 */	stfs f7, float_80664490@sda21(r13)
/* 8006B9D8 00034F98  D0 CD 83 14 */	stfs f6, float_80664494@sda21(r13)
/* 8006B9DC 00034F9C  90 AD 82 F4 */	stw r5, lbl_80664474@sda21(r13)
/* 8006B9E0 00034FA0  D0 AD 83 04 */	stfs f5, float_80664484@sda21(r13)
/* 8006B9E4 00034FA4  D0 8D 83 08 */	stfs f4, float_80664488@sda21(r13)
/* 8006B9E8 00034FA8  98 0D A5 61 */	stb r0, lbl_806666E1@sda21(r13)
/* 8006B9EC 00034FAC  D0 6D 82 B0 */	stfs f3, float_80664430@sda21(r13)
/* 8006B9F0 00034FB0  D0 4D A5 50 */	stfs f2, float_806666D0@sda21(r13)
/* 8006B9F4 00034FB4  D0 0D A5 58 */	stfs f0, float_806666D8@sda21(r13)
/* 8006B9F8 00034FB8  48 22 B0 E5 */	bl func_80296ADC
/* 8006B9FC 00034FBC  88 03 00 03 */	lbz r0, 3(r3)
/* 8006BA00 00034FC0  3C A0 80 53 */	lis r5, lbl_8052A9D8@ha
/* 8006BA04 00034FC4  3C 80 80 53 */	lis r4, lbl_8052A9EC@ha
/* 8006BA08 00034FC8  C0 22 87 B8 */	lfs f1, float_80668B38@sda21(r2)
/* 8006BA0C 00034FCC  54 00 10 3A */	slwi r0, r0, 2
/* 8006BA10 00034FD0  38 A5 A9 D8 */	addi r5, r5, lbl_8052A9D8@l
/* 8006BA14 00034FD4  7C 05 04 2E */	lfsx f0, r5, r0
/* 8006BA18 00034FD8  38 84 A9 EC */	addi r4, r4, lbl_8052A9EC@l
/* 8006BA1C 00034FDC  D0 0D 82 B4 */	stfs f0, float_80664434@sda21(r13)
/* 8006BA20 00034FE0  C0 02 87 BC */	lfs f0, float_80668B3C@sda21(r2)
/* 8006BA24 00034FE4  88 03 00 02 */	lbz r0, 2(r3)
/* 8006BA28 00034FE8  54 00 10 3A */	slwi r0, r0, 2
/* 8006BA2C 00034FEC  D0 2D 82 B8 */	stfs f1, float_80664438@sda21(r13)
/* 8006BA30 00034FF0  7C 44 04 2E */	lfsx f2, r4, r0
/* 8006BA34 00034FF4  D0 4D 82 EC */	stfs f2, float_8066446C@sda21(r13)
/* 8006BA38 00034FF8  D0 2D 82 BC */	stfs f1, float_8066443C@sda21(r13)
/* 8006BA3C 00034FFC  D0 0D 82 C0 */	stfs f0, float_80664440@sda21(r13)
/* 8006BA40 00035000  48 22 B0 9D */	bl func_80296ADC
/* 8006BA44 00035004  88 03 00 04 */	lbz r0, 4(r3)
/* 8006BA48 00035008  3C A0 80 53 */	lis r5, lbl_8052AA00@ha
/* 8006BA4C 0003500C  38 A5 AA 00 */	addi r5, r5, lbl_8052AA00@l
/* 8006BA50 00035010  7F C3 F3 78 */	mr r3, r30
/* 8006BA54 00035014  54 00 10 3A */	slwi r0, r0, 2
/* 8006BA58 00035018  7F E4 FB 78 */	mr r4, r31
/* 8006BA5C 0003501C  7C 05 04 2E */	lfsx f0, r5, r0
/* 8006BA60 00035020  D0 0D 83 20 */	stfs f0, float_806644A0@sda21(r13)
/* 8006BA64 00035024  4B FF FC BD */	bl func_8006B720
/* 8006BA68 00035028  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006BA6C 0003502C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8006BA70 00035030  83 C1 00 08 */	lwz r30, 8(r1)
/* 8006BA74 00035034  7C 08 03 A6 */	mtlr r0
/* 8006BA78 00035038  38 21 00 10 */	addi r1, r1, 0x10
/* 8006BA7C 0003503C  4E 80 00 20 */	blr 

.global func_8006BA80
func_8006BA80:
/* 8006BA80 00035040  C0 23 00 00 */	lfs f1, 0(r3)
/* 8006BA84 00035044  38 00 00 00 */	li r0, 0
/* 8006BA88 00035048  C0 02 C6 88 */	lfs f0, epsilon__2mm@sda21(r2)
/* 8006BA8C 0003504C  38 80 00 00 */	li r4, 0
/* 8006BA90 00035050  FC 20 0A 10 */	fabs f1, f1
/* 8006BA94 00035054  FC 20 08 18 */	frsp f1, f1
/* 8006BA98 00035058  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006BA9C 0003505C  4C 40 13 82 */	cror 2, 0, 2
/* 8006BAA0 00035060  40 82 00 20 */	bne .L_8006BAC0
/* 8006BAA4 00035064  C0 23 00 04 */	lfs f1, 4(r3)
/* 8006BAA8 00035068  FC 20 0A 10 */	fabs f1, f1
/* 8006BAAC 0003506C  FC 20 08 18 */	frsp f1, f1
/* 8006BAB0 00035070  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006BAB4 00035074  4C 40 13 82 */	cror 2, 0, 2
/* 8006BAB8 00035078  40 82 00 08 */	bne .L_8006BAC0
/* 8006BABC 0003507C  38 80 00 01 */	li r4, 1
.L_8006BAC0:
/* 8006BAC0 00035080  2C 04 00 00 */	cmpwi r4, 0
/* 8006BAC4 00035084  41 82 00 24 */	beq .L_8006BAE8
/* 8006BAC8 00035088  C0 23 00 08 */	lfs f1, 8(r3)
/* 8006BACC 0003508C  C0 02 C6 88 */	lfs f0, epsilon__2mm@sda21(r2)
/* 8006BAD0 00035090  FC 20 0A 10 */	fabs f1, f1
/* 8006BAD4 00035094  FC 20 08 18 */	frsp f1, f1
/* 8006BAD8 00035098  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006BADC 0003509C  4C 40 13 82 */	cror 2, 0, 2
/* 8006BAE0 000350A0  40 82 00 08 */	bne .L_8006BAE8
/* 8006BAE4 000350A4  38 00 00 01 */	li r0, 1
.L_8006BAE8:
/* 8006BAE8 000350A8  7C 03 03 78 */	mr r3, r0
/* 8006BAEC 000350AC  4E 80 00 20 */	blr 

.global func_8006BAF0
func_8006BAF0:
/* 8006BAF0 000350B0  C0 03 00 00 */	lfs f0, 0(r3)
/* 8006BAF4 000350B4  FC 00 02 10 */	fabs f0, f0
/* 8006BAF8 000350B8  FC 20 00 18 */	frsp f1, f0
/* 8006BAFC 000350BC  4E 80 00 20 */	blr 

.global func_8006BB00
func_8006BB00:
/* 8006BB00 000350C0  48 2E 26 00 */	b PSVECMag

.global func_8006BB04
func_8006BB04:
/* 8006BB04 000350C4  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 8006BB08 000350C8  10 40 00 58 */	ps_muls0 f2, f0, f1
/* 8006BB0C 000350CC  E0 03 80 08 */	psq_l f0, 8(r3), 1, qr0
/* 8006BB10 000350D0  F0 43 00 00 */	psq_st f2, 0(r3), 0, qr0
/* 8006BB14 000350D4  10 40 00 58 */	ps_muls0 f2, f0, f1
/* 8006BB18 000350D8  F0 43 80 08 */	psq_st f2, 8(r3), 1, qr0
/* 8006BB1C 000350DC  4E 80 00 20 */	blr 

.global func_8006BB20
func_8006BB20:
/* 8006BB20 000350E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8006BB24 000350E4  7C 08 02 A6 */	mflr r0
/* 8006BB28 000350E8  C0 02 87 E0 */	lfs f0, float_80668B60@sda21(r2)
/* 8006BB2C 000350EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8006BB30 000350F0  EC 21 00 28 */	fsubs f1, f1, f0
/* 8006BB34 000350F4  C0 42 87 E4 */	lfs f2, float_80668B64@sda21(r2)
/* 8006BB38 000350F8  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8006BB3C 000350FC  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 8006BB40 00035100  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8006BB44 00035104  C3 E2 87 D8 */	lfs f31, float_80668B58@sda21(r2)
/* 8006BB48 00035108  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8006BB4C 0003510C  7C 7F 1B 78 */	mr r31, r3
/* 8006BB50 00035110  40 81 00 84 */	ble .L_8006BBD4
/* 8006BB54 00035114  C0 02 87 E8 */	lfs f0, float_80668B68@sda21(r2)
/* 8006BB58 00035118  EC 01 00 24 */	fdivs f0, f1, f0
/* 8006BB5C 0003511C  EC 1F 00 28 */	fsubs f0, f31, f0
/* 8006BB60 00035120  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8006BB64 00035124  40 80 00 08 */	bge .L_8006BB6C
/* 8006BB68 00035128  48 00 00 18 */	b .L_8006BB80
.L_8006BB6C:
/* 8006BB6C 0003512C  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8006BB70 00035130  40 81 00 08 */	ble .L_8006BB78
/* 8006BB74 00035134  48 00 00 08 */	b .L_8006BB7C
.L_8006BB78:
/* 8006BB78 00035138  FF E0 00 90 */	fmr f31, f0
.L_8006BB7C:
/* 8006BB7C 0003513C  FC 40 F8 90 */	fmr f2, f31
.L_8006BB80:
/* 8006BB80 00035140  C0 22 C6 80 */	lfs f1, halfpi__2mm@sda21(r2)
/* 8006BB84 00035144  C0 02 87 EC */	lfs f0, float_80668B6C@sda21(r2)
/* 8006BB88 00035148  EC 22 00 72 */	fmuls f1, f2, f1
/* 8006BB8C 0003514C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8006BB90 00035150  48 39 F1 9D */	bl SinFIdx__Q24nw4r4mathFf
/* 8006BB94 00035154  FF E0 08 90 */	fmr f31, f1
/* 8006BB98 00035158  2C 1F 00 00 */	cmpwi r31, 0
/* 8006BB9C 0003515C  41 82 00 38 */	beq .L_8006BBD4
/* 8006BBA0 00035160  C0 02 87 A8 */	lfs f0, float_80668B28@sda21(r2)
/* 8006BBA4 00035164  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8006BBA8 00035168  40 81 00 2C */	ble .L_8006BBD4
/* 8006BBAC 0003516C  C8 42 87 F0 */	lfd f2, double_80668B70@sda21(r2)
/* 8006BBB0 00035170  48 25 F6 5D */	bl fmod
/* 8006BBB4 00035174  C0 02 87 E4 */	lfs f0, float_80668B64@sda21(r2)
/* 8006BBB8 00035178  FC 20 08 18 */	frsp f1, f1
/* 8006BBBC 0003517C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8006BBC0 00035180  4C 41 13 82 */	cror 2, 1, 2
/* 8006BBC4 00035184  40 82 00 0C */	bne .L_8006BBD0
/* 8006BBC8 00035188  EF FF 08 28 */	fsubs f31, f31, f1
/* 8006BBCC 0003518C  48 00 00 08 */	b .L_8006BBD4
.L_8006BBD0:
/* 8006BBD0 00035190  EF FF 08 2A */	fadds f31, f31, f1
.L_8006BBD4:
/* 8006BBD4 00035194  FC 20 F8 90 */	fmr f1, f31
/* 8006BBD8 00035198  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 8006BBDC 0003519C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8006BBE0 000351A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8006BBE4 000351A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8006BBE8 000351A8  7C 08 03 A6 */	mtlr r0
/* 8006BBEC 000351AC  38 21 00 20 */	addi r1, r1, 0x20
/* 8006BBF0 000351B0  4E 80 00 20 */	blr 

.global func_8006BBF4
func_8006BBF4:
/* 8006BBF4 000351B4  2C 05 00 00 */	cmpwi r5, 0
/* 8006BBF8 000351B8  41 82 00 14 */	beq .L_8006BC0C
/* 8006BBFC 000351BC  80 03 00 04 */	lwz r0, 4(r3)
/* 8006BC00 000351C0  7C 00 23 78 */	or r0, r0, r4
/* 8006BC04 000351C4  90 03 00 04 */	stw r0, 4(r3)
/* 8006BC08 000351C8  4E 80 00 20 */	blr
.L_8006BC0C:
/* 8006BC0C 000351CC  80 03 00 04 */	lwz r0, 4(r3)
/* 8006BC10 000351D0  7C 00 20 78 */	andc r0, r0, r4
/* 8006BC14 000351D4  90 03 00 04 */	stw r0, 4(r3)
/* 8006BC18 000351D8  4E 80 00 20 */	blr 

.global func_8006BC1C
func_8006BC1C:
/* 8006BC1C 000351DC  80 03 00 04 */	lwz r0, 4(r3)
/* 8006BC20 000351E0  7C 00 20 78 */	andc r0, r0, r4
/* 8006BC24 000351E4  90 03 00 04 */	stw r0, 4(r3)
/* 8006BC28 000351E8  4E 80 00 20 */	blr 

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global cf_CfCam_typestr
cf_CfCam_typestr:
	.asciz "cf::CfCam"
	.balign 4
	.4byte 0


.global lbl_804F6D00
lbl_804F6D00:
	.asciz "opt_camlist"
	.asciz "at"
	.asciz "pitch"
	.asciz "CROSS WATER"
	.asciz "WATER AT"
	#observation point unregistered?
	#"注視点潜り\n"
	.byte 0x92, 0x8D
	.4byte 0x8E8B935F
	.4byte 0x90F682E8
	.2byte 0x0A00
	#water priority 
	#"water優先 wa:%.3f map:%.3f %.2f %.2f\n"
	.byte 0x77
	.4byte 0x61746572
	.4byte 0x974490E6
	.asciz " wa:%.3f map:%.3f %.2f %.2f\n"
	.asciz "blend:%.2f l:%.2f"
	.asciz "water:%.2f y:%.3f"
	.asciz "blend:%.2f %.1f"
	#cliff correction?
	#"崖補正:%d"
	.4byte 0x8A5295E2
	.4byte 0x90B33A25
	.2byte 0x6400
	.asciz "water"
	.asciz "[%.2f %.2f %.2f] [%.2f %.2f %.2f] l:%.3f %.3f"
	#last obstacle
	#"前障害物%d[%.2f %.2f %.2f] nml:%d pos[%.2f %.2f %.2f]"
	.2byte 0x914F
	.4byte 0x8FE18A51
	.2byte 0x95A8
	.asciz "%d[%.2f %.2f %.2f] nml:%d pos[%.2f %.2f %.2f]"
	.asciz "WALL [%.2f %.2f %.2f]"
	#ground correction
	#"地面補正 ny:%.2f gy:%.2f wy:%.2f"
	.byte 0x92, 0x6E
	.4byte 0x96CA95E2
	.2byte 0x90B3
	.asciz " ny:%.2f gy:%.2f wy:%.2f"
	.balign 4
	.4byte 0

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global cf_CfCamFollow_hierarchy
cf_CfCamFollow_hierarchy:
	.4byte __RTTI__cf_CfCam
	.4byte 0
	.4byte 0


.global lbl_8052A930
lbl_8052A930:
	.float 1.0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 1.5
	.float 1.0
	.float 0.2
	.float 1.0
	.float 1.0
	.float 2 #0x40000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 1.5
	.4byte 0
	.float 1.0
	.float 0.5
	.float 0.5
	.float 2 #0x40000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 1.0
	.4byte 0
	.float 0.5
	.float 0.5
	.float 0.5

.global lbl_8052A9CC
lbl_8052A9CC:
	.4byte lbl_80668B10
	.4byte lbl_80668B18
	.4byte lbl_80668B20


.global lbl_8052A9D8
lbl_8052A9D8:
	.float 0.1
	.float 0.08
	.float 0.06
	.float 0.045
	.float 0.03


.global lbl_8052A9EC
lbl_8052A9EC:
	.float 0.07
	.float 0.05
	.float 0.03
	.float 0.02
	.float 0.01


.global lbl_8052AA00
lbl_8052AA00:
	.float 0.27
	.float 0.2
	.float 0.13
	.float 0.1
	.float 0.07
	
.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global __RTTI__cf_CfCam
__RTTI__cf_CfCam:
	.4byte cf_CfCam_typestr
	.4byte 0


.global float_80664430
float_80664430:
	.float 1.25 #0x3FA00000


.global float_80664434
float_80664434:
	.float 0.07 #0x3D8F5C29


.global float_80664438
float_80664438:
	.float 0.3 #0x3E99999A


.global float_8066443C
float_8066443C:
	.float 0.3 #0x3E99999A


.global float_80664440
float_80664440:
	.float 0.65 #0x3F266666


.global float_80664444
float_80664444:
	.float 7.5 #0x40F00000

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.global lbl_80668B10
lbl_80668B10:
	.asciz "High"
	.balign 4

.global lbl_80668B18
lbl_80668B18:
	.asciz "Normal"
	.balign 4

.global lbl_80668B20
lbl_80668B20:
	.4byte 0x4C6F7700


.global float_80668B24
float_80668B24:
	.float 0.01 #0x3C23D70A


.global float_80668B28
float_80668B28:
	.float 0.1 #0x3DCCCCCD
	.4byte 0


.global double_80668B30
double_80668B30:
	.8byte 0x4330000080000000 #signed int to float constant

.global float_80668B38
float_80668B38:
	.float 0.045 #0x3D3851EC


.global float_80668B3C
float_80668B3C:
	.float 0.65 #0x3F266666


.global float_80668B40
float_80668B40:
	.float 8.0


.global float_80668B44
float_80668B44:
	.float 20 #0x41A00000


.global float_80668B48
float_80668B48:
	.float 30 #0x41F00000


.global float_80668B4C
float_80668B4C:
	.float 12 #0x41400000


.global float_80668B50
float_80668B50:
	.float 18 #0x41900000


.global float_80668B54
float_80668B54:
	.float 1.25 #0x3FA00000


.global float_80668B58
float_80668B58:
	.float 1.0


.global float_80668B5C
float_80668B5C:
	.float -40 #0xC2200000


.global float_80668B60
float_80668B60:
	.float 0.75


.global float_80668B64
float_80668B64:
	.float 0


.global float_80668B68
float_80668B68:
	.float 0.25


.global float_80668B6C
float_80668B6C:
	.float 40.7436638 #0x4222F983


#weird muladd constant?
.global double_80668B70
double_80668B70:
	.8byte 0x3F847AE140000000 #0.0099999997764825821

.section extab_, "a"  # 0x800066E0 - 0x80021020

.global lbl_800080A8
lbl_800080A8:
	.4byte 0x10080000
	.4byte 0

.global lbl_800080B0
lbl_800080B0:
	.4byte 0x384A0000
	.4byte 0

.global lbl_800080B8
lbl_800080B8:
	.4byte 0x000A0000
	.4byte 0

.global lbl_800080C0
lbl_800080C0:
	.4byte 0x000A0000
	.4byte 0

.global lbl_800080C8
lbl_800080C8:
	.4byte 0x100A0000
	.4byte 0

.global lbl_800080D0
lbl_800080D0:
	.4byte 0x084A0000
	.4byte 0


.section extabindex_, "a"  # 0x80021020 - 0x80039220

	.4byte func_8006B6C8
	.4byte 0x00000058
	.4byte lbl_800080A8
	.4byte func_8006B720
	.4byte 0x000001C4
	.4byte lbl_800080B0
	.4byte func_8006B8E4
	.4byte 0x00000064
	.4byte lbl_800080B8
	.4byte func_8006B948
	.4byte 0x00000038
	.4byte lbl_800080C0
	.4byte func_8006B980
	.4byte 0x00000100
	.4byte lbl_800080C8
	.4byte func_8006BB20
	.4byte 0x000000D4
	.4byte lbl_800080D0
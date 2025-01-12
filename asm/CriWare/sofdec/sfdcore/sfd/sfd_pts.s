.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900


.global SFPTS_InitPtsQue
SFPTS_InitPtsQue:
/* 803CB858 00394E18  38 00 00 00 */	li r0, 0
/* 803CB85C 00394E1C  90 03 00 00 */	stw r0, 0(r3)
/* 803CB860 00394E20  90 03 00 04 */	stw r0, 4(r3)
/* 803CB864 00394E24  90 03 00 08 */	stw r0, 8(r3)
/* 803CB868 00394E28  90 03 00 0C */	stw r0, 0xc(r3)
/* 803CB86C 00394E2C  90 03 00 10 */	stw r0, 0x10(r3)
/* 803CB870 00394E30  4E 80 00 20 */	blr 

.global SFPTS_ResetPtsQue
SFPTS_ResetPtsQue:
/* 803CB874 00394E34  38 00 00 00 */	li r0, 0
/* 803CB878 00394E38  90 03 00 08 */	stw r0, 8(r3)
/* 803CB87C 00394E3C  90 03 00 0C */	stw r0, 0xc(r3)
/* 803CB880 00394E40  90 03 00 10 */	stw r0, 0x10(r3)
/* 803CB884 00394E44  4E 80 00 20 */	blr 

.global SFD_SetVideoPts
SFD_SetVideoPts:
/* 803CB888 00394E48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CB88C 00394E4C  7C 08 02 A6 */	mflr r0
/* 803CB890 00394E50  2C 04 00 00 */	cmpwi r4, 0
/* 803CB894 00394E54  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CB898 00394E58  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803CB89C 00394E5C  7C BF 2B 78 */	mr r31, r5
/* 803CB8A0 00394E60  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803CB8A4 00394E64  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803CB8A8 00394E68  7C 9D 23 78 */	mr r29, r4
/* 803CB8AC 00394E6C  93 81 00 10 */	stw r28, 0x10(r1)
/* 803CB8B0 00394E70  7C 7C 1B 78 */	mr r28, r3
/* 803CB8B4 00394E74  41 82 00 0C */	beq .L_803CB8C0
/* 803CB8B8 00394E78  2C 05 00 00 */	cmpwi r5, 0
/* 803CB8BC 00394E7C  41 81 00 0C */	bgt .L_803CB8C8
.L_803CB8C0:
/* 803CB8C0 00394E80  38 60 00 00 */	li r3, 0
/* 803CB8C4 00394E84  48 00 00 68 */	b .L_803CB92C
.L_803CB8C8:
/* 803CB8C8 00394E88  4B FF 55 3D */	bl SFLIB_CheckHn
/* 803CB8CC 00394E8C  2C 03 00 00 */	cmpwi r3, 0
/* 803CB8D0 00394E90  41 82 00 18 */	beq .L_803CB8E8
/* 803CB8D4 00394E94  3C 80 FF 00 */	lis r4, 0xFF000165@ha
/* 803CB8D8 00394E98  38 60 00 00 */	li r3, 0
/* 803CB8DC 00394E9C  38 84 01 65 */	addi r4, r4, 0xFF000165@l
/* 803CB8E0 00394EA0  4B FF 53 75 */	bl SFLIB_SetErr
/* 803CB8E4 00394EA4  48 00 00 48 */	b .L_803CB92C
.L_803CB8E8:
/* 803CB8E8 00394EA8  38 1D 00 07 */	addi r0, r29, 7
/* 803CB8EC 00394EAC  38 80 00 00 */	li r4, 0
/* 803CB8F0 00394EB0  54 1E 00 38 */	rlwinm r30, r0, 0, 0, 0x1c
/* 803CB8F4 00394EB4  7C 1D F0 50 */	subf r0, r29, r30
/* 803CB8F8 00394EB8  7F E0 F8 50 */	subf r31, r0, r31
/* 803CB8FC 00394EBC  7F C3 F3 78 */	mr r3, r30
/* 803CB900 00394EC0  7F E5 FB 78 */	mr r5, r31
/* 803CB904 00394EC4  4B C3 8A 4D */	bl memset
/* 803CB908 00394EC8  7F E3 26 70 */	srawi r3, r31, 4
/* 803CB90C 00394ECC  38 00 00 00 */	li r0, 0
/* 803CB910 00394ED0  7C 83 01 94 */	addze r4, r3
/* 803CB914 00394ED4  93 DC 14 5C */	stw r30, 0x145c(r28)
/* 803CB918 00394ED8  38 60 00 00 */	li r3, 0
/* 803CB91C 00394EDC  90 9C 14 60 */	stw r4, 0x1460(r28)
/* 803CB920 00394EE0  90 1C 14 64 */	stw r0, 0x1464(r28)
/* 803CB924 00394EE4  90 1C 14 68 */	stw r0, 0x1468(r28)
/* 803CB928 00394EE8  90 1C 14 6C */	stw r0, 0x146c(r28)
.L_803CB92C:
/* 803CB92C 00394EEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CB930 00394EF0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803CB934 00394EF4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803CB938 00394EF8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803CB93C 00394EFC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 803CB940 00394F00  7C 08 03 A6 */	mtlr r0
/* 803CB944 00394F04  38 21 00 20 */	addi r1, r1, 0x20
/* 803CB948 00394F08  4E 80 00 20 */	blr 

.global SFPTS_WritePtsQue
SFPTS_WritePtsQue:
/* 803CB94C 00394F0C  38 E0 00 00 */	li r7, 0
/* 803CB950 00394F10  90 E6 00 00 */	stw r7, 0(r6)
/* 803CB954 00394F14  6C E8 80 00 */	xoris r8, r7, 0x8000
/* 803CB958 00394F18  81 45 00 00 */	lwz r10, 0(r5)
/* 803CB95C 00394F1C  81 65 00 04 */	lwz r11, 4(r5)
/* 803CB960 00394F20  6D 40 80 00 */	xoris r0, r10, 0x8000
/* 803CB964 00394F24  7C E7 58 10 */	subfc r7, r7, r11
/* 803CB968 00394F28  7D 08 01 10 */	subfe r8, r8, r0
/* 803CB96C 00394F2C  7D 00 01 10 */	subfe r8, r0, r0
/* 803CB970 00394F30  7D 08 00 D1 */	neg. r8, r8
/* 803CB974 00394F34  41 82 00 0C */	beq .L_803CB980
/* 803CB978 00394F38  38 60 00 00 */	li r3, 0
/* 803CB97C 00394F3C  4E 80 00 20 */	blr
.L_803CB980:
/* 803CB980 00394F40  1C 04 00 74 */	mulli r0, r4, 0x74
/* 803CB984 00394F44  7D 23 02 14 */	add r9, r3, r0
/* 803CB988 00394F48  81 09 13 E8 */	lwz r8, 0x13e8(r9)
/* 803CB98C 00394F4C  2C 08 00 00 */	cmpwi r8, 0
/* 803CB990 00394F50  40 82 00 0C */	bne .L_803CB99C
/* 803CB994 00394F54  38 60 00 00 */	li r3, 0
/* 803CB998 00394F58  4E 80 00 20 */	blr
.L_803CB99C:
/* 803CB99C 00394F5C  80 89 13 F0 */	lwz r4, 0x13f0(r9)
/* 803CB9A0 00394F60  80 09 13 EC */	lwz r0, 0x13ec(r9)
/* 803CB9A4 00394F64  7C 04 00 00 */	cmpw r4, r0
/* 803CB9A8 00394F68  40 82 00 14 */	bne .L_803CB9BC
/* 803CB9AC 00394F6C  38 00 00 01 */	li r0, 1
/* 803CB9B0 00394F70  38 80 FF FF */	li r4, -1
/* 803CB9B4 00394F74  90 06 00 00 */	stw r0, 0(r6)
/* 803CB9B8 00394F78  48 00 00 70 */	b .L_803CBA28
.L_803CB9BC:
/* 803CB9BC 00394F7C  80 E9 13 F4 */	lwz r7, 0x13f4(r9)
/* 803CB9C0 00394F80  54 E4 20 36 */	slwi r4, r7, 4
/* 803CB9C4 00394F84  38 07 00 01 */	addi r0, r7, 1
/* 803CB9C8 00394F88  7D 48 21 6E */	stwux r10, r8, r4
/* 803CB9CC 00394F8C  91 68 00 04 */	stw r11, 4(r8)
/* 803CB9D0 00394F90  80 E5 00 08 */	lwz r7, 8(r5)
/* 803CB9D4 00394F94  80 85 00 0C */	lwz r4, 0xc(r5)
/* 803CB9D8 00394F98  90 E8 00 08 */	stw r7, 8(r8)
/* 803CB9DC 00394F9C  90 88 00 0C */	stw r4, 0xc(r8)
/* 803CB9E0 00394FA0  80 89 13 EC */	lwz r4, 0x13ec(r9)
/* 803CB9E4 00394FA4  7C 00 20 00 */	cmpw r0, r4
/* 803CB9E8 00394FA8  7C A4 00 50 */	subf r5, r4, r0
/* 803CB9EC 00394FAC  40 80 00 08 */	bge .L_803CB9F4
/* 803CB9F0 00394FB0  7C 05 03 78 */	mr r5, r0
.L_803CB9F4:
/* 803CB9F4 00394FB4  80 89 13 F0 */	lwz r4, 0x13f0(r9)
/* 803CB9F8 00394FB8  38 84 00 01 */	addi r4, r4, 1
/* 803CB9FC 00394FBC  90 89 13 F0 */	stw r4, 0x13f0(r9)
/* 803CBA00 00394FC0  90 A9 13 F4 */	stw r5, 0x13f4(r9)
/* 803CBA04 00394FC4  80 09 13 EC */	lwz r0, 0x13ec(r9)
/* 803CBA08 00394FC8  7C 04 00 00 */	cmpw r4, r0
/* 803CBA0C 00394FCC  41 80 00 10 */	blt .L_803CBA1C
/* 803CBA10 00394FD0  38 00 00 01 */	li r0, 1
/* 803CBA14 00394FD4  90 06 00 00 */	stw r0, 0(r6)
/* 803CBA18 00394FD8  48 00 00 0C */	b .L_803CBA24
.L_803CBA1C:
/* 803CBA1C 00394FDC  38 00 00 00 */	li r0, 0
/* 803CBA20 00394FE0  90 06 00 00 */	stw r0, 0(r6)
.L_803CBA24:
/* 803CBA24 00394FE4  38 80 00 00 */	li r4, 0
.L_803CBA28:
/* 803CBA28 00394FE8  2C 04 FF FF */	cmpwi r4, -1
/* 803CBA2C 00394FEC  40 82 00 10 */	bne .L_803CBA3C
/* 803CBA30 00394FF0  3C 80 FF 00 */	lis r4, 0xFF000421@ha
/* 803CBA34 00394FF4  38 84 04 21 */	addi r4, r4, 0xFF000421@l
/* 803CBA38 00394FF8  4B FF 52 1C */	b SFLIB_SetErr
.L_803CBA3C:
/* 803CBA3C 00394FFC  38 60 00 00 */	li r3, 0
/* 803CBA40 00395000  4E 80 00 20 */	blr 

.global SFPTS_ReadPtsQue
SFPTS_ReadPtsQue:
/* 803CBA44 00395004  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CBA48 00395008  7C 08 02 A6 */	mflr r0
/* 803CBA4C 0039500C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CBA50 00395010  1C 04 00 74 */	mulli r0, r4, 0x74
/* 803CBA54 00395014  38 80 FF FF */	li r4, -1
/* 803CBA58 00395018  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CBA5C 0039501C  7C 63 02 14 */	add r3, r3, r0
/* 803CBA60 00395020  93 C1 00 08 */	stw r30, 8(r1)
/* 803CBA64 00395024  7C DE 33 78 */	mr r30, r6
/* 803CBA68 00395028  3B E3 13 E8 */	addi r31, r3, 0x13e8
/* 803CBA6C 0039502C  90 86 00 04 */	stw r4, 4(r6)
/* 803CBA70 00395030  90 86 00 00 */	stw r4, 0(r6)
/* 803CBA74 00395034  80 83 13 E8 */	lwz r4, 0x13e8(r3)
/* 803CBA78 00395038  80 E3 13 C8 */	lwz r7, 0x13c8(r3)
/* 803CBA7C 0039503C  2C 04 00 00 */	cmpwi r4, 0
/* 803CBA80 00395040  81 03 13 CC */	lwz r8, 0x13cc(r3)
/* 803CBA84 00395044  40 82 00 0C */	bne .L_803CBA90
/* 803CBA88 00395048  38 60 00 00 */	li r3, 0
/* 803CBA8C 0039504C  48 00 01 04 */	b .L_803CBB90
.L_803CBA90:
/* 803CBA90 00395050  2C 05 00 00 */	cmpwi r5, 0
/* 803CBA94 00395054  40 82 00 68 */	bne .L_803CBAFC
/* 803CBA98 00395058  80 1F 00 08 */	lwz r0, 8(r31)
/* 803CBA9C 0039505C  2C 00 00 00 */	cmpwi r0, 0
/* 803CBAA0 00395060  41 82 00 EC */	beq .L_803CBB8C
/* 803CBAA4 00395064  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 803CBAA8 00395068  54 00 20 36 */	slwi r0, r0, 4
/* 803CBAAC 0039506C  7C 64 00 6E */	lwzux r3, r4, r0
/* 803CBAB0 00395070  80 04 00 04 */	lwz r0, 4(r4)
/* 803CBAB4 00395074  90 66 00 00 */	stw r3, 0(r6)
/* 803CBAB8 00395078  90 06 00 04 */	stw r0, 4(r6)
/* 803CBABC 0039507C  80 64 00 08 */	lwz r3, 8(r4)
/* 803CBAC0 00395080  80 04 00 0C */	lwz r0, 0xc(r4)
/* 803CBAC4 00395084  90 66 00 08 */	stw r3, 8(r6)
/* 803CBAC8 00395088  90 06 00 0C */	stw r0, 0xc(r6)
/* 803CBACC 0039508C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 803CBAD0 00395090  80 1F 00 04 */	lwz r0, 4(r31)
/* 803CBAD4 00395094  38 63 00 01 */	addi r3, r3, 1
/* 803CBAD8 00395098  7C 03 00 00 */	cmpw r3, r0
/* 803CBADC 0039509C  7C 00 18 50 */	subf r0, r0, r3
/* 803CBAE0 003950A0  40 80 00 08 */	bge .L_803CBAE8
/* 803CBAE4 003950A4  7C 60 1B 78 */	mr r0, r3
.L_803CBAE8:
/* 803CBAE8 003950A8  90 1F 00 10 */	stw r0, 0x10(r31)
/* 803CBAEC 003950AC  80 7F 00 08 */	lwz r3, 8(r31)
/* 803CBAF0 003950B0  38 03 FF FF */	addi r0, r3, -1
/* 803CBAF4 003950B4  90 1F 00 08 */	stw r0, 8(r31)
/* 803CBAF8 003950B8  48 00 00 94 */	b .L_803CBB8C
.L_803CBAFC:
/* 803CBAFC 003950BC  7C 07 42 14 */	add r0, r7, r8
/* 803CBB00 003950C0  7C 05 00 40 */	cmplw r5, r0
/* 803CBB04 003950C4  41 80 00 08 */	blt .L_803CBB0C
/* 803CBB08 003950C8  7C A8 28 50 */	subf r5, r8, r5
.L_803CBB0C:
/* 803CBB0C 003950CC  80 1F 00 08 */	lwz r0, 8(r31)
/* 803CBB10 003950D0  2C 00 00 00 */	cmpwi r0, 0
/* 803CBB14 003950D4  41 82 00 78 */	beq .L_803CBB8C
/* 803CBB18 003950D8  7C A4 2B 78 */	mr r4, r5
/* 803CBB1C 003950DC  7F E3 FB 78 */	mr r3, r31
/* 803CBB20 003950E0  7C E5 3B 78 */	mr r5, r7
/* 803CBB24 003950E4  7D 06 43 78 */	mr r6, r8
/* 803CBB28 003950E8  48 00 00 81 */	bl sfpts_SearchPtsQue
/* 803CBB2C 003950EC  2C 03 FF FF */	cmpwi r3, -1
/* 803CBB30 003950F0  41 82 00 5C */	beq .L_803CBB8C
/* 803CBB34 003950F4  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 803CBB38 003950F8  80 9F 00 04 */	lwz r4, 4(r31)
/* 803CBB3C 003950FC  7C 00 1A 14 */	add r0, r0, r3
/* 803CBB40 00395100  7C 00 20 00 */	cmpw r0, r4
/* 803CBB44 00395104  7C A4 00 50 */	subf r5, r4, r0
/* 803CBB48 00395108  40 80 00 08 */	bge .L_803CBB50
/* 803CBB4C 0039510C  7C 05 03 78 */	mr r5, r0
.L_803CBB50:
/* 803CBB50 00395110  80 9F 00 08 */	lwz r4, 8(r31)
/* 803CBB54 00395114  54 A0 20 36 */	slwi r0, r5, 4
/* 803CBB58 00395118  7C 63 20 50 */	subf r3, r3, r4
/* 803CBB5C 0039511C  90 7F 00 08 */	stw r3, 8(r31)
/* 803CBB60 00395120  90 BF 00 10 */	stw r5, 0x10(r31)
/* 803CBB64 00395124  80 7F 00 00 */	lwz r3, 0(r31)
/* 803CBB68 00395128  7C 83 02 14 */	add r4, r3, r0
/* 803CBB6C 0039512C  7C 63 00 2E */	lwzx r3, r3, r0
/* 803CBB70 00395130  80 04 00 04 */	lwz r0, 4(r4)
/* 803CBB74 00395134  90 7E 00 00 */	stw r3, 0(r30)
/* 803CBB78 00395138  90 1E 00 04 */	stw r0, 4(r30)
/* 803CBB7C 0039513C  80 64 00 08 */	lwz r3, 8(r4)
/* 803CBB80 00395140  80 04 00 0C */	lwz r0, 0xc(r4)
/* 803CBB84 00395144  90 7E 00 08 */	stw r3, 8(r30)
/* 803CBB88 00395148  90 1E 00 0C */	stw r0, 0xc(r30)
.L_803CBB8C:
/* 803CBB8C 0039514C  38 60 00 00 */	li r3, 0
.L_803CBB90:
/* 803CBB90 00395150  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CBB94 00395154  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CBB98 00395158  83 C1 00 08 */	lwz r30, 8(r1)
/* 803CBB9C 0039515C  7C 08 03 A6 */	mtlr r0
/* 803CBBA0 00395160  38 21 00 10 */	addi r1, r1, 0x10
/* 803CBBA4 00395164  4E 80 00 20 */	blr 

.global sfpts_SearchPtsQue
sfpts_SearchPtsQue:
/* 803CBBA8 00395168  80 03 00 08 */	lwz r0, 8(r3)
/* 803CBBAC 0039516C  7D 65 32 14 */	add r11, r5, r6
/* 803CBBB0 00395170  81 43 00 04 */	lwz r10, 4(r3)
/* 803CBBB4 00395174  39 20 00 00 */	li r9, 0
/* 803CBBB8 00395178  81 03 00 10 */	lwz r8, 0x10(r3)
/* 803CBBBC 0039517C  7C 09 03 A6 */	mtctr r0
/* 803CBBC0 00395180  2C 00 00 00 */	cmpwi r0, 0
/* 803CBBC4 00395184  40 81 00 84 */	ble .L_803CBC48
.L_803CBBC8:
/* 803CBBC8 00395188  80 E3 00 00 */	lwz r7, 0(r3)
/* 803CBBCC 0039518C  55 00 20 36 */	slwi r0, r8, 4
/* 803CBBD0 00395190  7C E7 02 14 */	add r7, r7, r0
/* 803CBBD4 00395194  81 87 00 08 */	lwz r12, 8(r7)
/* 803CBBD8 00395198  80 07 00 0C */	lwz r0, 0xc(r7)
/* 803CBBDC 0039519C  7C 0C 02 14 */	add r0, r12, r0
/* 803CBBE0 003951A0  7C 00 58 40 */	cmplw r0, r11
/* 803CBBE4 003951A4  41 81 00 1C */	bgt .L_803CBC00
/* 803CBBE8 003951A8  7C 0C 20 40 */	cmplw r12, r4
/* 803CBBEC 003951AC  41 81 00 40 */	bgt .L_803CBC2C
/* 803CBBF0 003951B0  7C 04 00 40 */	cmplw r4, r0
/* 803CBBF4 003951B4  40 80 00 38 */	bge .L_803CBC2C
/* 803CBBF8 003951B8  7D 23 4B 78 */	mr r3, r9
/* 803CBBFC 003951BC  4E 80 00 20 */	blr
.L_803CBC00:
/* 803CBC00 003951C0  7C 0C 20 40 */	cmplw r12, r4
/* 803CBC04 003951C4  41 81 00 0C */	bgt .L_803CBC10
/* 803CBC08 003951C8  7C 04 58 40 */	cmplw r4, r11
/* 803CBC0C 003951CC  41 80 00 18 */	blt .L_803CBC24
.L_803CBC10:
/* 803CBC10 003951D0  7C 05 20 40 */	cmplw r5, r4
/* 803CBC14 003951D4  41 81 00 18 */	bgt .L_803CBC2C
/* 803CBC18 003951D8  7C 06 00 50 */	subf r0, r6, r0
/* 803CBC1C 003951DC  7C 04 00 40 */	cmplw r4, r0
/* 803CBC20 003951E0  40 80 00 0C */	bge .L_803CBC2C
.L_803CBC24:
/* 803CBC24 003951E4  7D 23 4B 78 */	mr r3, r9
/* 803CBC28 003951E8  4E 80 00 20 */	blr
.L_803CBC2C:
/* 803CBC2C 003951EC  38 08 00 01 */	addi r0, r8, 1
/* 803CBC30 003951F0  7C 00 50 00 */	cmpw r0, r10
/* 803CBC34 003951F4  7D 0A 00 50 */	subf r8, r10, r0
/* 803CBC38 003951F8  40 80 00 08 */	bge .L_803CBC40
/* 803CBC3C 003951FC  7C 08 03 78 */	mr r8, r0
.L_803CBC40:
/* 803CBC40 00395200  39 29 00 01 */	addi r9, r9, 1
/* 803CBC44 00395204  42 00 FF 84 */	bdnz .L_803CBBC8
.L_803CBC48:
/* 803CBC48 00395208  38 60 FF FF */	li r3, -1
/* 803CBC4C 0039520C  4E 80 00 20 */	blr 

.global SFPTS_IsPtsQueFull
SFPTS_IsPtsQueFull:
/* 803CBC50 00395210  1C 04 00 74 */	mulli r0, r4, 0x74
/* 803CBC54 00395214  7C 63 02 14 */	add r3, r3, r0
/* 803CBC58 00395218  80 03 13 E8 */	lwz r0, 0x13e8(r3)
/* 803CBC5C 0039521C  2C 00 00 00 */	cmpwi r0, 0
/* 803CBC60 00395220  40 82 00 0C */	bne .L_803CBC6C
/* 803CBC64 00395224  38 60 00 00 */	li r3, 0
/* 803CBC68 00395228  4E 80 00 20 */	blr
.L_803CBC6C:
/* 803CBC6C 0039522C  80 A3 13 F0 */	lwz r5, 0x13f0(r3)
/* 803CBC70 00395230  80 03 13 EC */	lwz r0, 0x13ec(r3)
/* 803CBC74 00395234  7C A4 FE 70 */	srawi r4, r5, 0x1f
/* 803CBC78 00395238  54 03 0F FE */	srwi r3, r0, 0x1f
/* 803CBC7C 0039523C  7C 00 28 10 */	subfc r0, r0, r5
/* 803CBC80 00395240  7C 64 19 14 */	adde r3, r4, r3
/* 803CBC84 00395244  4E 80 00 20 */	blr 
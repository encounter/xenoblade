.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global MWSFD_SetAudioSw
MWSFD_SetAudioSw:
/* 803A1D54 0036B314  80 63 00 48 */	lwz r3, 0x48(r3)
/* 803A1D58 0036B318  7C 85 23 78 */	mr r5, r4
/* 803A1D5C 0036B31C  38 80 00 06 */	li r4, 6
/* 803A1D60 0036B320  48 02 A5 E4 */	b func_803CC344

.global func_803A1D64
func_803A1D64:
/* 803A1D64 0036B324  80 63 00 48 */	lwz r3, 0x48(r3)
/* 803A1D68 0036B328  7C 85 23 78 */	mr r5, r4
/* 803A1D6C 0036B32C  38 80 00 05 */	li r4, 5
/* 803A1D70 0036B330  48 02 A5 D4 */	b func_803CC344

.global mwPlyGetSfdHn
mwPlyGetSfdHn:
/* 803A1D74 0036B334  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A1D78 0036B338  7C 08 02 A6 */	mflr r0
/* 803A1D7C 0036B33C  2C 03 00 00 */	cmpwi r3, 0
/* 803A1D80 0036B340  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A1D84 0036B344  40 82 00 0C */	bne .L_803A1D90
/* 803A1D88 0036B348  38 00 00 00 */	li r0, 0
/* 803A1D8C 0036B34C  48 00 00 08 */	b .L_803A1D94
.L_803A1D90:
/* 803A1D90 0036B350  80 03 00 00 */	lwz r0, 0(r3)
.L_803A1D94:
/* 803A1D94 0036B354  2C 00 00 01 */	cmpwi r0, 1
/* 803A1D98 0036B358  41 82 00 20 */	beq .L_803A1DB8
/* 803A1D9C 0036B35C  3C 60 80 52 */	lis r3, lbl_8051ED98@ha
/* 803A1DA0 0036B360  38 63 ED 98 */	addi r3, r3, lbl_8051ED98@l
/* 803A1DA4 0036B364  38 63 00 5A */	addi r3, r3, 0x5a
/* 803A1DA8 0036B368  4C C6 31 82 */	crclr 6
/* 803A1DAC 0036B36C  4B FF BE 8D */	bl MWSFSVM_Error
/* 803A1DB0 0036B370  38 60 00 00 */	li r3, 0
/* 803A1DB4 0036B374  48 00 00 08 */	b .L_803A1DBC
.L_803A1DB8:
/* 803A1DB8 0036B378  80 63 00 48 */	lwz r3, 0x48(r3)
.L_803A1DBC:
/* 803A1DBC 0036B37C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A1DC0 0036B380  7C 08 03 A6 */	mtlr r0
/* 803A1DC4 0036B384  38 21 00 10 */	addi r1, r1, 0x10
/* 803A1DC8 0036B388  4E 80 00 20 */	blr 

.global MWSFD_SetCond
MWSFD_SetCond:
/* 803A1DCC 0036B38C  2C 03 00 00 */	cmpwi r3, 0
/* 803A1DD0 0036B390  41 82 00 0C */	beq .L_803A1DDC
/* 803A1DD4 0036B394  80 63 00 48 */	lwz r3, 0x48(r3)
/* 803A1DD8 0036B398  48 00 00 08 */	b .L_803A1DE0
.L_803A1DDC:
/* 803A1DDC 0036B39C  38 60 00 00 */	li r3, 0
.L_803A1DE0:
/* 803A1DE0 0036B3A0  48 02 A5 64 */	b func_803CC344

.global MWSFD_GetCond
MWSFD_GetCond:
/* 803A1DE4 0036B3A4  2C 03 00 00 */	cmpwi r3, 0
/* 803A1DE8 0036B3A8  41 82 00 0C */	beq .L_803A1DF4
/* 803A1DEC 0036B3AC  80 63 00 48 */	lwz r3, 0x48(r3)
/* 803A1DF0 0036B3B0  48 00 00 08 */	b .L_803A1DF8
.L_803A1DF4:
/* 803A1DF4 0036B3B4  38 60 00 00 */	li r3, 0
.L_803A1DF8:
/* 803A1DF8 0036B3B8  48 02 A7 E8 */	b func_803CC5E0

.global MWSFD_GetStmHn
MWSFD_GetStmHn:
/* 803A1DFC 0036B3BC  80 63 00 4C */	lwz r3, 0x4c(r3)
/* 803A1E00 0036B3C0  4E 80 00 20 */	blr 

.global func_803A1E04
func_803A1E04:
/* 803A1E04 0036B3C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A1E08 0036B3C8  7C 08 02 A6 */	mflr r0
/* 803A1E0C 0036B3CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A1E10 0036B3D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A1E14 0036B3D4  7C 9F 23 78 */	mr r31, r4
/* 803A1E18 0036B3D8  93 C1 00 08 */	stw r30, 8(r1)
/* 803A1E1C 0036B3DC  7C 7E 1B 78 */	mr r30, r3
/* 803A1E20 0036B3E0  80 63 00 4C */	lwz r3, 0x4c(r3)
/* 803A1E24 0036B3E4  4B FF BF E1 */	bl MWSTM_SetFlowLimit
/* 803A1E28 0036B3E8  7F C3 F3 78 */	mr r3, r30
/* 803A1E2C 0036B3EC  7F E4 FB 78 */	mr r4, r31
/* 803A1E30 0036B3F0  4B FF B6 D1 */	bl MWSFLSC_SetFlowLimit
/* 803A1E34 0036B3F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A1E38 0036B3F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A1E3C 0036B3FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 803A1E40 0036B400  7C 08 03 A6 */	mtlr r0
/* 803A1E44 0036B404  38 21 00 10 */	addi r1, r1, 0x10
/* 803A1E48 0036B408  4E 80 00 20 */	blr 

.global MWSFD_IsEnableHndl
MWSFD_IsEnableHndl:
/* 803A1E4C 0036B40C  2C 03 00 00 */	cmpwi r3, 0
/* 803A1E50 0036B410  40 82 00 0C */	bne .L_803A1E5C
/* 803A1E54 0036B414  38 60 00 00 */	li r3, 0
/* 803A1E58 0036B418  4E 80 00 20 */	blr
.L_803A1E5C:
/* 803A1E5C 0036B41C  80 63 00 00 */	lwz r3, 0(r3)
/* 803A1E60 0036B420  4E 80 00 20 */	blr 

.global mwPlyGetStat
mwPlyGetStat:
/* 803A1E64 0036B424  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A1E68 0036B428  7C 08 02 A6 */	mflr r0
/* 803A1E6C 0036B42C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A1E70 0036B430  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A1E74 0036B434  7C 7F 1B 78 */	mr r31, r3
/* 803A1E78 0036B438  48 00 00 65 */	bl func_803A1EDC
/* 803A1E7C 0036B43C  80 1F 06 2C */	lwz r0, 0x62c(r31)
/* 803A1E80 0036B440  2C 00 00 01 */	cmpwi r0, 1
/* 803A1E84 0036B444  40 82 00 44 */	bne .L_803A1EC8
/* 803A1E88 0036B448  80 1F 06 30 */	lwz r0, 0x630(r31)
/* 803A1E8C 0036B44C  2C 00 00 01 */	cmpwi r0, 1
/* 803A1E90 0036B450  40 82 00 38 */	bne .L_803A1EC8
/* 803A1E94 0036B454  80 9F 06 3C */	lwz r4, 0x63c(r31)
/* 803A1E98 0036B458  38 04 FF FE */	addi r0, r4, -2
/* 803A1E9C 0036B45C  28 00 00 01 */	cmplwi r0, 1
/* 803A1EA0 0036B460  41 81 00 28 */	bgt .L_803A1EC8
/* 803A1EA4 0036B464  2C 03 00 02 */	cmpwi r3, 2
/* 803A1EA8 0036B468  41 82 00 20 */	beq .L_803A1EC8
/* 803A1EAC 0036B46C  40 80 00 10 */	bge .L_803A1EBC
/* 803A1EB0 0036B470  2C 03 00 01 */	cmpwi r3, 1
/* 803A1EB4 0036B474  40 80 00 10 */	bge .L_803A1EC4
/* 803A1EB8 0036B478  48 00 00 10 */	b .L_803A1EC8
.L_803A1EBC:
/* 803A1EBC 0036B47C  2C 03 00 04 */	cmpwi r3, 4
/* 803A1EC0 0036B480  40 80 00 08 */	bge .L_803A1EC8
.L_803A1EC4:
/* 803A1EC4 0036B484  38 60 00 02 */	li r3, 2
.L_803A1EC8:
/* 803A1EC8 0036B488  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A1ECC 0036B48C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A1ED0 0036B490  7C 08 03 A6 */	mtlr r0
/* 803A1ED4 0036B494  38 21 00 10 */	addi r1, r1, 0x10
/* 803A1ED8 0036B498  4E 80 00 20 */	blr 

.global func_803A1EDC
func_803A1EDC:
/* 803A1EDC 0036B49C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A1EE0 0036B4A0  7C 08 02 A6 */	mflr r0
/* 803A1EE4 0036B4A4  2C 03 00 00 */	cmpwi r3, 0
/* 803A1EE8 0036B4A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A1EEC 0036B4AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A1EF0 0036B4B0  93 C1 00 08 */	stw r30, 8(r1)
/* 803A1EF4 0036B4B4  7C 7E 1B 78 */	mr r30, r3
/* 803A1EF8 0036B4B8  40 82 00 0C */	bne .L_803A1F04
/* 803A1EFC 0036B4BC  38 00 00 00 */	li r0, 0
/* 803A1F00 0036B4C0  48 00 00 08 */	b .L_803A1F08
.L_803A1F04:
/* 803A1F04 0036B4C4  80 03 00 00 */	lwz r0, 0(r3)
.L_803A1F08:
/* 803A1F08 0036B4C8  2C 00 00 01 */	cmpwi r0, 1
/* 803A1F0C 0036B4CC  41 82 00 28 */	beq .L_803A1F34
/* 803A1F10 0036B4D0  38 60 FF F4 */	li r3, -12
/* 803A1F14 0036B4D4  4B FF F0 A1 */	bl MWSFLIB_SetErrCode
/* 803A1F18 0036B4D8  3C 60 80 52 */	lis r3, lbl_8051ED98@ha
/* 803A1F1C 0036B4DC  38 63 ED 98 */	addi r3, r3, lbl_8051ED98@l
/* 803A1F20 0036B4E0  38 63 02 B8 */	addi r3, r3, 0x2b8
/* 803A1F24 0036B4E4  4C C6 31 82 */	crclr 6
/* 803A1F28 0036B4E8  4B FF BD 11 */	bl MWSFSVM_Error
/* 803A1F2C 0036B4EC  38 60 00 00 */	li r3, 0
/* 803A1F30 0036B4F0  48 00 00 60 */	b .L_803A1F90
.L_803A1F34:
/* 803A1F34 0036B4F4  80 63 00 48 */	lwz r3, 0x48(r3)
/* 803A1F38 0036B4F8  48 02 A3 C5 */	bl SFD_GetHnStat
/* 803A1F3C 0036B4FC  2C 03 00 00 */	cmpwi r3, 0
/* 803A1F40 0036B500  7C 7F 1B 78 */	mr r31, r3
/* 803A1F44 0036B504  40 80 00 0C */	bge .L_803A1F50
/* 803A1F48 0036B508  38 60 00 04 */	li r3, 4
/* 803A1F4C 0036B50C  48 00 00 44 */	b .L_803A1F90
.L_803A1F50:
/* 803A1F50 0036B510  7F C3 F3 78 */	mr r3, r30
/* 803A1F54 0036B514  48 00 03 05 */	bl func_803A2258
/* 803A1F58 0036B518  2C 03 00 00 */	cmpwi r3, 0
/* 803A1F5C 0036B51C  41 82 00 0C */	beq .L_803A1F68
/* 803A1F60 0036B520  38 60 00 04 */	li r3, 4
/* 803A1F64 0036B524  48 00 00 2C */	b .L_803A1F90
.L_803A1F68:
/* 803A1F68 0036B528  80 7E 00 04 */	lwz r3, 4(r30)
/* 803A1F6C 0036B52C  2C 03 00 02 */	cmpwi r3, 2
/* 803A1F70 0036B530  40 82 00 20 */	bne .L_803A1F90
/* 803A1F74 0036B534  2C 1F 00 04 */	cmpwi r31, 4
/* 803A1F78 0036B538  41 82 00 0C */	beq .L_803A1F84
/* 803A1F7C 0036B53C  2C 1F 00 06 */	cmpwi r31, 6
/* 803A1F80 0036B540  40 82 00 0C */	bne .L_803A1F8C
.L_803A1F84:
/* 803A1F84 0036B544  38 60 00 02 */	li r3, 2
/* 803A1F88 0036B548  48 00 00 08 */	b .L_803A1F90
.L_803A1F8C:
/* 803A1F8C 0036B54C  38 60 00 01 */	li r3, 1
.L_803A1F90:
/* 803A1F90 0036B550  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A1F94 0036B554  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A1F98 0036B558  83 C1 00 08 */	lwz r30, 8(r1)
/* 803A1F9C 0036B55C  7C 08 03 A6 */	mtlr r0
/* 803A1FA0 0036B560  38 21 00 10 */	addi r1, r1, 0x10
/* 803A1FA4 0036B564  4E 80 00 20 */	blr 

.global func_803A1FA8
func_803A1FA8:
/* 803A1FA8 0036B568  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A1FAC 0036B56C  7C 08 02 A6 */	mflr r0
/* 803A1FB0 0036B570  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A1FB4 0036B574  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803A1FB8 0036B578  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803A1FBC 0036B57C  7C 7E 1B 78 */	mr r30, r3
/* 803A1FC0 0036B580  80 03 06 5C */	lwz r0, 0x65c(r3)
/* 803A1FC4 0036B584  83 E3 00 48 */	lwz r31, 0x48(r3)
/* 803A1FC8 0036B588  2C 00 00 01 */	cmpwi r0, 1
/* 803A1FCC 0036B58C  40 82 00 40 */	bne .L_803A200C
/* 803A1FD0 0036B590  7F E3 FB 78 */	mr r3, r31
/* 803A1FD4 0036B594  38 81 00 10 */	addi r4, r1, 0x10
/* 803A1FD8 0036B598  48 02 BC AD */	bl SFD_GetFps
/* 803A1FDC 0036B59C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 803A1FE0 0036B5A0  2C 03 FF FF */	cmpwi r3, -1
/* 803A1FE4 0036B5A4  41 82 00 28 */	beq .L_803A200C
/* 803A1FE8 0036B5A8  38 81 00 0C */	addi r4, r1, 0xc
/* 803A1FEC 0036B5AC  38 A1 00 08 */	addi r5, r1, 8
/* 803A1FF0 0036B5B0  48 02 C2 01 */	bl SFD_CalcCycleFromFps
/* 803A1FF4 0036B5B4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803A1FF8 0036B5B8  7F E3 FB 78 */	mr r3, r31
/* 803A1FFC 0036B5BC  80 A1 00 08 */	lwz r5, 8(r1)
/* 803A2000 0036B5C0  48 02 C0 C1 */	bl SFD_SetCyclicFrameOutput
/* 803A2004 0036B5C4  38 00 00 00 */	li r0, 0
/* 803A2008 0036B5C8  90 1E 06 5C */	stw r0, 0x65c(r30)
.L_803A200C:
/* 803A200C 0036B5CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A2010 0036B5D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803A2014 0036B5D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803A2018 0036B5D8  7C 08 03 A6 */	mtlr r0
/* 803A201C 0036B5DC  38 21 00 20 */	addi r1, r1, 0x20
/* 803A2020 0036B5E0  4E 80 00 20 */	blr 

.global func_803A2024
func_803A2024:
/* 803A2024 0036B5E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A2028 0036B5E8  7C 08 02 A6 */	mflr r0
/* 803A202C 0036B5EC  2C 03 00 00 */	cmpwi r3, 0
/* 803A2030 0036B5F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A2034 0036B5F4  38 00 00 00 */	li r0, 0
/* 803A2038 0036B5F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A203C 0036B5FC  7C BF 2B 78 */	mr r31, r5
/* 803A2040 0036B600  93 C1 00 08 */	stw r30, 8(r1)
/* 803A2044 0036B604  7C 9E 23 78 */	mr r30, r4
/* 803A2048 0036B608  90 04 00 00 */	stw r0, 0(r4)
/* 803A204C 0036B60C  38 00 00 01 */	li r0, 1
/* 803A2050 0036B610  90 05 00 00 */	stw r0, 0(r5)
/* 803A2054 0036B614  40 82 00 0C */	bne .L_803A2060
/* 803A2058 0036B618  38 00 00 00 */	li r0, 0
/* 803A205C 0036B61C  48 00 00 08 */	b .L_803A2064
.L_803A2060:
/* 803A2060 0036B620  80 03 00 00 */	lwz r0, 0(r3)
.L_803A2064:
/* 803A2064 0036B624  2C 00 00 01 */	cmpwi r0, 1
/* 803A2068 0036B628  41 82 00 1C */	beq .L_803A2084
/* 803A206C 0036B62C  3C 60 80 52 */	lis r3, lbl_8051ED98@ha
/* 803A2070 0036B630  38 63 ED 98 */	addi r3, r3, lbl_8051ED98@l
/* 803A2074 0036B634  38 63 04 0D */	addi r3, r3, 0x40d
/* 803A2078 0036B638  4C C6 31 82 */	crclr 6
/* 803A207C 0036B63C  4B FF BB BD */	bl MWSFSVM_Error
/* 803A2080 0036B640  48 00 00 5C */	b .L_803A20DC
.L_803A2084:
/* 803A2084 0036B644  80 63 00 48 */	lwz r3, 0x48(r3)
/* 803A2088 0036B648  2C 03 00 00 */	cmpwi r3, 0
/* 803A208C 0036B64C  41 82 00 50 */	beq .L_803A20DC
/* 803A2090 0036B650  7F C4 F3 78 */	mr r4, r30
/* 803A2094 0036B654  7F E5 FB 78 */	mr r5, r31
/* 803A2098 0036B658  48 02 AF C1 */	bl SFD_GetTime
/* 803A209C 0036B65C  2C 03 00 00 */	cmpwi r3, 0
/* 803A20A0 0036B660  41 82 00 20 */	beq .L_803A20C0
/* 803A20A4 0036B664  38 60 FE CB */	li r3, -309
/* 803A20A8 0036B668  4B FF EF 0D */	bl MWSFLIB_SetErrCode
/* 803A20AC 0036B66C  3C 60 80 52 */	lis r3, lbl_8051ED98@ha
/* 803A20B0 0036B670  38 63 ED 98 */	addi r3, r3, lbl_8051ED98@l
/* 803A20B4 0036B674  38 63 04 37 */	addi r3, r3, 0x437
/* 803A20B8 0036B678  4C C6 31 82 */	crclr 6
/* 803A20BC 0036B67C  4B FF BB 7D */	bl MWSFSVM_Error
.L_803A20C0:
/* 803A20C0 0036B680  80 1E 00 00 */	lwz r0, 0(r30)
/* 803A20C4 0036B684  2C 00 00 00 */	cmpwi r0, 0
/* 803A20C8 0036B688  40 80 00 14 */	bge .L_803A20DC
/* 803A20CC 0036B68C  38 60 00 00 */	li r3, 0
/* 803A20D0 0036B690  38 00 00 01 */	li r0, 1
/* 803A20D4 0036B694  90 7E 00 00 */	stw r3, 0(r30)
/* 803A20D8 0036B698  90 1F 00 00 */	stw r0, 0(r31)
.L_803A20DC:
/* 803A20DC 0036B69C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A20E0 0036B6A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A20E4 0036B6A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 803A20E8 0036B6A8  7C 08 03 A6 */	mtlr r0
/* 803A20EC 0036B6AC  38 21 00 10 */	addi r1, r1, 0x10
/* 803A20F0 0036B6B0  4E 80 00 20 */	blr 

.global mwPlySetOutVol
mwPlySetOutVol:
/* 803A20F4 0036B6B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A20F8 0036B6B8  7C 08 02 A6 */	mflr r0
/* 803A20FC 0036B6BC  2C 03 00 00 */	cmpwi r3, 0
/* 803A2100 0036B6C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A2104 0036B6C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A2108 0036B6C8  7C 9F 23 78 */	mr r31, r4
/* 803A210C 0036B6CC  93 C1 00 08 */	stw r30, 8(r1)
/* 803A2110 0036B6D0  7C 7E 1B 78 */	mr r30, r3
/* 803A2114 0036B6D4  40 82 00 0C */	bne .L_803A2120
/* 803A2118 0036B6D8  38 00 00 00 */	li r0, 0
/* 803A211C 0036B6DC  48 00 00 08 */	b .L_803A2124
.L_803A2120:
/* 803A2120 0036B6E0  80 03 00 00 */	lwz r0, 0(r3)
.L_803A2124:
/* 803A2124 0036B6E4  2C 00 00 01 */	cmpwi r0, 1
/* 803A2128 0036B6E8  41 82 00 1C */	beq .L_803A2144
/* 803A212C 0036B6EC  3C 60 80 52 */	lis r3, lbl_8051ED98@ha
/* 803A2130 0036B6F0  38 63 ED 98 */	addi r3, r3, lbl_8051ED98@l
/* 803A2134 0036B6F4  38 63 04 5C */	addi r3, r3, 0x45c
/* 803A2138 0036B6F8  4C C6 31 82 */	crclr 6
/* 803A213C 0036B6FC  4B FF BA FD */	bl MWSFSVM_Error
/* 803A2140 0036B700  48 00 00 28 */	b .L_803A2168
.L_803A2144:
/* 803A2144 0036B704  7F C3 F3 78 */	mr r3, r30
/* 803A2148 0036B708  7F E4 FB 78 */	mr r4, r31
/* 803A214C 0036B70C  4B FF AD 0D */	bl MWSFRNA_SetOutVol
/* 803A2150 0036B710  7F E4 FB 78 */	mr r4, r31
/* 803A2154 0036B714  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 803A2158 0036B718  48 00 13 A1 */	bl func_803A34F8
/* 803A215C 0036B71C  7F E4 FB 78 */	mr r4, r31
/* 803A2160 0036B720  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 803A2164 0036B724  48 00 13 95 */	bl func_803A34F8
.L_803A2168:
/* 803A2168 0036B728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A216C 0036B72C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A2170 0036B730  83 C1 00 08 */	lwz r30, 8(r1)
/* 803A2174 0036B734  7C 08 03 A6 */	mtlr r0
/* 803A2178 0036B738  38 21 00 10 */	addi r1, r1, 0x10
/* 803A217C 0036B73C  4E 80 00 20 */	blr 

.global func_803A2180
func_803A2180:
/* 803A2180 0036B740  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A2184 0036B744  7C 08 02 A6 */	mflr r0
/* 803A2188 0036B748  2C 03 00 00 */	cmpwi r3, 0
/* 803A218C 0036B74C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A2190 0036B750  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803A2194 0036B754  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803A2198 0036B758  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803A219C 0036B75C  7C 7D 1B 78 */	mr r29, r3
/* 803A21A0 0036B760  40 82 00 0C */	bne .L_803A21AC
/* 803A21A4 0036B764  38 00 00 00 */	li r0, 0
/* 803A21A8 0036B768  48 00 00 08 */	b .L_803A21B0
.L_803A21AC:
/* 803A21AC 0036B76C  80 03 00 00 */	lwz r0, 0(r3)
.L_803A21B0:
/* 803A21B0 0036B770  2C 00 00 01 */	cmpwi r0, 1
/* 803A21B4 0036B774  41 82 00 20 */	beq .L_803A21D4
/* 803A21B8 0036B778  3C 60 80 52 */	lis r3, lbl_8051ED98@ha
/* 803A21BC 0036B77C  38 63 ED 98 */	addi r3, r3, lbl_8051ED98@l
/* 803A21C0 0036B780  38 63 04 88 */	addi r3, r3, 0x488
/* 803A21C4 0036B784  4C C6 31 82 */	crclr 6
/* 803A21C8 0036B788  4B FF BA 71 */	bl MWSFSVM_Error
/* 803A21CC 0036B78C  38 60 00 00 */	li r3, 0
/* 803A21D0 0036B790  48 00 00 6C */	b .L_803A223C
.L_803A21D4:
/* 803A21D4 0036B794  80 03 00 48 */	lwz r0, 0x48(r3)
/* 803A21D8 0036B798  2C 00 00 00 */	cmpwi r0, 0
/* 803A21DC 0036B79C  40 82 00 0C */	bne .L_803A21E8
/* 803A21E0 0036B7A0  38 60 00 00 */	li r3, 0
/* 803A21E4 0036B7A4  48 00 00 58 */	b .L_803A223C
.L_803A21E8:
/* 803A21E8 0036B7A8  7F A3 EB 78 */	mr r3, r29
/* 803A21EC 0036B7AC  4B FF AC 75 */	bl MWSFRNA_GetOutVol
/* 803A21F0 0036B7B0  7C 7F 1B 78 */	mr r31, r3
/* 803A21F4 0036B7B4  38 7D 05 C8 */	addi r3, r29, 0x5c8
/* 803A21F8 0036B7B8  48 00 13 79 */	bl MWSST_GetOutVol
/* 803A21FC 0036B7BC  7C 7E 1B 78 */	mr r30, r3
/* 803A2200 0036B7C0  38 7D 05 F0 */	addi r3, r29, 0x5f0
/* 803A2204 0036B7C4  48 00 13 6D */	bl MWSST_GetOutVol
/* 803A2208 0036B7C8  7C 1F F0 00 */	cmpw r31, r30
/* 803A220C 0036B7CC  41 82 00 2C */	beq .L_803A2238
/* 803A2210 0036B7D0  7C 1F 18 00 */	cmpw r31, r3
/* 803A2214 0036B7D4  40 82 00 08 */	bne .L_803A221C
/* 803A2218 0036B7D8  48 00 00 20 */	b .L_803A2238
.L_803A221C:
/* 803A221C 0036B7DC  2C 1F 00 00 */	cmpwi r31, 0
/* 803A2220 0036B7E0  41 82 00 08 */	beq .L_803A2228
/* 803A2224 0036B7E4  48 00 00 14 */	b .L_803A2238
.L_803A2228:
/* 803A2228 0036B7E8  2C 1E 00 00 */	cmpwi r30, 0
/* 803A222C 0036B7EC  41 82 00 08 */	beq .L_803A2234
/* 803A2230 0036B7F0  7F C3 F3 78 */	mr r3, r30
.L_803A2234:
/* 803A2234 0036B7F4  7C 7F 1B 78 */	mr r31, r3
.L_803A2238:
/* 803A2238 0036B7F8  7F E3 FB 78 */	mr r3, r31
.L_803A223C:
/* 803A223C 0036B7FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A2240 0036B800  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803A2244 0036B804  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803A2248 0036B808  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803A224C 0036B80C  7C 08 03 A6 */	mtlr r0
/* 803A2250 0036B810  38 21 00 20 */	addi r1, r1, 0x20
/* 803A2254 0036B814  4E 80 00 20 */	blr 

.global func_803A2258
func_803A2258:
/* 803A2258 0036B818  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A225C 0036B81C  7C 08 02 A6 */	mflr r0
/* 803A2260 0036B820  38 83 05 C8 */	addi r4, r3, 0x5c8
/* 803A2264 0036B824  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A2268 0036B828  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A226C 0036B82C  7C 7F 1B 78 */	mr r31, r3
/* 803A2270 0036B830  80 03 05 C8 */	lwz r0, 0x5c8(r3)
/* 803A2274 0036B834  2C 00 00 01 */	cmpwi r0, 1
/* 803A2278 0036B838  40 82 00 1C */	bne .L_803A2294
/* 803A227C 0036B83C  7C 83 23 78 */	mr r3, r4
/* 803A2280 0036B840  48 00 11 5D */	bl MWSST_GetStat
/* 803A2284 0036B844  2C 03 00 04 */	cmpwi r3, 4
/* 803A2288 0036B848  40 82 00 0C */	bne .L_803A2294
/* 803A228C 0036B84C  38 60 00 01 */	li r3, 1
/* 803A2290 0036B850  48 00 00 2C */	b .L_803A22BC
.L_803A2294:
/* 803A2294 0036B854  80 1F 05 F0 */	lwz r0, 0x5f0(r31)
/* 803A2298 0036B858  38 7F 05 F0 */	addi r3, r31, 0x5f0
/* 803A229C 0036B85C  2C 00 00 01 */	cmpwi r0, 1
/* 803A22A0 0036B860  40 82 00 18 */	bne .L_803A22B8
/* 803A22A4 0036B864  48 00 11 39 */	bl MWSST_GetStat
/* 803A22A8 0036B868  2C 03 00 04 */	cmpwi r3, 4
/* 803A22AC 0036B86C  40 82 00 0C */	bne .L_803A22B8
/* 803A22B0 0036B870  38 60 00 01 */	li r3, 1
/* 803A22B4 0036B874  48 00 00 08 */	b .L_803A22BC
.L_803A22B8:
/* 803A22B8 0036B878  38 60 00 00 */	li r3, 0
.L_803A22BC:
/* 803A22BC 0036B87C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A22C0 0036B880  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A22C4 0036B884  7C 08 03 A6 */	mtlr r0
/* 803A22C8 0036B888  38 21 00 10 */	addi r1, r1, 0x10
/* 803A22CC 0036B88C  4E 80 00 20 */	blr 

.global mwsfsvr_SyncStartSst
mwsfsvr_SyncStartSst:
/* 803A22D0 0036B890  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A22D4 0036B894  7C 08 02 A6 */	mflr r0
/* 803A22D8 0036B898  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A22DC 0036B89C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A22E0 0036B8A0  93 C1 00 08 */	stw r30, 8(r1)
/* 803A22E4 0036B8A4  7C 7E 1B 78 */	mr r30, r3
/* 803A22E8 0036B8A8  80 63 00 48 */	lwz r3, 0x48(r3)
/* 803A22EC 0036B8AC  48 02 A0 11 */	bl SFD_GetHnStat
/* 803A22F0 0036B8B0  2C 03 00 03 */	cmpwi r3, 3
/* 803A22F4 0036B8B4  40 82 00 C8 */	bne .L_803A23BC
/* 803A22F8 0036B8B8  80 1E 05 C8 */	lwz r0, 0x5c8(r30)
/* 803A22FC 0036B8BC  3B FE 05 C8 */	addi r31, r30, 0x5c8
/* 803A2300 0036B8C0  2C 00 00 01 */	cmpwi r0, 1
/* 803A2304 0036B8C4  40 82 00 34 */	bne .L_803A2338
/* 803A2308 0036B8C8  7F E3 FB 78 */	mr r3, r31
/* 803A230C 0036B8CC  48 00 10 D1 */	bl MWSST_GetStat
/* 803A2310 0036B8D0  2C 03 00 02 */	cmpwi r3, 2
/* 803A2314 0036B8D4  41 82 00 24 */	beq .L_803A2338
/* 803A2318 0036B8D8  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 803A231C 0036B8DC  38 80 00 01 */	li r4, 1
/* 803A2320 0036B8E0  80 A3 00 00 */	lwz r5, 0(r3)
/* 803A2324 0036B8E4  81 85 00 24 */	lwz r12, 0x24(r5)
/* 803A2328 0036B8E8  7D 89 03 A6 */	mtctr r12
/* 803A232C 0036B8EC  4E 80 04 21 */	bctrl 
/* 803A2330 0036B8F0  2C 03 00 00 */	cmpwi r3, 0
/* 803A2334 0036B8F4  40 82 00 88 */	bne .L_803A23BC
.L_803A2338:
/* 803A2338 0036B8F8  80 1E 05 F0 */	lwz r0, 0x5f0(r30)
/* 803A233C 0036B8FC  3B FE 05 F0 */	addi r31, r30, 0x5f0
/* 803A2340 0036B900  2C 00 00 01 */	cmpwi r0, 1
/* 803A2344 0036B904  40 82 00 34 */	bne .L_803A2378
/* 803A2348 0036B908  7F E3 FB 78 */	mr r3, r31
/* 803A234C 0036B90C  48 00 10 91 */	bl MWSST_GetStat
/* 803A2350 0036B910  2C 03 00 02 */	cmpwi r3, 2
/* 803A2354 0036B914  41 82 00 24 */	beq .L_803A2378
/* 803A2358 0036B918  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 803A235C 0036B91C  38 80 00 01 */	li r4, 1
/* 803A2360 0036B920  80 A3 00 00 */	lwz r5, 0(r3)
/* 803A2364 0036B924  81 85 00 24 */	lwz r12, 0x24(r5)
/* 803A2368 0036B928  7D 89 03 A6 */	mtctr r12
/* 803A236C 0036B92C  4E 80 04 21 */	bctrl 
/* 803A2370 0036B930  2C 03 00 00 */	cmpwi r3, 0
/* 803A2374 0036B934  40 82 00 48 */	bne .L_803A23BC
.L_803A2378:
/* 803A2378 0036B938  7F C3 F3 78 */	mr r3, r30
/* 803A237C 0036B93C  4B FF EF BD */	bl mwPlySfdStart
/* 803A2380 0036B940  88 1E 00 82 */	lbz r0, 0x82(r30)
/* 803A2384 0036B944  7C 00 07 75 */	extsb. r0, r0
/* 803A2388 0036B948  40 82 00 10 */	bne .L_803A2398
/* 803A238C 0036B94C  7F C3 F3 78 */	mr r3, r30
/* 803A2390 0036B950  38 80 00 00 */	li r4, 0
/* 803A2394 0036B954  4B FF F6 F9 */	bl func_803A1A8C
.L_803A2398:
/* 803A2398 0036B958  88 1E 00 82 */	lbz r0, 0x82(r30)
/* 803A239C 0036B95C  7C 00 07 75 */	extsb. r0, r0
/* 803A23A0 0036B960  40 82 00 1C */	bne .L_803A23BC
/* 803A23A4 0036B964  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 803A23A8 0036B968  38 80 00 00 */	li r4, 0
/* 803A23AC 0036B96C  48 00 10 D5 */	bl MWSST_GetTime
/* 803A23B0 0036B970  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 803A23B4 0036B974  38 80 00 00 */	li r4, 0
/* 803A23B8 0036B978  48 00 10 C9 */	bl MWSST_GetTime
.L_803A23BC:
/* 803A23BC 0036B97C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A23C0 0036B980  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A23C4 0036B984  83 C1 00 08 */	lwz r30, 8(r1)
/* 803A23C8 0036B988  7C 08 03 A6 */	mtlr r0
/* 803A23CC 0036B98C  38 21 00 10 */	addi r1, r1, 0x10
/* 803A23D0 0036B990  4E 80 00 20 */	blr 

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0



.global lbl_8051ED98
lbl_8051ED98:
	.asciz "E1122617 mwPlySetAudioSw: handle is invalid."
	.asciz "E6042001 mwPlySetVideoSw: handle is invalid."
	.asciz "E1122640 mwPlyGetSfdHn: handle is invalid."
	.asciz "E1122639 mwPlyGetAdxtHn: handle is invalid."
	.asciz "E202232 mwPlyGetNumDropFrm: handle is invalid."
	.asciz "E1122619 mwPlyGetNumSkipDec: handle is invalid."
	.asciz "E1122628 mwPlySetBpicSkip mwPlySetPpicSkip: handle is invalid."
	.asciz "E1122616 mwPlySetAudioCh: handle is invalid."
	.asciz "E10911A mwPlySetAudioCh: Invalid ch no."
	.asciz "E2080801 mwPlyGetNumAudioCh: handle is invalid."
	.asciz "E2080601 mwPlySetVideoCh: handle is invalid."
	.asciz "E2080602 mwPlySetVideoCh: Invalid ch no."
	.asciz "E2080802 mwPlyGetNumVideoCh: handle is invalid."
	.asciz "E1122625 mwPlySetLimitTime: handle is invalid."
	.asciz "E5090601 mwPlyGetLimitTime: handle is invalid."
	.asciz "W200401 mwPlyGetStat: handle is invalid"
	.asciz "E1122644 mwPlySetFrameOutputCycle: handle is invalid."
	.asciz "E1122626 mwPlySetSyncMode: handle is invalid."
	.asciz "E6020801 syncmode is invalid."
	.asciz "E2010802 mwPlyGetSyncMode: handle is invalid."
	.asciz "E1122621 mwPlyGetNumDecPool: handle is invalid."
	.asciz "E1121601 mwPlyGetNumDecPool"
	.asciz "E1122620 mwPlyGetNumTotalDec: handle is invalid."
	.asciz "E1122603 mwPlyGetTime; handle is invalid."
	.asciz "E200601 mwPlyGetTime; can't get time"
	.asciz "E1122605 mwPlySetOutVol: handle is invalid."
	.asciz "E1122606 mwPlyGetOutVol: handle is invalid."
	.asciz "E1122607 mwPlySetOutPan: handle is invalid."
	.asciz "E1122608 mwPlyGetOutPan: handle is invalid."
	.asciz "E1122623 mwPlyGetNumSkipEmptyB: handle is invalid."
	.asciz "E1122627 mwPlySetEmptyBpicSkip: handle is invalid."
	.asciz "E1122624 mwPlyGetInputSj: handle is invalid."
	.asciz "E202191 mwPlyGetPlyInf: handle is invalid."
	.asciz "E1122643 mwPlyGetFlowInf: handle is invalid."
	.asciz "E302251 mwPlySetSpeedRational: handle is invalid."
	.asciz "E302251 mwPlySetSpeed: handle is invalid."
	.asciz "E211051 mwPlySetFloatSpeed: handle is invalid."
	.asciz "E5060801 mwPlySetUpdateTimeAuto: handle is invalid."
	.balign 4
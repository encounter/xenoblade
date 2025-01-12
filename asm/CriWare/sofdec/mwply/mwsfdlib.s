.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global MWSFLIB_GetLibWorkPtr
MWSFLIB_GetLibWorkPtr:
/* 803A0C60 0036A220  3C 60 80 60 */	lis r3, mwsfd_libwork@ha
/* 803A0C64 0036A224  38 63 29 68 */	addi r3, r3, mwsfd_libwork@l
/* 803A0C68 0036A228  4E 80 00 20 */	blr

.global mwsflib_LscErrFunc
mwsflib_LscErrFunc:
/* 803A0C6C 0036A22C  7C 83 23 78 */	mr r3, r4
/* 803A0C70 0036A230  4C C6 31 82 */	crclr 6
/* 803A0C74 0036A234  4B FF CF C4 */	b MWSFSVM_Error

.global mwPlyInitSfdFx
mwPlyInitSfdFx:
/* 803A0C78 0036A238  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803A0C7C 0036A23C  7C 08 02 A6 */	mflr r0
/* 803A0C80 0036A240  2C 03 00 00 */	cmpwi r3, 0
/* 803A0C84 0036A244  90 01 00 44 */	stw r0, 0x44(r1)
/* 803A0C88 0036A248  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 803A0C8C 0036A24C  3F E0 80 60 */	lis r31, lbl_80602958@ha
/* 803A0C90 0036A250  3B FF 29 58 */	addi r31, r31, lbl_80602958@l
/* 803A0C94 0036A254  93 C1 00 38 */	stw r30, 0x38(r1)
/* 803A0C98 0036A258  3F C0 80 52 */	lis r30, lbl_8051E0E0@ha
/* 803A0C9C 0036A25C  3B DE E0 E0 */	addi r30, r30, lbl_8051E0E0@l
/* 803A0CA0 0036A260  93 A1 00 34 */	stw r29, 0x34(r1)
/* 803A0CA4 0036A264  93 81 00 30 */	stw r28, 0x30(r1)
/* 803A0CA8 0036A268  7C 7C 1B 78 */	mr r28, r3
/* 803A0CAC 0036A26C  40 82 00 18 */	bne .L_803A0CC4
/* 803A0CB0 0036A270  3C 60 80 52 */	lis r3, lbl_8051E408@ha
/* 803A0CB4 0036A274  38 63 E4 08 */	addi r3, r3, lbl_8051E408@l
/* 803A0CB8 0036A278  4C C6 31 82 */	crclr 6
/* 803A0CBC 0036A27C  4B FF CF 7D */	bl MWSFSVM_Error
/* 803A0CC0 0036A280  48 00 02 00 */	b .L_803A0EC0
.L_803A0CC4:
/* 803A0CC4 0036A284  80 7F 00 08 */	lwz r3, 8(r31)
/* 803A0CC8 0036A288  2C 03 00 00 */	cmpwi r3, 0
/* 803A0CCC 0036A28C  41 82 00 20 */	beq .L_803A0CEC
/* 803A0CD0 0036A290  80 83 00 00 */	lwz r4, 0(r3)
/* 803A0CD4 0036A294  3C A0 80 57 */	lis r5, lbl_80569958@ha
/* 803A0CD8 0036A298  38 A5 99 58 */	addi r5, r5, lbl_80569958@l
/* 803A0CDC 0036A29C  81 84 00 24 */	lwz r12, 0x24(r4)
/* 803A0CE0 0036A2A0  38 85 00 04 */	addi r4, r5, 4
/* 803A0CE4 0036A2A4  7D 89 03 A6 */	mtctr r12
/* 803A0CE8 0036A2A8  4E 80 04 21 */	bctrl 
.L_803A0CEC:
/* 803A0CEC 0036A2AC  38 61 00 08 */	addi r3, r1, 8
/* 803A0CF0 0036A2B0  38 80 00 00 */	li r4, 0
/* 803A0CF4 0036A2B4  38 A0 00 20 */	li r5, 0x20
/* 803A0CF8 0036A2B8  4B C6 36 59 */	bl memset
/* 803A0CFC 0036A2BC  C0 1C 00 00 */	lfs f0, 0(r28)
/* 803A0D00 0036A2C0  38 60 00 01 */	li r3, 1
/* 803A0D04 0036A2C4  38 1E 00 00 */	addi r0, r30, 0
/* 803A0D08 0036A2C8  3B A1 00 08 */	addi r29, r1, 8
/* 803A0D0C 0036A2CC  D0 01 00 08 */	stfs f0, 8(r1)
/* 803A0D10 0036A2D0  90 61 00 0C */	stw r3, 0xc(r1)
/* 803A0D14 0036A2D4  90 61 00 10 */	stw r3, 0x10(r1)
/* 803A0D18 0036A2D8  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 803A0D1C 0036A2DC  90 61 00 14 */	stw r3, 0x14(r1)
/* 803A0D20 0036A2E0  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 803A0D24 0036A2E4  90 61 00 18 */	stw r3, 0x18(r1)
/* 803A0D28 0036A2E8  80 7C 00 14 */	lwz r3, 0x14(r28)
/* 803A0D2C 0036A2EC  90 61 00 1C */	stw r3, 0x1c(r1)
/* 803A0D30 0036A2F0  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 803A0D34 0036A2F4  90 61 00 20 */	stw r3, 0x20(r1)
/* 803A0D38 0036A2F8  80 7C 00 1C */	lwz r3, 0x1c(r28)
/* 803A0D3C 0036A2FC  90 61 00 24 */	stw r3, 0x24(r1)
/* 803A0D40 0036A300  90 1F 34 08 */	stw r0, 0x3408(r31)
/* 803A0D44 0036A304  4B FF CD DD */	bl MWSFSVM_Init
/* 803A0D48 0036A308  80 61 00 10 */	lwz r3, 0x10(r1)
/* 803A0D4C 0036A30C  34 03 FF FE */	addic. r0, r3, -2
/* 803A0D50 0036A310  90 01 00 10 */	stw r0, 0x10(r1)
/* 803A0D54 0036A314  40 80 00 0C */	bge .L_803A0D60
/* 803A0D58 0036A318  38 00 00 00 */	li r0, 0
/* 803A0D5C 0036A31C  90 01 00 10 */	stw r0, 0x10(r1)
.L_803A0D60:
/* 803A0D60 0036A320  80 1F 00 00 */	lwz r0, 0(r31)
/* 803A0D64 0036A324  2C 00 00 00 */	cmpwi r0, 0
/* 803A0D68 0036A328  40 82 01 24 */	bne .L_803A0E8C
/* 803A0D6C 0036A32C  4B FD E9 85 */	bl ADXT_Init
/* 803A0D70 0036A330  4B FF 35 8D */	bl SJRBF_Init
/* 803A0D74 0036A334  4B FF 27 35 */	bl SJMEM_Init
/* 803A0D78 0036A338  4B FF 49 0D */	bl SJUNI_Init
/* 803A0D7C 0036A33C  4B FF D0 55 */	bl MWSTM_SetTrSct
/* 803A0D80 0036A340  2C 03 00 00 */	cmpwi r3, 0
/* 803A0D84 0036A344  41 82 00 24 */	beq .L_803A0DA8
/* 803A0D88 0036A348  3C 60 80 52 */	lis r3, lbl_8051E408@ha
/* 803A0D8C 0036A34C  38 9F 00 10 */	addi r4, r31, 0x10
/* 803A0D90 0036A350  38 00 FF 9B */	li r0, -101
/* 803A0D94 0036A354  38 63 E4 08 */	addi r3, r3, lbl_8051E408@l
/* 803A0D98 0036A358  90 04 00 68 */	stw r0, 0x68(r4)
/* 803A0D9C 0036A35C  38 63 00 27 */	addi r3, r3, 0x27
/* 803A0DA0 0036A360  4C C6 31 82 */	crclr 6
/* 803A0DA4 0036A364  4B FF CE 95 */	bl MWSFSVM_Error
.L_803A0DA8:
/* 803A0DA8 0036A368  7F A3 EB 78 */	mr r3, r29
/* 803A0DAC 0036A36C  48 00 01 35 */	bl mwsflib_InitLibWork
/* 803A0DB0 0036A370  C0 5E 03 20 */	lfs f2, 0x320(r30)
/* 803A0DB4 0036A374  38 00 00 00 */	li r0, 0
/* 803A0DB8 0036A378  C0 21 00 08 */	lfs f1, 8(r1)
/* 803A0DBC 0036A37C  3C 60 80 60 */	lis r3, lbl_80605EB4@ha
/* 803A0DC0 0036A380  C0 1E 03 1C */	lfs f0, 0x31c(r30)
/* 803A0DC4 0036A384  90 03 5E B4 */	stw r0, lbl_80605EB4@l(r3)
/* 803A0DC8 0036A388  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 803A0DCC 0036A38C  FC 00 00 1E */	fctiwz f0, f0
/* 803A0DD0 0036A390  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 803A0DD4 0036A394  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 803A0DD8 0036A398  48 00 01 FD */	bl mwPlySfdInit
/* 803A0DDC 0036A39C  2C 03 00 00 */	cmpwi r3, 0
/* 803A0DE0 0036A3A0  41 82 00 18 */	beq .L_803A0DF8
/* 803A0DE4 0036A3A4  3C 60 80 52 */	lis r3, lbl_8051E408@ha
/* 803A0DE8 0036A3A8  38 63 E4 08 */	addi r3, r3, lbl_8051E408@l
/* 803A0DEC 0036A3AC  38 63 00 4C */	addi r3, r3, 0x4c
/* 803A0DF0 0036A3B0  4C C6 31 82 */	crclr 6
/* 803A0DF4 0036A3B4  4B FF CE 45 */	bl MWSFSVM_Error
.L_803A0DF8:
/* 803A0DF8 0036A3B8  C0 01 00 08 */	lfs f0, 8(r1)
/* 803A0DFC 0036A3BC  38 00 00 01 */	li r0, 1
/* 803A0E00 0036A3C0  90 1F 00 04 */	stw r0, 4(r31)
/* 803A0E04 0036A3C4  38 60 00 00 */	li r3, 0
/* 803A0E08 0036A3C8  FC 00 00 1E */	fctiwz f0, f0
/* 803A0E0C 0036A3CC  38 80 00 1B */	li r4, 0x1b
/* 803A0E10 0036A3D0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 803A0E14 0036A3D4  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 803A0E18 0036A3D8  48 00 0F B5 */	bl MWSFD_SetCond
/* 803A0E1C 0036A3DC  38 60 00 00 */	li r3, 0
/* 803A0E20 0036A3E0  38 80 00 07 */	li r4, 7
/* 803A0E24 0036A3E4  38 A0 00 01 */	li r5, 1
/* 803A0E28 0036A3E8  48 00 0F A5 */	bl MWSFD_SetCond
/* 803A0E2C 0036A3EC  4B FF 0A 81 */	bl LSC_Init
/* 803A0E30 0036A3F0  3C 60 80 3A */	lis r3, mwsflib_LscErrFunc@ha
/* 803A0E34 0036A3F4  38 80 00 00 */	li r4, 0
/* 803A0E38 0036A3F8  38 63 0C 6C */	addi r3, r3, mwsflib_LscErrFunc@l
/* 803A0E3C 0036A3FC  4B FF 09 6D */	bl LSC_EntryErrFunc
/* 803A0E40 0036A400  4B FF D0 95 */	bl MWSFSFX_Init
/* 803A0E44 0036A404  3F C0 80 52 */	lis r30, lbl_8051E408@ha
/* 803A0E48 0036A408  3C 80 80 3A */	lis r4, MWSFSVR_VsyncThrdProc@ha
/* 803A0E4C 0036A40C  3B DE E4 08 */	addi r30, r30, lbl_8051E408@l
/* 803A0E50 0036A410  38 60 00 02 */	li r3, 2
/* 803A0E54 0036A414  38 84 25 6C */	addi r4, r4, MWSFSVR_VsyncThrdProc@l
/* 803A0E58 0036A418  38 A0 00 00 */	li r5, 0
/* 803A0E5C 0036A41C  38 DE 00 68 */	addi r6, r30, 0x68
/* 803A0E60 0036A420  4B FF CD 05 */	bl MWSFSVM_EntryIdVfunc
/* 803A0E64 0036A424  3C 60 80 3A */	lis r3, MWSFSVR_MainThrdProc@ha
/* 803A0E68 0036A428  38 BE 00 7E */	addi r5, r30, 0x7e
/* 803A0E6C 0036A42C  38 63 26 C4 */	addi r3, r3, MWSFSVR_MainThrdProc@l
/* 803A0E70 0036A430  38 80 00 00 */	li r4, 0
/* 803A0E74 0036A434  4B FF CD 81 */	bl MWSFSVM_EntryMainFunc
/* 803A0E78 0036A438  3C 60 80 3A */	lis r3, func_803A2908@ha
/* 803A0E7C 0036A43C  38 BE 00 93 */	addi r5, r30, 0x93
/* 803A0E80 0036A440  38 63 29 08 */	addi r3, r3, func_803A2908@l
/* 803A0E84 0036A444  38 80 00 00 */	li r4, 0
/* 803A0E88 0036A448  4B FF CD 2D */	bl MWSFSVM_EntryIdleFunc
.L_803A0E8C:
/* 803A0E8C 0036A44C  80 9F 00 00 */	lwz r4, 0(r31)
/* 803A0E90 0036A450  80 7F 00 08 */	lwz r3, 8(r31)
/* 803A0E94 0036A454  38 04 00 01 */	addi r0, r4, 1
/* 803A0E98 0036A458  2C 03 00 00 */	cmpwi r3, 0
/* 803A0E9C 0036A45C  90 1F 00 00 */	stw r0, 0(r31)
/* 803A0EA0 0036A460  41 82 00 20 */	beq .L_803A0EC0
/* 803A0EA4 0036A464  80 83 00 00 */	lwz r4, 0(r3)
/* 803A0EA8 0036A468  3C A0 80 57 */	lis r5, lbl_80569958@ha
/* 803A0EAC 0036A46C  38 A5 99 58 */	addi r5, r5, lbl_80569958@l
/* 803A0EB0 0036A470  81 84 00 24 */	lwz r12, 0x24(r4)
/* 803A0EB4 0036A474  38 85 00 6C */	addi r4, r5, 0x6c
/* 803A0EB8 0036A478  7D 89 03 A6 */	mtctr r12
/* 803A0EBC 0036A47C  4E 80 04 21 */	bctrl 
.L_803A0EC0:
/* 803A0EC0 0036A480  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803A0EC4 0036A484  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 803A0EC8 0036A488  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 803A0ECC 0036A48C  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 803A0ED0 0036A490  83 81 00 30 */	lwz r28, 0x30(r1)
/* 803A0ED4 0036A494  7C 08 03 A6 */	mtlr r0
/* 803A0ED8 0036A498  38 21 00 40 */	addi r1, r1, 0x40
/* 803A0EDC 0036A49C  4E 80 00 20 */	blr 

.global mwsflib_InitLibWork
mwsflib_InitLibWork:
/* 803A0EE0 0036A4A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A0EE4 0036A4A4  7C 08 02 A6 */	mflr r0
/* 803A0EE8 0036A4A8  38 80 00 00 */	li r4, 0
/* 803A0EEC 0036A4AC  38 A0 33 F8 */	li r5, 0x33f8
/* 803A0EF0 0036A4B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A0EF4 0036A4B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A0EF8 0036A4B8  3F E0 80 60 */	lis r31, mwsfd_libwork@ha
/* 803A0EFC 0036A4BC  3B FF 29 68 */	addi r31, r31, mwsfd_libwork@l
/* 803A0F00 0036A4C0  93 C1 00 08 */	stw r30, 8(r1)
/* 803A0F04 0036A4C4  7C 7E 1B 78 */	mr r30, r3
/* 803A0F08 0036A4C8  7F E3 FB 78 */	mr r3, r31
/* 803A0F0C 0036A4CC  4B C6 34 45 */	bl memset
/* 803A0F10 0036A4D0  38 60 00 00 */	li r3, 0
/* 803A0F14 0036A4D4  48 00 20 05 */	bl MWSFSVR_SetMwsfdSvrFlg
/* 803A0F18 0036A4D8  38 80 00 00 */	li r4, 0
/* 803A0F1C 0036A4DC  2C 1E 00 00 */	cmpwi r30, 0
/* 803A0F20 0036A4E0  90 9F 00 5C */	stw r4, 0x5c(r31)
/* 803A0F24 0036A4E4  41 82 00 28 */	beq .L_803A0F4C
/* 803A0F28 0036A4E8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 803A0F2C 0036A4EC  D0 1F 00 04 */	stfs f0, 4(r31)
/* 803A0F30 0036A4F0  80 1E 00 04 */	lwz r0, 4(r30)
/* 803A0F34 0036A4F4  90 1F 00 08 */	stw r0, 8(r31)
/* 803A0F38 0036A4F8  80 1E 00 08 */	lwz r0, 8(r30)
/* 803A0F3C 0036A4FC  90 1F 00 0C */	stw r0, 0xc(r31)
/* 803A0F40 0036A500  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 803A0F44 0036A504  90 1F 00 10 */	stw r0, 0x10(r31)
/* 803A0F48 0036A508  48 00 00 20 */	b .L_803A0F68
.L_803A0F4C:
/* 803A0F4C 0036A50C  3C 60 80 52 */	lis r3, lbl_8051E404@ha
/* 803A0F50 0036A510  38 00 00 01 */	li r0, 1
/* 803A0F54 0036A514  C0 03 E4 04 */	lfs f0, lbl_8051E404@l(r3)
/* 803A0F58 0036A518  90 1F 00 08 */	stw r0, 8(r31)
/* 803A0F5C 0036A51C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 803A0F60 0036A520  90 1F 00 0C */	stw r0, 0xc(r31)
/* 803A0F64 0036A524  90 9F 00 10 */	stw r4, 0x10(r31)
.L_803A0F68:
/* 803A0F68 0036A528  38 00 00 00 */	li r0, 0
/* 803A0F6C 0036A52C  38 60 00 01 */	li r3, 1
/* 803A0F70 0036A530  90 7F 00 38 */	stw r3, 0x38(r31)
/* 803A0F74 0036A534  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 803A0F78 0036A538  90 1F 33 F0 */	stw r0, 0x33f0(r31)
/* 803A0F7C 0036A53C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A0F80 0036A540  83 C1 00 08 */	lwz r30, 8(r1)
/* 803A0F84 0036A544  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A0F88 0036A548  7C 08 03 A6 */	mtlr r0
/* 803A0F8C 0036A54C  38 21 00 10 */	addi r1, r1, 0x10
/* 803A0F90 0036A550  4E 80 00 20 */	blr 

.global MWSFD_GetUsePicUsr
MWSFD_GetUsePicUsr:
/* 803A0F94 0036A554  3C 60 80 60 */	lis r3, mwsfd_libwork@ha
/* 803A0F98 0036A558  38 63 29 68 */	addi r3, r3, mwsfd_libwork@l
/* 803A0F9C 0036A55C  80 63 00 38 */	lwz r3, 0x38(r3)
/* 803A0FA0 0036A560  4E 80 00 20 */	blr 

.global MWSFD_GetPauseBdr
MWSFD_GetPauseBdr:
/* 803A0FA4 0036A564  3C 60 80 60 */	lis r3, mwsfd_libwork@ha
/* 803A0FA8 0036A568  38 63 29 68 */	addi r3, r3, mwsfd_libwork@l
/* 803A0FAC 0036A56C  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 803A0FB0 0036A570  4E 80 00 20 */	blr 

.global MWSFLIB_SetErrCode
MWSFLIB_SetErrCode:
/* 803A0FB4 0036A574  7C 60 00 34 */	cntlzw r0, r3
/* 803A0FB8 0036A578  3C 80 80 60 */	lis r4, mwsfd_libwork@ha
/* 803A0FBC 0036A57C  38 84 29 68 */	addi r4, r4, mwsfd_libwork@l
/* 803A0FC0 0036A580  54 00 DF FE */	rlwinm r0, r0, 0x1b, 0x1f, 0x1f
/* 803A0FC4 0036A584  90 64 00 68 */	stw r3, 0x68(r4)
/* 803A0FC8 0036A588  7C 00 00 D0 */	neg r0, r0
/* 803A0FCC 0036A58C  7C 63 00 78 */	andc r3, r3, r0
/* 803A0FD0 0036A590  4E 80 00 20 */	blr 

.global mwPlySfdInit
mwPlySfdInit:
/* 803A0FD4 0036A594  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A0FD8 0036A598  7C 08 02 A6 */	mflr r0
/* 803A0FDC 0036A59C  3C 80 80 52 */	lis r4, lbl_8051E170@ha
/* 803A0FE0 0036A5A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A0FE4 0036A5A4  80 04 E1 70 */	lwz r0, lbl_8051E170@l(r4)
/* 803A0FE8 0036A5A8  38 80 39 88 */	li r4, 0x3988
/* 803A0FEC 0036A5AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803A0FF0 0036A5B0  3F E0 80 52 */	lis r31, lbl_8051E408@ha
/* 803A0FF4 0036A5B4  3B FF E4 08 */	addi r31, r31, lbl_8051E408@l
/* 803A0FF8 0036A5B8  90 61 00 0C */	stw r3, 0xc(r1)
/* 803A0FFC 0036A5BC  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 803A1000 0036A5C0  90 01 00 08 */	stw r0, 8(r1)
/* 803A1004 0036A5C4  48 01 FA 5D */	bl SFD_IsVersionCompatible
/* 803A1008 0036A5C8  2C 03 00 01 */	cmpwi r3, 1
/* 803A100C 0036A5CC  41 82 00 18 */	beq .L_803A1024
/* 803A1010 0036A5D0  38 7F 00 AE */	addi r3, r31, 0xae
/* 803A1014 0036A5D4  4C C6 31 82 */	crclr 6
/* 803A1018 0036A5D8  4B FF CC 21 */	bl MWSFSVM_Error
/* 803A101C 0036A5DC  38 60 FF FF */	li r3, -1
/* 803A1020 0036A5E0  48 00 00 64 */	b .L_803A1084
.L_803A1024:
/* 803A1024 0036A5E4  38 61 00 08 */	addi r3, r1, 8
/* 803A1028 0036A5E8  48 01 FA 49 */	bl SFD_Init
/* 803A102C 0036A5EC  2C 03 00 00 */	cmpwi r3, 0
/* 803A1030 0036A5F0  41 82 00 1C */	beq .L_803A104C
/* 803A1034 0036A5F4  3C 80 80 60 */	lis r4, mwsfd_libwork@ha
/* 803A1038 0036A5F8  38 00 FE D3 */	li r0, -301
/* 803A103C 0036A5FC  38 84 29 68 */	addi r4, r4, mwsfd_libwork@l
/* 803A1040 0036A600  38 60 FE D3 */	li r3, -301
/* 803A1044 0036A604  90 04 00 68 */	stw r0, 0x68(r4)
/* 803A1048 0036A608  48 00 00 3C */	b .L_803A1084
.L_803A104C:
/* 803A104C 0036A60C  3C 80 80 3A */	lis r4, MWSFLIB_SfdErrFunc@ha
/* 803A1050 0036A610  38 60 00 00 */	li r3, 0
/* 803A1054 0036A614  38 84 10 98 */	addi r4, r4, MWSFLIB_SfdErrFunc@l
/* 803A1058 0036A618  38 A0 00 00 */	li r5, 0
/* 803A105C 0036A61C  48 01 FD 39 */	bl func_803C0D94
/* 803A1060 0036A620  2C 03 00 00 */	cmpwi r3, 0
/* 803A1064 0036A624  41 82 00 1C */	beq .L_803A1080
/* 803A1068 0036A628  3C 80 80 60 */	lis r4, mwsfd_libwork@ha
/* 803A106C 0036A62C  38 00 FE D1 */	li r0, -303
/* 803A1070 0036A630  38 84 29 68 */	addi r4, r4, mwsfd_libwork@l
/* 803A1074 0036A634  38 60 FE D1 */	li r3, -303
/* 803A1078 0036A638  90 04 00 68 */	stw r0, 0x68(r4)
/* 803A107C 0036A63C  48 00 00 08 */	b .L_803A1084
.L_803A1080:
/* 803A1080 0036A640  38 60 00 00 */	li r3, 0
.L_803A1084:
/* 803A1084 0036A644  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A1088 0036A648  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803A108C 0036A64C  7C 08 03 A6 */	mtlr r0
/* 803A1090 0036A650  38 21 00 20 */	addi r1, r1, 0x20
/* 803A1094 0036A654  4E 80 00 20 */	blr

.global MWSFLIB_SfdErrFunc
MWSFLIB_SfdErrFunc:
/* 803A1098 0036A658  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A109C 0036A65C  7C 08 02 A6 */	mflr r0
/* 803A10A0 0036A660  2C 03 00 00 */	cmpwi r3, 0
/* 803A10A4 0036A664  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A10A8 0036A668  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803A10AC 0036A66C  3F E0 80 60 */	lis r31, lbl_80602958@ha
/* 803A10B0 0036A670  3B FF 29 58 */	addi r31, r31, lbl_80602958@l
/* 803A10B4 0036A674  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803A10B8 0036A678  7C 9E 23 78 */	mr r30, r4
/* 803A10BC 0036A67C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803A10C0 0036A680  7C 7D 1B 78 */	mr r29, r3
/* 803A10C4 0036A684  41 82 00 14 */	beq .L_803A10D8
/* 803A10C8 0036A688  48 00 0C AD */	bl mwPlyGetSfdHn
/* 803A10CC 0036A68C  93 BF 34 0C */	stw r29, 0x340c(r31)
/* 803A10D0 0036A690  90 7F 34 10 */	stw r3, 0x3410(r31)
/* 803A10D4 0036A694  48 00 00 10 */	b .L_803A10E4
.L_803A10D8:
/* 803A10D8 0036A698  3B A0 00 00 */	li r29, 0
/* 803A10DC 0036A69C  93 BF 34 0C */	stw r29, 0x340c(r31)
/* 803A10E0 0036A6A0  93 BF 34 10 */	stw r29, 0x3410(r31)
.L_803A10E4:
/* 803A10E4 0036A6A4  2C 1E 00 00 */	cmpwi r30, 0
/* 803A10E8 0036A6A8  41 82 00 24 */	beq .L_803A110C
/* 803A10EC 0036A6AC  80 9F 34 14 */	lwz r4, 0x3414(r31)
/* 803A10F0 0036A6B0  38 7F 34 18 */	addi r3, r31, 0x3418
/* 803A10F4 0036A6B4  54 80 10 3A */	slwi r0, r4, 2
/* 803A10F8 0036A6B8  2C 04 00 0F */	cmpwi r4, 0xf
/* 803A10FC 0036A6BC  7F C3 01 2E */	stwx r30, r3, r0
/* 803A1100 0036A6C0  40 80 00 0C */	bge .L_803A110C
/* 803A1104 0036A6C4  38 04 00 01 */	addi r0, r4, 1
/* 803A1108 0036A6C8  90 1F 34 14 */	stw r0, 0x3414(r31)
.L_803A110C:
/* 803A110C 0036A6CC  3C 60 FF 00 */	lis r3, 0xFF000F15@ha
/* 803A1110 0036A6D0  38 03 0F 15 */	addi r0, r3, 0xFF000F15@l
/* 803A1114 0036A6D4  7C 1E 00 00 */	cmpw r30, r0
/* 803A1118 0036A6D8  41 82 01 5C */	beq .L_803A1274
/* 803A111C 0036A6DC  40 80 00 44 */	bge .L_803A1160
/* 803A1120 0036A6E0  38 03 0C 04 */	addi r0, r3, 0xc04
/* 803A1124 0036A6E4  7C 1E 00 00 */	cmpw r30, r0
/* 803A1128 0036A6E8  41 82 01 6C */	beq .L_803A1294
/* 803A112C 0036A6EC  40 80 00 24 */	bge .L_803A1150
/* 803A1130 0036A6F0  38 03 04 0C */	addi r0, r3, 0x40c
/* 803A1134 0036A6F4  7C 1E 00 00 */	cmpw r30, r0
/* 803A1138 0036A6F8  41 82 01 1C */	beq .L_803A1254
/* 803A113C 0036A6FC  40 80 01 B8 */	bge .L_803A12F4
/* 803A1140 0036A700  38 03 04 08 */	addi r0, r3, 0x408
/* 803A1144 0036A704  7C 1E 00 00 */	cmpw r30, r0
/* 803A1148 0036A708  41 82 01 0C */	beq .L_803A1254
/* 803A114C 0036A70C  48 00 01 A8 */	b .L_803A12F4
.L_803A1150:
/* 803A1150 0036A710  38 03 0F 04 */	addi r0, r3, 0xf04
/* 803A1154 0036A714  7C 1E 00 00 */	cmpw r30, r0
/* 803A1158 0036A718  41 82 01 7C */	beq .L_803A12D4
/* 803A115C 0036A71C  48 00 01 98 */	b .L_803A12F4
.L_803A1160:
/* 803A1160 0036A720  38 03 0F 1F */	addi r0, r3, 0xf1f
/* 803A1164 0036A724  7C 1E 00 00 */	cmpw r30, r0
/* 803A1168 0036A728  41 82 01 4C */	beq .L_803A12B4
/* 803A116C 0036A72C  40 80 00 30 */	bge .L_803A119C
/* 803A1170 0036A730  38 03 0F 1C */	addi r0, r3, 0xf1c
/* 803A1174 0036A734  7C 1E 00 00 */	cmpw r30, r0
/* 803A1178 0036A738  41 82 00 DC */	beq .L_803A1254
/* 803A117C 0036A73C  40 80 01 78 */	bge .L_803A12F4
/* 803A1180 0036A740  38 03 0F 19 */	addi r0, r3, 0xf19
/* 803A1184 0036A744  7C 1E 00 00 */	cmpw r30, r0
/* 803A1188 0036A748  40 80 01 6C */	bge .L_803A12F4
/* 803A118C 0036A74C  38 03 0F 17 */	addi r0, r3, 0xf17
/* 803A1190 0036A750  7C 1E 00 00 */	cmpw r30, r0
/* 803A1194 0036A754  40 80 00 3C */	bge .L_803A11D0
/* 803A1198 0036A758  48 00 01 5C */	b .L_803A12F4
.L_803A119C:
/* 803A119C 0036A75C  2C 1E FF FF */	cmpwi r30, -1
/* 803A11A0 0036A760  40 80 01 54 */	bge .L_803A12F4
/* 803A11A4 0036A764  2C 1E FF FD */	cmpwi r30, -3
/* 803A11A8 0036A768  40 80 00 08 */	bge .L_803A11B0
/* 803A11AC 0036A76C  48 00 01 48 */	b .L_803A12F4
.L_803A11B0:
/* 803A11B0 0036A770  3C 80 80 52 */	lis r4, lbl_8051E408@ha
/* 803A11B4 0036A774  7F C5 F3 78 */	mr r5, r30
/* 803A11B8 0036A778  38 84 E4 08 */	addi r4, r4, lbl_8051E408@l
/* 803A11BC 0036A77C  38 7F 34 58 */	addi r3, r31, 0x3458
/* 803A11C0 0036A780  38 84 00 E0 */	addi r4, r4, 0xe0
/* 803A11C4 0036A784  4C C6 31 82 */	crclr 6
/* 803A11C8 0036A788  4B F1 FE 71 */	bl sprintf
/* 803A11CC 0036A78C  48 00 01 44 */	b .L_803A1310
.L_803A11D0:
/* 803A11D0 0036A790  2C 1D 00 00 */	cmpwi r29, 0
/* 803A11D4 0036A794  38 60 00 00 */	li r3, 0
/* 803A11D8 0036A798  38 C0 00 00 */	li r6, 0
/* 803A11DC 0036A79C  38 E0 00 00 */	li r7, 0
/* 803A11E0 0036A7A0  41 82 00 2C */	beq .L_803A120C
/* 803A11E4 0036A7A4  80 1D 00 D0 */	lwz r0, 0xd0(r29)
/* 803A11E8 0036A7A8  2C 00 00 01 */	cmpwi r0, 1
/* 803A11EC 0036A7AC  40 82 00 20 */	bne .L_803A120C
/* 803A11F0 0036A7B0  80 DD 00 D8 */	lwz r6, 0xd8(r29)
/* 803A11F4 0036A7B4  80 FD 00 DC */	lwz r7, 0xdc(r29)
/* 803A11F8 0036A7B8  2C 06 00 00 */	cmpwi r6, 0
/* 803A11FC 0036A7BC  40 81 00 10 */	ble .L_803A120C
/* 803A1200 0036A7C0  2C 07 00 00 */	cmpwi r7, 0
/* 803A1204 0036A7C4  40 81 00 08 */	ble .L_803A120C
/* 803A1208 0036A7C8  38 60 00 01 */	li r3, 1
.L_803A120C:
/* 803A120C 0036A7CC  2C 03 00 00 */	cmpwi r3, 0
/* 803A1210 0036A7D0  40 82 00 24 */	bne .L_803A1234
/* 803A1214 0036A7D4  3C 80 80 52 */	lis r4, lbl_8051E408@ha
/* 803A1218 0036A7D8  7F C5 F3 78 */	mr r5, r30
/* 803A121C 0036A7DC  38 84 E4 08 */	addi r4, r4, lbl_8051E408@l
/* 803A1220 0036A7E0  38 7F 34 58 */	addi r3, r31, 0x3458
/* 803A1224 0036A7E4  38 84 00 F1 */	addi r4, r4, 0xf1
/* 803A1228 0036A7E8  4C C6 31 82 */	crclr 6
/* 803A122C 0036A7EC  4B F1 FE 0D */	bl sprintf
/* 803A1230 0036A7F0  48 00 00 E0 */	b .L_803A1310
.L_803A1234:
/* 803A1234 0036A7F4  3C 80 80 52 */	lis r4, lbl_8051E408@ha
/* 803A1238 0036A7F8  7F C5 F3 78 */	mr r5, r30
/* 803A123C 0036A7FC  38 84 E4 08 */	addi r4, r4, lbl_8051E408@l
/* 803A1240 0036A800  38 7F 34 58 */	addi r3, r31, 0x3458
/* 803A1244 0036A804  38 84 01 4F */	addi r4, r4, 0x14f
/* 803A1248 0036A808  4C C6 31 82 */	crclr 6
/* 803A124C 0036A80C  4B F1 FD ED */	bl sprintf
/* 803A1250 0036A810  48 00 00 C0 */	b .L_803A1310
.L_803A1254:
/* 803A1254 0036A814  3C 80 80 52 */	lis r4, lbl_8051E408@ha
/* 803A1258 0036A818  7F C5 F3 78 */	mr r5, r30
/* 803A125C 0036A81C  38 84 E4 08 */	addi r4, r4, lbl_8051E408@l
/* 803A1260 0036A820  38 7F 34 58 */	addi r3, r31, 0x3458
/* 803A1264 0036A824  38 84 01 B4 */	addi r4, r4, 0x1b4
/* 803A1268 0036A828  4C C6 31 82 */	crclr 6
/* 803A126C 0036A82C  4B F1 FD CD */	bl sprintf
/* 803A1270 0036A830  48 00 00 A0 */	b .L_803A1310
.L_803A1274:
/* 803A1274 0036A834  3C 80 80 52 */	lis r4, lbl_8051E408@ha
/* 803A1278 0036A838  7F C5 F3 78 */	mr r5, r30
/* 803A127C 0036A83C  38 84 E4 08 */	addi r4, r4, lbl_8051E408@l
/* 803A1280 0036A840  38 7F 34 58 */	addi r3, r31, 0x3458
/* 803A1284 0036A844  38 84 02 05 */	addi r4, r4, 0x205
/* 803A1288 0036A848  4C C6 31 82 */	crclr 6
/* 803A128C 0036A84C  4B F1 FD AD */	bl sprintf
/* 803A1290 0036A850  48 00 00 80 */	b .L_803A1310
.L_803A1294:
/* 803A1294 0036A854  3C 80 80 52 */	lis r4, lbl_8051E408@ha
/* 803A1298 0036A858  7F C5 F3 78 */	mr r5, r30
/* 803A129C 0036A85C  38 84 E4 08 */	addi r4, r4, lbl_8051E408@l
/* 803A12A0 0036A860  38 7F 34 58 */	addi r3, r31, 0x3458
/* 803A12A4 0036A864  38 84 02 72 */	addi r4, r4, 0x272
/* 803A12A8 0036A868  4C C6 31 82 */	crclr 6
/* 803A12AC 0036A86C  4B F1 FD 8D */	bl sprintf
/* 803A12B0 0036A870  48 00 00 60 */	b .L_803A1310
.L_803A12B4:
/* 803A12B4 0036A874  3C 80 80 52 */	lis r4, lbl_8051E408@ha
/* 803A12B8 0036A878  7F C5 F3 78 */	mr r5, r30
/* 803A12BC 0036A87C  38 84 E4 08 */	addi r4, r4, lbl_8051E408@l
/* 803A12C0 0036A880  38 7F 34 58 */	addi r3, r31, 0x3458
/* 803A12C4 0036A884  38 84 02 F5 */	addi r4, r4, 0x2f5
/* 803A12C8 0036A888  4C C6 31 82 */	crclr 6
/* 803A12CC 0036A88C  4B F1 FD 6D */	bl sprintf
/* 803A12D0 0036A890  48 00 00 40 */	b .L_803A1310
.L_803A12D4:
/* 803A12D4 0036A894  3C 80 80 52 */	lis r4, lbl_8051E408@ha
/* 803A12D8 0036A898  7F C5 F3 78 */	mr r5, r30
/* 803A12DC 0036A89C  38 84 E4 08 */	addi r4, r4, lbl_8051E408@l
/* 803A12E0 0036A8A0  38 7F 34 58 */	addi r3, r31, 0x3458
/* 803A12E4 0036A8A4  38 84 03 3B */	addi r4, r4, 0x33b
/* 803A12E8 0036A8A8  4C C6 31 82 */	crclr 6
/* 803A12EC 0036A8AC  4B F1 FD 4D */	bl sprintf
/* 803A12F0 0036A8B0  48 00 00 20 */	b .L_803A1310
.L_803A12F4:
/* 803A12F4 0036A8B4  3C 80 80 52 */	lis r4, lbl_8051E408@ha
/* 803A12F8 0036A8B8  7F C5 F3 78 */	mr r5, r30
/* 803A12FC 0036A8BC  38 84 E4 08 */	addi r4, r4, lbl_8051E408@l
/* 803A1300 0036A8C0  38 7F 34 58 */	addi r3, r31, 0x3458
/* 803A1304 0036A8C4  38 84 03 97 */	addi r4, r4, 0x397
/* 803A1308 0036A8C8  4C C6 31 82 */	crclr 6
/* 803A130C 0036A8CC  4B F1 FD 2D */	bl sprintf
.L_803A1310:
/* 803A1310 0036A8D0  38 7F 34 58 */	addi r3, r31, 0x3458
/* 803A1314 0036A8D4  4C C6 31 82 */	crclr 6
/* 803A1318 0036A8D8  4B FF C9 21 */	bl MWSFSVM_Error
/* 803A131C 0036A8DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A1320 0036A8E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803A1324 0036A8E4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803A1328 0036A8E8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803A132C 0036A8EC  7C 08 03 A6 */	mtlr r0
/* 803A1330 0036A8F0  38 21 00 20 */	addi r1, r1, 0x20
/* 803A1334 0036A8F4  4E 80 00 20 */	blr 


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0



.global lbl_8051E1E0
lbl_8051E1E0:
	.asciz "mwPlyStartFname"

.global lbl_8051E1F0
lbl_8051E1F0:
	.asciz "fname"
	.balign 4
	.asciz "mwPlyStartFnameRange"
	.balign 4
	.asciz "offset_sct"
	.balign 4
	.asciz "range_sct"
	.balign 4
	.asciz "mwPlyStartMem"
	.balign 4
	.asciz "addr"
	.balign 4
	.asciz "len"
	.asciz "mwPlyStartSj"
	.balign 4
	.asciz "sji"
	.asciz "mwPlyStartAfs"
	.balign 4
	.asciz "patid"
	.balign 4
	.asciz "fid"

.global lbl_8051E274
lbl_8051E274:
	.asciz "mwPlyStartFnameLp"
	.balign 4

.global lbl_8051E288
lbl_8051E288:
	.asciz "mwPlyReleaseLp"
	.balign 4
	.asciz "mwPlyStartAfsLp"
	.asciz "mwPlyStartFnameRangeLp"
	.balign 4

.global lbl_8051E2C0
lbl_8051E2C0:
	.asciz "mwPlyEntryFname"

.global lbl_8051E2D0
lbl_8051E2D0:
	.asciz "mwPlyStartSeamless"
	.balign 4

.global lbl_8051E2E4
lbl_8051E2E4:
	.asciz "mwPlyReleaseSeamless"
	.balign 4

.global lbl_8051E2FC
lbl_8051E2FC:
	.asciz "mwPlySetSeamlessLp"
	.balign 4

.global lbl_8051E310
lbl_8051E310:
	.asciz "flag"
	.balign 4

.global lbl_8051E318
lbl_8051E318:
	.asciz "mwPlyStop"
	.balign 4
	.asciz "mwPlyRequestStop"
	.balign 4

.global lbl_8051E338
lbl_8051E338:
	.asciz "MWSFSVM_Error"
	.balign 4

.global lbl_8051E348
lbl_8051E348:
	.asciz "errstr"
	.balign 4

.global lbl_8051E350
lbl_8051E350:
	.asciz "MWSFSVM_GotoIdleBorder"
	.balign 4

.global lbl_8051E368
lbl_8051E368:
	.asciz "MWSFSVR_VsyncThrdProc"
	.balign 4

.global lbl_8051E380
lbl_8051E380:
	.asciz "remain_work_flag"
	.balign 4

.global lbl_8051E394
lbl_8051E394:
	.asciz "MWSFSVR_MainThrdProc"
	.balign 4

.global lbl_8051E3AC
lbl_8051E3AC:
	.asciz "MWSFSVR_IdleThrdProc"
	.balign 4

.global lbl_8051E3C4
lbl_8051E3C4:
	.asciz "MWSFSVR_DecodeServer"
	.balign 4

.global lbl_8051E3DC
lbl_8051E3DC:
	.asciz "mwsfd_ExecSvrHndl"
	.balign 4

.global lbl_8051E3F0
lbl_8051E3F0:
	.asciz "mwSfdVsync"
	.balign 4
	.float 0.5
	.4byte 0x447A0000


.global lbl_8051E404
lbl_8051E404:
	.float 59.94 #0x426FC28F


.global lbl_8051E408
lbl_8051E408:
	.asciz "E1122611 mwPlyInitSfdFx: iprm is NULL."
	.asciz "E2005 mwPlyInitSfdFx: can't init GSC"
	.asciz "ERR20010421A mwPlyInitSfdFx"
	.asciz "MWSFSVR_VsyncThrdProc"
	.asciz "MWSFSVR_MainThrdProc"
	.asciz "MWSFSVR_IdleThrdProc"
	.asciz "2.080"
	.asciz "E011081 mwPlySfdInit: Not compatible SFD Version."
	.asciz "DATA ERROR(%08X)"
	.asciz "SFD ERROR(%08X): 'max_width, max_height' of creation parameter is short. Increase this value."
	.asciz "SFD ERROR(%08X): 'max_width, max_height' of creation parameter is short. This movie size is %d x %d."
	.asciz "SFD ERROR(%08X): Read buffer is small. Increase 'max_bps' of creation parameter."
	.asciz "SFD ERROR(%08X): Frame pool size is incorrect. Set positive integer to 'nfrm_pool_wk' of creation parameter."
	.asciz "SFD ERROR(%08X): Number of ADXT handles exceeds its maximum number. MWPLY handle uses one ADXT handle(stereo) for MWSFD_FTYPE_SFD."
	.asciz "SFD ERROR(%08X): mwPlyRelFrm() was called twice to the same frame ID."
	.asciz "SFD ERROR(%08X): Decode picture error. For example, this library can't decode MPEG-2 video."
	.asciz "SFD ERROR(%08X)"
	.balign 4

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.global lbl_80602958
lbl_80602958:
	.skip 0x4
.global lbl_8060295C
lbl_8060295C:
	.skip 0x4
.global lbl_80602960
lbl_80602960:
	.skip 0x8
.global mwsfd_libwork
mwsfd_libwork:
	.skip 0x3548
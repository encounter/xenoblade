.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global GXSetMisc
GXSetMisc:
/* 80319D80 002E3340  2C 03 00 01 */	cmpwi r3, 1
/* 80319D84 002E3344  41 82 00 18 */	beq .L_80319D9C
/* 80319D88 002E3348  2C 03 00 02 */	cmpwi r3, 2
/* 80319D8C 002E334C  41 82 00 44 */	beq .L_80319DD0
/* 80319D90 002E3350  2C 03 00 03 */	cmpwi r3, 3
/* 80319D94 002E3354  41 82 00 54 */	beq .L_80319DE8
/* 80319D98 002E3358  4E 80 00 20 */	blr
.L_80319D9C:
/* 80319D9C 002E335C  80 A2 BC 20 */	lwz r5, lbl_8066BFA0@sda21(r2)
/* 80319DA0 002E3360  54 80 04 3F */	clrlwi. r0, r4, 0x10
/* 80319DA4 002E3364  B0 85 00 04 */	sth r4, 4(r5)
/* 80319DA8 002E3368  7C 03 00 34 */	cntlzw r3, r0
/* 80319DAC 002E336C  38 00 00 01 */	li r0, 1
/* 80319DB0 002E3370  54 63 DC 3E */	rlwinm r3, r3, 0x1b, 0x10, 0x1f
/* 80319DB4 002E3374  B0 65 00 00 */	sth r3, 0(r5)
/* 80319DB8 002E3378  B0 05 00 02 */	sth r0, 2(r5)
/* 80319DBC 002E337C  4D 82 00 20 */	beqlr 
/* 80319DC0 002E3380  80 05 05 FC */	lwz r0, 0x5fc(r5)
/* 80319DC4 002E3384  60 00 00 08 */	ori r0, r0, 8
/* 80319DC8 002E3388  90 05 05 FC */	stw r0, 0x5fc(r5)
/* 80319DCC 002E338C  4E 80 00 20 */	blr
.L_80319DD0:
/* 80319DD0 002E3390  7C 04 00 D0 */	neg r0, r4
/* 80319DD4 002E3394  80 62 BC 20 */	lwz r3, lbl_8066BFA0@sda21(r2)
/* 80319DD8 002E3398  7C 00 23 78 */	or r0, r0, r4
/* 80319DDC 002E339C  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80319DE0 002E33A0  98 03 05 F9 */	stb r0, 0x5f9(r3)
/* 80319DE4 002E33A4  4E 80 00 20 */	blr
.L_80319DE8:
/* 80319DE8 002E33A8  7C 04 00 D0 */	neg r0, r4
/* 80319DEC 002E33AC  80 62 BC 20 */	lwz r3, lbl_8066BFA0@sda21(r2)
/* 80319DF0 002E33B0  7C 00 23 78 */	or r0, r0, r4
/* 80319DF4 002E33B4  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80319DF8 002E33B8  98 03 05 FA */	stb r0, 0x5fa(r3)
/* 80319DFC 002E33BC  4E 80 00 20 */	blr 

.balign 16, 0
.global GXFlush
GXFlush:
/* 80319E00 002E33C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80319E04 002E33C4  7C 08 02 A6 */	mflr r0
/* 80319E08 002E33C8  80 62 BC 20 */	lwz r3, lbl_8066BFA0@sda21(r2)
/* 80319E0C 002E33CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80319E10 002E33D0  80 03 05 FC */	lwz r0, 0x5fc(r3)
/* 80319E14 002E33D4  2C 00 00 00 */	cmpwi r0, 0
/* 80319E18 002E33D8  41 82 00 08 */	beq .L_80319E20
/* 80319E1C 002E33DC  48 00 09 45 */	bl __GXSetDirtyState
.L_80319E20:
/* 80319E20 002E33E0  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 80319E24 002E33E4  38 00 00 00 */	li r0, 0
/* 80319E28 002E33E8  90 03 80 00 */	stw r0, 0xCC008000@l(r3)
/* 80319E2C 002E33EC  90 03 80 00 */	stw r0, -0x8000(r3)
/* 80319E30 002E33F0  90 03 80 00 */	stw r0, -0x8000(r3)
/* 80319E34 002E33F4  90 03 80 00 */	stw r0, -0x8000(r3)
/* 80319E38 002E33F8  90 03 80 00 */	stw r0, -0x8000(r3)
/* 80319E3C 002E33FC  90 03 80 00 */	stw r0, -0x8000(r3)
/* 80319E40 002E3400  90 03 80 00 */	stw r0, -0x8000(r3)
/* 80319E44 002E3404  90 03 80 00 */	stw r0, -0x8000(r3)
/* 80319E48 002E3408  4B FC 0D 79 */	bl PPCSync
/* 80319E4C 002E340C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80319E50 002E3410  7C 08 03 A6 */	mtlr r0
/* 80319E54 002E3414  38 21 00 10 */	addi r1, r1, 0x10
/* 80319E58 002E3418  4E 80 00 20 */	blr 

.balign 16, 0
.global __GXAbort
__GXAbort:
/* 80319E60 002E3420  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80319E64 002E3424  7C 08 02 A6 */	mflr r0
/* 80319E68 002E3428  90 01 00 24 */	stw r0, 0x24(r1)
/* 80319E6C 002E342C  39 61 00 20 */	addi r11, r1, 0x20
/* 80319E70 002E3430  4B FA 02 E5 */	bl _savegpr_27
/* 80319E74 002E3434  80 62 BC 20 */	lwz r3, lbl_8066BFA0@sda21(r2)
/* 80319E78 002E3438  88 03 05 FA */	lbz r0, 0x5fa(r3)
/* 80319E7C 002E343C  2C 00 00 00 */	cmpwi r0, 0
/* 80319E80 002E3440  41 82 00 A0 */	beq .L_80319F20
/* 80319E84 002E3444  4B FF EF DD */	bl __GXIsGPFifoReady
/* 80319E88 002E3448  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80319E8C 002E344C  41 82 00 94 */	beq .L_80319F20
/* 80319E90 002E3450  80 AD B7 94 */	lwz r5, lbl_80667914@sda21(r13)
/* 80319E94 002E3454  A0 05 00 4E */	lhz r0, 0x4e(r5)
.L_80319E98:
/* 80319E98 002E3458  7C 03 03 78 */	mr r3, r0
/* 80319E9C 002E345C  A0 85 00 50 */	lhz r4, 0x50(r5)
/* 80319EA0 002E3460  A0 05 00 4E */	lhz r0, 0x4e(r5)
/* 80319EA4 002E3464  7C 00 18 40 */	cmplw r0, r3
/* 80319EA8 002E3468  40 82 FF F0 */	bne .L_80319E98
/* 80319EAC 002E346C  54 03 80 1E */	slwi r3, r0, 0x10
/* 80319EB0 002E3470  38 00 00 00 */	li r0, 0
/* 80319EB4 002E3474  7C 7B 23 78 */	or r27, r3, r4
/* 80319EB8 002E3478  3B A0 00 08 */	li r29, 8
/* 80319EBC 002E347C  6C 1C 80 00 */	xoris r28, r0, 0x8000
.L_80319EC0:
/* 80319EC0 002E3480  48 04 2A A1 */	bl OSGetTime
/* 80319EC4 002E3484  7C 9F 23 78 */	mr r31, r4
/* 80319EC8 002E3488  7C 7E 1B 78 */	mr r30, r3
.L_80319ECC:
/* 80319ECC 002E348C  48 04 2A 95 */	bl OSGetTime
/* 80319ED0 002E3490  7C 9F 20 10 */	subfc r4, r31, r4
/* 80319ED4 002E3494  7C 1E 19 10 */	subfe r0, r30, r3
/* 80319ED8 002E3498  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 80319EDC 002E349C  7C 04 E8 10 */	subfc r0, r4, r29
/* 80319EE0 002E34A0  7C 63 E1 10 */	subfe r3, r3, r28
/* 80319EE4 002E34A4  7C 7C E1 10 */	subfe r3, r28, r28
/* 80319EE8 002E34A8  7C 63 00 D1 */	neg. r3, r3
/* 80319EEC 002E34AC  41 82 FF E0 */	beq .L_80319ECC
/* 80319EF0 002E34B0  80 AD B7 94 */	lwz r5, lbl_80667914@sda21(r13)
/* 80319EF4 002E34B4  A0 05 00 4E */	lhz r0, 0x4e(r5)
.L_80319EF8:
/* 80319EF8 002E34B8  7C 03 03 78 */	mr r3, r0
/* 80319EFC 002E34BC  A0 85 00 50 */	lhz r4, 0x50(r5)
/* 80319F00 002E34C0  A0 05 00 4E */	lhz r0, 0x4e(r5)
/* 80319F04 002E34C4  7C 00 18 40 */	cmplw r0, r3
/* 80319F08 002E34C8  40 82 FF F0 */	bne .L_80319EF8
/* 80319F0C 002E34CC  54 00 80 1E */	slwi r0, r0, 0x10
/* 80319F10 002E34D0  7C 00 23 78 */	or r0, r0, r4
/* 80319F14 002E34D4  7C 00 D8 40 */	cmplw r0, r27
/* 80319F18 002E34D8  7C 1B 03 78 */	mr r27, r0
/* 80319F1C 002E34DC  40 82 FF A4 */	bne .L_80319EC0
.L_80319F20:
/* 80319F20 002E34E0  3C 60 CC 00 */	lis r3, 0xCC003018@ha
/* 80319F24 002E34E4  38 00 00 01 */	li r0, 1
/* 80319F28 002E34E8  90 03 30 18 */	stw r0, 0xCC003018@l(r3)
/* 80319F2C 002E34EC  48 04 2A 35 */	bl OSGetTime
/* 80319F30 002E34F0  38 00 00 00 */	li r0, 0
/* 80319F34 002E34F4  7C 9F 23 78 */	mr r31, r4
/* 80319F38 002E34F8  7C 7E 1B 78 */	mr r30, r3
/* 80319F3C 002E34FC  3B A0 00 32 */	li r29, 0x32
/* 80319F40 002E3500  6C 1C 80 00 */	xoris r28, r0, 0x8000
.L_80319F44:
/* 80319F44 002E3504  48 04 2A 1D */	bl OSGetTime
/* 80319F48 002E3508  7C 9F 20 10 */	subfc r4, r31, r4
/* 80319F4C 002E350C  7C 1E 19 10 */	subfe r0, r30, r3
/* 80319F50 002E3510  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 80319F54 002E3514  7C 04 E8 10 */	subfc r0, r4, r29
/* 80319F58 002E3518  7C 63 E1 10 */	subfe r3, r3, r28
/* 80319F5C 002E351C  7C 7C E1 10 */	subfe r3, r28, r28
/* 80319F60 002E3520  7C 63 00 D1 */	neg. r3, r3
/* 80319F64 002E3524  41 82 FF E0 */	beq .L_80319F44
/* 80319F68 002E3528  3C 60 CC 00 */	lis r3, 0xCC003018@ha
/* 80319F6C 002E352C  3B C0 00 00 */	li r30, 0
/* 80319F70 002E3530  93 C3 30 18 */	stw r30, 0xCC003018@l(r3)
/* 80319F74 002E3534  48 04 29 ED */	bl OSGetTime
/* 80319F78 002E3538  6F DF 80 00 */	xoris r31, r30, 0x8000
/* 80319F7C 002E353C  7C 9C 23 78 */	mr r28, r4
/* 80319F80 002E3540  7C 7D 1B 78 */	mr r29, r3
/* 80319F84 002E3544  3B C0 00 05 */	li r30, 5
.L_80319F88:
/* 80319F88 002E3548  48 04 29 D9 */	bl OSGetTime
/* 80319F8C 002E354C  7C 9C 20 10 */	subfc r4, r28, r4
/* 80319F90 002E3550  7C 1D 19 10 */	subfe r0, r29, r3
/* 80319F94 002E3554  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 80319F98 002E3558  7C 04 F0 10 */	subfc r0, r4, r30
/* 80319F9C 002E355C  7C 63 F9 10 */	subfe r3, r3, r31
/* 80319FA0 002E3560  7C 7F F9 10 */	subfe r3, r31, r31
/* 80319FA4 002E3564  7C 63 00 D1 */	neg. r3, r3
/* 80319FA8 002E3568  41 82 FF E0 */	beq .L_80319F88
/* 80319FAC 002E356C  39 61 00 20 */	addi r11, r1, 0x20
/* 80319FB0 002E3570  4B FA 01 F1 */	bl _restgpr_27
/* 80319FB4 002E3574  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80319FB8 002E3578  7C 08 03 A6 */	mtlr r0
/* 80319FBC 002E357C  38 21 00 20 */	addi r1, r1, 0x20
/* 80319FC0 002E3580  4E 80 00 20 */	blr 

.balign 16, 0
.global GXAbortFrame
GXAbortFrame:
/* 80319FD0 002E3590  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80319FD4 002E3594  7C 08 02 A6 */	mflr r0
/* 80319FD8 002E3598  90 01 00 24 */	stw r0, 0x24(r1)
/* 80319FDC 002E359C  39 61 00 20 */	addi r11, r1, 0x20
/* 80319FE0 002E35A0  4B FA 01 71 */	bl _savegpr_26
/* 80319FE4 002E35A4  83 E2 BC 20 */	lwz r31, lbl_8066BFA0@sda21(r2)
/* 80319FE8 002E35A8  88 1F 05 FA */	lbz r0, 0x5fa(r31)
/* 80319FEC 002E35AC  2C 00 00 00 */	cmpwi r0, 0
/* 80319FF0 002E35B0  41 82 00 A0 */	beq .L_8031A090
/* 80319FF4 002E35B4  4B FF EE 6D */	bl __GXIsGPFifoReady
/* 80319FF8 002E35B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80319FFC 002E35BC  41 82 00 94 */	beq .L_8031A090
/* 8031A000 002E35C0  80 AD B7 94 */	lwz r5, lbl_80667914@sda21(r13)
/* 8031A004 002E35C4  A0 65 00 4E */	lhz r3, 0x4e(r5)
.L_8031A008:
/* 8031A008 002E35C8  7C 60 1B 78 */	mr r0, r3
/* 8031A00C 002E35CC  A0 85 00 50 */	lhz r4, 0x50(r5)
/* 8031A010 002E35D0  A0 65 00 4E */	lhz r3, 0x4e(r5)
/* 8031A014 002E35D4  7C 03 00 40 */	cmplw r3, r0
/* 8031A018 002E35D8  40 82 FF F0 */	bne .L_8031A008
/* 8031A01C 002E35DC  54 63 80 1E */	slwi r3, r3, 0x10
/* 8031A020 002E35E0  38 00 00 00 */	li r0, 0
/* 8031A024 002E35E4  7C 7A 23 78 */	or r26, r3, r4
/* 8031A028 002E35E8  3B 80 00 08 */	li r28, 8
/* 8031A02C 002E35EC  6C 1B 80 00 */	xoris r27, r0, 0x8000
.L_8031A030:
/* 8031A030 002E35F0  48 04 29 31 */	bl OSGetTime
/* 8031A034 002E35F4  7C 9E 23 78 */	mr r30, r4
/* 8031A038 002E35F8  7C 7D 1B 78 */	mr r29, r3
.L_8031A03C:
/* 8031A03C 002E35FC  48 04 29 25 */	bl OSGetTime
/* 8031A040 002E3600  7C 9E 20 10 */	subfc r4, r30, r4
/* 8031A044 002E3604  7C 1D 19 10 */	subfe r0, r29, r3
/* 8031A048 002E3608  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8031A04C 002E360C  7C 04 E0 10 */	subfc r0, r4, r28
/* 8031A050 002E3610  7C 63 D9 10 */	subfe r3, r3, r27
/* 8031A054 002E3614  7C 7B D9 10 */	subfe r3, r27, r27
/* 8031A058 002E3618  7C 63 00 D1 */	neg. r3, r3
/* 8031A05C 002E361C  41 82 FF E0 */	beq .L_8031A03C
/* 8031A060 002E3620  80 AD B7 94 */	lwz r5, lbl_80667914@sda21(r13)
/* 8031A064 002E3624  A0 85 00 4E */	lhz r4, 0x4e(r5)
.L_8031A068:
/* 8031A068 002E3628  7C 80 23 78 */	mr r0, r4
/* 8031A06C 002E362C  A0 65 00 50 */	lhz r3, 0x50(r5)
/* 8031A070 002E3630  A0 85 00 4E */	lhz r4, 0x4e(r5)
/* 8031A074 002E3634  7C 04 00 40 */	cmplw r4, r0
/* 8031A078 002E3638  40 82 FF F0 */	bne .L_8031A068
/* 8031A07C 002E363C  54 80 80 1E */	slwi r0, r4, 0x10
/* 8031A080 002E3640  7C 00 1B 78 */	or r0, r0, r3
/* 8031A084 002E3644  7C 00 D0 40 */	cmplw r0, r26
/* 8031A088 002E3648  7C 1A 03 78 */	mr r26, r0
/* 8031A08C 002E364C  40 82 FF A4 */	bne .L_8031A030
.L_8031A090:
/* 8031A090 002E3650  3C 60 CC 00 */	lis r3, 0xCC003018@ha
/* 8031A094 002E3654  38 00 00 01 */	li r0, 1
/* 8031A098 002E3658  90 03 30 18 */	stw r0, 0xCC003018@l(r3)
/* 8031A09C 002E365C  48 04 28 C5 */	bl OSGetTime
/* 8031A0A0 002E3660  38 00 00 00 */	li r0, 0
/* 8031A0A4 002E3664  7C 9E 23 78 */	mr r30, r4
/* 8031A0A8 002E3668  7C 7D 1B 78 */	mr r29, r3
/* 8031A0AC 002E366C  3B 80 00 32 */	li r28, 0x32
/* 8031A0B0 002E3670  6C 1B 80 00 */	xoris r27, r0, 0x8000
.L_8031A0B4:
/* 8031A0B4 002E3674  48 04 28 AD */	bl OSGetTime
/* 8031A0B8 002E3678  7C 9E 20 10 */	subfc r4, r30, r4
/* 8031A0BC 002E367C  7C 1D 19 10 */	subfe r0, r29, r3
/* 8031A0C0 002E3680  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8031A0C4 002E3684  7C 04 E0 10 */	subfc r0, r4, r28
/* 8031A0C8 002E3688  7C 63 D9 10 */	subfe r3, r3, r27
/* 8031A0CC 002E368C  7C 7B D9 10 */	subfe r3, r27, r27
/* 8031A0D0 002E3690  7C 63 00 D1 */	neg. r3, r3
/* 8031A0D4 002E3694  41 82 FF E0 */	beq .L_8031A0B4
/* 8031A0D8 002E3698  3C 60 CC 00 */	lis r3, 0xCC003018@ha
/* 8031A0DC 002E369C  3B A0 00 00 */	li r29, 0
/* 8031A0E0 002E36A0  93 A3 30 18 */	stw r29, 0xCC003018@l(r3)
/* 8031A0E4 002E36A4  48 04 28 7D */	bl OSGetTime
/* 8031A0E8 002E36A8  6F BE 80 00 */	xoris r30, r29, 0x8000
/* 8031A0EC 002E36AC  7C 9B 23 78 */	mr r27, r4
/* 8031A0F0 002E36B0  7C 7C 1B 78 */	mr r28, r3
/* 8031A0F4 002E36B4  3B A0 00 05 */	li r29, 5
.L_8031A0F8:
/* 8031A0F8 002E36B8  48 04 28 69 */	bl OSGetTime
/* 8031A0FC 002E36BC  7C 9B 20 10 */	subfc r4, r27, r4
/* 8031A100 002E36C0  7C 1C 19 10 */	subfe r0, r28, r3
/* 8031A104 002E36C4  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8031A108 002E36C8  7C 04 E8 10 */	subfc r0, r4, r29
/* 8031A10C 002E36CC  7C 63 F1 10 */	subfe r3, r3, r30
/* 8031A110 002E36D0  7C 7E F1 10 */	subfe r3, r30, r30
/* 8031A114 002E36D4  7C 63 00 D1 */	neg. r3, r3
/* 8031A118 002E36D8  41 82 FF E0 */	beq .L_8031A0F8
/* 8031A11C 002E36DC  4B FF ED 45 */	bl __GXIsGPFifoReady
/* 8031A120 002E36E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8031A124 002E36E4  41 82 00 48 */	beq .L_8031A16C
/* 8031A128 002E36E8  4B FF EF 69 */	bl __GXCleanGPFifo
/* 8031A12C 002E36EC  4B FF D5 D5 */	bl __GXInitRevisionBits
/* 8031A130 002E36F0  38 00 00 00 */	li r0, 0
/* 8031A134 002E36F4  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 8031A138 002E36F8  48 00 00 08 */	b .L_8031A140
/* 8031A13C 002E36FC  48 00 06 25 */	bl __GXSetDirtyState
.L_8031A140:
/* 8031A140 002E3700  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8031A144 002E3704  38 00 00 00 */	li r0, 0
/* 8031A148 002E3708  90 03 80 00 */	stw r0, 0xCC008000@l(r3)
/* 8031A14C 002E370C  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8031A150 002E3710  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8031A154 002E3714  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8031A158 002E3718  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8031A15C 002E371C  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8031A160 002E3720  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8031A164 002E3724  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8031A168 002E3728  4B FC 0A 59 */	bl PPCSync
.L_8031A16C:
/* 8031A16C 002E372C  39 61 00 20 */	addi r11, r1, 0x20
/* 8031A170 002E3730  4B FA 00 2D */	bl _restgpr_26
/* 8031A174 002E3734  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031A178 002E3738  7C 08 03 A6 */	mtlr r0
/* 8031A17C 002E373C  38 21 00 20 */	addi r1, r1, 0x20
/* 8031A180 002E3740  4E 80 00 20 */	blr 

.balign 16, 0
.global GXSetDrawSync
GXSetDrawSync:
/* 8031A190 002E3750  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031A194 002E3754  7C 08 02 A6 */	mflr r0
/* 8031A198 002E3758  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031A19C 002E375C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8031A1A0 002E3760  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8031A1A4 002E3764  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8031A1A8 002E3768  7C 7D 1B 78 */	mr r29, r3
/* 8031A1AC 002E376C  48 03 E8 05 */	bl OSDisableInterrupts
/* 8031A1B0 002E3770  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 8031A1B4 002E3774  38 A0 00 61 */	li r5, 0x61
/* 8031A1B8 002E3778  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 8031A1BC 002E377C  67 A6 48 00 */	oris r6, r29, 0x4800
/* 8031A1C0 002E3780  38 00 00 47 */	li r0, 0x47
/* 8031A1C4 002E3784  83 C2 BC 20 */	lwz r30, lbl_8066BFA0@sda21(r2)
/* 8031A1C8 002E3788  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 8031A1CC 002E378C  53 A6 04 3E */	rlwimi r6, r29, 0, 0x10, 0x1f
/* 8031A1D0 002E3790  50 06 C0 0E */	rlwimi r6, r0, 0x18, 0, 7
/* 8031A1D4 002E3794  7C 7D 1B 78 */	mr r29, r3
/* 8031A1D8 002E3798  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 8031A1DC 002E379C  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 8031A1E0 002E37A0  80 1E 05 FC */	lwz r0, 0x5fc(r30)
/* 8031A1E4 002E37A4  2C 00 00 00 */	cmpwi r0, 0
/* 8031A1E8 002E37A8  41 82 00 08 */	beq .L_8031A1F0
/* 8031A1EC 002E37AC  48 00 05 75 */	bl __GXSetDirtyState
.L_8031A1F0:
/* 8031A1F0 002E37B0  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8031A1F4 002E37B4  3B E0 00 00 */	li r31, 0
/* 8031A1F8 002E37B8  93 E3 80 00 */	stw r31, 0xCC008000@l(r3)
/* 8031A1FC 002E37BC  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8031A200 002E37C0  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8031A204 002E37C4  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8031A208 002E37C8  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8031A20C 002E37CC  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8031A210 002E37D0  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8031A214 002E37D4  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8031A218 002E37D8  4B FC 09 A9 */	bl PPCSync
/* 8031A21C 002E37DC  7F A3 EB 78 */	mr r3, r29
/* 8031A220 002E37E0  48 03 E7 D1 */	bl OSRestoreInterrupts
/* 8031A224 002E37E4  B3 FE 00 02 */	sth r31, 2(r30)
/* 8031A228 002E37E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8031A22C 002E37EC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8031A230 002E37F0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8031A234 002E37F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031A238 002E37F8  7C 08 03 A6 */	mtlr r0
/* 8031A23C 002E37FC  38 21 00 20 */	addi r1, r1, 0x20
/* 8031A240 002E3800  4E 80 00 20 */	blr 

.balign 16, 0
.global GXReadDrawSync
GXReadDrawSync:
/* 8031A250 002E3810  80 6D B7 90 */	lwz r3, lbl_80667910@sda21(r13)
/* 8031A254 002E3814  A0 63 00 0E */	lhz r3, 0xe(r3)
/* 8031A258 002E3818  4E 80 00 20 */	blr 

.balign 16, 0
.global GXSetDrawDone
GXSetDrawDone:
/* 8031A260 002E3820  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031A264 002E3824  7C 08 02 A6 */	mflr r0
/* 8031A268 002E3828  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031A26C 002E382C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8031A270 002E3830  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8031A274 002E3834  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8031A278 002E3838  48 03 E7 39 */	bl OSDisableInterrupts
/* 8031A27C 002E383C  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 8031A280 002E3840  38 00 00 61 */	li r0, 0x61
/* 8031A284 002E3844  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 8031A288 002E3848  3C 80 45 00 */	lis r4, 0x45000002@ha
/* 8031A28C 002E384C  38 04 00 02 */	addi r0, r4, 0x45000002@l
/* 8031A290 002E3850  83 C2 BC 20 */	lwz r30, lbl_8066BFA0@sda21(r2)
/* 8031A294 002E3854  90 05 80 00 */	stw r0, -0x8000(r5)
/* 8031A298 002E3858  7C 7D 1B 78 */	mr r29, r3
/* 8031A29C 002E385C  80 1E 05 FC */	lwz r0, 0x5fc(r30)
/* 8031A2A0 002E3860  2C 00 00 00 */	cmpwi r0, 0
/* 8031A2A4 002E3864  41 82 00 08 */	beq .L_8031A2AC
/* 8031A2A8 002E3868  48 00 04 B9 */	bl __GXSetDirtyState
.L_8031A2AC:
/* 8031A2AC 002E386C  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8031A2B0 002E3870  3B E0 00 00 */	li r31, 0
/* 8031A2B4 002E3874  93 E3 80 00 */	stw r31, 0xCC008000@l(r3)
/* 8031A2B8 002E3878  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8031A2BC 002E387C  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8031A2C0 002E3880  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8031A2C4 002E3884  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8031A2C8 002E3888  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8031A2CC 002E388C  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8031A2D0 002E3890  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8031A2D4 002E3894  4B FC 08 ED */	bl PPCSync
/* 8031A2D8 002E3898  9B ED B7 D8 */	stb r31, lbl_80667958@sda21(r13)
/* 8031A2DC 002E389C  7F A3 EB 78 */	mr r3, r29
/* 8031A2E0 002E38A0  48 03 E7 11 */	bl OSRestoreInterrupts
/* 8031A2E4 002E38A4  B3 FE 00 02 */	sth r31, 2(r30)
/* 8031A2E8 002E38A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8031A2EC 002E38AC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8031A2F0 002E38B0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8031A2F4 002E38B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031A2F8 002E38B8  7C 08 03 A6 */	mtlr r0
/* 8031A2FC 002E38BC  38 21 00 20 */	addi r1, r1, 0x20
/* 8031A300 002E38C0  4E 80 00 20 */	blr 

.balign 16, 0
.global GXDrawDone
GXDrawDone:
/* 8031A310 002E38D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031A314 002E38D4  7C 08 02 A6 */	mflr r0
/* 8031A318 002E38D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031A31C 002E38DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8031A320 002E38E0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8031A324 002E38E4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8031A328 002E38E8  48 03 E6 89 */	bl OSDisableInterrupts
/* 8031A32C 002E38EC  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 8031A330 002E38F0  38 00 00 61 */	li r0, 0x61
/* 8031A334 002E38F4  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 8031A338 002E38F8  3C 80 45 00 */	lis r4, 0x45000002@ha
/* 8031A33C 002E38FC  38 04 00 02 */	addi r0, r4, 0x45000002@l
/* 8031A340 002E3900  83 A2 BC 20 */	lwz r29, lbl_8066BFA0@sda21(r2)
/* 8031A344 002E3904  90 05 80 00 */	stw r0, -0x8000(r5)
/* 8031A348 002E3908  7C 7E 1B 78 */	mr r30, r3
/* 8031A34C 002E390C  80 1D 05 FC */	lwz r0, 0x5fc(r29)
/* 8031A350 002E3910  2C 00 00 00 */	cmpwi r0, 0
/* 8031A354 002E3914  41 82 00 08 */	beq .L_8031A35C
/* 8031A358 002E3918  48 00 04 09 */	bl __GXSetDirtyState
.L_8031A35C:
/* 8031A35C 002E391C  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8031A360 002E3920  3B E0 00 00 */	li r31, 0
/* 8031A364 002E3924  93 E3 80 00 */	stw r31, 0xCC008000@l(r3)
/* 8031A368 002E3928  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8031A36C 002E392C  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8031A370 002E3930  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8031A374 002E3934  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8031A378 002E3938  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8031A37C 002E393C  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8031A380 002E3940  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8031A384 002E3944  4B FC 08 3D */	bl PPCSync
/* 8031A388 002E3948  9B ED B7 D8 */	stb r31, lbl_80667958@sda21(r13)
/* 8031A38C 002E394C  7F C3 F3 78 */	mr r3, r30
/* 8031A390 002E3950  48 03 E6 61 */	bl OSRestoreInterrupts
/* 8031A394 002E3954  B3 FD 00 02 */	sth r31, 2(r29)
/* 8031A398 002E3958  48 03 E6 19 */	bl OSDisableInterrupts
/* 8031A39C 002E395C  7C 7E 1B 78 */	mr r30, r3
/* 8031A3A0 002E3960  48 00 00 0C */	b .L_8031A3AC
.L_8031A3A4:
/* 8031A3A4 002E3964  38 6D B7 D0 */	addi r3, r13, lbl_80667950@sda21
/* 8031A3A8 002E3968  48 04 22 C9 */	bl OSSleepThread
.L_8031A3AC:
/* 8031A3AC 002E396C  88 0D B7 D8 */	lbz r0, lbl_80667958@sda21(r13)
/* 8031A3B0 002E3970  2C 00 00 00 */	cmpwi r0, 0
/* 8031A3B4 002E3974  41 82 FF F0 */	beq .L_8031A3A4
/* 8031A3B8 002E3978  7F C3 F3 78 */	mr r3, r30
/* 8031A3BC 002E397C  48 03 E6 35 */	bl OSRestoreInterrupts
/* 8031A3C0 002E3980  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031A3C4 002E3984  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8031A3C8 002E3988  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8031A3CC 002E398C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8031A3D0 002E3990  7C 08 03 A6 */	mtlr r0
/* 8031A3D4 002E3994  38 21 00 20 */	addi r1, r1, 0x20
/* 8031A3D8 002E3998  4E 80 00 20 */	blr 

.balign 16, 0
.global GXPixModeSync
GXPixModeSync:
/* 8031A3E0 002E39A0  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 8031A3E4 002E39A4  38 00 00 61 */	li r0, 0x61
/* 8031A3E8 002E39A8  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 8031A3EC 002E39AC  38 00 00 00 */	li r0, 0
/* 8031A3F0 002E39B0  80 A2 BC 20 */	lwz r5, lbl_8066BFA0@sda21(r2)
/* 8031A3F4 002E39B4  80 65 02 2C */	lwz r3, 0x22c(r5)
/* 8031A3F8 002E39B8  90 64 80 00 */	stw r3, -0x8000(r4)
/* 8031A3FC 002E39BC  B0 05 00 02 */	sth r0, 2(r5)
/* 8031A400 002E39C0  4E 80 00 20 */	blr 

.balign 16, 0
.global GXPokeAlphaMode
GXPokeAlphaMode:
/* 8031A410 002E39D0  80 AD B7 90 */	lwz r5, lbl_80667910@sda21(r13)
/* 8031A414 002E39D4  50 64 40 2E */	rlwimi r4, r3, 8, 0, 0x17
/* 8031A418 002E39D8  B0 85 00 06 */	sth r4, 6(r5)
/* 8031A41C 002E39DC  4E 80 00 20 */	blr 

.balign 16, 0
.global GXPokeAlphaRead
GXPokeAlphaRead:
/* 8031A420 002E39E0  80 8D B7 90 */	lwz r4, lbl_80667910@sda21(r13)
/* 8031A424 002E39E4  38 00 00 00 */	li r0, 0
/* 8031A428 002E39E8  50 60 07 BE */	rlwimi r0, r3, 0, 0x1e, 0x1f
/* 8031A42C 002E39EC  60 00 00 04 */	ori r0, r0, 4
/* 8031A430 002E39F0  B0 04 00 08 */	sth r0, 8(r4)
/* 8031A434 002E39F4  4E 80 00 20 */	blr 

.balign 16, 0
.global GXPokeAlphaUpdate
GXPokeAlphaUpdate:
/* 8031A440 002E3A00  80 8D B7 90 */	lwz r4, lbl_80667910@sda21(r13)
/* 8031A444 002E3A04  A0 04 00 02 */	lhz r0, 2(r4)
/* 8031A448 002E3A08  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8031A44C 002E3A0C  B0 04 00 02 */	sth r0, 2(r4)
/* 8031A450 002E3A10  4E 80 00 20 */	blr 

.balign 16, 0
.global GXPokeBlendMode
GXPokeBlendMode:
/* 8031A460 002E3A20  80 ED B7 90 */	lwz r7, lbl_80667910@sda21(r13)
/* 8031A464 002E3A24  2C 03 00 01 */	cmpwi r3, 1
/* 8031A468 002E3A28  38 00 00 00 */	li r0, 0
/* 8031A46C 002E3A2C  A1 27 00 02 */	lhz r9, 2(r7)
/* 8031A470 002E3A30  41 82 00 0C */	beq .L_8031A47C
/* 8031A474 002E3A34  2C 03 00 03 */	cmpwi r3, 3
/* 8031A478 002E3A38  40 82 00 08 */	bne .L_8031A480
.L_8031A47C:
/* 8031A47C 002E3A3C  38 00 00 01 */	li r0, 1
.L_8031A480:
/* 8031A480 002E3A40  38 E3 FF FD */	addi r7, r3, -3
/* 8031A484 002E3A44  50 09 07 FE */	rlwimi r9, r0, 0, 0x1f, 0x1f
/* 8031A488 002E3A48  38 03 FF FE */	addi r0, r3, -2
/* 8031A48C 002E3A4C  80 6D B7 90 */	lwz r3, lbl_80667910@sda21(r13)
/* 8031A490 002E3A50  7C E8 00 34 */	cntlzw r8, r7
/* 8031A494 002E3A54  7C 07 00 34 */	cntlzw r7, r0
/* 8031A498 002E3A58  38 00 00 41 */	li r0, 0x41
/* 8031A49C 002E3A5C  51 09 35 28 */	rlwimi r9, r8, 6, 0x14, 0x14
/* 8031A4A0 002E3A60  50 E9 E7 BC */	rlwimi r9, r7, 0x1c, 0x1e, 0x1e
/* 8031A4A4 002E3A64  50 C9 64 26 */	rlwimi r9, r6, 0xc, 0x10, 0x13
/* 8031A4A8 002E3A68  50 89 45 6E */	rlwimi r9, r4, 8, 0x15, 0x17
/* 8031A4AC 002E3A6C  50 A9 2E 34 */	rlwimi r9, r5, 5, 0x18, 0x1a
/* 8031A4B0 002E3A70  50 09 C0 0E */	rlwimi r9, r0, 0x18, 0, 7
/* 8031A4B4 002E3A74  B1 23 00 02 */	sth r9, 2(r3)
/* 8031A4B8 002E3A78  4E 80 00 20 */	blr 

.balign 16, 0
.global GXPokeColorUpdate
GXPokeColorUpdate:
/* 8031A4C0 002E3A80  80 8D B7 90 */	lwz r4, lbl_80667910@sda21(r13)
/* 8031A4C4 002E3A84  A0 04 00 02 */	lhz r0, 2(r4)
/* 8031A4C8 002E3A88  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8031A4CC 002E3A8C  B0 04 00 02 */	sth r0, 2(r4)
/* 8031A4D0 002E3A90  4E 80 00 20 */	blr 

.balign 16, 0
.global GXPokeDstAlpha
GXPokeDstAlpha:
/* 8031A4E0 002E3AA0  80 AD B7 90 */	lwz r5, lbl_80667910@sda21(r13)
/* 8031A4E4 002E3AA4  38 00 00 00 */	li r0, 0
/* 8031A4E8 002E3AA8  50 80 06 3E */	rlwimi r0, r4, 0, 0x18, 0x1f
/* 8031A4EC 002E3AAC  50 60 45 EE */	rlwimi r0, r3, 8, 0x17, 0x17
/* 8031A4F0 002E3AB0  B0 05 00 04 */	sth r0, 4(r5)
/* 8031A4F4 002E3AB4  4E 80 00 20 */	blr 

.balign 16, 0
.global GXPokeDither
GXPokeDither:
/* 8031A500 002E3AC0  80 8D B7 90 */	lwz r4, lbl_80667910@sda21(r13)
/* 8031A504 002E3AC4  A0 04 00 02 */	lhz r0, 2(r4)
/* 8031A508 002E3AC8  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 8031A50C 002E3ACC  B0 04 00 02 */	sth r0, 2(r4)
/* 8031A510 002E3AD0  4E 80 00 20 */	blr 

.balign 16, 0
.global GXPokeZMode
GXPokeZMode:
/* 8031A520 002E3AE0  80 CD B7 90 */	lwz r6, lbl_80667910@sda21(r13)
/* 8031A524 002E3AE4  38 00 00 00 */	li r0, 0
/* 8031A528 002E3AE8  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 8031A52C 002E3AEC  50 80 0F 3C */	rlwimi r0, r4, 1, 0x1c, 0x1e
/* 8031A530 002E3AF0  50 A0 26 F6 */	rlwimi r0, r5, 4, 0x1b, 0x1b
/* 8031A534 002E3AF4  B0 06 00 00 */	sth r0, 0(r6)
/* 8031A538 002E3AF8  4E 80 00 20 */	blr 

.balign 16, 0
.global GXSetDrawSyncCallback
GXSetDrawSyncCallback:
/* 8031A540 002E3B00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031A544 002E3B04  7C 08 02 A6 */	mflr r0
/* 8031A548 002E3B08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031A54C 002E3B0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8031A550 002E3B10  93 C1 00 08 */	stw r30, 8(r1)
/* 8031A554 002E3B14  7C 7E 1B 78 */	mr r30, r3
/* 8031A558 002E3B18  83 ED B7 E0 */	lwz r31, lbl_80667960@sda21(r13)
/* 8031A55C 002E3B1C  48 03 E4 55 */	bl OSDisableInterrupts
/* 8031A560 002E3B20  93 CD B7 E0 */	stw r30, lbl_80667960@sda21(r13)
/* 8031A564 002E3B24  48 03 E4 8D */	bl OSRestoreInterrupts
/* 8031A568 002E3B28  7F E3 FB 78 */	mr r3, r31
/* 8031A56C 002E3B2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031A570 002E3B30  83 C1 00 08 */	lwz r30, 8(r1)
/* 8031A574 002E3B34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031A578 002E3B38  7C 08 03 A6 */	mtlr r0
/* 8031A57C 002E3B3C  38 21 00 10 */	addi r1, r1, 0x10
/* 8031A580 002E3B40  4E 80 00 20 */	blr

.balign 16, 0
.global GXTokenInterruptHandler
GXTokenInterruptHandler:
/* 8031A590 002E3B50  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 8031A594 002E3B54  7C 08 02 A6 */	mflr r0
/* 8031A598 002E3B58  90 01 02 E4 */	stw r0, 0x2e4(r1)
/* 8031A59C 002E3B5C  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 8031A5A0 002E3B60  93 C1 02 D8 */	stw r30, 0x2d8(r1)
/* 8031A5A4 002E3B64  7C 9E 23 78 */	mr r30, r4
/* 8031A5A8 002E3B68  80 0D B7 E0 */	lwz r0, lbl_80667960@sda21(r13)
/* 8031A5AC 002E3B6C  80 6D B7 90 */	lwz r3, lbl_80667910@sda21(r13)
/* 8031A5B0 002E3B70  2C 00 00 00 */	cmpwi r0, 0
/* 8031A5B4 002E3B74  A3 E3 00 0E */	lhz r31, 0xe(r3)
/* 8031A5B8 002E3B78  41 82 00 34 */	beq .L_8031A5EC
/* 8031A5BC 002E3B7C  38 61 00 08 */	addi r3, r1, 8
/* 8031A5C0 002E3B80  48 03 A5 01 */	bl OSClearContext
/* 8031A5C4 002E3B84  38 61 00 08 */	addi r3, r1, 8
/* 8031A5C8 002E3B88  48 03 A2 B9 */	bl OSSetCurrentContext
/* 8031A5CC 002E3B8C  81 8D B7 E0 */	lwz r12, lbl_80667960@sda21(r13)
/* 8031A5D0 002E3B90  7F E3 FB 78 */	mr r3, r31
/* 8031A5D4 002E3B94  7D 89 03 A6 */	mtctr r12
/* 8031A5D8 002E3B98  4E 80 04 21 */	bctrl 
/* 8031A5DC 002E3B9C  38 61 00 08 */	addi r3, r1, 8
/* 8031A5E0 002E3BA0  48 03 A4 E1 */	bl OSClearContext
/* 8031A5E4 002E3BA4  7F C3 F3 78 */	mr r3, r30
/* 8031A5E8 002E3BA8  48 03 A2 99 */	bl OSSetCurrentContext
.L_8031A5EC:
/* 8031A5EC 002E3BAC  80 6D B7 90 */	lwz r3, lbl_80667910@sda21(r13)
/* 8031A5F0 002E3BB0  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8031A5F4 002E3BB4  60 00 00 04 */	ori r0, r0, 4
/* 8031A5F8 002E3BB8  B0 03 00 0A */	sth r0, 0xa(r3)
/* 8031A5FC 002E3BBC  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 8031A600 002E3BC0  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 8031A604 002E3BC4  83 C1 02 D8 */	lwz r30, 0x2d8(r1)
/* 8031A608 002E3BC8  7C 08 03 A6 */	mtlr r0
/* 8031A60C 002E3BCC  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 8031A610 002E3BD0  4E 80 00 20 */	blr 

.balign 16, 0
.global GXSetDrawDoneCallback
GXSetDrawDoneCallback:
/* 8031A620 002E3BE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031A624 002E3BE4  7C 08 02 A6 */	mflr r0
/* 8031A628 002E3BE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031A62C 002E3BEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8031A630 002E3BF0  93 C1 00 08 */	stw r30, 8(r1)
/* 8031A634 002E3BF4  7C 7E 1B 78 */	mr r30, r3
/* 8031A638 002E3BF8  83 ED B7 DC */	lwz r31, lbl_8066795C@sda21(r13)
/* 8031A63C 002E3BFC  48 03 E3 75 */	bl OSDisableInterrupts
/* 8031A640 002E3C00  93 CD B7 DC */	stw r30, lbl_8066795C@sda21(r13)
/* 8031A644 002E3C04  48 03 E3 AD */	bl OSRestoreInterrupts
/* 8031A648 002E3C08  7F E3 FB 78 */	mr r3, r31
/* 8031A64C 002E3C0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031A650 002E3C10  83 C1 00 08 */	lwz r30, 8(r1)
/* 8031A654 002E3C14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031A658 002E3C18  7C 08 03 A6 */	mtlr r0
/* 8031A65C 002E3C1C  38 21 00 10 */	addi r1, r1, 0x10
/* 8031A660 002E3C20  4E 80 00 20 */	blr

.balign 16, 0
.global GXFinishInterruptHandler
GXFinishInterruptHandler:
/* 8031A670 002E3C30  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 8031A674 002E3C34  7C 08 02 A6 */	mflr r0
/* 8031A678 002E3C38  38 60 00 01 */	li r3, 1
/* 8031A67C 002E3C3C  90 01 02 E4 */	stw r0, 0x2e4(r1)
/* 8031A680 002E3C40  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 8031A684 002E3C44  7C 9F 23 78 */	mr r31, r4
/* 8031A688 002E3C48  80 AD B7 90 */	lwz r5, lbl_80667910@sda21(r13)
/* 8031A68C 002E3C4C  A0 05 00 0A */	lhz r0, 0xa(r5)
/* 8031A690 002E3C50  60 00 00 08 */	ori r0, r0, 8
/* 8031A694 002E3C54  B0 05 00 0A */	sth r0, 0xa(r5)
/* 8031A698 002E3C58  80 0D B7 DC */	lwz r0, lbl_8066795C@sda21(r13)
/* 8031A69C 002E3C5C  98 6D B7 D8 */	stb r3, lbl_80667958@sda21(r13)
/* 8031A6A0 002E3C60  2C 00 00 00 */	cmpwi r0, 0
/* 8031A6A4 002E3C64  41 82 00 30 */	beq .L_8031A6D4
/* 8031A6A8 002E3C68  38 61 00 08 */	addi r3, r1, 8
/* 8031A6AC 002E3C6C  48 03 A4 15 */	bl OSClearContext
/* 8031A6B0 002E3C70  38 61 00 08 */	addi r3, r1, 8
/* 8031A6B4 002E3C74  48 03 A1 CD */	bl OSSetCurrentContext
/* 8031A6B8 002E3C78  81 8D B7 DC */	lwz r12, lbl_8066795C@sda21(r13)
/* 8031A6BC 002E3C7C  7D 89 03 A6 */	mtctr r12
/* 8031A6C0 002E3C80  4E 80 04 21 */	bctrl 
/* 8031A6C4 002E3C84  38 61 00 08 */	addi r3, r1, 8
/* 8031A6C8 002E3C88  48 03 A3 F9 */	bl OSClearContext
/* 8031A6CC 002E3C8C  7F E3 FB 78 */	mr r3, r31
/* 8031A6D0 002E3C90  48 03 A1 B1 */	bl OSSetCurrentContext
.L_8031A6D4:
/* 8031A6D4 002E3C94  38 6D B7 D0 */	addi r3, r13, lbl_80667950@sda21
/* 8031A6D8 002E3C98  48 04 20 89 */	bl OSWakeupThread
/* 8031A6DC 002E3C9C  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 8031A6E0 002E3CA0  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 8031A6E4 002E3CA4  7C 08 03 A6 */	mtlr r0
/* 8031A6E8 002E3CA8  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 8031A6EC 002E3CAC  4E 80 00 20 */	blr 

.balign 16, 0
.global __GXPEInit
__GXPEInit:
/* 8031A6F0 002E3CB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031A6F4 002E3CB4  7C 08 02 A6 */	mflr r0
/* 8031A6F8 002E3CB8  3C 80 80 32 */	lis r4, GXTokenInterruptHandler@ha
/* 8031A6FC 002E3CBC  38 60 00 12 */	li r3, 0x12
/* 8031A700 002E3CC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031A704 002E3CC4  38 84 A5 90 */	addi r4, r4, GXTokenInterruptHandler@l
/* 8031A708 002E3CC8  48 03 E3 19 */	bl __OSSetInterruptHandler
/* 8031A70C 002E3CCC  3C 80 80 32 */	lis r4, GXFinishInterruptHandler@ha
/* 8031A710 002E3CD0  38 60 00 13 */	li r3, 0x13
/* 8031A714 002E3CD4  38 84 A6 70 */	addi r4, r4, GXFinishInterruptHandler@l
/* 8031A718 002E3CD8  48 03 E3 09 */	bl __OSSetInterruptHandler
/* 8031A71C 002E3CDC  38 6D B7 D0 */	addi r3, r13, lbl_80667950@sda21
/* 8031A720 002E3CE0  48 04 0E B1 */	bl OSInitThreadQueue
/* 8031A724 002E3CE4  38 60 20 00 */	li r3, 0x2000
/* 8031A728 002E3CE8  48 03 E6 D9 */	bl __OSUnmaskInterrupts
/* 8031A72C 002E3CEC  38 60 10 00 */	li r3, 0x1000
/* 8031A730 002E3CF0  48 03 E6 D1 */	bl __OSUnmaskInterrupts
/* 8031A734 002E3CF4  80 6D B7 90 */	lwz r3, lbl_80667910@sda21(r13)
/* 8031A738 002E3CF8  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8031A73C 002E3CFC  60 00 00 0F */	ori r0, r0, 0xf
/* 8031A740 002E3D00  B0 03 00 0A */	sth r0, 0xa(r3)
/* 8031A744 002E3D04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031A748 002E3D08  7C 08 03 A6 */	mtlr r0
/* 8031A74C 002E3D0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8031A750 002E3D10  4E 80 00 20 */	blr 

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.global lbl_80667950
lbl_80667950:
	.skip 0x8
.global lbl_80667958
lbl_80667958:
	.skip 0x4
.global lbl_8066795C
lbl_8066795C:
	.skip 0x4
.global lbl_80667960
lbl_80667960:
	.skip 0x8
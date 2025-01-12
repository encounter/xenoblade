.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global MPVCMC_InitObj
MPVCMC_InitObj:
/* 803A460C 0036DBCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A4610 0036DBD0  7C 08 02 A6 */	mflr r0
/* 803A4614 0036DBD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A4618 0036DBD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A461C 0036DBDC  7C 7F 1B 78 */	mr r31, r3
/* 803A4620 0036DBE0  38 63 0A 4C */	addi r3, r3, 0xa4c
/* 803A4624 0036DBE4  48 00 43 E9 */	bl MPVMC08_Init
/* 803A4628 0036DBE8  38 7F 0A 4C */	addi r3, r31, 0xa4c
/* 803A462C 0036DBEC  48 00 98 31 */	bl MPVMC16_Init
/* 803A4630 0036DBF0  7F E3 FB 78 */	mr r3, r31
/* 803A4634 0036DBF4  48 00 00 19 */	bl mpvcmc_InitMcOiTa
/* 803A4638 0036DBF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A463C 0036DBFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A4640 0036DC00  7C 08 03 A6 */	mtlr r0
/* 803A4644 0036DC04  38 21 00 10 */	addi r1, r1, 0x10
/* 803A4648 0036DC08  4E 80 00 20 */	blr 

.global mpvcmc_InitMcOiTa
mpvcmc_InitMcOiTa:
/* 803A464C 0036DC0C  80 03 0B 24 */	lwz r0, 0xb24(r3)
/* 803A4650 0036DC10  38 A3 0A D8 */	addi r5, r3, 0xad8
/* 803A4654 0036DC14  38 C3 03 80 */	addi r6, r3, 0x380
/* 803A4658 0036DC18  38 80 00 04 */	li r4, 4
/* 803A465C 0036DC1C  2C 00 00 00 */	cmpwi r0, 0
/* 803A4660 0036DC20  40 82 00 08 */	bne .L_803A4668
/* 803A4664 0036DC24  38 80 FF FF */	li r4, -1
.L_803A4668:
/* 803A4668 0036DC28  38 00 00 08 */	li r0, 8
/* 803A466C 0036DC2C  90 83 0A D4 */	stw r4, 0xad4(r3)
/* 803A4670 0036DC30  90 C5 00 00 */	stw r6, 0(r5)
/* 803A4674 0036DC34  90 C5 00 08 */	stw r6, 8(r5)
/* 803A4678 0036DC38  90 C5 00 10 */	stw r6, 0x10(r5)
/* 803A467C 0036DC3C  90 C5 00 18 */	stw r6, 0x18(r5)
/* 803A4680 0036DC40  90 C5 00 20 */	stw r6, 0x20(r5)
/* 803A4684 0036DC44  90 C5 00 28 */	stw r6, 0x28(r5)
/* 803A4688 0036DC48  90 05 00 04 */	stw r0, 4(r5)
/* 803A468C 0036DC4C  90 05 00 0C */	stw r0, 0xc(r5)
/* 803A4690 0036DC50  90 05 00 14 */	stw r0, 0x14(r5)
/* 803A4694 0036DC54  90 05 00 1C */	stw r0, 0x1c(r5)
/* 803A4698 0036DC58  90 05 00 24 */	stw r0, 0x24(r5)
/* 803A469C 0036DC5C  90 05 00 2C */	stw r0, 0x2c(r5)
/* 803A46A0 0036DC60  4E 80 00 20 */	blr 

.global MPVCMC_InitMcOiRt
MPVCMC_InitMcOiRt:
/* 803A46A4 0036DC64  80 03 0B 24 */	lwz r0, 0xb24(r3)
/* 803A46A8 0036DC68  38 A3 0A A4 */	addi r5, r3, 0xaa4
/* 803A46AC 0036DC6C  38 80 00 04 */	li r4, 4
/* 803A46B0 0036DC70  2C 00 00 00 */	cmpwi r0, 0
/* 803A46B4 0036DC74  40 82 00 08 */	bne .L_803A46BC
/* 803A46B8 0036DC78  38 80 FF FF */	li r4, -1
.L_803A46BC:
/* 803A46BC 0036DC7C  A8 03 0C 0E */	lha r0, 0xc0e(r3)
/* 803A46C0 0036DC80  A8 C3 0C 0C */	lha r6, 0xc0c(r3)
/* 803A46C4 0036DC84  90 83 0A A0 */	stw r4, 0xaa0(r3)
/* 803A46C8 0036DC88  90 C5 00 04 */	stw r6, 4(r5)
/* 803A46CC 0036DC8C  90 C5 00 0C */	stw r6, 0xc(r5)
/* 803A46D0 0036DC90  90 05 00 14 */	stw r0, 0x14(r5)
/* 803A46D4 0036DC94  90 05 00 1C */	stw r0, 0x1c(r5)
/* 803A46D8 0036DC98  90 05 00 24 */	stw r0, 0x24(r5)
/* 803A46DC 0036DC9C  90 05 00 2C */	stw r0, 0x2c(r5)
/* 803A46E0 0036DCA0  4E 80 00 20 */	blr 

.global MPVCMC_SetCcnt
MPVCMC_SetCcnt:
/* 803A46E4 0036DCA4  80 03 0B 24 */	lwz r0, 0xb24(r3)
/* 803A46E8 0036DCA8  38 80 00 04 */	li r4, 4
/* 803A46EC 0036DCAC  2C 00 00 00 */	cmpwi r0, 0
/* 803A46F0 0036DCB0  40 82 00 08 */	bne .L_803A46F8
/* 803A46F4 0036DCB4  38 80 FF FF */	li r4, -1
.L_803A46F8:
/* 803A46F8 0036DCB8  90 83 0A D4 */	stw r4, 0xad4(r3)
/* 803A46FC 0036DCBC  90 83 0A A0 */	stw r4, 0xaa0(r3)
/* 803A4700 0036DCC0  4E 80 00 20 */	blr 
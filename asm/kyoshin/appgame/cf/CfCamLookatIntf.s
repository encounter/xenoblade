.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900


.global CamLookatIntf_update
CamLookatIntf_update:
/* 8006B508 00034AC8  4E 80 00 20 */	blr 

.global CamLookatIntf_setPos
CamLookatIntf_setPos:
/* 8006B50C 00034ACC  80 C5 00 00 */	lwz r6, 0(r5)
/* 8006B510 00034AD0  80 65 00 04 */	lwz r3, 4(r5)
/* 8006B514 00034AD4  80 05 00 08 */	lwz r0, 8(r5)
/* 8006B518 00034AD8  C0 02 87 70 */	lfs f0, float_80668AF0@sda21(r2)
/* 8006B51C 00034ADC  90 C4 00 28 */	stw r6, 0x28(r4)
/* 8006B520 00034AE0  90 64 00 2C */	stw r3, 0x2c(r4)
/* 8006B524 00034AE4  90 04 00 30 */	stw r0, 0x30(r4)
/* 8006B528 00034AE8  90 C4 02 74 */	stw r6, 0x274(r4)
/* 8006B52C 00034AEC  90 64 02 78 */	stw r3, 0x278(r4)
/* 8006B530 00034AF0  90 04 02 7C */	stw r0, 0x27c(r4)
/* 8006B534 00034AF4  D0 04 02 64 */	stfs f0, 0x264(r4)
/* 8006B538 00034AF8  4E 80 00 20 */	blr 

.global CamLookatIntf_setDir
CamLookatIntf_setDir:
/* 8006B53C 00034AFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8006B540 00034B00  7C 08 02 A6 */	mflr r0
/* 8006B544 00034B04  90 01 00 24 */	stw r0, 0x24(r1)
/* 8006B548 00034B08  38 61 00 08 */	addi r3, r1, 8
/* 8006B54C 00034B0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8006B550 00034B10  7C BF 2B 78 */	mr r31, r5
/* 8006B554 00034B14  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8006B558 00034B18  7C 9E 23 78 */	mr r30, r4
/* 8006B55C 00034B1C  C0 24 02 84 */	lfs f1, 0x284(r4)
/* 8006B560 00034B20  38 84 02 68 */	addi r4, r4, 0x268
/* 8006B564 00034B24  48 00 8F 25 */	bl func_80074488
/* 8006B568 00034B28  80 61 00 08 */	lwz r3, 8(r1)
/* 8006B56C 00034B2C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8006B570 00034B30  90 1E 02 78 */	stw r0, 0x278(r30)
/* 8006B574 00034B34  90 7E 02 74 */	stw r3, 0x274(r30)
/* 8006B578 00034B38  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8006B57C 00034B3C  90 1E 02 7C */	stw r0, 0x27c(r30)
/* 8006B580 00034B40  80 7F 00 00 */	lwz r3, 0(r31)
/* 8006B584 00034B44  80 1F 00 04 */	lwz r0, 4(r31)
/* 8006B588 00034B48  90 1E 02 60 */	stw r0, 0x260(r30)
/* 8006B58C 00034B4C  90 7E 02 5C */	stw r3, 0x25c(r30)
/* 8006B590 00034B50  80 1F 00 08 */	lwz r0, 8(r31)
/* 8006B594 00034B54  90 1E 02 64 */	stw r0, 0x264(r30)
/* 8006B598 00034B58  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8006B59C 00034B5C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8006B5A0 00034B60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8006B5A4 00034B64  7C 08 03 A6 */	mtlr r0
/* 8006B5A8 00034B68  38 21 00 20 */	addi r1, r1, 0x20
/* 8006B5AC 00034B6C  4E 80 00 20 */	blr 

.global CamLookatIntf_setLookat
CamLookatIntf_setLookat:
/* 8006B5B0 00034B70  80 C5 00 00 */	lwz r6, 0(r5)
/* 8006B5B4 00034B74  80 65 00 04 */	lwz r3, 4(r5)
/* 8006B5B8 00034B78  80 05 00 08 */	lwz r0, 8(r5)
/* 8006B5BC 00034B7C  C0 02 87 70 */	lfs f0, float_80668AF0@sda21(r2)
/* 8006B5C0 00034B80  90 C4 02 68 */	stw r6, 0x268(r4)
/* 8006B5C4 00034B84  90 64 02 6C */	stw r3, 0x26c(r4)
/* 8006B5C8 00034B88  90 04 02 70 */	stw r0, 0x270(r4)
/* 8006B5CC 00034B8C  D0 04 02 64 */	stfs f0, 0x264(r4)
/* 8006B5D0 00034B90  4E 80 00 20 */	blr 

.section extab_, "a"  # 0x800066E0 - 0x80021020

.global lbl_80008098
lbl_80008098:
	.4byte 0x100A0000
	.4byte 0

.global lbl_800080A0
lbl_800080A0:
	.4byte 0x100A0000
	.4byte 0


.section extabindex_, "a"  # 0x80021020 - 0x80039220

	.4byte CamLookatIntf_setDir
	.4byte 0x00000074
	.4byte lbl_80008098
	.4byte CfCamTargetIntf_setDir
	.4byte 0x00000074
	.4byte lbl_800080A0

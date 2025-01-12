.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_800AAD28
func_800AAD28:
/* 800AAD28 000742E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800AAD2C 000742EC  7C 08 02 A6 */	mflr r0
/* 800AAD30 000742F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800AAD34 000742F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800AAD38 000742F8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800AAD3C 000742FC  7C 9E 23 78 */	mr r30, r4
/* 800AAD40 00074300  C0 24 00 B8 */	lfs f1, 0xb8(r4)
/* 800AAD44 00074304  48 20 F2 E9 */	bl __cvt_fp2unsigned
/* 800AAD48 00074308  81 9E 00 00 */	lwz r12, 0(r30)
/* 800AAD4C 0007430C  7C 7F 1B 78 */	mr r31, r3
/* 800AAD50 00074310  7F C3 F3 78 */	mr r3, r30
/* 800AAD54 00074314  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 800AAD58 00074318  7D 89 03 A6 */	mtctr r12
/* 800AAD5C 0007431C  4E 80 04 21 */	bctrl 
/* 800AAD60 00074320  3C 00 43 30 */	lis r0, 0x4330
/* 800AAD64 00074324  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800AAD68 00074328  C8 22 8E 68 */	lfd f1, double_806691E8@sda21(r2)
/* 800AAD6C 0007432C  90 01 00 08 */	stw r0, 8(r1)
/* 800AAD70 00074330  C8 01 00 08 */	lfd f0, 8(r1)
/* 800AAD74 00074334  EC 20 08 28 */	fsubs f1, f0, f1
/* 800AAD78 00074338  4B FF B7 11 */	bl func_800A6488
/* 800AAD7C 0007433C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800AAD80 00074340  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800AAD84 00074344  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800AAD88 00074348  7C 08 03 A6 */	mtlr r0
/* 800AAD8C 0007434C  38 21 00 20 */	addi r1, r1, 0x20
/* 800AAD90 00074350  4E 80 00 20 */	blr 

.global func_800AAD94
func_800AAD94:
/* 800AAD94 00074354  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800AAD98 00074358  7C 08 02 A6 */	mflr r0
/* 800AAD9C 0007435C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800AADA0 00074360  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800AADA4 00074364  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800AADA8 00074368  7C DE 33 78 */	mr r30, r6
/* 800AADAC 0007436C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800AADB0 00074370  7C BD 2B 78 */	mr r29, r5
/* 800AADB4 00074374  93 81 00 10 */	stw r28, 0x10(r1)
/* 800AADB8 00074378  7C 9C 23 78 */	mr r28, r4
/* 800AADBC 0007437C  C0 24 00 B8 */	lfs f1, 0xb8(r4)
/* 800AADC0 00074380  48 20 F2 6D */	bl __cvt_fp2unsigned
/* 800AADC4 00074384  81 9C 00 00 */	lwz r12, 0(r28)
/* 800AADC8 00074388  7C 7F 1B 78 */	mr r31, r3
/* 800AADCC 0007438C  7F 83 E3 78 */	mr r3, r28
/* 800AADD0 00074390  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 800AADD4 00074394  7D 89 03 A6 */	mtctr r12
/* 800AADD8 00074398  4E 80 04 21 */	bctrl 
/* 800AADDC 0007439C  3C 00 43 30 */	lis r0, 0x4330
/* 800AADE0 000743A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800AADE4 000743A4  7C 64 1B 78 */	mr r4, r3
/* 800AADE8 000743A8  C8 22 8E 68 */	lfd f1, double_806691E8@sda21(r2)
/* 800AADEC 000743AC  90 01 00 08 */	stw r0, 8(r1)
/* 800AADF0 000743B0  7F A3 EB 78 */	mr r3, r29
/* 800AADF4 000743B4  7F C5 F3 78 */	mr r5, r30
/* 800AADF8 000743B8  C8 01 00 08 */	lfd f0, 8(r1)
/* 800AADFC 000743BC  EC 20 08 28 */	fsubs f1, f0, f1
/* 800AAE00 000743C0  4B FF A9 39 */	bl func_800A5738
/* 800AAE04 000743C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800AAE08 000743C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800AAE0C 000743CC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800AAE10 000743D0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800AAE14 000743D4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800AAE18 000743D8  7C 08 03 A6 */	mtlr r0
/* 800AAE1C 000743DC  38 21 00 20 */	addi r1, r1, 0x20
/* 800AAE20 000743E0  4E 80 00 20 */	blr 

.section extab, "a"  # 0x800066E0 - 0x80021020

.global lbl_80009384
lbl_80009384:
	.4byte 0x100A0000
	.4byte 0

.global lbl_8000938C
lbl_8000938C:
	.4byte 0x200A0000
	.4byte 0


.section extabindex, "a"  # 0x80021020 - 0x80039220

	.4byte func_800AAD28
	.4byte 0x0000006C
	.4byte lbl_80009384
	.4byte func_800AAD94
	.4byte 0x00000090
	.4byte lbl_8000938C
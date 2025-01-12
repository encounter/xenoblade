.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_800AB2E4
func_800AB2E4:
/* 800AB2E4 000748A4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800AB2E8 000748A8  7C 08 02 A6 */	mflr r0
/* 800AB2EC 000748AC  C0 62 8E 58 */	lfs f3, float_806691D8@sda21(r2)
/* 800AB2F0 000748B0  90 01 00 44 */	stw r0, 0x44(r1)
/* 800AB2F4 000748B4  C0 42 8E 78 */	lfs f2, float_806691F8@sda21(r2)
/* 800AB2F8 000748B8  C0 22 8E 5C */	lfs f1, float_806691DC@sda21(r2)
/* 800AB2FC 000748BC  C0 02 8E 7C */	lfs f0, float_806691FC@sda21(r2)
/* 800AB300 000748C0  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 800AB304 000748C4  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 800AB308 000748C8  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 800AB30C 000748CC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800AB310 000748D0  80 04 00 94 */	lwz r0, 0x94(r4)
/* 800AB314 000748D4  2C 00 00 01 */	cmpwi r0, 1
/* 800AB318 000748D8  40 82 00 3C */	bne .L_800AB354
/* 800AB31C 000748DC  C0 02 8E 74 */	lfs f0, float_806691F4@sda21(r2)
/* 800AB320 000748E0  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 800AB324 000748E4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 800AB328 000748E8  80 C1 00 18 */	lwz r6, 0x18(r1)
/* 800AB32C 000748EC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 800AB330 000748F0  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 800AB334 000748F4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800AB338 000748F8  80 61 00 20 */	lwz r3, 0x20(r1)
/* 800AB33C 000748FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800AB340 00074900  90 C1 00 28 */	stw r6, 0x28(r1)
/* 800AB344 00074904  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 800AB348 00074908  90 61 00 30 */	stw r3, 0x30(r1)
/* 800AB34C 0007490C  90 01 00 34 */	stw r0, 0x34(r1)
/* 800AB350 00074910  48 00 00 44 */	b .L_800AB394
.L_800AB354:
/* 800AB354 00074914  2C 00 00 06 */	cmpwi r0, 6
/* 800AB358 00074918  40 82 00 3C */	bne .L_800AB394
/* 800AB35C 0007491C  C0 22 8E 90 */	lfs f1, float_80669210@sda21(r2)
/* 800AB360 00074920  C0 02 8E 74 */	lfs f0, float_806691F4@sda21(r2)
/* 800AB364 00074924  D0 61 00 08 */	stfs f3, 8(r1)
/* 800AB368 00074928  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800AB36C 0007492C  80 C1 00 08 */	lwz r6, 8(r1)
/* 800AB370 00074930  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800AB374 00074934  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 800AB378 00074938  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800AB37C 0007493C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800AB380 00074940  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AB384 00074944  90 C1 00 28 */	stw r6, 0x28(r1)
/* 800AB388 00074948  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 800AB38C 0007494C  90 61 00 30 */	stw r3, 0x30(r1)
/* 800AB390 00074950  90 01 00 34 */	stw r0, 0x34(r1)
.L_800AB394:
/* 800AB394 00074954  C0 24 00 B8 */	lfs f1, 0xb8(r4)
/* 800AB398 00074958  38 64 00 A0 */	addi r3, r4, 0xa0
/* 800AB39C 0007495C  38 A1 00 28 */	addi r5, r1, 0x28
/* 800AB3A0 00074960  38 84 00 AC */	addi r4, r4, 0xac
/* 800AB3A4 00074964  4B FF C2 51 */	bl func_800A75F4
/* 800AB3A8 00074968  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800AB3AC 0007496C  7C 08 03 A6 */	mtlr r0
/* 800AB3B0 00074970  38 21 00 40 */	addi r1, r1, 0x40
/* 800AB3B4 00074974  4E 80 00 20 */	blr 

.global func_800AB3B8
func_800AB3B8:
/* 800AB3B8 00074978  C0 04 00 B8 */	lfs f0, 0xb8(r4)
/* 800AB3BC 0007497C  7C A3 2B 78 */	mr r3, r5
/* 800AB3C0 00074980  38 A4 00 AC */	addi r5, r4, 0xac
/* 800AB3C4 00074984  38 84 00 A0 */	addi r4, r4, 0xa0
/* 800AB3C8 00074988  EC 20 08 2A */	fadds f1, f0, f1
/* 800AB3CC 0007498C  4B FF 98 7C */	b func_800A4C48

.section extab, "a"  # 0x800066E0 - 0x80021020

.global lbl_800093BC
lbl_800093BC:
	.4byte 0x000A0000
	.4byte 0


.section extabindex, "a"  # 0x80021020 - 0x80039220

	.4byte func_800AB2E4
	.4byte 0x000000D4
	.4byte lbl_800093BC
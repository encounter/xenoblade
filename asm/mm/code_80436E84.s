.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global sinit_80436E84
sinit_80436E84:
/* 80436E84 00400444  3C C0 80 66 */	lis r6, lbl_80659FE8@ha
/* 80436E88 00400448  3C 80 80 66 */	lis r4, lbl_8065A028@ha
/* 80436E8C 0040044C  C0 22 C6 D8 */	lfs f1, float_8066CA58@sda21(r2)
/* 80436E90 00400450  38 A6 9F E8 */	addi r5, r6, lbl_80659FE8@l
/* 80436E94 00400454  38 64 A0 28 */	addi r3, r4, lbl_8065A028@l
/* 80436E98 00400458  C0 02 C6 DC */	lfs f0, float_8066CA5C@sda21(r2)
/* 80436E9C 0040045C  D0 26 9F E8 */	stfs f1, lbl_80659FE8@l(r6)
/* 80436EA0 00400460  D0 25 00 04 */	stfs f1, 4(r5)
/* 80436EA4 00400464  D0 25 00 08 */	stfs f1, 8(r5)
/* 80436EA8 00400468  D0 25 00 0C */	stfs f1, 0xc(r5)
/* 80436EAC 0040046C  D0 25 00 10 */	stfs f1, 0x10(r5)
/* 80436EB0 00400470  D0 25 00 14 */	stfs f1, 0x14(r5)
/* 80436EB4 00400474  D0 25 00 18 */	stfs f1, 0x18(r5)
/* 80436EB8 00400478  D0 25 00 1C */	stfs f1, 0x1c(r5)
/* 80436EBC 0040047C  D0 25 00 20 */	stfs f1, 0x20(r5)
/* 80436EC0 00400480  D0 25 00 24 */	stfs f1, 0x24(r5)
/* 80436EC4 00400484  D0 25 00 28 */	stfs f1, 0x28(r5)
/* 80436EC8 00400488  D0 25 00 2C */	stfs f1, 0x2c(r5)
/* 80436ECC 0040048C  D0 25 00 30 */	stfs f1, 0x30(r5)
/* 80436ED0 00400490  D0 25 00 34 */	stfs f1, 0x34(r5)
/* 80436ED4 00400494  D0 25 00 38 */	stfs f1, 0x38(r5)
/* 80436ED8 00400498  D0 25 00 3C */	stfs f1, 0x3c(r5)
/* 80436EDC 0040049C  D0 04 A0 28 */	stfs f0, lbl_8065A028@l(r4)
/* 80436EE0 004004A0  D0 23 00 04 */	stfs f1, 4(r3)
/* 80436EE4 004004A4  D0 23 00 08 */	stfs f1, 8(r3)
/* 80436EE8 004004A8  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 80436EEC 004004AC  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 80436EF0 004004B0  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80436EF4 004004B4  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 80436EF8 004004B8  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80436EFC 004004BC  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 80436F00 004004C0  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 80436F04 004004C4  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80436F08 004004C8  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 80436F0C 004004CC  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 80436F10 004004D0  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 80436F14 004004D4  D0 23 00 38 */	stfs f1, 0x38(r3)
/* 80436F18 004004D8  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 80436F1C 004004DC  4E 80 00 20 */	blr

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.4byte sinit_80436E84

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.global float_8066CA58
float_8066CA58:
	.float 0


.global float_8066CA5C
float_8066CA5C:
	.float 1.0
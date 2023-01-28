.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global __ct__CMenuPause
__ct__CMenuPause:
/* 80252410 0021B9D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80252414 0021B9D4  7C 08 02 A6 */	mflr r0
/* 80252418 0021B9D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025241C 0021B9DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80252420 0021B9E0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80252424 0021B9E4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80252428 0021B9E8  7C 9D 23 78 */	mr r29, r4
/* 8025242C 0021B9EC  93 81 00 10 */	stw r28, 0x10(r1)
/* 80252430 0021B9F0  7C 7C 1B 78 */	mr r28, r3
/* 80252434 0021B9F4  80 0D AF 38 */	lwz r0, lbl_806670B8@sda21(r13)
/* 80252438 0021B9F8  2C 00 00 00 */	cmpwi r0, 0
/* 8025243C 0021B9FC  41 82 00 0C */	beq .L_80252448
/* 80252440 0021BA00  38 60 00 00 */	li r3, 0
/* 80252444 0021BA04  48 00 00 C0 */	b .L_80252504
.L_80252448:
/* 80252448 0021BA08  48 1E 51 6D */	bl func_804375B4
/* 8025244C 0021BA0C  7C 64 1B 78 */	mr r4, r3
/* 80252450 0021BA10  38 60 00 88 */	li r3, 0x88
/* 80252454 0021BA14  48 1E 26 09 */	bl mm_malloc
/* 80252458 0021BA18  2C 03 00 00 */	cmpwi r3, 0
/* 8025245C 0021BA1C  7C 7E 1B 78 */	mr r30, r3
/* 80252460 0021BA20  41 82 00 8C */	beq .L_802524EC
/* 80252464 0021BA24  48 1F 25 B5 */	bl __ct__8CProcessFv
/* 80252468 0021BA28  3C 60 80 53 */	lis r3, __vt__CTTask_IUICf@ha
/* 8025246C 0021BA2C  3D 00 80 51 */	lis r8, lbl_8050CE10@ha
/* 80252470 0021BA30  38 63 F7 40 */	addi r3, r3, __vt__CTTask_IUICf@l
/* 80252474 0021BA34  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80252478 0021BA38  39 08 CE 10 */	addi r8, r8, lbl_8050CE10@l
/* 8025247C 0021BA3C  3C A0 80 54 */	lis r5, __vt__CMenuPause@ha
/* 80252480 0021BA40  80 C8 00 04 */	lwz r6, 4(r8)
/* 80252484 0021BA44  38 A5 A9 58 */	addi r5, r5, __vt__CMenuPause@l
/* 80252488 0021BA48  80 08 00 00 */	lwz r0, 0(r8)
/* 8025248C 0021BA4C  3B E0 00 00 */	li r31, 0
/* 80252490 0021BA50  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 80252494 0021BA54  38 85 00 24 */	addi r4, r5, 0x24
/* 80252498 0021BA58  38 05 00 AC */	addi r0, r5, 0xac
/* 8025249C 0021BA5C  38 7E 00 64 */	addi r3, r30, 0x64
/* 802524A0 0021BA60  90 DE 00 40 */	stw r6, 0x40(r30)
/* 802524A4 0021BA64  80 C8 00 08 */	lwz r6, 8(r8)
/* 802524A8 0021BA68  90 DE 00 44 */	stw r6, 0x44(r30)
/* 802524AC 0021BA6C  80 C8 00 04 */	lwz r6, 4(r8)
/* 802524B0 0021BA70  80 E8 00 00 */	lwz r7, 0(r8)
/* 802524B4 0021BA74  90 FE 00 48 */	stw r7, 0x48(r30)
/* 802524B8 0021BA78  90 DE 00 4C */	stw r6, 0x4c(r30)
/* 802524BC 0021BA7C  80 C8 00 08 */	lwz r6, 8(r8)
/* 802524C0 0021BA80  90 DE 00 50 */	stw r6, 0x50(r30)
/* 802524C4 0021BA84  9B FE 00 54 */	stb r31, 0x54(r30)
/* 802524C8 0021BA88  9B FE 00 55 */	stb r31, 0x55(r30)
/* 802524CC 0021BA8C  90 BE 00 10 */	stw r5, 0x10(r30)
/* 802524D0 0021BA90  90 9E 00 58 */	stw r4, 0x58(r30)
/* 802524D4 0021BA94  90 1E 00 5C */	stw r0, 0x5c(r30)
/* 802524D8 0021BA98  93 BE 00 60 */	stw r29, 0x60(r30)
/* 802524DC 0021BA9C  48 20 D0 89 */	bl func_8045F564
/* 802524E0 0021BAA0  93 FE 00 7C */	stw r31, 0x7c(r30)
/* 802524E4 0021BAA4  93 FE 00 80 */	stw r31, 0x80(r30)
/* 802524E8 0021BAA8  9B FE 00 84 */	stb r31, 0x84(r30)
.L_802524EC:
/* 802524EC 0021BAAC  93 CD AF 38 */	stw r30, lbl_806670B8@sda21(r13)
/* 802524F0 0021BAB0  7F C3 F3 78 */	mr r3, r30
/* 802524F4 0021BAB4  7F 84 E3 78 */	mr r4, r28
/* 802524F8 0021BAB8  38 A0 00 00 */	li r5, 0
/* 802524FC 0021BABC  48 1F 27 79 */	bl func_80444C74
/* 80252500 0021BAC0  80 6D AF 38 */	lwz r3, lbl_806670B8@sda21(r13)
.L_80252504:
/* 80252504 0021BAC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80252508 0021BAC8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8025250C 0021BACC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80252510 0021BAD0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80252514 0021BAD4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80252518 0021BAD8  7C 08 03 A6 */	mtlr r0
/* 8025251C 0021BADC  38 21 00 20 */	addi r1, r1, 0x20
/* 80252520 0021BAE0  4E 80 00 20 */	blr 

.global func_80252524
func_80252524:
/* 80252524 0021BAE4  80 6D AF 38 */	lwz r3, lbl_806670B8@sda21(r13)
/* 80252528 0021BAE8  7C 03 00 D0 */	neg r0, r3
/* 8025252C 0021BAEC  7C 00 1B 78 */	or r0, r0, r3
/* 80252530 0021BAF0  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80252534 0021BAF4  4E 80 00 20 */	blr 

.global func_80252538
func_80252538:
/* 80252538 0021BAF8  80 6D AF 38 */	lwz r3, lbl_806670B8@sda21(r13)
/* 8025253C 0021BAFC  2C 03 00 00 */	cmpwi r3, 0
/* 80252540 0021BB00  40 82 00 0C */	bne .L_8025254C
/* 80252544 0021BB04  38 60 00 00 */	li r3, 0
/* 80252548 0021BB08  4E 80 00 20 */	blr
.L_8025254C:
/* 8025254C 0021BB0C  88 83 00 84 */	lbz r4, 0x84(r3)
/* 80252550 0021BB10  20 64 00 03 */	subfic r3, r4, 3
/* 80252554 0021BB14  38 04 FF FD */	addi r0, r4, -3
/* 80252558 0021BB18  7C 60 03 78 */	or r0, r3, r0
/* 8025255C 0021BB1C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80252560 0021BB20  4E 80 00 20 */	blr 

.global func_80252564
func_80252564:
/* 80252564 0021BB24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80252568 0021BB28  7C 08 02 A6 */	mflr r0
/* 8025256C 0021BB2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80252570 0021BB30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80252574 0021BB34  93 C1 00 08 */	stw r30, 8(r1)
/* 80252578 0021BB38  7C 7E 1B 78 */	mr r30, r3
/* 8025257C 0021BB3C  4B E3 4C 41 */	bl func_800871BC
/* 80252580 0021BB40  7C 7F 1B 78 */	mr r31, r3
/* 80252584 0021BB44  38 60 FF FF */	li r3, -1
/* 80252588 0021BB48  4B E3 4A 15 */	bl func_80086F9C
/* 8025258C 0021BB4C  2C 03 00 00 */	cmpwi r3, 0
/* 80252590 0021BB50  41 82 00 14 */	beq .L_802525A4
/* 80252594 0021BB54  80 1F 00 04 */	lwz r0, 4(r31)
/* 80252598 0021BB58  54 03 5F FE */	rlwinm r3, r0, 0xb, 0x1f, 0x1f
/* 8025259C 0021BB5C  54 00 57 FE */	rlwinm r0, r0, 0xa, 0x1f, 0x1f
/* 802525A0 0021BB60  48 00 00 10 */	b .L_802525B0
.L_802525A4:
/* 802525A4 0021BB64  80 1F 00 04 */	lwz r0, 4(r31)
/* 802525A8 0021BB68  54 03 E7 FE */	rlwinm r3, r0, 0x1c, 0x1f, 0x1f
/* 802525AC 0021BB6C  54 00 DF FE */	rlwinm r0, r0, 0x1b, 0x1f, 0x1f
.L_802525B0:
/* 802525B0 0021BB70  2C 03 00 00 */	cmpwi r3, 0
/* 802525B4 0021BB74  41 82 00 3C */	beq .L_802525F0
/* 802525B8 0021BB78  4B E3 2E 11 */	bl func_800853C8
/* 802525BC 0021BB7C  C0 22 AD 0C */	lfs f1, float_8066B08C@sda21(r2)
/* 802525C0 0021BB80  38 60 00 00 */	li r3, 0
/* 802525C4 0021BB84  38 80 00 03 */	li r4, 3
/* 802525C8 0021BB88  38 A0 00 00 */	li r5, 0
/* 802525CC 0021BB8C  4B F6 D5 69 */	bl func_801BFB34
/* 802525D0 0021BB90  C0 22 AD 0C */	lfs f1, float_8066B08C@sda21(r2)
/* 802525D4 0021BB94  38 60 00 00 */	li r3, 0
/* 802525D8 0021BB98  38 80 00 0E */	li r4, 0xe
/* 802525DC 0021BB9C  38 A0 00 00 */	li r5, 0
/* 802525E0 0021BBA0  4B F6 D5 55 */	bl func_801BFB34
/* 802525E4 0021BBA4  38 00 00 03 */	li r0, 3
/* 802525E8 0021BBA8  98 1E 00 84 */	stb r0, 0x84(r30)
/* 802525EC 0021BBAC  48 00 00 24 */	b .L_80252610
.L_802525F0:
/* 802525F0 0021BBB0  2C 00 00 00 */	cmpwi r0, 0
/* 802525F4 0021BBB4  41 82 00 1C */	beq .L_80252610
/* 802525F8 0021BBB8  38 60 00 06 */	li r3, 6
/* 802525FC 0021BBBC  4B EE 5A 7D */	bl func_80138078
/* 80252600 0021BBC0  38 60 00 0E */	li r3, 0xe
/* 80252604 0021BBC4  4B EE 5A 75 */	bl func_80138078
/* 80252608 0021BBC8  38 00 00 03 */	li r0, 3
/* 8025260C 0021BBCC  98 1E 00 84 */	stb r0, 0x84(r30)
.L_80252610:
/* 80252610 0021BBD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80252614 0021BBD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80252618 0021BBD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8025261C 0021BBDC  7C 08 03 A6 */	mtlr r0
/* 80252620 0021BBE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80252624 0021BBE4  4E 80 00 20 */	blr 

.global func_80252628
func_80252628:
/* 80252628 0021BBE8  38 63 FF A8 */	addi r3, r3, -88
/* 8025262C 0021BBEC  4B FF F7 CC */	b func_80251DF8

.global func_80252630
func_80252630:
/* 80252630 0021BBF0  38 63 FF A4 */	addi r3, r3, -92
/* 80252634 0021BBF4  4B FF FD 40 */	b func_80252374

.global func_80252638
func_80252638:
/* 80252638 0021BBF8  38 63 FF A4 */	addi r3, r3, -92
/* 8025263C 0021BBFC  4B FF F7 BC */	b func_80251DF8


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0


.global CMenuPause_typestr
CMenuPause_typestr:
	.asciz "CMenuPause"
	.balign 4
	.4byte 0


.global lbl_80507C58
lbl_80507C58:
	.asciz "CMenuPause"
	.asciz "mf70_cf60_syswin13.brlyt"
	.asciz "mf70_cf60_syswin13_in.brlan"
	.asciz "MNU_sysmes"
	.asciz "name"
	.asciz "txt_titlemes"
	.asciz "MNU_kyeassign"
	.asciz "help"
	.asciz "txt_sysmes00"
	.asciz "fileID_2"
	.asciz "fileID_1"
	.asciz "pic_btn00"
	.asciz "txt_sysmes01"
	.asciz "pic_btn01"

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global __vt__CMenuPause
__vt__CMenuPause:
	.4byte __RTTI__CMenuPause
	.4byte 0
	.4byte func_80251DF8
	.4byte CChildListNode_Reset
	.4byte func_80251E6C
	.4byte func_802521FC
	.4byte func_8025228C
	.4byte func_80101FB8
	.4byte func_80043F20
	.4byte __RTTI__CMenuPause
	.4byte 0xFFFFFFA8
	.4byte func_80252628
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte __RTTI__CMenuPause
	.4byte 0xFFFFFFA4
	.4byte func_80252638
	.4byte func_80252630
	.4byte func_80252374

.global CMenuPause_hierarchy
CMenuPause_hierarchy:
	.4byte __RTTI__IScnRender
	.4byte 0x0000005C
	.4byte __RTTI__IWorkEvent
	.4byte 0x00000058
	.4byte __RTTI__CDoubleListNode
	.4byte 0
	.4byte __RTTI__CChildListNode
	.4byte 0
	.4byte __RTTI__CProcess
	.4byte 0
	.4byte __RTTI__CTTask_IUICf
	.4byte 0
	.4byte __RTTI__IUICf
	.4byte 0
	.4byte 0
	.4byte 0

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global __RTTI__CMenuPause
__RTTI__CMenuPause:
	.4byte CMenuPause_typestr
	.4byte CMenuPause_hierarchy

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.global float_8066B08C
float_8066B08C:
	.float 0.6 #0x3F19999A

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.global lbl_806670B8
lbl_806670B8:
	.skip 0x8

.section extab_, "a"  # 0x800066E0 - 0x80021020

.global lbl_80016C10
lbl_80016C10:
	.4byte 0x20080000
	.4byte 0x000000D0
	.4byte 0x00000010
	.4byte 0
	.4byte 0x0680001E
	.4byte 0x0000005C
	.4byte func_8004031C
	.4byte 0x0680001E
	.4byte 0x00000058
	.4byte __dt__IWorkEvent
	.4byte 0x8680001E
	.4byte 0
	.4byte func_800FED0C

.global lbl_80016C44
lbl_80016C44:
	.4byte 0x100A0000
	.4byte 0


.section extabindex_, "a"  # 0x80021020 - 0x80039220

.4byte __ct__CMenuPause
	.4byte 0x00000114
	.4byte lbl_80016C10
	.4byte func_80252564
	.4byte 0x000000C4
	.4byte lbl_80016C44
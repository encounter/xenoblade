.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_804822A0
func_804822A0:
/* 804822A0 0044B860  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804822A4 0044B864  7C 08 02 A6 */	mflr r0
/* 804822A8 0044B868  3D 00 80 57 */	lis r8, __vt__CScnItemLight@ha
/* 804822AC 0044B86C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804822B0 0044B870  38 00 00 03 */	li r0, 3
/* 804822B4 0044B874  39 08 15 50 */	addi r8, r8, __vt__CScnItemLight@l
/* 804822B8 0044B878  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804822BC 0044B87C  7C BF 2B 78 */	mr r31, r5
/* 804822C0 0044B880  93 C1 00 08 */	stw r30, 8(r1)
/* 804822C4 0044B884  7C 7E 1B 78 */	mr r30, r3
/* 804822C8 0044B888  90 83 00 04 */	stw r4, 4(r3)
/* 804822CC 0044B88C  B0 03 00 08 */	sth r0, 8(r3)
/* 804822D0 0044B890  91 03 00 00 */	stw r8, 0(r3)
/* 804822D4 0044B894  90 E3 00 0C */	stw r7, 0xc(r3)
/* 804822D8 0044B898  B0 C3 00 10 */	sth r6, 0x10(r3)
/* 804822DC 0044B89C  7C 83 23 78 */	mr r3, r4
/* 804822E0 0044B8A0  48 01 3D 39 */	bl func_80496018
/* 804822E4 0044B8A4  7C 64 1B 78 */	mr r4, r3
/* 804822E8 0044B8A8  38 7E 00 14 */	addi r3, r30, 0x14
/* 804822EC 0044B8AC  48 01 2E 09 */	bl func_804950F4
/* 804822F0 0044B8B0  7F E3 FB 78 */	mr r3, r31
/* 804822F4 0044B8B4  4B E3 72 C5 */	bl strlen
/* 804822F8 0044B8B8  90 7E 12 18 */	stw r3, 0x1218(r30)
/* 804822FC 0044B8BC  7F E4 FB 78 */	mr r4, r31
/* 80482300 0044B8C0  38 7E 11 D8 */	addi r3, r30, 0x11d8
/* 80482304 0044B8C4  4B E4 03 B5 */	bl strcpy
/* 80482308 0044B8C8  38 00 00 00 */	li r0, 0
/* 8048230C 0044B8CC  98 1E 12 1C */	stb r0, 0x121c(r30)
/* 80482310 0044B8D0  7F C3 F3 78 */	mr r3, r30
/* 80482314 0044B8D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80482318 0044B8D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048231C 0044B8DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80482320 0044B8E0  7C 08 03 A6 */	mtlr r0
/* 80482324 0044B8E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80482328 0044B8E8  4E 80 00 20 */	blr 

.global func_8048232C
func_8048232C:
/* 8048232C 0044B8EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80482330 0044B8F0  7C 08 02 A6 */	mflr r0
/* 80482334 0044B8F4  2C 03 00 00 */	cmpwi r3, 0
/* 80482338 0044B8F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048233C 0044B8FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80482340 0044B900  7C 9F 23 78 */	mr r31, r4
/* 80482344 0044B904  93 C1 00 08 */	stw r30, 8(r1)
/* 80482348 0044B908  7C 7E 1B 78 */	mr r30, r3
/* 8048234C 0044B90C  41 82 00 20 */	beq .L_8048236C
/* 80482350 0044B910  38 80 FF FF */	li r4, -1
/* 80482354 0044B914  38 63 00 14 */	addi r3, r3, 0x14
/* 80482358 0044B918  48 01 2E A9 */	bl func_80495200
/* 8048235C 0044B91C  2C 1F 00 00 */	cmpwi r31, 0
/* 80482360 0044B920  40 81 00 0C */	ble .L_8048236C
/* 80482364 0044B924  7F C3 F3 78 */	mr r3, r30
/* 80482368 0044B928  4B FB 28 C5 */	bl __dl__FPv
.L_8048236C:
/* 8048236C 0044B92C  7F C3 F3 78 */	mr r3, r30
/* 80482370 0044B930  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80482374 0044B934  83 C1 00 08 */	lwz r30, 8(r1)
/* 80482378 0044B938  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048237C 0044B93C  7C 08 03 A6 */	mtlr r0
/* 80482380 0044B940  38 21 00 10 */	addi r1, r1, 0x10
/* 80482384 0044B944  4E 80 00 20 */	blr 

.global func_80482388
func_80482388:
/* 80482388 0044B948  80 A3 00 04 */	lwz r5, 4(r3)
/* 8048238C 0044B94C  38 83 00 14 */	addi r4, r3, 0x14
/* 80482390 0044B950  80 65 00 5C */	lwz r3, 0x5c(r5)
/* 80482394 0044B954  48 01 13 18 */	b func_804936AC

.global func_80482398
func_80482398:
/* 80482398 0044B958  7C 84 07 34 */	extsh r4, r4
/* 8048239C 0044B95C  48 00 00 A4 */	b func_80482440

.global func_804823A0
func_804823A0:
/* 804823A0 0044B960  38 63 11 D8 */	addi r3, r3, 0x11d8
/* 804823A4 0044B964  4E 80 00 20 */	blr 

.global func_804823A8
func_804823A8:
/* 804823A8 0044B968  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804823AC 0044B96C  7C 08 02 A6 */	mflr r0
/* 804823B0 0044B970  2C 03 00 00 */	cmpwi r3, 0
/* 804823B4 0044B974  90 01 00 14 */	stw r0, 0x14(r1)
/* 804823B8 0044B978  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804823BC 0044B97C  7C 9F 23 78 */	mr r31, r4
/* 804823C0 0044B980  93 C1 00 08 */	stw r30, 8(r1)
/* 804823C4 0044B984  7C 7E 1B 78 */	mr r30, r3
/* 804823C8 0044B988  41 82 00 1C */	beq .L_804823E4
/* 804823CC 0044B98C  38 80 00 00 */	li r4, 0
/* 804823D0 0044B990  4B FF FF 5D */	bl func_8048232C
/* 804823D4 0044B994  2C 1F 00 00 */	cmpwi r31, 0
/* 804823D8 0044B998  40 81 00 0C */	ble .L_804823E4
/* 804823DC 0044B99C  7F C3 F3 78 */	mr r3, r30
/* 804823E0 0044B9A0  4B FB 28 4D */	bl __dl__FPv
.L_804823E4:
/* 804823E4 0044B9A4  7F C3 F3 78 */	mr r3, r30
/* 804823E8 0044B9A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804823EC 0044B9AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 804823F0 0044B9B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804823F4 0044B9B4  7C 08 03 A6 */	mtlr r0
/* 804823F8 0044B9B8  38 21 00 10 */	addi r1, r1, 0x10
/* 804823FC 0044B9BC  4E 80 00 20 */	blr 

.global func_80482400
func_80482400:
/* 80482400 0044B9C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80482404 0044B9C4  7C 08 02 A6 */	mflr r0
/* 80482408 0044B9C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048240C 0044B9CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80482410 0044B9D0  7C 7F 1B 78 */	mr r31, r3
/* 80482414 0044B9D4  38 9F 09 44 */	addi r4, r31, 0x944
/* 80482418 0044B9D8  80 A3 12 20 */	lwz r5, 0x1220(r3)
/* 8048241C 0044B9DC  38 65 28 78 */	addi r3, r5, 0x2878
/* 80482420 0044B9E0  4B F7 B8 69 */	bl Import__Q34nw4r3g3d12LightSettingFRCQ34nw4r3g3d12LightSetting
/* 80482424 0044B9E4  38 00 00 00 */	li r0, 0
/* 80482428 0044B9E8  98 1F 12 1C */	stb r0, 0x121c(r31)
/* 8048242C 0044B9EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80482430 0044B9F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80482434 0044B9F4  7C 08 03 A6 */	mtlr r0
/* 80482438 0044B9F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8048243C 0044B9FC  4E 80 00 20 */	blr

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global CScnItemLight_typestr
CScnItemLight_typestr:
	.asciz "CScnItemLight"
	.balign 4

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global __vt__CScnItemLight
__vt__CScnItemLight:
	.4byte __RTTI__CScnItemLight
	.4byte 0
	.4byte func_8048232C
	.4byte func_80482388
	.4byte func_80482048
	.4byte func_80482288
	.4byte func_804823A0
	.4byte func_80482040

.global CScnItemLight_hierarchy
CScnItemLight_hierarchy:
	.4byte __RTTI__CScnItem
	.4byte 0
	.4byte 0
	.4byte 0

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global __RTTI__CScnItemLight
__RTTI__CScnItemLight:
	.4byte CScnItemLight_typestr
	.4byte CScnItemLight_hierarchy

.section extab_, "a"  # 0x800066E0 - 0x80021020

.global lbl_8001E284
lbl_8001E284:
	.4byte 0x10080000
	.4byte 0x00000044
	.4byte 0x00030010
	.4byte 0
	.4byte 0x8680001E
	.4byte 0
	.4byte func_80482054

.global lbl_8001E2A0
lbl_8001E2A0:
	.4byte 0x10080000
	.4byte 0

.global lbl_8001E2A8
lbl_8001E2A8:
	.4byte 0x10080000
	.4byte 0

.global lbl_8001E2B0
lbl_8001E2B0:
	.4byte 0x08080000
	.4byte 0


.section extabindex_, "a"  # 0x80021020 - 0x80039220

.4byte func_804822A0
	.4byte 0x0000008C
	.4byte lbl_8001E284
	.4byte func_8048232C
	.4byte 0x0000005C
	.4byte lbl_8001E2A0
	.4byte func_804823A8
	.4byte 0x00000058
	.4byte lbl_8001E2A8
	.4byte func_80482400
	.4byte 0x00000040
	.4byte lbl_8001E2B0
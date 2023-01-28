.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_804DB240
func_804DB240:
/* 804DB240 004A4800  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DB244 004A4804  7C 08 02 A6 */	mflr r0
/* 804DB248 004A4808  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DB24C 004A480C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DB250 004A4810  7C 7F 1B 78 */	mr r31, r3
/* 804DB254 004A4814  4B DE 74 65 */	bl strcpy
/* 804DB258 004A4818  38 00 00 00 */	li r0, 0
/* 804DB25C 004A481C  98 1F 00 0D */	stb r0, 0xd(r31)
/* 804DB260 004A4820  38 6D C1 50 */	addi r3, r13, lbl_806682D0@sda21
/* 804DB264 004A4824  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DB268 004A4828  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DB26C 004A482C  7C 08 03 A6 */	mtlr r0
/* 804DB270 004A4830  38 21 00 10 */	addi r1, r1, 0x10
/* 804DB274 004A4834  4E 80 00 20 */	blr 

.global func_804DB278
func_804DB278:
/* 804DB278 004A4838  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DB27C 004A483C  7C 08 02 A6 */	mflr r0
/* 804DB280 004A4840  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DB284 004A4844  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DB288 004A4848  7C 9F 23 78 */	mr r31, r4
/* 804DB28C 004A484C  88 0D C1 28 */	lbz r0, lbl_806682A8@sda21(r13)
/* 804DB290 004A4850  2C 00 00 00 */	cmpwi r0, 0
/* 804DB294 004A4854  41 82 00 0C */	beq .L_804DB2A0
/* 804DB298 004A4858  38 60 00 00 */	li r3, 0
/* 804DB29C 004A485C  48 00 00 80 */	b .L_804DB31C
.L_804DB2A0:
/* 804DB2A0 004A4860  88 64 00 0D */	lbz r3, 0xd(r4)
/* 804DB2A4 004A4864  7C 60 07 75 */	extsb. r0, r3
/* 804DB2A8 004A4868  40 81 00 18 */	ble .L_804DB2C0
/* 804DB2AC 004A486C  80 0D C1 2C */	lwz r0, lbl_806682AC@sda21(r13)
/* 804DB2B0 004A4870  2C 00 00 00 */	cmpwi r0, 0
/* 804DB2B4 004A4874  40 80 00 0C */	bge .L_804DB2C0
/* 804DB2B8 004A4878  38 60 00 02 */	li r3, 2
/* 804DB2BC 004A487C  48 00 00 60 */	b .L_804DB31C
.L_804DB2C0:
/* 804DB2C0 004A4880  7C 60 07 75 */	extsb. r0, r3
/* 804DB2C4 004A4884  41 82 00 18 */	beq .L_804DB2DC
/* 804DB2C8 004A4888  2C 00 00 01 */	cmpwi r0, 1
/* 804DB2CC 004A488C  41 82 00 38 */	beq .L_804DB304
/* 804DB2D0 004A4890  2C 00 00 02 */	cmpwi r0, 2
/* 804DB2D4 004A4894  41 82 00 3C */	beq .L_804DB310
/* 804DB2D8 004A4898  48 00 00 40 */	b .L_804DB318
.L_804DB2DC:
/* 804DB2DC 004A489C  7F E3 FB 78 */	mr r3, r31
/* 804DB2E0 004A48A0  4B FF F6 E5 */	bl func_804DA9C4
/* 804DB2E4 004A48A4  4B FF F4 89 */	bl func_804DA76C
/* 804DB2E8 004A48A8  2C 03 00 00 */	cmpwi r3, 0
/* 804DB2EC 004A48AC  41 82 00 0C */	beq .L_804DB2F8
/* 804DB2F0 004A48B0  38 60 00 02 */	li r3, 2
/* 804DB2F4 004A48B4  48 00 00 28 */	b .L_804DB31C
.L_804DB2F8:
/* 804DB2F8 004A48B8  38 00 00 01 */	li r0, 1
/* 804DB2FC 004A48BC  98 1F 00 0D */	stb r0, 0xd(r31)
/* 804DB300 004A48C0  48 00 00 18 */	b .L_804DB318
.L_804DB304:
/* 804DB304 004A48C4  38 00 00 02 */	li r0, 2
/* 804DB308 004A48C8  98 04 00 0D */	stb r0, 0xd(r4)
/* 804DB30C 004A48CC  48 00 00 0C */	b .L_804DB318
.L_804DB310:
/* 804DB310 004A48D0  38 60 00 01 */	li r3, 1
/* 804DB314 004A48D4  48 00 00 08 */	b .L_804DB31C
.L_804DB318:
/* 804DB318 004A48D8  38 60 00 00 */	li r3, 0
.L_804DB31C:
/* 804DB31C 004A48DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DB320 004A48E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DB324 004A48E4  7C 08 03 A6 */	mtlr r0
/* 804DB328 004A48E8  38 21 00 10 */	addi r1, r1, 0x10
/* 804DB32C 004A48EC  4E 80 00 20 */	blr


.global sinit_804DB330
sinit_804DB330:
/* 804DB330 004A48F0  38 6D C1 50 */	addi r3, r13, lbl_806682D0@sda21
/* 804DB334 004A48F4  48 00 00 04 */	b .L_804DB338
.L_804DB338:
/* 804DB338 004A48F8  3C 80 80 57 */	lis r4, __vt__CNReqtaskRemove@ha
/* 804DB33C 004A48FC  38 84 36 10 */	addi r4, r4, __vt__CNReqtaskRemove@l
/* 804DB340 004A4900  90 83 00 00 */	stw r4, 0(r3)
/* 804DB344 004A4904  4E 80 00 20 */	blr 

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.4byte sinit_804DB330


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global CNReqtaskRemove_typestr
CNReqtaskRemove_typestr:
	.asciz "CNReqtaskRemove"
	
.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global __vt__CNReqtaskRemove
__vt__CNReqtaskRemove:
	.4byte __RTTI__CNReqtaskRemove
	.4byte 0
	.4byte func_804DB278
	.4byte func_804DA4CC

.global CNReqtaskRemove_hierarchy
CNReqtaskRemove_hierarchy:
	.4byte __RTTI__CNReqtask
	.4byte 0
	.4byte 0
	.4byte 0

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global __RTTI__CNReqtaskRemove
__RTTI__CNReqtaskRemove:
	.4byte CNReqtaskRemove_typestr
	.4byte CNReqtaskRemove_hierarchy

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.global lbl_806682D0
lbl_806682D0:
	.skip 0x8

.section extab_, "a"  # 0x800066E0 - 0x80021020

.global lbl_80020780
lbl_80020780:
	.4byte 0x08080000
	.4byte 0

.global lbl_80020788
lbl_80020788:
	.4byte 0x08080000
	.4byte 0


.section extabindex_, "a"  # 0x80021020 - 0x80039220

.4byte func_804DB240
	.4byte 0x00000038
	.4byte lbl_80020780
	.4byte func_804DB278
	.4byte 0x000000B8
	.4byte lbl_80020788
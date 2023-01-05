.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global __nw__FUl
__nw__FUl:
/* 80434C24 003FE1E4  38 60 00 00 */	li r3, 0
/* 80434C28 003FE1E8  4E 80 00 20 */	blr 

.global __dl__FPv
__dl__FPv:
/* 80434C2C 003FE1EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80434C30 003FE1F0  7C 08 02 A6 */	mflr r0
/* 80434C34 003FE1F4  2C 03 00 00 */	cmpwi r3, 0
/* 80434C38 003FE1F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80434C3C 003FE1FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80434C40 003FE200  41 82 01 8C */	beq .L_80434DCC
/* 80434C44 003FE204  80 8D 9C B0 */	lwz r4, lbl_80665E30@sda21(r13)
/* 80434C48 003FE208  3C 04 00 01 */	addis r0, r4, 1
/* 80434C4C 003FE20C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80434C50 003FE210  41 82 01 7C */	beq .L_80434DCC
/* 80434C54 003FE214  38 83 FF E0 */	addi r4, r3, -32
/* 80434C58 003FE218  3C 60 08 00 */	lis r3, 0x07FFFFDE@ha
/* 80434C5C 003FE21C  A0 C4 00 10 */	lhz r6, 0x10(r4)
/* 80434C60 003FE220  38 03 FF DE */	addi r0, r3, 0x07FFFFDE@l
/* 80434C64 003FE224  80 E4 00 0C */	lwz r7, 0xc(r4)
/* 80434C68 003FE228  3C A0 80 65 */	lis r5, memoryAllocHeapArray@ha
/* 80434C6C 003FE22C  54 C3 06 3E */	clrlwi r3, r6, 0x18
/* 80434C70 003FE230  1C C3 00 70 */	mulli r6, r3, 0x70
/* 80434C74 003FE234  38 A5 70 E0 */	addi r5, r5, memoryAllocHeapArray@l
/* 80434C78 003FE238  38 67 FF DF */	addi r3, r7, -33
/* 80434C7C 003FE23C  7C 03 00 40 */	cmplw r3, r0
/* 80434C80 003FE240  7F E5 32 14 */	add r31, r5, r6
/* 80434C84 003FE244  40 81 00 10 */	ble .L_80434C94
/* 80434C88 003FE248  C8 22 C6 38 */	lfd f1, double_8066C9B8@sda21(r2)
/* 80434C8C 003FE24C  4B E9 65 85 */	bl log
/* 80434C90 003FE250  48 00 01 3C */	b .L_80434DCC
.L_80434C94:
/* 80434C94 003FE254  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80434C98 003FE258  7C 00 3A 14 */	add r0, r0, r7
/* 80434C9C 003FE25C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80434CA0 003FE260  80 64 00 00 */	lwz r3, 0(r4)
/* 80434CA4 003FE264  2C 03 00 00 */	cmpwi r3, 0
/* 80434CA8 003FE268  41 82 00 0C */	beq .L_80434CB4
/* 80434CAC 003FE26C  80 04 00 04 */	lwz r0, 4(r4)
/* 80434CB0 003FE270  90 03 00 04 */	stw r0, 4(r3)
.L_80434CB4:
/* 80434CB4 003FE274  80 64 00 04 */	lwz r3, 4(r4)
/* 80434CB8 003FE278  2C 03 00 00 */	cmpwi r3, 0
/* 80434CBC 003FE27C  41 82 00 0C */	beq .L_80434CC8
/* 80434CC0 003FE280  80 04 00 00 */	lwz r0, 0(r4)
/* 80434CC4 003FE284  90 03 00 00 */	stw r0, 0(r3)
.L_80434CC8:
/* 80434CC8 003FE288  80 1F 00 08 */	lwz r0, 8(r31)
/* 80434CCC 003FE28C  7C 00 20 40 */	cmplw r0, r4
/* 80434CD0 003FE290  40 82 00 0C */	bne .L_80434CDC
/* 80434CD4 003FE294  80 04 00 04 */	lwz r0, 4(r4)
/* 80434CD8 003FE298  90 1F 00 08 */	stw r0, 8(r31)
.L_80434CDC:
/* 80434CDC 003FE29C  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80434CE0 003FE2A0  7C 00 20 40 */	cmplw r0, r4
/* 80434CE4 003FE2A4  40 82 00 0C */	bne .L_80434CF0
/* 80434CE8 003FE2A8  80 04 00 00 */	lwz r0, 0(r4)
/* 80434CEC 003FE2AC  90 1F 00 0C */	stw r0, 0xc(r31)
.L_80434CF0:
/* 80434CF0 003FE2B0  7F E3 FB 78 */	mr r3, r31
/* 80434CF4 003FE2B4  4B FF EC C5 */	bl func_804339B8
/* 80434CF8 003FE2B8  80 A3 00 00 */	lwz r5, 0(r3)
/* 80434CFC 003FE2BC  2C 05 00 00 */	cmpwi r5, 0
/* 80434D00 003FE2C0  41 82 00 4C */	beq .L_80434D4C
/* 80434D04 003FE2C4  80 85 00 0C */	lwz r4, 0xc(r5)
/* 80434D08 003FE2C8  7C 05 22 14 */	add r0, r5, r4
/* 80434D0C 003FE2CC  7C 03 00 40 */	cmplw r3, r0
/* 80434D10 003FE2D0  40 82 00 3C */	bne .L_80434D4C
/* 80434D14 003FE2D4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80434D18 003FE2D8  7C 04 02 14 */	add r0, r4, r0
/* 80434D1C 003FE2DC  90 05 00 0C */	stw r0, 0xc(r5)
/* 80434D20 003FE2E0  80 1F 00 04 */	lwz r0, 4(r31)
/* 80434D24 003FE2E4  7C 03 00 40 */	cmplw r3, r0
/* 80434D28 003FE2E8  40 82 00 08 */	bne .L_80434D30
/* 80434D2C 003FE2EC  90 BF 00 04 */	stw r5, 4(r31)
.L_80434D30:
/* 80434D30 003FE2F0  80 03 00 04 */	lwz r0, 4(r3)
/* 80434D34 003FE2F4  90 05 00 04 */	stw r0, 4(r5)
/* 80434D38 003FE2F8  80 83 00 04 */	lwz r4, 4(r3)
/* 80434D3C 003FE2FC  2C 04 00 00 */	cmpwi r4, 0
/* 80434D40 003FE300  41 82 00 0C */	beq .L_80434D4C
/* 80434D44 003FE304  90 A4 00 00 */	stw r5, 0(r4)
/* 80434D48 003FE308  7C A3 2B 78 */	mr r3, r5
.L_80434D4C:
/* 80434D4C 003FE30C  80 83 00 04 */	lwz r4, 4(r3)
/* 80434D50 003FE310  2C 04 00 00 */	cmpwi r4, 0
/* 80434D54 003FE314  41 82 00 6C */	beq .L_80434DC0
/* 80434D58 003FE318  80 A4 00 00 */	lwz r5, 0(r4)
/* 80434D5C 003FE31C  2C 05 00 00 */	cmpwi r5, 0
/* 80434D60 003FE320  41 82 00 4C */	beq .L_80434DAC
/* 80434D64 003FE324  80 65 00 0C */	lwz r3, 0xc(r5)
/* 80434D68 003FE328  7C 05 1A 14 */	add r0, r5, r3
/* 80434D6C 003FE32C  7C 04 00 40 */	cmplw r4, r0
/* 80434D70 003FE330  40 82 00 3C */	bne .L_80434DAC
/* 80434D74 003FE334  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80434D78 003FE338  7C 03 02 14 */	add r0, r3, r0
/* 80434D7C 003FE33C  90 05 00 0C */	stw r0, 0xc(r5)
/* 80434D80 003FE340  80 1F 00 04 */	lwz r0, 4(r31)
/* 80434D84 003FE344  7C 04 00 40 */	cmplw r4, r0
/* 80434D88 003FE348  40 82 00 08 */	bne .L_80434D90
/* 80434D8C 003FE34C  90 BF 00 04 */	stw r5, 4(r31)
.L_80434D90:
/* 80434D90 003FE350  80 04 00 04 */	lwz r0, 4(r4)
/* 80434D94 003FE354  90 05 00 04 */	stw r0, 4(r5)
/* 80434D98 003FE358  80 64 00 04 */	lwz r3, 4(r4)
/* 80434D9C 003FE35C  2C 03 00 00 */	cmpwi r3, 0
/* 80434DA0 003FE360  41 82 00 0C */	beq .L_80434DAC
/* 80434DA4 003FE364  90 A3 00 00 */	stw r5, 0(r3)
/* 80434DA8 003FE368  7C A4 2B 78 */	mr r4, r5
.L_80434DAC:
/* 80434DAC 003FE36C  80 84 00 04 */	lwz r4, 4(r4)
/* 80434DB0 003FE370  2C 04 00 00 */	cmpwi r4, 0
/* 80434DB4 003FE374  41 82 00 0C */	beq .L_80434DC0
/* 80434DB8 003FE378  7F E3 FB 78 */	mr r3, r31
/* 80434DBC 003FE37C  4B FF EC ED */	bl func_80433AA8
.L_80434DC0:
/* 80434DC0 003FE380  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80434DC4 003FE384  38 03 FF FF */	addi r0, r3, -1
/* 80434DC8 003FE388  90 1F 00 18 */	stw r0, 0x18(r31)
.L_80434DCC:
/* 80434DCC 003FE38C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80434DD0 003FE390  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80434DD4 003FE394  7C 08 03 A6 */	mtlr r0
/* 80434DD8 003FE398  38 21 00 10 */	addi r1, r1, 0x10
/* 80434DDC 003FE39C  4E 80 00 20 */	blr 

.global __dla__FPv
__dla__FPv:
/* 80434DE0 003FE3A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80434DE4 003FE3A4  7C 08 02 A6 */	mflr r0
/* 80434DE8 003FE3A8  2C 03 00 00 */	cmpwi r3, 0
/* 80434DEC 003FE3AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80434DF0 003FE3B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80434DF4 003FE3B4  41 82 01 8C */	beq .L_80434F80
/* 80434DF8 003FE3B8  80 8D 9C B0 */	lwz r4, lbl_80665E30@sda21(r13)
/* 80434DFC 003FE3BC  3C 04 00 01 */	addis r0, r4, 1
/* 80434E00 003FE3C0  28 00 FF FF */	cmplwi r0, 0xffff
/* 80434E04 003FE3C4  41 82 01 7C */	beq .L_80434F80
/* 80434E08 003FE3C8  38 83 FF E0 */	addi r4, r3, -32
/* 80434E0C 003FE3CC  3C 60 08 00 */	lis r3, 0x07FFFFDE@ha
/* 80434E10 003FE3D0  A0 C4 00 10 */	lhz r6, 0x10(r4)
/* 80434E14 003FE3D4  38 03 FF DE */	addi r0, r3, 0x07FFFFDE@l
/* 80434E18 003FE3D8  80 E4 00 0C */	lwz r7, 0xc(r4)
/* 80434E1C 003FE3DC  3C A0 80 65 */	lis r5, memoryAllocHeapArray@ha
/* 80434E20 003FE3E0  54 C3 06 3E */	clrlwi r3, r6, 0x18
/* 80434E24 003FE3E4  1C C3 00 70 */	mulli r6, r3, 0x70
/* 80434E28 003FE3E8  38 A5 70 E0 */	addi r5, r5, memoryAllocHeapArray@l
/* 80434E2C 003FE3EC  38 67 FF DF */	addi r3, r7, -33
/* 80434E30 003FE3F0  7C 03 00 40 */	cmplw r3, r0
/* 80434E34 003FE3F4  7F E5 32 14 */	add r31, r5, r6
/* 80434E38 003FE3F8  40 81 00 10 */	ble .L_80434E48
/* 80434E3C 003FE3FC  C8 22 C6 38 */	lfd f1, double_8066C9B8@sda21(r2)
/* 80434E40 003FE400  4B E9 63 D1 */	bl log
/* 80434E44 003FE404  48 00 01 3C */	b .L_80434F80
.L_80434E48:
/* 80434E48 003FE408  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80434E4C 003FE40C  7C 00 3A 14 */	add r0, r0, r7
/* 80434E50 003FE410  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80434E54 003FE414  80 64 00 00 */	lwz r3, 0(r4)
/* 80434E58 003FE418  2C 03 00 00 */	cmpwi r3, 0
/* 80434E5C 003FE41C  41 82 00 0C */	beq .L_80434E68
/* 80434E60 003FE420  80 04 00 04 */	lwz r0, 4(r4)
/* 80434E64 003FE424  90 03 00 04 */	stw r0, 4(r3)
.L_80434E68:
/* 80434E68 003FE428  80 64 00 04 */	lwz r3, 4(r4)
/* 80434E6C 003FE42C  2C 03 00 00 */	cmpwi r3, 0
/* 80434E70 003FE430  41 82 00 0C */	beq .L_80434E7C
/* 80434E74 003FE434  80 04 00 00 */	lwz r0, 0(r4)
/* 80434E78 003FE438  90 03 00 00 */	stw r0, 0(r3)
.L_80434E7C:
/* 80434E7C 003FE43C  80 1F 00 08 */	lwz r0, 8(r31)
/* 80434E80 003FE440  7C 00 20 40 */	cmplw r0, r4
/* 80434E84 003FE444  40 82 00 0C */	bne .L_80434E90
/* 80434E88 003FE448  80 04 00 04 */	lwz r0, 4(r4)
/* 80434E8C 003FE44C  90 1F 00 08 */	stw r0, 8(r31)
.L_80434E90:
/* 80434E90 003FE450  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80434E94 003FE454  7C 00 20 40 */	cmplw r0, r4
/* 80434E98 003FE458  40 82 00 0C */	bne .L_80434EA4
/* 80434E9C 003FE45C  80 04 00 00 */	lwz r0, 0(r4)
/* 80434EA0 003FE460  90 1F 00 0C */	stw r0, 0xc(r31)
.L_80434EA4:
/* 80434EA4 003FE464  7F E3 FB 78 */	mr r3, r31
/* 80434EA8 003FE468  4B FF EB 11 */	bl func_804339B8
/* 80434EAC 003FE46C  80 A3 00 00 */	lwz r5, 0(r3)
/* 80434EB0 003FE470  2C 05 00 00 */	cmpwi r5, 0
/* 80434EB4 003FE474  41 82 00 4C */	beq .L_80434F00
/* 80434EB8 003FE478  80 85 00 0C */	lwz r4, 0xc(r5)
/* 80434EBC 003FE47C  7C 05 22 14 */	add r0, r5, r4
/* 80434EC0 003FE480  7C 03 00 40 */	cmplw r3, r0
/* 80434EC4 003FE484  40 82 00 3C */	bne .L_80434F00
/* 80434EC8 003FE488  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80434ECC 003FE48C  7C 04 02 14 */	add r0, r4, r0
/* 80434ED0 003FE490  90 05 00 0C */	stw r0, 0xc(r5)
/* 80434ED4 003FE494  80 1F 00 04 */	lwz r0, 4(r31)
/* 80434ED8 003FE498  7C 03 00 40 */	cmplw r3, r0
/* 80434EDC 003FE49C  40 82 00 08 */	bne .L_80434EE4
/* 80434EE0 003FE4A0  90 BF 00 04 */	stw r5, 4(r31)
.L_80434EE4:
/* 80434EE4 003FE4A4  80 03 00 04 */	lwz r0, 4(r3)
/* 80434EE8 003FE4A8  90 05 00 04 */	stw r0, 4(r5)
/* 80434EEC 003FE4AC  80 83 00 04 */	lwz r4, 4(r3)
/* 80434EF0 003FE4B0  2C 04 00 00 */	cmpwi r4, 0
/* 80434EF4 003FE4B4  41 82 00 0C */	beq .L_80434F00
/* 80434EF8 003FE4B8  90 A4 00 00 */	stw r5, 0(r4)
/* 80434EFC 003FE4BC  7C A3 2B 78 */	mr r3, r5
.L_80434F00:
/* 80434F00 003FE4C0  80 83 00 04 */	lwz r4, 4(r3)
/* 80434F04 003FE4C4  2C 04 00 00 */	cmpwi r4, 0
/* 80434F08 003FE4C8  41 82 00 6C */	beq .L_80434F74
/* 80434F0C 003FE4CC  80 A4 00 00 */	lwz r5, 0(r4)
/* 80434F10 003FE4D0  2C 05 00 00 */	cmpwi r5, 0
/* 80434F14 003FE4D4  41 82 00 4C */	beq .L_80434F60
/* 80434F18 003FE4D8  80 65 00 0C */	lwz r3, 0xc(r5)
/* 80434F1C 003FE4DC  7C 05 1A 14 */	add r0, r5, r3
/* 80434F20 003FE4E0  7C 04 00 40 */	cmplw r4, r0
/* 80434F24 003FE4E4  40 82 00 3C */	bne .L_80434F60
/* 80434F28 003FE4E8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80434F2C 003FE4EC  7C 03 02 14 */	add r0, r3, r0
/* 80434F30 003FE4F0  90 05 00 0C */	stw r0, 0xc(r5)
/* 80434F34 003FE4F4  80 1F 00 04 */	lwz r0, 4(r31)
/* 80434F38 003FE4F8  7C 04 00 40 */	cmplw r4, r0
/* 80434F3C 003FE4FC  40 82 00 08 */	bne .L_80434F44
/* 80434F40 003FE500  90 BF 00 04 */	stw r5, 4(r31)
.L_80434F44:
/* 80434F44 003FE504  80 04 00 04 */	lwz r0, 4(r4)
/* 80434F48 003FE508  90 05 00 04 */	stw r0, 4(r5)
/* 80434F4C 003FE50C  80 64 00 04 */	lwz r3, 4(r4)
/* 80434F50 003FE510  2C 03 00 00 */	cmpwi r3, 0
/* 80434F54 003FE514  41 82 00 0C */	beq .L_80434F60
/* 80434F58 003FE518  90 A3 00 00 */	stw r5, 0(r3)
/* 80434F5C 003FE51C  7C A4 2B 78 */	mr r4, r5
.L_80434F60:
/* 80434F60 003FE520  80 84 00 04 */	lwz r4, 4(r4)
/* 80434F64 003FE524  2C 04 00 00 */	cmpwi r4, 0
/* 80434F68 003FE528  41 82 00 0C */	beq .L_80434F74
/* 80434F6C 003FE52C  7F E3 FB 78 */	mr r3, r31
/* 80434F70 003FE530  4B FF EB 39 */	bl func_80433AA8
.L_80434F74:
/* 80434F74 003FE534  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80434F78 003FE538  38 03 FF FF */	addi r0, r3, -1
/* 80434F7C 003FE53C  90 1F 00 18 */	stw r0, 0x18(r31)
.L_80434F80:
/* 80434F80 003FE540  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80434F84 003FE544  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80434F88 003FE548  7C 08 03 A6 */	mtlr r0
/* 80434F8C 003FE54C  38 21 00 10 */	addi r1, r1, 0x10
/* 80434F90 003FE550  4E 80 00 20 */	blr 

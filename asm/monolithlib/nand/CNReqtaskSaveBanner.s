.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_804F4D7C
func_804F4D7C:
/* 804F4D7C 004BE33C  38 00 00 00 */	li r0, 0
/* 804F4D80 004BE340  90 83 00 00 */	stw r4, 0(r3)
/* 804F4D84 004BE344  98 03 00 04 */	stb r0, 4(r3)
/* 804F4D88 004BE348  38 6D C1 E8 */	addi r3, r13, lbl_80668368@sda21
/* 804F4D8C 004BE34C  4E 80 00 20 */	blr 

.global func_804F4D90
func_804F4D90:
/* 804F4D90 004BE350  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F4D94 004BE354  7C 08 02 A6 */	mflr r0
/* 804F4D98 004BE358  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F4D9C 004BE35C  BF C1 00 08 */	stmw r30, 8(r1)
/* 804F4DA0 004BE360  7C 9F 23 78 */	mr r31, r4
/* 804F4DA4 004BE364  80 64 00 00 */	lwz r3, 0(r4)
/* 804F4DA8 004BE368  88 03 03 24 */	lbz r0, 0x324(r3)
/* 804F4DAC 004BE36C  2C 00 00 00 */	cmpwi r0, 0
/* 804F4DB0 004BE370  41 82 00 0C */	beq .L_804F4DBC
/* 804F4DB4 004BE374  38 60 00 00 */	li r3, 0
/* 804F4DB8 004BE378  48 00 02 B4 */	b .L_804F506C
.L_804F4DBC:
/* 804F4DBC 004BE37C  88 0D C1 28 */	lbz r0, lbl_806682A8@sda21(r13)
/* 804F4DC0 004BE380  2C 00 00 00 */	cmpwi r0, 0
/* 804F4DC4 004BE384  41 82 00 0C */	beq .L_804F4DD0
/* 804F4DC8 004BE388  38 60 00 00 */	li r3, 0
/* 804F4DCC 004BE38C  48 00 02 A0 */	b .L_804F506C
.L_804F4DD0:
/* 804F4DD0 004BE390  88 04 00 04 */	lbz r0, 4(r4)
/* 804F4DD4 004BE394  7C 00 07 75 */	extsb. r0, r0
/* 804F4DD8 004BE398  40 81 00 90 */	ble .L_804F4E68
/* 804F4DDC 004BE39C  2C 00 00 02 */	cmpwi r0, 2
/* 804F4DE0 004BE3A0  40 82 00 58 */	bne .L_804F4E38
/* 804F4DE4 004BE3A4  80 0D C1 2C */	lwz r0, lbl_806682AC@sda21(r13)
/* 804F4DE8 004BE3A8  2C 00 FF F4 */	cmpwi r0, -12
/* 804F4DEC 004BE3AC  41 82 00 2C */	beq .L_804F4E18
/* 804F4DF0 004BE3B0  40 80 00 10 */	bge .L_804F4E00
/* 804F4DF4 004BE3B4  2C 00 FF F1 */	cmpwi r0, -15
/* 804F4DF8 004BE3B8  41 82 00 2C */	beq .L_804F4E24
/* 804F4DFC 004BE3BC  48 00 00 34 */	b .L_804F4E30
.L_804F4E00:
/* 804F4E00 004BE3C0  2C 00 FF FB */	cmpwi r0, -5
/* 804F4E04 004BE3C4  41 82 00 20 */	beq .L_804F4E24
/* 804F4E08 004BE3C8  41 80 00 28 */	blt .L_804F4E30
/* 804F4E0C 004BE3CC  2C 00 00 00 */	cmpwi r0, 0
/* 804F4E10 004BE3D0  40 80 00 58 */	bge .L_804F4E68
/* 804F4E14 004BE3D4  48 00 00 1C */	b .L_804F4E30
.L_804F4E18:
/* 804F4E18 004BE3D8  38 00 00 05 */	li r0, 5
/* 804F4E1C 004BE3DC  98 04 00 04 */	stb r0, 4(r4)
/* 804F4E20 004BE3E0  48 00 00 48 */	b .L_804F4E68
.L_804F4E24:
/* 804F4E24 004BE3E4  38 00 00 05 */	li r0, 5
/* 804F4E28 004BE3E8  98 04 00 04 */	stb r0, 4(r4)
/* 804F4E2C 004BE3EC  48 00 00 3C */	b .L_804F4E68
.L_804F4E30:
/* 804F4E30 004BE3F0  38 60 00 02 */	li r3, 2
/* 804F4E34 004BE3F4  48 00 02 38 */	b .L_804F506C
.L_804F4E38:
/* 804F4E38 004BE3F8  2C 00 00 07 */	cmpwi r0, 7
/* 804F4E3C 004BE3FC  40 82 00 18 */	bne .L_804F4E54
/* 804F4E40 004BE400  88 03 03 25 */	lbz r0, 0x325(r3)
/* 804F4E44 004BE404  2C 00 00 00 */	cmpwi r0, 0
/* 804F4E48 004BE408  41 82 00 20 */	beq .L_804F4E68
/* 804F4E4C 004BE40C  38 60 00 02 */	li r3, 2
/* 804F4E50 004BE410  48 00 02 1C */	b .L_804F506C
.L_804F4E54:
/* 804F4E54 004BE414  80 0D C1 2C */	lwz r0, lbl_806682AC@sda21(r13)
/* 804F4E58 004BE418  2C 00 00 00 */	cmpwi r0, 0
/* 804F4E5C 004BE41C  40 80 00 0C */	bge .L_804F4E68
/* 804F4E60 004BE420  38 60 00 02 */	li r3, 2
/* 804F4E64 004BE424  48 00 02 08 */	b .L_804F506C
.L_804F4E68:
/* 804F4E68 004BE428  88 04 00 04 */	lbz r0, 4(r4)
/* 804F4E6C 004BE42C  7C 00 07 74 */	extsb r0, r0
/* 804F4E70 004BE430  28 00 00 0B */	cmplwi r0, 0xb
/* 804F4E74 004BE434  41 81 01 F4 */	bgt .L_804F5068
/* 804F4E78 004BE438  3C 60 80 57 */	lis r3, lbl_80573B70@ha
/* 804F4E7C 004BE43C  54 00 10 3A */	slwi r0, r0, 2
/* 804F4E80 004BE440  38 63 3B 70 */	addi r3, r3, lbl_80573B70@l
/* 804F4E84 004BE444  7C 63 00 2E */	lwzx r3, r3, r0
/* 804F4E88 004BE448  7C 69 03 A6 */	mtctr r3
/* 804F4E8C 004BE44C  4E 80 04 20 */	bctr
switch_804F4E90:
/* 804F4E90 004BE450  4B FE 5B 91 */	bl func_804DAA20
/* 804F4E94 004BE454  2C 03 00 00 */	cmpwi r3, 0
/* 804F4E98 004BE458  40 82 00 0C */	bne .L_804F4EA4
/* 804F4E9C 004BE45C  38 60 00 02 */	li r3, 2
/* 804F4EA0 004BE460  48 00 01 CC */	b .L_804F506C
.L_804F4EA4:
/* 804F4EA4 004BE464  4B FE 5A 79 */	bl func_804DA91C
/* 804F4EA8 004BE468  2C 03 00 00 */	cmpwi r3, 0
/* 804F4EAC 004BE46C  41 82 00 0C */	beq .L_804F4EB8
/* 804F4EB0 004BE470  38 60 00 02 */	li r3, 2
/* 804F4EB4 004BE474  48 00 01 B8 */	b .L_804F506C
.L_804F4EB8:
/* 804F4EB8 004BE478  38 00 00 01 */	li r0, 1
/* 804F4EBC 004BE47C  98 1F 00 04 */	stb r0, 4(r31)
/* 804F4EC0 004BE480  48 00 01 A8 */	b .L_804F5068
switch_804F4EC4:
/* 804F4EC4 004BE484  80 6D A4 6C */	lwz r3, lbl_806665EC@sda21(r13)
/* 804F4EC8 004BE488  38 80 00 01 */	li r4, 1
/* 804F4ECC 004BE48C  4B FE 56 75 */	bl func_804DA540
/* 804F4ED0 004BE490  2C 03 00 00 */	cmpwi r3, 0
/* 804F4ED4 004BE494  41 82 00 0C */	beq .L_804F4EE0
/* 804F4ED8 004BE498  38 60 00 02 */	li r3, 2
/* 804F4EDC 004BE49C  48 00 01 90 */	b .L_804F506C
.L_804F4EE0:
/* 804F4EE0 004BE4A0  38 00 00 02 */	li r0, 2
/* 804F4EE4 004BE4A4  98 1F 00 04 */	stb r0, 4(r31)
/* 804F4EE8 004BE4A8  48 00 01 80 */	b .L_804F5068
switch_804F4EEC:
/* 804F4EEC 004BE4AC  38 64 00 08 */	addi r3, r4, 8
/* 804F4EF0 004BE4B0  4B FE 59 3D */	bl func_804DA82C
/* 804F4EF4 004BE4B4  2C 03 00 00 */	cmpwi r3, 0
/* 804F4EF8 004BE4B8  41 82 00 0C */	beq .L_804F4F04
/* 804F4EFC 004BE4BC  38 60 00 02 */	li r3, 2
/* 804F4F00 004BE4C0  48 00 01 6C */	b .L_804F506C
.L_804F4F04:
/* 804F4F04 004BE4C4  38 00 00 03 */	li r0, 3
/* 804F4F08 004BE4C8  98 1F 00 04 */	stb r0, 4(r31)
/* 804F4F0C 004BE4CC  48 00 01 5C */	b .L_804F5068
switch_804F4F10:
/* 804F4F10 004BE4D0  4B FE 57 8D */	bl func_804DA69C
/* 804F4F14 004BE4D4  2C 03 00 00 */	cmpwi r3, 0
/* 804F4F18 004BE4D8  41 82 00 0C */	beq .L_804F4F24
/* 804F4F1C 004BE4DC  38 60 00 02 */	li r3, 2
/* 804F4F20 004BE4E0  48 00 01 4C */	b .L_804F506C
.L_804F4F24:
/* 804F4F24 004BE4E4  80 1F 00 08 */	lwz r0, 8(r31)
/* 804F4F28 004BE4E8  2C 00 00 00 */	cmpwi r0, 0
/* 804F4F2C 004BE4EC  40 82 00 10 */	bne .L_804F4F3C
/* 804F4F30 004BE4F0  38 00 00 05 */	li r0, 5
/* 804F4F34 004BE4F4  98 1F 00 04 */	stb r0, 4(r31)
/* 804F4F38 004BE4F8  48 00 01 30 */	b .L_804F5068
.L_804F4F3C:
/* 804F4F3C 004BE4FC  38 00 00 04 */	li r0, 4
/* 804F4F40 004BE500  98 1F 00 04 */	stb r0, 4(r31)
/* 804F4F44 004BE504  48 00 01 24 */	b .L_804F5068
switch_804F4F48:
/* 804F4F48 004BE508  38 60 00 01 */	li r3, 1
/* 804F4F4C 004BE50C  48 00 01 20 */	b .L_804F506C
switch_804F4F50:
/* 804F4F50 004BE510  7F E3 FB 78 */	mr r3, r31
/* 804F4F54 004BE514  48 00 01 7D */	bl func_804F50D0
/* 804F4F58 004BE518  38 80 00 34 */	li r4, 0x34
/* 804F4F5C 004BE51C  38 A0 00 00 */	li r5, 0
/* 804F4F60 004BE520  4B FE 57 AD */	bl func_804DA70C
/* 804F4F64 004BE524  2C 03 00 00 */	cmpwi r3, 0
/* 804F4F68 004BE528  41 82 00 14 */	beq .L_804F4F7C
/* 804F4F6C 004BE52C  2C 03 FF FA */	cmpwi r3, -6
/* 804F4F70 004BE530  41 82 00 0C */	beq .L_804F4F7C
/* 804F4F74 004BE534  38 60 00 02 */	li r3, 2
/* 804F4F78 004BE538  48 00 00 F4 */	b .L_804F506C
.L_804F4F7C:
/* 804F4F7C 004BE53C  38 00 00 06 */	li r0, 6
/* 804F4F80 004BE540  98 1F 00 04 */	stb r0, 4(r31)
/* 804F4F84 004BE544  48 00 00 E4 */	b .L_804F5068
switch_804F4F88:
/* 804F4F88 004BE548  80 64 00 00 */	lwz r3, 0(r4)
/* 804F4F8C 004BE54C  48 00 04 51 */	bl func_804F53DC
/* 804F4F90 004BE550  2C 03 00 00 */	cmpwi r3, 0
/* 804F4F94 004BE554  40 82 00 0C */	bne .L_804F4FA0
/* 804F4F98 004BE558  38 60 00 02 */	li r3, 2
/* 804F4F9C 004BE55C  48 00 00 D0 */	b .L_804F506C
.L_804F4FA0:
/* 804F4FA0 004BE560  38 00 00 07 */	li r0, 7
/* 804F4FA4 004BE564  98 1F 00 04 */	stb r0, 4(r31)
/* 804F4FA8 004BE568  48 00 00 C0 */	b .L_804F5068
switch_804F4FAC:
/* 804F4FAC 004BE56C  7F E3 FB 78 */	mr r3, r31
/* 804F4FB0 004BE570  48 00 01 21 */	bl func_804F50D0
/* 804F4FB4 004BE574  38 80 00 02 */	li r4, 2
/* 804F4FB8 004BE578  4B FE 55 89 */	bl func_804DA540
/* 804F4FBC 004BE57C  2C 03 00 00 */	cmpwi r3, 0
/* 804F4FC0 004BE580  41 82 00 0C */	beq .L_804F4FCC
/* 804F4FC4 004BE584  38 60 00 02 */	li r3, 2
/* 804F4FC8 004BE588  48 00 00 A4 */	b .L_804F506C
.L_804F4FCC:
/* 804F4FCC 004BE58C  38 00 00 08 */	li r0, 8
/* 804F4FD0 004BE590  98 1F 00 04 */	stb r0, 4(r31)
/* 804F4FD4 004BE594  48 00 00 94 */	b .L_804F5068
switch_804F4FD8:
/* 804F4FD8 004BE598  80 84 00 00 */	lwz r4, 0(r4)
/* 804F4FDC 004BE59C  80 64 00 04 */	lwz r3, 4(r4)
/* 804F4FE0 004BE5A0  80 84 00 08 */	lwz r4, 8(r4)
/* 804F4FE4 004BE5A4  4B FE 56 45 */	bl func_804DA628
/* 804F4FE8 004BE5A8  2C 03 00 00 */	cmpwi r3, 0
/* 804F4FEC 004BE5AC  41 82 00 0C */	beq .L_804F4FF8
/* 804F4FF0 004BE5B0  38 60 00 02 */	li r3, 2
/* 804F4FF4 004BE5B4  48 00 00 78 */	b .L_804F506C
.L_804F4FF8:
/* 804F4FF8 004BE5B8  38 00 00 09 */	li r0, 9
/* 804F4FFC 004BE5BC  98 1F 00 04 */	stb r0, 4(r31)
/* 804F5000 004BE5C0  48 00 00 68 */	b .L_804F5068
switch_804F5004:
/* 804F5004 004BE5C4  4B FE 56 99 */	bl func_804DA69C
/* 804F5008 004BE5C8  2C 03 00 00 */	cmpwi r3, 0
/* 804F500C 004BE5CC  41 82 00 0C */	beq .L_804F5018
/* 804F5010 004BE5D0  38 60 00 02 */	li r3, 2
/* 804F5014 004BE5D4  48 00 00 58 */	b .L_804F506C
.L_804F5018:
/* 804F5018 004BE5D8  38 00 00 0A */	li r0, 0xa
/* 804F501C 004BE5DC  98 1F 00 04 */	stb r0, 4(r31)
/* 804F5020 004BE5E0  48 00 00 48 */	b .L_804F5068
switch_804F5024:
/* 804F5024 004BE5E4  80 64 00 00 */	lwz r3, 0(r4)
/* 804F5028 004BE5E8  48 00 07 11 */	bl func_804F5738
/* 804F502C 004BE5EC  4B FE 59 61 */	bl func_804DA98C
/* 804F5030 004BE5F0  7C 7E 1B 78 */	mr r30, r3
/* 804F5034 004BE5F4  7F E3 FB 78 */	mr r3, r31
/* 804F5038 004BE5F8  48 00 00 99 */	bl func_804F50D0
/* 804F503C 004BE5FC  7F C4 F3 78 */	mr r4, r30
/* 804F5040 004BE600  4B FE 57 8D */	bl func_804DA7CC
/* 804F5044 004BE604  2C 03 00 00 */	cmpwi r3, 0
/* 804F5048 004BE608  41 82 00 0C */	beq .L_804F5054
/* 804F504C 004BE60C  38 60 00 02 */	li r3, 2
/* 804F5050 004BE610  48 00 00 1C */	b .L_804F506C
.L_804F5054:
/* 804F5054 004BE614  38 00 00 0B */	li r0, 0xb
/* 804F5058 004BE618  98 1F 00 04 */	stb r0, 4(r31)
/* 804F505C 004BE61C  48 00 00 0C */	b .L_804F5068
switch_804F5060:
/* 804F5060 004BE620  38 00 00 04 */	li r0, 4
/* 804F5064 004BE624  98 04 00 04 */	stb r0, 4(r4)
.L_804F5068:
/* 804F5068 004BE628  38 60 00 00 */	li r3, 0
.L_804F506C:
/* 804F506C 004BE62C  BB C1 00 08 */	lmw r30, 8(r1)
/* 804F5070 004BE630  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F5074 004BE634  7C 08 03 A6 */	mtlr r0
/* 804F5078 004BE638  38 21 00 10 */	addi r1, r1, 0x10
/* 804F507C 004BE63C  4E 80 00 20 */	blr 

.global func_804F5080
func_804F5080:
/* 804F5080 004BE640  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F5084 004BE644  7C 08 02 A6 */	mflr r0
/* 804F5088 004BE648  2C 04 00 00 */	cmpwi r4, 0
/* 804F508C 004BE64C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F5090 004BE650  BF C1 00 08 */	stmw r30, 8(r1)
/* 804F5094 004BE654  7C 7E 1B 78 */	mr r30, r3
/* 804F5098 004BE658  7C 9F 23 78 */	mr r31, r4
/* 804F509C 004BE65C  41 82 00 14 */	beq .L_804F50B0
/* 804F50A0 004BE660  80 64 00 00 */	lwz r3, 0(r4)
/* 804F50A4 004BE664  2C 03 00 00 */	cmpwi r3, 0
/* 804F50A8 004BE668  41 82 00 08 */	beq .L_804F50B0
/* 804F50AC 004BE66C  48 00 06 8D */	bl func_804F5738
.L_804F50B0:
/* 804F50B0 004BE670  7F C3 F3 78 */	mr r3, r30
/* 804F50B4 004BE674  7F E4 FB 78 */	mr r4, r31
/* 804F50B8 004BE678  4B FE 54 15 */	bl func_804DA4CC
/* 804F50BC 004BE67C  BB C1 00 08 */	lmw r30, 8(r1)
/* 804F50C0 004BE680  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F50C4 004BE684  7C 08 03 A6 */	mtlr r0
/* 804F50C8 004BE688  38 21 00 10 */	addi r1, r1, 0x10
/* 804F50CC 004BE68C  4E 80 00 20 */	blr 

.global func_804F50D0
func_804F50D0:
/* 804F50D0 004BE690  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F50D4 004BE694  7C 08 02 A6 */	mflr r0
/* 804F50D8 004BE698  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F50DC 004BE69C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F50E0 004BE6A0  88 0D C1 EC */	lbz r0, lbl_8066836C@sda21(r13)
/* 804F50E4 004BE6A4  7C 00 07 75 */	extsb. r0, r0
/* 804F50E8 004BE6A8  40 82 00 20 */	bne .L_804F5108
/* 804F50EC 004BE6AC  3C 80 80 66 */	lis r4, lbl_80664158@ha
/* 804F50F0 004BE6B0  38 A0 00 00 */	li r5, 0
/* 804F50F4 004BE6B4  38 64 41 58 */	addi r3, r4, lbl_80664158@l
/* 804F50F8 004BE6B8  38 00 00 01 */	li r0, 1
/* 804F50FC 004BE6BC  98 A4 41 58 */	stb r5, lbl_80664158@l(r4)
/* 804F5100 004BE6C0  90 A3 00 20 */	stw r5, 0x20(r3)
/* 804F5104 004BE6C4  98 0D C1 EC */	stb r0, lbl_8066836C@sda21(r13)
.L_804F5108:
/* 804F5108 004BE6C8  3F E0 80 66 */	lis r31, lbl_80664158@ha
/* 804F510C 004BE6CC  3C 80 80 53 */	lis r4, lbl_805281B0@ha
/* 804F5110 004BE6D0  80 AD A4 68 */	lwz r5, lbl_806665E8@sda21(r13)
/* 804F5114 004BE6D4  38 7F 41 58 */	addi r3, r31, lbl_80664158@l
/* 804F5118 004BE6D8  80 CD A4 6C */	lwz r6, lbl_806665EC@sda21(r13)
/* 804F511C 004BE6DC  38 84 81 B0 */	addi r4, r4, lbl_805281B0@l
/* 804F5120 004BE6E0  4C C6 31 82 */	crclr 6
/* 804F5124 004BE6E4  4B B4 EE 95 */	bl func_80043FB8
/* 804F5128 004BE6E8  38 7F 41 58 */	addi r3, r31, lbl_80664158@l
/* 804F512C 004BE6EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F5130 004BE6F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F5134 004BE6F4  7C 08 03 A6 */	mtlr r0
/* 804F5138 004BE6F8  38 21 00 10 */	addi r1, r1, 0x10
/* 804F513C 004BE6FC  4E 80 00 20 */	blr

.global sinit_804F5140
sinit_804F5140:
/* 804F5140 004BE700  38 6D C1 E8 */	addi r3, r13, lbl_80668368@sda21
/* 804F5144 004BE704  48 00 00 04 */	b .L_804F5148
.L_804F5148:
/* 804F5148 004BE708  3C 80 80 57 */	lis r4, __vt__CNReqtaskSaveBanner@ha
/* 804F514C 004BE70C  38 84 3B A0 */	addi r4, r4, __vt__CNReqtaskSaveBanner@l
/* 804F5150 004BE710  90 83 00 00 */	stw r4, 0(r3)
/* 804F5154 004BE714  4E 80 00 20 */	blr

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.4byte sinit_804F5140

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global lbl_80528190
lbl_80528190:
	.asciz "banner.bin"
	.balign 4

.global CNReqtaskSaveBanner_typestr
CNReqtaskSaveBanner_typestr:
	.asciz "CNReqtaskSaveBanner"


.global lbl_805281B0
lbl_805281B0:
	.asciz "%s%s"
	.balign 4

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_80573B70
lbl_80573B70:
	.4byte switch_804F4E90
	.4byte switch_804F4EC4
	.4byte switch_804F4EEC
	.4byte switch_804F4F10
	.4byte switch_804F4F48
	.4byte switch_804F4F50
	.4byte switch_804F4F88
	.4byte switch_804F4FAC
	.4byte switch_804F4FD8
	.4byte switch_804F5004
	.4byte switch_804F5024
	.4byte switch_804F5060


.global __vt__CNReqtaskSaveBanner
__vt__CNReqtaskSaveBanner:
	.4byte __RTTI__CNReqtaskSaveBanner
	.4byte 0
	.4byte func_804F4D90
	.4byte func_804F5080

.global CNReqtaskSaveBanner_hierarchy
CNReqtaskSaveBanner_hierarchy:
	.4byte __RTTI__CNReqtask
	.4byte 0
	.4byte 0
	.4byte 0


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global lbl_806665E8
lbl_806665E8:
	.4byte lbl_8066DCD0


.global lbl_806665EC
lbl_806665EC:
	.4byte lbl_80528190

.global __RTTI__CNReqtaskSaveBanner
__RTTI__CNReqtaskSaveBanner:
	.4byte CNReqtaskSaveBanner_typestr
	.4byte CNReqtaskSaveBanner_hierarchy

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.global lbl_8066DCD0
lbl_8066DCD0:
	.asciz "/tmp/"
	.balign 4

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.global lbl_80664158
lbl_80664158:
	.skip 0x24

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.global lbl_80668368
lbl_80668368:
	.skip 0x4
.global lbl_8066836C
lbl_8066836C:
	.skip 0x4

.section extab, "a"  # 0x800066E0 - 0x80021020

.global lbl_80020FBC
lbl_80020FBC:
	.4byte 0x10080000
	.4byte 0

.global lbl_80020FC4
lbl_80020FC4:
	.4byte 0x10080000
	.4byte 0

.global lbl_80020FCC
lbl_80020FCC:
	.4byte 0x08080000
	.4byte 0


.section extabindex, "a"  # 0x80021020 - 0x80039220

.4byte func_804F4D90
	.4byte 0x000002F0
	.4byte lbl_80020FBC
	.4byte func_804F5080
	.4byte 0x00000050
	.4byte lbl_80020FC4
	.4byte func_804F50D0
	.4byte 0x00000070
	.4byte lbl_80020FCC
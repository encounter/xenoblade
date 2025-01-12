.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global SFD_Pause
SFD_Pause:
/* 803C8BA8 00392168  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C8BAC 0039216C  7C 08 02 A6 */	mflr r0
/* 803C8BB0 00392170  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C8BB4 00392174  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803C8BB8 00392178  7C 9F 23 78 */	mr r31, r4
/* 803C8BBC 0039217C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803C8BC0 00392180  7C 7E 1B 78 */	mr r30, r3
/* 803C8BC4 00392184  4B FF 82 41 */	bl SFLIB_CheckHn
/* 803C8BC8 00392188  2C 03 00 00 */	cmpwi r3, 0
/* 803C8BCC 0039218C  41 82 00 18 */	beq .L_803C8BE4
/* 803C8BD0 00392190  3C 80 FF 00 */	lis r4, 0xFF000142@ha
/* 803C8BD4 00392194  38 60 00 00 */	li r3, 0
/* 803C8BD8 00392198  38 84 01 42 */	addi r4, r4, 0xFF000142@l
/* 803C8BDC 0039219C  4B FF 80 79 */	bl SFLIB_SetErr
/* 803C8BE0 003921A0  48 00 01 A8 */	b .L_803C8D88
.L_803C8BE4:
/* 803C8BE4 003921A4  2C 1F 00 00 */	cmpwi r31, 0
/* 803C8BE8 003921A8  80 1E 00 58 */	lwz r0, 0x58(r30)
/* 803C8BEC 003921AC  40 82 00 1C */	bne .L_803C8C08
/* 803C8BF0 003921B0  2C 00 00 00 */	cmpwi r0, 0
/* 803C8BF4 003921B4  40 82 00 0C */	bne .L_803C8C00
/* 803C8BF8 003921B8  38 60 00 00 */	li r3, 0
/* 803C8BFC 003921BC  48 00 01 8C */	b .L_803C8D88
.L_803C8C00:
/* 803C8C00 003921C0  38 00 00 00 */	li r0, 0
/* 803C8C04 003921C4  48 00 00 14 */	b .L_803C8C18
.L_803C8C08:
/* 803C8C08 003921C8  2C 00 00 00 */	cmpwi r0, 0
/* 803C8C0C 003921CC  38 00 00 02 */	li r0, 2
/* 803C8C10 003921D0  40 82 00 08 */	bne .L_803C8C18
/* 803C8C14 003921D4  38 00 00 01 */	li r0, 1
.L_803C8C18:
/* 803C8C18 003921D8  2C 00 00 01 */	cmpwi r0, 1
/* 803C8C1C 003921DC  93 FE 00 58 */	stw r31, 0x58(r30)
/* 803C8C20 003921E0  3B E0 00 00 */	li r31, 0
/* 803C8C24 003921E4  41 82 00 84 */	beq .L_803C8CA8
/* 803C8C28 003921E8  40 80 00 10 */	bge .L_803C8C38
/* 803C8C2C 003921EC  2C 00 00 00 */	cmpwi r0, 0
/* 803C8C30 003921F0  40 80 00 E8 */	bge .L_803C8D18
/* 803C8C34 003921F4  48 00 01 48 */	b .L_803C8D7C
.L_803C8C38:
/* 803C8C38 003921F8  2C 00 00 03 */	cmpwi r0, 3
/* 803C8C3C 003921FC  40 80 01 40 */	bge .L_803C8D7C
/* 803C8C40 00392200  80 1E 00 50 */	lwz r0, 0x50(r30)
/* 803C8C44 00392204  2C 00 00 04 */	cmpwi r0, 4
/* 803C8C48 00392208  40 82 01 34 */	bne .L_803C8D7C
/* 803C8C4C 0039220C  80 1E 00 54 */	lwz r0, 0x54(r30)
/* 803C8C50 00392210  2C 00 00 03 */	cmpwi r0, 3
/* 803C8C54 00392214  41 82 00 14 */	beq .L_803C8C68
/* 803C8C58 00392218  2C 00 00 04 */	cmpwi r0, 4
/* 803C8C5C 0039221C  41 82 00 0C */	beq .L_803C8C68
/* 803C8C60 00392220  3B E0 00 00 */	li r31, 0
/* 803C8C64 00392224  48 00 01 18 */	b .L_803C8D7C
.L_803C8C68:
/* 803C8C68 00392228  7F C3 F3 78 */	mr r3, r30
/* 803C8C6C 0039222C  38 80 00 02 */	li r4, 2
/* 803C8C70 00392230  48 00 4E E5 */	bl SFTIM_Pause
/* 803C8C74 00392234  38 00 00 02 */	li r0, 2
/* 803C8C78 00392238  7F C3 F3 78 */	mr r3, r30
/* 803C8C7C 0039223C  90 01 00 08 */	stw r0, 8(r1)
/* 803C8C80 00392240  38 C1 00 08 */	addi r6, r1, 8
/* 803C8C84 00392244  38 80 00 07 */	li r4, 7
/* 803C8C88 00392248  38 A0 00 08 */	li r5, 8
/* 803C8C8C 0039224C  38 E0 00 00 */	li r7, 0
/* 803C8C90 00392250  48 00 5D 2D */	bl SFTRN_CallTrtTrif
/* 803C8C94 00392254  2C 03 00 00 */	cmpwi r3, 0
/* 803C8C98 00392258  3B E0 00 00 */	li r31, 0
/* 803C8C9C 0039225C  41 82 00 E0 */	beq .L_803C8D7C
/* 803C8CA0 00392260  7C 7F 1B 78 */	mr r31, r3
/* 803C8CA4 00392264  48 00 00 D8 */	b .L_803C8D7C
.L_803C8CA8:
/* 803C8CA8 00392268  80 7E 00 5C */	lwz r3, 0x5c(r30)
/* 803C8CAC 0039226C  38 03 00 01 */	addi r0, r3, 1
/* 803C8CB0 00392270  2C 03 00 00 */	cmpwi r3, 0
/* 803C8CB4 00392274  90 1E 00 5C */	stw r0, 0x5c(r30)
/* 803C8CB8 00392278  40 82 00 C4 */	bne .L_803C8D7C
/* 803C8CBC 0039227C  80 1E 00 54 */	lwz r0, 0x54(r30)
/* 803C8CC0 00392280  2C 00 00 03 */	cmpwi r0, 3
/* 803C8CC4 00392284  41 82 00 14 */	beq .L_803C8CD8
/* 803C8CC8 00392288  2C 00 00 04 */	cmpwi r0, 4
/* 803C8CCC 0039228C  41 82 00 0C */	beq .L_803C8CD8
/* 803C8CD0 00392290  3B E0 00 00 */	li r31, 0
/* 803C8CD4 00392294  48 00 00 A8 */	b .L_803C8D7C
.L_803C8CD8:
/* 803C8CD8 00392298  7F C3 F3 78 */	mr r3, r30
/* 803C8CDC 0039229C  38 80 00 01 */	li r4, 1
/* 803C8CE0 003922A0  48 00 4E 75 */	bl SFTIM_Pause
/* 803C8CE4 003922A4  38 00 00 01 */	li r0, 1
/* 803C8CE8 003922A8  7F C3 F3 78 */	mr r3, r30
/* 803C8CEC 003922AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 803C8CF0 003922B0  38 C1 00 0C */	addi r6, r1, 0xc
/* 803C8CF4 003922B4  38 80 00 07 */	li r4, 7
/* 803C8CF8 003922B8  38 A0 00 08 */	li r5, 8
/* 803C8CFC 003922BC  38 E0 00 00 */	li r7, 0
/* 803C8D00 003922C0  48 00 5C BD */	bl SFTRN_CallTrtTrif
/* 803C8D04 003922C4  2C 03 00 00 */	cmpwi r3, 0
/* 803C8D08 003922C8  3B E0 00 00 */	li r31, 0
/* 803C8D0C 003922CC  41 82 00 70 */	beq .L_803C8D7C
/* 803C8D10 003922D0  7C 7F 1B 78 */	mr r31, r3
/* 803C8D14 003922D4  48 00 00 68 */	b .L_803C8D7C
.L_803C8D18:
/* 803C8D18 003922D8  80 1E 00 5C */	lwz r0, 0x5c(r30)
/* 803C8D1C 003922DC  34 00 FF FF */	addic. r0, r0, -1
/* 803C8D20 003922E0  90 1E 00 5C */	stw r0, 0x5c(r30)
/* 803C8D24 003922E4  40 82 00 58 */	bne .L_803C8D7C
/* 803C8D28 003922E8  80 1E 00 54 */	lwz r0, 0x54(r30)
/* 803C8D2C 003922EC  2C 00 00 03 */	cmpwi r0, 3
/* 803C8D30 003922F0  41 82 00 14 */	beq .L_803C8D44
/* 803C8D34 003922F4  2C 00 00 04 */	cmpwi r0, 4
/* 803C8D38 003922F8  41 82 00 0C */	beq .L_803C8D44
/* 803C8D3C 003922FC  3B E0 00 00 */	li r31, 0
/* 803C8D40 00392300  48 00 00 3C */	b .L_803C8D7C
.L_803C8D44:
/* 803C8D44 00392304  7F C3 F3 78 */	mr r3, r30
/* 803C8D48 00392308  38 80 00 00 */	li r4, 0
/* 803C8D4C 0039230C  48 00 4E 09 */	bl SFTIM_Pause
/* 803C8D50 00392310  3B E0 00 00 */	li r31, 0
/* 803C8D54 00392314  7F C3 F3 78 */	mr r3, r30
/* 803C8D58 00392318  93 E1 00 10 */	stw r31, 0x10(r1)
/* 803C8D5C 0039231C  38 C1 00 10 */	addi r6, r1, 0x10
/* 803C8D60 00392320  38 80 00 07 */	li r4, 7
/* 803C8D64 00392324  38 A0 00 08 */	li r5, 8
/* 803C8D68 00392328  38 E0 00 00 */	li r7, 0
/* 803C8D6C 0039232C  48 00 5C 51 */	bl SFTRN_CallTrtTrif
/* 803C8D70 00392330  2C 03 00 00 */	cmpwi r3, 0
/* 803C8D74 00392334  41 82 00 08 */	beq .L_803C8D7C
/* 803C8D78 00392338  7C 7F 1B 78 */	mr r31, r3
.L_803C8D7C:
/* 803C8D7C 0039233C  38 00 00 01 */	li r0, 1
/* 803C8D80 00392340  7F E3 FB 78 */	mr r3, r31
/* 803C8D84 00392344  90 1E 00 4C */	stw r0, 0x4c(r30)
.L_803C8D88:
/* 803C8D88 00392348  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C8D8C 0039234C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803C8D90 00392350  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803C8D94 00392354  7C 08 03 A6 */	mtlr r0
/* 803C8D98 00392358  38 21 00 20 */	addi r1, r1, 0x20
/* 803C8D9C 0039235C  4E 80 00 20 */	blr 

.global SFPL2_Pause
SFPL2_Pause:
/* 803C8DA0 00392360  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C8DA4 00392364  7C 08 02 A6 */	mflr r0
/* 803C8DA8 00392368  2C 04 00 01 */	cmpwi r4, 1
/* 803C8DAC 0039236C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C8DB0 00392370  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803C8DB4 00392374  3B E0 00 00 */	li r31, 0
/* 803C8DB8 00392378  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803C8DBC 0039237C  7C 7E 1B 78 */	mr r30, r3
/* 803C8DC0 00392380  41 82 00 84 */	beq .L_803C8E44
/* 803C8DC4 00392384  40 80 00 10 */	bge .L_803C8DD4
/* 803C8DC8 00392388  2C 04 00 00 */	cmpwi r4, 0
/* 803C8DCC 0039238C  40 80 00 E8 */	bge .L_803C8EB4
/* 803C8DD0 00392390  48 00 01 48 */	b .L_803C8F18
.L_803C8DD4:
/* 803C8DD4 00392394  2C 04 00 03 */	cmpwi r4, 3
/* 803C8DD8 00392398  40 80 01 40 */	bge .L_803C8F18
/* 803C8DDC 0039239C  80 03 00 50 */	lwz r0, 0x50(r3)
/* 803C8DE0 003923A0  2C 00 00 04 */	cmpwi r0, 4
/* 803C8DE4 003923A4  40 82 01 34 */	bne .L_803C8F18
/* 803C8DE8 003923A8  80 03 00 54 */	lwz r0, 0x54(r3)
/* 803C8DEC 003923AC  2C 00 00 03 */	cmpwi r0, 3
/* 803C8DF0 003923B0  41 82 00 14 */	beq .L_803C8E04
/* 803C8DF4 003923B4  2C 00 00 04 */	cmpwi r0, 4
/* 803C8DF8 003923B8  41 82 00 0C */	beq .L_803C8E04
/* 803C8DFC 003923BC  3B E0 00 00 */	li r31, 0
/* 803C8E00 003923C0  48 00 01 18 */	b .L_803C8F18
.L_803C8E04:
/* 803C8E04 003923C4  7F C3 F3 78 */	mr r3, r30
/* 803C8E08 003923C8  38 80 00 02 */	li r4, 2
/* 803C8E0C 003923CC  48 00 4D 49 */	bl SFTIM_Pause
/* 803C8E10 003923D0  38 00 00 02 */	li r0, 2
/* 803C8E14 003923D4  7F C3 F3 78 */	mr r3, r30
/* 803C8E18 003923D8  90 01 00 10 */	stw r0, 0x10(r1)
/* 803C8E1C 003923DC  38 C1 00 10 */	addi r6, r1, 0x10
/* 803C8E20 003923E0  38 80 00 07 */	li r4, 7
/* 803C8E24 003923E4  38 A0 00 08 */	li r5, 8
/* 803C8E28 003923E8  38 E0 00 00 */	li r7, 0
/* 803C8E2C 003923EC  48 00 5B 91 */	bl SFTRN_CallTrtTrif
/* 803C8E30 003923F0  2C 03 00 00 */	cmpwi r3, 0
/* 803C8E34 003923F4  3B E0 00 00 */	li r31, 0
/* 803C8E38 003923F8  41 82 00 E0 */	beq .L_803C8F18
/* 803C8E3C 003923FC  7C 7F 1B 78 */	mr r31, r3
/* 803C8E40 00392400  48 00 00 D8 */	b .L_803C8F18
.L_803C8E44:
/* 803C8E44 00392404  80 83 00 5C */	lwz r4, 0x5c(r3)
/* 803C8E48 00392408  38 04 00 01 */	addi r0, r4, 1
/* 803C8E4C 0039240C  2C 04 00 00 */	cmpwi r4, 0
/* 803C8E50 00392410  90 03 00 5C */	stw r0, 0x5c(r3)
/* 803C8E54 00392414  40 82 00 C4 */	bne .L_803C8F18
/* 803C8E58 00392418  80 03 00 54 */	lwz r0, 0x54(r3)
/* 803C8E5C 0039241C  2C 00 00 03 */	cmpwi r0, 3
/* 803C8E60 00392420  41 82 00 14 */	beq .L_803C8E74
/* 803C8E64 00392424  2C 00 00 04 */	cmpwi r0, 4
/* 803C8E68 00392428  41 82 00 0C */	beq .L_803C8E74
/* 803C8E6C 0039242C  3B E0 00 00 */	li r31, 0
/* 803C8E70 00392430  48 00 00 A8 */	b .L_803C8F18
.L_803C8E74:
/* 803C8E74 00392434  7F C3 F3 78 */	mr r3, r30
/* 803C8E78 00392438  38 80 00 01 */	li r4, 1
/* 803C8E7C 0039243C  48 00 4C D9 */	bl SFTIM_Pause
/* 803C8E80 00392440  38 00 00 01 */	li r0, 1
/* 803C8E84 00392444  7F C3 F3 78 */	mr r3, r30
/* 803C8E88 00392448  90 01 00 0C */	stw r0, 0xc(r1)
/* 803C8E8C 0039244C  38 C1 00 0C */	addi r6, r1, 0xc
/* 803C8E90 00392450  38 80 00 07 */	li r4, 7
/* 803C8E94 00392454  38 A0 00 08 */	li r5, 8
/* 803C8E98 00392458  38 E0 00 00 */	li r7, 0
/* 803C8E9C 0039245C  48 00 5B 21 */	bl SFTRN_CallTrtTrif
/* 803C8EA0 00392460  2C 03 00 00 */	cmpwi r3, 0
/* 803C8EA4 00392464  3B E0 00 00 */	li r31, 0
/* 803C8EA8 00392468  41 82 00 70 */	beq .L_803C8F18
/* 803C8EAC 0039246C  7C 7F 1B 78 */	mr r31, r3
/* 803C8EB0 00392470  48 00 00 68 */	b .L_803C8F18
.L_803C8EB4:
/* 803C8EB4 00392474  80 03 00 5C */	lwz r0, 0x5c(r3)
/* 803C8EB8 00392478  34 00 FF FF */	addic. r0, r0, -1
/* 803C8EBC 0039247C  90 03 00 5C */	stw r0, 0x5c(r3)
/* 803C8EC0 00392480  40 82 00 58 */	bne .L_803C8F18
/* 803C8EC4 00392484  80 03 00 54 */	lwz r0, 0x54(r3)
/* 803C8EC8 00392488  2C 00 00 03 */	cmpwi r0, 3
/* 803C8ECC 0039248C  41 82 00 14 */	beq .L_803C8EE0
/* 803C8ED0 00392490  2C 00 00 04 */	cmpwi r0, 4
/* 803C8ED4 00392494  41 82 00 0C */	beq .L_803C8EE0
/* 803C8ED8 00392498  3B E0 00 00 */	li r31, 0
/* 803C8EDC 0039249C  48 00 00 3C */	b .L_803C8F18
.L_803C8EE0:
/* 803C8EE0 003924A0  7F C3 F3 78 */	mr r3, r30
/* 803C8EE4 003924A4  38 80 00 00 */	li r4, 0
/* 803C8EE8 003924A8  48 00 4C 6D */	bl SFTIM_Pause
/* 803C8EEC 003924AC  3B E0 00 00 */	li r31, 0
/* 803C8EF0 003924B0  7F C3 F3 78 */	mr r3, r30
/* 803C8EF4 003924B4  93 E1 00 08 */	stw r31, 8(r1)
/* 803C8EF8 003924B8  38 C1 00 08 */	addi r6, r1, 8
/* 803C8EFC 003924BC  38 80 00 07 */	li r4, 7
/* 803C8F00 003924C0  38 A0 00 08 */	li r5, 8
/* 803C8F04 003924C4  38 E0 00 00 */	li r7, 0
/* 803C8F08 003924C8  48 00 5A B5 */	bl SFTRN_CallTrtTrif
/* 803C8F0C 003924CC  2C 03 00 00 */	cmpwi r3, 0
/* 803C8F10 003924D0  41 82 00 08 */	beq .L_803C8F18
/* 803C8F14 003924D4  7C 7F 1B 78 */	mr r31, r3
.L_803C8F18:
/* 803C8F18 003924D8  7F E3 FB 78 */	mr r3, r31
/* 803C8F1C 003924DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803C8F20 003924E0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803C8F24 003924E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C8F28 003924E8  7C 08 03 A6 */	mtlr r0
/* 803C8F2C 003924EC  38 21 00 20 */	addi r1, r1, 0x20
/* 803C8F30 003924F0  4E 80 00 20 */	blr 

.global SFD_Standby
SFD_Standby:
/* 803C8F34 003924F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C8F38 003924F8  7C 08 02 A6 */	mflr r0
/* 803C8F3C 003924FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C8F40 00392500  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C8F44 00392504  7C 7F 1B 78 */	mr r31, r3
/* 803C8F48 00392508  4B FF 7E BD */	bl SFLIB_CheckHn
/* 803C8F4C 0039250C  2C 03 00 00 */	cmpwi r3, 0
/* 803C8F50 00392510  41 82 00 18 */	beq .L_803C8F68
/* 803C8F54 00392514  3C 80 FF 00 */	lis r4, 0xFF000143@ha
/* 803C8F58 00392518  38 60 00 00 */	li r3, 0
/* 803C8F5C 0039251C  38 84 01 43 */	addi r4, r4, 0xFF000143@l
/* 803C8F60 00392520  4B FF 7C F5 */	bl SFLIB_SetErr
/* 803C8F64 00392524  48 00 00 10 */	b .L_803C8F74
.L_803C8F68:
/* 803C8F68 00392528  38 00 00 03 */	li r0, 3
/* 803C8F6C 0039252C  38 60 00 00 */	li r3, 0
/* 803C8F70 00392530  90 1F 00 54 */	stw r0, 0x54(r31)
.L_803C8F74:
/* 803C8F74 00392534  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C8F78 00392538  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C8F7C 0039253C  7C 08 03 A6 */	mtlr r0
/* 803C8F80 00392540  38 21 00 10 */	addi r1, r1, 0x10
/* 803C8F84 00392544  4E 80 00 20 */	blr 

.global SFPL2_Standby
SFPL2_Standby:
/* 803C8F88 00392548  38 00 00 03 */	li r0, 3
/* 803C8F8C 0039254C  90 03 00 54 */	stw r0, 0x54(r3)
/* 803C8F90 00392550  38 60 00 00 */	li r3, 0
/* 803C8F94 00392554  4E 80 00 20 */	blr 

.global func_803C8F98
func_803C8F98:
/* 803C8F98 00392558  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C8F9C 0039255C  7C 08 02 A6 */	mflr r0
/* 803C8FA0 00392560  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C8FA4 00392564  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803C8FA8 00392568  7C BF 2B 78 */	mr r31, r5
/* 803C8FAC 0039256C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803C8FB0 00392570  7C 9E 23 78 */	mr r30, r4
/* 803C8FB4 00392574  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803C8FB8 00392578  7C 7D 1B 78 */	mr r29, r3
/* 803C8FBC 0039257C  4B FF 7E 49 */	bl SFLIB_CheckHn
/* 803C8FC0 00392580  2C 03 00 00 */	cmpwi r3, 0
/* 803C8FC4 00392584  41 82 00 18 */	beq .L_803C8FDC
/* 803C8FC8 00392588  3C 80 FF 00 */	lis r4, 0xFF000144@ha
/* 803C8FCC 0039258C  38 60 00 00 */	li r3, 0
/* 803C8FD0 00392590  38 84 01 44 */	addi r4, r4, 0xFF000144@l
/* 803C8FD4 00392594  4B FF 7C 81 */	bl SFLIB_SetErr
/* 803C8FD8 00392598  48 00 00 28 */	b .L_803C9000
.L_803C8FDC:
/* 803C8FDC 0039259C  7F A3 EB 78 */	mr r3, r29
/* 803C8FE0 003925A0  7F C4 F3 78 */	mr r4, r30
/* 803C8FE4 003925A4  7F E5 FB 78 */	mr r5, r31
/* 803C8FE8 003925A8  48 00 50 B9 */	bl SFTIM_SetSpeed
/* 803C8FEC 003925AC  7F A3 EB 78 */	mr r3, r29
/* 803C8FF0 003925B0  7F C4 F3 78 */	mr r4, r30
/* 803C8FF4 003925B4  7F E5 FB 78 */	mr r5, r31
/* 803C8FF8 003925B8  4B FF 59 CD */	bl SFAOAP_SetSpeed
/* 803C8FFC 003925BC  38 60 00 00 */	li r3, 0
.L_803C9000:
/* 803C9000 003925C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C9004 003925C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803C9008 003925C8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803C900C 003925CC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803C9010 003925D0  7C 08 03 A6 */	mtlr r0
/* 803C9014 003925D4  38 21 00 20 */	addi r1, r1, 0x20
/* 803C9018 003925D8  4E 80 00 20 */	blr 
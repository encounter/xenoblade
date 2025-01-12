.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_802A5B88
func_802A5B88:
/* 802A5B88 0026F148  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802A5B8C 0026F14C  7C 08 02 A6 */	mflr r0
/* 802A5B90 0026F150  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A5B94 0026F154  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802A5B98 0026F158  7C 3F 0B 78 */	mr r31, r1
/* 802A5B9C 0026F15C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802A5BA0 0026F160  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802A5BA4 0026F164  7C 9D 23 78 */	mr r29, r4
/* 802A5BA8 0026F168  93 81 00 20 */	stw r28, 0x20(r1)
/* 802A5BAC 0026F16C  7C 7C 1B 78 */	mr r28, r3
/* 802A5BB0 0026F170  80 03 3F 00 */	lwz r0, 0x3f00(r3)
/* 802A5BB4 0026F174  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802A5BB8 0026F178  40 82 00 0C */	bne .L_802A5BC4
/* 802A5BBC 0026F17C  38 60 00 00 */	li r3, 0
/* 802A5BC0 0026F180  48 00 00 A8 */	b .L_802A5C68
.L_802A5BC4:
/* 802A5BC4 0026F184  80 04 3F 00 */	lwz r0, 0x3f00(r4)
/* 802A5BC8 0026F188  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802A5BCC 0026F18C  40 82 00 0C */	bne .L_802A5BD8
/* 802A5BD0 0026F190  38 60 00 00 */	li r3, 0
/* 802A5BD4 0026F194  48 00 00 94 */	b .L_802A5C68
.L_802A5BD8:
/* 802A5BD8 0026F198  38 60 00 F0 */	li r3, 0xf0
/* 802A5BDC 0026F19C  38 80 00 01 */	li r4, 1
/* 802A5BE0 0026F1A0  4B FF D7 2D */	bl func_802A330C
/* 802A5BE4 0026F1A4  2C 03 00 00 */	cmpwi r3, 0
/* 802A5BE8 0026F1A8  40 82 00 0C */	bne .L_802A5BF4
/* 802A5BEC 0026F1AC  38 60 00 00 */	li r3, 0
/* 802A5BF0 0026F1B0  48 00 00 78 */	b .L_802A5C68
.L_802A5BF4:
/* 802A5BF4 0026F1B4  38 60 00 28 */	li r3, 0x28
/* 802A5BF8 0026F1B8  4B FF D8 ED */	bl func_802A34E4
/* 802A5BFC 0026F1BC  2C 03 00 00 */	cmpwi r3, 0
/* 802A5C00 0026F1C0  7C 7E 1B 78 */	mr r30, r3
/* 802A5C04 0026F1C4  40 82 00 0C */	bne .L_802A5C10
/* 802A5C08 0026F1C8  38 60 00 00 */	li r3, 0
/* 802A5C0C 0026F1CC  48 00 00 5C */	b .L_802A5C68
.L_802A5C10:
/* 802A5C10 0026F1D0  41 82 00 34 */	beq .L_802A5C44
/* 802A5C14 0026F1D4  90 3F 00 1C */	stw r1, 0x1c(r31)
/* 802A5C18 0026F1D8  4B FF DE 69 */	bl func_802A3A80
/* 802A5C1C 0026F1DC  3C 60 80 54 */	lis r3, __vt__cf_CVS_THREAD_DOWN@ha
/* 802A5C20 0026F1E0  38 63 D2 1C */	addi r3, r3, __vt__cf_CVS_THREAD_DOWN@l
/* 802A5C24 0026F1E4  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 802A5C28 0026F1E8  93 9E 00 20 */	stw r28, 0x20(r30)
/* 802A5C2C 0026F1EC  93 BE 00 24 */	stw r29, 0x24(r30)
/* 802A5C30 0026F1F0  48 00 00 14 */	b .L_802A5C44
/* 802A5C34 0026F1F4  38 60 00 00 */	li r3, 0
/* 802A5C38 0026F1F8  38 80 00 00 */	li r4, 0
/* 802A5C3C 0026F1FC  38 A0 00 00 */	li r5, 0
/* 802A5C40 0026F200  48 01 5F 7D */	bl __throw
.L_802A5C44:
/* 802A5C44 0026F204  3C A0 80 54 */	lis r5, lbl_8053D1F8@ha
/* 802A5C48 0026F208  7F C3 F3 78 */	mr r3, r30
/* 802A5C4C 0026F20C  38 A5 D1 F8 */	addi r5, r5, lbl_8053D1F8@l
/* 802A5C50 0026F210  80 05 00 04 */	lwz r0, 4(r5)
/* 802A5C54 0026F214  80 85 00 00 */	lwz r4, 0(r5)
/* 802A5C58 0026F218  90 9E 00 00 */	stw r4, 0(r30)
/* 802A5C5C 0026F21C  90 1E 00 04 */	stw r0, 4(r30)
/* 802A5C60 0026F220  80 05 00 08 */	lwz r0, 8(r5)
/* 802A5C64 0026F224  90 1E 00 08 */	stw r0, 8(r30)
.L_802A5C68:
/* 802A5C68 0026F228  7F EA FB 78 */	mr r10, r31
/* 802A5C6C 0026F22C  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 802A5C70 0026F230  83 CA 00 28 */	lwz r30, 0x28(r10)
/* 802A5C74 0026F234  83 AA 00 24 */	lwz r29, 0x24(r10)
/* 802A5C78 0026F238  83 8A 00 20 */	lwz r28, 0x20(r10)
/* 802A5C7C 0026F23C  81 41 00 00 */	lwz r10, 0(r1)
/* 802A5C80 0026F240  80 0A 00 04 */	lwz r0, 4(r10)
/* 802A5C84 0026F244  7D 41 53 78 */	mr r1, r10
/* 802A5C88 0026F248  7C 08 03 A6 */	mtlr r0
/* 802A5C8C 0026F24C  4E 80 00 20 */	blr 

.global func_802A5C90
func_802A5C90:
/* 802A5C90 0026F250  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A5C94 0026F254  7C 08 02 A6 */	mflr r0
/* 802A5C98 0026F258  3C A0 80 54 */	lis r5, lbl_8053D204@ha
/* 802A5C9C 0026F25C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A5CA0 0026F260  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A5CA4 0026F264  93 C1 00 08 */	stw r30, 8(r1)
/* 802A5CA8 0026F268  7C 7E 1B 78 */	mr r30, r3
/* 802A5CAC 0026F26C  84 85 D2 04 */	lwzu r4, lbl_8053D204@l(r5)
/* 802A5CB0 0026F270  80 C3 00 20 */	lwz r6, 0x20(r3)
/* 802A5CB4 0026F274  80 05 00 04 */	lwz r0, 4(r5)
/* 802A5CB8 0026F278  90 03 00 04 */	stw r0, 4(r3)
/* 802A5CBC 0026F27C  2C 06 00 00 */	cmpwi r6, 0
/* 802A5CC0 0026F280  90 83 00 00 */	stw r4, 0(r3)
/* 802A5CC4 0026F284  80 05 00 08 */	lwz r0, 8(r5)
/* 802A5CC8 0026F288  90 03 00 08 */	stw r0, 8(r3)
/* 802A5CCC 0026F28C  41 82 00 68 */	beq .L_802A5D34
/* 802A5CD0 0026F290  81 86 00 00 */	lwz r12, 0(r6)
/* 802A5CD4 0026F294  7C C3 33 78 */	mr r3, r6
/* 802A5CD8 0026F298  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802A5CDC 0026F29C  7D 89 03 A6 */	mtctr r12
/* 802A5CE0 0026F2A0  4E 80 04 21 */	bctrl 
/* 802A5CE4 0026F2A4  2C 03 00 00 */	cmpwi r3, 0
/* 802A5CE8 0026F2A8  40 82 00 4C */	bne .L_802A5D34
/* 802A5CEC 0026F2AC  83 FE 00 20 */	lwz r31, 0x20(r30)
/* 802A5CF0 0026F2B0  2C 1F 00 00 */	cmpwi r31, 0
/* 802A5CF4 0026F2B4  41 82 00 08 */	beq .L_802A5CFC
/* 802A5CF8 0026F2B8  3B FF 3E 9C */	addi r31, r31, 0x3e9c
.L_802A5CFC:
/* 802A5CFC 0026F2BC  38 60 00 02 */	li r3, 2
/* 802A5D00 0026F2C0  48 19 01 FD */	bl mtRand__2mlFi
/* 802A5D04 0026F2C4  7C 65 1B 78 */	mr r5, r3
/* 802A5D08 0026F2C8  7F C3 F3 78 */	mr r3, r30
/* 802A5D0C 0026F2CC  7F E4 FB 78 */	mr r4, r31
/* 802A5D10 0026F2D0  38 A5 07 0C */	addi r5, r5, 0x70c
/* 802A5D14 0026F2D4  4B FF DF 31 */	bl func_802A3C44
/* 802A5D18 0026F2D8  2C 03 00 00 */	cmpwi r3, 0
/* 802A5D1C 0026F2DC  40 82 00 18 */	bne .L_802A5D34
/* 802A5D20 0026F2E0  81 9E 00 1C */	lwz r12, 0x1c(r30)
/* 802A5D24 0026F2E4  7F C3 F3 78 */	mr r3, r30
/* 802A5D28 0026F2E8  81 8C 00 08 */	lwz r12, 8(r12)
/* 802A5D2C 0026F2EC  7D 89 03 A6 */	mtctr r12
/* 802A5D30 0026F2F0  4E 80 04 21 */	bctrl 
.L_802A5D34:
/* 802A5D34 0026F2F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A5D38 0026F2F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A5D3C 0026F2FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A5D40 0026F300  7C 08 03 A6 */	mtlr r0
/* 802A5D44 0026F304  38 21 00 10 */	addi r1, r1, 0x10
/* 802A5D48 0026F308  4E 80 00 20 */	blr 

.global func_802A5D4C
func_802A5D4C:
/* 802A5D4C 0026F30C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A5D50 0026F310  7C 08 02 A6 */	mflr r0
/* 802A5D54 0026F314  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A5D58 0026F318  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A5D5C 0026F31C  7C 7F 1B 78 */	mr r31, r3
/* 802A5D60 0026F320  4B FF E1 29 */	bl func_802A3E88
/* 802A5D64 0026F324  2C 03 00 00 */	cmpwi r3, 0
/* 802A5D68 0026F328  40 82 00 90 */	bne .L_802A5DF8
/* 802A5D6C 0026F32C  3C A0 80 54 */	lis r5, lbl_8053D210@ha
/* 802A5D70 0026F330  84 85 D2 10 */	lwzu r4, lbl_8053D210@l(r5)
/* 802A5D74 0026F334  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 802A5D78 0026F338  80 05 00 04 */	lwz r0, 4(r5)
/* 802A5D7C 0026F33C  90 1F 00 04 */	stw r0, 4(r31)
/* 802A5D80 0026F340  2C 03 00 00 */	cmpwi r3, 0
/* 802A5D84 0026F344  90 9F 00 00 */	stw r4, 0(r31)
/* 802A5D88 0026F348  80 05 00 08 */	lwz r0, 8(r5)
/* 802A5D8C 0026F34C  90 1F 00 08 */	stw r0, 8(r31)
/* 802A5D90 0026F350  41 82 00 68 */	beq .L_802A5DF8
/* 802A5D94 0026F354  81 83 00 00 */	lwz r12, 0(r3)
/* 802A5D98 0026F358  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802A5D9C 0026F35C  7D 89 03 A6 */	mtctr r12
/* 802A5DA0 0026F360  4E 80 04 21 */	bctrl 
/* 802A5DA4 0026F364  2C 03 00 00 */	cmpwi r3, 0
/* 802A5DA8 0026F368  40 82 00 50 */	bne .L_802A5DF8
/* 802A5DAC 0026F36C  38 60 00 02 */	li r3, 2
/* 802A5DB0 0026F370  48 19 01 4D */	bl mtRand__2mlFi
/* 802A5DB4 0026F374  2C 03 00 00 */	cmpwi r3, 0
/* 802A5DB8 0026F378  38 A0 07 13 */	li r5, 0x713
/* 802A5DBC 0026F37C  41 82 00 08 */	beq .L_802A5DC4
/* 802A5DC0 0026F380  38 A0 07 0E */	li r5, 0x70e
.L_802A5DC4:
/* 802A5DC4 0026F384  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 802A5DC8 0026F388  2C 04 00 00 */	cmpwi r4, 0
/* 802A5DCC 0026F38C  41 82 00 08 */	beq .L_802A5DD4
/* 802A5DD0 0026F390  38 84 3E 9C */	addi r4, r4, 0x3e9c
.L_802A5DD4:
/* 802A5DD4 0026F394  7F E3 FB 78 */	mr r3, r31
/* 802A5DD8 0026F398  4B FF DE 6D */	bl func_802A3C44
/* 802A5DDC 0026F39C  2C 03 00 00 */	cmpwi r3, 0
/* 802A5DE0 0026F3A0  40 82 00 18 */	bne .L_802A5DF8
/* 802A5DE4 0026F3A4  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 802A5DE8 0026F3A8  7F E3 FB 78 */	mr r3, r31
/* 802A5DEC 0026F3AC  81 8C 00 08 */	lwz r12, 8(r12)
/* 802A5DF0 0026F3B0  7D 89 03 A6 */	mtctr r12
/* 802A5DF4 0026F3B4  4E 80 04 21 */	bctrl 
.L_802A5DF8:
/* 802A5DF8 0026F3B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A5DFC 0026F3BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A5E00 0026F3C0  7C 08 03 A6 */	mtlr r0
/* 802A5E04 0026F3C4  38 21 00 10 */	addi r1, r1, 0x10
/* 802A5E08 0026F3C8  4E 80 00 20 */	blr 

.global func_802A5E0C
func_802A5E0C:
/* 802A5E0C 0026F3CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A5E10 0026F3D0  7C 08 02 A6 */	mflr r0
/* 802A5E14 0026F3D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A5E18 0026F3D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A5E1C 0026F3DC  7C 7F 1B 78 */	mr r31, r3
/* 802A5E20 0026F3E0  4B FF E0 69 */	bl func_802A3E88
/* 802A5E24 0026F3E4  2C 03 00 00 */	cmpwi r3, 0
/* 802A5E28 0026F3E8  40 82 00 18 */	bne .L_802A5E40
/* 802A5E2C 0026F3EC  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 802A5E30 0026F3F0  7F E3 FB 78 */	mr r3, r31
/* 802A5E34 0026F3F4  81 8C 00 08 */	lwz r12, 8(r12)
/* 802A5E38 0026F3F8  7D 89 03 A6 */	mtctr r12
/* 802A5E3C 0026F3FC  4E 80 04 21 */	bctrl 
.L_802A5E40:
/* 802A5E40 0026F400  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A5E44 0026F404  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A5E48 0026F408  7C 08 03 A6 */	mtlr r0
/* 802A5E4C 0026F40C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A5E50 0026F410  4E 80 00 20 */	blr 

.global func_802A5E54
func_802A5E54:
/* 802A5E54 0026F414  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A5E58 0026F418  7C 08 02 A6 */	mflr r0
/* 802A5E5C 0026F41C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A5E60 0026F420  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A5E64 0026F424  7C 9F 23 78 */	mr r31, r4
/* 802A5E68 0026F428  93 C1 00 08 */	stw r30, 8(r1)
/* 802A5E6C 0026F42C  7C 7E 1B 78 */	mr r30, r3
/* 802A5E70 0026F430  4B FF DD 7D */	bl func_802A3BEC
/* 802A5E74 0026F434  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 802A5E78 0026F438  2C 03 00 00 */	cmpwi r3, 0
/* 802A5E7C 0026F43C  41 82 00 08 */	beq .L_802A5E84
/* 802A5E80 0026F440  38 63 3E 9C */	addi r3, r3, 0x3e9c
.L_802A5E84:
/* 802A5E84 0026F444  7C 03 F8 40 */	cmplw r3, r31
/* 802A5E88 0026F448  40 82 00 0C */	bne .L_802A5E94
/* 802A5E8C 0026F44C  38 00 00 00 */	li r0, 0
/* 802A5E90 0026F450  90 1E 00 20 */	stw r0, 0x20(r30)
.L_802A5E94:
/* 802A5E94 0026F454  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 802A5E98 0026F458  2C 03 00 00 */	cmpwi r3, 0
/* 802A5E9C 0026F45C  41 82 00 08 */	beq .L_802A5EA4
/* 802A5EA0 0026F460  38 63 3E 9C */	addi r3, r3, 0x3e9c
.L_802A5EA4:
/* 802A5EA4 0026F464  7C 03 F8 40 */	cmplw r3, r31
/* 802A5EA8 0026F468  40 82 00 0C */	bne .L_802A5EB4
/* 802A5EAC 0026F46C  38 00 00 00 */	li r0, 0
/* 802A5EB0 0026F470  90 1E 00 24 */	stw r0, 0x24(r30)
.L_802A5EB4:
/* 802A5EB4 0026F474  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A5EB8 0026F478  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A5EBC 0026F47C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A5EC0 0026F480  7C 08 03 A6 */	mtlr r0
/* 802A5EC4 0026F484  38 21 00 10 */	addi r1, r1, 0x10
/* 802A5EC8 0026F488  4E 80 00 20 */	blr 

.global func_802A5ECC
func_802A5ECC:
/* 802A5ECC 0026F48C  38 60 00 F0 */	li r3, 0xf0
/* 802A5ED0 0026F490  4E 80 00 20 */	blr 

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global cf_CVS_THREAD_DOWN_typestr
cf_CVS_THREAD_DOWN_typestr:
	.asciz "cf::CVS_THREAD_DOWN"
	.4byte 0

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_8053D1F8
lbl_8053D1F8:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802A5C90

.global lbl_8053D204
lbl_8053D204:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802A5D4C

.global lbl_8053D210
lbl_8053D210:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802A5E0C


.global __vt__cf_CVS_THREAD_DOWN
__vt__cf_CVS_THREAD_DOWN:
	.4byte __RTTI__cf_CVS_THREAD_DOWN
	.4byte 0
	.4byte func_802A3B50
	.4byte func_802A5E54
	.4byte func_802A5ECC
	.4byte func_802A1EA0
	.4byte func_802A3740

.global cf_CVS_THREAD_DOWN_hierarchy
cf_CVS_THREAD_DOWN_hierarchy:
	.4byte __RTTI__cf_CVS_THREAD
	.4byte 0
	.4byte 0
	.4byte 0

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global __RTTI__cf_CVS_THREAD_DOWN
__RTTI__cf_CVS_THREAD_DOWN:
	.4byte cf_CVS_THREAD_DOWN_typestr
	.4byte cf_CVS_THREAD_DOWN_hierarchy

.section extab, "a"  # 0x800066E0 - 0x80021020

.global lbl_8001ABE4
lbl_8001ABE4:
	.4byte 0x20180000
	.4byte 0x00000094
	.4byte 0x00000018
	.4byte 0x000000BC
	.4byte 0x00000028
	.4byte 0
	.4byte 0x90000000
	.4byte 0
	.4byte 0x000000AC
	.4byte 0x00000008
	.4byte 0x8D000008

.global lbl_8001AC10
lbl_8001AC10:
	.4byte 0x10080000
	.4byte 0

.global lbl_8001AC18
lbl_8001AC18:
	.4byte 0x08080000
	.4byte 0

.global lbl_8001AC20
lbl_8001AC20:
	.4byte 0x08080000
	.4byte 0

.global lbl_8001AC28
lbl_8001AC28:
	.4byte 0x10080000
	.4byte 0


.section extabindex, "a"  # 0x80021020 - 0x80039220

.4byte func_802A5B88
	.4byte 0x00000108
	.4byte lbl_8001ABE4
	.4byte func_802A5C90
	.4byte 0x000000BC
	.4byte lbl_8001AC10
	.4byte func_802A5D4C
	.4byte 0x000000C0
	.4byte lbl_8001AC18
	.4byte func_802A5E0C
	.4byte 0x00000048
	.4byte lbl_8001AC20
	.4byte func_802A5E54
	.4byte 0x00000078
	.4byte lbl_8001AC28
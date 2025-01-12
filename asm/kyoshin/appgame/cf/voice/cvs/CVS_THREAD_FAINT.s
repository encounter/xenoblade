.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_802A6AA8
func_802A6AA8:
/* 802A6AA8 00270068  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802A6AAC 0027006C  7C 08 02 A6 */	mflr r0
/* 802A6AB0 00270070  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A6AB4 00270074  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802A6AB8 00270078  7C 3F 0B 78 */	mr r31, r1
/* 802A6ABC 0027007C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802A6AC0 00270080  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802A6AC4 00270084  7C 9D 23 78 */	mr r29, r4
/* 802A6AC8 00270088  93 81 00 20 */	stw r28, 0x20(r1)
/* 802A6ACC 0027008C  7C 7C 1B 78 */	mr r28, r3
/* 802A6AD0 00270090  80 03 3F 00 */	lwz r0, 0x3f00(r3)
/* 802A6AD4 00270094  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802A6AD8 00270098  40 82 00 0C */	bne .L_802A6AE4
/* 802A6ADC 0027009C  38 60 00 00 */	li r3, 0
/* 802A6AE0 002700A0  48 00 00 A8 */	b .L_802A6B88
.L_802A6AE4:
/* 802A6AE4 002700A4  80 04 3F 00 */	lwz r0, 0x3f00(r4)
/* 802A6AE8 002700A8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802A6AEC 002700AC  40 82 00 0C */	bne .L_802A6AF8
/* 802A6AF0 002700B0  38 60 00 00 */	li r3, 0
/* 802A6AF4 002700B4  48 00 00 94 */	b .L_802A6B88
.L_802A6AF8:
/* 802A6AF8 002700B8  38 60 00 F0 */	li r3, 0xf0
/* 802A6AFC 002700BC  38 80 00 01 */	li r4, 1
/* 802A6B00 002700C0  4B FF C8 0D */	bl func_802A330C
/* 802A6B04 002700C4  2C 03 00 00 */	cmpwi r3, 0
/* 802A6B08 002700C8  40 82 00 0C */	bne .L_802A6B14
/* 802A6B0C 002700CC  38 60 00 00 */	li r3, 0
/* 802A6B10 002700D0  48 00 00 78 */	b .L_802A6B88
.L_802A6B14:
/* 802A6B14 002700D4  38 60 00 28 */	li r3, 0x28
/* 802A6B18 002700D8  4B FF C9 CD */	bl func_802A34E4
/* 802A6B1C 002700DC  2C 03 00 00 */	cmpwi r3, 0
/* 802A6B20 002700E0  7C 7E 1B 78 */	mr r30, r3
/* 802A6B24 002700E4  40 82 00 0C */	bne .L_802A6B30
/* 802A6B28 002700E8  38 60 00 00 */	li r3, 0
/* 802A6B2C 002700EC  48 00 00 5C */	b .L_802A6B88
.L_802A6B30:
/* 802A6B30 002700F0  41 82 00 34 */	beq .L_802A6B64
/* 802A6B34 002700F4  90 3F 00 1C */	stw r1, 0x1c(r31)
/* 802A6B38 002700F8  4B FF CF 49 */	bl func_802A3A80
/* 802A6B3C 002700FC  3C 60 80 54 */	lis r3, __vt__cf_CVS_THREAD_FAINT@ha
/* 802A6B40 00270100  38 63 D3 0C */	addi r3, r3, __vt__cf_CVS_THREAD_FAINT@l
/* 802A6B44 00270104  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 802A6B48 00270108  93 9E 00 20 */	stw r28, 0x20(r30)
/* 802A6B4C 0027010C  93 BE 00 24 */	stw r29, 0x24(r30)
/* 802A6B50 00270110  48 00 00 14 */	b .L_802A6B64
/* 802A6B54 00270114  38 60 00 00 */	li r3, 0
/* 802A6B58 00270118  38 80 00 00 */	li r4, 0
/* 802A6B5C 0027011C  38 A0 00 00 */	li r5, 0
/* 802A6B60 00270120  48 01 50 5D */	bl __throw
.L_802A6B64:
/* 802A6B64 00270124  3C A0 80 54 */	lis r5, lbl_8053D2E8@ha
/* 802A6B68 00270128  7F C3 F3 78 */	mr r3, r30
/* 802A6B6C 0027012C  38 A5 D2 E8 */	addi r5, r5, lbl_8053D2E8@l
/* 802A6B70 00270130  80 05 00 04 */	lwz r0, 4(r5)
/* 802A6B74 00270134  80 85 00 00 */	lwz r4, 0(r5)
/* 802A6B78 00270138  90 9E 00 00 */	stw r4, 0(r30)
/* 802A6B7C 0027013C  90 1E 00 04 */	stw r0, 4(r30)
/* 802A6B80 00270140  80 05 00 08 */	lwz r0, 8(r5)
/* 802A6B84 00270144  90 1E 00 08 */	stw r0, 8(r30)
.L_802A6B88:
/* 802A6B88 00270148  7F EA FB 78 */	mr r10, r31
/* 802A6B8C 0027014C  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 802A6B90 00270150  83 CA 00 28 */	lwz r30, 0x28(r10)
/* 802A6B94 00270154  83 AA 00 24 */	lwz r29, 0x24(r10)
/* 802A6B98 00270158  83 8A 00 20 */	lwz r28, 0x20(r10)
/* 802A6B9C 0027015C  81 41 00 00 */	lwz r10, 0(r1)
/* 802A6BA0 00270160  80 0A 00 04 */	lwz r0, 4(r10)
/* 802A6BA4 00270164  7D 41 53 78 */	mr r1, r10
/* 802A6BA8 00270168  7C 08 03 A6 */	mtlr r0
/* 802A6BAC 0027016C  4E 80 00 20 */	blr 

.global func_802A6BB0
func_802A6BB0:
/* 802A6BB0 00270170  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A6BB4 00270174  7C 08 02 A6 */	mflr r0
/* 802A6BB8 00270178  3C A0 80 54 */	lis r5, lbl_8053D2F4@ha
/* 802A6BBC 0027017C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A6BC0 00270180  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A6BC4 00270184  93 C1 00 08 */	stw r30, 8(r1)
/* 802A6BC8 00270188  7C 7E 1B 78 */	mr r30, r3
/* 802A6BCC 0027018C  84 85 D2 F4 */	lwzu r4, lbl_8053D2F4@l(r5)
/* 802A6BD0 00270190  80 C3 00 20 */	lwz r6, 0x20(r3)
/* 802A6BD4 00270194  80 05 00 04 */	lwz r0, 4(r5)
/* 802A6BD8 00270198  90 03 00 04 */	stw r0, 4(r3)
/* 802A6BDC 0027019C  2C 06 00 00 */	cmpwi r6, 0
/* 802A6BE0 002701A0  90 83 00 00 */	stw r4, 0(r3)
/* 802A6BE4 002701A4  80 05 00 08 */	lwz r0, 8(r5)
/* 802A6BE8 002701A8  90 03 00 08 */	stw r0, 8(r3)
/* 802A6BEC 002701AC  41 82 00 68 */	beq .L_802A6C54
/* 802A6BF0 002701B0  81 86 00 00 */	lwz r12, 0(r6)
/* 802A6BF4 002701B4  7C C3 33 78 */	mr r3, r6
/* 802A6BF8 002701B8  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802A6BFC 002701BC  7D 89 03 A6 */	mtctr r12
/* 802A6C00 002701C0  4E 80 04 21 */	bctrl 
/* 802A6C04 002701C4  2C 03 00 00 */	cmpwi r3, 0
/* 802A6C08 002701C8  40 82 00 4C */	bne .L_802A6C54
/* 802A6C0C 002701CC  83 FE 00 20 */	lwz r31, 0x20(r30)
/* 802A6C10 002701D0  2C 1F 00 00 */	cmpwi r31, 0
/* 802A6C14 002701D4  41 82 00 08 */	beq .L_802A6C1C
/* 802A6C18 002701D8  3B FF 3E 9C */	addi r31, r31, 0x3e9c
.L_802A6C1C:
/* 802A6C1C 002701DC  38 60 00 02 */	li r3, 2
/* 802A6C20 002701E0  48 18 F2 DD */	bl mtRand__2mlFi
/* 802A6C24 002701E4  7C 65 1B 78 */	mr r5, r3
/* 802A6C28 002701E8  7F C3 F3 78 */	mr r3, r30
/* 802A6C2C 002701EC  7F E4 FB 78 */	mr r4, r31
/* 802A6C30 002701F0  38 A5 07 09 */	addi r5, r5, 0x709
/* 802A6C34 002701F4  4B FF D0 11 */	bl func_802A3C44
/* 802A6C38 002701F8  2C 03 00 00 */	cmpwi r3, 0
/* 802A6C3C 002701FC  40 82 00 18 */	bne .L_802A6C54
/* 802A6C40 00270200  81 9E 00 1C */	lwz r12, 0x1c(r30)
/* 802A6C44 00270204  7F C3 F3 78 */	mr r3, r30
/* 802A6C48 00270208  81 8C 00 08 */	lwz r12, 8(r12)
/* 802A6C4C 0027020C  7D 89 03 A6 */	mtctr r12
/* 802A6C50 00270210  4E 80 04 21 */	bctrl 
.L_802A6C54:
/* 802A6C54 00270214  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A6C58 00270218  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A6C5C 0027021C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A6C60 00270220  7C 08 03 A6 */	mtlr r0
/* 802A6C64 00270224  38 21 00 10 */	addi r1, r1, 0x10
/* 802A6C68 00270228  4E 80 00 20 */	blr 

.global func_802A6C6C
func_802A6C6C:
/* 802A6C6C 0027022C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A6C70 00270230  7C 08 02 A6 */	mflr r0
/* 802A6C74 00270234  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A6C78 00270238  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A6C7C 0027023C  7C 7F 1B 78 */	mr r31, r3
/* 802A6C80 00270240  4B FF D2 09 */	bl func_802A3E88
/* 802A6C84 00270244  2C 03 00 00 */	cmpwi r3, 0
/* 802A6C88 00270248  40 82 00 90 */	bne .L_802A6D18
/* 802A6C8C 0027024C  3C A0 80 54 */	lis r5, lbl_8053D300@ha
/* 802A6C90 00270250  84 85 D3 00 */	lwzu r4, lbl_8053D300@l(r5)
/* 802A6C94 00270254  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 802A6C98 00270258  80 05 00 04 */	lwz r0, 4(r5)
/* 802A6C9C 0027025C  90 1F 00 04 */	stw r0, 4(r31)
/* 802A6CA0 00270260  2C 03 00 00 */	cmpwi r3, 0
/* 802A6CA4 00270264  90 9F 00 00 */	stw r4, 0(r31)
/* 802A6CA8 00270268  80 05 00 08 */	lwz r0, 8(r5)
/* 802A6CAC 0027026C  90 1F 00 08 */	stw r0, 8(r31)
/* 802A6CB0 00270270  41 82 00 68 */	beq .L_802A6D18
/* 802A6CB4 00270274  81 83 00 00 */	lwz r12, 0(r3)
/* 802A6CB8 00270278  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802A6CBC 0027027C  7D 89 03 A6 */	mtctr r12
/* 802A6CC0 00270280  4E 80 04 21 */	bctrl 
/* 802A6CC4 00270284  2C 03 00 00 */	cmpwi r3, 0
/* 802A6CC8 00270288  40 82 00 50 */	bne .L_802A6D18
/* 802A6CCC 0027028C  38 60 00 02 */	li r3, 2
/* 802A6CD0 00270290  48 18 F2 2D */	bl mtRand__2mlFi
/* 802A6CD4 00270294  2C 03 00 00 */	cmpwi r3, 0
/* 802A6CD8 00270298  38 A0 07 12 */	li r5, 0x712
/* 802A6CDC 0027029C  41 82 00 08 */	beq .L_802A6CE4
/* 802A6CE0 002702A0  38 A0 07 0B */	li r5, 0x70b
.L_802A6CE4:
/* 802A6CE4 002702A4  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 802A6CE8 002702A8  2C 04 00 00 */	cmpwi r4, 0
/* 802A6CEC 002702AC  41 82 00 08 */	beq .L_802A6CF4
/* 802A6CF0 002702B0  38 84 3E 9C */	addi r4, r4, 0x3e9c
.L_802A6CF4:
/* 802A6CF4 002702B4  7F E3 FB 78 */	mr r3, r31
/* 802A6CF8 002702B8  4B FF CF 4D */	bl func_802A3C44
/* 802A6CFC 002702BC  2C 03 00 00 */	cmpwi r3, 0
/* 802A6D00 002702C0  40 82 00 18 */	bne .L_802A6D18
/* 802A6D04 002702C4  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 802A6D08 002702C8  7F E3 FB 78 */	mr r3, r31
/* 802A6D0C 002702CC  81 8C 00 08 */	lwz r12, 8(r12)
/* 802A6D10 002702D0  7D 89 03 A6 */	mtctr r12
/* 802A6D14 002702D4  4E 80 04 21 */	bctrl 
.L_802A6D18:
/* 802A6D18 002702D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A6D1C 002702DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A6D20 002702E0  7C 08 03 A6 */	mtlr r0
/* 802A6D24 002702E4  38 21 00 10 */	addi r1, r1, 0x10
/* 802A6D28 002702E8  4E 80 00 20 */	blr 

.global func_802A6D2C
func_802A6D2C:
/* 802A6D2C 002702EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A6D30 002702F0  7C 08 02 A6 */	mflr r0
/* 802A6D34 002702F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A6D38 002702F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A6D3C 002702FC  7C 7F 1B 78 */	mr r31, r3
/* 802A6D40 00270300  4B FF D1 49 */	bl func_802A3E88
/* 802A6D44 00270304  2C 03 00 00 */	cmpwi r3, 0
/* 802A6D48 00270308  40 82 00 18 */	bne .L_802A6D60
/* 802A6D4C 0027030C  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 802A6D50 00270310  7F E3 FB 78 */	mr r3, r31
/* 802A6D54 00270314  81 8C 00 08 */	lwz r12, 8(r12)
/* 802A6D58 00270318  7D 89 03 A6 */	mtctr r12
/* 802A6D5C 0027031C  4E 80 04 21 */	bctrl 
.L_802A6D60:
/* 802A6D60 00270320  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A6D64 00270324  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A6D68 00270328  7C 08 03 A6 */	mtlr r0
/* 802A6D6C 0027032C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A6D70 00270330  4E 80 00 20 */	blr 

.global func_802A6D74
func_802A6D74:
/* 802A6D74 00270334  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A6D78 00270338  7C 08 02 A6 */	mflr r0
/* 802A6D7C 0027033C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A6D80 00270340  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A6D84 00270344  7C 9F 23 78 */	mr r31, r4
/* 802A6D88 00270348  93 C1 00 08 */	stw r30, 8(r1)
/* 802A6D8C 0027034C  7C 7E 1B 78 */	mr r30, r3
/* 802A6D90 00270350  4B FF CE 5D */	bl func_802A3BEC
/* 802A6D94 00270354  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 802A6D98 00270358  2C 03 00 00 */	cmpwi r3, 0
/* 802A6D9C 0027035C  41 82 00 08 */	beq .L_802A6DA4
/* 802A6DA0 00270360  38 63 3E 9C */	addi r3, r3, 0x3e9c
.L_802A6DA4:
/* 802A6DA4 00270364  7C 03 F8 40 */	cmplw r3, r31
/* 802A6DA8 00270368  40 82 00 0C */	bne .L_802A6DB4
/* 802A6DAC 0027036C  38 00 00 00 */	li r0, 0
/* 802A6DB0 00270370  90 1E 00 20 */	stw r0, 0x20(r30)
.L_802A6DB4:
/* 802A6DB4 00270374  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 802A6DB8 00270378  2C 03 00 00 */	cmpwi r3, 0
/* 802A6DBC 0027037C  41 82 00 08 */	beq .L_802A6DC4
/* 802A6DC0 00270380  38 63 3E 9C */	addi r3, r3, 0x3e9c
.L_802A6DC4:
/* 802A6DC4 00270384  7C 03 F8 40 */	cmplw r3, r31
/* 802A6DC8 00270388  40 82 00 0C */	bne .L_802A6DD4
/* 802A6DCC 0027038C  38 00 00 00 */	li r0, 0
/* 802A6DD0 00270390  90 1E 00 24 */	stw r0, 0x24(r30)
.L_802A6DD4:
/* 802A6DD4 00270394  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A6DD8 00270398  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A6DDC 0027039C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A6DE0 002703A0  7C 08 03 A6 */	mtlr r0
/* 802A6DE4 002703A4  38 21 00 10 */	addi r1, r1, 0x10
/* 802A6DE8 002703A8  4E 80 00 20 */	blr 

.global func_802A6DEC
func_802A6DEC:
/* 802A6DEC 002703AC  38 60 00 F0 */	li r3, 0xf0
/* 802A6DF0 002703B0  4E 80 00 20 */	blr 

.global func_802A6DF4
func_802A6DF4:
/* 802A6DF4 002703B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A6DF8 002703B8  7C 08 02 A6 */	mflr r0
/* 802A6DFC 002703BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A6E00 002703C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A6E04 002703C4  7C 7F 1B 78 */	mr r31, r3
/* 802A6E08 002703C8  80 03 3F 00 */	lwz r0, 0x3f00(r3)
/* 802A6E0C 002703CC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802A6E10 002703D0  40 82 00 0C */	bne .L_802A6E1C
/* 802A6E14 002703D4  38 60 00 00 */	li r3, 0
/* 802A6E18 002703D8  48 00 00 58 */	b .L_802A6E70
.L_802A6E1C:
/* 802A6E1C 002703DC  38 60 00 0A */	li r3, 0xa
/* 802A6E20 002703E0  38 80 00 01 */	li r4, 1
/* 802A6E24 002703E4  4B FF C4 E9 */	bl func_802A330C
/* 802A6E28 002703E8  2C 03 00 00 */	cmpwi r3, 0
/* 802A6E2C 002703EC  40 82 00 0C */	bne .L_802A6E38
/* 802A6E30 002703F0  38 60 00 00 */	li r3, 0
/* 802A6E34 002703F4  48 00 00 3C */	b .L_802A6E70
.L_802A6E38:
/* 802A6E38 002703F8  38 7F 3E 9C */	addi r3, r31, 0x3e9c
/* 802A6E3C 002703FC  4B E1 7A B9 */	bl func_800BE8F4
/* 802A6E40 00270400  2C 03 00 0A */	cmpwi r3, 0xa
/* 802A6E44 00270404  40 82 00 0C */	bne .L_802A6E50
/* 802A6E48 00270408  38 60 00 00 */	li r3, 0
/* 802A6E4C 0027040C  48 00 00 24 */	b .L_802A6E70
.L_802A6E50:
/* 802A6E50 00270410  2C 1F 00 00 */	cmpwi r31, 0
/* 802A6E54 00270414  41 82 00 08 */	beq .L_802A6E5C
/* 802A6E58 00270418  3B FF 3E 9C */	addi r31, r31, 0x3e9c
.L_802A6E5C:
/* 802A6E5C 0027041C  7F E3 FB 78 */	mr r3, r31
/* 802A6E60 00270420  38 80 02 BF */	li r4, 0x2bf
/* 802A6E64 00270424  38 A0 00 0A */	li r5, 0xa
/* 802A6E68 00270428  4B FF CE ED */	bl func_802A3D54
/* 802A6E6C 0027042C  38 60 00 00 */	li r3, 0
.L_802A6E70:
/* 802A6E70 00270430  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A6E74 00270434  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A6E78 00270438  7C 08 03 A6 */	mtlr r0
/* 802A6E7C 0027043C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A6E80 00270440  4E 80 00 20 */	blr 

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global cf_CVS_THREAD_FAINT_typestr
cf_CVS_THREAD_FAINT_typestr:
	.asciz "cf::CVS_THREAD_FAINT"
	.balign 4

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_8053D2E8
lbl_8053D2E8:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802A6BB0

.global lbl_8053D2F4
lbl_8053D2F4:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802A6C6C

.global lbl_8053D300
lbl_8053D300:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802A6D2C


.global __vt__cf_CVS_THREAD_FAINT
__vt__cf_CVS_THREAD_FAINT:
	.4byte __RTTI__cf_CVS_THREAD_FAINT
	.4byte 0
	.4byte func_802A3B50
	.4byte func_802A6D74
	.4byte func_802A6DEC
	.4byte func_802A1EA0
	.4byte func_802A3740

.global cf_CVS_THREAD_FAINT_hierarchy
cf_CVS_THREAD_FAINT_hierarchy:
	.4byte __RTTI__cf_CVS_THREAD
	.4byte 0
	.4byte 0
	.4byte 0

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global __RTTI__cf_CVS_THREAD_FAINT
__RTTI__cf_CVS_THREAD_FAINT:
	.4byte cf_CVS_THREAD_FAINT_typestr
	.4byte cf_CVS_THREAD_FAINT_hierarchy

.section extab, "a"  # 0x800066E0 - 0x80021020

.global lbl_8001AC9C
lbl_8001AC9C:
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

.global lbl_8001ACC8
lbl_8001ACC8:
	.4byte 0x10080000
	.4byte 0

.global lbl_8001ACD0
lbl_8001ACD0:
	.4byte 0x08080000
	.4byte 0

.global lbl_8001ACD8
lbl_8001ACD8:
	.4byte 0x08080000
	.4byte 0

.global lbl_8001ACE0
lbl_8001ACE0:
	.4byte 0x10080000
	.4byte 0

.global lbl_8001ACE8
lbl_8001ACE8:
	.4byte 0x08080000
	.4byte 0


.section extabindex, "a"  # 0x80021020 - 0x80039220

.4byte func_802A6AA8
	.4byte 0x00000108
	.4byte lbl_8001AC9C
	.4byte func_802A6BB0
	.4byte 0x000000BC
	.4byte lbl_8001ACC8
	.4byte func_802A6C6C
	.4byte 0x000000C0
	.4byte lbl_8001ACD0
	.4byte func_802A6D2C
	.4byte 0x00000048
	.4byte lbl_8001ACD8
	.4byte func_802A6D74
	.4byte 0x00000078
	.4byte lbl_8001ACE0
	.4byte func_802A6DF4
	.4byte 0x00000090
	.4byte lbl_8001ACE8
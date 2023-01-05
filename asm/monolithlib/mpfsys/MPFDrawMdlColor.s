.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_8047986C
func_8047986C:
/* 8047986C 00442E2C  88 0D BF F0 */	lbz r0, lbl_80668170@sda21(r13)
/* 80479870 00442E30  7C 00 07 75 */	extsb. r0, r0
/* 80479874 00442E34  40 82 00 18 */	bne .L_8047988C
/* 80479878 00442E38  3C 60 80 57 */	lis r3, __vt__mpfsys_MPFDrawMdlColor@ha
/* 8047987C 00442E3C  38 00 00 01 */	li r0, 1
/* 80479880 00442E40  38 63 14 08 */	addi r3, r3, __vt__mpfsys_MPFDrawMdlColor@l
/* 80479884 00442E44  90 6D BF F4 */	stw r3, lbl_80668174@sda21(r13)
/* 80479888 00442E48  98 0D BF F0 */	stb r0, lbl_80668170@sda21(r13)
.L_8047988C:
/* 8047988C 00442E4C  38 6D BF F4 */	addi r3, r13, lbl_80668174@sda21
/* 80479890 00442E50  4E 80 00 20 */	blr 

.global func_80479894
func_80479894:
/* 80479894 00442E54  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80479898 00442E58  7C 08 02 A6 */	mflr r0
/* 8047989C 00442E5C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804798A0 00442E60  39 61 00 30 */	addi r11, r1, 0x30
/* 804798A4 00442E64  4B E4 08 A1 */	bl _savegpr_23
/* 804798A8 00442E68  80 C4 00 00 */	lwz r6, 0(r4)
/* 804798AC 00442E6C  7C B8 2B 78 */	mr r24, r5
/* 804798B0 00442E70  80 04 00 04 */	lwz r0, 4(r4)
/* 804798B4 00442E74  7C 97 23 78 */	mr r23, r4
/* 804798B8 00442E78  80 AD BF 98 */	lwz r5, lbl_80668118@sda21(r13)
/* 804798BC 00442E7C  38 60 00 03 */	li r3, 3
/* 804798C0 00442E80  90 8D BF B8 */	stw r4, lbl_80668138@sda21(r13)
/* 804798C4 00442E84  7F A5 32 14 */	add r29, r5, r6
/* 804798C8 00442E88  7F 85 02 14 */	add r28, r5, r0
/* 804798CC 00442E8C  4B EA 4E 55 */	bl GXSetCurrentMtx
/* 804798D0 00442E90  80 17 00 10 */	lwz r0, 0x10(r23)
/* 804798D4 00442E94  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 804798D8 00442E98  41 82 00 10 */	beq .L_804798E8
/* 804798DC 00442E9C  4B FF AD 91 */	bl func_8047466C
/* 804798E0 00442EA0  3B 60 00 03 */	li r27, 3
/* 804798E4 00442EA4  48 00 00 0C */	b .L_804798F0
.L_804798E8:
/* 804798E8 00442EA8  4B FF AA F9 */	bl func_804743E0
/* 804798EC 00442EAC  3B 60 00 00 */	li r27, 0
.L_804798F0:
/* 804798F0 00442EB0  80 17 00 10 */	lwz r0, 0x10(r23)
/* 804798F4 00442EB4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804798F8 00442EB8  41 82 00 0C */	beq .L_80479904
/* 804798FC 00442EBC  4B FF B1 45 */	bl func_80474A40
/* 80479900 00442EC0  48 00 00 08 */	b .L_80479908
.L_80479904:
/* 80479904 00442EC4  4B FF B1 9D */	bl func_80474AA0
.L_80479908:
/* 80479908 00442EC8  4B FF B6 25 */	bl func_80474F2C
/* 8047990C 00442ECC  3B F8 00 04 */	addi r31, r24, 4
/* 80479910 00442ED0  3B 40 00 01 */	li r26, 1
/* 80479914 00442ED4  48 00 00 DC */	b .L_804799F0
.L_80479918:
/* 80479918 00442ED8  80 7F 00 00 */	lwz r3, 0(r31)
/* 8047991C 00442EDC  7F 64 DB 78 */	mr r4, r27
/* 80479920 00442EE0  C0 37 00 14 */	lfs f1, 0x14(r23)
/* 80479924 00442EE4  88 B7 00 0E */	lbz r5, 0xe(r23)
/* 80479928 00442EE8  4B FF B1 D9 */	bl func_80474B00
/* 8047992C 00442EEC  80 7F 00 00 */	lwz r3, 0(r31)
/* 80479930 00442EF0  4B FF B3 C5 */	bl func_80474CF4
/* 80479934 00442EF4  7F BE EB 78 */	mr r30, r29
/* 80479938 00442EF8  3B 20 00 00 */	li r25, 0
/* 8047993C 00442EFC  48 00 00 A0 */	b .L_804799DC
.L_80479940:
/* 80479940 00442F00  A0 1E 00 0C */	lhz r0, 0xc(r30)
/* 80479944 00442F04  54 00 20 36 */	slwi r0, r0, 4
/* 80479948 00442F08  7C 7C 02 14 */	add r3, r28, r0
/* 8047994C 00442F0C  88 63 00 02 */	lbz r3, 2(r3)
/* 80479950 00442F10  4B FF B4 A9 */	bl func_80474DF8
/* 80479954 00442F14  A0 1E 00 0C */	lhz r0, 0xc(r30)
/* 80479958 00442F18  54 00 20 36 */	slwi r0, r0, 4
/* 8047995C 00442F1C  7C 7C 02 14 */	add r3, r28, r0
/* 80479960 00442F20  88 03 00 03 */	lbz r0, 3(r3)
/* 80479964 00442F24  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80479968 00442F28  41 82 00 0C */	beq .L_80479974
/* 8047996C 00442F2C  4B FF B4 FD */	bl func_80474E68
/* 80479970 00442F30  48 00 00 08 */	b .L_80479978
.L_80479974:
/* 80479974 00442F34  4B FF B4 B1 */	bl func_80474E24
.L_80479978:
/* 80479978 00442F38  A0 1E 00 0C */	lhz r0, 0xc(r30)
/* 8047997C 00442F3C  54 00 20 36 */	slwi r0, r0, 4
/* 80479980 00442F40  7C 9C 02 14 */	add r4, r28, r0
/* 80479984 00442F44  7C 7C 02 2E */	lhzx r3, r28, r0
/* 80479988 00442F48  C0 24 00 04 */	lfs f1, 4(r4)
/* 8047998C 00442F4C  4B FF 9E 41 */	bl func_804737CC
/* 80479990 00442F50  80 8D BF 98 */	lwz r4, lbl_80668118@sda21(r13)
/* 80479994 00442F54  38 60 00 09 */	li r3, 9
/* 80479998 00442F58  80 1E 00 00 */	lwz r0, 0(r30)
/* 8047999C 00442F5C  38 A0 00 0C */	li r5, 0xc
/* 804799A0 00442F60  7C 84 02 14 */	add r4, r4, r0
/* 804799A4 00442F64  4B EA 01 0D */	bl GXSetArray
/* 804799A8 00442F68  80 8D BF 98 */	lwz r4, lbl_80668118@sda21(r13)
/* 804799AC 00442F6C  38 60 00 0D */	li r3, 0xd
/* 804799B0 00442F70  80 1E 00 04 */	lwz r0, 4(r30)
/* 804799B4 00442F74  38 A0 00 08 */	li r5, 8
/* 804799B8 00442F78  7C 84 02 14 */	add r4, r4, r0
/* 804799BC 00442F7C  4B EA 00 F5 */	bl GXSetArray
/* 804799C0 00442F80  80 6D BF 98 */	lwz r3, lbl_80668118@sda21(r13)
/* 804799C4 00442F84  80 1E 00 08 */	lwz r0, 8(r30)
/* 804799C8 00442F88  A0 9E 00 0E */	lhz r4, 0xe(r30)
/* 804799CC 00442F8C  7C 63 02 14 */	add r3, r3, r0
/* 804799D0 00442F90  4B EA 4A A1 */	bl GXCallDisplayList
/* 804799D4 00442F94  3B DE 00 10 */	addi r30, r30, 0x10
/* 804799D8 00442F98  3B 39 00 01 */	addi r25, r25, 1
.L_804799DC:
/* 804799DC 00442F9C  A0 17 00 08 */	lhz r0, 8(r23)
/* 804799E0 00442FA0  7C 19 00 00 */	cmpw r25, r0
/* 804799E4 00442FA4  41 80 FF 5C */	blt .L_80479940
/* 804799E8 00442FA8  3B FF 00 04 */	addi r31, r31, 4
/* 804799EC 00442FAC  3B 5A 00 01 */	addi r26, r26, 1
.L_804799F0:
/* 804799F0 00442FB0  80 18 00 00 */	lwz r0, 0(r24)
/* 804799F4 00442FB4  7C 1A 00 40 */	cmplw r26, r0
/* 804799F8 00442FB8  41 80 FF 20 */	blt .L_80479918
/* 804799FC 00442FBC  38 60 00 00 */	li r3, 0
/* 80479A00 00442FC0  4B EA 4D 21 */	bl GXSetCurrentMtx
/* 80479A04 00442FC4  39 61 00 30 */	addi r11, r1, 0x30
/* 80479A08 00442FC8  4B E4 07 89 */	bl _restgpr_23
/* 80479A0C 00442FCC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80479A10 00442FD0  7C 08 03 A6 */	mtlr r0
/* 80479A14 00442FD4  38 21 00 30 */	addi r1, r1, 0x30
/* 80479A18 00442FD8  4E 80 00 20 */	blr 

.global func_80479A1C
func_80479A1C:
/* 80479A1C 00442FDC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80479A20 00442FE0  7C 08 02 A6 */	mflr r0
/* 80479A24 00442FE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80479A28 00442FE8  39 61 00 30 */	addi r11, r1, 0x30
/* 80479A2C 00442FEC  4B E4 07 19 */	bl _savegpr_23
/* 80479A30 00442FF0  80 ED BF 98 */	lwz r7, lbl_80668118@sda21(r13)
/* 80479A34 00442FF4  7C 97 23 78 */	mr r23, r4
/* 80479A38 00442FF8  80 C4 00 00 */	lwz r6, 0(r4)
/* 80479A3C 00442FFC  7C B8 2B 78 */	mr r24, r5
/* 80479A40 00443000  80 04 00 04 */	lwz r0, 4(r4)
/* 80479A44 00443004  38 60 00 03 */	li r3, 3
/* 80479A48 00443008  7F C7 32 14 */	add r30, r7, r6
/* 80479A4C 0044300C  7F A7 02 14 */	add r29, r7, r0
/* 80479A50 00443010  4B EA 4C D1 */	bl GXSetCurrentMtx
/* 80479A54 00443014  92 ED BF B8 */	stw r23, lbl_80668138@sda21(r13)
/* 80479A58 00443018  80 17 00 10 */	lwz r0, 0x10(r23)
/* 80479A5C 0044301C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80479A60 00443020  41 82 00 10 */	beq .L_80479A70
/* 80479A64 00443024  4B FF AC 09 */	bl func_8047466C
/* 80479A68 00443028  3B 80 00 03 */	li r28, 3
/* 80479A6C 0044302C  48 00 00 0C */	b .L_80479A78
.L_80479A70:
/* 80479A70 00443030  4B FF A9 71 */	bl func_804743E0
/* 80479A74 00443034  3B 80 00 00 */	li r28, 0
.L_80479A78:
/* 80479A78 00443038  4B FF B4 DD */	bl func_80474F54
/* 80479A7C 0044303C  4B FF AF C5 */	bl func_80474A40
/* 80479A80 00443040  80 18 00 00 */	lwz r0, 0(r24)
/* 80479A84 00443044  3B 58 00 04 */	addi r26, r24, 4
/* 80479A88 00443048  3B 20 00 00 */	li r25, 0
/* 80479A8C 0044304C  54 1B F8 7E */	srwi r27, r0, 1
/* 80479A90 00443050  48 00 00 E4 */	b .L_80479B74
.L_80479A94:
/* 80479A94 00443054  C0 3A 00 04 */	lfs f1, 4(r26)
/* 80479A98 00443058  4B FF B3 15 */	bl func_80474DAC
/* 80479A9C 0044305C  80 7A 00 00 */	lwz r3, 0(r26)
/* 80479AA0 00443060  7F 84 E3 78 */	mr r4, r28
/* 80479AA4 00443064  C0 37 00 14 */	lfs f1, 0x14(r23)
/* 80479AA8 00443068  88 B7 00 0E */	lbz r5, 0xe(r23)
/* 80479AAC 0044306C  4B FF B0 55 */	bl func_80474B00
/* 80479AB0 00443070  80 7A 00 00 */	lwz r3, 0(r26)
/* 80479AB4 00443074  4B FF B2 41 */	bl func_80474CF4
/* 80479AB8 00443078  7F DF F3 78 */	mr r31, r30
/* 80479ABC 0044307C  3B 00 00 00 */	li r24, 0
/* 80479AC0 00443080  48 00 00 A0 */	b .L_80479B60
.L_80479AC4:
/* 80479AC4 00443084  A0 1F 00 0C */	lhz r0, 0xc(r31)
/* 80479AC8 00443088  54 00 20 36 */	slwi r0, r0, 4
/* 80479ACC 0044308C  7C 7D 02 14 */	add r3, r29, r0
/* 80479AD0 00443090  88 63 00 02 */	lbz r3, 2(r3)
/* 80479AD4 00443094  4B FF B3 25 */	bl func_80474DF8
/* 80479AD8 00443098  A0 1F 00 0C */	lhz r0, 0xc(r31)
/* 80479ADC 0044309C  54 00 20 36 */	slwi r0, r0, 4
/* 80479AE0 004430A0  7C 7D 02 14 */	add r3, r29, r0
/* 80479AE4 004430A4  88 03 00 03 */	lbz r0, 3(r3)
/* 80479AE8 004430A8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80479AEC 004430AC  41 82 00 0C */	beq .L_80479AF8
/* 80479AF0 004430B0  4B FF B3 79 */	bl func_80474E68
/* 80479AF4 004430B4  48 00 00 08 */	b .L_80479AFC
.L_80479AF8:
/* 80479AF8 004430B8  4B FF B3 2D */	bl func_80474E24
.L_80479AFC:
/* 80479AFC 004430BC  A0 1F 00 0C */	lhz r0, 0xc(r31)
/* 80479B00 004430C0  54 00 20 36 */	slwi r0, r0, 4
/* 80479B04 004430C4  7C 9D 02 14 */	add r4, r29, r0
/* 80479B08 004430C8  7C 7D 02 2E */	lhzx r3, r29, r0
/* 80479B0C 004430CC  C0 24 00 04 */	lfs f1, 4(r4)
/* 80479B10 004430D0  4B FF 9C BD */	bl func_804737CC
/* 80479B14 004430D4  80 8D BF 98 */	lwz r4, lbl_80668118@sda21(r13)
/* 80479B18 004430D8  38 60 00 09 */	li r3, 9
/* 80479B1C 004430DC  80 1F 00 00 */	lwz r0, 0(r31)
/* 80479B20 004430E0  38 A0 00 0C */	li r5, 0xc
/* 80479B24 004430E4  7C 84 02 14 */	add r4, r4, r0
/* 80479B28 004430E8  4B E9 FF 89 */	bl GXSetArray
/* 80479B2C 004430EC  80 8D BF 98 */	lwz r4, lbl_80668118@sda21(r13)
/* 80479B30 004430F0  38 60 00 0D */	li r3, 0xd
/* 80479B34 004430F4  80 1F 00 04 */	lwz r0, 4(r31)
/* 80479B38 004430F8  38 A0 00 08 */	li r5, 8
/* 80479B3C 004430FC  7C 84 02 14 */	add r4, r4, r0
/* 80479B40 00443100  4B E9 FF 71 */	bl GXSetArray
/* 80479B44 00443104  80 6D BF 98 */	lwz r3, lbl_80668118@sda21(r13)
/* 80479B48 00443108  80 1F 00 08 */	lwz r0, 8(r31)
/* 80479B4C 0044310C  A0 9F 00 0E */	lhz r4, 0xe(r31)
/* 80479B50 00443110  7C 63 02 14 */	add r3, r3, r0
/* 80479B54 00443114  4B EA 49 1D */	bl GXCallDisplayList
/* 80479B58 00443118  3B FF 00 10 */	addi r31, r31, 0x10
/* 80479B5C 0044311C  3B 18 00 01 */	addi r24, r24, 1
.L_80479B60:
/* 80479B60 00443120  A0 17 00 08 */	lhz r0, 8(r23)
/* 80479B64 00443124  7C 18 00 00 */	cmpw r24, r0
/* 80479B68 00443128  41 80 FF 5C */	blt .L_80479AC4
/* 80479B6C 0044312C  3B 39 00 01 */	addi r25, r25, 1
/* 80479B70 00443130  3B 5A 00 08 */	addi r26, r26, 8
.L_80479B74:
/* 80479B74 00443134  7C 19 D8 00 */	cmpw r25, r27
/* 80479B78 00443138  41 80 FF 1C */	blt .L_80479A94
/* 80479B7C 0044313C  4B FF B1 49 */	bl func_80474CC4
/* 80479B80 00443140  38 60 00 00 */	li r3, 0
/* 80479B84 00443144  4B EA 4B 9D */	bl GXSetCurrentMtx
/* 80479B88 00443148  39 61 00 30 */	addi r11, r1, 0x30
/* 80479B8C 0044314C  4B E4 06 05 */	bl _restgpr_23
/* 80479B90 00443150  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80479B94 00443154  7C 08 03 A6 */	mtlr r0
/* 80479B98 00443158  38 21 00 30 */	addi r1, r1, 0x30
/* 80479B9C 0044315C  4E 80 00 20 */	blr 

.global func_80479BA0
func_80479BA0:
/* 80479BA0 00443160  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80479BA4 00443164  7C 08 02 A6 */	mflr r0
/* 80479BA8 00443168  90 01 00 34 */	stw r0, 0x34(r1)
/* 80479BAC 0044316C  39 61 00 30 */	addi r11, r1, 0x30
/* 80479BB0 00443170  4B E4 05 95 */	bl _savegpr_23
/* 80479BB4 00443174  80 C4 00 00 */	lwz r6, 0(r4)
/* 80479BB8 00443178  7C B8 2B 78 */	mr r24, r5
/* 80479BBC 0044317C  80 04 00 04 */	lwz r0, 4(r4)
/* 80479BC0 00443180  7C 97 23 78 */	mr r23, r4
/* 80479BC4 00443184  80 AD BF 98 */	lwz r5, lbl_80668118@sda21(r13)
/* 80479BC8 00443188  38 60 00 03 */	li r3, 3
/* 80479BCC 0044318C  90 8D BF B8 */	stw r4, lbl_80668138@sda21(r13)
/* 80479BD0 00443190  7F A5 32 14 */	add r29, r5, r6
/* 80479BD4 00443194  7F 85 02 14 */	add r28, r5, r0
/* 80479BD8 00443198  4B EA 4B 49 */	bl GXSetCurrentMtx
/* 80479BDC 0044319C  80 17 00 10 */	lwz r0, 0x10(r23)
/* 80479BE0 004431A0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80479BE4 004431A4  41 82 00 10 */	beq .L_80479BF4
/* 80479BE8 004431A8  4B FF AB 99 */	bl func_80474780
/* 80479BEC 004431AC  3B 60 00 03 */	li r27, 3
/* 80479BF0 004431B0  48 00 00 0C */	b .L_80479BFC
.L_80479BF4:
/* 80479BF4 004431B4  4B FF A8 F9 */	bl func_804744EC
/* 80479BF8 004431B8  3B 60 00 00 */	li r27, 0
.L_80479BFC:
/* 80479BFC 004431BC  4B FF B3 31 */	bl func_80474F2C
/* 80479C00 004431C0  80 17 00 10 */	lwz r0, 0x10(r23)
/* 80479C04 004431C4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80479C08 004431C8  41 82 00 0C */	beq .L_80479C14
/* 80479C0C 004431CC  4B FF AE 35 */	bl func_80474A40
/* 80479C10 004431D0  48 00 00 08 */	b .L_80479C18
.L_80479C14:
/* 80479C14 004431D4  4B FF AE 8D */	bl func_80474AA0
.L_80479C18:
/* 80479C18 004431D8  3B F8 00 04 */	addi r31, r24, 4
/* 80479C1C 004431DC  3B 40 00 01 */	li r26, 1
/* 80479C20 004431E0  48 00 00 F4 */	b .L_80479D14
.L_80479C24:
/* 80479C24 004431E4  80 7F 00 00 */	lwz r3, 0(r31)
/* 80479C28 004431E8  7F 64 DB 78 */	mr r4, r27
/* 80479C2C 004431EC  C0 37 00 14 */	lfs f1, 0x14(r23)
/* 80479C30 004431F0  88 B7 00 0E */	lbz r5, 0xe(r23)
/* 80479C34 004431F4  4B FF AE CD */	bl func_80474B00
/* 80479C38 004431F8  80 7F 00 00 */	lwz r3, 0(r31)
/* 80479C3C 004431FC  4B FF B1 15 */	bl func_80474D50
/* 80479C40 00443200  7F BE EB 78 */	mr r30, r29
/* 80479C44 00443204  3B 20 00 00 */	li r25, 0
/* 80479C48 00443208  48 00 00 B8 */	b .L_80479D00
.L_80479C4C:
/* 80479C4C 0044320C  A0 1E 00 10 */	lhz r0, 0x10(r30)
/* 80479C50 00443210  54 00 20 36 */	slwi r0, r0, 4
/* 80479C54 00443214  7C 7C 02 14 */	add r3, r28, r0
/* 80479C58 00443218  88 63 00 02 */	lbz r3, 2(r3)
/* 80479C5C 0044321C  4B FF B1 9D */	bl func_80474DF8
/* 80479C60 00443220  A0 1E 00 10 */	lhz r0, 0x10(r30)
/* 80479C64 00443224  54 00 20 36 */	slwi r0, r0, 4
/* 80479C68 00443228  7C 7C 02 14 */	add r3, r28, r0
/* 80479C6C 0044322C  88 03 00 03 */	lbz r0, 3(r3)
/* 80479C70 00443230  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80479C74 00443234  41 82 00 0C */	beq .L_80479C80
/* 80479C78 00443238  4B FF B1 F1 */	bl func_80474E68
/* 80479C7C 0044323C  48 00 00 08 */	b .L_80479C84
.L_80479C80:
/* 80479C80 00443240  4B FF B1 A5 */	bl func_80474E24
.L_80479C84:
/* 80479C84 00443244  A0 1E 00 10 */	lhz r0, 0x10(r30)
/* 80479C88 00443248  54 00 20 36 */	slwi r0, r0, 4
/* 80479C8C 0044324C  7C 9C 02 14 */	add r4, r28, r0
/* 80479C90 00443250  7C 7C 02 2E */	lhzx r3, r28, r0
/* 80479C94 00443254  C0 24 00 04 */	lfs f1, 4(r4)
/* 80479C98 00443258  4B FF 9B 35 */	bl func_804737CC
/* 80479C9C 0044325C  80 8D BF 98 */	lwz r4, lbl_80668118@sda21(r13)
/* 80479CA0 00443260  38 60 00 09 */	li r3, 9
/* 80479CA4 00443264  80 1E 00 00 */	lwz r0, 0(r30)
/* 80479CA8 00443268  38 A0 00 0C */	li r5, 0xc
/* 80479CAC 0044326C  7C 84 02 14 */	add r4, r4, r0
/* 80479CB0 00443270  4B E9 FE 01 */	bl GXSetArray
/* 80479CB4 00443274  80 8D BF 98 */	lwz r4, lbl_80668118@sda21(r13)
/* 80479CB8 00443278  38 60 00 0B */	li r3, 0xb
/* 80479CBC 0044327C  80 1E 00 08 */	lwz r0, 8(r30)
/* 80479CC0 00443280  38 A0 00 03 */	li r5, 3
/* 80479CC4 00443284  7C 84 02 14 */	add r4, r4, r0
/* 80479CC8 00443288  4B E9 FD E9 */	bl GXSetArray
/* 80479CCC 0044328C  80 8D BF 98 */	lwz r4, lbl_80668118@sda21(r13)
/* 80479CD0 00443290  38 60 00 0D */	li r3, 0xd
/* 80479CD4 00443294  80 1E 00 04 */	lwz r0, 4(r30)
/* 80479CD8 00443298  38 A0 00 08 */	li r5, 8
/* 80479CDC 0044329C  7C 84 02 14 */	add r4, r4, r0
/* 80479CE0 004432A0  4B E9 FD D1 */	bl GXSetArray
/* 80479CE4 004432A4  80 6D BF 98 */	lwz r3, lbl_80668118@sda21(r13)
/* 80479CE8 004432A8  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80479CEC 004432AC  A0 9E 00 12 */	lhz r4, 0x12(r30)
/* 80479CF0 004432B0  7C 63 02 14 */	add r3, r3, r0
/* 80479CF4 004432B4  4B EA 47 7D */	bl GXCallDisplayList
/* 80479CF8 004432B8  3B DE 00 14 */	addi r30, r30, 0x14
/* 80479CFC 004432BC  3B 39 00 01 */	addi r25, r25, 1
.L_80479D00:
/* 80479D00 004432C0  A0 17 00 08 */	lhz r0, 8(r23)
/* 80479D04 004432C4  7C 19 00 00 */	cmpw r25, r0
/* 80479D08 004432C8  41 80 FF 44 */	blt .L_80479C4C
/* 80479D0C 004432CC  3B FF 00 04 */	addi r31, r31, 4
/* 80479D10 004432D0  3B 5A 00 01 */	addi r26, r26, 1
.L_80479D14:
/* 80479D14 004432D4  80 18 00 00 */	lwz r0, 0(r24)
/* 80479D18 004432D8  7C 1A 00 40 */	cmplw r26, r0
/* 80479D1C 004432DC  41 80 FF 08 */	blt .L_80479C24
/* 80479D20 004432E0  38 60 00 00 */	li r3, 0
/* 80479D24 004432E4  4B EA 49 FD */	bl GXSetCurrentMtx
/* 80479D28 004432E8  39 61 00 30 */	addi r11, r1, 0x30
/* 80479D2C 004432EC  4B E4 04 65 */	bl _restgpr_23
/* 80479D30 004432F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80479D34 004432F4  7C 08 03 A6 */	mtlr r0
/* 80479D38 004432F8  38 21 00 30 */	addi r1, r1, 0x30
/* 80479D3C 004432FC  4E 80 00 20 */	blr 

.global func_80479D40
func_80479D40:
/* 80479D40 00443300  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80479D44 00443304  7C 08 02 A6 */	mflr r0
/* 80479D48 00443308  90 01 00 34 */	stw r0, 0x34(r1)
/* 80479D4C 0044330C  39 61 00 30 */	addi r11, r1, 0x30
/* 80479D50 00443310  4B E4 03 F5 */	bl _savegpr_23
/* 80479D54 00443314  80 C4 00 00 */	lwz r6, 0(r4)
/* 80479D58 00443318  7C B8 2B 78 */	mr r24, r5
/* 80479D5C 0044331C  80 04 00 04 */	lwz r0, 4(r4)
/* 80479D60 00443320  7C 97 23 78 */	mr r23, r4
/* 80479D64 00443324  80 AD BF 98 */	lwz r5, lbl_80668118@sda21(r13)
/* 80479D68 00443328  38 60 00 03 */	li r3, 3
/* 80479D6C 0044332C  90 8D BF B8 */	stw r4, lbl_80668138@sda21(r13)
/* 80479D70 00443330  7F C5 32 14 */	add r30, r5, r6
/* 80479D74 00443334  7F A5 02 14 */	add r29, r5, r0
/* 80479D78 00443338  4B EA 49 A9 */	bl GXSetCurrentMtx
/* 80479D7C 0044333C  80 17 00 10 */	lwz r0, 0x10(r23)
/* 80479D80 00443340  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80479D84 00443344  41 82 00 10 */	beq .L_80479D94
/* 80479D88 00443348  4B FF A9 F9 */	bl func_80474780
/* 80479D8C 0044334C  3B 80 00 03 */	li r28, 3
/* 80479D90 00443350  48 00 00 0C */	b .L_80479D9C
.L_80479D94:
/* 80479D94 00443354  4B FF A7 59 */	bl func_804744EC
/* 80479D98 00443358  3B 80 00 00 */	li r28, 0
.L_80479D9C:
/* 80479D9C 0044335C  4B FF B1 B9 */	bl func_80474F54
/* 80479DA0 00443360  4B FF AC A1 */	bl func_80474A40
/* 80479DA4 00443364  80 18 00 00 */	lwz r0, 0(r24)
/* 80479DA8 00443368  3B 58 00 04 */	addi r26, r24, 4
/* 80479DAC 0044336C  3B 20 00 00 */	li r25, 0
/* 80479DB0 00443370  54 1B F8 7E */	srwi r27, r0, 1
/* 80479DB4 00443374  48 00 00 FC */	b .L_80479EB0
.L_80479DB8:
/* 80479DB8 00443378  C0 3A 00 04 */	lfs f1, 4(r26)
/* 80479DBC 0044337C  4B FF AF F1 */	bl func_80474DAC
/* 80479DC0 00443380  80 7A 00 00 */	lwz r3, 0(r26)
/* 80479DC4 00443384  7F 84 E3 78 */	mr r4, r28
/* 80479DC8 00443388  C0 37 00 14 */	lfs f1, 0x14(r23)
/* 80479DCC 0044338C  88 B7 00 0E */	lbz r5, 0xe(r23)
/* 80479DD0 00443390  4B FF AD 31 */	bl func_80474B00
/* 80479DD4 00443394  80 7A 00 00 */	lwz r3, 0(r26)
/* 80479DD8 00443398  4B FF AF 79 */	bl func_80474D50
/* 80479DDC 0044339C  7F DF F3 78 */	mr r31, r30
/* 80479DE0 004433A0  3B 00 00 00 */	li r24, 0
/* 80479DE4 004433A4  48 00 00 B8 */	b .L_80479E9C
.L_80479DE8:
/* 80479DE8 004433A8  A0 1F 00 10 */	lhz r0, 0x10(r31)
/* 80479DEC 004433AC  54 00 20 36 */	slwi r0, r0, 4
/* 80479DF0 004433B0  7C 7D 02 14 */	add r3, r29, r0
/* 80479DF4 004433B4  88 63 00 02 */	lbz r3, 2(r3)
/* 80479DF8 004433B8  4B FF B0 01 */	bl func_80474DF8
/* 80479DFC 004433BC  A0 1F 00 10 */	lhz r0, 0x10(r31)
/* 80479E00 004433C0  54 00 20 36 */	slwi r0, r0, 4
/* 80479E04 004433C4  7C 7D 02 14 */	add r3, r29, r0
/* 80479E08 004433C8  88 03 00 03 */	lbz r0, 3(r3)
/* 80479E0C 004433CC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80479E10 004433D0  41 82 00 0C */	beq .L_80479E1C
/* 80479E14 004433D4  4B FF B0 55 */	bl func_80474E68
/* 80479E18 004433D8  48 00 00 08 */	b .L_80479E20
.L_80479E1C:
/* 80479E1C 004433DC  4B FF B0 09 */	bl func_80474E24
.L_80479E20:
/* 80479E20 004433E0  A0 1F 00 10 */	lhz r0, 0x10(r31)
/* 80479E24 004433E4  54 00 20 36 */	slwi r0, r0, 4
/* 80479E28 004433E8  7C 9D 02 14 */	add r4, r29, r0
/* 80479E2C 004433EC  7C 7D 02 2E */	lhzx r3, r29, r0
/* 80479E30 004433F0  C0 24 00 04 */	lfs f1, 4(r4)
/* 80479E34 004433F4  4B FF 99 99 */	bl func_804737CC
/* 80479E38 004433F8  80 8D BF 98 */	lwz r4, lbl_80668118@sda21(r13)
/* 80479E3C 004433FC  38 60 00 09 */	li r3, 9
/* 80479E40 00443400  80 1F 00 00 */	lwz r0, 0(r31)
/* 80479E44 00443404  38 A0 00 0C */	li r5, 0xc
/* 80479E48 00443408  7C 84 02 14 */	add r4, r4, r0
/* 80479E4C 0044340C  4B E9 FC 65 */	bl GXSetArray
/* 80479E50 00443410  80 8D BF 98 */	lwz r4, lbl_80668118@sda21(r13)
/* 80479E54 00443414  38 60 00 0B */	li r3, 0xb
/* 80479E58 00443418  80 1F 00 08 */	lwz r0, 8(r31)
/* 80479E5C 0044341C  38 A0 00 03 */	li r5, 3
/* 80479E60 00443420  7C 84 02 14 */	add r4, r4, r0
/* 80479E64 00443424  4B E9 FC 4D */	bl GXSetArray
/* 80479E68 00443428  80 8D BF 98 */	lwz r4, lbl_80668118@sda21(r13)
/* 80479E6C 0044342C  38 60 00 0D */	li r3, 0xd
/* 80479E70 00443430  80 1F 00 04 */	lwz r0, 4(r31)
/* 80479E74 00443434  38 A0 00 08 */	li r5, 8
/* 80479E78 00443438  7C 84 02 14 */	add r4, r4, r0
/* 80479E7C 0044343C  4B E9 FC 35 */	bl GXSetArray
/* 80479E80 00443440  80 6D BF 98 */	lwz r3, lbl_80668118@sda21(r13)
/* 80479E84 00443444  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80479E88 00443448  A0 9F 00 12 */	lhz r4, 0x12(r31)
/* 80479E8C 0044344C  7C 63 02 14 */	add r3, r3, r0
/* 80479E90 00443450  4B EA 45 E1 */	bl GXCallDisplayList
/* 80479E94 00443454  3B FF 00 14 */	addi r31, r31, 0x14
/* 80479E98 00443458  3B 18 00 01 */	addi r24, r24, 1
.L_80479E9C:
/* 80479E9C 0044345C  A0 17 00 08 */	lhz r0, 8(r23)
/* 80479EA0 00443460  7C 18 00 00 */	cmpw r24, r0
/* 80479EA4 00443464  41 80 FF 44 */	blt .L_80479DE8
/* 80479EA8 00443468  3B 39 00 01 */	addi r25, r25, 1
/* 80479EAC 0044346C  3B 5A 00 08 */	addi r26, r26, 8
.L_80479EB0:
/* 80479EB0 00443470  7C 19 D8 00 */	cmpw r25, r27
/* 80479EB4 00443474  41 80 FF 04 */	blt .L_80479DB8
/* 80479EB8 00443478  4B FF AE 0D */	bl func_80474CC4
/* 80479EBC 0044347C  38 60 00 00 */	li r3, 0
/* 80479EC0 00443480  4B EA 48 61 */	bl GXSetCurrentMtx
/* 80479EC4 00443484  39 61 00 30 */	addi r11, r1, 0x30
/* 80479EC8 00443488  4B E4 02 C9 */	bl _restgpr_23
/* 80479ECC 0044348C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80479ED0 00443490  7C 08 03 A6 */	mtlr r0
/* 80479ED4 00443494  38 21 00 30 */	addi r1, r1, 0x30
/* 80479ED8 00443498  4E 80 00 20 */	blr 

#needs to be split up

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global mpfsys_MPFDrawMdlColor_typestr
mpfsys_MPFDrawMdlColor_typestr:
	.asciz "mpfsys::MPFDrawMdlColor"

.global mpfsys_MPFDrawMdlNoColor_typestr
mpfsys_MPFDrawMdlNoColor_typestr:
	.asciz "mpfsys::MPFDrawMdlNoColor"
	.balign 4
	.4byte 0

.global lbl_80527728
lbl_80527728:
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	
.global lbl_80527738
lbl_80527738:
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0

.global mpfsys_MPFDrawBillLayTex_typestr
mpfsys_MPFDrawBillLayTex_typestr:
	.asciz "mpfsys::MPFDrawBillLayTex"
	.balign 4

.global mpfsys_MPFDrawCross_typestr
mpfsys_MPFDrawCross_typestr:
	.asciz "mpfsys::MPFDrawCross"
	.balign 4

.global mpfsys_MPFDrawBillboard_typestr
mpfsys_MPFDrawBillboard_typestr:
	.asciz "mpfsys::MPFDrawBillboard"
	.balign 4

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global __vt__mpfsys_MPFDrawMdlColor
__vt__mpfsys_MPFDrawMdlColor:
	.4byte __RTTI__mpfsys_MPFDrawMdlColor
	.4byte 0
	.4byte func_80479BA0
	.4byte func_80479D40

.global mpfsys_MPFDrawMdlColor_hierarchy
mpfsys_MPFDrawMdlColor_hierarchy:
	.4byte __RTTI__mpfsys_MPFDraw
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__mpfsys_MPFDrawMdlNoColor
__vt__mpfsys_MPFDrawMdlNoColor:
	.4byte __RTTI__mpfsys_MPFDrawMdlNoColor
	.4byte 0
	.4byte func_80479894
	.4byte func_80479A1C

.global mpfsys_MPFDrawMdlNoColor_hierarchy
mpfsys_MPFDrawMdlNoColor_hierarchy:
	.4byte __RTTI__mpfsys_MPFDraw
	.4byte 0
	.4byte 0
	.4byte 0

.global __vt__mpfsys_MPFDrawBillLayTex
__vt__mpfsys_MPFDrawBillLayTex:
	.4byte __RTTI__mpfsys_MPFDrawBillLayTex
	.4byte 0
	.4byte func_8047B85C
	.4byte func_8047B9DC

.global mpfsys_MPFDrawBillLayTex_hierarchy
mpfsys_MPFDrawBillLayTex_hierarchy:
	.4byte __RTTI__mpfsys_MPFDraw
	.4byte 0
	.4byte __RTTI__mpfsys_MPFDrawBillboard
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__mpfsys_MPFDrawCross
__vt__mpfsys_MPFDrawCross:
	.4byte __RTTI__mpfsys_MPFDrawCross
	.4byte 0
	.4byte func_8047B1E8
	.4byte func_8047B528

.global mpfsys_MPFDrawCross_hierarchy
mpfsys_MPFDrawCross_hierarchy:
	.4byte __RTTI__mpfsys_MPFDraw
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__mpfsys_MPFDrawBillboard
__vt__mpfsys_MPFDrawBillboard:
	.4byte __RTTI__mpfsys_MPFDrawBillboard
	.4byte 0
	.4byte func_8047A7B0
	.4byte func_8047A86C

.global mpfsys_MPFDrawBillboard_hierarchy
mpfsys_MPFDrawBillboard_hierarchy:
	.4byte __RTTI__mpfsys_MPFDraw
	.4byte 0
	.4byte 0
	.4byte 0

.section .sdata, "wa"  # 0x80664180 - 0x80666600


.global __RTTI__mpfsys_MPFDrawMdlColor
__RTTI__mpfsys_MPFDrawMdlColor:
	.4byte mpfsys_MPFDrawMdlColor_typestr
	.4byte mpfsys_MPFDrawMdlColor_hierarchy

.global __RTTI__mpfsys_MPFDrawMdlNoColor
__RTTI__mpfsys_MPFDrawMdlNoColor:
	.4byte mpfsys_MPFDrawMdlNoColor_typestr
	.4byte mpfsys_MPFDrawMdlNoColor_hierarchy

.global __RTTI__mpfsys_MPFDrawBillLayTex
__RTTI__mpfsys_MPFDrawBillLayTex:
	.4byte mpfsys_MPFDrawBillLayTex_typestr
	.4byte mpfsys_MPFDrawBillLayTex_hierarchy

.global __RTTI__mpfsys_MPFDrawCross
__RTTI__mpfsys_MPFDrawCross:
	.4byte mpfsys_MPFDrawCross_typestr
	.4byte mpfsys_MPFDrawCross_hierarchy

.global __RTTI__mpfsys_MPFDrawBillboard
__RTTI__mpfsys_MPFDrawBillboard:
	.4byte mpfsys_MPFDrawBillboard_typestr
	.4byte mpfsys_MPFDrawBillboard_hierarchy


.global float_806661C0
float_806661C0:
	# ROM: 0x571DA0
	.4byte 0x3EAAAAAB
	.4byte 0

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.global lbl_80668170
lbl_80668170:
	.skip 0x4
.global lbl_80668174
lbl_80668174:
	.skip 0x4

.section extab, "a"  # 0x800066E0 - 0x80021020

.global lbl_8001E020
lbl_8001E020:
	.4byte 0x480A0000
	.4byte 0

.global lbl_8001E028
lbl_8001E028:
	.4byte 0x480A0000
	.4byte 0

.global lbl_8001E030
lbl_8001E030:
	.4byte 0x480A0000
	.4byte 0

.global lbl_8001E038
lbl_8001E038:
	.4byte 0x480A0000
	.4byte 0


.section extabindex, "a"  # 0x80021020 - 0x80039220

.4byte func_80479894
	.4byte 0x00000188
	.4byte lbl_8001E020
	.4byte func_80479A1C
	.4byte 0x00000184
	.4byte lbl_8001E028
	.4byte func_80479BA0
	.4byte 0x000001A0
	.4byte lbl_8001E030
	.4byte func_80479D40
	.4byte 0x0000019C
	.4byte lbl_8001E038

.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global BTA_HhEnable
BTA_HhEnable:
/* 802E3830 002ACDF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E3834 002ACDF4  7C 08 02 A6 */	mflr r0
/* 802E3838 002ACDF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E383C 002ACDFC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E3840 002ACE00  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802E3844 002ACE04  7C 9E 23 78 */	mr r30, r4
/* 802E3848 002ACE08  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802E384C 002ACE0C  7C 7D 1B 78 */	mr r29, r3
/* 802E3850 002ACE10  4B FF 90 91 */	bl GKI_sched_lock
/* 802E3854 002ACE14  38 60 00 17 */	li r3, 0x17
/* 802E3858 002ACE18  38 82 BB E0 */	addi r4, r2, lbl_8066BF60@sda21
/* 802E385C 002ACE1C  4B FF B2 71 */	bl bta_sys_register
/* 802E3860 002ACE20  4B FF 90 91 */	bl GKI_sched_unlock
/* 802E3864 002ACE24  38 60 00 34 */	li r3, 0x34
/* 802E3868 002ACE28  4B FF 79 E9 */	bl GKI_getbuf
/* 802E386C 002ACE2C  2C 03 00 00 */	cmpwi r3, 0
/* 802E3870 002ACE30  7C 7F 1B 78 */	mr r31, r3
/* 802E3874 002ACE34  41 82 00 28 */	beq .L_802E389C
/* 802E3878 002ACE38  38 80 00 00 */	li r4, 0
/* 802E387C 002ACE3C  38 A0 00 34 */	li r5, 0x34
/* 802E3880 002ACE40  4B D2 0A D1 */	bl memset
/* 802E3884 002ACE44  38 00 17 0C */	li r0, 0x170c
/* 802E3888 002ACE48  7F E3 FB 78 */	mr r3, r31
/* 802E388C 002ACE4C  B0 1F 00 00 */	sth r0, 0(r31)
/* 802E3890 002ACE50  93 DF 00 30 */	stw r30, 0x30(r31)
/* 802E3894 002ACE54  9B BF 00 08 */	stb r29, 8(r31)
/* 802E3898 002ACE58  4B FF B2 49 */	bl bta_sys_sendmsg
.L_802E389C:
/* 802E389C 002ACE5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E38A0 002ACE60  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E38A4 002ACE64  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E38A8 002ACE68  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802E38AC 002ACE6C  7C 08 03 A6 */	mtlr r0
/* 802E38B0 002ACE70  38 21 00 20 */	addi r1, r1, 0x20
/* 802E38B4 002ACE74  4E 80 00 20 */	blr 

.global BTA_HhDisable
BTA_HhDisable:
/* 802E38B8 002ACE78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E38BC 002ACE7C  7C 08 02 A6 */	mflr r0
/* 802E38C0 002ACE80  38 60 00 08 */	li r3, 8
/* 802E38C4 002ACE84  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E38C8 002ACE88  4B FF 79 89 */	bl GKI_getbuf
/* 802E38CC 002ACE8C  2C 03 00 00 */	cmpwi r3, 0
/* 802E38D0 002ACE90  41 82 00 10 */	beq .L_802E38E0
/* 802E38D4 002ACE94  38 00 17 0D */	li r0, 0x170d
/* 802E38D8 002ACE98  B0 03 00 00 */	sth r0, 0(r3)
/* 802E38DC 002ACE9C  4B FF B2 05 */	bl bta_sys_sendmsg
.L_802E38E0:
/* 802E38E0 002ACEA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E38E4 002ACEA4  7C 08 03 A6 */	mtlr r0
/* 802E38E8 002ACEA8  38 21 00 10 */	addi r1, r1, 0x10
/* 802E38EC 002ACEAC  4E 80 00 20 */	blr 

.global BTA_HhClose
BTA_HhClose:
/* 802E38F0 002ACEB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E38F4 002ACEB4  7C 08 02 A6 */	mflr r0
/* 802E38F8 002ACEB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E38FC 002ACEBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E3900 002ACEC0  93 C1 00 08 */	stw r30, 8(r1)
/* 802E3904 002ACEC4  7C 7E 1B 78 */	mr r30, r3
/* 802E3908 002ACEC8  38 60 00 08 */	li r3, 8
/* 802E390C 002ACECC  4B FF 79 45 */	bl GKI_getbuf
/* 802E3910 002ACED0  2C 03 00 00 */	cmpwi r3, 0
/* 802E3914 002ACED4  7C 7F 1B 78 */	mr r31, r3
/* 802E3918 002ACED8  41 82 00 24 */	beq .L_802E393C
/* 802E391C 002ACEDC  38 80 00 00 */	li r4, 0
/* 802E3920 002ACEE0  38 A0 00 08 */	li r5, 8
/* 802E3924 002ACEE4  4B D2 0A 2D */	bl memset
/* 802E3928 002ACEE8  38 00 17 01 */	li r0, 0x1701
/* 802E392C 002ACEEC  7F E3 FB 78 */	mr r3, r31
/* 802E3930 002ACEF0  B0 1F 00 00 */	sth r0, 0(r31)
/* 802E3934 002ACEF4  B3 DF 00 06 */	sth r30, 6(r31)
/* 802E3938 002ACEF8  4B FF B1 A9 */	bl bta_sys_sendmsg
.L_802E393C:
/* 802E393C 002ACEFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E3940 002ACF00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E3944 002ACF04  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E3948 002ACF08  7C 08 03 A6 */	mtlr r0
/* 802E394C 002ACF0C  38 21 00 10 */	addi r1, r1, 0x10
/* 802E3950 002ACF10  4E 80 00 20 */	blr 

.global BTA_HhOpen
BTA_HhOpen:
/* 802E3954 002ACF14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E3958 002ACF18  7C 08 02 A6 */	mflr r0
/* 802E395C 002ACF1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E3960 002ACF20  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E3964 002ACF24  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802E3968 002ACF28  7C BE 2B 78 */	mr r30, r5
/* 802E396C 002ACF2C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802E3970 002ACF30  7C 9D 23 78 */	mr r29, r4
/* 802E3974 002ACF34  93 81 00 10 */	stw r28, 0x10(r1)
/* 802E3978 002ACF38  7C 7C 1B 78 */	mr r28, r3
/* 802E397C 002ACF3C  38 60 00 10 */	li r3, 0x10
/* 802E3980 002ACF40  4B FF 78 D1 */	bl GKI_getbuf
/* 802E3984 002ACF44  2C 03 00 00 */	cmpwi r3, 0
/* 802E3988 002ACF48  7C 7F 1B 78 */	mr r31, r3
/* 802E398C 002ACF4C  41 82 00 40 */	beq .L_802E39CC
/* 802E3990 002ACF50  38 80 00 00 */	li r4, 0
/* 802E3994 002ACF54  38 A0 00 10 */	li r5, 0x10
/* 802E3998 002ACF58  4B D2 09 B9 */	bl memset
/* 802E399C 002ACF5C  38 60 17 00 */	li r3, 0x1700
/* 802E39A0 002ACF60  38 00 00 FF */	li r0, 0xff
/* 802E39A4 002ACF64  B0 7F 00 00 */	sth r3, 0(r31)
/* 802E39A8 002ACF68  7F 84 E3 78 */	mr r4, r28
/* 802E39AC 002ACF6C  38 7F 00 08 */	addi r3, r31, 8
/* 802E39B0 002ACF70  B0 1F 00 06 */	sth r0, 6(r31)
/* 802E39B4 002ACF74  9B DF 00 0E */	stb r30, 0xe(r31)
/* 802E39B8 002ACF78  9B BF 00 0F */	stb r29, 0xf(r31)
/* 802E39BC 002ACF7C  4B FF AC 79 */	bl bdcpy
/* 802E39C0 002ACF80  7F E3 FB 78 */	mr r3, r31
/* 802E39C4 002ACF84  4B FF B1 1D */	bl bta_sys_sendmsg
/* 802E39C8 002ACF88  48 00 00 20 */	b .L_802E39E8
.L_802E39CC:
/* 802E39CC 002ACF8C  88 0D B5 F8 */	lbz r0, lbl_80667778@sda21(r13)
/* 802E39D0 002ACF90  28 00 00 01 */	cmplwi r0, 1
/* 802E39D4 002ACF94  41 80 00 14 */	blt .L_802E39E8
/* 802E39D8 002ACF98  3C 80 80 54 */	lis r4, lbl_80544690@ha
/* 802E39DC 002ACF9C  38 60 05 00 */	li r3, 0x500
/* 802E39E0 002ACFA0  38 84 46 90 */	addi r4, r4, lbl_80544690@l
/* 802E39E4 002ACFA4  4B FF A5 BD */	bl LogMsg_0
.L_802E39E8:
/* 802E39E8 002ACFA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E39EC 002ACFAC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E39F0 002ACFB0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E39F4 002ACFB4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802E39F8 002ACFB8  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802E39FC 002ACFBC  7C 08 03 A6 */	mtlr r0
/* 802E3A00 002ACFC0  38 21 00 20 */	addi r1, r1, 0x20
/* 802E3A04 002ACFC4  4E 80 00 20 */	blr 

.global BTA_HhSendData
BTA_HhSendData:
/* 802E3A08 002ACFC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E3A0C 002ACFCC  7C 08 02 A6 */	mflr r0
/* 802E3A10 002ACFD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E3A14 002ACFD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E3A18 002ACFD8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802E3A1C 002ACFDC  7C 9E 23 78 */	mr r30, r4
/* 802E3A20 002ACFE0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802E3A24 002ACFE4  7C 7D 1B 78 */	mr r29, r3
/* 802E3A28 002ACFE8  38 60 00 14 */	li r3, 0x14
/* 802E3A2C 002ACFEC  4B FF 78 25 */	bl GKI_getbuf
/* 802E3A30 002ACFF0  2C 03 00 00 */	cmpwi r3, 0
/* 802E3A34 002ACFF4  7C 7F 1B 78 */	mr r31, r3
/* 802E3A38 002ACFF8  41 82 00 44 */	beq .L_802E3A7C
/* 802E3A3C 002ACFFC  38 80 00 00 */	li r4, 0
/* 802E3A40 002AD000  38 A0 00 14 */	li r5, 0x14
/* 802E3A44 002AD004  4B D2 09 0D */	bl memset
/* 802E3A48 002AD008  38 00 17 08 */	li r0, 0x1708
/* 802E3A4C 002AD00C  38 A0 00 0A */	li r5, 0xa
/* 802E3A50 002AD010  B0 1F 00 00 */	sth r0, 0(r31)
/* 802E3A54 002AD014  38 80 00 00 */	li r4, 0
/* 802E3A58 002AD018  38 00 00 02 */	li r0, 2
/* 802E3A5C 002AD01C  7F E3 FB 78 */	mr r3, r31
/* 802E3A60 002AD020  B3 BF 00 06 */	sth r29, 6(r31)
/* 802E3A64 002AD024  98 BF 00 08 */	stb r5, 8(r31)
/* 802E3A68 002AD028  B0 9F 00 0C */	sth r4, 0xc(r31)
/* 802E3A6C 002AD02C  98 1F 00 09 */	stb r0, 9(r31)
/* 802E3A70 002AD030  93 DF 00 10 */	stw r30, 0x10(r31)
/* 802E3A74 002AD034  98 9F 00 0A */	stb r4, 0xa(r31)
/* 802E3A78 002AD038  4B FF B0 69 */	bl bta_sys_sendmsg
.L_802E3A7C:
/* 802E3A7C 002AD03C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E3A80 002AD040  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E3A84 002AD044  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E3A88 002AD048  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802E3A8C 002AD04C  7C 08 03 A6 */	mtlr r0
/* 802E3A90 002AD050  38 21 00 20 */	addi r1, r1, 0x20
/* 802E3A94 002AD054  4E 80 00 20 */	blr 

.global BTA_HhAddDev
BTA_HhAddDev:
/* 802E3A98 002AD058  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E3A9C 002AD05C  7C 08 02 A6 */	mflr r0
/* 802E3AA0 002AD060  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E3AA4 002AD064  39 61 00 20 */	addi r11, r1, 0x20
/* 802E3AA8 002AD068  4B FD 66 A9 */	bl _savegpr_26
/* 802E3AAC 002AD06C  7C 7A 1B 78 */	mr r26, r3
/* 802E3AB0 002AD070  7C 9B 23 78 */	mr r27, r4
/* 802E3AB4 002AD074  7C BC 2B 78 */	mr r28, r5
/* 802E3AB8 002AD078  7C DD 33 78 */	mr r29, r6
/* 802E3ABC 002AD07C  7C FE 3B 78 */	mr r30, r7
/* 802E3AC0 002AD080  38 60 00 1C */	li r3, 0x1c
/* 802E3AC4 002AD084  4B FF 77 8D */	bl GKI_getbuf
/* 802E3AC8 002AD088  2C 03 00 00 */	cmpwi r3, 0
/* 802E3ACC 002AD08C  7C 7F 1B 78 */	mr r31, r3
/* 802E3AD0 002AD090  41 82 00 58 */	beq .L_802E3B28
/* 802E3AD4 002AD094  38 80 00 00 */	li r4, 0
/* 802E3AD8 002AD098  38 A0 00 1C */	li r5, 0x1c
/* 802E3ADC 002AD09C  4B D2 08 75 */	bl memset
/* 802E3AE0 002AD0A0  38 00 17 0A */	li r0, 0x170a
/* 802E3AE4 002AD0A4  38 A0 00 0B */	li r5, 0xb
/* 802E3AE8 002AD0A8  B0 1F 00 00 */	sth r0, 0(r31)
/* 802E3AEC 002AD0AC  38 00 00 FF */	li r0, 0xff
/* 802E3AF0 002AD0B0  7F C4 F3 78 */	mr r4, r30
/* 802E3AF4 002AD0B4  38 7F 00 14 */	addi r3, r31, 0x14
/* 802E3AF8 002AD0B8  B0 BF 00 10 */	sth r5, 0x10(r31)
/* 802E3AFC 002AD0BC  38 A0 00 08 */	li r5, 8
/* 802E3B00 002AD0C0  B0 1F 00 06 */	sth r0, 6(r31)
/* 802E3B04 002AD0C4  B3 7F 00 0E */	sth r27, 0xe(r31)
/* 802E3B08 002AD0C8  9B 9F 00 12 */	stb r28, 0x12(r31)
/* 802E3B0C 002AD0CC  9B BF 00 13 */	stb r29, 0x13(r31)
/* 802E3B10 002AD0D0  4B D2 04 F1 */	bl memcpy
/* 802E3B14 002AD0D4  7F 44 D3 78 */	mr r4, r26
/* 802E3B18 002AD0D8  38 7F 00 08 */	addi r3, r31, 8
/* 802E3B1C 002AD0DC  4B FF AB 19 */	bl bdcpy
/* 802E3B20 002AD0E0  7F E3 FB 78 */	mr r3, r31
/* 802E3B24 002AD0E4  4B FF AF BD */	bl bta_sys_sendmsg
.L_802E3B28:
/* 802E3B28 002AD0E8  39 61 00 20 */	addi r11, r1, 0x20
/* 802E3B2C 002AD0EC  4B FD 66 71 */	bl _restgpr_26
/* 802E3B30 002AD0F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E3B34 002AD0F4  7C 08 03 A6 */	mtlr r0
/* 802E3B38 002AD0F8  38 21 00 20 */	addi r1, r1, 0x20
/* 802E3B3C 002AD0FC  4E 80 00 20 */	blr 

.global BTA_HhRemoveDev
BTA_HhRemoveDev:
/* 802E3B40 002AD100  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E3B44 002AD104  7C 08 02 A6 */	mflr r0
/* 802E3B48 002AD108  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E3B4C 002AD10C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E3B50 002AD110  93 C1 00 08 */	stw r30, 8(r1)
/* 802E3B54 002AD114  7C 7E 1B 78 */	mr r30, r3
/* 802E3B58 002AD118  38 60 00 1C */	li r3, 0x1c
/* 802E3B5C 002AD11C  4B FF 76 F5 */	bl GKI_getbuf
/* 802E3B60 002AD120  2C 03 00 00 */	cmpwi r3, 0
/* 802E3B64 002AD124  7C 7F 1B 78 */	mr r31, r3
/* 802E3B68 002AD128  41 82 00 2C */	beq .L_802E3B94
/* 802E3B6C 002AD12C  38 80 00 00 */	li r4, 0
/* 802E3B70 002AD130  38 A0 00 1C */	li r5, 0x1c
/* 802E3B74 002AD134  4B D2 07 DD */	bl memset
/* 802E3B78 002AD138  38 60 17 0A */	li r3, 0x170a
/* 802E3B7C 002AD13C  38 00 00 0C */	li r0, 0xc
/* 802E3B80 002AD140  B0 7F 00 00 */	sth r3, 0(r31)
/* 802E3B84 002AD144  7F E3 FB 78 */	mr r3, r31
/* 802E3B88 002AD148  B0 1F 00 10 */	sth r0, 0x10(r31)
/* 802E3B8C 002AD14C  B3 DF 00 06 */	sth r30, 6(r31)
/* 802E3B90 002AD150  4B FF AF 51 */	bl bta_sys_sendmsg
.L_802E3B94:
/* 802E3B94 002AD154  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E3B98 002AD158  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E3B9C 002AD15C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E3BA0 002AD160  7C 08 03 A6 */	mtlr r0
/* 802E3BA4 002AD164  38 21 00 10 */	addi r1, r1, 0x10
/* 802E3BA8 002AD168  4E 80 00 20 */	blr 

.global BTA_HhGetAclQueueInfo
BTA_HhGetAclQueueInfo:
/* 802E3BAC 002AD16C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E3BB0 002AD170  7C 08 02 A6 */	mflr r0
/* 802E3BB4 002AD174  38 60 00 08 */	li r3, 8
/* 802E3BB8 002AD178  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E3BBC 002AD17C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E3BC0 002AD180  4B FF 76 91 */	bl GKI_getbuf
/* 802E3BC4 002AD184  2C 03 00 00 */	cmpwi r3, 0
/* 802E3BC8 002AD188  7C 7F 1B 78 */	mr r31, r3
/* 802E3BCC 002AD18C  41 82 00 20 */	beq .L_802E3BEC
/* 802E3BD0 002AD190  38 80 00 00 */	li r4, 0
/* 802E3BD4 002AD194  38 A0 00 08 */	li r5, 8
/* 802E3BD8 002AD198  4B D2 07 79 */	bl memset
/* 802E3BDC 002AD19C  38 00 17 0E */	li r0, 0x170e
/* 802E3BE0 002AD1A0  7F E3 FB 78 */	mr r3, r31
/* 802E3BE4 002AD1A4  B0 1F 00 00 */	sth r0, 0(r31)
/* 802E3BE8 002AD1A8  4B FF AE F9 */	bl bta_sys_sendmsg
.L_802E3BEC:
/* 802E3BEC 002AD1AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E3BF0 002AD1B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E3BF4 002AD1B4  7C 08 03 A6 */	mtlr r0
/* 802E3BF8 002AD1B8  38 21 00 10 */	addi r1, r1, 0x10
/* 802E3BFC 002AD1BC  4E 80 00 20 */	blr


.section .data, "wa"  # 0x805281E0 - 0x80573C60
.global lbl_80544690
lbl_80544690:
	.asciz "No resource to send HID host Connect request."
	.balign 4

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.global lbl_8066BF60
lbl_8066BF60:
	.4byte bta_hh_hdl_event
	.4byte BTA_HhDisable
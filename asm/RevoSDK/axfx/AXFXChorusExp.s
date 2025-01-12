.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global AXFXChorusExpGetMemSize
AXFXChorusExpGetMemSize:
/* 802D9430 002A29F0  3C 60 00 01 */	lis r3, 0x00009600@ha
/* 802D9434 002A29F4  38 63 96 00 */	addi r3, r3, 0x00009600@l
/* 802D9438 002A29F8  4E 80 00 20 */	blr 

.balign 16, 0
.global AXFXChorusExpInit
AXFXChorusExpInit:
/* 802D9440 002A2A00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D9444 002A2A04  7C 08 02 A6 */	mflr r0
/* 802D9448 002A2A08  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D944C 002A2A0C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D9450 002A2A10  4B FE 0D 05 */	bl _savegpr_27
/* 802D9454 002A2A14  7C 7E 1B 78 */	mr r30, r3
/* 802D9458 002A2A18  48 07 F5 59 */	bl OSDisableInterrupts
/* 802D945C 002A2A1C  38 80 00 01 */	li r4, 1
/* 802D9460 002A2A20  38 00 0C 80 */	li r0, 0xc80
/* 802D9464 002A2A24  90 9E 00 7C */	stw r4, 0x7c(r30)
/* 802D9468 002A2A28  7C 7F 1B 78 */	mr r31, r3
/* 802D946C 002A2A2C  7F DB F3 78 */	mr r27, r30
/* 802D9470 002A2A30  3B A0 00 00 */	li r29, 0
/* 802D9474 002A2A34  90 1E 00 1C */	stw r0, 0x1c(r30)
.L_802D9478:
/* 802D9478 002A2A38  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 802D947C 002A2A3C  81 8D 97 40 */	lwz r12, lbl_806658C0@sda21(r13)
/* 802D9480 002A2A40  54 03 10 3A */	slwi r3, r0, 2
/* 802D9484 002A2A44  7D 89 03 A6 */	mtctr r12
/* 802D9488 002A2A48  4E 80 04 21 */	bctrl 
/* 802D948C 002A2A4C  2C 03 00 00 */	cmpwi r3, 0
/* 802D9490 002A2A50  90 7B 00 00 */	stw r3, 0(r27)
/* 802D9494 002A2A54  40 82 00 0C */	bne .L_802D94A0
/* 802D9498 002A2A58  38 00 00 00 */	li r0, 0
/* 802D949C 002A2A5C  48 00 00 18 */	b .L_802D94B4
.L_802D94A0:
/* 802D94A0 002A2A60  3B BD 00 01 */	addi r29, r29, 1
/* 802D94A4 002A2A64  3B 7B 00 04 */	addi r27, r27, 4
/* 802D94A8 002A2A68  28 1D 00 03 */	cmplwi r29, 3
/* 802D94AC 002A2A6C  41 80 FF CC */	blt .L_802D9478
/* 802D94B0 002A2A70  38 00 00 01 */	li r0, 1
.L_802D94B4:
/* 802D94B4 002A2A74  2C 00 00 00 */	cmpwi r0, 0
/* 802D94B8 002A2A78  40 82 00 64 */	bne .L_802D951C
/* 802D94BC 002A2A7C  48 07 F4 F5 */	bl OSDisableInterrupts
/* 802D94C0 002A2A80  80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 802D94C4 002A2A84  7C 7B 1B 78 */	mr r27, r3
/* 802D94C8 002A2A88  3B 80 00 00 */	li r28, 0
/* 802D94CC 002A2A8C  3B A0 00 00 */	li r29, 0
/* 802D94D0 002A2A90  60 00 00 01 */	ori r0, r0, 1
/* 802D94D4 002A2A94  90 1E 00 7C */	stw r0, 0x7c(r30)
.L_802D94D8:
/* 802D94D8 002A2A98  80 7E 00 00 */	lwz r3, 0(r30)
/* 802D94DC 002A2A9C  2C 03 00 00 */	cmpwi r3, 0
/* 802D94E0 002A2AA0  41 82 00 10 */	beq .L_802D94F0
/* 802D94E4 002A2AA4  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D94E8 002A2AA8  7D 89 03 A6 */	mtctr r12
/* 802D94EC 002A2AAC  4E 80 04 21 */	bctrl 
.L_802D94F0:
/* 802D94F0 002A2AB0  3B 9C 00 01 */	addi r28, r28, 1
/* 802D94F4 002A2AB4  93 BE 00 00 */	stw r29, 0(r30)
/* 802D94F8 002A2AB8  28 1C 00 03 */	cmplwi r28, 3
/* 802D94FC 002A2ABC  3B DE 00 04 */	addi r30, r30, 4
/* 802D9500 002A2AC0  41 80 FF D8 */	blt .L_802D94D8
/* 802D9504 002A2AC4  7F 63 DB 78 */	mr r3, r27
/* 802D9508 002A2AC8  48 07 F4 E9 */	bl OSRestoreInterrupts
/* 802D950C 002A2ACC  7F E3 FB 78 */	mr r3, r31
/* 802D9510 002A2AD0  48 07 F4 E1 */	bl OSRestoreInterrupts
/* 802D9514 002A2AD4  38 60 00 00 */	li r3, 0
/* 802D9518 002A2AD8  48 00 01 68 */	b .L_802D9680
.L_802D951C:
/* 802D951C 002A2ADC  7F DC F3 78 */	mr r28, r30
/* 802D9520 002A2AE0  3B 60 00 00 */	li r27, 0
.L_802D9524:
/* 802D9524 002A2AE4  80 7C 00 00 */	lwz r3, 0(r28)
/* 802D9528 002A2AE8  2C 03 00 00 */	cmpwi r3, 0
/* 802D952C 002A2AEC  40 82 00 0C */	bne .L_802D9538
/* 802D9530 002A2AF0  38 80 00 00 */	li r4, 0
/* 802D9534 002A2AF4  48 00 00 5C */	b .L_802D9590
.L_802D9538:
/* 802D9538 002A2AF8  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 802D953C 002A2AFC  38 80 00 00 */	li r4, 0
/* 802D9540 002A2B00  54 05 10 3A */	slwi r5, r0, 2
/* 802D9544 002A2B04  4B D2 AE 0D */	bl memset
/* 802D9548 002A2B08  3B 7B 00 01 */	addi r27, r27, 1
/* 802D954C 002A2B0C  3B 9C 00 04 */	addi r28, r28, 4
/* 802D9550 002A2B10  28 1B 00 03 */	cmplwi r27, 3
/* 802D9554 002A2B14  41 80 FF D0 */	blt .L_802D9524
/* 802D9558 002A2B18  C0 22 BB 50 */	lfs f1, float_8066BED0@sda21(r2)
/* 802D955C 002A2B1C  38 00 00 00 */	li r0, 0
/* 802D9560 002A2B20  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 802D9564 002A2B24  90 1E 00 0C */	stw r0, 0xc(r30)
/* 802D9568 002A2B28  EC 21 00 32 */	fmuls f1, f1, f0
/* 802D956C 002A2B2C  4B FE 0A C1 */	bl __cvt_fp2unsigned
/* 802D9570 002A2B30  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 802D9574 002A2B34  38 80 00 01 */	li r4, 1
/* 802D9578 002A2B38  7C 63 00 50 */	subf r3, r3, r0
/* 802D957C 002A2B3C  54 00 80 1E */	slwi r0, r0, 0x10
/* 802D9580 002A2B40  54 63 80 1E */	slwi r3, r3, 0x10
/* 802D9584 002A2B44  90 7E 00 10 */	stw r3, 0x10(r30)
/* 802D9588 002A2B48  90 7E 00 14 */	stw r3, 0x14(r30)
/* 802D958C 002A2B4C  90 1E 00 18 */	stw r0, 0x18(r30)
.L_802D9590:
/* 802D9590 002A2B50  2C 04 00 00 */	cmpwi r4, 0
/* 802D9594 002A2B54  40 82 00 64 */	bne .L_802D95F8
/* 802D9598 002A2B58  48 07 F4 19 */	bl OSDisableInterrupts
/* 802D959C 002A2B5C  80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 802D95A0 002A2B60  7C 7C 1B 78 */	mr r28, r3
/* 802D95A4 002A2B64  3B 60 00 00 */	li r27, 0
/* 802D95A8 002A2B68  3B A0 00 00 */	li r29, 0
/* 802D95AC 002A2B6C  60 00 00 01 */	ori r0, r0, 1
/* 802D95B0 002A2B70  90 1E 00 7C */	stw r0, 0x7c(r30)
.L_802D95B4:
/* 802D95B4 002A2B74  80 7E 00 00 */	lwz r3, 0(r30)
/* 802D95B8 002A2B78  2C 03 00 00 */	cmpwi r3, 0
/* 802D95BC 002A2B7C  41 82 00 10 */	beq .L_802D95CC
/* 802D95C0 002A2B80  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D95C4 002A2B84  7D 89 03 A6 */	mtctr r12
/* 802D95C8 002A2B88  4E 80 04 21 */	bctrl 
.L_802D95CC:
/* 802D95CC 002A2B8C  3B 7B 00 01 */	addi r27, r27, 1
/* 802D95D0 002A2B90  93 BE 00 00 */	stw r29, 0(r30)
/* 802D95D4 002A2B94  28 1B 00 03 */	cmplwi r27, 3
/* 802D95D8 002A2B98  3B DE 00 04 */	addi r30, r30, 4
/* 802D95DC 002A2B9C  41 80 FF D8 */	blt .L_802D95B4
/* 802D95E0 002A2BA0  7F 83 E3 78 */	mr r3, r28
/* 802D95E4 002A2BA4  48 07 F4 0D */	bl OSRestoreInterrupts
/* 802D95E8 002A2BA8  7F E3 FB 78 */	mr r3, r31
/* 802D95EC 002A2BAC  48 07 F4 05 */	bl OSRestoreInterrupts
/* 802D95F0 002A2BB0  38 60 00 00 */	li r3, 0
/* 802D95F4 002A2BB4  48 00 00 8C */	b .L_802D9680
.L_802D95F8:
/* 802D95F8 002A2BB8  7F C3 F3 78 */	mr r3, r30
/* 802D95FC 002A2BBC  48 00 06 45 */	bl __InitParams
/* 802D9600 002A2BC0  2C 03 00 00 */	cmpwi r3, 0
/* 802D9604 002A2BC4  40 82 00 64 */	bne .L_802D9668
/* 802D9608 002A2BC8  48 07 F3 A9 */	bl OSDisableInterrupts
/* 802D960C 002A2BCC  80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 802D9610 002A2BD0  7C 7C 1B 78 */	mr r28, r3
/* 802D9614 002A2BD4  3B 60 00 00 */	li r27, 0
/* 802D9618 002A2BD8  3B A0 00 00 */	li r29, 0
/* 802D961C 002A2BDC  60 00 00 01 */	ori r0, r0, 1
/* 802D9620 002A2BE0  90 1E 00 7C */	stw r0, 0x7c(r30)
.L_802D9624:
/* 802D9624 002A2BE4  80 7E 00 00 */	lwz r3, 0(r30)
/* 802D9628 002A2BE8  2C 03 00 00 */	cmpwi r3, 0
/* 802D962C 002A2BEC  41 82 00 10 */	beq .L_802D963C
/* 802D9630 002A2BF0  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D9634 002A2BF4  7D 89 03 A6 */	mtctr r12
/* 802D9638 002A2BF8  4E 80 04 21 */	bctrl 
.L_802D963C:
/* 802D963C 002A2BFC  3B 7B 00 01 */	addi r27, r27, 1
/* 802D9640 002A2C00  93 BE 00 00 */	stw r29, 0(r30)
/* 802D9644 002A2C04  28 1B 00 03 */	cmplwi r27, 3
/* 802D9648 002A2C08  3B DE 00 04 */	addi r30, r30, 4
/* 802D964C 002A2C0C  41 80 FF D8 */	blt .L_802D9624
/* 802D9650 002A2C10  7F 83 E3 78 */	mr r3, r28
/* 802D9654 002A2C14  48 07 F3 9D */	bl OSRestoreInterrupts
/* 802D9658 002A2C18  7F E3 FB 78 */	mr r3, r31
/* 802D965C 002A2C1C  48 07 F3 95 */	bl OSRestoreInterrupts
/* 802D9660 002A2C20  38 60 00 00 */	li r3, 0
/* 802D9664 002A2C24  48 00 00 1C */	b .L_802D9680
.L_802D9668:
/* 802D9668 002A2C28  80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 802D966C 002A2C2C  7F E3 FB 78 */	mr r3, r31
/* 802D9670 002A2C30  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 802D9674 002A2C34  90 1E 00 7C */	stw r0, 0x7c(r30)
/* 802D9678 002A2C38  48 07 F3 79 */	bl OSRestoreInterrupts
/* 802D967C 002A2C3C  38 60 00 01 */	li r3, 1
.L_802D9680:
/* 802D9680 002A2C40  39 61 00 20 */	addi r11, r1, 0x20
/* 802D9684 002A2C44  4B FE 0B 1D */	bl _restgpr_27
/* 802D9688 002A2C48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D968C 002A2C4C  7C 08 03 A6 */	mtlr r0
/* 802D9690 002A2C50  38 21 00 20 */	addi r1, r1, 0x20
/* 802D9694 002A2C54  4E 80 00 20 */	blr 

.balign 16, 0
.global AXFXChorusExpSettingsUpdate
AXFXChorusExpSettingsUpdate:
/* 802D96A0 002A2C60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D96A4 002A2C64  7C 08 02 A6 */	mflr r0
/* 802D96A8 002A2C68  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D96AC 002A2C6C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D96B0 002A2C70  4B FE 0A A5 */	bl _savegpr_27
/* 802D96B4 002A2C74  7C 7E 1B 78 */	mr r30, r3
/* 802D96B8 002A2C78  48 07 F2 F9 */	bl OSDisableInterrupts
/* 802D96BC 002A2C7C  80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 802D96C0 002A2C80  7C 7F 1B 78 */	mr r31, r3
/* 802D96C4 002A2C84  7F DB F3 78 */	mr r27, r30
/* 802D96C8 002A2C88  3B A0 00 00 */	li r29, 0
/* 802D96CC 002A2C8C  60 00 00 01 */	ori r0, r0, 1
/* 802D96D0 002A2C90  90 1E 00 7C */	stw r0, 0x7c(r30)
.L_802D96D4:
/* 802D96D4 002A2C94  80 7B 00 00 */	lwz r3, 0(r27)
/* 802D96D8 002A2C98  2C 03 00 00 */	cmpwi r3, 0
/* 802D96DC 002A2C9C  40 82 00 0C */	bne .L_802D96E8
/* 802D96E0 002A2CA0  38 80 00 00 */	li r4, 0
/* 802D96E4 002A2CA4  48 00 00 5C */	b .L_802D9740
.L_802D96E8:
/* 802D96E8 002A2CA8  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 802D96EC 002A2CAC  38 80 00 00 */	li r4, 0
/* 802D96F0 002A2CB0  54 05 10 3A */	slwi r5, r0, 2
/* 802D96F4 002A2CB4  4B D2 AC 5D */	bl memset
/* 802D96F8 002A2CB8  3B BD 00 01 */	addi r29, r29, 1
/* 802D96FC 002A2CBC  3B 7B 00 04 */	addi r27, r27, 4
/* 802D9700 002A2CC0  28 1D 00 03 */	cmplwi r29, 3
/* 802D9704 002A2CC4  41 80 FF D0 */	blt .L_802D96D4
/* 802D9708 002A2CC8  C0 22 BB 50 */	lfs f1, float_8066BED0@sda21(r2)
/* 802D970C 002A2CCC  38 00 00 00 */	li r0, 0
/* 802D9710 002A2CD0  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 802D9714 002A2CD4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 802D9718 002A2CD8  EC 21 00 32 */	fmuls f1, f1, f0
/* 802D971C 002A2CDC  4B FE 09 11 */	bl __cvt_fp2unsigned
/* 802D9720 002A2CE0  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 802D9724 002A2CE4  38 80 00 01 */	li r4, 1
/* 802D9728 002A2CE8  7C 63 00 50 */	subf r3, r3, r0
/* 802D972C 002A2CEC  54 00 80 1E */	slwi r0, r0, 0x10
/* 802D9730 002A2CF0  54 63 80 1E */	slwi r3, r3, 0x10
/* 802D9734 002A2CF4  90 7E 00 10 */	stw r3, 0x10(r30)
/* 802D9738 002A2CF8  90 7E 00 14 */	stw r3, 0x14(r30)
/* 802D973C 002A2CFC  90 1E 00 18 */	stw r0, 0x18(r30)
.L_802D9740:
/* 802D9740 002A2D00  2C 04 00 00 */	cmpwi r4, 0
/* 802D9744 002A2D04  40 82 00 64 */	bne .L_802D97A8
/* 802D9748 002A2D08  48 07 F2 69 */	bl OSDisableInterrupts
/* 802D974C 002A2D0C  80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 802D9750 002A2D10  7C 7B 1B 78 */	mr r27, r3
/* 802D9754 002A2D14  3B 80 00 00 */	li r28, 0
/* 802D9758 002A2D18  3B A0 00 00 */	li r29, 0
/* 802D975C 002A2D1C  60 00 00 01 */	ori r0, r0, 1
/* 802D9760 002A2D20  90 1E 00 7C */	stw r0, 0x7c(r30)
.L_802D9764:
/* 802D9764 002A2D24  80 7E 00 00 */	lwz r3, 0(r30)
/* 802D9768 002A2D28  2C 03 00 00 */	cmpwi r3, 0
/* 802D976C 002A2D2C  41 82 00 10 */	beq .L_802D977C
/* 802D9770 002A2D30  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D9774 002A2D34  7D 89 03 A6 */	mtctr r12
/* 802D9778 002A2D38  4E 80 04 21 */	bctrl 
.L_802D977C:
/* 802D977C 002A2D3C  3B 9C 00 01 */	addi r28, r28, 1
/* 802D9780 002A2D40  93 BE 00 00 */	stw r29, 0(r30)
/* 802D9784 002A2D44  28 1C 00 03 */	cmplwi r28, 3
/* 802D9788 002A2D48  3B DE 00 04 */	addi r30, r30, 4
/* 802D978C 002A2D4C  41 80 FF D8 */	blt .L_802D9764
/* 802D9790 002A2D50  7F 63 DB 78 */	mr r3, r27
/* 802D9794 002A2D54  48 07 F2 5D */	bl OSRestoreInterrupts
/* 802D9798 002A2D58  7F E3 FB 78 */	mr r3, r31
/* 802D979C 002A2D5C  48 07 F2 55 */	bl OSRestoreInterrupts
/* 802D97A0 002A2D60  38 60 00 00 */	li r3, 0
/* 802D97A4 002A2D64  48 00 00 94 */	b .L_802D9838
.L_802D97A8:
/* 802D97A8 002A2D68  7F C3 F3 78 */	mr r3, r30
/* 802D97AC 002A2D6C  48 00 04 95 */	bl __InitParams
/* 802D97B0 002A2D70  2C 03 00 00 */	cmpwi r3, 0
/* 802D97B4 002A2D74  7C 7B 1B 78 */	mr r27, r3
/* 802D97B8 002A2D78  40 82 00 64 */	bne .L_802D981C
/* 802D97BC 002A2D7C  48 07 F1 F5 */	bl OSDisableInterrupts
/* 802D97C0 002A2D80  80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 802D97C4 002A2D84  7C 7C 1B 78 */	mr r28, r3
/* 802D97C8 002A2D88  3B 60 00 00 */	li r27, 0
/* 802D97CC 002A2D8C  3B A0 00 00 */	li r29, 0
/* 802D97D0 002A2D90  60 00 00 01 */	ori r0, r0, 1
/* 802D97D4 002A2D94  90 1E 00 7C */	stw r0, 0x7c(r30)
.L_802D97D8:
/* 802D97D8 002A2D98  80 7E 00 00 */	lwz r3, 0(r30)
/* 802D97DC 002A2D9C  2C 03 00 00 */	cmpwi r3, 0
/* 802D97E0 002A2DA0  41 82 00 10 */	beq .L_802D97F0
/* 802D97E4 002A2DA4  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D97E8 002A2DA8  7D 89 03 A6 */	mtctr r12
/* 802D97EC 002A2DAC  4E 80 04 21 */	bctrl 
.L_802D97F0:
/* 802D97F0 002A2DB0  3B 7B 00 01 */	addi r27, r27, 1
/* 802D97F4 002A2DB4  93 BE 00 00 */	stw r29, 0(r30)
/* 802D97F8 002A2DB8  28 1B 00 03 */	cmplwi r27, 3
/* 802D97FC 002A2DBC  3B DE 00 04 */	addi r30, r30, 4
/* 802D9800 002A2DC0  41 80 FF D8 */	blt .L_802D97D8
/* 802D9804 002A2DC4  7F 83 E3 78 */	mr r3, r28
/* 802D9808 002A2DC8  48 07 F1 E9 */	bl OSRestoreInterrupts
/* 802D980C 002A2DCC  7F E3 FB 78 */	mr r3, r31
/* 802D9810 002A2DD0  48 07 F1 E1 */	bl OSRestoreInterrupts
/* 802D9814 002A2DD4  38 60 00 00 */	li r3, 0
/* 802D9818 002A2DD8  48 00 00 20 */	b .L_802D9838
.L_802D981C:
/* 802D981C 002A2DDC  80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 802D9820 002A2DE0  7F E3 FB 78 */	mr r3, r31
/* 802D9824 002A2DE4  60 00 00 02 */	ori r0, r0, 2
/* 802D9828 002A2DE8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 802D982C 002A2DEC  90 1E 00 7C */	stw r0, 0x7c(r30)
/* 802D9830 002A2DF0  48 07 F1 C1 */	bl OSRestoreInterrupts
/* 802D9834 002A2DF4  7F 63 DB 78 */	mr r3, r27
.L_802D9838:
/* 802D9838 002A2DF8  39 61 00 20 */	addi r11, r1, 0x20
/* 802D983C 002A2DFC  4B FE 09 65 */	bl _restgpr_27
/* 802D9840 002A2E00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D9844 002A2E04  7C 08 03 A6 */	mtlr r0
/* 802D9848 002A2E08  38 21 00 20 */	addi r1, r1, 0x20
/* 802D984C 002A2E0C  4E 80 00 20 */	blr 

.balign 16, 0
.global AXFXChorusExpShutdown
AXFXChorusExpShutdown:
/* 802D9850 002A2E10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D9854 002A2E14  7C 08 02 A6 */	mflr r0
/* 802D9858 002A2E18  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D985C 002A2E1C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D9860 002A2E20  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D9864 002A2E24  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802D9868 002A2E28  93 81 00 10 */	stw r28, 0x10(r1)
/* 802D986C 002A2E2C  7C 7C 1B 78 */	mr r28, r3
/* 802D9870 002A2E30  48 07 F1 41 */	bl OSDisableInterrupts
/* 802D9874 002A2E34  80 1C 00 7C */	lwz r0, 0x7c(r28)
/* 802D9878 002A2E38  7C 7D 1B 78 */	mr r29, r3
/* 802D987C 002A2E3C  3B C0 00 00 */	li r30, 0
/* 802D9880 002A2E40  3B E0 00 00 */	li r31, 0
/* 802D9884 002A2E44  60 00 00 01 */	ori r0, r0, 1
/* 802D9888 002A2E48  90 1C 00 7C */	stw r0, 0x7c(r28)
.L_802D988C:
/* 802D988C 002A2E4C  80 7C 00 00 */	lwz r3, 0(r28)
/* 802D9890 002A2E50  2C 03 00 00 */	cmpwi r3, 0
/* 802D9894 002A2E54  41 82 00 10 */	beq .L_802D98A4
/* 802D9898 002A2E58  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D989C 002A2E5C  7D 89 03 A6 */	mtctr r12
/* 802D98A0 002A2E60  4E 80 04 21 */	bctrl 
.L_802D98A4:
/* 802D98A4 002A2E64  3B DE 00 01 */	addi r30, r30, 1
/* 802D98A8 002A2E68  93 FC 00 00 */	stw r31, 0(r28)
/* 802D98AC 002A2E6C  28 1E 00 03 */	cmplwi r30, 3
/* 802D98B0 002A2E70  3B 9C 00 04 */	addi r28, r28, 4
/* 802D98B4 002A2E74  41 80 FF D8 */	blt .L_802D988C
/* 802D98B8 002A2E78  7F A3 EB 78 */	mr r3, r29
/* 802D98BC 002A2E7C  48 07 F1 35 */	bl OSRestoreInterrupts
/* 802D98C0 002A2E80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D98C4 002A2E84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D98C8 002A2E88  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D98CC 002A2E8C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802D98D0 002A2E90  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802D98D4 002A2E94  7C 08 03 A6 */	mtlr r0
/* 802D98D8 002A2E98  38 21 00 20 */	addi r1, r1, 0x20
/* 802D98DC 002A2E9C  4E 80 00 20 */	blr 

.balign 16, 0
.global AXFXChorusExpCallback
AXFXChorusExpCallback:
/* 802D98E0 002A2EA0  94 21 FE 00 */	stwu r1, -0x200(r1)
/* 802D98E4 002A2EA4  7C 08 02 A6 */	mflr r0
/* 802D98E8 002A2EA8  90 01 02 04 */	stw r0, 0x204(r1)
/* 802D98EC 002A2EAC  39 61 01 F0 */	addi r11, r1, 0x1f0
/* 802D98F0 002A2EB0  DB E1 01 F0 */	stfd f31, 0x1f0(r1)
/* 802D98F4 002A2EB4  F3 E1 01 F8 */	psq_st f31, 504(r1), 0, qr0
/* 802D98F8 002A2EB8  4B FE 08 55 */	bl _savegpr_25
/* 802D98FC 002A2EBC  80 04 00 7C */	lwz r0, 0x7c(r4)
/* 802D9900 002A2EC0  7C 9B 23 78 */	mr r27, r4
/* 802D9904 002A2EC4  2C 00 00 00 */	cmpwi r0, 0
/* 802D9908 002A2EC8  41 82 00 10 */	beq .L_802D9918
/* 802D990C 002A2ECC  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 802D9910 002A2ED0  90 04 00 7C */	stw r0, 0x7c(r4)
/* 802D9914 002A2ED4  48 00 03 0C */	b .L_802D9C20
.L_802D9918:
/* 802D9918 002A2ED8  80 E4 00 90 */	lwz r7, 0x90(r4)
/* 802D991C 002A2EDC  80 C3 00 00 */	lwz r6, 0(r3)
/* 802D9920 002A2EE0  80 A3 00 04 */	lwz r5, 4(r3)
/* 802D9924 002A2EE4  2C 07 00 00 */	cmpwi r7, 0
/* 802D9928 002A2EE8  80 03 00 08 */	lwz r0, 8(r3)
/* 802D992C 002A2EEC  90 C1 00 20 */	stw r6, 0x20(r1)
/* 802D9930 002A2EF0  90 A1 00 24 */	stw r5, 0x24(r1)
/* 802D9934 002A2EF4  90 01 00 28 */	stw r0, 0x28(r1)
/* 802D9938 002A2EF8  41 82 00 1C */	beq .L_802D9954
/* 802D993C 002A2EFC  80 A7 00 00 */	lwz r5, 0(r7)
/* 802D9940 002A2F00  80 67 00 04 */	lwz r3, 4(r7)
/* 802D9944 002A2F04  80 07 00 08 */	lwz r0, 8(r7)
/* 802D9948 002A2F08  90 A1 00 14 */	stw r5, 0x14(r1)
/* 802D994C 002A2F0C  90 61 00 18 */	stw r3, 0x18(r1)
/* 802D9950 002A2F10  90 01 00 1C */	stw r0, 0x1c(r1)
.L_802D9954:
/* 802D9954 002A2F14  80 C4 00 94 */	lwz r6, 0x94(r4)
/* 802D9958 002A2F18  2C 06 00 00 */	cmpwi r6, 0
/* 802D995C 002A2F1C  41 82 00 1C */	beq .L_802D9978
/* 802D9960 002A2F20  80 A6 00 00 */	lwz r5, 0(r6)
/* 802D9964 002A2F24  80 66 00 04 */	lwz r3, 4(r6)
/* 802D9968 002A2F28  80 06 00 08 */	lwz r0, 8(r6)
/* 802D996C 002A2F2C  90 A1 00 08 */	stw r5, 8(r1)
/* 802D9970 002A2F30  90 61 00 0C */	stw r3, 0xc(r1)
/* 802D9974 002A2F34  90 01 00 10 */	stw r0, 0x10(r1)
.L_802D9978:
/* 802D9978 002A2F38  38 61 00 30 */	addi r3, r1, 0x30
/* 802D997C 002A2F3C  38 84 00 20 */	addi r4, r4, 0x20
/* 802D9980 002A2F40  48 00 04 C1 */	bl __CalcLFO
/* 802D9984 002A2F44  CB E2 BB 58 */	lfd f31, double_8066BED8@sda21(r2)
/* 802D9988 002A2F48  3B C1 00 30 */	addi r30, r1, 0x30
/* 802D998C 002A2F4C  3B A0 00 00 */	li r29, 0
/* 802D9990 002A2F50  3F E0 43 30 */	lis r31, 0x4330
/* 802D9994 002A2F54  3B 20 00 00 */	li r25, 0
/* 802D9998 002A2F58  3B 40 00 03 */	li r26, 3
.L_802D999C:
/* 802D999C 002A2F5C  80 7B 00 10 */	lwz r3, 0x10(r27)
/* 802D99A0 002A2F60  80 1E 00 00 */	lwz r0, 0(r30)
/* 802D99A4 002A2F64  80 9B 00 18 */	lwz r4, 0x18(r27)
/* 802D99A8 002A2F68  7C C3 02 14 */	add r6, r3, r0
/* 802D99AC 002A2F6C  7C 06 20 00 */	cmpw r6, r4
/* 802D99B0 002A2F70  41 80 00 0C */	blt .L_802D99BC
/* 802D99B4 002A2F74  7C C4 30 50 */	subf r6, r4, r6
/* 802D99B8 002A2F78  48 00 00 10 */	b .L_802D99C8
.L_802D99BC:
/* 802D99BC 002A2F7C  2C 06 00 00 */	cmpwi r6, 0
/* 802D99C0 002A2F80  40 80 00 08 */	bge .L_802D99C8
/* 802D99C4 002A2F84  7C C6 22 14 */	add r6, r6, r4
.L_802D99C8:
/* 802D99C8 002A2F88  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 802D99CC 002A2F8C  7C 60 30 51 */	subf. r3, r0, r6
/* 802D99D0 002A2F90  40 80 00 08 */	bge .L_802D99D8
/* 802D99D4 002A2F94  7C 63 22 14 */	add r3, r3, r4
.L_802D99D8:
/* 802D99D8 002A2F98  54 67 84 3F */	rlwinm. r7, r3, 0x10, 0x10, 0x1f
/* 802D99DC 002A2F9C  54 68 04 3E */	clrlwi r8, r3, 0x10
/* 802D99E0 002A2FA0  54 09 84 3E */	srwi r9, r0, 0x10
/* 802D99E4 002A2FA4  83 9B 00 78 */	lwz r28, 0x78(r27)
/* 802D99E8 002A2FA8  7C E9 03 A6 */	mtctr r7
/* 802D99EC 002A2FAC  41 82 00 58 */	beq .L_802D9A44
.L_802D99F0:
/* 802D99F0 002A2FB0  80 7B 00 00 */	lwz r3, 0(r27)
/* 802D99F4 002A2FB4  55 24 10 3A */	slwi r4, r9, 2
/* 802D99F8 002A2FB8  57 80 10 3A */	slwi r0, r28, 2
/* 802D99FC 002A2FBC  3B 9C 00 01 */	addi r28, r28, 1
/* 802D9A00 002A2FC0  7C BB 02 14 */	add r5, r27, r0
/* 802D9A04 002A2FC4  7C 03 24 2E */	lfsx f0, r3, r4
/* 802D9A08 002A2FC8  D0 05 00 48 */	stfs f0, 0x48(r5)
/* 802D9A0C 002A2FCC  39 29 00 01 */	addi r9, r9, 1
/* 802D9A10 002A2FD0  57 9C 07 BE */	clrlwi r28, r28, 0x1e
/* 802D9A14 002A2FD4  38 E7 FF FF */	addi r7, r7, -1
/* 802D9A18 002A2FD8  80 7B 00 04 */	lwz r3, 4(r27)
/* 802D9A1C 002A2FDC  7C 03 24 2E */	lfsx f0, r3, r4
/* 802D9A20 002A2FE0  D0 05 00 58 */	stfs f0, 0x58(r5)
/* 802D9A24 002A2FE4  80 7B 00 08 */	lwz r3, 8(r27)
/* 802D9A28 002A2FE8  7C 03 24 2E */	lfsx f0, r3, r4
/* 802D9A2C 002A2FEC  D0 05 00 68 */	stfs f0, 0x68(r5)
/* 802D9A30 002A2FF0  80 1B 00 1C */	lwz r0, 0x1c(r27)
/* 802D9A34 002A2FF4  7C 09 00 40 */	cmplw r9, r0
/* 802D9A38 002A2FF8  41 80 00 08 */	blt .L_802D9A40
/* 802D9A3C 002A2FFC  39 20 00 00 */	li r9, 0
.L_802D9A40:
/* 802D9A40 002A3000  42 00 FF B0 */	bdnz .L_802D99F0
.L_802D9A44:
/* 802D9A44 002A3004  54 C0 00 1E */	rlwinm r0, r6, 0, 0, 0xf
/* 802D9A48 002A3008  90 1B 00 14 */	stw r0, 0x14(r27)
/* 802D9A4C 002A300C  55 03 BE 7E */	rlwinm r3, r8, 0x17, 0x19, 0x1f
/* 802D9A50 002A3010  48 00 10 91 */	bl __AXFXGetSrcCoef
/* 802D9A54 002A3014  7F 64 DB 78 */	mr r4, r27
/* 802D9A58 002A3018  7F 67 DB 78 */	mr r7, r27
/* 802D9A5C 002A301C  38 A1 00 14 */	addi r5, r1, 0x14
/* 802D9A60 002A3020  38 C1 00 20 */	addi r6, r1, 0x20
/* 802D9A64 002A3024  39 01 00 08 */	addi r8, r1, 8
/* 802D9A68 002A3028  7F 49 03 A6 */	mtctr r26
.L_802D9A6C:
/* 802D9A6C 002A302C  57 80 10 3A */	slwi r0, r28, 2
/* 802D9A70 002A3030  3B 9C 00 01 */	addi r28, r28, 1
/* 802D9A74 002A3034  7D 44 02 14 */	add r10, r4, r0
/* 802D9A78 002A3038  80 1B 00 90 */	lwz r0, 0x90(r27)
/* 802D9A7C 002A303C  57 9C 07 BE */	clrlwi r28, r28, 0x1e
/* 802D9A80 002A3040  C0 23 00 00 */	lfs f1, 0(r3)
/* 802D9A84 002A3044  57 89 10 3A */	slwi r9, r28, 2
/* 802D9A88 002A3048  C0 0A 00 48 */	lfs f0, 0x48(r10)
/* 802D9A8C 002A304C  3B 9C 00 01 */	addi r28, r28, 1
/* 802D9A90 002A3050  C0 A2 BB 54 */	lfs f5, float_8066BED4@sda21(r2)
/* 802D9A94 002A3054  EC 41 00 32 */	fmuls f2, f1, f0
/* 802D9A98 002A3058  7D 64 4A 14 */	add r11, r4, r9
/* 802D9A9C 002A305C  57 9C 07 BE */	clrlwi r28, r28, 0x1e
/* 802D9AA0 002A3060  C0 23 00 04 */	lfs f1, 4(r3)
/* 802D9AA4 002A3064  57 89 10 3A */	slwi r9, r28, 2
/* 802D9AA8 002A3068  C0 0B 00 48 */	lfs f0, 0x48(r11)
/* 802D9AAC 002A306C  3B 9C 00 01 */	addi r28, r28, 1
/* 802D9AB0 002A3070  EC 81 00 32 */	fmuls f4, f1, f0
/* 802D9AB4 002A3074  EC A5 10 2A */	fadds f5, f5, f2
/* 802D9AB8 002A3078  7D 44 4A 14 */	add r10, r4, r9
/* 802D9ABC 002A307C  57 9C 07 BE */	clrlwi r28, r28, 0x1e
/* 802D9AC0 002A3080  C0 63 00 08 */	lfs f3, 8(r3)
/* 802D9AC4 002A3084  57 89 10 3A */	slwi r9, r28, 2
/* 802D9AC8 002A3088  C0 4A 00 48 */	lfs f2, 0x48(r10)
/* 802D9ACC 002A308C  7D 24 4A 14 */	add r9, r4, r9
/* 802D9AD0 002A3090  EC A5 20 2A */	fadds f5, f5, f4
/* 802D9AD4 002A3094  EC 43 00 B2 */	fmuls f2, f3, f2
/* 802D9AD8 002A3098  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 802D9ADC 002A309C  C0 09 00 48 */	lfs f0, 0x48(r9)
/* 802D9AE0 002A30A0  2C 00 00 00 */	cmpwi r0, 0
/* 802D9AE4 002A30A4  3B 9C 00 01 */	addi r28, r28, 1
/* 802D9AE8 002A30A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 802D9AEC 002A30AC  EC A5 10 2A */	fadds f5, f5, f2
/* 802D9AF0 002A30B0  57 9C 07 BE */	clrlwi r28, r28, 0x1e
/* 802D9AF4 002A30B4  EC A5 00 2A */	fadds f5, f5, f0
/* 802D9AF8 002A30B8  41 82 00 38 */	beq .L_802D9B30
/* 802D9AFC 002A30BC  81 25 00 00 */	lwz r9, 0(r5)
/* 802D9B00 002A30C0  81 46 00 00 */	lwz r10, 0(r6)
/* 802D9B04 002A30C4  80 09 00 00 */	lwz r0, 0(r9)
/* 802D9B08 002A30C8  39 29 00 04 */	addi r9, r9, 4
/* 802D9B0C 002A30CC  81 4A 00 00 */	lwz r10, 0(r10)
/* 802D9B10 002A30D0  93 E1 01 B0 */	stw r31, 0x1b0(r1)
/* 802D9B14 002A30D4  7C 0A 02 14 */	add r0, r10, r0
/* 802D9B18 002A30D8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802D9B1C 002A30DC  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 802D9B20 002A30E0  C8 01 01 B0 */	lfd f0, 0x1b0(r1)
/* 802D9B24 002A30E4  91 25 00 00 */	stw r9, 0(r5)
/* 802D9B28 002A30E8  EC 20 F8 28 */	fsubs f1, f0, f31
/* 802D9B2C 002A30EC  48 00 00 20 */	b .L_802D9B4C
.L_802D9B30:
/* 802D9B30 002A30F0  81 26 00 00 */	lwz r9, 0(r6)
/* 802D9B34 002A30F4  93 E1 01 B8 */	stw r31, 0x1b8(r1)
/* 802D9B38 002A30F8  80 09 00 00 */	lwz r0, 0(r9)
/* 802D9B3C 002A30FC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802D9B40 002A3100  90 01 01 BC */	stw r0, 0x1bc(r1)
/* 802D9B44 002A3104  C8 01 01 B8 */	lfd f0, 0x1b8(r1)
/* 802D9B48 002A3108  EC 20 F8 28 */	fsubs f1, f0, f31
.L_802D9B4C:
/* 802D9B4C 002A310C  C0 1B 00 8C */	lfs f0, 0x8c(r27)
/* 802D9B50 002A3110  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 802D9B54 002A3114  EC 05 00 32 */	fmuls f0, f5, f0
/* 802D9B58 002A3118  81 67 00 00 */	lwz r11, 0(r7)
/* 802D9B5C 002A311C  54 0A 10 3A */	slwi r10, r0, 2
/* 802D9B60 002A3120  81 26 00 00 */	lwz r9, 0(r6)
/* 802D9B64 002A3124  EC 01 00 2A */	fadds f0, f1, f0
/* 802D9B68 002A3128  38 09 00 04 */	addi r0, r9, 4
/* 802D9B6C 002A312C  90 06 00 00 */	stw r0, 0(r6)
/* 802D9B70 002A3130  7C 0B 55 2E */	stfsx f0, r11, r10
/* 802D9B74 002A3134  C0 1B 00 98 */	lfs f0, 0x98(r27)
/* 802D9B78 002A3138  EC 05 00 32 */	fmuls f0, f5, f0
/* 802D9B7C 002A313C  FC 00 00 1E */	fctiwz f0, f0
/* 802D9B80 002A3140  D8 01 01 C0 */	stfd f0, 0x1c0(r1)
/* 802D9B84 002A3144  80 01 01 C4 */	lwz r0, 0x1c4(r1)
/* 802D9B88 002A3148  90 09 00 00 */	stw r0, 0(r9)
/* 802D9B8C 002A314C  80 1B 00 94 */	lwz r0, 0x94(r27)
/* 802D9B90 002A3150  2C 00 00 00 */	cmpwi r0, 0
/* 802D9B94 002A3154  41 82 00 28 */	beq .L_802D9BBC
/* 802D9B98 002A3158  C0 1B 00 9C */	lfs f0, 0x9c(r27)
/* 802D9B9C 002A315C  81 28 00 00 */	lwz r9, 0(r8)
/* 802D9BA0 002A3160  EC 05 00 32 */	fmuls f0, f5, f0
/* 802D9BA4 002A3164  38 09 00 04 */	addi r0, r9, 4
/* 802D9BA8 002A3168  90 08 00 00 */	stw r0, 0(r8)
/* 802D9BAC 002A316C  FC 00 00 1E */	fctiwz f0, f0
/* 802D9BB0 002A3170  D8 01 01 C0 */	stfd f0, 0x1c0(r1)
/* 802D9BB4 002A3174  80 01 01 C4 */	lwz r0, 0x1c4(r1)
/* 802D9BB8 002A3178  90 09 00 00 */	stw r0, 0(r9)
.L_802D9BBC:
/* 802D9BBC 002A317C  38 84 00 10 */	addi r4, r4, 0x10
/* 802D9BC0 002A3180  38 A5 00 04 */	addi r5, r5, 4
/* 802D9BC4 002A3184  38 C6 00 04 */	addi r6, r6, 4
/* 802D9BC8 002A3188  38 E7 00 04 */	addi r7, r7, 4
/* 802D9BCC 002A318C  39 08 00 04 */	addi r8, r8, 4
/* 802D9BD0 002A3190  42 00 FE 9C */	bdnz .L_802D9A6C
/* 802D9BD4 002A3194  80 7B 00 0C */	lwz r3, 0xc(r27)
/* 802D9BD8 002A3198  80 1B 00 1C */	lwz r0, 0x1c(r27)
/* 802D9BDC 002A319C  38 63 00 01 */	addi r3, r3, 1
/* 802D9BE0 002A31A0  93 9B 00 78 */	stw r28, 0x78(r27)
/* 802D9BE4 002A31A4  7C 03 00 40 */	cmplw r3, r0
/* 802D9BE8 002A31A8  90 7B 00 0C */	stw r3, 0xc(r27)
/* 802D9BEC 002A31AC  41 80 00 08 */	blt .L_802D9BF4
/* 802D9BF0 002A31B0  93 3B 00 0C */	stw r25, 0xc(r27)
.L_802D9BF4:
/* 802D9BF4 002A31B4  80 7B 00 10 */	lwz r3, 0x10(r27)
/* 802D9BF8 002A31B8  80 1B 00 18 */	lwz r0, 0x18(r27)
/* 802D9BFC 002A31BC  3C 63 00 01 */	addis r3, r3, 1
/* 802D9C00 002A31C0  90 7B 00 10 */	stw r3, 0x10(r27)
/* 802D9C04 002A31C4  7C 03 00 40 */	cmplw r3, r0
/* 802D9C08 002A31C8  41 80 00 08 */	blt .L_802D9C10
/* 802D9C0C 002A31CC  93 3B 00 10 */	stw r25, 0x10(r27)
.L_802D9C10:
/* 802D9C10 002A31D0  3B BD 00 01 */	addi r29, r29, 1
/* 802D9C14 002A31D4  3B DE 00 04 */	addi r30, r30, 4
/* 802D9C18 002A31D8  28 1D 00 60 */	cmplwi r29, 0x60
/* 802D9C1C 002A31DC  41 80 FD 80 */	blt .L_802D999C
.L_802D9C20:
/* 802D9C20 002A31E0  39 61 01 F0 */	addi r11, r1, 0x1f0
/* 802D9C24 002A31E4  E3 E1 01 F8 */	psq_l f31, 504(r1), 0, qr0
/* 802D9C28 002A31E8  CB E1 01 F0 */	lfd f31, 0x1f0(r1)
/* 802D9C2C 002A31EC  4B FE 05 6D */	bl _restgpr_25
/* 802D9C30 002A31F0  80 01 02 04 */	lwz r0, 0x204(r1)
/* 802D9C34 002A31F4  7C 08 03 A6 */	mtlr r0
/* 802D9C38 002A31F8  38 21 02 00 */	addi r1, r1, 0x200
/* 802D9C3C 002A31FC  4E 80 00 20 */	blr 

.balign 16, 0
__InitParams:
/* 802D9C40 002A3200  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802D9C44 002A3204  7C 08 02 A6 */	mflr r0
/* 802D9C48 002A3208  C0 82 BB 60 */	lfs f4, float_8066BEE0@sda21(r2)
/* 802D9C4C 002A320C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802D9C50 002A3210  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802D9C54 002A3214  7C 7F 1B 78 */	mr r31, r3
/* 802D9C58 002A3218  C0 23 00 80 */	lfs f1, 0x80(r3)
/* 802D9C5C 002A321C  FC 01 20 40 */	fcmpo cr0, f1, f4
/* 802D9C60 002A3220  41 80 00 10 */	blt .L_802D9C70
/* 802D9C64 002A3224  C0 02 BB 64 */	lfs f0, float_8066BEE4@sda21(r2)
/* 802D9C68 002A3228  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802D9C6C 002A322C  40 81 00 0C */	ble .L_802D9C78
.L_802D9C70:
/* 802D9C70 002A3230  38 60 00 00 */	li r3, 0
/* 802D9C74 002A3234  48 00 01 B0 */	b .L_802D9E24
.L_802D9C78:
/* 802D9C78 002A3238  C0 03 00 84 */	lfs f0, 0x84(r3)
/* 802D9C7C 002A323C  C0 62 BB 54 */	lfs f3, float_8066BED4@sda21(r2)
/* 802D9C80 002A3240  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 802D9C84 002A3244  41 80 00 10 */	blt .L_802D9C94
/* 802D9C88 002A3248  C0 42 BB 68 */	lfs f2, float_8066BEE8@sda21(r2)
/* 802D9C8C 002A324C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 802D9C90 002A3250  40 81 00 0C */	ble .L_802D9C9C
.L_802D9C94:
/* 802D9C94 002A3254  38 60 00 00 */	li r3, 0
/* 802D9C98 002A3258  48 00 01 8C */	b .L_802D9E24
.L_802D9C9C:
/* 802D9C9C 002A325C  C0 23 00 88 */	lfs f1, 0x88(r3)
/* 802D9CA0 002A3260  FC 01 20 40 */	fcmpo cr0, f1, f4
/* 802D9CA4 002A3264  41 80 00 10 */	blt .L_802D9CB4
/* 802D9CA8 002A3268  C0 02 BB 6C */	lfs f0, float_8066BEEC@sda21(r2)
/* 802D9CAC 002A326C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802D9CB0 002A3270  40 81 00 0C */	ble .L_802D9CBC
.L_802D9CB4:
/* 802D9CB4 002A3274  38 60 00 00 */	li r3, 0
/* 802D9CB8 002A3278  48 00 01 6C */	b .L_802D9E24
.L_802D9CBC:
/* 802D9CBC 002A327C  C0 03 00 8C */	lfs f0, 0x8c(r3)
/* 802D9CC0 002A3280  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 802D9CC4 002A3284  41 80 00 10 */	blt .L_802D9CD4
/* 802D9CC8 002A3288  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 802D9CCC 002A328C  4C 41 13 82 */	cror 2, 1, 2
/* 802D9CD0 002A3290  40 82 00 0C */	bne .L_802D9CDC
.L_802D9CD4:
/* 802D9CD4 002A3294  38 60 00 00 */	li r3, 0
/* 802D9CD8 002A3298  48 00 01 4C */	b .L_802D9E24
.L_802D9CDC:
/* 802D9CDC 002A329C  C0 03 00 98 */	lfs f0, 0x98(r3)
/* 802D9CE0 002A32A0  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 802D9CE4 002A32A4  41 80 00 0C */	blt .L_802D9CF0
/* 802D9CE8 002A32A8  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 802D9CEC 002A32AC  40 81 00 0C */	ble .L_802D9CF8
.L_802D9CF0:
/* 802D9CF0 002A32B0  38 60 00 00 */	li r3, 0
/* 802D9CF4 002A32B4  48 00 01 30 */	b .L_802D9E24
.L_802D9CF8:
/* 802D9CF8 002A32B8  C0 03 00 9C */	lfs f0, 0x9c(r3)
/* 802D9CFC 002A32BC  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 802D9D00 002A32C0  41 80 00 0C */	blt .L_802D9D0C
/* 802D9D04 002A32C4  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 802D9D08 002A32C8  40 81 00 0C */	ble .L_802D9D14
.L_802D9D0C:
/* 802D9D0C 002A32CC  38 60 00 00 */	li r3, 0
/* 802D9D10 002A32D0  48 00 01 14 */	b .L_802D9E24
.L_802D9D14:
/* 802D9D14 002A32D4  48 00 0D BD */	bl __AXFXGetLfoSinTable
/* 802D9D18 002A32D8  C0 42 BB 50 */	lfs f2, float_8066BED0@sda21(r2)
/* 802D9D1C 002A32DC  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 802D9D20 002A32E0  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 802D9D24 002A32E4  EC 22 00 72 */	fmuls f1, f2, f1
/* 802D9D28 002A32E8  90 7F 00 20 */	stw r3, 0x20(r31)
/* 802D9D2C 002A32EC  EC C1 00 32 */	fmuls f6, f1, f0
/* 802D9D30 002A32F0  FC 06 08 40 */	fcmpo cr0, f6, f1
/* 802D9D34 002A32F4  4C 41 13 82 */	cror 2, 1, 2
/* 802D9D38 002A32F8  40 82 00 1C */	bne .L_802D9D54
/* 802D9D3C 002A32FC  C0 22 BB 68 */	lfs f1, float_8066BEE8@sda21(r2)
/* 802D9D40 002A3300  C0 02 BB 54 */	lfs f0, float_8066BED4@sda21(r2)
/* 802D9D44 002A3304  EC C6 08 28 */	fsubs f6, f6, f1
/* 802D9D48 002A3308  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 802D9D4C 002A330C  40 80 00 08 */	bge .L_802D9D54
/* 802D9D50 002A3310  FC C0 00 90 */	fmr f6, f0
.L_802D9D54:
/* 802D9D54 002A3314  C0 7F 00 88 */	lfs f3, 0x88(r31)
/* 802D9D58 002A3318  38 80 00 00 */	li r4, 0
/* 802D9D5C 002A331C  C0 42 BB 78 */	lfs f2, float_8066BEF8@sda21(r2)
/* 802D9D60 002A3320  38 00 FF FF */	li r0, -1
/* 802D9D64 002A3324  C0 82 BB 74 */	lfs f4, float_8066BEF4@sda21(r2)
/* 802D9D68 002A3328  38 60 00 01 */	li r3, 1
/* 802D9D6C 002A332C  EC 22 18 24 */	fdivs f1, f2, f3
/* 802D9D70 002A3330  C0 02 BB 7C */	lfs f0, float_8066BEFC@sda21(r2)
/* 802D9D74 002A3334  C0 A2 BB 70 */	lfs f5, float_8066BEF0@sda21(r2)
/* 802D9D78 002A3338  90 1F 00 38 */	stw r0, 0x38(r31)
/* 802D9D7C 002A333C  90 9F 00 30 */	stw r4, 0x30(r31)
/* 802D9D80 002A3340  90 9F 00 34 */	stw r4, 0x34(r31)
/* 802D9D84 002A3344  EC E1 00 32 */	fmuls f7, f1, f0
/* 802D9D88 002A3348  90 9F 00 3C */	stw r4, 0x3c(r31)
/* 802D9D8C 002A334C  EC 24 00 F2 */	fmuls f1, f4, f3
/* 802D9D90 002A3350  C0 02 BB 54 */	lfs f0, float_8066BED4@sda21(r2)
/* 802D9D94 002A3354  EC 85 01 B2 */	fmuls f4, f5, f6
/* 802D9D98 002A3358  90 9F 00 40 */	stw r4, 0x40(r31)
/* 802D9D9C 002A335C  EC 21 10 24 */	fdivs f1, f1, f2
/* 802D9DA0 002A3360  EC 65 00 72 */	fmuls f3, f5, f1
/* 802D9DA4 002A3364  EC C6 38 24 */	fdivs f6, f6, f7
/* 802D9DA8 002A3368  EC 45 01 F2 */	fmuls f2, f5, f7
/* 802D9DAC 002A336C  EC 25 01 B2 */	fmuls f1, f5, f6
/* 802D9DB0 002A3370  FC 80 20 1E */	fctiwz f4, f4
/* 802D9DB4 002A3374  FC 60 18 1E */	fctiwz f3, f3
/* 802D9DB8 002A3378  FC 40 10 1E */	fctiwz f2, f2
/* 802D9DBC 002A337C  D8 81 00 08 */	stfd f4, 8(r1)
/* 802D9DC0 002A3380  FC 20 08 1E */	fctiwz f1, f1
/* 802D9DC4 002A3384  D8 61 00 10 */	stfd f3, 0x10(r1)
/* 802D9DC8 002A3388  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 802D9DCC 002A338C  D8 41 00 18 */	stfd f2, 0x18(r1)
/* 802D9DD0 002A3390  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 802D9DD4 002A3394  D8 21 00 20 */	stfd f1, 0x20(r1)
/* 802D9DD8 002A3398  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 802D9DDC 002A339C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D9DE0 002A33A0  90 FF 00 2C */	stw r7, 0x2c(r31)
/* 802D9DE4 002A33A4  90 DF 00 24 */	stw r6, 0x24(r31)
/* 802D9DE8 002A33A8  90 BF 00 28 */	stw r5, 0x28(r31)
/* 802D9DEC 002A33AC  90 1F 00 44 */	stw r0, 0x44(r31)
/* 802D9DF0 002A33B0  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 802D9DF4 002A33B4  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 802D9DF8 002A33B8  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 802D9DFC 002A33BC  D0 1F 00 54 */	stfs f0, 0x54(r31)
/* 802D9E00 002A33C0  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 802D9E04 002A33C4  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 802D9E08 002A33C8  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 802D9E0C 002A33CC  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 802D9E10 002A33D0  D0 1F 00 68 */	stfs f0, 0x68(r31)
/* 802D9E14 002A33D4  D0 1F 00 6C */	stfs f0, 0x6c(r31)
/* 802D9E18 002A33D8  D0 1F 00 70 */	stfs f0, 0x70(r31)
/* 802D9E1C 002A33DC  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 802D9E20 002A33E0  90 9F 00 78 */	stw r4, 0x78(r31)
.L_802D9E24:
/* 802D9E24 002A33E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802D9E28 002A33E8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802D9E2C 002A33EC  7C 08 03 A6 */	mtlr r0
/* 802D9E30 002A33F0  38 21 00 30 */	addi r1, r1, 0x30
/* 802D9E34 002A33F4  4E 80 00 20 */	blr 

.balign 16, 0
__CalcLFO:
/* 802D9E40 002A3400  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D9E44 002A3404  38 00 00 60 */	li r0, 0x60
/* 802D9E48 002A3408  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D9E4C 002A340C  7C 09 03 A6 */	mtctr r0
.L_802D9E50:
/* 802D9E50 002A3410  80 A4 00 10 */	lwz r5, 0x10(r4)
/* 802D9E54 002A3414  80 04 00 18 */	lwz r0, 0x18(r4)
/* 802D9E58 002A3418  54 A5 00 1E */	rlwinm r5, r5, 0, 0, 0xf
/* 802D9E5C 002A341C  7C 05 00 40 */	cmplw r5, r0
/* 802D9E60 002A3420  41 82 00 78 */	beq .L_802D9ED8
/* 802D9E64 002A3424  90 A4 00 18 */	stw r5, 0x18(r4)
/* 802D9E68 002A3428  54 A5 84 3E */	srwi r5, r5, 0x10
/* 802D9E6C 002A342C  38 05 00 01 */	addi r0, r5, 1
/* 802D9E70 002A3430  80 C4 00 00 */	lwz r6, 0(r4)
/* 802D9E74 002A3434  54 A5 10 3A */	slwi r5, r5, 2
/* 802D9E78 002A3438  81 24 00 24 */	lwz r9, 0x24(r4)
/* 802D9E7C 002A343C  54 00 15 FA */	rlwinm r0, r0, 2, 0x17, 0x1d
/* 802D9E80 002A3440  7D 66 28 2E */	lwzx r11, r6, r5
/* 802D9E84 002A3444  7C 06 00 2E */	lwzx r0, r6, r0
/* 802D9E88 002A3448  80 A4 00 0C */	lwz r5, 0xc(r4)
/* 802D9E8C 002A344C  7D 4B 00 50 */	subf r10, r11, r0
/* 802D9E90 002A3450  7C 0B 29 D6 */	mullw r0, r11, r5
/* 802D9E94 002A3454  7D 5F FE 70 */	srawi r31, r10, 0x1f
/* 802D9E98 002A3458  7D 27 FE 70 */	srawi r7, r9, 0x1f
/* 802D9E9C 002A345C  7C CA 49 D6 */	mullw r6, r10, r9
/* 802D9EA0 002A3460  54 0C 40 3E */	rotlwi r12, r0, 8
/* 802D9EA4 002A3464  7C 0B 28 96 */	mulhw r0, r11, r5
/* 802D9EA8 002A3468  54 C6 40 3E */	rotlwi r6, r6, 8
/* 802D9EAC 002A346C  7D 0A 48 16 */	mulhwu r8, r10, r9
/* 802D9EB0 002A3470  50 0C 40 2E */	rlwimi r12, r0, 8, 0, 0x17
/* 802D9EB4 002A3474  7D 3F 49 D6 */	mullw r9, r31, r9
/* 802D9EB8 002A3478  7C AA 39 D6 */	mullw r5, r10, r7
/* 802D9EBC 002A347C  7D 08 4A 14 */	add r8, r8, r9
/* 802D9EC0 002A3480  7D 08 2A 14 */	add r8, r8, r5
/* 802D9EC4 002A3484  51 06 40 2E */	rlwimi r6, r8, 8, 0, 0x17
/* 802D9EC8 002A3488  90 C4 00 20 */	stw r6, 0x20(r4)
/* 802D9ECC 002A348C  7D 05 C6 70 */	srawi r5, r8, 0x18
/* 802D9ED0 002A3490  7C 05 C6 70 */	srawi r5, r0, 0x18
/* 802D9ED4 002A3494  48 00 00 14 */	b .L_802D9EE8
.L_802D9ED8:
/* 802D9ED8 002A3498  80 A4 00 1C */	lwz r5, 0x1c(r4)
/* 802D9EDC 002A349C  80 04 00 20 */	lwz r0, 0x20(r4)
/* 802D9EE0 002A34A0  7D 85 02 14 */	add r12, r5, r0
/* 802D9EE4 002A34A4  7D 85 FE 70 */	srawi r5, r12, 0x1f
.L_802D9EE8:
/* 802D9EE8 002A34A8  80 04 00 14 */	lwz r0, 0x14(r4)
/* 802D9EEC 002A34AC  91 84 00 1C */	stw r12, 0x1c(r4)
/* 802D9EF0 002A34B0  28 00 00 01 */	cmplwi r0, 1
/* 802D9EF4 002A34B4  41 80 00 0C */	blt .L_802D9F00
/* 802D9EF8 002A34B8  21 8C 00 00 */	subfic r12, r12, 0
/* 802D9EFC 002A34BC  7C A5 01 90 */	subfze r5, r5
.L_802D9F00:
/* 802D9F00 002A34C0  80 A4 00 10 */	lwz r5, 0x10(r4)
/* 802D9F04 002A34C4  80 04 00 04 */	lwz r0, 4(r4)
/* 802D9F08 002A34C8  7C A5 02 14 */	add r5, r5, r0
/* 802D9F0C 002A34CC  90 A4 00 10 */	stw r5, 0x10(r4)
/* 802D9F10 002A34D0  54 A0 00 11 */	rlwinm. r0, r5, 0, 0, 8
/* 802D9F14 002A34D4  41 82 00 18 */	beq .L_802D9F2C
/* 802D9F18 002A34D8  80 04 00 14 */	lwz r0, 0x14(r4)
/* 802D9F1C 002A34DC  54 A5 02 7E */	clrlwi r5, r5, 9
/* 802D9F20 002A34E0  90 A4 00 10 */	stw r5, 0x10(r4)
/* 802D9F24 002A34E4  68 00 00 01 */	xori r0, r0, 1
/* 802D9F28 002A34E8  90 04 00 14 */	stw r0, 0x14(r4)
.L_802D9F2C:
/* 802D9F2C 002A34EC  91 83 00 00 */	stw r12, 0(r3)
/* 802D9F30 002A34F0  38 63 00 04 */	addi r3, r3, 4
/* 802D9F34 002A34F4  42 00 FF 1C */	bdnz .L_802D9E50
/* 802D9F38 002A34F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D9F3C 002A34FC  38 21 00 10 */	addi r1, r1, 0x10
/* 802D9F40 002A3500  4E 80 00 20 */	blr 

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0
.global float_8066BED0
float_8066BED0:
	.float 32 #0x42000000


.global float_8066BED4
float_8066BED4:
	.float 0


.global double_8066BED8
double_8066BED8:
	.8byte 0x4330000080000000 #signed int to float constant

.global float_8066BEE0
float_8066BEE0:
	.float 0.1 #0x3DCCCCCD


.global float_8066BEE4
float_8066BEE4:
	.float 50 #0x42480000


.global float_8066BEE8
float_8066BEE8:
	.float 1.0


.global float_8066BEEC
float_8066BEEC:
	.float 2 #0x40000000


.global float_8066BEF0
float_8066BEF0:
	.float 65536 #0x47800000


.global float_8066BEF4
float_8066BEF4:
	.float 256 #0x43800000


.global float_8066BEF8
float_8066BEF8:
	.float 32000 #0x46FA0000


.global float_8066BEFC
float_8066BEFC:
	.4byte 0x3B800000
.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global mbtowc
mbtowc:
/* 802BE510 00287AD0  3C C0 80 54 */	lis r6, _current_locale@ha
/* 802BE514 00287AD4  38 C6 F5 48 */	addi r6, r6, _current_locale@l
/* 802BE518 00287AD8  80 C6 00 38 */	lwz r6, 0x38(r6)
/* 802BE51C 00287ADC  81 86 00 20 */	lwz r12, 0x20(r6)
/* 802BE520 00287AE0  7D 89 03 A6 */	mtctr r12
/* 802BE524 00287AE4  4E 80 04 20 */	bctr

.global __mbtowc_noconv
__mbtowc_noconv:
/* 802BE528 00287AE8  2C 04 00 00 */	cmpwi r4, 0
/* 802BE52C 00287AEC  40 82 00 0C */	bne lbl_802BE538
/* 802BE530 00287AF0  38 60 00 00 */	li r3, 0
/* 802BE534 00287AF4  4E 80 00 20 */	blr
lbl_802BE538:
/* 802BE538 00287AF8  2C 05 00 00 */	cmpwi r5, 0
/* 802BE53C 00287AFC  40 82 00 0C */	bne lbl_802BE548
/* 802BE540 00287B00  38 60 FF FF */	li r3, -1
/* 802BE544 00287B04  4E 80 00 20 */	blr
lbl_802BE548:
/* 802BE548 00287B08  2C 03 00 00 */	cmpwi r3, 0
/* 802BE54C 00287B0C  41 82 00 0C */	beq lbl_802BE558
/* 802BE550 00287B10  88 04 00 00 */	lbz r0, 0(r4)
/* 802BE554 00287B14  B0 03 00 00 */	sth r0, 0(r3)
lbl_802BE558:
/* 802BE558 00287B18  88 04 00 00 */	lbz r0, 0(r4)
/* 802BE55C 00287B1C  7C 00 07 75 */	extsb. r0, r0
/* 802BE560 00287B20  40 82 00 0C */	bne lbl_802BE56C
/* 802BE564 00287B24  38 60 00 00 */	li r3, 0
/* 802BE568 00287B28  4E 80 00 20 */	blr
lbl_802BE56C:
/* 802BE56C 00287B2C  38 60 00 01 */	li r3, 1
/* 802BE570 00287B30  4E 80 00 20 */	blr

.global __wctomb_noconv
__wctomb_noconv:
/* 802BE574 00287B34  2C 03 00 00 */	cmpwi r3, 0
/* 802BE578 00287B38  40 82 00 0C */	bne lbl_802BE584
/* 802BE57C 00287B3C  38 60 00 00 */	li r3, 0
/* 802BE580 00287B40  4E 80 00 20 */	blr
lbl_802BE584:
/* 802BE584 00287B44  98 83 00 00 */	stb r4, 0(r3)
/* 802BE588 00287B48  38 60 00 01 */	li r3, 1
/* 802BE58C 00287B4C  4E 80 00 20 */	blr 


.global mbstowc
mbstowc:
/* 802BE590 00287B50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BE594 00287B54  7C 08 02 A6 */	mflr r0
/* 802BE598 00287B58  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BE59C 00287B5C  BF 41 00 08 */	stmw r26, 8(r1)
/* 802BE5A0 00287B60  7C 9B 23 78 */	mr r27, r4
/* 802BE5A4 00287B64  7C 7A 1B 78 */	mr r26, r3
/* 802BE5A8 00287B68  7C BC 2B 78 */	mr r28, r5
/* 802BE5AC 00287B6C  7F 63 DB 78 */	mr r3, r27
/* 802BE5B0 00287B70  4B FF B0 09 */	bl strlen
/* 802BE5B4 00287B74  2C 1A 00 00 */	cmpwi r26, 0
/* 802BE5B8 00287B78  7C 7D 1B 78 */	mr r29, r3
/* 802BE5BC 00287B7C  41 82 00 78 */	beq lbl_802BE634
/* 802BE5C0 00287B80  3F E0 80 54 */	lis r31, _current_locale@ha
/* 802BE5C4 00287B84  3B C0 00 00 */	li r30, 0
/* 802BE5C8 00287B88  3B FF F5 48 */	addi r31, r31, _current_locale@l
/* 802BE5CC 00287B8C  48 00 00 5C */	b lbl_802BE628
lbl_802BE5D0:
/* 802BE5D0 00287B90  88 1B 00 00 */	lbz r0, 0(r27)
/* 802BE5D4 00287B94  7C 00 07 75 */	extsb. r0, r0
/* 802BE5D8 00287B98  41 82 00 40 */	beq lbl_802BE618
/* 802BE5DC 00287B9C  80 DF 00 38 */	lwz r6, 0x38(r31)
/* 802BE5E0 00287BA0  7F 43 D3 78 */	mr r3, r26
/* 802BE5E4 00287BA4  7F 64 DB 78 */	mr r4, r27
/* 802BE5E8 00287BA8  7F A5 EB 78 */	mr r5, r29
/* 802BE5EC 00287BAC  81 86 00 20 */	lwz r12, 0x20(r6)
/* 802BE5F0 00287BB0  7D 89 03 A6 */	mtctr r12
/* 802BE5F4 00287BB4  3B 5A 00 02 */	addi r26, r26, 2
/* 802BE5F8 00287BB8  4E 80 04 21 */	bctrl 
/* 802BE5FC 00287BBC  2C 03 00 00 */	cmpwi r3, 0
/* 802BE600 00287BC0  40 81 00 10 */	ble lbl_802BE610
/* 802BE604 00287BC4  7F 7B 1A 14 */	add r27, r27, r3
/* 802BE608 00287BC8  7F A3 E8 50 */	subf r29, r3, r29
/* 802BE60C 00287BCC  48 00 00 18 */	b lbl_802BE624
lbl_802BE610:
/* 802BE610 00287BD0  38 60 FF FF */	li r3, -1
/* 802BE614 00287BD4  48 00 00 28 */	b lbl_802BE63C
lbl_802BE618:
/* 802BE618 00287BD8  38 00 00 00 */	li r0, 0
/* 802BE61C 00287BDC  B0 1A 00 00 */	sth r0, 0(r26)
/* 802BE620 00287BE0  48 00 00 18 */	b lbl_802BE638
lbl_802BE624:
/* 802BE624 00287BE4  3B DE 00 01 */	addi r30, r30, 1
lbl_802BE628:
/* 802BE628 00287BE8  7C 1E E0 40 */	cmplw r30, r28
/* 802BE62C 00287BEC  41 80 FF A4 */	blt lbl_802BE5D0
/* 802BE630 00287BF0  48 00 00 08 */	b lbl_802BE638
lbl_802BE634:
/* 802BE634 00287BF4  3B C0 00 00 */	li r30, 0
lbl_802BE638:
/* 802BE638 00287BF8  7F C3 F3 78 */	mr r3, r30
lbl_802BE63C:
/* 802BE63C 00287BFC  BB 41 00 08 */	lmw r26, 8(r1)
/* 802BE640 00287C00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BE644 00287C04  7C 08 03 A6 */	mtlr r0
/* 802BE648 00287C08  38 21 00 20 */	addi r1, r1, 0x20
/* 802BE64C 00287C0C  4E 80 00 20 */	blr 

.global wcstombs
wcstombs:
/* 802BE650 00287C10  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802BE654 00287C14  7C 08 02 A6 */	mflr r0
/* 802BE658 00287C18  2C 03 00 00 */	cmpwi r3, 0
/* 802BE65C 00287C1C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802BE660 00287C20  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 802BE664 00287C24  7C 7A 1B 78 */	mr r26, r3
/* 802BE668 00287C28  7C BB 2B 78 */	mr r27, r5
/* 802BE66C 00287C2C  3B A0 00 00 */	li r29, 0
/* 802BE670 00287C30  41 82 00 0C */	beq lbl_802BE67C
/* 802BE674 00287C34  2C 04 00 00 */	cmpwi r4, 0
/* 802BE678 00287C38  40 82 00 0C */	bne lbl_802BE684
lbl_802BE67C:
/* 802BE67C 00287C3C  38 60 00 00 */	li r3, 0
/* 802BE680 00287C40  48 00 00 74 */	b lbl_802BE6F4
lbl_802BE684:
/* 802BE684 00287C44  3F E0 80 54 */	lis r31, _current_locale@ha
/* 802BE688 00287C48  7C 9C 23 78 */	mr r28, r4
/* 802BE68C 00287C4C  3B FF F5 48 */	addi r31, r31, _current_locale@l
/* 802BE690 00287C50  48 00 00 58 */	b lbl_802BE6E8
lbl_802BE694:
/* 802BE694 00287C54  A0 9C 00 00 */	lhz r4, 0(r28)
/* 802BE698 00287C58  2C 04 00 00 */	cmpwi r4, 0
/* 802BE69C 00287C5C  40 82 00 10 */	bne lbl_802BE6AC
/* 802BE6A0 00287C60  38 00 00 00 */	li r0, 0
/* 802BE6A4 00287C64  7C 1A E9 AE */	stbx r0, r26, r29
/* 802BE6A8 00287C68  48 00 00 48 */	b lbl_802BE6F0
lbl_802BE6AC:
/* 802BE6AC 00287C6C  80 BF 00 38 */	lwz r5, 0x38(r31)
/* 802BE6B0 00287C70  38 61 00 08 */	addi r3, r1, 8
/* 802BE6B4 00287C74  81 85 00 24 */	lwz r12, 0x24(r5)
/* 802BE6B8 00287C78  7D 89 03 A6 */	mtctr r12
/* 802BE6BC 00287C7C  3B 9C 00 02 */	addi r28, r28, 2
/* 802BE6C0 00287C80  4E 80 04 21 */	bctrl 
/* 802BE6C4 00287C84  7C 1D 1A 14 */	add r0, r29, r3
/* 802BE6C8 00287C88  7C 7E 1B 78 */	mr r30, r3
/* 802BE6CC 00287C8C  7C 00 D8 40 */	cmplw r0, r27
/* 802BE6D0 00287C90  41 81 00 20 */	bgt lbl_802BE6F0
/* 802BE6D4 00287C94  7F C5 F3 78 */	mr r5, r30
/* 802BE6D8 00287C98  7C 7A EA 14 */	add r3, r26, r29
/* 802BE6DC 00287C9C  38 81 00 08 */	addi r4, r1, 8
/* 802BE6E0 00287CA0  48 00 40 99 */	bl strncpy
/* 802BE6E4 00287CA4  7F BD F2 14 */	add r29, r29, r30
lbl_802BE6E8:
/* 802BE6E8 00287CA8  7C 1D D8 40 */	cmplw r29, r27
/* 802BE6EC 00287CAC  40 81 FF A8 */	ble lbl_802BE694
lbl_802BE6F0:
/* 802BE6F0 00287CB0  7F A3 EB 78 */	mr r3, r29
lbl_802BE6F4:
/* 802BE6F4 00287CB4  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 802BE6F8 00287CB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802BE6FC 00287CBC  7C 08 03 A6 */	mtlr r0
/* 802BE700 00287CC0  38 21 00 30 */	addi r1, r1, 0x30
/* 802BE704 00287CC4  4E 80 00 20 */	blr 
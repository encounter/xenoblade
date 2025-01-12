.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global __ct__Q44nw4r3snd6detail13SeqFileReaderFPCv
__ct__Q44nw4r3snd6detail13SeqFileReaderFPCv:
/* 804195D4 003E2B94  80 A4 00 00 */	lwz r5, 0(r4)
/* 804195D8 003E2B98  38 C0 00 00 */	li r6, 0
/* 804195DC 003E2B9C  90 C3 00 00 */	stw r6, 0(r3)
/* 804195E0 003E2BA0  3C 05 AD AD */	addis r0, r5, 0xadad
/* 804195E4 003E2BA4  28 00 45 51 */	cmplwi r0, 0x4551
/* 804195E8 003E2BA8  90 C3 00 04 */	stw r6, 4(r3)
/* 804195EC 003E2BAC  41 82 00 0C */	beq .L_804195F8
/* 804195F0 003E2BB0  38 00 00 00 */	li r0, 0
/* 804195F4 003E2BB4  48 00 00 30 */	b .L_80419624
.L_804195F8:
/* 804195F8 003E2BB8  A0 C4 00 06 */	lhz r6, 6(r4)
/* 804195FC 003E2BBC  28 06 01 00 */	cmplwi r6, 0x100
/* 80419600 003E2BC0  40 80 00 0C */	bge .L_8041960C
/* 80419604 003E2BC4  38 00 00 00 */	li r0, 0
/* 80419608 003E2BC8  48 00 00 1C */	b .L_80419624
.L_8041960C:
/* 8041960C 003E2BCC  20 06 01 00 */	subfic r0, r6, 0x100
/* 80419610 003E2BD0  38 A0 01 00 */	li r5, 0x100
/* 80419614 003E2BD4  7C A5 33 38 */	orc r5, r5, r6
/* 80419618 003E2BD8  54 00 F8 7E */	srwi r0, r0, 1
/* 8041961C 003E2BDC  7C 00 28 50 */	subf r0, r0, r5
/* 80419620 003E2BE0  54 00 0F FE */	srwi r0, r0, 0x1f
.L_80419624:
/* 80419624 003E2BE4  2C 00 00 00 */	cmpwi r0, 0
/* 80419628 003E2BE8  4D 82 00 20 */	beqlr 
/* 8041962C 003E2BEC  80 04 00 10 */	lwz r0, 0x10(r4)
/* 80419630 003E2BF0  90 83 00 00 */	stw r4, 0(r3)
/* 80419634 003E2BF4  7C 00 22 14 */	add r0, r0, r4
/* 80419638 003E2BF8  90 03 00 04 */	stw r0, 4(r3)
/* 8041963C 003E2BFC  4E 80 00 20 */	blr 

.global GetBaseAddress__Q44nw4r3snd6detail13SeqFileReaderCFv
GetBaseAddress__Q44nw4r3snd6detail13SeqFileReaderCFv:
/* 80419640 003E2C00  80 63 00 04 */	lwz r3, 4(r3)
/* 80419644 003E2C04  80 03 00 08 */	lwz r0, 8(r3)
/* 80419648 003E2C08  7C 60 1A 14 */	add r3, r0, r3
/* 8041964C 003E2C0C  4E 80 00 20 */	blr

.global ReadOffsetByLabel__Q44nw4r3snd6detail13SeqFileReaderCFPCcPUl
ReadOffsetByLabel__Q44nw4r3snd6detail13SeqFileReaderCFPCcPUl:
/* 80419650 003E2C10  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80419654 003E2C14  7C 08 02 A6 */	mflr r0
/* 80419658 003E2C18  90 01 00 34 */	stw r0, 0x34(r1)
/* 8041965C 003E2C1C  39 61 00 30 */	addi r11, r1, 0x30
/* 80419660 003E2C20  4B EA 0A E9 */	bl _savegpr_24
/* 80419664 003E2C24  80 63 00 00 */	lwz r3, 0(r3)
/* 80419668 003E2C28  7C 98 23 78 */	mr r24, r4
/* 8041966C 003E2C2C  7C B9 2B 78 */	mr r25, r5
/* 80419670 003E2C30  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80419674 003E2C34  7F 80 1A 15 */	add. r28, r0, r3
/* 80419678 003E2C38  40 82 00 0C */	bne .L_80419684
/* 8041967C 003E2C3C  38 60 00 00 */	li r3, 0
/* 80419680 003E2C40  48 00 00 70 */	b .L_804196F0
.L_80419684:
/* 80419684 003E2C44  7F 03 C3 78 */	mr r3, r24
/* 80419688 003E2C48  4B E9 FF 31 */	bl strlen
/* 8041968C 003E2C4C  83 DC 00 08 */	lwz r30, 8(r28)
/* 80419690 003E2C50  7C 7B 1B 78 */	mr r27, r3
/* 80419694 003E2C54  7F 9D E3 78 */	mr r29, r28
/* 80419698 003E2C58  3B 40 00 00 */	li r26, 0
/* 8041969C 003E2C5C  48 00 00 48 */	b .L_804196E4
.L_804196A0:
/* 804196A0 003E2C60  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 804196A4 003E2C64  7F FC 02 14 */	add r31, r28, r0
/* 804196A8 003E2C68  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 804196AC 003E2C6C  7C 1B 00 40 */	cmplw r27, r0
/* 804196B0 003E2C70  40 82 00 2C */	bne .L_804196DC
/* 804196B4 003E2C74  7F 03 C3 78 */	mr r3, r24
/* 804196B8 003E2C78  7F 65 DB 78 */	mr r5, r27
/* 804196BC 003E2C7C  38 9F 00 10 */	addi r4, r31, 0x10
/* 804196C0 003E2C80  4B EA 92 91 */	bl strncmp
/* 804196C4 003E2C84  2C 03 00 00 */	cmpwi r3, 0
/* 804196C8 003E2C88  40 82 00 14 */	bne .L_804196DC
/* 804196CC 003E2C8C  80 1F 00 08 */	lwz r0, 8(r31)
/* 804196D0 003E2C90  38 60 00 01 */	li r3, 1
/* 804196D4 003E2C94  90 19 00 00 */	stw r0, 0(r25)
/* 804196D8 003E2C98  48 00 00 18 */	b .L_804196F0
.L_804196DC:
/* 804196DC 003E2C9C  3B BD 00 04 */	addi r29, r29, 4
/* 804196E0 003E2CA0  3B 5A 00 01 */	addi r26, r26, 1
.L_804196E4:
/* 804196E4 003E2CA4  7C 1A F0 40 */	cmplw r26, r30
/* 804196E8 003E2CA8  41 80 FF B8 */	blt .L_804196A0
/* 804196EC 003E2CAC  38 60 00 00 */	li r3, 0
.L_804196F0:
/* 804196F0 003E2CB0  39 61 00 30 */	addi r11, r1, 0x30
/* 804196F4 003E2CB4  4B EA 0A A1 */	bl _restgpr_24
/* 804196F8 003E2CB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804196FC 003E2CBC  7C 08 03 A6 */	mtlr r0
/* 80419700 003E2CC0  38 21 00 30 */	addi r1, r1, 0x30
/* 80419704 003E2CC4  4E 80 00 20 */	blr
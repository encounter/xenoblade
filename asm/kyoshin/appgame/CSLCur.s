.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_8028EA08
func_8028EA08:
/* 8028EA08 00257FC8  3C A0 80 54 */	lis r5, __vt__CSLCur@ha
/* 8028EA0C 00257FCC  38 00 00 00 */	li r0, 0
/* 8028EA10 00257FD0  38 A5 C0 04 */	addi r5, r5, __vt__CSLCur@l
/* 8028EA14 00257FD4  90 A3 00 00 */	stw r5, 0(r3)
/* 8028EA18 00257FD8  90 83 00 04 */	stw r4, 4(r3)
/* 8028EA1C 00257FDC  90 03 00 08 */	stw r0, 8(r3)
/* 8028EA20 00257FE0  90 03 00 0C */	stw r0, 0xc(r3)
/* 8028EA24 00257FE4  90 03 00 10 */	stw r0, 0x10(r3)
/* 8028EA28 00257FE8  98 03 00 14 */	stb r0, 0x14(r3)
/* 8028EA2C 00257FEC  98 03 00 15 */	stb r0, 0x15(r3)
/* 8028EA30 00257FF0  4E 80 00 20 */	blr 

.global func_8028EA34
func_8028EA34:
/* 8028EA34 00257FF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028EA38 00257FF8  7C 08 02 A6 */	mflr r0
/* 8028EA3C 00257FFC  2C 03 00 00 */	cmpwi r3, 0
/* 8028EA40 00258000  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028EA44 00258004  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028EA48 00258008  7C 7F 1B 78 */	mr r31, r3
/* 8028EA4C 0025800C  41 82 00 10 */	beq .L_8028EA5C
/* 8028EA50 00258010  2C 04 00 00 */	cmpwi r4, 0
/* 8028EA54 00258014  40 81 00 08 */	ble .L_8028EA5C
/* 8028EA58 00258018  48 1A 61 D5 */	bl __dl__FPv
.L_8028EA5C:
/* 8028EA5C 0025801C  7F E3 FB 78 */	mr r3, r31
/* 8028EA60 00258020  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028EA64 00258024  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028EA68 00258028  7C 08 03 A6 */	mtlr r0
/* 8028EA6C 0025802C  38 21 00 10 */	addi r1, r1, 0x10
/* 8028EA70 00258030  4E 80 00 20 */	blr 

.global func_8028EA74
func_8028EA74:
/* 8028EA74 00258034  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028EA78 00258038  7C 08 02 A6 */	mflr r0
/* 8028EA7C 0025803C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028EA80 00258040  BF C1 00 08 */	stmw r30, 8(r1)
/* 8028EA84 00258044  3F E0 80 51 */	lis r31, lbl_8050AE44@ha
/* 8028EA88 00258048  7C 7E 1B 78 */	mr r30, r3
/* 8028EA8C 0025804C  38 BF AE 44 */	addi r5, r31, lbl_8050AE44@l
/* 8028EA90 00258050  80 83 00 04 */	lwz r4, 4(r3)
/* 8028EA94 00258054  38 63 00 08 */	addi r3, r3, 8
/* 8028EA98 00258058  4B EA 83 ED */	bl func_80136E84
/* 8028EA9C 0025805C  3B FF AE 44 */	addi r31, r31, lbl_8050AE44@l
/* 8028EAA0 00258060  80 7E 00 08 */	lwz r3, 8(r30)
/* 8028EAA4 00258064  80 BE 00 04 */	lwz r5, 4(r30)
/* 8028EAA8 00258068  38 9E 00 0C */	addi r4, r30, 0xc
/* 8028EAAC 0025806C  38 DF 00 18 */	addi r6, r31, 0x18
/* 8028EAB0 00258070  4B EA 84 59 */	bl func_80136F08
/* 8028EAB4 00258074  80 7E 00 08 */	lwz r3, 8(r30)
/* 8028EAB8 00258078  38 9E 00 10 */	addi r4, r30, 0x10
/* 8028EABC 0025807C  80 BE 00 04 */	lwz r5, 4(r30)
/* 8028EAC0 00258080  38 DF 00 35 */	addi r6, r31, 0x35
/* 8028EAC4 00258084  4B EA 84 45 */	bl func_80136F08
/* 8028EAC8 00258088  80 7E 00 08 */	lwz r3, 8(r30)
/* 8028EACC 0025808C  81 83 00 00 */	lwz r12, 0(r3)
/* 8028EAD0 00258090  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8028EAD4 00258094  7D 89 03 A6 */	mtctr r12
/* 8028EAD8 00258098  4E 80 04 21 */	bctrl 
/* 8028EADC 0025809C  7F C3 F3 78 */	mr r3, r30
/* 8028EAE0 002580A0  48 00 01 95 */	bl func_8028EC74
/* 8028EAE4 002580A4  BB C1 00 08 */	lmw r30, 8(r1)
/* 8028EAE8 002580A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028EAEC 002580AC  7C 08 03 A6 */	mtlr r0
/* 8028EAF0 002580B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8028EAF4 002580B4  4E 80 00 20 */	blr 

.global func_8028EAF8
func_8028EAF8:
/* 8028EAF8 002580B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028EAFC 002580BC  7C 08 02 A6 */	mflr r0
/* 8028EB00 002580C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028EB04 002580C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028EB08 002580C8  7C 7F 1B 78 */	mr r31, r3
/* 8028EB0C 002580CC  80 03 00 08 */	lwz r0, 8(r3)
/* 8028EB10 002580D0  2C 00 00 00 */	cmpwi r0, 0
/* 8028EB14 002580D4  41 82 00 48 */	beq .L_8028EB5C
/* 8028EB18 002580D8  88 03 00 15 */	lbz r0, 0x15(r3)
/* 8028EB1C 002580DC  2C 00 00 00 */	cmpwi r0, 0
/* 8028EB20 002580E0  41 82 00 10 */	beq .L_8028EB30
/* 8028EB24 002580E4  2C 00 00 01 */	cmpwi r0, 1
/* 8028EB28 002580E8  41 82 00 18 */	beq .L_8028EB40
/* 8028EB2C 002580EC  48 00 00 18 */	b .L_8028EB44
.L_8028EB30:
/* 8028EB30 002580F0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8028EB34 002580F4  C0 22 B0 90 */	lfs f1, float_8066B410@sda21(r2)
/* 8028EB38 002580F8  4B EA 89 0D */	bl func_80137444
/* 8028EB3C 002580FC  48 00 00 08 */	b .L_8028EB44
.L_8028EB40:
/* 8028EB40 00258100  48 00 00 E9 */	bl func_8028EC28
.L_8028EB44:
/* 8028EB44 00258104  80 7F 00 08 */	lwz r3, 8(r31)
/* 8028EB48 00258108  38 80 00 00 */	li r4, 0
/* 8028EB4C 0025810C  81 83 00 00 */	lwz r12, 0(r3)
/* 8028EB50 00258110  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8028EB54 00258114  7D 89 03 A6 */	mtctr r12
/* 8028EB58 00258118  4E 80 04 21 */	bctrl 
.L_8028EB5C:
/* 8028EB5C 0025811C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028EB60 00258120  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028EB64 00258124  7C 08 03 A6 */	mtlr r0
/* 8028EB68 00258128  38 21 00 10 */	addi r1, r1, 0x10
/* 8028EB6C 0025812C  4E 80 00 20 */	blr 

.global func_8028EB70
func_8028EB70:
/* 8028EB70 00258130  80 A3 00 08 */	lwz r5, 8(r3)
/* 8028EB74 00258134  2C 05 00 00 */	cmpwi r5, 0
/* 8028EB78 00258138  4D 82 00 20 */	beqlr 
/* 8028EB7C 0025813C  88 03 00 14 */	lbz r0, 0x14(r3)
/* 8028EB80 00258140  2C 00 00 00 */	cmpwi r0, 0
/* 8028EB84 00258144  4D 82 00 20 */	beqlr 
/* 8028EB88 00258148  7C A3 2B 78 */	mr r3, r5
/* 8028EB8C 0025814C  38 A0 00 00 */	li r5, 0
/* 8028EB90 00258150  38 C0 00 01 */	li r6, 1
/* 8028EB94 00258154  4B EA 84 A4 */	b func_80137038
/* 8028EB98 00258158  4E 80 00 20 */	blr 

.global func_8028EB9C
func_8028EB9C:
/* 8028EB9C 0025815C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028EBA0 00258160  7C 08 02 A6 */	mflr r0
/* 8028EBA4 00258164  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028EBA8 00258168  38 00 00 00 */	li r0, 0
/* 8028EBAC 0025816C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028EBB0 00258170  7C 7F 1B 78 */	mr r31, r3
/* 8028EBB4 00258174  80 83 00 08 */	lwz r4, 8(r3)
/* 8028EBB8 00258178  98 03 00 14 */	stb r0, 0x14(r3)
/* 8028EBBC 0025817C  2C 04 00 00 */	cmpwi r4, 0
/* 8028EBC0 00258180  90 03 00 0C */	stw r0, 0xc(r3)
/* 8028EBC4 00258184  90 03 00 10 */	stw r0, 0x10(r3)
/* 8028EBC8 00258188  41 82 00 28 */	beq .L_8028EBF0
/* 8028EBCC 0025818C  41 82 00 1C */	beq .L_8028EBE8
/* 8028EBD0 00258190  7C 83 23 78 */	mr r3, r4
/* 8028EBD4 00258194  38 80 00 01 */	li r4, 1
/* 8028EBD8 00258198  81 83 00 00 */	lwz r12, 0(r3)
/* 8028EBDC 0025819C  81 8C 00 08 */	lwz r12, 8(r12)
/* 8028EBE0 002581A0  7D 89 03 A6 */	mtctr r12
/* 8028EBE4 002581A4  4E 80 04 21 */	bctrl 
.L_8028EBE8:
/* 8028EBE8 002581A8  38 00 00 00 */	li r0, 0
/* 8028EBEC 002581AC  90 1F 00 08 */	stw r0, 8(r31)
.L_8028EBF0:
/* 8028EBF0 002581B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028EBF4 002581B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028EBF8 002581B8  7C 08 03 A6 */	mtlr r0
/* 8028EBFC 002581BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8028EC00 002581C0  4E 80 00 20 */	blr 

.global func_8028EC04
func_8028EC04:
/* 8028EC04 002581C4  80 63 00 08 */	lwz r3, 8(r3)
/* 8028EC08 002581C8  C0 04 00 00 */	lfs f0, 0(r4)
/* 8028EC0C 002581CC  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8028EC10 002581D0  C0 24 00 04 */	lfs f1, 4(r4)
/* 8028EC14 002581D4  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8028EC18 002581D8  C0 04 00 08 */	lfs f0, 8(r4)
/* 8028EC1C 002581DC  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 8028EC20 002581E0  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 8028EC24 002581E4  4E 80 00 20 */	blr 

.global func_8028EC28
func_8028EC28:
/* 8028EC28 002581E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028EC2C 002581EC  7C 08 02 A6 */	mflr r0
/* 8028EC30 002581F0  C0 22 B0 90 */	lfs f1, float_8066B410@sda21(r2)
/* 8028EC34 002581F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028EC38 002581F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028EC3C 002581FC  7C 7F 1B 78 */	mr r31, r3
/* 8028EC40 00258200  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8028EC44 00258204  4B EA 88 01 */	bl func_80137444
/* 8028EC48 00258208  2C 03 00 00 */	cmpwi r3, 0
/* 8028EC4C 0025820C  41 82 00 14 */	beq .L_8028EC60
/* 8028EC50 00258210  38 00 00 00 */	li r0, 0
/* 8028EC54 00258214  98 1F 00 15 */	stb r0, 0x15(r31)
/* 8028EC58 00258218  7F E3 FB 78 */	mr r3, r31
/* 8028EC5C 0025821C  48 00 00 19 */	bl func_8028EC74
.L_8028EC60:
/* 8028EC60 00258220  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028EC64 00258224  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028EC68 00258228  7C 08 03 A6 */	mtlr r0
/* 8028EC6C 0025822C  38 21 00 10 */	addi r1, r1, 0x10
/* 8028EC70 00258230  4E 80 00 20 */	blr 

.global func_8028EC74
func_8028EC74:
/* 8028EC74 00258234  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028EC78 00258238  7C 08 02 A6 */	mflr r0
/* 8028EC7C 0025823C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028EC80 00258240  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028EC84 00258244  7C 7F 1B 78 */	mr r31, r3
/* 8028EC88 00258248  80 63 00 08 */	lwz r3, 8(r3)
/* 8028EC8C 0025824C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 8028EC90 00258250  81 83 00 00 */	lwz r12, 0(r3)
/* 8028EC94 00258254  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8028EC98 00258258  7D 89 03 A6 */	mtctr r12
/* 8028EC9C 0025825C  4E 80 04 21 */	bctrl 
/* 8028ECA0 00258260  80 7F 00 08 */	lwz r3, 8(r31)
/* 8028ECA4 00258264  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8028ECA8 00258268  81 83 00 00 */	lwz r12, 0(r3)
/* 8028ECAC 0025826C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8028ECB0 00258270  7D 89 03 A6 */	mtctr r12
/* 8028ECB4 00258274  4E 80 04 21 */	bctrl 
/* 8028ECB8 00258278  80 7F 00 08 */	lwz r3, 8(r31)
/* 8028ECBC 0025827C  38 A0 00 01 */	li r5, 1
/* 8028ECC0 00258280  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8028ECC4 00258284  81 83 00 00 */	lwz r12, 0(r3)
/* 8028ECC8 00258288  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8028ECCC 0025828C  7D 89 03 A6 */	mtctr r12
/* 8028ECD0 00258290  4E 80 04 21 */	bctrl 
/* 8028ECD4 00258294  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8028ECD8 00258298  38 80 00 00 */	li r4, 0
/* 8028ECDC 0025829C  C0 02 B0 94 */	lfs f0, float_8066B414@sda21(r2)
/* 8028ECE0 002582A0  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8028ECE4 002582A4  80 7F 00 08 */	lwz r3, 8(r31)
/* 8028ECE8 002582A8  81 83 00 00 */	lwz r12, 0(r3)
/* 8028ECEC 002582AC  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8028ECF0 002582B0  7D 89 03 A6 */	mtctr r12
/* 8028ECF4 002582B4  4E 80 04 21 */	bctrl 
/* 8028ECF8 002582B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028ECFC 002582BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028ED00 002582C0  7C 08 03 A6 */	mtlr r0
/* 8028ED04 002582C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8028ED08 002582C8  4E 80 00 20 */	blr 

.global func_8028ED0C
func_8028ED0C:
/* 8028ED0C 002582CC  38 A0 00 00 */	li r5, 0
/* 8028ED10 002582D0  38 00 00 01 */	li r0, 1
/* 8028ED14 002582D4  90 83 00 00 */	stw r4, 0(r3)
/* 8028ED18 002582D8  90 A3 00 04 */	stw r5, 4(r3)
/* 8028ED1C 002582DC  90 A3 00 08 */	stw r5, 8(r3)
/* 8028ED20 002582E0  98 A3 00 0C */	stb r5, 0xc(r3)
/* 8028ED24 002582E4  98 A3 00 0D */	stb r5, 0xd(r3)
/* 8028ED28 002582E8  98 03 00 0E */	stb r0, 0xe(r3)
/* 8028ED2C 002582EC  4E 80 00 20 */	blr 

.global func_8028ED30
func_8028ED30:
/* 8028ED30 002582F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028ED34 002582F4  7C 08 02 A6 */	mflr r0
/* 8028ED38 002582F8  2C 03 00 00 */	cmpwi r3, 0
/* 8028ED3C 002582FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028ED40 00258300  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028ED44 00258304  7C 7F 1B 78 */	mr r31, r3
/* 8028ED48 00258308  41 82 00 10 */	beq .L_8028ED58
/* 8028ED4C 0025830C  2C 04 00 00 */	cmpwi r4, 0
/* 8028ED50 00258310  40 81 00 08 */	ble .L_8028ED58
/* 8028ED54 00258314  48 1A 5E D9 */	bl __dl__FPv
.L_8028ED58:
/* 8028ED58 00258318  7F E3 FB 78 */	mr r3, r31
/* 8028ED5C 0025831C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028ED60 00258320  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028ED64 00258324  7C 08 03 A6 */	mtlr r0
/* 8028ED68 00258328  38 21 00 10 */	addi r1, r1, 0x10
/* 8028ED6C 0025832C  4E 80 00 20 */	blr 

.global func_8028ED70
func_8028ED70:
/* 8028ED70 00258330  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028ED74 00258334  7C 08 02 A6 */	mflr r0
/* 8028ED78 00258338  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028ED7C 0025833C  BF C1 00 08 */	stmw r30, 8(r1)
/* 8028ED80 00258340  3F E0 80 51 */	lis r31, lbl_8050AE44@ha
/* 8028ED84 00258344  3B FF AE 44 */	addi r31, r31, lbl_8050AE44@l
/* 8028ED88 00258348  7C 7E 1B 78 */	mr r30, r3
/* 8028ED8C 0025834C  38 BF 00 50 */	addi r5, r31, 0x50
/* 8028ED90 00258350  80 83 00 00 */	lwz r4, 0(r3)
/* 8028ED94 00258354  38 63 00 04 */	addi r3, r3, 4
/* 8028ED98 00258358  4B EA 80 ED */	bl func_80136E84
/* 8028ED9C 0025835C  80 7E 00 04 */	lwz r3, 4(r30)
/* 8028EDA0 00258360  38 9E 00 08 */	addi r4, r30, 8
/* 8028EDA4 00258364  80 BE 00 00 */	lwz r5, 0(r30)
/* 8028EDA8 00258368  38 DF 00 69 */	addi r6, r31, 0x69
/* 8028EDAC 0025836C  4B EA 81 5D */	bl func_80136F08
/* 8028EDB0 00258370  80 9E 00 04 */	lwz r4, 4(r30)
/* 8028EDB4 00258374  38 60 00 01 */	li r3, 1
/* 8028EDB8 00258378  83 E4 00 10 */	lwz r31, 0x10(r4)
/* 8028EDBC 0025837C  48 1C 3E 55 */	bl func_80452C10
/* 8028EDC0 00258380  81 83 00 00 */	lwz r12, 0(r3)
/* 8028EDC4 00258384  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8028EDC8 00258388  7D 89 03 A6 */	mtctr r12
/* 8028EDCC 0025838C  4E 80 04 21 */	bctrl 
/* 8028EDD0 00258390  7C 64 1B 78 */	mr r4, r3
/* 8028EDD4 00258394  7F E3 FB 78 */	mr r3, r31
/* 8028EDD8 00258398  4B EA 79 95 */	bl func_8013676C
/* 8028EDDC 0025839C  7F C3 F3 78 */	mr r3, r30
/* 8028EDE0 002583A0  48 00 01 95 */	bl func_8028EF74
/* 8028EDE4 002583A4  BB C1 00 08 */	lmw r30, 8(r1)
/* 8028EDE8 002583A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028EDEC 002583AC  7C 08 03 A6 */	mtlr r0
/* 8028EDF0 002583B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8028EDF4 002583B4  4E 80 00 20 */	blr 

.global func_8028EDF8
func_8028EDF8:
/* 8028EDF8 002583B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028EDFC 002583BC  7C 08 02 A6 */	mflr r0
/* 8028EE00 002583C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028EE04 002583C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028EE08 002583C8  7C 7F 1B 78 */	mr r31, r3
/* 8028EE0C 002583CC  80 03 00 04 */	lwz r0, 4(r3)
/* 8028EE10 002583D0  2C 00 00 00 */	cmpwi r0, 0
/* 8028EE14 002583D4  41 82 00 40 */	beq .L_8028EE54
/* 8028EE18 002583D8  88 03 00 0C */	lbz r0, 0xc(r3)
/* 8028EE1C 002583DC  2C 00 00 01 */	cmpwi r0, 1
/* 8028EE20 002583E0  41 82 00 10 */	beq .L_8028EE30
/* 8028EE24 002583E4  2C 00 00 03 */	cmpwi r0, 3
/* 8028EE28 002583E8  41 82 00 10 */	beq .L_8028EE38
/* 8028EE2C 002583EC  48 00 00 10 */	b .L_8028EE3C
.L_8028EE30:
/* 8028EE30 002583F0  48 00 00 A9 */	bl func_8028EED8
/* 8028EE34 002583F4  48 00 00 08 */	b .L_8028EE3C
.L_8028EE38:
/* 8028EE38 002583F8  48 00 00 ED */	bl func_8028EF24
.L_8028EE3C:
/* 8028EE3C 002583FC  80 7F 00 04 */	lwz r3, 4(r31)
/* 8028EE40 00258400  38 80 00 00 */	li r4, 0
/* 8028EE44 00258404  81 83 00 00 */	lwz r12, 0(r3)
/* 8028EE48 00258408  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8028EE4C 0025840C  7D 89 03 A6 */	mtctr r12
/* 8028EE50 00258410  4E 80 04 21 */	bctrl 
.L_8028EE54:
/* 8028EE54 00258414  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028EE58 00258418  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028EE5C 0025841C  7C 08 03 A6 */	mtlr r0
/* 8028EE60 00258420  38 21 00 10 */	addi r1, r1, 0x10
/* 8028EE64 00258424  4E 80 00 20 */	blr 

.global func_8028EE68
func_8028EE68:
/* 8028EE68 00258428  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028EE6C 0025842C  7C 08 02 A6 */	mflr r0
/* 8028EE70 00258430  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028EE74 00258434  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028EE78 00258438  7C 7F 1B 78 */	mr r31, r3
/* 8028EE7C 0025843C  80 03 00 04 */	lwz r0, 4(r3)
/* 8028EE80 00258440  2C 00 00 00 */	cmpwi r0, 0
/* 8028EE84 00258444  41 82 00 28 */	beq .L_8028EEAC
/* 8028EE88 00258448  41 82 00 1C */	beq .L_8028EEA4
/* 8028EE8C 0025844C  7C 03 03 78 */	mr r3, r0
/* 8028EE90 00258450  38 80 00 01 */	li r4, 1
/* 8028EE94 00258454  81 83 00 00 */	lwz r12, 0(r3)
/* 8028EE98 00258458  81 8C 00 08 */	lwz r12, 8(r12)
/* 8028EE9C 0025845C  7D 89 03 A6 */	mtctr r12
/* 8028EEA0 00258460  4E 80 04 21 */	bctrl 
.L_8028EEA4:
/* 8028EEA4 00258464  38 00 00 00 */	li r0, 0
/* 8028EEA8 00258468  90 1F 00 04 */	stw r0, 4(r31)
.L_8028EEAC:
/* 8028EEAC 0025846C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028EEB0 00258470  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028EEB4 00258474  7C 08 03 A6 */	mtlr r0
/* 8028EEB8 00258478  38 21 00 10 */	addi r1, r1, 0x10
/* 8028EEBC 0025847C  4E 80 00 20 */	blr 

.global func_8028EEC0
func_8028EEC0:
/* 8028EEC0 00258480  38 80 00 01 */	li r4, 1
/* 8028EEC4 00258484  38 00 00 00 */	li r0, 0
/* 8028EEC8 00258488  98 83 00 0C */	stb r4, 0xc(r3)
/* 8028EECC 0025848C  98 83 00 0D */	stb r4, 0xd(r3)
/* 8028EED0 00258490  98 03 00 0E */	stb r0, 0xe(r3)
/* 8028EED4 00258494  4E 80 00 20 */	blr 

.global func_8028EED8
func_8028EED8:
/* 8028EED8 00258498  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028EEDC 0025849C  7C 08 02 A6 */	mflr r0
/* 8028EEE0 002584A0  C0 22 B0 90 */	lfs f1, float_8066B410@sda21(r2)
/* 8028EEE4 002584A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028EEE8 002584A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028EEEC 002584AC  7C 7F 1B 78 */	mr r31, r3
/* 8028EEF0 002584B0  80 63 00 08 */	lwz r3, 8(r3)
/* 8028EEF4 002584B4  4B EA 85 51 */	bl func_80137444
/* 8028EEF8 002584B8  2C 03 00 00 */	cmpwi r3, 0
/* 8028EEFC 002584BC  41 82 00 14 */	beq .L_8028EF10
/* 8028EF00 002584C0  38 60 00 02 */	li r3, 2
/* 8028EF04 002584C4  38 00 00 01 */	li r0, 1
/* 8028EF08 002584C8  98 7F 00 0C */	stb r3, 0xc(r31)
/* 8028EF0C 002584CC  98 1F 00 0E */	stb r0, 0xe(r31)
.L_8028EF10:
/* 8028EF10 002584D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028EF14 002584D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028EF18 002584D8  7C 08 03 A6 */	mtlr r0
/* 8028EF1C 002584DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8028EF20 002584E0  4E 80 00 20 */	blr 

.global func_8028EF24
func_8028EF24:
/* 8028EF24 002584E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028EF28 002584E8  7C 08 02 A6 */	mflr r0
/* 8028EF2C 002584EC  C0 22 B0 90 */	lfs f1, float_8066B410@sda21(r2)
/* 8028EF30 002584F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028EF34 002584F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028EF38 002584F8  7C 7F 1B 78 */	mr r31, r3
/* 8028EF3C 002584FC  80 63 00 08 */	lwz r3, 8(r3)
/* 8028EF40 00258500  4B EA 85 D1 */	bl func_80137510
/* 8028EF44 00258504  2C 03 00 00 */	cmpwi r3, 0
/* 8028EF48 00258508  41 82 00 18 */	beq .L_8028EF60
/* 8028EF4C 0025850C  38 60 00 00 */	li r3, 0
/* 8028EF50 00258510  38 00 00 01 */	li r0, 1
/* 8028EF54 00258514  98 7F 00 0C */	stb r3, 0xc(r31)
/* 8028EF58 00258518  98 7F 00 0D */	stb r3, 0xd(r31)
/* 8028EF5C 0025851C  98 1F 00 0E */	stb r0, 0xe(r31)
.L_8028EF60:
/* 8028EF60 00258520  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028EF64 00258524  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028EF68 00258528  7C 08 03 A6 */	mtlr r0
/* 8028EF6C 0025852C  38 21 00 10 */	addi r1, r1, 0x10
/* 8028EF70 00258530  4E 80 00 20 */	blr 

.global func_8028EF74
func_8028EF74:
/* 8028EF74 00258534  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028EF78 00258538  7C 08 02 A6 */	mflr r0
/* 8028EF7C 0025853C  38 A0 00 01 */	li r5, 1
/* 8028EF80 00258540  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028EF84 00258544  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028EF88 00258548  7C 7F 1B 78 */	mr r31, r3
/* 8028EF8C 0025854C  80 63 00 04 */	lwz r3, 4(r3)
/* 8028EF90 00258550  80 9F 00 08 */	lwz r4, 8(r31)
/* 8028EF94 00258554  81 83 00 00 */	lwz r12, 0(r3)
/* 8028EF98 00258558  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8028EF9C 0025855C  7D 89 03 A6 */	mtctr r12
/* 8028EFA0 00258560  4E 80 04 21 */	bctrl 
/* 8028EFA4 00258564  80 7F 00 08 */	lwz r3, 8(r31)
/* 8028EFA8 00258568  38 80 00 00 */	li r4, 0
/* 8028EFAC 0025856C  C0 02 B0 94 */	lfs f0, float_8066B414@sda21(r2)
/* 8028EFB0 00258570  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8028EFB4 00258574  80 7F 00 04 */	lwz r3, 4(r31)
/* 8028EFB8 00258578  81 83 00 00 */	lwz r12, 0(r3)
/* 8028EFBC 0025857C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8028EFC0 00258580  7D 89 03 A6 */	mtctr r12
/* 8028EFC4 00258584  4E 80 04 21 */	bctrl 
/* 8028EFC8 00258588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028EFCC 0025858C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028EFD0 00258590  7C 08 03 A6 */	mtlr r0
/* 8028EFD4 00258594  38 21 00 10 */	addi r1, r1, 0x10
/* 8028EFD8 00258598  4E 80 00 20 */	blr 

.section extab, "a"  # 0x800066E0 - 0x80021020

.global lbl_80019448
lbl_80019448:
	.4byte 0x08080000
	.4byte 0

.global lbl_80019450
lbl_80019450:
	.4byte 0x10080000
	.4byte 0

.global lbl_80019458
lbl_80019458:
	.4byte 0x080A0000
	.4byte 0

.global lbl_80019460
lbl_80019460:
	.4byte 0x08080000
	.4byte 0

.global lbl_80019468
lbl_80019468:
	.4byte 0x080A0000
	.4byte 0

.global lbl_80019470
lbl_80019470:
	.4byte 0x080A0000
	.4byte 0

.global lbl_80019478
lbl_80019478:
	.4byte 0x08080000
	.4byte 0

.global lbl_80019480
lbl_80019480:
	.4byte 0x10080000
	.4byte 0

.global lbl_80019488
lbl_80019488:
	.4byte 0x08080000
	.4byte 0

.global lbl_80019490
lbl_80019490:
	.4byte 0x08080000
	.4byte 0

.global lbl_80019498
lbl_80019498:
	.4byte 0x080A0000
	.4byte 0

.global lbl_800194A0
lbl_800194A0:
	.4byte 0x080A0000
	.4byte 0

.global lbl_800194A8
lbl_800194A8:
	.4byte 0x080A0000
	.4byte 0


.section extabindex, "a"  # 0x80021020 - 0x80039220

.4byte func_8028EA34
	.4byte 0x00000040
	.4byte lbl_80019448
	.4byte func_8028EA74
	.4byte 0x00000084
	.4byte lbl_80019450
	.4byte func_8028EAF8
	.4byte 0x00000078
	.4byte lbl_80019458
	.4byte func_8028EB9C
	.4byte 0x00000068
	.4byte lbl_80019460
	.4byte func_8028EC28
	.4byte 0x0000004C
	.4byte lbl_80019468
	.4byte func_8028EC74
	.4byte 0x00000098
	.4byte lbl_80019470
	.4byte func_8028ED30
	.4byte 0x00000040
	.4byte lbl_80019478
	.4byte func_8028ED70
	.4byte 0x00000088
	.4byte lbl_80019480
	.4byte func_8028EDF8
	.4byte 0x00000070
	.4byte lbl_80019488
	.4byte func_8028EE68
	.4byte 0x00000058
	.4byte lbl_80019490
	.4byte func_8028EED8
	.4byte 0x0000004C
	.4byte lbl_80019498
	.4byte func_8028EF24
	.4byte 0x00000050
	.4byte lbl_800194A0
	.4byte func_8028EF74
	.4byte 0x00000068
	.4byte lbl_800194A8
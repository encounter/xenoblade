.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

#could be SFX_CnvFrmARGB8888ByCbFunc in sfx_cnv_to_ARGB8888PLN.s
.global SFX_CnvFrmY84C44ByCbFunc
SFX_CnvFrmY84C44ByCbFunc:
/* 803D7010 003A05D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D7014 003A05D4  7C 08 02 A6 */	mflr r0
/* 803D7018 003A05D8  3C C0 80 3A */	lis r6, func_8039B960@ha
/* 803D701C 003A05DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D7020 003A05E0  38 00 00 00 */	li r0, 0
/* 803D7024 003A05E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803D7028 003A05E8  7C BF 2B 78 */	mr r31, r5
/* 803D702C 003A05EC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803D7030 003A05F0  7C 9E 23 78 */	mr r30, r4
/* 803D7034 003A05F4  38 86 B9 60 */	addi r4, r6, func_8039B960@l
/* 803D7038 003A05F8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803D703C 003A05FC  7C 7D 1B 78 */	mr r29, r3
/* 803D7040 003A0600  90 03 00 50 */	stw r0, 0x50(r3)
/* 803D7044 003A0604  4B FF DF 49 */	bl SFX_SetCnvFrmCbFunc
/* 803D7048 003A0608  7F A3 EB 78 */	mr r3, r29
/* 803D704C 003A060C  38 80 00 00 */	li r4, 0
/* 803D7050 003A0610  4B FF DF 45 */	bl SFX_SetCopyAlphaCbFunc
/* 803D7054 003A0614  7F A3 EB 78 */	mr r3, r29
/* 803D7058 003A0618  38 80 00 00 */	li r4, 0
/* 803D705C 003A061C  4B FF DF 41 */	bl SFX_SetMakeLumiTableCbFunc
/* 803D7060 003A0620  7F A3 EB 78 */	mr r3, r29
/* 803D7064 003A0624  38 80 00 00 */	li r4, 0
/* 803D7068 003A0628  4B FF DF 41 */	bl SFX_SetMakeAlp3TableCbFunc
/* 803D706C 003A062C  7F A3 EB 78 */	mr r3, r29
/* 803D7070 003A0630  38 80 00 00 */	li r4, 0
/* 803D7074 003A0634  4B FF DF 41 */	bl SFX_SetMakeAlp3110TableCbFunc
/* 803D7078 003A0638  7F A3 EB 78 */	mr r3, r29
/* 803D707C 003A063C  38 80 00 00 */	li r4, 0
/* 803D7080 003A0640  4B FF DF 41 */	bl SFX_SetMakeColAdjTableCbFunc
/* 803D7084 003A0644  7F A3 EB 78 */	mr r3, r29
/* 803D7088 003A0648  7F C4 F3 78 */	mr r4, r30
/* 803D708C 003A064C  7F E5 FB 78 */	mr r5, r31
/* 803D7090 003A0650  4B FF DF 39 */	bl SFX_CnvFrmByCbFunc
/* 803D7094 003A0654  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D7098 003A0658  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803D709C 003A065C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803D70A0 003A0660  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803D70A4 003A0664  7C 08 03 A6 */	mtlr r0
/* 803D70A8 003A0668  38 21 00 20 */	addi r1, r1, 0x20
/* 803D70AC 003A066C  4E 80 00 20 */	blr

.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global ADXRNA_Init
ADXRNA_Init:
/* 8039B360 00364920  4B FF DC B8 */	b AXRNA_Init

.global ADXRNA_Finish
ADXRNA_Finish:
/* 8039B364 00364924  4B FF DD 0C */	b AXRNA_Finish

.global ADXRNA_EntryErrFunc
ADXRNA_EntryErrFunc:
/* 8039B368 00364928  4B FF DC AC */	b AXRNA_EntryErrFunc

.global ADXRNA_Create
ADXRNA_Create:
/* 8039B36C 0036492C  4B FF DE 1C */	b AXRNA_Create

.global ADXRNA_Destroy
ADXRNA_Destroy:
/* 8039B370 00364930  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039B374 00364934  7C 08 02 A6 */	mflr r0
/* 8039B378 00364938  38 80 00 00 */	li r4, 0
/* 8039B37C 0036493C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039B380 00364940  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039B384 00364944  7C 7F 1B 78 */	mr r31, r3
/* 8039B388 00364948  4B FF E6 09 */	bl AXRNA_SetPlaySw
/* 8039B38C 0036494C  7F E3 FB 78 */	mr r3, r31
/* 8039B390 00364950  38 80 00 00 */	li r4, 0
/* 8039B394 00364954  4B FF E2 FD */	bl AXRNA_SetTransSw
/* 8039B398 00364958  7F E3 FB 78 */	mr r3, r31
/* 8039B39C 0036495C  4B FF E2 31 */	bl AXRNA_Destroy
/* 8039B3A0 00364960  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039B3A4 00364964  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039B3A8 00364968  7C 08 03 A6 */	mtlr r0
/* 8039B3AC 0036496C  38 21 00 10 */	addi r1, r1, 0x10
/* 8039B3B0 00364970  4E 80 00 20 */	blr 

.global ADXRNA_SetTransSw
ADXRNA_SetTransSw:
/* 8039B3B4 00364974  4B FF E2 DC */	b AXRNA_SetTransSw

.global ADXRNA_SetPlaySw
ADXRNA_SetPlaySw:
/* 8039B3B8 00364978  4B FF E5 D8 */	b AXRNA_SetPlaySw

.global ADXRNA_GetNumData
ADXRNA_GetNumData:
/* 8039B3BC 0036497C  4B FF E7 64 */	b AXRNA_GetNumData

.global ADXRNA_GetNumRoom
ADXRNA_GetNumRoom:
/* 8039B3C0 00364980  4B FF E7 D4 */	b AXRNA_GetNumRoom

.global ADXRNA_ExecServer
ADXRNA_ExecServer:
/* 8039B3C4 00364984  4B FF F0 C4 */	b AXRNA_ExecServer

.global ADXRNA_SetNumChan
ADXRNA_SetNumChan:
/* 8039B3C8 00364988  4B FF F1 C4 */	b AXRNA_SetNumChan

.global ADXRNA_SetSfreq
ADXRNA_SetSfreq:
/* 8039B3CC 0036498C  4B FF F1 D0 */	b AXRNA_SetSfreq

.global ADXRNA_SetOutVol
ADXRNA_SetOutVol:
/* 8039B3D0 00364990  4B FF F2 BC */	b AXRNA_SetOutVol

.global ADXRNA_SetOutPan
ADXRNA_SetOutPan:
/* 8039B3D4 00364994  4B FF F3 68 */	b AXRNA_SetOutPan

.global ADXRNA_SetBitPerSmpl
ADXRNA_SetBitPerSmpl:
/* 8039B3D8 00364998  4B FF F4 1C */	b AXRNA_SetBitPerSmpl

.global func_8039B3DC
func_8039B3DC:
/* 8039B3DC 0036499C  4B FF F4 30 */	b func_8039A80C

.global ADXRNA_SetTotalNumSmpl
ADXRNA_SetTotalNumSmpl:
/* 8039B3E0 003649A0  4E 80 00 20 */	blr

.global ADXRNA_SetStmHdInfo
ADXRNA_SetStmHdInfo:
/* 8039B3E4 003649A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039B3E8 003649A8  7C 08 02 A6 */	mflr r0
/* 8039B3EC 003649AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039B3F0 003649B0  4B FF F4 15 */	bl func_8039A804
/* 8039B3F4 003649B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039B3F8 003649B8  38 60 00 00 */	li r3, 0
/* 8039B3FC 003649BC  7C 08 03 A6 */	mtlr r0
/* 8039B400 003649C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8039B404 003649C4  4E 80 00 20 */	blr 
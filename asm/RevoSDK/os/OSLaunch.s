.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global __OSRelaunchTitle
__OSRelaunchTitle:
/* 8035F140 00328700  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 8035F144 00328704  7C 2C 0B 78 */	mr r12, r1
/* 8035F148 00328708  21 6B FF 60 */	subfic r11, r11, -160
/* 8035F14C 0032870C  7C 21 59 6E */	stwux r1, r1, r11
/* 8035F150 00328710  7C 08 02 A6 */	mflr r0
/* 8035F154 00328714  90 0C 00 04 */	stw r0, 4(r12)
/* 8035F158 00328718  38 00 00 01 */	li r0, 1
/* 8035F15C 0032871C  93 EC FF FC */	stw r31, -4(r12)
/* 8035F160 00328720  93 CC FF F8 */	stw r30, -8(r12)
/* 8035F164 00328724  93 AC FF F4 */	stw r29, -0xc(r12)
/* 8035F168 00328728  7C 7D 1B 78 */	mr r29, r3
/* 8035F16C 0032872C  3C 60 81 28 */	lis r3, 0x8128
/* 8035F170 00328730  90 01 00 28 */	stw r0, 0x28(r1)
/* 8035F174 00328734  4B FF 48 DD */	bl OSSetArenaLo
/* 8035F178 00328738  3C 60 81 2F */	lis r3, 0x812f
/* 8035F17C 0032873C  4B FF 48 A5 */	bl OSSetArenaHi
/* 8035F180 00328740  4B FB 45 D1 */	bl ESP_InitLib
/* 8035F184 00328744  2C 03 00 00 */	cmpwi r3, 0
/* 8035F188 00328748  41 82 00 08 */	beq .L_8035F190
/* 8035F18C 0032874C  4B FF B5 15 */	bl __OSReturnToMenuForError
.L_8035F190:
/* 8035F190 00328750  38 61 00 40 */	addi r3, r1, 0x40
/* 8035F194 00328754  4B FB 4A 6D */	bl ESP_GetTitleId
/* 8035F198 00328758  2C 03 00 00 */	cmpwi r3, 0
/* 8035F19C 0032875C  41 82 00 08 */	beq .L_8035F1A4
/* 8035F1A0 00328760  4B FF B5 01 */	bl __OSReturnToMenuForError
.L_8035F1A4:
/* 8035F1A4 00328764  38 60 00 E0 */	li r3, 0xe0
/* 8035F1A8 00328768  38 80 00 20 */	li r4, 0x20
/* 8035F1AC 0032876C  4B FF 48 B5 */	bl OSAllocFromMEM1ArenaLo
/* 8035F1B0 00328770  38 00 00 00 */	li r0, 0
/* 8035F1B4 00328774  7C 7F 1B 78 */	mr r31, r3
/* 8035F1B8 00328778  7C 03 00 40 */	cmplw r3, r0
/* 8035F1BC 0032877C  40 82 00 08 */	bne .L_8035F1C4
/* 8035F1C0 00328780  4B FF B4 E1 */	bl __OSReturnToMenuForError
.L_8035F1C4:
/* 8035F1C4 00328784  7F E3 FB 78 */	mr r3, r31
/* 8035F1C8 00328788  38 80 00 00 */	li r4, 0
/* 8035F1CC 0032878C  38 A0 00 E0 */	li r5, 0xe0
/* 8035F1D0 00328790  4B CA 51 81 */	bl memset
/* 8035F1D4 00328794  7F E4 FB 78 */	mr r4, r31
/* 8035F1D8 00328798  38 60 00 00 */	li r3, 0
/* 8035F1DC 0032879C  4B FB 47 E5 */	bl ESP_DiGetTicketView
/* 8035F1E0 003287A0  2C 03 FC 07 */	cmpwi r3, -1017
/* 8035F1E4 003287A4  40 82 00 84 */	bne .L_8035F268
/* 8035F1E8 003287A8  80 61 00 40 */	lwz r3, 0x40(r1)
/* 8035F1EC 003287AC  38 C1 00 28 */	addi r6, r1, 0x28
/* 8035F1F0 003287B0  80 81 00 44 */	lwz r4, 0x44(r1)
/* 8035F1F4 003287B4  38 A0 00 00 */	li r5, 0
/* 8035F1F8 003287B8  4B FB 46 A9 */	bl ESP_GetTicketViews
/* 8035F1FC 003287BC  2C 03 00 00 */	cmpwi r3, 0
/* 8035F200 003287C0  41 82 00 08 */	beq .L_8035F208
/* 8035F204 003287C4  4B FF B4 9D */	bl __OSReturnToMenuForError
.L_8035F208:
/* 8035F208 003287C8  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8035F20C 003287CC  38 80 00 20 */	li r4, 0x20
/* 8035F210 003287D0  1C 60 00 D8 */	mulli r3, r0, 0xd8
/* 8035F214 003287D4  38 03 00 1F */	addi r0, r3, 0x1f
/* 8035F218 003287D8  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 8035F21C 003287DC  4B FF 48 45 */	bl OSAllocFromMEM1ArenaLo
/* 8035F220 003287E0  38 00 00 00 */	li r0, 0
/* 8035F224 003287E4  7C 7E 1B 78 */	mr r30, r3
/* 8035F228 003287E8  7C 03 00 40 */	cmplw r3, r0
/* 8035F22C 003287EC  40 82 00 08 */	bne .L_8035F234
/* 8035F230 003287F0  4B FF B4 71 */	bl __OSReturnToMenuForError
.L_8035F234:
/* 8035F234 003287F4  80 61 00 40 */	lwz r3, 0x40(r1)
/* 8035F238 003287F8  7F C5 F3 78 */	mr r5, r30
/* 8035F23C 003287FC  80 81 00 44 */	lwz r4, 0x44(r1)
/* 8035F240 00328800  38 C1 00 28 */	addi r6, r1, 0x28
/* 8035F244 00328804  4B FB 46 5D */	bl ESP_GetTicketViews
/* 8035F248 00328808  2C 03 00 00 */	cmpwi r3, 0
/* 8035F24C 0032880C  41 82 00 08 */	beq .L_8035F254
/* 8035F250 00328810  4B FF B4 51 */	bl __OSReturnToMenuForError
.L_8035F254:
/* 8035F254 00328814  7F E3 FB 78 */	mr r3, r31
/* 8035F258 00328818  7F C4 F3 78 */	mr r4, r30
/* 8035F25C 0032881C  38 A0 00 D8 */	li r5, 0xd8
/* 8035F260 00328820  4B CA 4D A1 */	bl memcpy
/* 8035F264 00328824  48 00 00 54 */	b .L_8035F2B8
.L_8035F268:
/* 8035F268 00328828  2C 03 00 00 */	cmpwi r3, 0
/* 8035F26C 0032882C  41 82 00 0C */	beq .L_8035F278
/* 8035F270 00328830  4B FF B4 31 */	bl __OSReturnToMenuForError
/* 8035F274 00328834  48 00 00 44 */	b .L_8035F2B8
.L_8035F278:
/* 8035F278 00328838  4B FF F5 A9 */	bl OSPlayTimeIsLimited
/* 8035F27C 0032883C  2C 03 00 00 */	cmpwi r3, 0
/* 8035F280 00328840  41 82 00 38 */	beq .L_8035F2B8
/* 8035F284 00328844  38 60 00 00 */	li r3, 0
/* 8035F288 00328848  38 00 FF FF */	li r0, -1
/* 8035F28C 0032884C  90 61 00 24 */	stw r3, 0x24(r1)
/* 8035F290 00328850  7F E3 FB 78 */	mr r3, r31
/* 8035F294 00328854  38 81 00 24 */	addi r4, r1, 0x24
/* 8035F298 00328858  38 A1 00 20 */	addi r5, r1, 0x20
/* 8035F29C 0032885C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8035F2A0 00328860  4B FF FA 31 */	bl __OSGetPlayTime
/* 8035F2A4 00328864  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8035F2A8 00328868  2C 00 00 00 */	cmpwi r0, 0
/* 8035F2AC 0032886C  40 82 00 0C */	bne .L_8035F2B8
/* 8035F2B0 00328870  4B FF F7 51 */	bl __OSWriteExpiredFlag
/* 8035F2B4 00328874  4B FF B3 ED */	bl __OSReturnToMenuForError
.L_8035F2B8:
/* 8035F2B8 00328878  38 60 20 00 */	li r3, 0x2000
/* 8035F2BC 0032887C  38 80 00 40 */	li r4, 0x40
/* 8035F2C0 00328880  4B FF 47 A1 */	bl OSAllocFromMEM1ArenaLo
/* 8035F2C4 00328884  3B C3 0F E0 */	addi r30, r3, 0xfe0
/* 8035F2C8 00328888  38 80 00 00 */	li r4, 0
/* 8035F2CC 0032888C  38 A0 20 00 */	li r5, 0x2000
/* 8035F2D0 00328890  4B CA 50 81 */	bl memset
/* 8035F2D4 00328894  80 01 00 40 */	lwz r0, 0x40(r1)
/* 8035F2D8 00328898  80 61 00 44 */	lwz r3, 0x44(r1)
/* 8035F2DC 0032889C  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 8035F2E0 003288A0  90 1E 00 18 */	stw r0, 0x18(r30)
/* 8035F2E4 003288A4  4B FF 3A BD */	bl OSGetAppType
/* 8035F2E8 003288A8  98 7E 00 0A */	stb r3, 0xa(r30)
/* 8035F2EC 003288AC  38 60 00 01 */	li r3, 1
/* 8035F2F0 003288B0  67 A0 80 00 */	oris r0, r29, 0x8000
/* 8035F2F4 003288B4  98 7E 00 0B */	stb r3, 0xb(r30)
/* 8035F2F8 003288B8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8035F2FC 003288BC  4B FF F3 15 */	bl __OSCreateNandbootInfo
/* 8035F300 003288C0  7F C3 F3 78 */	mr r3, r30
/* 8035F304 003288C4  4B FF F3 BD */	bl __OSWriteNandbootInfo
/* 8035F308 003288C8  38 61 00 60 */	addi r3, r1, 0x60
/* 8035F30C 003288CC  4B FF EC 35 */	bl __OSReadStateFlags
/* 8035F310 003288D0  38 00 00 03 */	li r0, 3
/* 8035F314 003288D4  98 01 00 65 */	stb r0, 0x65(r1)
/* 8035F318 003288D8  38 61 00 60 */	addi r3, r1, 0x60
/* 8035F31C 003288DC  4B FF EB 35 */	bl __OSWriteStateFlags
/* 8035F320 003288E0  80 61 00 40 */	lwz r3, 0x40(r1)
/* 8035F324 003288E4  7F E5 FB 78 */	mr r5, r31
/* 8035F328 003288E8  80 81 00 44 */	lwz r4, 0x44(r1)
/* 8035F32C 003288EC  4B FB 44 D5 */	bl ESP_LaunchTitle
/* 8035F330 003288F0  2C 03 00 00 */	cmpwi r3, 0
/* 8035F334 003288F4  41 82 00 0C */	beq .L_8035F340
/* 8035F338 003288F8  4B FF B3 69 */	bl __OSReturnToMenuForError
/* 8035F33C 003288FC  60 00 00 00 */	nop 
.L_8035F340:
/* 8035F340 00328900  48 00 00 00 */	b .L_8035F340
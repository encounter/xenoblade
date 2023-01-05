.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global __ct__CMenuGameClear
__ct__CMenuGameClear:
/* 802B219C 0027B75C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B21A0 0027B760  7C 08 02 A6 */	mflr r0
/* 802B21A4 0027B764  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B21A8 0027B768  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802B21AC 0027B76C  7C 7F 1B 78 */	mr r31, r3
/* 802B21B0 0027B770  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802B21B4 0027B774  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802B21B8 0027B778  93 81 00 10 */	stw r28, 0x10(r1)
/* 802B21BC 0027B77C  7C 9C 23 78 */	mr r28, r4
/* 802B21C0 0027B780  80 0D B3 68 */	lwz r0, lbl_806674E8@sda21(r13)
/* 802B21C4 0027B784  2C 00 00 00 */	cmpwi r0, 0
/* 802B21C8 0027B788  41 82 00 0C */	beq .L_802B21D4
/* 802B21CC 0027B78C  38 60 00 00 */	li r3, 0
/* 802B21D0 0027B790  48 00 00 F0 */	b .L_802B22C0
.L_802B21D4:
/* 802B21D4 0027B794  48 18 53 E1 */	bl func_804375B4
/* 802B21D8 0027B798  3C A0 00 01 */	lis r5, 0x00012E60@ha
/* 802B21DC 0027B79C  7C 64 1B 78 */	mr r4, r3
/* 802B21E0 0027B7A0  38 65 2E 60 */	addi r3, r5, 0x00012E60@l
/* 802B21E4 0027B7A4  48 18 28 79 */	bl mm_malloc
/* 802B21E8 0027B7A8  2C 03 00 00 */	cmpwi r3, 0
/* 802B21EC 0027B7AC  7C 7D 1B 78 */	mr r29, r3
/* 802B21F0 0027B7B0  41 82 00 B8 */	beq .L_802B22A8
/* 802B21F4 0027B7B4  48 19 28 25 */	bl __ct__8CProcessFv
/* 802B21F8 0027B7B8  3C 60 80 53 */	lis r3, __vt__CTTask_IUICf@ha
/* 802B21FC 0027B7BC  3C E0 80 51 */	lis r7, lbl_8050CE10@ha
/* 802B2200 0027B7C0  38 63 F7 40 */	addi r3, r3, __vt__CTTask_IUICf@l
/* 802B2204 0027B7C4  90 7D 00 10 */	stw r3, 0x10(r29)
/* 802B2208 0027B7C8  38 E7 CE 10 */	addi r7, r7, lbl_8050CE10@l
/* 802B220C 0027B7CC  3C 80 80 54 */	lis r4, __vt__CMenuGameClear@ha
/* 802B2210 0027B7D0  80 A7 00 04 */	lwz r5, 4(r7)
/* 802B2214 0027B7D4  3B C0 00 00 */	li r30, 0
/* 802B2218 0027B7D8  80 07 00 00 */	lwz r0, 0(r7)
/* 802B221C 0027B7DC  38 84 E5 38 */	addi r4, r4, __vt__CMenuGameClear@l
/* 802B2220 0027B7E0  90 1D 00 3C */	stw r0, 0x3c(r29)
/* 802B2224 0027B7E4  38 04 00 24 */	addi r0, r4, 0x24
/* 802B2228 0027B7E8  38 7D 00 60 */	addi r3, r29, 0x60
/* 802B222C 0027B7EC  90 BD 00 40 */	stw r5, 0x40(r29)
/* 802B2230 0027B7F0  80 A7 00 08 */	lwz r5, 8(r7)
/* 802B2234 0027B7F4  90 BD 00 44 */	stw r5, 0x44(r29)
/* 802B2238 0027B7F8  80 A7 00 04 */	lwz r5, 4(r7)
/* 802B223C 0027B7FC  80 C7 00 00 */	lwz r6, 0(r7)
/* 802B2240 0027B800  90 DD 00 48 */	stw r6, 0x48(r29)
/* 802B2244 0027B804  90 BD 00 4C */	stw r5, 0x4c(r29)
/* 802B2248 0027B808  80 A7 00 08 */	lwz r5, 8(r7)
/* 802B224C 0027B80C  90 BD 00 50 */	stw r5, 0x50(r29)
/* 802B2250 0027B810  9B DD 00 54 */	stb r30, 0x54(r29)
/* 802B2254 0027B814  9B DD 00 55 */	stb r30, 0x55(r29)
/* 802B2258 0027B818  90 9D 00 10 */	stw r4, 0x10(r29)
/* 802B225C 0027B81C  90 1D 00 58 */	stw r0, 0x58(r29)
/* 802B2260 0027B820  93 9D 00 5C */	stw r28, 0x5c(r29)
/* 802B2264 0027B824  48 1A D3 01 */	bl func_8045F564
/* 802B2268 0027B828  9B DD 00 70 */	stb r30, 0x70(r29)
/* 802B226C 0027B82C  38 7D 00 74 */	addi r3, r29, 0x74
/* 802B2270 0027B830  38 80 00 00 */	li r4, 0
/* 802B2274 0027B834  9B DD 00 71 */	stb r30, 0x71(r29)
/* 802B2278 0027B838  4B F7 93 A1 */	bl func_8022B618
/* 802B227C 0027B83C  38 7D 00 B0 */	addi r3, r29, 0xb0
/* 802B2280 0027B840  38 80 00 00 */	li r4, 0
/* 802B2284 0027B844  4B F2 07 79 */	bl func_801D29FC
/* 802B2288 0027B848  3F 9D 00 01 */	addis r28, r29, 1
/* 802B228C 0027B84C  3B DC 2E 60 */	addi r30, r28, 0x2e60
/* 802B2290 0027B850  3B 9C 23 38 */	addi r28, r28, 0x2338
.L_802B2294:
/* 802B2294 0027B854  7F 83 E3 78 */	mr r3, r28
/* 802B2298 0027B858  4B DE B4 CD */	bl func_8009D764
/* 802B229C 0027B85C  3B 9C 00 CC */	addi r28, r28, 0xcc
/* 802B22A0 0027B860  7C 1C F0 40 */	cmplw r28, r30
/* 802B22A4 0027B864  41 80 FF F0 */	blt .L_802B2294
.L_802B22A8:
/* 802B22A8 0027B868  93 AD B3 68 */	stw r29, lbl_806674E8@sda21(r13)
/* 802B22AC 0027B86C  7F A3 EB 78 */	mr r3, r29
/* 802B22B0 0027B870  7F E4 FB 78 */	mr r4, r31
/* 802B22B4 0027B874  38 A0 00 00 */	li r5, 0
/* 802B22B8 0027B878  48 19 29 BD */	bl func_80444C74
/* 802B22BC 0027B87C  80 6D B3 68 */	lwz r3, lbl_806674E8@sda21(r13)
.L_802B22C0:
/* 802B22C0 0027B880  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B22C4 0027B884  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802B22C8 0027B888  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802B22CC 0027B88C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802B22D0 0027B890  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802B22D4 0027B894  7C 08 03 A6 */	mtlr r0
/* 802B22D8 0027B898  38 21 00 20 */	addi r1, r1, 0x20
/* 802B22DC 0027B89C  4E 80 00 20 */	blr 

.global func_802B22E0
func_802B22E0:
/* 802B22E0 0027B8A0  80 6D B3 68 */	lwz r3, lbl_806674E8@sda21(r13)
/* 802B22E4 0027B8A4  7C 03 00 D0 */	neg r0, r3
/* 802B22E8 0027B8A8  7C 00 1B 78 */	or r0, r0, r3
/* 802B22EC 0027B8AC  54 03 0F FE */	srwi r3, r0, 0x1f
/* 802B22F0 0027B8B0  4E 80 00 20 */	blr 

.global func_802B22F4
func_802B22F4:
/* 802B22F4 0027B8B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802B22F8 0027B8B8  7C 08 02 A6 */	mflr r0
/* 802B22FC 0027B8BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 802B2300 0027B8C0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802B2304 0027B8C4  7C 7F 1B 78 */	mr r31, r3
/* 802B2308 0027B8C8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802B230C 0027B8CC  4B DD 4F 2D */	bl func_80087238
/* 802B2310 0027B8D0  7C 7E 1B 78 */	mr r30, r3
/* 802B2314 0027B8D4  38 60 FF FF */	li r3, -1
/* 802B2318 0027B8D8  4B DD 4C 85 */	bl func_80086F9C
/* 802B231C 0027B8DC  2C 03 00 00 */	cmpwi r3, 0
/* 802B2320 0027B8E0  41 82 00 38 */	beq .L_802B2358
/* 802B2324 0027B8E4  80 9E 01 04 */	lwz r4, 0x104(r30)
/* 802B2328 0027B8E8  80 1E 00 04 */	lwz r0, 4(r30)
/* 802B232C 0027B8EC  70 85 80 04 */	andi. r5, r4, 0x8004
/* 802B2330 0027B8F0  54 83 03 DE */	rlwinm r3, r4, 0, 0xf, 0xf
/* 802B2334 0027B8F4  50 83 07 38 */	rlwimi r3, r4, 0, 0x1c, 0x1c
/* 802B2338 0027B8F8  54 06 5F FE */	rlwinm r6, r0, 0xb, 0x1f, 0x1f
/* 802B233C 0027B8FC  7C 03 00 D0 */	neg r0, r3
/* 802B2340 0027B900  7C 85 00 D0 */	neg r4, r5
/* 802B2344 0027B904  7C 00 1B 78 */	or r0, r0, r3
/* 802B2348 0027B908  7C 84 2B 78 */	or r4, r4, r5
/* 802B234C 0027B90C  54 83 0F FE */	srwi r3, r4, 0x1f
/* 802B2350 0027B910  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802B2354 0027B914  48 00 00 34 */	b .L_802B2388
.L_802B2358:
/* 802B2358 0027B918  80 9E 01 04 */	lwz r4, 0x104(r30)
/* 802B235C 0027B91C  80 1E 00 04 */	lwz r0, 4(r30)
/* 802B2360 0027B920  70 85 80 04 */	andi. r5, r4, 0x8004
/* 802B2364 0027B924  54 83 03 DE */	rlwinm r3, r4, 0, 0xf, 0xf
/* 802B2368 0027B928  50 83 07 38 */	rlwimi r3, r4, 0, 0x1c, 0x1c
/* 802B236C 0027B92C  54 06 E7 FE */	rlwinm r6, r0, 0x1c, 0x1f, 0x1f
/* 802B2370 0027B930  7C 03 00 D0 */	neg r0, r3
/* 802B2374 0027B934  7C 85 00 D0 */	neg r4, r5
/* 802B2378 0027B938  7C 00 1B 78 */	or r0, r0, r3
/* 802B237C 0027B93C  7C 84 2B 78 */	or r4, r4, r5
/* 802B2380 0027B940  54 83 0F FE */	srwi r3, r4, 0x1f
/* 802B2384 0027B944  54 00 0F FE */	srwi r0, r0, 0x1f
.L_802B2388:
/* 802B2388 0027B948  2C 06 00 00 */	cmpwi r6, 0
/* 802B238C 0027B94C  41 82 00 2C */	beq .L_802B23B8
/* 802B2390 0027B950  38 00 00 04 */	li r0, 4
/* 802B2394 0027B954  98 1F 00 70 */	stb r0, 0x70(r31)
/* 802B2398 0027B958  38 7F 00 74 */	addi r3, r31, 0x74
/* 802B239C 0027B95C  4B F7 95 49 */	bl func_8022B8E4
/* 802B23A0 0027B960  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 802B23A4 0027B964  38 80 00 00 */	li r4, 0
/* 802B23A8 0027B968  4B F1 FD C5 */	bl func_801D216C
/* 802B23AC 0027B96C  38 60 00 03 */	li r3, 3
/* 802B23B0 0027B970  4B E8 5C C9 */	bl func_80138078
/* 802B23B4 0027B974  48 00 00 BC */	b .L_802B2470
.L_802B23B8:
/* 802B23B8 0027B978  2C 03 00 00 */	cmpwi r3, 0
/* 802B23BC 0027B97C  41 82 00 58 */	beq .L_802B2414
/* 802B23C0 0027B980  88 7F 00 71 */	lbz r3, 0x71(r31)
/* 802B23C4 0027B984  38 03 FF FF */	addi r0, r3, -1
/* 802B23C8 0027B988  98 1F 00 71 */	stb r0, 0x71(r31)
/* 802B23CC 0027B98C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802B23D0 0027B990  7C 00 07 75 */	extsb. r0, r0
/* 802B23D4 0027B994  40 80 00 0C */	bge .L_802B23E0
/* 802B23D8 0027B998  38 00 00 01 */	li r0, 1
/* 802B23DC 0027B99C  98 1F 00 71 */	stb r0, 0x71(r31)
.L_802B23E0:
/* 802B23E0 0027B9A0  88 BF 00 71 */	lbz r5, 0x71(r31)
/* 802B23E4 0027B9A4  38 61 00 14 */	addi r3, r1, 0x14
/* 802B23E8 0027B9A8  38 9F 00 74 */	addi r4, r31, 0x74
/* 802B23EC 0027B9AC  4B F7 9D C9 */	bl func_8022C1B4
/* 802B23F0 0027B9B0  81 9F 00 B0 */	lwz r12, 0xb0(r31)
/* 802B23F4 0027B9B4  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 802B23F8 0027B9B8  38 81 00 14 */	addi r4, r1, 0x14
/* 802B23FC 0027B9BC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802B2400 0027B9C0  7D 89 03 A6 */	mtctr r12
/* 802B2404 0027B9C4  4E 80 04 21 */	bctrl 
/* 802B2408 0027B9C8  38 60 00 01 */	li r3, 1
/* 802B240C 0027B9CC  4B E8 5C 6D */	bl func_80138078
/* 802B2410 0027B9D0  48 00 00 60 */	b .L_802B2470
.L_802B2414:
/* 802B2414 0027B9D4  2C 00 00 00 */	cmpwi r0, 0
/* 802B2418 0027B9D8  41 82 00 58 */	beq .L_802B2470
/* 802B241C 0027B9DC  88 7F 00 71 */	lbz r3, 0x71(r31)
/* 802B2420 0027B9E0  38 03 00 01 */	addi r0, r3, 1
/* 802B2424 0027B9E4  98 1F 00 71 */	stb r0, 0x71(r31)
/* 802B2428 0027B9E8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802B242C 0027B9EC  7C 00 07 74 */	extsb r0, r0
/* 802B2430 0027B9F0  2C 00 00 01 */	cmpwi r0, 1
/* 802B2434 0027B9F4  40 81 00 0C */	ble .L_802B2440
/* 802B2438 0027B9F8  38 00 00 00 */	li r0, 0
/* 802B243C 0027B9FC  98 1F 00 71 */	stb r0, 0x71(r31)
.L_802B2440:
/* 802B2440 0027BA00  88 BF 00 71 */	lbz r5, 0x71(r31)
/* 802B2444 0027BA04  38 61 00 08 */	addi r3, r1, 8
/* 802B2448 0027BA08  38 9F 00 74 */	addi r4, r31, 0x74
/* 802B244C 0027BA0C  4B F7 9D 69 */	bl func_8022C1B4
/* 802B2450 0027BA10  81 9F 00 B0 */	lwz r12, 0xb0(r31)
/* 802B2454 0027BA14  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 802B2458 0027BA18  38 81 00 08 */	addi r4, r1, 8
/* 802B245C 0027BA1C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802B2460 0027BA20  7D 89 03 A6 */	mtctr r12
/* 802B2464 0027BA24  4E 80 04 21 */	bctrl 
/* 802B2468 0027BA28  38 60 00 01 */	li r3, 1
/* 802B246C 0027BA2C  4B E8 5C 0D */	bl func_80138078
.L_802B2470:
/* 802B2470 0027BA30  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802B2474 0027BA34  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802B2478 0027BA38  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802B247C 0027BA3C  7C 08 03 A6 */	mtlr r0
/* 802B2480 0027BA40  38 21 00 30 */	addi r1, r1, 0x30
/* 802B2484 0027BA44  4E 80 00 20 */	blr 

.global func_802B2488
func_802B2488:
/* 802B2488 0027BA48  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802B248C 0027BA4C  7C 08 02 A6 */	mflr r0
/* 802B2490 0027BA50  90 01 00 34 */	stw r0, 0x34(r1)
/* 802B2494 0027BA54  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802B2498 0027BA58  7C 7F 1B 78 */	mr r31, r3
/* 802B249C 0027BA5C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802B24A0 0027BA60  4B DD 4D 99 */	bl func_80087238
/* 802B24A4 0027BA64  7C 7E 1B 78 */	mr r30, r3
/* 802B24A8 0027BA68  38 60 FF FF */	li r3, -1
/* 802B24AC 0027BA6C  4B DD 4A F1 */	bl func_80086F9C
/* 802B24B0 0027BA70  2C 03 00 00 */	cmpwi r3, 0
/* 802B24B4 0027BA74  41 82 00 38 */	beq .L_802B24EC
/* 802B24B8 0027BA78  80 9E 01 04 */	lwz r4, 0x104(r30)
/* 802B24BC 0027BA7C  80 1E 00 04 */	lwz r0, 4(r30)
/* 802B24C0 0027BA80  70 85 80 04 */	andi. r5, r4, 0x8004
/* 802B24C4 0027BA84  54 83 03 DE */	rlwinm r3, r4, 0, 0xf, 0xf
/* 802B24C8 0027BA88  50 83 07 38 */	rlwimi r3, r4, 0, 0x1c, 0x1c
/* 802B24CC 0027BA8C  54 06 5F FE */	rlwinm r6, r0, 0xb, 0x1f, 0x1f
/* 802B24D0 0027BA90  7C 03 00 D0 */	neg r0, r3
/* 802B24D4 0027BA94  7C 85 00 D0 */	neg r4, r5
/* 802B24D8 0027BA98  7C 00 1B 78 */	or r0, r0, r3
/* 802B24DC 0027BA9C  7C 84 2B 78 */	or r4, r4, r5
/* 802B24E0 0027BAA0  54 83 0F FE */	srwi r3, r4, 0x1f
/* 802B24E4 0027BAA4  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802B24E8 0027BAA8  48 00 00 34 */	b .L_802B251C
.L_802B24EC:
/* 802B24EC 0027BAAC  80 9E 01 04 */	lwz r4, 0x104(r30)
/* 802B24F0 0027BAB0  80 1E 00 04 */	lwz r0, 4(r30)
/* 802B24F4 0027BAB4  70 85 80 04 */	andi. r5, r4, 0x8004
/* 802B24F8 0027BAB8  54 83 03 DE */	rlwinm r3, r4, 0, 0xf, 0xf
/* 802B24FC 0027BABC  50 83 07 38 */	rlwimi r3, r4, 0, 0x1c, 0x1c
/* 802B2500 0027BAC0  54 06 E7 FE */	rlwinm r6, r0, 0x1c, 0x1f, 0x1f
/* 802B2504 0027BAC4  7C 03 00 D0 */	neg r0, r3
/* 802B2508 0027BAC8  7C 85 00 D0 */	neg r4, r5
/* 802B250C 0027BACC  7C 00 1B 78 */	or r0, r0, r3
/* 802B2510 0027BAD0  7C 84 2B 78 */	or r4, r4, r5
/* 802B2514 0027BAD4  54 83 0F FE */	srwi r3, r4, 0x1f
/* 802B2518 0027BAD8  54 00 0F FE */	srwi r0, r0, 0x1f
.L_802B251C:
/* 802B251C 0027BADC  2C 06 00 00 */	cmpwi r6, 0
/* 802B2520 0027BAE0  41 82 00 2C */	beq .L_802B254C
/* 802B2524 0027BAE4  38 00 00 08 */	li r0, 8
/* 802B2528 0027BAE8  98 1F 00 70 */	stb r0, 0x70(r31)
/* 802B252C 0027BAEC  38 7F 00 74 */	addi r3, r31, 0x74
/* 802B2530 0027BAF0  4B F7 93 B5 */	bl func_8022B8E4
/* 802B2534 0027BAF4  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 802B2538 0027BAF8  38 80 00 00 */	li r4, 0
/* 802B253C 0027BAFC  4B F1 FC 31 */	bl func_801D216C
/* 802B2540 0027BB00  38 60 00 03 */	li r3, 3
/* 802B2544 0027BB04  4B E8 5B 35 */	bl func_80138078
/* 802B2548 0027BB08  48 00 00 BC */	b .L_802B2604
.L_802B254C:
/* 802B254C 0027BB0C  2C 03 00 00 */	cmpwi r3, 0
/* 802B2550 0027BB10  41 82 00 58 */	beq .L_802B25A8
/* 802B2554 0027BB14  88 7F 00 71 */	lbz r3, 0x71(r31)
/* 802B2558 0027BB18  38 03 FF FF */	addi r0, r3, -1
/* 802B255C 0027BB1C  98 1F 00 71 */	stb r0, 0x71(r31)
/* 802B2560 0027BB20  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802B2564 0027BB24  7C 00 07 75 */	extsb. r0, r0
/* 802B2568 0027BB28  40 80 00 0C */	bge .L_802B2574
/* 802B256C 0027BB2C  38 00 00 01 */	li r0, 1
/* 802B2570 0027BB30  98 1F 00 71 */	stb r0, 0x71(r31)
.L_802B2574:
/* 802B2574 0027BB34  88 BF 00 71 */	lbz r5, 0x71(r31)
/* 802B2578 0027BB38  38 61 00 14 */	addi r3, r1, 0x14
/* 802B257C 0027BB3C  38 9F 00 74 */	addi r4, r31, 0x74
/* 802B2580 0027BB40  4B F7 9C 35 */	bl func_8022C1B4
/* 802B2584 0027BB44  81 9F 00 B0 */	lwz r12, 0xb0(r31)
/* 802B2588 0027BB48  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 802B258C 0027BB4C  38 81 00 14 */	addi r4, r1, 0x14
/* 802B2590 0027BB50  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802B2594 0027BB54  7D 89 03 A6 */	mtctr r12
/* 802B2598 0027BB58  4E 80 04 21 */	bctrl 
/* 802B259C 0027BB5C  38 60 00 01 */	li r3, 1
/* 802B25A0 0027BB60  4B E8 5A D9 */	bl func_80138078
/* 802B25A4 0027BB64  48 00 00 60 */	b .L_802B2604
.L_802B25A8:
/* 802B25A8 0027BB68  2C 00 00 00 */	cmpwi r0, 0
/* 802B25AC 0027BB6C  41 82 00 58 */	beq .L_802B2604
/* 802B25B0 0027BB70  88 7F 00 71 */	lbz r3, 0x71(r31)
/* 802B25B4 0027BB74  38 03 00 01 */	addi r0, r3, 1
/* 802B25B8 0027BB78  98 1F 00 71 */	stb r0, 0x71(r31)
/* 802B25BC 0027BB7C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802B25C0 0027BB80  7C 00 07 74 */	extsb r0, r0
/* 802B25C4 0027BB84  2C 00 00 01 */	cmpwi r0, 1
/* 802B25C8 0027BB88  40 81 00 0C */	ble .L_802B25D4
/* 802B25CC 0027BB8C  38 00 00 00 */	li r0, 0
/* 802B25D0 0027BB90  98 1F 00 71 */	stb r0, 0x71(r31)
.L_802B25D4:
/* 802B25D4 0027BB94  88 BF 00 71 */	lbz r5, 0x71(r31)
/* 802B25D8 0027BB98  38 61 00 08 */	addi r3, r1, 8
/* 802B25DC 0027BB9C  38 9F 00 74 */	addi r4, r31, 0x74
/* 802B25E0 0027BBA0  4B F7 9B D5 */	bl func_8022C1B4
/* 802B25E4 0027BBA4  81 9F 00 B0 */	lwz r12, 0xb0(r31)
/* 802B25E8 0027BBA8  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 802B25EC 0027BBAC  38 81 00 08 */	addi r4, r1, 8
/* 802B25F0 0027BBB0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802B25F4 0027BBB4  7D 89 03 A6 */	mtctr r12
/* 802B25F8 0027BBB8  4E 80 04 21 */	bctrl 
/* 802B25FC 0027BBBC  38 60 00 01 */	li r3, 1
/* 802B2600 0027BBC0  4B E8 5A 79 */	bl func_80138078
.L_802B2604:
/* 802B2604 0027BBC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802B2608 0027BBC8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802B260C 0027BBCC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802B2610 0027BBD0  7C 08 03 A6 */	mtlr r0
/* 802B2614 0027BBD4  38 21 00 30 */	addi r1, r1, 0x30
/* 802B2618 0027BBD8  4E 80 00 20 */	blr 

.global func_802B261C
func_802B261C:
/* 802B261C 0027BBDC  38 63 FF A8 */	addi r3, r3, -88
/* 802B2620 0027BBE0  4B FF FA E4 */	b func_802B2104

.global func_802B2624
func_802B2624:
/* 802B2624 0027BBE4  38 63 FF A8 */	addi r3, r3, -88
/* 802B2628 0027BBE8  4B FF E8 F0 */	b func_802B0F18

.global func_802B262C
func_802B262C:
/* 802B262C 0027BBEC  80 6D B3 70 */	lwz r3, lbl_806674F0@sda21(r13)
/* 802B2630 0027BBF0  4E 80 00 20 */	blr 

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global CMenuGameClear_typestr
CMenuGameClear_typestr:
	.asciz "CMenuGameClear"
	.balign 4


.global lbl_8050C948
lbl_8050C948:
	.asciz "JNL_playaward"
	.asciz "clear_flg"
	.asciz "pc_arts"
	.asciz "idx"
	.asciz "CMenuGameClear"
	.asciz "MNU_sysmes"
	.asciz "name"
	.4byte 0
	.byte 0x00
	

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global __vt__CMenuGameClear
__vt__CMenuGameClear:
	.4byte __RTTI__CMenuGameClear
	.4byte 0
	.4byte func_802B0F18
	.4byte CChildListNode_Reset
	.4byte func_802B0FA4
	.4byte func_802B13BC
	.4byte func_802B1440
	.4byte func_80101FB8
	.4byte func_80043F20
	.4byte __RTTI__CMenuGameClear
	.4byte 0xFFFFFFA8
	.4byte func_802B2624
	.4byte func_802B261C
	.4byte func_802B2104

.global CMenuGameClear_hierarchy
CMenuGameClear_hierarchy:
	.4byte __RTTI__IScnRender
	.4byte 0x00000058
	.4byte __RTTI__CDoubleListNode
	.4byte 0
	.4byte __RTTI__CChildListNode
	.4byte 0
	.4byte __RTTI__CProcess
	.4byte 0
	.4byte __RTTI__CTTask_IUICf
	.4byte 0
	.4byte __RTTI__IUICf
	.4byte 0
	.4byte 0
	.4byte 0

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global __RTTI__CMenuGameClear
__RTTI__CMenuGameClear:
	.4byte CMenuGameClear_typestr
	.4byte CMenuGameClear_hierarchy

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.global lbl_806674E8
lbl_806674E8:
	.skip 0x8

.section extab, "a"  # 0x800066E0 - 0x80021020

.global lbl_8001B840
lbl_8001B840:
	.4byte 0x20080000
	.4byte 0x000000CC
	.4byte 0x0000004C
	.4byte 0x000000E0
	.4byte 0x00000040
	.4byte 0x000000EC
	.4byte 0x00000034
	.4byte 0x00000100
	.4byte 0x00000028
	.4byte 0
	.4byte 0x0780001D
	.4byte 0x000000B0
	.4byte func_801D2A38
	.4byte 0x0780001D
	.4byte 0x00000074
	.4byte func_8022B6A0
	.4byte 0x0780001D
	.4byte 0x00000060
	.4byte func_8045F580
	.4byte 0x0680001D
	.4byte 0x00000058
	.4byte func_8004031C
	.4byte 0x8680001D
	.4byte 0
	.4byte func_800FED0C

.global lbl_8001B8A4
lbl_8001B8A4:
	.4byte 0x10080000
	.4byte 0

.global lbl_8001B8AC
lbl_8001B8AC:
	.4byte 0x10080000
	.4byte 0


.section extabindex, "a"  # 0x80021020 - 0x80039220

.4byte __ct__CMenuGameClear
	.4byte 0x00000144
	.4byte lbl_8001B840
	.4byte func_802B22F4
	.4byte 0x00000194
	.4byte lbl_8001B8A4
	.4byte func_802B2488
	.4byte 0x00000194
	.4byte lbl_8001B8AC
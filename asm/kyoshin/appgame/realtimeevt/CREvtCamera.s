.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_8017FF78
func_8017FF78:
/* 8017FF78 00149538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8017FF7C 0014953C  7C 08 02 A6 */	mflr r0
/* 8017FF80 00149540  90 01 00 14 */	stw r0, 0x14(r1)
/* 8017FF84 00149544  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8017FF88 00149548  7C 9F 23 78 */	mr r31, r4
/* 8017FF8C 0014954C  38 80 00 00 */	li r4, 0
/* 8017FF90 00149550  93 C1 00 08 */	stw r30, 8(r1)
/* 8017FF94 00149554  7C 7E 1B 78 */	mr r30, r3
/* 8017FF98 00149558  48 00 56 F9 */	bl func_80185690
/* 8017FF9C 0014955C  C0 42 9D E4 */	lfs f2, float_8066A164@sda21(r2)
/* 8017FFA0 00149560  3C 80 80 53 */	lis r4, __vt__cf_CREvtCamera@ha
/* 8017FFA4 00149564  38 60 00 00 */	li r3, 0
/* 8017FFA8 00149568  C0 22 9D E8 */	lfs f1, float_8066A168@sda21(r2)
/* 8017FFAC 0014956C  C0 02 9D EC */	lfs f0, float_8066A16C@sda21(r2)
/* 8017FFB0 00149570  38 84 54 B8 */	addi r4, r4, __vt__cf_CREvtCamera@l
/* 8017FFB4 00149574  38 00 FF FF */	li r0, -1
/* 8017FFB8 00149578  90 9E 00 00 */	stw r4, 0(r30)
/* 8017FFBC 0014957C  90 7E 00 14 */	stw r3, 0x14(r30)
/* 8017FFC0 00149580  93 FE 00 18 */	stw r31, 0x18(r30)
/* 8017FFC4 00149584  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 8017FFC8 00149588  90 7E 00 20 */	stw r3, 0x20(r30)
/* 8017FFCC 0014958C  90 7E 00 24 */	stw r3, 0x24(r30)
/* 8017FFD0 00149590  90 7E 00 88 */	stw r3, 0x88(r30)
/* 8017FFD4 00149594  D0 5E 00 8C */	stfs f2, 0x8c(r30)
/* 8017FFD8 00149598  90 7E 00 90 */	stw r3, 0x90(r30)
/* 8017FFDC 0014959C  90 7E 00 94 */	stw r3, 0x94(r30)
/* 8017FFE0 001495A0  90 7E 00 98 */	stw r3, 0x98(r30)
/* 8017FFE4 001495A4  90 7E 00 9C */	stw r3, 0x9c(r30)
/* 8017FFE8 001495A8  90 7E 00 A0 */	stw r3, 0xa0(r30)
/* 8017FFEC 001495AC  98 7E 00 A4 */	stb r3, 0xa4(r30)
/* 8017FFF0 001495B0  98 7E 00 A5 */	stb r3, 0xa5(r30)
/* 8017FFF4 001495B4  90 7E 02 A8 */	stw r3, 0x2a8(r30)
/* 8017FFF8 001495B8  90 7E 02 AC */	stw r3, 0x2ac(r30)
/* 8017FFFC 001495BC  90 7E 02 B0 */	stw r3, 0x2b0(r30)
/* 80180000 001495C0  90 7E 04 34 */	stw r3, 0x434(r30)
/* 80180004 001495C4  98 7E 04 38 */	stb r3, 0x438(r30)
/* 80180008 001495C8  90 1E 04 3C */	stw r0, 0x43c(r30)
/* 8018000C 001495CC  D0 3E 04 40 */	stfs f1, 0x440(r30)
/* 80180010 001495D0  D0 1E 04 44 */	stfs f0, 0x444(r30)
/* 80180014 001495D4  4B F0 21 E5 */	bl func_800821F8
/* 80180018 001495D8  2C 03 00 00 */	cmpwi r3, 0
/* 8018001C 001495DC  41 82 00 4C */	beq .L_80180068
/* 80180020 001495E0  4B F0 21 D9 */	bl func_800821F8
/* 80180024 001495E4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80180028 001495E8  2C 00 00 00 */	cmpwi r0, 0
/* 8018002C 001495EC  41 82 00 3C */	beq .L_80180068
/* 80180030 001495F0  4B F0 21 C9 */	bl func_800821F8
/* 80180034 001495F4  81 83 00 00 */	lwz r12, 0(r3)
/* 80180038 001495F8  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 8018003C 001495FC  7D 89 03 A6 */	mtctr r12
/* 80180040 00149600  4E 80 04 21 */	bctrl 
/* 80180044 00149604  D0 3E 00 8C */	stfs f1, 0x8c(r30)
/* 80180048 00149608  4B F0 21 B1 */	bl func_800821F8
/* 8018004C 0014960C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80180050 00149610  C0 03 01 EC */	lfs f0, 0x1ec(r3)
/* 80180054 00149614  D0 1E 04 40 */	stfs f0, 0x440(r30)
/* 80180058 00149618  4B F0 21 A1 */	bl func_800821F8
/* 8018005C 0014961C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80180060 00149620  C0 03 01 F0 */	lfs f0, 0x1f0(r3)
/* 80180064 00149624  D0 1E 04 44 */	stfs f0, 0x444(r30)
.L_80180068:
/* 80180068 00149628  93 CD AA 18 */	stw r30, lbl_80666B98@sda21(r13)
/* 8018006C 0014962C  7F C3 F3 78 */	mr r3, r30
/* 80180070 00149630  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80180074 00149634  83 C1 00 08 */	lwz r30, 8(r1)
/* 80180078 00149638  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018007C 0014963C  7C 08 03 A6 */	mtlr r0
/* 80180080 00149640  38 21 00 10 */	addi r1, r1, 0x10
/* 80180084 00149644  4E 80 00 20 */	blr 

.global func_80180088
func_80180088:
/* 80180088 00149648  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8018008C 0014964C  7C 08 02 A6 */	mflr r0
/* 80180090 00149650  2C 03 00 00 */	cmpwi r3, 0
/* 80180094 00149654  90 01 00 44 */	stw r0, 0x44(r1)
/* 80180098 00149658  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8018009C 0014965C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 801800A0 00149660  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 801800A4 00149664  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 801800A8 00149668  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801800AC 0014966C  7C 9F 23 78 */	mr r31, r4
/* 801800B0 00149670  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801800B4 00149674  7C 7E 1B 78 */	mr r30, r3
/* 801800B8 00149678  41 82 01 2C */	beq .L_801801E4
/* 801800BC 0014967C  3C 80 80 53 */	lis r4, __vt__cf_CREvtCamera@ha
/* 801800C0 00149680  38 00 00 00 */	li r0, 0
/* 801800C4 00149684  38 84 54 B8 */	addi r4, r4, __vt__cf_CREvtCamera@l
/* 801800C8 00149688  90 83 00 00 */	stw r4, 0(r3)
/* 801800CC 0014968C  90 0D AA 18 */	stw r0, lbl_80666B98@sda21(r13)
/* 801800D0 00149690  4B F0 21 29 */	bl func_800821F8
/* 801800D4 00149694  2C 03 00 00 */	cmpwi r3, 0
/* 801800D8 00149698  41 82 00 94 */	beq .L_8018016C
/* 801800DC 0014969C  4B F0 21 1D */	bl func_800821F8
/* 801800E0 001496A0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801800E4 001496A4  2C 00 00 00 */	cmpwi r0, 0
/* 801800E8 001496A8  41 82 00 84 */	beq .L_8018016C
/* 801800EC 001496AC  4B F0 21 0D */	bl func_800821F8
/* 801800F0 001496B0  3C 80 04 00 */	lis r4, 0x400
/* 801800F4 001496B4  38 A0 00 00 */	li r5, 0
/* 801800F8 001496B8  4B EE BA FD */	bl func_8006BBF4
/* 801800FC 001496BC  88 1E 00 A4 */	lbz r0, 0xa4(r30)
/* 80180100 001496C0  2C 00 00 00 */	cmpwi r0, 0
/* 80180104 001496C4  41 82 00 34 */	beq .L_80180138
/* 80180108 001496C8  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 8018010C 001496CC  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 80180110 001496D0  C0 5E 00 64 */	lfs f2, 0x64(r30)
/* 80180114 001496D4  D0 41 00 08 */	stfs f2, 8(r1)
/* 80180118 001496D8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8018011C 001496DC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80180120 001496E0  4B F0 20 D9 */	bl func_800821F8
/* 80180124 001496E4  81 83 00 00 */	lwz r12, 0(r3)
/* 80180128 001496E8  38 81 00 08 */	addi r4, r1, 8
/* 8018012C 001496EC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80180130 001496F0  7D 89 03 A6 */	mtctr r12
/* 80180134 001496F4  4E 80 04 21 */	bctrl 
.L_80180138:
/* 80180138 001496F8  4B F0 20 C1 */	bl func_800821F8
/* 8018013C 001496FC  81 83 00 00 */	lwz r12, 0(r3)
/* 80180140 00149700  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 80180144 00149704  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80180148 00149708  7D 89 03 A6 */	mtctr r12
/* 8018014C 0014970C  4E 80 04 21 */	bctrl 
/* 80180150 00149710  C3 DE 04 44 */	lfs f30, 0x444(r30)
/* 80180154 00149714  C3 FE 04 40 */	lfs f31, 0x440(r30)
/* 80180158 00149718  4B F0 20 A1 */	bl func_800821F8
/* 8018015C 0014971C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80180160 00149720  D3 E3 01 EC */	stfs f31, 0x1ec(r3)
/* 80180164 00149724  D3 C3 01 F0 */	stfs f30, 0x1f0(r3)
/* 80180168 00149728  48 31 E9 F9 */	bl func_8049EB60
.L_8018016C:
/* 8018016C 0014972C  81 9E 00 00 */	lwz r12, 0(r30)
/* 80180170 00149730  7F C3 F3 78 */	mr r3, r30
/* 80180174 00149734  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80180178 00149738  7D 89 03 A6 */	mtctr r12
/* 8018017C 0014973C  4E 80 04 21 */	bctrl 
/* 80180180 00149740  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 80180184 00149744  2C 03 00 00 */	cmpwi r3, 0
/* 80180188 00149748  41 82 00 1C */	beq .L_801801A4
/* 8018018C 0014974C  80 0D A5 94 */	lwz r0, lbl_80666714@sda21(r13)
/* 80180190 00149750  2C 00 00 00 */	cmpwi r0, 0
/* 80180194 00149754  41 82 00 08 */	beq .L_8018019C
/* 80180198 00149758  48 31 5C C9 */	bl func_80495E60
.L_8018019C:
/* 8018019C 0014975C  38 00 00 00 */	li r0, 0
/* 801801A0 00149760  90 1E 00 20 */	stw r0, 0x20(r30)
.L_801801A4:
/* 801801A4 00149764  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801801A8 00149768  2C 03 00 00 */	cmpwi r3, 0
/* 801801AC 0014976C  41 82 00 1C */	beq .L_801801C8
/* 801801B0 00149770  80 0D A5 94 */	lwz r0, lbl_80666714@sda21(r13)
/* 801801B4 00149774  2C 00 00 00 */	cmpwi r0, 0
/* 801801B8 00149778  41 82 00 08 */	beq .L_801801C0
/* 801801BC 0014977C  48 31 5C A5 */	bl func_80495E60
.L_801801C0:
/* 801801C0 00149780  38 00 00 00 */	li r0, 0
/* 801801C4 00149784  90 1E 00 1C */	stw r0, 0x1c(r30)
.L_801801C8:
/* 801801C8 00149788  7F C3 F3 78 */	mr r3, r30
/* 801801CC 0014978C  38 80 00 00 */	li r4, 0
/* 801801D0 00149790  48 00 54 F1 */	bl func_801856C0
/* 801801D4 00149794  2C 1F 00 00 */	cmpwi r31, 0
/* 801801D8 00149798  40 81 00 0C */	ble .L_801801E4
/* 801801DC 0014979C  7F C3 F3 78 */	mr r3, r30
/* 801801E0 001497A0  48 00 55 75 */	bl func_80185754
.L_801801E4:
/* 801801E4 001497A4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 801801E8 001497A8  7F C3 F3 78 */	mr r3, r30
/* 801801EC 001497AC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801801F0 001497B0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 801801F4 001497B4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 801801F8 001497B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801801FC 001497BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80180200 001497C0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80180204 001497C4  7C 08 03 A6 */	mtlr r0
/* 80180208 001497C8  38 21 00 40 */	addi r1, r1, 0x40
/* 8018020C 001497CC  4E 80 00 20 */	blr 

.global func_80180210
func_80180210:
/* 80180210 001497D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80180214 001497D4  7C 08 02 A6 */	mflr r0
/* 80180218 001497D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018021C 001497DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80180220 001497E0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80180224 001497E4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80180228 001497E8  80 8D AA 18 */	lwz r4, lbl_80666B98@sda21(r13)
/* 8018022C 001497EC  2C 04 00 00 */	cmpwi r4, 0
/* 80180230 001497F0  41 82 01 48 */	beq .L_80180378
/* 80180234 001497F4  2C 03 00 00 */	cmpwi r3, 0
/* 80180238 001497F8  41 82 00 BC */	beq .L_801802F4
/* 8018023C 001497FC  3B C0 00 00 */	li r30, 0
/* 80180240 00149800  3B E0 00 00 */	li r31, 0
/* 80180244 00149804  48 00 00 94 */	b .L_801802D8
.L_80180248:
/* 80180248 00149808  7C 63 FA 14 */	add r3, r3, r31
/* 8018024C 0014980C  AB A3 00 A6 */	lha r29, 0xa6(r3)
/* 80180250 00149810  7F A3 EB 78 */	mr r3, r29
/* 80180254 00149814  48 2E 2B C9 */	bl func_80462E1C
/* 80180258 00149818  80 8D AA 18 */	lwz r4, lbl_80666B98@sda21(r13)
/* 8018025C 0014981C  54 66 06 3E */	clrlwi r6, r3, 0x18
/* 80180260 00149820  80 64 04 34 */	lwz r3, 0x434(r4)
/* 80180264 00149824  7C 69 03 A6 */	mtctr r3
/* 80180268 00149828  2C 03 00 00 */	cmpwi r3, 0
/* 8018026C 0014982C  40 81 00 20 */	ble .L_8018028C
.L_80180270:
/* 80180270 00149830  A8 04 03 34 */	lha r0, 0x334(r4)
/* 80180274 00149834  7C 1D 00 00 */	cmpw r29, r0
/* 80180278 00149838  40 82 00 0C */	bne .L_80180284
/* 8018027C 0014983C  38 00 00 01 */	li r0, 1
/* 80180280 00149840  48 00 00 10 */	b .L_80180290
.L_80180284:
/* 80180284 00149844  38 84 00 02 */	addi r4, r4, 2
/* 80180288 00149848  42 00 FF E8 */	bdnz .L_80180270
.L_8018028C:
/* 8018028C 0014984C  38 00 00 00 */	li r0, 0
.L_80180290:
/* 80180290 00149850  2C 00 00 00 */	cmpwi r0, 0
/* 80180294 00149854  40 82 00 2C */	bne .L_801802C0
/* 80180298 00149858  80 0D AA 18 */	lwz r0, lbl_80666B98@sda21(r13)
/* 8018029C 0014985C  7C 60 1A 14 */	add r3, r0, r3
/* 801802A0 00149860  98 C3 02 B4 */	stb r6, 0x2b4(r3)
/* 801802A4 00149864  80 AD AA 18 */	lwz r5, lbl_80666B98@sda21(r13)
/* 801802A8 00149868  80 65 04 34 */	lwz r3, 0x434(r5)
/* 801802AC 0014986C  54 60 08 3C */	slwi r0, r3, 1
/* 801802B0 00149870  38 83 00 01 */	addi r4, r3, 1
/* 801802B4 00149874  7C 65 02 14 */	add r3, r5, r0
/* 801802B8 00149878  B3 A3 03 34 */	sth r29, 0x334(r3)
/* 801802BC 0014987C  90 85 04 34 */	stw r4, 0x434(r5)
.L_801802C0:
/* 801802C0 00149880  2C 06 00 00 */	cmpwi r6, 0
/* 801802C4 00149884  41 82 00 0C */	beq .L_801802D0
/* 801802C8 00149888  7F A3 EB 78 */	mr r3, r29
/* 801802CC 0014988C  48 2E 2A 91 */	bl func_80462D5C
.L_801802D0:
/* 801802D0 00149890  3B FF 00 02 */	addi r31, r31, 2
/* 801802D4 00149894  3B DE 00 01 */	addi r30, r30, 1
.L_801802D8:
/* 801802D8 00149898  80 6D AA 18 */	lwz r3, lbl_80666B98@sda21(r13)
/* 801802DC 0014989C  80 03 02 A8 */	lwz r0, 0x2a8(r3)
/* 801802E0 001498A0  7C 1E 00 00 */	cmpw r30, r0
/* 801802E4 001498A4  41 80 FF 64 */	blt .L_80180248
/* 801802E8 001498A8  38 00 00 01 */	li r0, 1
/* 801802EC 001498AC  98 03 04 38 */	stb r0, 0x438(r3)
/* 801802F0 001498B0  48 00 00 88 */	b .L_80180378
.L_801802F4:
/* 801802F4 001498B4  88 04 04 38 */	lbz r0, 0x438(r4)
/* 801802F8 001498B8  2C 00 00 00 */	cmpwi r0, 0
/* 801802FC 001498BC  41 82 00 7C */	beq .L_80180378
/* 80180300 001498C0  3B A0 00 00 */	li r29, 0
/* 80180304 001498C4  3B E0 00 00 */	li r31, 0
/* 80180308 001498C8  48 00 00 58 */	b .L_80180360
.L_8018030C:
/* 8018030C 001498CC  7C 63 FA 14 */	add r3, r3, r31
/* 80180310 001498D0  AB C3 03 34 */	lha r30, 0x334(r3)
/* 80180314 001498D4  7F C3 F3 78 */	mr r3, r30
/* 80180318 001498D8  48 2E 2B 05 */	bl func_80462E1C
/* 8018031C 001498DC  80 0D AA 18 */	lwz r0, lbl_80666B98@sda21(r13)
/* 80180320 001498E0  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80180324 001498E4  7C 60 EA 14 */	add r3, r0, r29
/* 80180328 001498E8  88 03 02 B4 */	lbz r0, 0x2b4(r3)
/* 8018032C 001498EC  2C 00 00 00 */	cmpwi r0, 0
/* 80180330 001498F0  41 82 00 18 */	beq .L_80180348
/* 80180334 001498F4  2C 04 00 00 */	cmpwi r4, 0
/* 80180338 001498F8  40 82 00 20 */	bne .L_80180358
/* 8018033C 001498FC  7F C3 F3 78 */	mr r3, r30
/* 80180340 00149900  48 2E 29 C5 */	bl func_80462D04
/* 80180344 00149904  48 00 00 14 */	b .L_80180358
.L_80180348:
/* 80180348 00149908  2C 04 00 00 */	cmpwi r4, 0
/* 8018034C 0014990C  41 82 00 0C */	beq .L_80180358
/* 80180350 00149910  7F C3 F3 78 */	mr r3, r30
/* 80180354 00149914  48 2E 2A 09 */	bl func_80462D5C
.L_80180358:
/* 80180358 00149918  3B FF 00 02 */	addi r31, r31, 2
/* 8018035C 0014991C  3B BD 00 01 */	addi r29, r29, 1
.L_80180360:
/* 80180360 00149920  80 6D AA 18 */	lwz r3, lbl_80666B98@sda21(r13)
/* 80180364 00149924  80 03 04 34 */	lwz r0, 0x434(r3)
/* 80180368 00149928  7C 1D 00 00 */	cmpw r29, r0
/* 8018036C 0014992C  41 80 FF A0 */	blt .L_8018030C
/* 80180370 00149930  38 00 00 00 */	li r0, 0
/* 80180374 00149934  98 03 04 38 */	stb r0, 0x438(r3)
.L_80180378:
/* 80180378 00149938  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018037C 0014993C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80180380 00149940  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80180384 00149944  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80180388 00149948  7C 08 03 A6 */	mtlr r0
/* 8018038C 0014994C  38 21 00 20 */	addi r1, r1, 0x20
/* 80180390 00149950  4E 80 00 20 */	blr 

.global func_80180394
func_80180394:
/* 80180394 00149954  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80180398 00149958  7C 08 02 A6 */	mflr r0
/* 8018039C 0014995C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801803A0 00149960  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801803A4 00149964  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801803A8 00149968  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801803AC 0014996C  80 0D AA 18 */	lwz r0, lbl_80666B98@sda21(r13)
/* 801803B0 00149970  2C 00 00 00 */	cmpwi r0, 0
/* 801803B4 00149974  41 82 00 44 */	beq .L_801803F8
/* 801803B8 00149978  3B C0 00 00 */	li r30, 0
/* 801803BC 0014997C  3B E0 00 00 */	li r31, 0
/* 801803C0 00149980  48 00 00 28 */	b .L_801803E8
.L_801803C4:
/* 801803C4 00149984  7C 63 FA 14 */	add r3, r3, r31
/* 801803C8 00149988  AB A3 01 A6 */	lha r29, 0x1a6(r3)
/* 801803CC 0014998C  7F A3 EB 78 */	mr r3, r29
/* 801803D0 00149990  48 2E 29 35 */	bl func_80462D04
/* 801803D4 00149994  7F A3 EB 78 */	mr r3, r29
/* 801803D8 00149998  38 80 00 01 */	li r4, 1
/* 801803DC 0014999C  48 2E 2B 71 */	bl func_80462F4C
/* 801803E0 001499A0  3B FF 00 02 */	addi r31, r31, 2
/* 801803E4 001499A4  3B DE 00 01 */	addi r30, r30, 1
.L_801803E8:
/* 801803E8 001499A8  80 6D AA 18 */	lwz r3, lbl_80666B98@sda21(r13)
/* 801803EC 001499AC  80 03 02 AC */	lwz r0, 0x2ac(r3)
/* 801803F0 001499B0  7C 1E 00 00 */	cmpw r30, r0
/* 801803F4 001499B4  41 80 FF D0 */	blt .L_801803C4
.L_801803F8:
/* 801803F8 001499B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801803FC 001499BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80180400 001499C0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80180404 001499C4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80180408 001499C8  7C 08 03 A6 */	mtlr r0
/* 8018040C 001499CC  38 21 00 20 */	addi r1, r1, 0x20
/* 80180410 001499D0  4E 80 00 20 */	blr 

.global func_80180414
func_80180414:
/* 80180414 001499D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80180418 001499D8  7C 08 02 A6 */	mflr r0
/* 8018041C 001499DC  3C 80 80 50 */	lis r4, lbl_804FEF08@ha
/* 80180420 001499E0  38 A0 00 00 */	li r5, 0
/* 80180424 001499E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80180428 001499E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8018042C 001499EC  7C 7F 1B 78 */	mr r31, r3
/* 80180430 001499F0  38 64 EF 08 */	addi r3, r4, lbl_804FEF08@l
/* 80180434 001499F4  38 81 00 08 */	addi r4, r1, 8
/* 80180438 001499F8  48 2D F7 81 */	bl func_8045FBB8
/* 8018043C 001499FC  80 81 00 08 */	lwz r4, 8(r1)
/* 80180440 00149A00  2C 04 00 00 */	cmpwi r4, 0
/* 80180444 00149A04  41 82 00 74 */	beq .L_801804B8
/* 80180448 00149A08  80 6D A5 94 */	lwz r3, lbl_80666714@sda21(r13)
/* 8018044C 00149A0C  38 A0 FF FF */	li r5, -1
/* 80180450 00149A10  38 C0 00 01 */	li r6, 1
/* 80180454 00149A14  48 31 5A 39 */	bl func_80495E8C
/* 80180458 00149A18  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 8018045C 00149A1C  38 80 00 01 */	li r4, 1
/* 80180460 00149A20  48 30 23 7D */	bl func_804827DC
/* 80180464 00149A24  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80180468 00149A28  C0 22 9D F0 */	lfs f1, float_8066A170@sda21(r2)
/* 8018046C 00149A2C  48 30 49 F1 */	bl func_80484E5C
/* 80180470 00149A30  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80180474 00149A34  80 03 07 A8 */	lwz r0, 0x7a8(r3)
/* 80180478 00149A38  60 00 00 04 */	ori r0, r0, 4
/* 8018047C 00149A3C  90 03 07 A8 */	stw r0, 0x7a8(r3)
/* 80180480 00149A40  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80180484 00149A44  80 8D 8B C0 */	lwz r4, lbl_80664D40@sda21(r13)
/* 80180488 00149A48  81 83 00 00 */	lwz r12, 0(r3)
/* 8018048C 00149A4C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80180490 00149A50  7D 89 03 A6 */	mtctr r12
/* 80180494 00149A54  4E 80 04 21 */	bctrl 
/* 80180498 00149A58  90 7F 00 90 */	stw r3, 0x90(r31)
/* 8018049C 00149A5C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801804A0 00149A60  80 8D 8B C4 */	lwz r4, lbl_80664D44@sda21(r13)
/* 801804A4 00149A64  81 83 00 00 */	lwz r12, 0(r3)
/* 801804A8 00149A68  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801804AC 00149A6C  7D 89 03 A6 */	mtctr r12
/* 801804B0 00149A70  4E 80 04 21 */	bctrl 
/* 801804B4 00149A74  90 7F 00 94 */	stw r3, 0x94(r31)
.L_801804B8:
/* 801804B8 00149A78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801804BC 00149A7C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801804C0 00149A80  7C 08 03 A6 */	mtlr r0
/* 801804C4 00149A84  38 21 00 20 */	addi r1, r1, 0x20
/* 801804C8 00149A88  4E 80 00 20 */	blr 

.global func_801804CC
func_801804CC:
/* 801804CC 00149A8C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801804D0 00149A90  7C 08 02 A6 */	mflr r0
/* 801804D4 00149A94  90 01 00 34 */	stw r0, 0x34(r1)
/* 801804D8 00149A98  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801804DC 00149A9C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801804E0 00149AA0  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801804E4 00149AA4  7C 7D 1B 78 */	mr r29, r3
/* 801804E8 00149AA8  4B F0 1D 11 */	bl func_800821F8
/* 801804EC 00149AAC  2C 03 00 00 */	cmpwi r3, 0
/* 801804F0 00149AB0  41 82 00 14 */	beq .L_80180504
/* 801804F4 00149AB4  4B F0 1D 05 */	bl func_800821F8
/* 801804F8 00149AB8  3C 80 04 00 */	lis r4, 0x400
/* 801804FC 00149ABC  38 A0 00 01 */	li r5, 1
/* 80180500 00149AC0  4B EE B6 F5 */	bl func_8006BBF4
.L_80180504:
/* 80180504 00149AC4  80 1D 00 1C */	lwz r0, 0x1c(r29)
/* 80180508 00149AC8  2C 00 00 00 */	cmpwi r0, 0
/* 8018050C 00149ACC  41 82 00 F8 */	beq .L_80180604
/* 80180510 00149AD0  4B F0 24 A9 */	bl func_800829B8
/* 80180514 00149AD4  2C 03 00 00 */	cmpwi r3, 0
/* 80180518 00149AD8  40 82 00 EC */	bne .L_80180604
/* 8018051C 00149ADC  83 DD 00 1C */	lwz r30, 0x1c(r29)
/* 80180520 00149AE0  4B FE 9E 3D */	bl func_8016A35C
/* 80180524 00149AE4  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80180528 00149AE8  3F E0 43 30 */	lis r31, 0x4330
/* 8018052C 00149AEC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80180530 00149AF0  7F C3 F3 78 */	mr r3, r30
/* 80180534 00149AF4  C8 22 9D F8 */	lfd f1, double_8066A178@sda21(r2)
/* 80180538 00149AF8  93 E1 00 08 */	stw r31, 8(r1)
/* 8018053C 00149AFC  80 8D 8B C4 */	lwz r4, lbl_80664D44@sda21(r13)
/* 80180540 00149B00  C8 01 00 08 */	lfd f0, 8(r1)
/* 80180544 00149B04  EC 20 08 28 */	fsubs f1, f0, f1
/* 80180548 00149B08  48 30 B5 8D */	bl func_8048BAD4
/* 8018054C 00149B0C  38 9D 00 58 */	addi r4, r29, 0x58
/* 80180550 00149B10  48 25 FB 11 */	bl GetRotTrans__Q34nw4r3g3d12ChrAnmResultCFPQ34nw4r4math5MTX34
/* 80180554 00149B14  38 00 00 01 */	li r0, 1
/* 80180558 00149B18  98 1D 00 A4 */	stb r0, 0xa4(r29)
/* 8018055C 00149B1C  4B FE 9E 01 */	bl func_8016A35C
/* 80180560 00149B20  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80180564 00149B24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80180568 00149B28  C8 22 9D F8 */	lfd f1, double_8066A178@sda21(r2)
/* 8018056C 00149B2C  7F C3 F3 78 */	mr r3, r30
/* 80180570 00149B30  93 E1 00 10 */	stw r31, 0x10(r1)
/* 80180574 00149B34  80 8D 8B C0 */	lwz r4, lbl_80664D40@sda21(r13)
/* 80180578 00149B38  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8018057C 00149B3C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80180580 00149B40  48 30 B5 55 */	bl func_8048BAD4
/* 80180584 00149B44  38 9D 00 28 */	addi r4, r29, 0x28
/* 80180588 00149B48  48 25 FA D9 */	bl GetRotTrans__Q34nw4r3g3d12ChrAnmResultCFPQ34nw4r4math5MTX34
/* 8018058C 00149B4C  80 6D A5 94 */	lwz r3, lbl_80666714@sda21(r13)
/* 80180590 00149B50  38 80 FF FF */	li r4, -1
/* 80180594 00149B54  48 31 5C D1 */	bl func_80496264
/* 80180598 00149B58  2C 03 00 00 */	cmpwi r3, 0
/* 8018059C 00149B5C  7C 7E 1B 78 */	mr r30, r3
/* 801805A0 00149B60  41 82 00 64 */	beq .L_80180604
/* 801805A4 00149B64  4B F0 1C 55 */	bl func_800821F8
/* 801805A8 00149B68  2C 03 00 00 */	cmpwi r3, 0
/* 801805AC 00149B6C  41 82 00 1C */	beq .L_801805C8
/* 801805B0 00149B70  4B F0 1C 49 */	bl func_800821F8
/* 801805B4 00149B74  81 83 00 00 */	lwz r12, 0(r3)
/* 801805B8 00149B78  C0 3D 00 54 */	lfs f1, 0x54(r29)
/* 801805BC 00149B7C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801805C0 00149B80  7D 89 03 A6 */	mtctr r12
/* 801805C4 00149B84  4E 80 04 21 */	bctrl 
.L_801805C8:
/* 801805C8 00149B88  C0 1D 00 54 */	lfs f0, 0x54(r29)
/* 801805CC 00149B8C  7F C3 F3 78 */	mr r3, r30
/* 801805D0 00149B90  D0 1E 01 E0 */	stfs f0, 0x1e0(r30)
/* 801805D4 00149B94  48 31 E5 8D */	bl func_8049EB60
/* 801805D8 00149B98  C0 3D 00 44 */	lfs f1, 0x44(r29)
/* 801805DC 00149B9C  7F C3 F3 78 */	mr r3, r30
/* 801805E0 00149BA0  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 801805E4 00149BA4  D0 1E 01 EC */	stfs f0, 0x1ec(r30)
/* 801805E8 00149BA8  D0 3E 01 F0 */	stfs f1, 0x1f0(r30)
/* 801805EC 00149BAC  48 31 E5 75 */	bl func_8049EB60
/* 801805F0 00149BB0  7F C3 F3 78 */	mr r3, r30
/* 801805F4 00149BB4  38 9D 00 58 */	addi r4, r29, 0x58
/* 801805F8 00149BB8  48 31 F1 7D */	bl func_8049F774
/* 801805FC 00149BBC  38 00 00 01 */	li r0, 1
/* 80180600 00149BC0  98 1D 00 A4 */	stb r0, 0xa4(r29)
.L_80180604:
/* 80180604 00149BC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80180608 00149BC8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8018060C 00149BCC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80180610 00149BD0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80180614 00149BD4  7C 08 03 A6 */	mtlr r0
/* 80180618 00149BD8  38 21 00 30 */	addi r1, r1, 0x30
/* 8018061C 00149BDC  4E 80 00 20 */	blr 

.global func_80180620
func_80180620:
/* 80180620 00149BE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80180624 00149BE4  7C 08 02 A6 */	mflr r0
/* 80180628 00149BE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018062C 00149BEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80180630 00149BF0  7C 7F 1B 78 */	mr r31, r3
/* 80180634 00149BF4  80 03 00 24 */	lwz r0, 0x24(r3)
/* 80180638 00149BF8  2C 00 00 00 */	cmpwi r0, 0
/* 8018063C 00149BFC  41 82 00 14 */	beq .L_80180650
/* 80180640 00149C00  7C 03 03 78 */	mr r3, r0
/* 80180644 00149C04  48 31 58 1D */	bl func_80495E60
/* 80180648 00149C08  38 00 00 00 */	li r0, 0
/* 8018064C 00149C0C  90 1F 00 24 */	stw r0, 0x24(r31)
.L_80180650:
/* 80180650 00149C10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80180654 00149C14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80180658 00149C18  7C 08 03 A6 */	mtlr r0
/* 8018065C 00149C1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80180660 00149C20  4E 80 00 20 */	blr 

.global func_80180664
func_80180664:
/* 80180664 00149C24  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80180668 00149C28  7C 08 02 A6 */	mflr r0
/* 8018066C 00149C2C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80180670 00149C30  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80180674 00149C34  7C BF 2B 78 */	mr r31, r5
/* 80180678 00149C38  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8018067C 00149C3C  7C 7E 1B 78 */	mr r30, r3
/* 80180680 00149C40  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80180684 00149C44  93 81 00 20 */	stw r28, 0x20(r1)
/* 80180688 00149C48  7C 9C 23 78 */	mr r28, r4
/* 8018068C 00149C4C  80 C3 00 88 */	lwz r6, 0x88(r3)
/* 80180690 00149C50  2C 06 00 00 */	cmpwi r6, 0
/* 80180694 00149C54  41 82 00 1C */	beq .L_801806B0
/* 80180698 00149C58  80 86 00 04 */	lwz r4, 4(r6)
/* 8018069C 00149C5C  7C 04 00 D0 */	neg r0, r4
/* 801806A0 00149C60  7C 00 23 78 */	or r0, r0, r4
/* 801806A4 00149C64  54 00 0F FE */	srwi r0, r0, 0x1f
/* 801806A8 00149C68  98 03 00 A5 */	stb r0, 0xa5(r3)
/* 801806AC 00149C6C  48 00 00 0C */	b .L_801806B8
.L_801806B0:
/* 801806B0 00149C70  38 00 00 00 */	li r0, 0
/* 801806B4 00149C74  98 03 00 A5 */	stb r0, 0xa5(r3)
.L_801806B8:
/* 801806B8 00149C78  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 801806BC 00149C7C  3B A0 00 00 */	li r29, 0
/* 801806C0 00149C80  93 A3 02 A8 */	stw r29, 0x2a8(r3)
/* 801806C4 00149C84  2C 00 00 00 */	cmpwi r0, 0
/* 801806C8 00149C88  93 A3 02 AC */	stw r29, 0x2ac(r3)
/* 801806CC 00149C8C  41 82 02 50 */	beq .L_8018091C
/* 801806D0 00149C90  80 03 00 20 */	lwz r0, 0x20(r3)
/* 801806D4 00149C94  93 A3 00 98 */	stw r29, 0x98(r3)
/* 801806D8 00149C98  2C 00 00 00 */	cmpwi r0, 0
/* 801806DC 00149C9C  93 A3 00 9C */	stw r29, 0x9c(r3)
/* 801806E0 00149CA0  93 A3 00 A0 */	stw r29, 0xa0(r3)
/* 801806E4 00149CA4  41 82 00 24 */	beq .L_80180708
/* 801806E8 00149CA8  81 9E 00 00 */	lwz r12, 0(r30)
/* 801806EC 00149CAC  7F C3 F3 78 */	mr r3, r30
/* 801806F0 00149CB0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801806F4 00149CB4  7D 89 03 A6 */	mtctr r12
/* 801806F8 00149CB8  4E 80 04 21 */	bctrl 
/* 801806FC 00149CBC  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 80180700 00149CC0  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80180704 00149CC4  93 BE 00 20 */	stw r29, 0x20(r30)
.L_80180708:
/* 80180708 00149CC8  2C 1C 00 00 */	cmpwi r28, 0
/* 8018070C 00149CCC  41 82 02 10 */	beq .L_8018091C
/* 80180710 00149CD0  80 6D A5 94 */	lwz r3, lbl_80666714@sda21(r13)
/* 80180714 00149CD4  7F 84 E3 78 */	mr r4, r28
/* 80180718 00149CD8  38 A0 00 00 */	li r5, 0
/* 8018071C 00149CDC  48 31 57 91 */	bl func_80495EAC
/* 80180720 00149CE0  7C 64 1B 78 */	mr r4, r3
/* 80180724 00149CE4  90 7E 00 20 */	stw r3, 0x20(r30)
/* 80180728 00149CE8  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8018072C 00149CEC  38 A0 00 00 */	li r5, 0
/* 80180730 00149CF0  38 C0 00 00 */	li r6, 0
/* 80180734 00149CF4  38 E0 00 00 */	li r7, 0
/* 80180738 00149CF8  39 00 00 01 */	li r8, 1
/* 8018073C 00149CFC  39 20 FF FF */	li r9, -1
/* 80180740 00149D00  48 30 32 95 */	bl func_804839D4
/* 80180744 00149D04  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 80180748 00149D08  48 30 49 5D */	bl func_804850A4
/* 8018074C 00149D0C  48 13 98 E1 */	bl __cvt_fp2unsigned
/* 80180750 00149D10  3F A0 80 50 */	lis r29, lbl_804FEF08@ha
/* 80180754 00149D14  90 7E 04 3C */	stw r3, 0x43c(r30)
/* 80180758 00149D18  3B BD EF 08 */	addi r29, r29, lbl_804FEF08@l
/* 8018075C 00149D1C  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 80180760 00149D20  38 9D 00 04 */	addi r4, r29, 4
/* 80180764 00149D24  38 BE 00 98 */	addi r5, r30, 0x98
/* 80180768 00149D28  4B FE A7 E5 */	bl func_8016AF4C
/* 8018076C 00149D2C  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 80180770 00149D30  38 9D 00 0F */	addi r4, r29, 0xf
/* 80180774 00149D34  38 BE 00 9C */	addi r5, r30, 0x9c
/* 80180778 00149D38  4B FE A7 D5 */	bl func_8016AF4C
/* 8018077C 00149D3C  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 80180780 00149D40  38 9D 00 17 */	addi r4, r29, 0x17
/* 80180784 00149D44  38 BE 00 A0 */	addi r5, r30, 0xa0
/* 80180788 00149D48  4B FE A7 C5 */	bl func_8016AF4C
/* 8018078C 00149D4C  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 80180790 00149D50  38 9D 00 1E */	addi r4, r29, 0x1e
/* 80180794 00149D54  38 BE 02 B0 */	addi r5, r30, 0x2b0
/* 80180798 00149D58  4B FE A7 B5 */	bl func_8016AF4C
/* 8018079C 00149D5C  80 6D AA 18 */	lwz r3, lbl_80666B98@sda21(r13)
/* 801807A0 00149D60  88 03 00 A5 */	lbz r0, 0xa5(r3)
/* 801807A4 00149D64  2C 00 00 00 */	cmpwi r0, 0
/* 801807A8 00149D68  40 82 00 10 */	bne .L_801807B8
/* 801807AC 00149D6C  4B FE 3D 09 */	bl func_801644B4
/* 801807B0 00149D70  38 00 00 01 */	li r0, 1
/* 801807B4 00149D74  90 03 01 B8 */	stw r0, 0x1b8(r3)
.L_801807B8:
/* 801807B8 00149D78  3C 80 80 50 */	lis r4, lbl_804FEF08@ha
/* 801807BC 00149D7C  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 801807C0 00149D80  38 84 EF 08 */	addi r4, r4, lbl_804FEF08@l
/* 801807C4 00149D84  38 A1 00 10 */	addi r5, r1, 0x10
/* 801807C8 00149D88  38 84 00 26 */	addi r4, r4, 0x26
/* 801807CC 00149D8C  4B FE AD D9 */	bl func_8016B5A4
/* 801807D0 00149D90  2C 03 00 00 */	cmpwi r3, 0
/* 801807D4 00149D94  41 82 00 80 */	beq .L_80180854
/* 801807D8 00149D98  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801807DC 00149D9C  48 14 3F 35 */	bl atoi
/* 801807E0 00149DA0  3C 80 51 EC */	lis r4, 0x51EB851F@ha
/* 801807E4 00149DA4  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 801807E8 00149DA8  38 04 85 1F */	addi r0, r4, 0x51EB851F@l
/* 801807EC 00149DAC  7C 00 28 96 */	mulhw r0, r0, r5
/* 801807F0 00149DB0  7C 03 2E 70 */	srawi r3, r0, 5
/* 801807F4 00149DB4  54 64 0F FE */	srwi r4, r3, 0x1f
/* 801807F8 00149DB8  7C 00 2E 70 */	srawi r0, r0, 5
/* 801807FC 00149DBC  7C 83 22 14 */	add r4, r3, r4
/* 80180800 00149DC0  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80180804 00149DC4  1C 84 00 64 */	mulli r4, r4, 0x64
/* 80180808 00149DC8  7F 80 1A 14 */	add r28, r0, r3
/* 8018080C 00149DCC  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 80180810 00149DD0  28 00 00 63 */	cmplwi r0, 0x63
/* 80180814 00149DD4  7F A4 28 50 */	subf r29, r4, r5
/* 80180818 00149DD8  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 8018081C 00149DDC  40 82 00 14 */	bne .L_80180830
/* 80180820 00149DE0  28 00 00 63 */	cmplwi r0, 0x63
/* 80180824 00149DE4  40 82 00 0C */	bne .L_80180830
/* 80180828 00149DE8  4B FE 7B F5 */	bl func_8016841C
/* 8018082C 00149DEC  48 00 00 28 */	b .L_80180854
.L_80180830:
/* 80180830 00149DF0  57 83 04 3E */	clrlwi r3, r28, 0x10
/* 80180834 00149DF4  57 A4 04 3E */	clrlwi r4, r29, 0x10
/* 80180838 00149DF8  38 A0 00 00 */	li r5, 0
/* 8018083C 00149DFC  4B F0 63 21 */	bl func_80086B5C
/* 80180840 00149E00  4B ED 7F A9 */	bl func_800587E8
/* 80180844 00149E04  57 84 04 3E */	clrlwi r4, r28, 0x10
/* 80180848 00149E08  57 A5 04 3E */	clrlwi r5, r29, 0x10
/* 8018084C 00149E0C  38 C0 00 00 */	li r6, 0
/* 80180850 00149E10  4B ED 91 91 */	bl func_800599E0
.L_80180854:
/* 80180854 00149E14  3C 80 80 50 */	lis r4, lbl_804FEF08@ha
/* 80180858 00149E18  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 8018085C 00149E1C  38 84 EF 08 */	addi r4, r4, lbl_804FEF08@l
/* 80180860 00149E20  38 A1 00 08 */	addi r5, r1, 8
/* 80180864 00149E24  38 84 00 2B */	addi r4, r4, 0x2b
/* 80180868 00149E28  38 C1 00 0C */	addi r6, r1, 0xc
/* 8018086C 00149E2C  4B FE A8 F9 */	bl func_8016B164
/* 80180870 00149E30  2C 03 00 00 */	cmpwi r3, 0
/* 80180874 00149E34  41 82 00 44 */	beq .L_801808B8
/* 80180878 00149E38  38 E0 00 00 */	li r7, 0
/* 8018087C 00149E3C  38 C0 00 00 */	li r6, 0
/* 80180880 00149E40  48 00 00 2C */	b .L_801808AC
.L_80180884:
/* 80180884 00149E44  80 7E 02 A8 */	lwz r3, 0x2a8(r30)
/* 80180888 00149E48  38 E7 00 01 */	addi r7, r7, 1
/* 8018088C 00149E4C  80 A1 00 08 */	lwz r5, 8(r1)
/* 80180890 00149E50  54 60 08 3C */	slwi r0, r3, 1
/* 80180894 00149E54  38 83 00 01 */	addi r4, r3, 1
/* 80180898 00149E58  7C A5 30 2E */	lwzx r5, r5, r6
/* 8018089C 00149E5C  7C 7E 02 14 */	add r3, r30, r0
/* 801808A0 00149E60  B0 A3 00 A6 */	sth r5, 0xa6(r3)
/* 801808A4 00149E64  38 C6 00 04 */	addi r6, r6, 4
/* 801808A8 00149E68  90 9E 02 A8 */	stw r4, 0x2a8(r30)
.L_801808AC:
/* 801808AC 00149E6C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801808B0 00149E70  7C 07 00 00 */	cmpw r7, r0
/* 801808B4 00149E74  41 80 FF D0 */	blt .L_80180884
.L_801808B8:
/* 801808B8 00149E78  3C 80 80 50 */	lis r4, lbl_804FEF08@ha
/* 801808BC 00149E7C  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 801808C0 00149E80  38 84 EF 08 */	addi r4, r4, lbl_804FEF08@l
/* 801808C4 00149E84  38 A1 00 08 */	addi r5, r1, 8
/* 801808C8 00149E88  38 84 00 33 */	addi r4, r4, 0x33
/* 801808CC 00149E8C  38 C1 00 0C */	addi r6, r1, 0xc
/* 801808D0 00149E90  4B FE A8 95 */	bl func_8016B164
/* 801808D4 00149E94  2C 03 00 00 */	cmpwi r3, 0
/* 801808D8 00149E98  41 82 00 44 */	beq .L_8018091C
/* 801808DC 00149E9C  38 E0 00 00 */	li r7, 0
/* 801808E0 00149EA0  38 C0 00 00 */	li r6, 0
/* 801808E4 00149EA4  48 00 00 2C */	b .L_80180910
.L_801808E8:
/* 801808E8 00149EA8  80 7E 02 AC */	lwz r3, 0x2ac(r30)
/* 801808EC 00149EAC  38 E7 00 01 */	addi r7, r7, 1
/* 801808F0 00149EB0  80 A1 00 08 */	lwz r5, 8(r1)
/* 801808F4 00149EB4  54 60 08 3C */	slwi r0, r3, 1
/* 801808F8 00149EB8  38 83 00 01 */	addi r4, r3, 1
/* 801808FC 00149EBC  7C A5 30 2E */	lwzx r5, r5, r6
/* 80180900 00149EC0  7C 7E 02 14 */	add r3, r30, r0
/* 80180904 00149EC4  B0 A3 01 A6 */	sth r5, 0x1a6(r3)
/* 80180908 00149EC8  38 C6 00 04 */	addi r6, r6, 4
/* 8018090C 00149ECC  90 9E 02 AC */	stw r4, 0x2ac(r30)
.L_80180910:
/* 80180910 00149ED0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80180914 00149ED4  7C 07 00 00 */	cmpw r7, r0
/* 80180918 00149ED8  41 80 FF D0 */	blt .L_801808E8
.L_8018091C:
/* 8018091C 00149EDC  93 FE 00 88 */	stw r31, 0x88(r30)
/* 80180920 00149EE0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80180924 00149EE4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80180928 00149EE8  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8018092C 00149EEC  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80180930 00149EF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80180934 00149EF4  7C 08 03 A6 */	mtlr r0
/* 80180938 00149EF8  38 21 00 30 */	addi r1, r1, 0x30
/* 8018093C 00149EFC  4E 80 00 20 */	blr 

.global func_80180940
func_80180940:
/* 80180940 00149F00  80 6D AA 18 */	lwz r3, lbl_80666B98@sda21(r13)
/* 80180944 00149F04  80 03 00 A0 */	lwz r0, 0xa0(r3)
/* 80180948 00149F08  7C 00 00 34 */	cntlzw r0, r0
/* 8018094C 00149F0C  54 03 D9 7E */	srwi r3, r0, 5
/* 80180950 00149F10  4E 80 00 20 */	blr 

.global func_80180954
func_80180954:
/* 80180954 00149F14  80 6D AA 18 */	lwz r3, lbl_80666B98@sda21(r13)
/* 80180958 00149F18  88 63 00 A5 */	lbz r3, 0xa5(r3)
/* 8018095C 00149F1C  4E 80 00 20 */	blr 

.global func_80180960
func_80180960:
/* 80180960 00149F20  80 6D AA 18 */	lwz r3, lbl_80666B98@sda21(r13)
/* 80180964 00149F24  80 63 00 98 */	lwz r3, 0x98(r3)
/* 80180968 00149F28  38 03 FF FF */	addi r0, r3, -1
/* 8018096C 00149F2C  7C 00 00 34 */	cntlzw r0, r0
/* 80180970 00149F30  54 03 D9 7E */	srwi r3, r0, 5
/* 80180974 00149F34  4E 80 00 20 */	blr 

.global func_80180978
func_80180978:
/* 80180978 00149F38  80 6D AA 18 */	lwz r3, lbl_80666B98@sda21(r13)
/* 8018097C 00149F3C  80 63 02 B0 */	lwz r3, 0x2b0(r3)
/* 80180980 00149F40  38 03 FF FF */	addi r0, r3, -1
/* 80180984 00149F44  7C 00 00 34 */	cntlzw r0, r0
/* 80180988 00149F48  54 03 D9 7E */	srwi r3, r0, 5
/* 8018098C 00149F4C  4E 80 00 20 */	blr 

.global func_80180990
func_80180990:
/* 80180990 00149F50  80 6D AA 18 */	lwz r3, lbl_80666B98@sda21(r13)
/* 80180994 00149F54  80 63 02 B0 */	lwz r3, 0x2b0(r3)
/* 80180998 00149F58  38 03 FF FE */	addi r0, r3, -2
/* 8018099C 00149F5C  7C 00 00 34 */	cntlzw r0, r0
/* 801809A0 00149F60  54 03 D9 7E */	srwi r3, r0, 5
/* 801809A4 00149F64  4E 80 00 20 */	blr 

.global func_801809A8
func_801809A8:
/* 801809A8 00149F68  38 60 00 01 */	li r3, 1
/* 801809AC 00149F6C  4E 80 00 20 */	blr 

.global func_801809B0
func_801809B0:
/* 801809B0 00149F70  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 801809B4 00149F74  4E 80 00 20 */	blr 


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global cf_CREvtCamera_typestr
cf_CREvtCamera_typestr:
	.asciz "cf::CREvtCamera"


.global lbl_804FEF08
lbl_804FEF08:
	.asciz "CAM"
	.asciz "Monochrome"
	.asciz "MonoRGB"
	.asciz "envLGT"
	.asciz "HideMPF"
	.asciz "Time"
	.asciz "HideLOD"
	.asciz "ShowLOD"
	.balign 4
	.4byte 0

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global __vt__cf_CREvtCamera
__vt__cf_CREvtCamera:
	.4byte __RTTI__cf_CREvtCamera
	.4byte 0
	.4byte func_80180088
	.4byte func_80180414
	.4byte func_80180620
	.4byte func_801809B0
	.4byte func_80169048
	.4byte func_801809A8
	.4byte func_801696C4
	.4byte func_801804CC

.global cf_CREvtCamera_hierarchy
cf_CREvtCamera_hierarchy:
	.4byte __RTTI__cf_CREvtObj
	.4byte 0
	.4byte 0
	.4byte 0

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global lbl_80664D40
lbl_80664D40:
	# ROM: 0x570920
	.4byte lbl_8066A158


.global lbl_80664D44
lbl_80664D44:
	# ROM: 0x570924
	.4byte lbl_8066A160

.global __RTTI__cf_CREvtCamera
__RTTI__cf_CREvtCamera:
	.4byte cf_CREvtCamera_typestr
	.4byte cf_CREvtCamera_hierarchy


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.global lbl_8066A158
lbl_8066A158:
	.asciz "camAtr"
	.balign 4

.global lbl_8066A160
lbl_8066A160:
	.4byte 0x63616D00


.global float_8066A164
float_8066A164:
	# ROM: 0x573FC4
	.4byte 0x41F00000


.global float_8066A168
float_8066A168:
	# ROM: 0x573FC8
	.4byte 0x3DCCCCCD


.global float_8066A16C
float_8066A16C:
	# ROM: 0x573FCC
	.4byte 0x47A60400


.global float_8066A170
float_8066A170:
	# ROM: 0x573FD0
	.4byte 0
	.4byte 0


.global double_8066A178
double_8066A178:
	# ROM: 0x573FD8
	.4byte 0x43300000
	.4byte 0x80000000

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.global lbl_80666B98
lbl_80666B98:
	.skip 0x8

.section extab, "a"  # 0x800066E0 - 0x80021020

.global lbl_8000E600
lbl_8000E600:
	.4byte 0x100A0000
	.4byte 0x000000A0
	.4byte 0x00110010
	.4byte 0
	.4byte 0x8680001E
	.4byte 0
	.4byte func_801856C0

.global lbl_8000E61C
lbl_8000E61C:
	.4byte 0x108A0000
	.4byte 0x0000004C
	.4byte 0x003B0010
	.4byte 0
	.4byte 0x8680001E
	.4byte 0
	.4byte func_801856C0

.global lbl_8000E638
lbl_8000E638:
	.4byte 0x18080000
	.4byte 0

.global lbl_8000E640
lbl_8000E640:
	.4byte 0x18080000
	.4byte 0

.global lbl_8000E648
lbl_8000E648:
	.4byte 0x080A0000
	.4byte 0

.global lbl_8000E650
lbl_8000E650:
	.4byte 0x180A0000
	.4byte 0

.global lbl_8000E658
lbl_8000E658:
	.4byte 0x08080000
	.4byte 0

.global lbl_8000E660
lbl_8000E660:
	.4byte 0x20080000
	.4byte 0


.section extabindex, "a"  # 0x80021020 - 0x80039220

	.4byte func_8017FF78
	.4byte 0x00000110
	.4byte lbl_8000E600
	.4byte func_80180088
	.4byte 0x00000188
	.4byte lbl_8000E61C
	.4byte func_80180210
	.4byte 0x00000184
	.4byte lbl_8000E638
	.4byte func_80180394
	.4byte 0x00000080
	.4byte lbl_8000E640
	.4byte func_80180414
	.4byte 0x000000B8
	.4byte lbl_8000E648
	.4byte func_801804CC
	.4byte 0x00000154
	.4byte lbl_8000E650
	.4byte func_80180620
	.4byte 0x00000044
	.4byte lbl_8000E658
	.4byte func_80180664
	.4byte 0x000002DC
	.4byte lbl_8000E660
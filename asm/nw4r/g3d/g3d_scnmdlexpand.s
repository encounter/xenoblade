.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global Construct__Q34nw4r3g3d12ScnMdlExpandFP12MEMAllocatorPUlUlPQ34nw4r3g3d12ScnMdlSimple
Construct__Q34nw4r3g3d12ScnMdlExpandFP12MEMAllocatorPUlUlPQ34nw4r3g3d12ScnMdlSimple:
/* 803FBF7C 003C553C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FBF80 003C5540  7C 08 02 A6 */	mflr r0
/* 803FBF84 003C5544  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FBF88 003C5548  39 61 00 20 */	addi r11, r1, 0x20
/* 803FBF8C 003C554C  4B EB E1 C9 */	bl _savegpr_27
/* 803FBF90 003C5550  54 A7 10 3A */	slwi r7, r5, 2
/* 803FBF94 003C5554  2C 04 00 00 */	cmpwi r4, 0
/* 803FBF98 003C5558  38 07 00 F3 */	addi r0, r7, 0xf3
/* 803FBF9C 003C555C  7C BD 2B 78 */	mr r29, r5
/* 803FBFA0 003C5560  54 1C 00 3A */	rlwinm r28, r0, 0, 0, 0x1d
/* 803FBFA4 003C5564  7C 7B 1B 78 */	mr r27, r3
/* 803FBFA8 003C5568  7C BC 3A 14 */	add r5, r28, r7
/* 803FBFAC 003C556C  7C DE 33 78 */	mr r30, r6
/* 803FBFB0 003C5570  38 05 00 03 */	addi r0, r5, 3
/* 803FBFB4 003C5574  3B E0 00 00 */	li r31, 0
/* 803FBFB8 003C5578  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 803FBFBC 003C557C  41 82 00 08 */	beq .L_803FBFC4
/* 803FBFC0 003C5580  90 04 00 00 */	stw r0, 0(r4)
.L_803FBFC4:
/* 803FBFC4 003C5584  2C 03 00 00 */	cmpwi r3, 0
/* 803FBFC8 003C5588  41 82 01 54 */	beq .L_803FC11C
/* 803FBFCC 003C558C  7F 63 DB 78 */	mr r3, r27
/* 803FBFD0 003C5590  7C 04 03 78 */	mr r4, r0
/* 803FBFD4 003C5594  4B F4 DA BD */	bl MEMAllocFromAllocator
/* 803FBFD8 003C5598  2C 03 00 00 */	cmpwi r3, 0
/* 803FBFDC 003C559C  7C 7F 1B 78 */	mr r31, r3
/* 803FBFE0 003C55A0  40 82 00 0C */	bne .L_803FBFEC
/* 803FBFE4 003C55A4  38 60 00 00 */	li r3, 0
/* 803FBFE8 003C55A8  48 00 01 38 */	b .L_803FC120
.L_803FBFEC:
/* 803FBFEC 003C55AC  41 82 01 30 */	beq .L_803FC11C
/* 803FBFF0 003C55B0  7F 64 DB 78 */	mr r4, r27
/* 803FBFF4 003C55B4  7F A6 EB 78 */	mr r6, r29
/* 803FBFF8 003C55B8  38 A3 00 F0 */	addi r5, r3, 0xf0
/* 803FBFFC 003C55BC  4B FF 9A 11 */	bl __ct__Q34nw4r3g3d8ScnGroupFP12MEMAllocatorPPQ34nw4r3g3d6ScnObjUl
/* 803FC000 003C55C0  3C 60 80 57 */	lis r3, __vt__g3d_scnmdlexpand@ha
/* 803FC004 003C55C4  2C 1D 00 00 */	cmpwi r29, 0
/* 803FC008 003C55C8  38 63 D0 C8 */	addi r3, r3, __vt__g3d_scnmdlexpand@l
/* 803FC00C 003C55CC  7C 1F E2 14 */	add r0, r31, r28
/* 803FC010 003C55D0  90 7F 00 00 */	stw r3, 0(r31)
/* 803FC014 003C55D4  38 60 00 00 */	li r3, 0
/* 803FC018 003C55D8  93 DF 00 E8 */	stw r30, 0xe8(r31)
/* 803FC01C 003C55DC  90 1F 00 EC */	stw r0, 0xec(r31)
/* 803FC020 003C55E0  41 82 00 D8 */	beq .L_803FC0F8
/* 803FC024 003C55E4  28 1D 00 08 */	cmplwi r29, 8
/* 803FC028 003C55E8  38 BD FF F8 */	addi r5, r29, -8
/* 803FC02C 003C55EC  40 81 00 A4 */	ble .L_803FC0D0
/* 803FC030 003C55F0  38 05 00 07 */	addi r0, r5, 7
/* 803FC034 003C55F4  38 80 00 00 */	li r4, 0
/* 803FC038 003C55F8  54 00 E8 FE */	srwi r0, r0, 3
/* 803FC03C 003C55FC  7C 09 03 A6 */	mtctr r0
/* 803FC040 003C5600  28 05 00 00 */	cmplwi r5, 0
/* 803FC044 003C5604  40 81 00 8C */	ble .L_803FC0D0
.L_803FC048:
/* 803FC048 003C5608  80 0D 9C 58 */	lwz r0, lbl_80665DD8@sda21(r13)
/* 803FC04C 003C560C  38 63 00 08 */	addi r3, r3, 8
/* 803FC050 003C5610  80 BF 00 EC */	lwz r5, 0xec(r31)
/* 803FC054 003C5614  7C 05 21 2E */	stwx r0, r5, r4
/* 803FC058 003C5618  80 1F 00 EC */	lwz r0, 0xec(r31)
/* 803FC05C 003C561C  80 CD 9C 58 */	lwz r6, lbl_80665DD8@sda21(r13)
/* 803FC060 003C5620  7C A0 22 14 */	add r5, r0, r4
/* 803FC064 003C5624  90 C5 00 04 */	stw r6, 4(r5)
/* 803FC068 003C5628  80 1F 00 EC */	lwz r0, 0xec(r31)
/* 803FC06C 003C562C  80 CD 9C 58 */	lwz r6, lbl_80665DD8@sda21(r13)
/* 803FC070 003C5630  7C A0 22 14 */	add r5, r0, r4
/* 803FC074 003C5634  90 C5 00 08 */	stw r6, 8(r5)
/* 803FC078 003C5638  80 1F 00 EC */	lwz r0, 0xec(r31)
/* 803FC07C 003C563C  80 CD 9C 58 */	lwz r6, lbl_80665DD8@sda21(r13)
/* 803FC080 003C5640  7C A0 22 14 */	add r5, r0, r4
/* 803FC084 003C5644  90 C5 00 0C */	stw r6, 0xc(r5)
/* 803FC088 003C5648  80 1F 00 EC */	lwz r0, 0xec(r31)
/* 803FC08C 003C564C  80 CD 9C 58 */	lwz r6, lbl_80665DD8@sda21(r13)
/* 803FC090 003C5650  7C A0 22 14 */	add r5, r0, r4
/* 803FC094 003C5654  90 C5 00 10 */	stw r6, 0x10(r5)
/* 803FC098 003C5658  80 1F 00 EC */	lwz r0, 0xec(r31)
/* 803FC09C 003C565C  80 CD 9C 58 */	lwz r6, lbl_80665DD8@sda21(r13)
/* 803FC0A0 003C5660  7C A0 22 14 */	add r5, r0, r4
/* 803FC0A4 003C5664  90 C5 00 14 */	stw r6, 0x14(r5)
/* 803FC0A8 003C5668  80 1F 00 EC */	lwz r0, 0xec(r31)
/* 803FC0AC 003C566C  80 CD 9C 58 */	lwz r6, lbl_80665DD8@sda21(r13)
/* 803FC0B0 003C5670  7C A0 22 14 */	add r5, r0, r4
/* 803FC0B4 003C5674  90 C5 00 18 */	stw r6, 0x18(r5)
/* 803FC0B8 003C5678  80 1F 00 EC */	lwz r0, 0xec(r31)
/* 803FC0BC 003C567C  80 CD 9C 58 */	lwz r6, lbl_80665DD8@sda21(r13)
/* 803FC0C0 003C5680  7C A0 22 14 */	add r5, r0, r4
/* 803FC0C4 003C5684  38 84 00 20 */	addi r4, r4, 0x20
/* 803FC0C8 003C5688  90 C5 00 1C */	stw r6, 0x1c(r5)
/* 803FC0CC 003C568C  42 00 FF 7C */	bdnz .L_803FC048
.L_803FC0D0:
/* 803FC0D0 003C5690  7C 03 E8 50 */	subf r0, r3, r29
/* 803FC0D4 003C5694  54 64 10 3A */	slwi r4, r3, 2
/* 803FC0D8 003C5698  7C 09 03 A6 */	mtctr r0
/* 803FC0DC 003C569C  7C 03 E8 40 */	cmplw r3, r29
/* 803FC0E0 003C56A0  40 80 00 18 */	bge .L_803FC0F8
.L_803FC0E4:
/* 803FC0E4 003C56A4  80 0D 9C 58 */	lwz r0, lbl_80665DD8@sda21(r13)
/* 803FC0E8 003C56A8  80 7F 00 EC */	lwz r3, 0xec(r31)
/* 803FC0EC 003C56AC  7C 03 21 2E */	stwx r0, r3, r4
/* 803FC0F0 003C56B0  38 84 00 04 */	addi r4, r4, 4
/* 803FC0F4 003C56B4  42 00 FF F0 */	bdnz .L_803FC0E4
.L_803FC0F8:
/* 803FC0F8 003C56B8  81 9E 00 00 */	lwz r12, 0(r30)
/* 803FC0FC 003C56BC  3C 80 00 01 */	lis r4, 0x00010002@ha
/* 803FC100 003C56C0  7F C3 F3 78 */	mr r3, r30
/* 803FC104 003C56C4  7F E6 FB 78 */	mr r6, r31
/* 803FC108 003C56C8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 803FC10C 003C56CC  38 84 00 02 */	addi r4, r4, 0x00010002@l
/* 803FC110 003C56D0  38 A0 00 00 */	li r5, 0
/* 803FC114 003C56D4  7D 89 03 A6 */	mtctr r12
/* 803FC118 003C56D8  4E 80 04 21 */	bctrl 
.L_803FC11C:
/* 803FC11C 003C56DC  7F E3 FB 78 */	mr r3, r31
.L_803FC120:
/* 803FC120 003C56E0  39 61 00 20 */	addi r11, r1, 0x20
/* 803FC124 003C56E4  4B EB E0 7D */	bl _restgpr_27
/* 803FC128 003C56E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FC12C 003C56EC  7C 08 03 A6 */	mtlr r0
/* 803FC130 003C56F0  38 21 00 20 */	addi r1, r1, 0x20
/* 803FC134 003C56F4  4E 80 00 20 */	blr 

.global PushBack__Q34nw4r3g3d12ScnMdlExpandFPQ34nw4r3g3d6ScnObjUl
PushBack__Q34nw4r3g3d12ScnMdlExpandFPQ34nw4r3g3d6ScnObjUl:
/* 803FC138 003C56F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FC13C 003C56FC  7C 08 02 A6 */	mflr r0
/* 803FC140 003C5700  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FC144 003C5704  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803FC148 003C5708  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803FC14C 003C570C  7C BE 2B 78 */	mr r30, r5
/* 803FC150 003C5710  7C 85 23 78 */	mr r5, r4
/* 803FC154 003C5714  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803FC158 003C5718  7C 7D 1B 78 */	mr r29, r3
/* 803FC15C 003C571C  81 83 00 00 */	lwz r12, 0(r3)
/* 803FC160 003C5720  80 83 00 E4 */	lwz r4, 0xe4(r3)
/* 803FC164 003C5724  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 803FC168 003C5728  7D 89 03 A6 */	mtctr r12
/* 803FC16C 003C572C  4E 80 04 21 */	bctrl 
/* 803FC170 003C5730  2C 03 00 00 */	cmpwi r3, 0
/* 803FC174 003C5734  40 82 00 0C */	bne .L_803FC180
/* 803FC178 003C5738  38 60 00 00 */	li r3, 0
/* 803FC17C 003C573C  48 00 00 84 */	b .L_803FC200
.L_803FC180:
/* 803FC180 003C5740  80 9D 00 E8 */	lwz r4, 0xe8(r29)
/* 803FC184 003C5744  38 61 00 08 */	addi r3, r1, 8
/* 803FC188 003C5748  80 BD 00 E4 */	lwz r5, 0xe4(r29)
/* 803FC18C 003C574C  80 04 00 E8 */	lwz r0, 0xe8(r4)
/* 803FC190 003C5750  3B E5 FF FF */	addi r31, r5, -1
/* 803FC194 003C5754  90 01 00 08 */	stw r0, 8(r1)
/* 803FC198 003C5758  4B FD D5 BD */	bl GetResNodeNumEntries__Q34nw4r3g3d6ResMdlCFv
/* 803FC19C 003C575C  7C 1E 18 40 */	cmplw r30, r3
/* 803FC1A0 003C5760  40 80 00 24 */	bge .L_803FC1C4
/* 803FC1A4 003C5764  80 1D 00 E4 */	lwz r0, 0xe4(r29)
/* 803FC1A8 003C5768  7C 1F 00 40 */	cmplw r31, r0
/* 803FC1AC 003C576C  40 80 00 18 */	bge .L_803FC1C4
/* 803FC1B0 003C5770  80 7D 00 EC */	lwz r3, 0xec(r29)
/* 803FC1B4 003C5774  57 E0 10 3A */	slwi r0, r31, 2
/* 803FC1B8 003C5778  38 80 00 01 */	li r4, 1
/* 803FC1BC 003C577C  7F C3 01 2E */	stwx r30, r3, r0
/* 803FC1C0 003C5780  48 00 00 08 */	b .L_803FC1C8
.L_803FC1C4:
/* 803FC1C4 003C5784  38 80 00 00 */	li r4, 0
.L_803FC1C8:
/* 803FC1C8 003C5788  2C 04 00 00 */	cmpwi r4, 0
/* 803FC1CC 003C578C  40 82 00 30 */	bne .L_803FC1FC
/* 803FC1D0 003C5790  80 9D 00 E4 */	lwz r4, 0xe4(r29)
/* 803FC1D4 003C5794  2C 04 00 00 */	cmpwi r4, 0
/* 803FC1D8 003C5798  41 82 00 1C */	beq .L_803FC1F4
/* 803FC1DC 003C579C  81 9D 00 00 */	lwz r12, 0(r29)
/* 803FC1E0 003C57A0  7F A3 EB 78 */	mr r3, r29
/* 803FC1E4 003C57A4  38 84 FF FF */	addi r4, r4, -1
/* 803FC1E8 003C57A8  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 803FC1EC 003C57AC  7D 89 03 A6 */	mtctr r12
/* 803FC1F0 003C57B0  4E 80 04 21 */	bctrl 
.L_803FC1F4:
/* 803FC1F4 003C57B4  38 60 00 00 */	li r3, 0
/* 803FC1F8 003C57B8  48 00 00 08 */	b .L_803FC200
.L_803FC1FC:
/* 803FC1FC 003C57BC  38 60 00 01 */	li r3, 1
.L_803FC200:
/* 803FC200 003C57C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FC204 003C57C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803FC208 003C57C8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803FC20C 003C57CC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803FC210 003C57D0  7C 08 03 A6 */	mtlr r0
/* 803FC214 003C57D4  38 21 00 20 */	addi r1, r1, 0x20
/* 803FC218 003C57D8  4E 80 00 20 */	blr 

#Insert__Q34nw4r3g3d12ScnMdlExpandFUlPQ34nw4r3g3d6ScnObj or Insert__Q34nw4r3g3d12ScnMdlExpandFUlPQ34nw4r3g3d6ScnObjUl
.global func_803FC21C
func_803FC21C:
/* 803FC21C 003C57DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FC220 003C57E0  7C 08 02 A6 */	mflr r0
/* 803FC224 003C57E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FC228 003C57E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803FC22C 003C57EC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803FC230 003C57F0  7C 9E 23 78 */	mr r30, r4
/* 803FC234 003C57F4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803FC238 003C57F8  7C 7D 1B 78 */	mr r29, r3
/* 803FC23C 003C57FC  83 ED 9C 58 */	lwz r31, lbl_80665DD8@sda21(r13)
/* 803FC240 003C5800  4B FF 95 01 */	bl Insert__Q34nw4r3g3d8ScnGroupFUlPQ34nw4r3g3d6ScnObj
/* 803FC244 003C5804  2C 03 00 00 */	cmpwi r3, 0
/* 803FC248 003C5808  41 82 01 08 */	beq .L_803FC350
/* 803FC24C 003C580C  80 9D 00 E4 */	lwz r4, 0xe4(r29)
/* 803FC250 003C5810  38 84 FF FF */	addi r4, r4, -1
/* 803FC254 003C5814  7C 84 F0 40 */	cmplw cr1, r4, r30
/* 803FC258 003C5818  40 85 00 EC */	ble cr1, .L_803FC344
/* 803FC25C 003C581C  7C 1E 20 50 */	subf r0, r30, r4
/* 803FC260 003C5820  38 BE 00 08 */	addi r5, r30, 8
/* 803FC264 003C5824  28 00 00 08 */	cmplwi r0, 8
/* 803FC268 003C5828  40 81 00 B0 */	ble .L_803FC318
/* 803FC26C 003C582C  41 84 00 AC */	blt cr1, .L_803FC318
/* 803FC270 003C5830  38 04 00 07 */	addi r0, r4, 7
/* 803FC274 003C5834  54 86 10 3A */	slwi r6, r4, 2
/* 803FC278 003C5838  7C 05 00 50 */	subf r0, r5, r0
/* 803FC27C 003C583C  54 00 E8 FE */	srwi r0, r0, 3
/* 803FC280 003C5840  7C 09 03 A6 */	mtctr r0
/* 803FC284 003C5844  7C 04 28 40 */	cmplw r4, r5
/* 803FC288 003C5848  40 81 00 90 */	ble .L_803FC318
.L_803FC28C:
/* 803FC28C 003C584C  80 1D 00 EC */	lwz r0, 0xec(r29)
/* 803FC290 003C5850  38 84 FF F8 */	addi r4, r4, -8
/* 803FC294 003C5854  7C A0 32 14 */	add r5, r0, r6
/* 803FC298 003C5858  80 05 FF FC */	lwz r0, -4(r5)
/* 803FC29C 003C585C  90 05 00 00 */	stw r0, 0(r5)
/* 803FC2A0 003C5860  80 1D 00 EC */	lwz r0, 0xec(r29)
/* 803FC2A4 003C5864  7C A0 32 14 */	add r5, r0, r6
/* 803FC2A8 003C5868  80 05 FF F8 */	lwz r0, -8(r5)
/* 803FC2AC 003C586C  90 05 FF FC */	stw r0, -4(r5)
/* 803FC2B0 003C5870  80 1D 00 EC */	lwz r0, 0xec(r29)
/* 803FC2B4 003C5874  7C A0 32 14 */	add r5, r0, r6
/* 803FC2B8 003C5878  80 05 FF F4 */	lwz r0, -0xc(r5)
/* 803FC2BC 003C587C  90 05 FF F8 */	stw r0, -8(r5)
/* 803FC2C0 003C5880  80 1D 00 EC */	lwz r0, 0xec(r29)
/* 803FC2C4 003C5884  7C A0 32 14 */	add r5, r0, r6
/* 803FC2C8 003C5888  80 05 FF F0 */	lwz r0, -0x10(r5)
/* 803FC2CC 003C588C  90 05 FF F4 */	stw r0, -0xc(r5)
/* 803FC2D0 003C5890  80 1D 00 EC */	lwz r0, 0xec(r29)
/* 803FC2D4 003C5894  7C A0 32 14 */	add r5, r0, r6
/* 803FC2D8 003C5898  80 05 FF EC */	lwz r0, -0x14(r5)
/* 803FC2DC 003C589C  90 05 FF F0 */	stw r0, -0x10(r5)
/* 803FC2E0 003C58A0  80 1D 00 EC */	lwz r0, 0xec(r29)
/* 803FC2E4 003C58A4  7C A0 32 14 */	add r5, r0, r6
/* 803FC2E8 003C58A8  80 05 FF E8 */	lwz r0, -0x18(r5)
/* 803FC2EC 003C58AC  90 05 FF EC */	stw r0, -0x14(r5)
/* 803FC2F0 003C58B0  80 1D 00 EC */	lwz r0, 0xec(r29)
/* 803FC2F4 003C58B4  7C A0 32 14 */	add r5, r0, r6
/* 803FC2F8 003C58B8  80 05 FF E4 */	lwz r0, -0x1c(r5)
/* 803FC2FC 003C58BC  90 05 FF E8 */	stw r0, -0x18(r5)
/* 803FC300 003C58C0  80 1D 00 EC */	lwz r0, 0xec(r29)
/* 803FC304 003C58C4  7C A0 32 14 */	add r5, r0, r6
/* 803FC308 003C58C8  38 C6 FF E0 */	addi r6, r6, -32
/* 803FC30C 003C58CC  80 05 FF E0 */	lwz r0, -0x20(r5)
/* 803FC310 003C58D0  90 05 FF E4 */	stw r0, -0x1c(r5)
/* 803FC314 003C58D4  42 00 FF 78 */	bdnz .L_803FC28C
.L_803FC318:
/* 803FC318 003C58D8  7C 1E 20 50 */	subf r0, r30, r4
/* 803FC31C 003C58DC  54 85 10 3A */	slwi r5, r4, 2
/* 803FC320 003C58E0  7C 09 03 A6 */	mtctr r0
/* 803FC324 003C58E4  7C 04 F0 40 */	cmplw r4, r30
/* 803FC328 003C58E8  40 81 00 1C */	ble .L_803FC344
.L_803FC32C:
/* 803FC32C 003C58EC  80 1D 00 EC */	lwz r0, 0xec(r29)
/* 803FC330 003C58F0  7C 80 2A 14 */	add r4, r0, r5
/* 803FC334 003C58F4  38 A5 FF FC */	addi r5, r5, -4
/* 803FC338 003C58F8  80 04 FF FC */	lwz r0, -4(r4)
/* 803FC33C 003C58FC  90 04 00 00 */	stw r0, 0(r4)
/* 803FC340 003C5900  42 00 FF EC */	bdnz .L_803FC32C
.L_803FC344:
/* 803FC344 003C5904  80 9D 00 EC */	lwz r4, 0xec(r29)
/* 803FC348 003C5908  57 C0 10 3A */	slwi r0, r30, 2
/* 803FC34C 003C590C  7F E4 01 2E */	stwx r31, r4, r0
.L_803FC350:
/* 803FC350 003C5910  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FC354 003C5914  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803FC358 003C5918  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803FC35C 003C591C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803FC360 003C5920  7C 08 03 A6 */	mtlr r0
/* 803FC364 003C5924  38 21 00 20 */	addi r1, r1, 0x20
/* 803FC368 003C5928  4E 80 00 20 */	blr 

.global Remove__Q34nw4r3g3d12ScnMdlExpandFUl
Remove__Q34nw4r3g3d12ScnMdlExpandFUl:
/* 803FC36C 003C592C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FC370 003C5930  7C 08 02 A6 */	mflr r0
/* 803FC374 003C5934  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FC378 003C5938  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803FC37C 003C593C  7C 9F 23 78 */	mr r31, r4
/* 803FC380 003C5940  93 C1 00 08 */	stw r30, 8(r1)
/* 803FC384 003C5944  7C 7E 1B 78 */	mr r30, r3
/* 803FC388 003C5948  4B FF 95 45 */	bl Remove__Q34nw4r3g3d8ScnGroupFUl
/* 803FC38C 003C594C  2C 03 00 00 */	cmpwi r3, 0
/* 803FC390 003C5950  41 82 00 F8 */	beq .L_803FC488
/* 803FC394 003C5954  80 9E 00 E4 */	lwz r4, 0xe4(r30)
/* 803FC398 003C5958  7C 9F 20 40 */	cmplw cr1, r31, r4
/* 803FC39C 003C595C  40 84 00 EC */	bge cr1, .L_803FC488
/* 803FC3A0 003C5960  7C 1F 20 50 */	subf r0, r31, r4
/* 803FC3A4 003C5964  38 A4 FF F8 */	addi r5, r4, -8
/* 803FC3A8 003C5968  28 00 00 08 */	cmplwi r0, 8
/* 803FC3AC 003C596C  40 81 00 B0 */	ble .L_803FC45C
/* 803FC3B0 003C5970  41 85 00 AC */	bgt cr1, .L_803FC45C
/* 803FC3B4 003C5974  38 05 00 07 */	addi r0, r5, 7
/* 803FC3B8 003C5978  57 E6 10 3A */	slwi r6, r31, 2
/* 803FC3BC 003C597C  7C 1F 00 50 */	subf r0, r31, r0
/* 803FC3C0 003C5980  54 00 E8 FE */	srwi r0, r0, 3
/* 803FC3C4 003C5984  7C 09 03 A6 */	mtctr r0
/* 803FC3C8 003C5988  7C 1F 28 40 */	cmplw r31, r5
/* 803FC3CC 003C598C  40 80 00 90 */	bge .L_803FC45C
.L_803FC3D0:
/* 803FC3D0 003C5990  80 1E 00 EC */	lwz r0, 0xec(r30)
/* 803FC3D4 003C5994  3B FF 00 08 */	addi r31, r31, 8
/* 803FC3D8 003C5998  7C A0 32 14 */	add r5, r0, r6
/* 803FC3DC 003C599C  80 05 00 04 */	lwz r0, 4(r5)
/* 803FC3E0 003C59A0  90 05 00 00 */	stw r0, 0(r5)
/* 803FC3E4 003C59A4  80 1E 00 EC */	lwz r0, 0xec(r30)
/* 803FC3E8 003C59A8  7C A0 32 14 */	add r5, r0, r6
/* 803FC3EC 003C59AC  80 05 00 08 */	lwz r0, 8(r5)
/* 803FC3F0 003C59B0  90 05 00 04 */	stw r0, 4(r5)
/* 803FC3F4 003C59B4  80 1E 00 EC */	lwz r0, 0xec(r30)
/* 803FC3F8 003C59B8  7C A0 32 14 */	add r5, r0, r6
/* 803FC3FC 003C59BC  80 05 00 0C */	lwz r0, 0xc(r5)
/* 803FC400 003C59C0  90 05 00 08 */	stw r0, 8(r5)
/* 803FC404 003C59C4  80 1E 00 EC */	lwz r0, 0xec(r30)
/* 803FC408 003C59C8  7C A0 32 14 */	add r5, r0, r6
/* 803FC40C 003C59CC  80 05 00 10 */	lwz r0, 0x10(r5)
/* 803FC410 003C59D0  90 05 00 0C */	stw r0, 0xc(r5)
/* 803FC414 003C59D4  80 1E 00 EC */	lwz r0, 0xec(r30)
/* 803FC418 003C59D8  7C A0 32 14 */	add r5, r0, r6
/* 803FC41C 003C59DC  80 05 00 14 */	lwz r0, 0x14(r5)
/* 803FC420 003C59E0  90 05 00 10 */	stw r0, 0x10(r5)
/* 803FC424 003C59E4  80 1E 00 EC */	lwz r0, 0xec(r30)
/* 803FC428 003C59E8  7C A0 32 14 */	add r5, r0, r6
/* 803FC42C 003C59EC  80 05 00 18 */	lwz r0, 0x18(r5)
/* 803FC430 003C59F0  90 05 00 14 */	stw r0, 0x14(r5)
/* 803FC434 003C59F4  80 1E 00 EC */	lwz r0, 0xec(r30)
/* 803FC438 003C59F8  7C A0 32 14 */	add r5, r0, r6
/* 803FC43C 003C59FC  80 05 00 1C */	lwz r0, 0x1c(r5)
/* 803FC440 003C5A00  90 05 00 18 */	stw r0, 0x18(r5)
/* 803FC444 003C5A04  80 1E 00 EC */	lwz r0, 0xec(r30)
/* 803FC448 003C5A08  7C A0 32 14 */	add r5, r0, r6
/* 803FC44C 003C5A0C  38 C6 00 20 */	addi r6, r6, 0x20
/* 803FC450 003C5A10  80 05 00 20 */	lwz r0, 0x20(r5)
/* 803FC454 003C5A14  90 05 00 1C */	stw r0, 0x1c(r5)
/* 803FC458 003C5A18  42 00 FF 78 */	bdnz .L_803FC3D0
.L_803FC45C:
/* 803FC45C 003C5A1C  7C 1F 20 50 */	subf r0, r31, r4
/* 803FC460 003C5A20  57 E5 10 3A */	slwi r5, r31, 2
/* 803FC464 003C5A24  7C 09 03 A6 */	mtctr r0
/* 803FC468 003C5A28  7C 1F 20 40 */	cmplw r31, r4
/* 803FC46C 003C5A2C  40 80 00 1C */	bge .L_803FC488
.L_803FC470:
/* 803FC470 003C5A30  80 1E 00 EC */	lwz r0, 0xec(r30)
/* 803FC474 003C5A34  7C 80 2A 14 */	add r4, r0, r5
/* 803FC478 003C5A38  38 A5 00 04 */	addi r5, r5, 4
/* 803FC47C 003C5A3C  80 04 00 04 */	lwz r0, 4(r4)
/* 803FC480 003C5A40  90 04 00 00 */	stw r0, 0(r4)
/* 803FC484 003C5A44  42 00 FF EC */	bdnz .L_803FC470
.L_803FC488:
/* 803FC488 003C5A48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FC48C 003C5A4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803FC490 003C5A50  83 C1 00 08 */	lwz r30, 8(r1)
/* 803FC494 003C5A54  7C 08 03 A6 */	mtlr r0
/* 803FC498 003C5A58  38 21 00 10 */	addi r1, r1, 0x10
/* 803FC49C 003C5A5C  4E 80 00 20 */	blr 

.global Remove__Q34nw4r3g3d12ScnMdlExpandFPQ34nw4r3g3d6ScnObj
Remove__Q34nw4r3g3d12ScnMdlExpandFPQ34nw4r3g3d6ScnObj:
/* 803FC4A0 003C5A60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FC4A4 003C5A64  7C 08 02 A6 */	mflr r0
/* 803FC4A8 003C5A68  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FC4AC 003C5A6C  80 03 00 E4 */	lwz r0, 0xe4(r3)
/* 803FC4B0 003C5A70  80 C3 00 DC */	lwz r6, 0xdc(r3)
/* 803FC4B4 003C5A74  54 00 10 3A */	slwi r0, r0, 2
/* 803FC4B8 003C5A78  7C C5 33 78 */	mr r5, r6
/* 803FC4BC 003C5A7C  7C E6 02 14 */	add r7, r6, r0
/* 803FC4C0 003C5A80  48 00 00 08 */	b .L_803FC4C8
.L_803FC4C4:
/* 803FC4C4 003C5A84  38 A5 00 04 */	addi r5, r5, 4
.L_803FC4C8:
/* 803FC4C8 003C5A88  7C 05 38 40 */	cmplw r5, r7
/* 803FC4CC 003C5A8C  41 82 00 10 */	beq .L_803FC4DC
/* 803FC4D0 003C5A90  80 05 00 00 */	lwz r0, 0(r5)
/* 803FC4D4 003C5A94  7C 00 20 40 */	cmplw r0, r4
/* 803FC4D8 003C5A98  40 82 FF EC */	bne .L_803FC4C4
.L_803FC4DC:
/* 803FC4DC 003C5A9C  7C 05 38 40 */	cmplw r5, r7
/* 803FC4E0 003C5AA0  40 82 00 0C */	bne .L_803FC4EC
/* 803FC4E4 003C5AA4  38 60 00 00 */	li r3, 0
/* 803FC4E8 003C5AA8  48 00 00 2C */	b .L_803FC514
.L_803FC4EC:
/* 803FC4EC 003C5AAC  81 83 00 00 */	lwz r12, 0(r3)
/* 803FC4F0 003C5AB0  7C 06 28 50 */	subf r0, r6, r5
/* 803FC4F4 003C5AB4  7C 00 16 70 */	srawi r0, r0, 2
/* 803FC4F8 003C5AB8  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 803FC4FC 003C5ABC  7C 80 01 94 */	addze r4, r0
/* 803FC500 003C5AC0  7D 89 03 A6 */	mtctr r12
/* 803FC504 003C5AC4  4E 80 04 21 */	bctrl 
/* 803FC508 003C5AC8  7C 03 00 D0 */	neg r0, r3
/* 803FC50C 003C5ACC  7C 00 1B 78 */	or r0, r0, r3
/* 803FC510 003C5AD0  54 03 0F FE */	srwi r3, r0, 0x1f
.L_803FC514:
/* 803FC514 003C5AD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FC518 003C5AD8  7C 08 03 A6 */	mtlr r0
/* 803FC51C 003C5ADC  38 21 00 10 */	addi r1, r1, 0x10
/* 803FC520 003C5AE0  4E 80 00 20 */	blr 

.global G3dProc__Q34nw4r3g3d12ScnMdlExpandFUlUlPv
G3dProc__Q34nw4r3g3d12ScnMdlExpandFUlUlPv:
/* 803FC524 003C5AE4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803FC528 003C5AE8  7C 08 02 A6 */	mflr r0
/* 803FC52C 003C5AEC  90 01 00 64 */	stw r0, 0x64(r1)
/* 803FC530 003C5AF0  39 61 00 60 */	addi r11, r1, 0x60
/* 803FC534 003C5AF4  4B EB DC 15 */	bl _savegpr_24
/* 803FC538 003C5AF8  28 04 00 09 */	cmplwi r4, 9
/* 803FC53C 003C5AFC  90 A1 00 08 */	stw r5, 8(r1)
/* 803FC540 003C5B00  7C 7D 1B 78 */	mr r29, r3
/* 803FC544 003C5B04  7C 9E 23 78 */	mr r30, r4
/* 803FC548 003C5B08  7C A0 2B 78 */	mr r0, r5
/* 803FC54C 003C5B0C  7C DF 33 78 */	mr r31, r6
/* 803FC550 003C5B10  40 80 00 24 */	bge .L_803FC574
/* 803FC554 003C5B14  38 E4 FF FF */	addi r7, r4, -1
/* 803FC558 003C5B18  39 00 00 01 */	li r8, 1
/* 803FC55C 003C5B1C  80 A3 00 CC */	lwz r5, 0xcc(r3)
/* 803FC560 003C5B20  7D 07 38 30 */	slw r7, r8, r7
/* 803FC564 003C5B24  7C E5 28 39 */	and. r5, r7, r5
/* 803FC568 003C5B28  41 82 00 0C */	beq .L_803FC574
/* 803FC56C 003C5B2C  38 A0 00 01 */	li r5, 1
/* 803FC570 003C5B30  48 00 00 08 */	b .L_803FC578
.L_803FC574:
/* 803FC574 003C5B34  38 A0 00 00 */	li r5, 0
.L_803FC578:
/* 803FC578 003C5B38  2C 05 00 00 */	cmpwi r5, 0
/* 803FC57C 003C5B3C  40 82 02 78 */	bne .L_803FC7F4
/* 803FC580 003C5B40  3C A0 00 01 */	lis r5, 0x00010001@ha
/* 803FC584 003C5B44  38 E5 00 01 */	addi r7, r5, 0x00010001@l
/* 803FC588 003C5B48  7C 04 38 00 */	cmpw r4, r7
/* 803FC58C 003C5B4C  41 82 01 E0 */	beq .L_803FC76C
/* 803FC590 003C5B50  40 80 00 10 */	bge .L_803FC5A0
/* 803FC594 003C5B54  2C 04 00 01 */	cmpwi r4, 1
/* 803FC598 003C5B58  41 82 00 18 */	beq .L_803FC5B0
/* 803FC59C 003C5B5C  48 00 02 1C */	b .L_803FC7B8
.L_803FC5A0:
/* 803FC5A0 003C5B60  38 A5 00 04 */	addi r5, r5, 4
/* 803FC5A4 003C5B64  7C 04 28 00 */	cmpw r4, r5
/* 803FC5A8 003C5B68  40 80 02 10 */	bge .L_803FC7B8
/* 803FC5AC 003C5B6C  48 00 01 A8 */	b .L_803FC754
.L_803FC5B0:
/* 803FC5B0 003C5B70  80 A3 00 D4 */	lwz r5, 0xd4(r3)
/* 803FC5B4 003C5B74  2C 05 00 00 */	cmpwi r5, 0
/* 803FC5B8 003C5B78  41 82 00 40 */	beq .L_803FC5F8
/* 803FC5BC 003C5B7C  A0 83 00 DA */	lhz r4, 0xda(r3)
/* 803FC5C0 003C5B80  54 84 07 FF */	clrlwi. r4, r4, 0x1f
/* 803FC5C4 003C5B84  41 82 00 34 */	beq .L_803FC5F8
/* 803FC5C8 003C5B88  88 63 00 D8 */	lbz r3, 0xd8(r3)
/* 803FC5CC 003C5B8C  54 63 07 FF */	clrlwi. r3, r3, 0x1f
/* 803FC5D0 003C5B90  41 82 00 28 */	beq .L_803FC5F8
/* 803FC5D4 003C5B94  7C A3 2B 78 */	mr r3, r5
/* 803FC5D8 003C5B98  7F A5 EB 78 */	mr r5, r29
/* 803FC5DC 003C5B9C  81 83 00 00 */	lwz r12, 0(r3)
/* 803FC5E0 003C5BA0  7C 06 03 78 */	mr r6, r0
/* 803FC5E4 003C5BA4  7F E7 FB 78 */	mr r7, r31
/* 803FC5E8 003C5BA8  38 80 00 01 */	li r4, 1
/* 803FC5EC 003C5BAC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 803FC5F0 003C5BB0  7D 89 03 A6 */	mtctr r12
/* 803FC5F4 003C5BB4  4E 80 04 21 */	bctrl 
.L_803FC5F8:
/* 803FC5F8 003C5BB8  81 9D 00 00 */	lwz r12, 0(r29)
/* 803FC5FC 003C5BBC  7F A3 EB 78 */	mr r3, r29
/* 803FC600 003C5BC0  7F E4 FB 78 */	mr r4, r31
/* 803FC604 003C5BC4  38 A1 00 08 */	addi r5, r1, 8
/* 803FC608 003C5BC8  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 803FC60C 003C5BCC  7D 89 03 A6 */	mtctr r12
/* 803FC610 003C5BD0  4E 80 04 21 */	bctrl 
/* 803FC614 003C5BD4  80 7D 00 D4 */	lwz r3, 0xd4(r29)
/* 803FC618 003C5BD8  80 C1 00 08 */	lwz r6, 8(r1)
/* 803FC61C 003C5BDC  2C 03 00 00 */	cmpwi r3, 0
/* 803FC620 003C5BE0  41 82 00 38 */	beq .L_803FC658
/* 803FC624 003C5BE4  A0 1D 00 DA */	lhz r0, 0xda(r29)
/* 803FC628 003C5BE8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803FC62C 003C5BEC  41 82 00 2C */	beq .L_803FC658
/* 803FC630 003C5BF0  88 1D 00 D8 */	lbz r0, 0xd8(r29)
/* 803FC634 003C5BF4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 803FC638 003C5BF8  41 82 00 20 */	beq .L_803FC658
/* 803FC63C 003C5BFC  81 83 00 00 */	lwz r12, 0(r3)
/* 803FC640 003C5C00  7F A5 EB 78 */	mr r5, r29
/* 803FC644 003C5C04  7F E7 FB 78 */	mr r7, r31
/* 803FC648 003C5C08  38 80 00 02 */	li r4, 2
/* 803FC64C 003C5C0C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 803FC650 003C5C10  7D 89 03 A6 */	mtctr r12
/* 803FC654 003C5C14  4E 80 04 21 */	bctrl 
.L_803FC658:
/* 803FC658 003C5C18  80 7D 00 E8 */	lwz r3, 0xe8(r29)
/* 803FC65C 003C5C1C  2C 03 00 00 */	cmpwi r3, 0
/* 803FC660 003C5C20  41 82 00 20 */	beq .L_803FC680
/* 803FC664 003C5C24  81 83 00 00 */	lwz r12, 0(r3)
/* 803FC668 003C5C28  7F C4 F3 78 */	mr r4, r30
/* 803FC66C 003C5C2C  38 DD 00 3C */	addi r6, r29, 0x3c
/* 803FC670 003C5C30  80 A1 00 08 */	lwz r5, 8(r1)
/* 803FC674 003C5C34  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 803FC678 003C5C38  7D 89 03 A6 */	mtctr r12
/* 803FC67C 003C5C3C  4E 80 04 21 */	bctrl 
.L_803FC680:
/* 803FC680 003C5C40  83 5D 00 E4 */	lwz r26, 0xe4(r29)
/* 803FC684 003C5C44  3B 20 00 00 */	li r25, 0
/* 803FC688 003C5C48  3B 60 00 00 */	li r27, 0
/* 803FC68C 003C5C4C  48 00 00 78 */	b .L_803FC704
.L_803FC690:
/* 803FC690 003C5C50  80 7D 00 EC */	lwz r3, 0xec(r29)
/* 803FC694 003C5C54  80 0D 9C 58 */	lwz r0, lbl_80665DD8@sda21(r13)
/* 803FC698 003C5C58  7C C3 D8 2E */	lwzx r6, r3, r27
/* 803FC69C 003C5C5C  83 01 00 08 */	lwz r24, 8(r1)
/* 803FC6A0 003C5C60  7C 06 00 40 */	cmplw r6, r0
/* 803FC6A4 003C5C64  41 82 00 58 */	beq .L_803FC6FC
/* 803FC6A8 003C5C68  80 7D 00 E8 */	lwz r3, 0xe8(r29)
/* 803FC6AC 003C5C6C  80 9D 00 DC */	lwz r4, 0xdc(r29)
/* 803FC6B0 003C5C70  2C 03 00 00 */	cmpwi r3, 0
/* 803FC6B4 003C5C74  7F 84 D8 2E */	lwzx r28, r4, r27
/* 803FC6B8 003C5C78  41 82 00 20 */	beq .L_803FC6D8
/* 803FC6BC 003C5C7C  38 81 00 10 */	addi r4, r1, 0x10
/* 803FC6C0 003C5C80  38 A0 00 01 */	li r5, 1
/* 803FC6C4 003C5C84  4B FF BE 8D */	bl GetScnMtxPos__Q34nw4r3g3d12ScnMdlSimpleCFPQ34nw4r4math5MTX34Q44nw4r3g3d6ScnObj13ScnObjMtxTypeUl
/* 803FC6C8 003C5C88  2C 03 00 00 */	cmpwi r3, 0
/* 803FC6CC 003C5C8C  40 82 00 10 */	bne .L_803FC6DC
/* 803FC6D0 003C5C90  63 18 00 01 */	ori r24, r24, 1
/* 803FC6D4 003C5C94  48 00 00 08 */	b .L_803FC6DC
.L_803FC6D8:
/* 803FC6D8 003C5C98  63 18 00 01 */	ori r24, r24, 1
.L_803FC6DC:
/* 803FC6DC 003C5C9C  81 9C 00 00 */	lwz r12, 0(r28)
/* 803FC6E0 003C5CA0  7F 83 E3 78 */	mr r3, r28
/* 803FC6E4 003C5CA4  7F C4 F3 78 */	mr r4, r30
/* 803FC6E8 003C5CA8  7F 05 C3 78 */	mr r5, r24
/* 803FC6EC 003C5CAC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 803FC6F0 003C5CB0  38 C1 00 10 */	addi r6, r1, 0x10
/* 803FC6F4 003C5CB4  7D 89 03 A6 */	mtctr r12
/* 803FC6F8 003C5CB8  4E 80 04 21 */	bctrl 
.L_803FC6FC:
/* 803FC6FC 003C5CBC  3B 7B 00 04 */	addi r27, r27, 4
/* 803FC700 003C5CC0  3B 39 00 01 */	addi r25, r25, 1
.L_803FC704:
/* 803FC704 003C5CC4  7C 19 D0 40 */	cmplw r25, r26
/* 803FC708 003C5CC8  41 80 FF 88 */	blt .L_803FC690
/* 803FC70C 003C5CCC  80 7D 00 D4 */	lwz r3, 0xd4(r29)
/* 803FC710 003C5CD0  80 C1 00 08 */	lwz r6, 8(r1)
/* 803FC714 003C5CD4  2C 03 00 00 */	cmpwi r3, 0
/* 803FC718 003C5CD8  41 82 00 DC */	beq .L_803FC7F4
/* 803FC71C 003C5CDC  A0 1D 00 DA */	lhz r0, 0xda(r29)
/* 803FC720 003C5CE0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803FC724 003C5CE4  41 82 00 D0 */	beq .L_803FC7F4
/* 803FC728 003C5CE8  88 1D 00 D8 */	lbz r0, 0xd8(r29)
/* 803FC72C 003C5CEC  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 803FC730 003C5CF0  41 82 00 C4 */	beq .L_803FC7F4
/* 803FC734 003C5CF4  81 83 00 00 */	lwz r12, 0(r3)
/* 803FC738 003C5CF8  7F A5 EB 78 */	mr r5, r29
/* 803FC73C 003C5CFC  7F E7 FB 78 */	mr r7, r31
/* 803FC740 003C5D00  38 80 00 04 */	li r4, 4
/* 803FC744 003C5D04  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 803FC748 003C5D08  7D 89 03 A6 */	mtctr r12
/* 803FC74C 003C5D0C  4E 80 04 21 */	bctrl 
/* 803FC750 003C5D10  48 00 00 A4 */	b .L_803FC7F4
.L_803FC754:
/* 803FC754 003C5D14  7F A3 EB 78 */	mr r3, r29
/* 803FC758 003C5D18  7F C4 F3 78 */	mr r4, r30
/* 803FC75C 003C5D1C  7C 05 03 78 */	mr r5, r0
/* 803FC760 003C5D20  7F E6 FB 78 */	mr r6, r31
/* 803FC764 003C5D24  4B FF 8B 81 */	bl DefG3dProcScnGroup__Q34nw4r3g3d8ScnGroupFUlUlPv
/* 803FC768 003C5D28  48 00 00 8C */	b .L_803FC7F4
.L_803FC76C:
/* 803FC76C 003C5D2C  80 63 00 E8 */	lwz r3, 0xe8(r3)
/* 803FC770 003C5D30  7C 06 18 40 */	cmplw r6, r3
/* 803FC774 003C5D34  40 82 00 2C */	bne .L_803FC7A0
/* 803FC778 003C5D38  81 83 00 00 */	lwz r12, 0(r3)
/* 803FC77C 003C5D3C  38 85 00 03 */	addi r4, r5, 3
/* 803FC780 003C5D40  7F A6 EB 78 */	mr r6, r29
/* 803FC784 003C5D44  38 A0 00 00 */	li r5, 0
/* 803FC788 003C5D48  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 803FC78C 003C5D4C  7D 89 03 A6 */	mtctr r12
/* 803FC790 003C5D50  4E 80 04 21 */	bctrl 
/* 803FC794 003C5D54  38 00 00 00 */	li r0, 0
/* 803FC798 003C5D58  90 1D 00 E8 */	stw r0, 0xe8(r29)
/* 803FC79C 003C5D5C  48 00 00 58 */	b .L_803FC7F4
.L_803FC7A0:
/* 803FC7A0 003C5D60  7F A3 EB 78 */	mr r3, r29
/* 803FC7A4 003C5D64  7F C4 F3 78 */	mr r4, r30
/* 803FC7A8 003C5D68  7C 05 03 78 */	mr r5, r0
/* 803FC7AC 003C5D6C  7F E6 FB 78 */	mr r6, r31
/* 803FC7B0 003C5D70  4B FF 8B 35 */	bl DefG3dProcScnGroup__Q34nw4r3g3d8ScnGroupFUlUlPv
/* 803FC7B4 003C5D74  48 00 00 40 */	b .L_803FC7F4
.L_803FC7B8:
/* 803FC7B8 003C5D78  80 63 00 E8 */	lwz r3, 0xe8(r3)
/* 803FC7BC 003C5D7C  2C 03 00 00 */	cmpwi r3, 0
/* 803FC7C0 003C5D80  41 82 00 20 */	beq .L_803FC7E0
/* 803FC7C4 003C5D84  81 83 00 00 */	lwz r12, 0(r3)
/* 803FC7C8 003C5D88  7F C4 F3 78 */	mr r4, r30
/* 803FC7CC 003C5D8C  7C 05 03 78 */	mr r5, r0
/* 803FC7D0 003C5D90  7F E6 FB 78 */	mr r6, r31
/* 803FC7D4 003C5D94  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 803FC7D8 003C5D98  7D 89 03 A6 */	mtctr r12
/* 803FC7DC 003C5D9C  4E 80 04 21 */	bctrl 
.L_803FC7E0:
/* 803FC7E0 003C5DA0  80 A1 00 08 */	lwz r5, 8(r1)
/* 803FC7E4 003C5DA4  7F A3 EB 78 */	mr r3, r29
/* 803FC7E8 003C5DA8  7F C4 F3 78 */	mr r4, r30
/* 803FC7EC 003C5DAC  7F E6 FB 78 */	mr r6, r31
/* 803FC7F0 003C5DB0  4B FF 8A F5 */	bl DefG3dProcScnGroup__Q34nw4r3g3d8ScnGroupFUlUlPv
.L_803FC7F4:
/* 803FC7F4 003C5DB4  39 61 00 60 */	addi r11, r1, 0x60
/* 803FC7F8 003C5DB8  4B EB D9 9D */	bl _restgpr_24
/* 803FC7FC 003C5DBC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803FC800 003C5DC0  7C 08 03 A6 */	mtlr r0
/* 803FC804 003C5DC4  38 21 00 60 */	addi r1, r1, 0x60
/* 803FC808 003C5DC8  4E 80 00 20 */	blr 

.global __dt__Q34nw4r3g3d12ScnMdlExpandFv
__dt__Q34nw4r3g3d12ScnMdlExpandFv:
/* 803FC80C 003C5DCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FC810 003C5DD0  7C 08 02 A6 */	mflr r0
/* 803FC814 003C5DD4  2C 03 00 00 */	cmpwi r3, 0
/* 803FC818 003C5DD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FC81C 003C5DDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803FC820 003C5DE0  7C 7F 1B 78 */	mr r31, r3
/* 803FC824 003C5DE4  41 82 00 4C */	beq .L_803FC870
/* 803FC828 003C5DE8  80 03 00 E8 */	lwz r0, 0xe8(r3)
/* 803FC82C 003C5DEC  3C 80 80 57 */	lis r4, __vt__g3d_scnmdlexpand@ha
/* 803FC830 003C5DF0  38 84 D0 C8 */	addi r4, r4, __vt__g3d_scnmdlexpand@l
/* 803FC834 003C5DF4  2C 00 00 00 */	cmpwi r0, 0
/* 803FC838 003C5DF8  90 83 00 00 */	stw r4, 0(r3)
/* 803FC83C 003C5DFC  41 82 00 28 */	beq .L_803FC864
/* 803FC840 003C5E00  7C 03 03 78 */	mr r3, r0
/* 803FC844 003C5E04  3C 80 00 01 */	lis r4, 0x00010003@ha
/* 803FC848 003C5E08  81 83 00 00 */	lwz r12, 0(r3)
/* 803FC84C 003C5E0C  7F E6 FB 78 */	mr r6, r31
/* 803FC850 003C5E10  38 84 00 03 */	addi r4, r4, 0x00010003@l
/* 803FC854 003C5E14  38 A0 00 00 */	li r5, 0
/* 803FC858 003C5E18  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 803FC85C 003C5E1C  7D 89 03 A6 */	mtctr r12
/* 803FC860 003C5E20  4E 80 04 21 */	bctrl 
.L_803FC864:
/* 803FC864 003C5E24  7F E3 FB 78 */	mr r3, r31
/* 803FC868 003C5E28  38 80 00 00 */	li r4, 0
/* 803FC86C 003C5E2C  4B FF 92 11 */	bl __dt__Q34nw4r3g3d8ScnGroupFv
.L_803FC870:
/* 803FC870 003C5E30  7F E3 FB 78 */	mr r3, r31
/* 803FC874 003C5E34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803FC878 003C5E38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FC87C 003C5E3C  7C 08 03 A6 */	mtlr r0
/* 803FC880 003C5E40  38 21 00 10 */	addi r1, r1, 0x10
/* 803FC884 003C5E44  4E 80 00 20 */	blr 

.global IsDerivedFrom__Q34nw4r3g3d12ScnMdlExpandCFQ44nw4r3g3d6G3dObj7TypeObj
IsDerivedFrom__Q34nw4r3g3d12ScnMdlExpandCFQ44nw4r3g3d6G3dObj7TypeObj:
/* 803FC888 003C5E48  3C 60 80 52 */	lis r3, lbl_805210E8@ha
/* 803FC88C 003C5E4C  80 04 00 00 */	lwz r0, 0(r4)
/* 803FC890 003C5E50  38 63 10 E8 */	addi r3, r3, lbl_805210E8@l
/* 803FC894 003C5E54  7C 00 18 40 */	cmplw r0, r3
/* 803FC898 003C5E58  40 82 00 0C */	bne .L_803FC8A4
/* 803FC89C 003C5E5C  38 60 00 01 */	li r3, 1
/* 803FC8A0 003C5E60  4E 80 00 20 */	blr
.L_803FC8A4:
/* 803FC8A4 003C5E64  3C 60 80 52 */	lis r3, lbl_805210A0@ha
/* 803FC8A8 003C5E68  80 04 00 00 */	lwz r0, 0(r4)
/* 803FC8AC 003C5E6C  38 63 10 A0 */	addi r3, r3, lbl_805210A0@l
/* 803FC8B0 003C5E70  7C 00 18 40 */	cmplw r0, r3
/* 803FC8B4 003C5E74  40 82 00 0C */	bne .L_803FC8C0
/* 803FC8B8 003C5E78  38 60 00 01 */	li r3, 1
/* 803FC8BC 003C5E7C  4E 80 00 20 */	blr
.L_803FC8C0:
/* 803FC8C0 003C5E80  3C 60 80 52 */	lis r3, lbl_80521080@ha
/* 803FC8C4 003C5E84  38 63 10 80 */	addi r3, r3, lbl_80521080@l
/* 803FC8C8 003C5E88  7C 00 18 40 */	cmplw r0, r3
/* 803FC8CC 003C5E8C  40 82 00 0C */	bne .L_803FC8D8
/* 803FC8D0 003C5E90  38 60 00 01 */	li r3, 1
/* 803FC8D4 003C5E94  4E 80 00 20 */	blr
.L_803FC8D8:
/* 803FC8D8 003C5E98  3C 60 80 52 */	lis r3, lbl_80520F58@ha
/* 803FC8DC 003C5E9C  38 63 0F 58 */	addi r3, r3, lbl_80520F58@l
/* 803FC8E0 003C5EA0  7C 00 18 50 */	subf r0, r0, r3
/* 803FC8E4 003C5EA4  7C 00 00 34 */	cntlzw r0, r0
/* 803FC8E8 003C5EA8  54 03 D9 7E */	srwi r3, r0, 5
/* 803FC8EC 003C5EAC  4E 80 00 20 */	blr 

.global GetTypeName__Q34nw4r3g3d12ScnMdlExpandCFv
GetTypeName__Q34nw4r3g3d12ScnMdlExpandCFv:
/* 803FC8F0 003C5EB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FC8F4 003C5EB4  7C 08 02 A6 */	mflr r0
/* 803FC8F8 003C5EB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FC8FC 003C5EBC  81 83 00 00 */	lwz r12, 0(r3)
/* 803FC900 003C5EC0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 803FC904 003C5EC4  7D 89 03 A6 */	mtctr r12
/* 803FC908 003C5EC8  4E 80 04 21 */	bctrl 
/* 803FC90C 003C5ECC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FC910 003C5ED0  38 63 00 04 */	addi r3, r3, 4
/* 803FC914 003C5ED4  7C 08 03 A6 */	mtlr r0
/* 803FC918 003C5ED8  38 21 00 10 */	addi r1, r1, 0x10
/* 803FC91C 003C5EDC  4E 80 00 20 */	blr


.global GetTypeObj__Q34nw4r3g3d12ScnMdlExpandCFv
GetTypeObj__Q34nw4r3g3d12ScnMdlExpandCFv:
/* 803FC920 003C5EE0  3C 60 80 52 */	lis r3, lbl_805210E8@ha
/* 803FC924 003C5EE4  38 63 10 E8 */	addi r3, r3, lbl_805210E8@l
/* 803FC928 003C5EE8  4E 80 00 20 */	blr 

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0


.global lbl_805210E8
lbl_805210E8:
	.4byte 0x0000000D
	.asciz "ScnMdlExpand"
	.balign 4
	.4byte 0

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global __vt__g3d_scnmdlexpand
__vt__g3d_scnmdlexpand:
	.4byte 0
	.4byte 0
	.4byte IsDerivedFrom__Q34nw4r3g3d12ScnMdlExpandCFQ44nw4r3g3d6G3dObj7TypeObj
	.4byte G3dProc__Q34nw4r3g3d12ScnMdlExpandFUlUlPv
	.4byte __dt__Q34nw4r3g3d12ScnMdlExpandFv
	.4byte GetTypeObj__Q34nw4r3g3d12ScnMdlExpandCFv
	.4byte GetTypeName__Q34nw4r3g3d12ScnMdlExpandCFv
	.4byte ForEach__Q34nw4r3g3d8ScnGroupFPFPQ34nw4r3g3d6ScnObjPv_Q44nw4r3g3d6ScnObj13ForEachResultPvb
	.4byte SetScnObjOption__Q34nw4r3g3d6ScnObjFUlUl
	.4byte GetScnObjOption__Q34nw4r3g3d6ScnObjCFUlPUl
	.4byte GetValueForSortOpa__Q34nw4r3g3d6ScnObjCFv
	.4byte GetValueForSortXlu__Q34nw4r3g3d6ScnObjCFv
	.4byte CalcWorldMtx__Q34nw4r3g3d6ScnObjFPCQ34nw4r4math5MTX34PUl
	.4byte func_803FC21C
	.4byte Remove__Q34nw4r3g3d12ScnMdlExpandFUl
	.4byte Remove__Q34nw4r3g3d12ScnMdlExpandFPQ34nw4r3g3d6ScnObj

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global lbl_80665DD8
lbl_80665DD8:
	.4byte 0xFFFFFFFF
	.4byte 0
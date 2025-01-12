.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900


#not sure if the first few functions at the start/end belong here

.global func_8038CF04
func_8038CF04:
/* 8038CF04 003564C4  2C 04 00 00 */	cmpwi r4, 0
/* 8038CF08 003564C8  40 82 00 10 */	bne .L_8038CF18
/* 8038CF0C 003564CC  38 00 00 00 */	li r0, 0
/* 8038CF10 003564D0  90 03 00 38 */	stw r0, 0x38(r3)
/* 8038CF14 003564D4  4E 80 00 20 */	blr
.L_8038CF18:
/* 8038CF18 003564D8  38 00 00 01 */	li r0, 1
/* 8038CF1C 003564DC  90 03 00 38 */	stw r0, 0x38(r3)
/* 8038CF20 003564E0  4E 80 00 20 */	blr 

.global AHXTBL_GetWtblInfo
AHXTBL_GetWtblInfo:
/* 8038CF24 003564E4  2C 03 00 00 */	cmpwi r3, 0
/* 8038CF28 003564E8  41 82 00 10 */	beq .L_8038CF38
/* 8038CF2C 003564EC  3C A0 80 56 */	lis r5, lbl_80566078@ha
/* 8038CF30 003564F0  80 05 60 78 */	lwz r0, lbl_80566078@l(r5)
/* 8038CF34 003564F4  90 03 00 00 */	stw r0, 0(r3)
.L_8038CF38:
/* 8038CF38 003564F8  2C 04 00 00 */	cmpwi r4, 0
/* 8038CF3C 003564FC  4D 82 00 20 */	beqlr 
/* 8038CF40 00356500  3C 60 80 56 */	lis r3, lbl_8056607C@ha
/* 8038CF44 00356504  80 03 60 7C */	lwz r0, lbl_8056607C@l(r3)
/* 8038CF48 00356508  90 04 00 00 */	stw r0, 0(r4)
/* 8038CF4C 0035650C  4E 80 00 20 */	blr 

.global adxhdr_get_base_info
adxhdr_get_base_info:
/* 8038CF50 00356510  88 03 00 00 */	lbz r0, 0(r3)
/* 8038CF54 00356514  98 04 00 00 */	stb r0, 0(r4)
/* 8038CF58 00356518  88 03 00 01 */	lbz r0, 1(r3)
/* 8038CF5C 0035651C  98 04 00 01 */	stb r0, 1(r4)
/* 8038CF60 00356520  88 03 00 02 */	lbz r0, 2(r3)
/* 8038CF64 00356524  98 04 00 02 */	stb r0, 2(r4)
/* 8038CF68 00356528  88 03 00 03 */	lbz r0, 3(r3)
/* 8038CF6C 0035652C  98 04 00 03 */	stb r0, 3(r4)
/* 8038CF70 00356530  88 03 00 05 */	lbz r0, 5(r3)
/* 8038CF74 00356534  88 E3 00 06 */	lbz r7, 6(r3)
/* 8038CF78 00356538  88 C3 00 07 */	lbz r6, 7(r3)
/* 8038CF7C 0035653C  54 00 80 1E */	slwi r0, r0, 0x10
/* 8038CF80 00356540  88 A3 00 04 */	lbz r5, 4(r3)
/* 8038CF84 00356544  50 E6 44 2E */	rlwimi r6, r7, 8, 0x10, 0x17
/* 8038CF88 00356548  50 A0 C0 0E */	rlwimi r0, r5, 0x18, 0, 7
/* 8038CF8C 0035654C  7C C0 03 78 */	or r0, r6, r0
/* 8038CF90 00356550  90 04 00 04 */	stw r0, 4(r4)
/* 8038CF94 00356554  88 03 00 09 */	lbz r0, 9(r3)
/* 8038CF98 00356558  88 E3 00 0A */	lbz r7, 0xa(r3)
/* 8038CF9C 0035655C  88 C3 00 0B */	lbz r6, 0xb(r3)
/* 8038CFA0 00356560  54 00 80 1E */	slwi r0, r0, 0x10
/* 8038CFA4 00356564  88 A3 00 08 */	lbz r5, 8(r3)
/* 8038CFA8 00356568  50 E6 44 2E */	rlwimi r6, r7, 8, 0x10, 0x17
/* 8038CFAC 0035656C  50 A0 C0 0E */	rlwimi r0, r5, 0x18, 0, 7
/* 8038CFB0 00356570  7C C0 03 78 */	or r0, r6, r0
/* 8038CFB4 00356574  90 04 00 08 */	stw r0, 8(r4)
/* 8038CFB8 00356578  88 A3 00 0C */	lbz r5, 0xc(r3)
/* 8038CFBC 0035657C  88 03 00 0D */	lbz r0, 0xd(r3)
/* 8038CFC0 00356580  50 A0 44 2E */	rlwimi r0, r5, 8, 0x10, 0x17
/* 8038CFC4 00356584  B0 04 00 0C */	sth r0, 0xc(r4)
/* 8038CFC8 00356588  88 03 00 0E */	lbz r0, 0xe(r3)
/* 8038CFCC 0035658C  98 04 00 3C */	stb r0, 0x3c(r4)
/* 8038CFD0 00356590  88 03 00 0F */	lbz r0, 0xf(r3)
/* 8038CFD4 00356594  98 04 00 3D */	stb r0, 0x3d(r4)
/* 8038CFD8 00356598  4E 80 00 20 */	blr 

.global adxhdr_get_ply_prm
adxhdr_get_ply_prm:
/* 8038CFDC 0035659C  88 03 00 00 */	lbz r0, 0(r3)
/* 8038CFE0 003565A0  88 A3 00 01 */	lbz r5, 1(r3)
/* 8038CFE4 003565A4  50 05 44 2E */	rlwimi r5, r0, 8, 0x10, 0x17
/* 8038CFE8 003565A8  7C A0 07 35 */	extsh. r0, r5
/* 8038CFEC 003565AC  B0 A4 00 00 */	sth r5, 0(r4)
/* 8038CFF0 003565B0  40 81 00 14 */	ble .L_8038D004
/* 8038CFF4 003565B4  88 A3 00 02 */	lbz r5, 2(r3)
/* 8038CFF8 003565B8  88 03 00 03 */	lbz r0, 3(r3)
/* 8038CFFC 003565BC  50 A0 44 2E */	rlwimi r0, r5, 8, 0x10, 0x17
/* 8038D000 003565C0  B0 04 00 02 */	sth r0, 2(r4)
.L_8038D004:
/* 8038D004 003565C4  88 A3 00 04 */	lbz r5, 4(r3)
/* 8038D008 003565C8  7C A0 07 75 */	extsb. r0, r5
/* 8038D00C 003565CC  98 A4 00 04 */	stb r5, 4(r4)
/* 8038D010 003565D0  40 81 00 0C */	ble .L_8038D01C
/* 8038D014 003565D4  88 03 00 05 */	lbz r0, 5(r3)
/* 8038D018 003565D8  98 04 00 05 */	stb r0, 5(r4)
.L_8038D01C:
/* 8038D01C 003565DC  88 A3 00 06 */	lbz r5, 6(r3)
/* 8038D020 003565E0  7C A0 07 75 */	extsb. r0, r5
/* 8038D024 003565E4  98 A4 00 06 */	stb r5, 6(r4)
/* 8038D028 003565E8  40 81 00 0C */	ble .L_8038D034
/* 8038D02C 003565EC  88 03 00 07 */	lbz r0, 7(r3)
/* 8038D030 003565F0  98 04 00 07 */	stb r0, 7(r4)
.L_8038D034:
/* 8038D034 003565F4  88 A3 00 08 */	lbz r5, 8(r3)
/* 8038D038 003565F8  7C A0 07 75 */	extsb. r0, r5
/* 8038D03C 003565FC  98 A4 00 08 */	stb r5, 8(r4)
/* 8038D040 00356600  40 81 00 0C */	ble .L_8038D04C
/* 8038D044 00356604  88 03 00 09 */	lbz r0, 9(r3)
/* 8038D048 00356608  98 04 00 09 */	stb r0, 9(r4)
.L_8038D04C:
/* 8038D04C 0035660C  88 A3 00 0A */	lbz r5, 0xa(r3)
/* 8038D050 00356610  7C A0 07 75 */	extsb. r0, r5
/* 8038D054 00356614  98 A4 00 0A */	stb r5, 0xa(r4)
/* 8038D058 00356618  4C 81 00 20 */	blelr 
/* 8038D05C 0035661C  88 03 00 0B */	lbz r0, 0xb(r3)
/* 8038D060 00356620  98 04 00 0B */	stb r0, 0xb(r4)
/* 8038D064 00356624  4E 80 00 20 */	blr 

.global ADX_DecodeHeader
ADX_DecodeHeader:
/* 8038D068 00356628  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038D06C 0035662C  7C 08 02 A6 */	mflr r0
/* 8038D070 00356630  2C 05 00 00 */	cmpwi r5, 0
/* 8038D074 00356634  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038D078 00356638  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 8038D07C 0035663C  7C 7B 1B 78 */	mr r27, r3
/* 8038D080 00356640  7C DD 33 78 */	mr r29, r6
/* 8038D084 00356644  41 82 00 0C */	beq .L_8038D090
/* 8038D088 00356648  38 00 00 00 */	li r0, 0
/* 8038D08C 0035664C  90 05 00 00 */	stw r0, 0(r5)
.L_8038D090:
/* 8038D090 00356650  2C 04 00 04 */	cmpwi r4, 4
/* 8038D094 00356654  40 80 00 0C */	bge .L_8038D0A0
/* 8038D098 00356658  38 60 FF FF */	li r3, -1
/* 8038D09C 0035665C  48 00 01 F8 */	b .L_8038D294
.L_8038D0A0:
/* 8038D0A0 00356660  88 E3 00 00 */	lbz r7, 0(r3)
/* 8038D0A4 00356664  88 03 00 01 */	lbz r0, 1(r3)
/* 8038D0A8 00356668  50 E0 44 2E */	rlwimi r0, r7, 8, 0x10, 0x17
/* 8038D0AC 0035666C  28 00 80 00 */	cmplwi r0, 0x8000
/* 8038D0B0 00356670  41 82 00 0C */	beq .L_8038D0BC
/* 8038D0B4 00356674  38 60 FF FC */	li r3, -4
/* 8038D0B8 00356678  48 00 01 DC */	b .L_8038D294
.L_8038D0BC:
/* 8038D0BC 0035667C  2C 05 00 00 */	cmpwi r5, 0
/* 8038D0C0 00356680  88 03 00 02 */	lbz r0, 2(r3)
/* 8038D0C4 00356684  8B C3 00 03 */	lbz r30, 3(r3)
/* 8038D0C8 00356688  50 1E 44 2E */	rlwimi r30, r0, 8, 0x10, 0x17
/* 8038D0CC 0035668C  41 82 00 08 */	beq .L_8038D0D4
/* 8038D0D0 00356690  93 C5 00 00 */	stw r30, 0(r5)
.L_8038D0D4:
/* 8038D0D4 00356694  2C 06 00 00 */	cmpwi r6, 0
/* 8038D0D8 00356698  40 82 00 0C */	bne .L_8038D0E4
/* 8038D0DC 0035669C  38 60 00 00 */	li r3, 0
/* 8038D0E0 003566A0  48 00 01 B4 */	b .L_8038D294
.L_8038D0E4:
/* 8038D0E4 003566A4  38 1E 00 04 */	addi r0, r30, 4
/* 8038D0E8 003566A8  7C 04 00 00 */	cmpw r4, r0
/* 8038D0EC 003566AC  40 80 00 0C */	bge .L_8038D0F8
/* 8038D0F0 003566B0  38 60 FF FE */	li r3, -2
/* 8038D0F4 003566B4  48 00 01 A0 */	b .L_8038D294
.L_8038D0F8:
/* 8038D0F8 003566B8  38 1E FF FA */	addi r0, r30, -6
/* 8038D0FC 003566BC  2C 00 00 10 */	cmpwi r0, 0x10
/* 8038D100 003566C0  40 80 00 0C */	bge .L_8038D10C
/* 8038D104 003566C4  38 60 FF FE */	li r3, -2
/* 8038D108 003566C8  48 00 01 8C */	b .L_8038D294
.L_8038D10C:
/* 8038D10C 003566CC  7F A4 EB 78 */	mr r4, r29
/* 8038D110 003566D0  38 63 00 04 */	addi r3, r3, 4
/* 8038D114 003566D4  4B FF FE 3D */	bl adxhdr_get_base_info
/* 8038D118 003566D8  88 1D 00 3C */	lbz r0, 0x3c(r29)
/* 8038D11C 003566DC  3B FB 00 14 */	addi r31, r27, 0x14
/* 8038D120 003566E0  3B DE FF EA */	addi r30, r30, -22
/* 8038D124 003566E4  2C 00 00 04 */	cmpwi r0, 4
/* 8038D128 003566E8  40 82 00 0C */	bne .L_8038D134
/* 8038D12C 003566EC  3B FF 00 0C */	addi r31, r31, 0xc
/* 8038D130 003566F0  3B DE FF F4 */	addi r30, r30, -12
.L_8038D134:
/* 8038D134 003566F4  2C 1E 00 04 */	cmpwi r30, 4
/* 8038D138 003566F8  40 80 00 0C */	bge .L_8038D144
/* 8038D13C 003566FC  38 60 00 00 */	li r3, 0
/* 8038D140 00356700  48 00 01 54 */	b .L_8038D294
.L_8038D144:
/* 8038D144 00356704  88 1F 00 02 */	lbz r0, 2(r31)
/* 8038D148 00356708  88 7F 00 03 */	lbz r3, 3(r31)
/* 8038D14C 0035670C  3B FF 00 04 */	addi r31, r31, 4
/* 8038D150 00356710  50 03 44 2E */	rlwimi r3, r0, 8, 0x10, 0x17
/* 8038D154 00356714  7C 60 07 34 */	extsh r0, r3
/* 8038D158 00356718  B0 7D 00 0E */	sth r3, 0xe(r29)
/* 8038D15C 0035671C  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8038D160 00356720  7C 1E 00 00 */	cmpw r30, r0
/* 8038D164 00356724  40 80 00 0C */	bge .L_8038D170
/* 8038D168 00356728  38 60 00 00 */	li r3, 0
/* 8038D16C 0035672C  48 00 01 28 */	b .L_8038D294
.L_8038D170:
/* 8038D170 00356730  7F A3 EB 78 */	mr r3, r29
/* 8038D174 00356734  38 80 00 00 */	li r4, 0
/* 8038D178 00356738  48 00 00 BC */	b .L_8038D234
.L_8038D17C:
/* 8038D17C 0035673C  88 BF 00 00 */	lbz r5, 0(r31)
/* 8038D180 00356740  38 84 00 01 */	addi r4, r4, 1
/* 8038D184 00356744  88 1F 00 01 */	lbz r0, 1(r31)
/* 8038D188 00356748  50 A0 44 2E */	rlwimi r0, r5, 8, 0x10, 0x17
/* 8038D18C 0035674C  B0 03 00 10 */	sth r0, 0x10(r3)
/* 8038D190 00356750  88 BF 00 02 */	lbz r5, 2(r31)
/* 8038D194 00356754  88 1F 00 03 */	lbz r0, 3(r31)
/* 8038D198 00356758  50 A0 44 2E */	rlwimi r0, r5, 8, 0x10, 0x17
/* 8038D19C 0035675C  B0 03 00 12 */	sth r0, 0x12(r3)
/* 8038D1A0 00356760  88 1F 00 05 */	lbz r0, 5(r31)
/* 8038D1A4 00356764  88 FF 00 06 */	lbz r7, 6(r31)
/* 8038D1A8 00356768  88 DF 00 07 */	lbz r6, 7(r31)
/* 8038D1AC 0035676C  54 00 80 1E */	slwi r0, r0, 0x10
/* 8038D1B0 00356770  88 BF 00 04 */	lbz r5, 4(r31)
/* 8038D1B4 00356774  50 E6 44 2E */	rlwimi r6, r7, 8, 0x10, 0x17
/* 8038D1B8 00356778  50 A0 C0 0E */	rlwimi r0, r5, 0x18, 0, 7
/* 8038D1BC 0035677C  7C C0 03 78 */	or r0, r6, r0
/* 8038D1C0 00356780  90 03 00 14 */	stw r0, 0x14(r3)
/* 8038D1C4 00356784  88 1F 00 09 */	lbz r0, 9(r31)
/* 8038D1C8 00356788  88 FF 00 0A */	lbz r7, 0xa(r31)
/* 8038D1CC 0035678C  88 DF 00 0B */	lbz r6, 0xb(r31)
/* 8038D1D0 00356790  54 00 80 1E */	slwi r0, r0, 0x10
/* 8038D1D4 00356794  88 BF 00 08 */	lbz r5, 8(r31)
/* 8038D1D8 00356798  50 E6 44 2E */	rlwimi r6, r7, 8, 0x10, 0x17
/* 8038D1DC 0035679C  50 A0 C0 0E */	rlwimi r0, r5, 0x18, 0, 7
/* 8038D1E0 003567A0  7C C0 03 78 */	or r0, r6, r0
/* 8038D1E4 003567A4  90 03 00 18 */	stw r0, 0x18(r3)
/* 8038D1E8 003567A8  88 1F 00 0D */	lbz r0, 0xd(r31)
/* 8038D1EC 003567AC  88 FF 00 0E */	lbz r7, 0xe(r31)
/* 8038D1F0 003567B0  88 DF 00 0F */	lbz r6, 0xf(r31)
/* 8038D1F4 003567B4  54 00 80 1E */	slwi r0, r0, 0x10
/* 8038D1F8 003567B8  88 BF 00 0C */	lbz r5, 0xc(r31)
/* 8038D1FC 003567BC  50 E6 44 2E */	rlwimi r6, r7, 8, 0x10, 0x17
/* 8038D200 003567C0  50 A0 C0 0E */	rlwimi r0, r5, 0x18, 0, 7
/* 8038D204 003567C4  7C C0 03 78 */	or r0, r6, r0
/* 8038D208 003567C8  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8038D20C 003567CC  88 1F 00 11 */	lbz r0, 0x11(r31)
/* 8038D210 003567D0  88 FF 00 12 */	lbz r7, 0x12(r31)
/* 8038D214 003567D4  88 DF 00 13 */	lbz r6, 0x13(r31)
/* 8038D218 003567D8  54 00 80 1E */	slwi r0, r0, 0x10
/* 8038D21C 003567DC  88 BF 00 10 */	lbz r5, 0x10(r31)
/* 8038D220 003567E0  50 E6 44 2E */	rlwimi r6, r7, 8, 0x10, 0x17
/* 8038D224 003567E4  50 A0 C0 0E */	rlwimi r0, r5, 0x18, 0, 7
/* 8038D228 003567E8  7C C0 03 78 */	or r0, r6, r0
/* 8038D22C 003567EC  90 03 00 20 */	stw r0, 0x20(r3)
/* 8038D230 003567F0  38 63 00 14 */	addi r3, r3, 0x14
.L_8038D234:
/* 8038D234 003567F4  A8 1D 00 0E */	lha r0, 0xe(r29)
/* 8038D238 003567F8  7C 04 00 00 */	cmpw r4, r0
/* 8038D23C 003567FC  41 80 FF 40 */	blt .L_8038D17C
/* 8038D240 00356800  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8038D244 00356804  3B 9D 00 24 */	addi r28, r29, 0x24
/* 8038D248 00356808  3B 60 00 00 */	li r27, 0
/* 8038D24C 0035680C  7F C0 F0 50 */	subf r30, r0, r30
/* 8038D250 00356810  48 00 00 30 */	b .L_8038D280
.L_8038D254:
/* 8038D254 00356814  2C 1E 00 0C */	cmpwi r30, 0xc
/* 8038D258 00356818  40 80 00 0C */	bge .L_8038D264
/* 8038D25C 0035681C  38 60 00 00 */	li r3, 0
/* 8038D260 00356820  48 00 00 34 */	b .L_8038D294
.L_8038D264:
/* 8038D264 00356824  7F E3 FB 78 */	mr r3, r31
/* 8038D268 00356828  7F 84 E3 78 */	mr r4, r28
/* 8038D26C 0035682C  4B FF FD 71 */	bl adxhdr_get_ply_prm
/* 8038D270 00356830  3B FF 00 0C */	addi r31, r31, 0xc
/* 8038D274 00356834  3B DE FF F4 */	addi r30, r30, -12
/* 8038D278 00356838  3B 9C 00 0C */	addi r28, r28, 0xc
/* 8038D27C 0035683C  3B 7B 00 01 */	addi r27, r27, 1
.L_8038D280:
/* 8038D280 00356840  88 1D 00 03 */	lbz r0, 3(r29)
/* 8038D284 00356844  7C 00 07 74 */	extsb r0, r0
/* 8038D288 00356848  7C 1B 00 00 */	cmpw r27, r0
/* 8038D28C 0035684C  41 80 FF C8 */	blt .L_8038D254
/* 8038D290 00356850  38 60 00 00 */	li r3, 0
.L_8038D294:
/* 8038D294 00356854  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 8038D298 00356858  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038D29C 0035685C  7C 08 03 A6 */	mtlr r0
/* 8038D2A0 00356860  38 21 00 20 */	addi r1, r1, 0x20
/* 8038D2A4 00356864  4E 80 00 20 */	blr 

.global AHXTBL_GetAtblInfo
AHXTBL_GetAtblInfo:
/* 8038D2A8 00356868  2C 03 00 00 */	cmpwi r3, 0
/* 8038D2AC 0035686C  41 82 00 10 */	beq .L_8038D2BC
/* 8038D2B0 00356870  3C A0 80 57 */	lis r5, lbl_80569180@ha
/* 8038D2B4 00356874  80 05 91 80 */	lwz r0, lbl_80569180@l(r5)
/* 8038D2B8 00356878  90 03 00 00 */	stw r0, 0(r3)
.L_8038D2BC:
/* 8038D2BC 0035687C  2C 04 00 00 */	cmpwi r4, 0
/* 8038D2C0 00356880  4D 82 00 20 */	beqlr 
/* 8038D2C4 00356884  3C 60 80 57 */	lis r3, lbl_80569184@ha
/* 8038D2C8 00356888  80 03 91 84 */	lwz r0, lbl_80569184@l(r3)
/* 8038D2CC 0035688C  90 04 00 00 */	stw r0, 0(r4)
/* 8038D2D0 00356890  4E 80 00 20 */	blr 

.global AHXTBL_GetMtblInfo
AHXTBL_GetMtblInfo:
/* 8038D2D4 00356894  2C 03 00 00 */	cmpwi r3, 0
/* 8038D2D8 00356898  41 82 00 10 */	beq .L_8038D2E8
/* 8038D2DC 0035689C  3C A0 80 57 */	lis r5, lbl_80569188@ha
/* 8038D2E0 003568A0  80 05 91 88 */	lwz r0, lbl_80569188@l(r5)
/* 8038D2E4 003568A4  90 03 00 00 */	stw r0, 0(r3)
.L_8038D2E8:
/* 8038D2E8 003568A8  2C 04 00 00 */	cmpwi r4, 0
/* 8038D2EC 003568AC  4D 82 00 20 */	beqlr 
/* 8038D2F0 003568B0  3C 60 80 57 */	lis r3, lbl_8056918C@ha
/* 8038D2F4 003568B4  80 03 91 8C */	lwz r0, lbl_8056918C@l(r3)
/* 8038D2F8 003568B8  90 04 00 00 */	stw r0, 0(r4)
/* 8038D2FC 003568BC  4E 80 00 20 */	blr 


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_8056607C
lbl_8056607C:
	.4byte 0x00000880

.global lbl_80566080
lbl_80566080:
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.float 0.4 #0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x3E924925
	.4byte 0xBF5B6DB7
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0x0000000F
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x3E088889
	.4byte 0xBF6EEEEF
	.4byte 0x0000001F
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x3D842108
	.4byte 0xBF77BDF0
	.4byte 0x0000003F
	.4byte 0x00000006
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x3D020821
	.4byte 0xBF7BEFBF
	.4byte 0x0000007F
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x3C810204
	.4byte 0xBF7DFBF8
	.4byte 0x000000FF
	.4byte 0x00000008
	.4byte 0x00000003
	.4byte 0x00000008
	.4byte 0x3C008081
	.4byte 0xBF7EFEFF
	.4byte 0x000001FF
	.4byte 0x00000009
	.4byte 0x00000003
	.4byte 0x00000009
	.4byte 0x3B804020
	.4byte 0xBF7F7FC0
	.4byte 0x000003FF
	.4byte 0x0000000A
	.4byte 0x00000003
	.4byte 0x0000000A
	.4byte 0x3B002008
	.4byte 0xBF7FBFF0
	.4byte 0x000007FF
	.4byte 0x0000000B
	.4byte 0x00000003
	.4byte 0x0000000B
	.4byte 0x3A801002
	.4byte 0xBF7FDFFC
	.4byte 0x00000FFF
	.4byte 0x0000000C
	.4byte 0x00000003
	.4byte 0x0000000C
	.4byte 0x3A000801
	.4byte 0xBF7FEFFF
	.4byte 0x00001FFF
	.4byte 0x0000000D
	.4byte 0x00000003
	.4byte 0x0000000D
	.4byte 0x39800400
	.4byte 0xBF7FF800
	.4byte 0x00003FFF
	.4byte 0x0000000E
	.4byte 0x00000003
	.4byte 0x0000000E
	.4byte 0x39000200
	.4byte 0xBF7FFC00
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.float 0.4 #0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x3E924925
	.4byte 0xBF5B6DB7
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0x0000000F
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x3E088889
	.4byte 0xBF6EEEEF
	.4byte 0x0000001F
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x3D842108
	.4byte 0xBF77BDF0
	.4byte 0x0000003F
	.4byte 0x00000006
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x3D020821
	.4byte 0xBF7BEFBF
	.4byte 0x0000007F
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x3C810204
	.4byte 0xBF7DFBF8
	.4byte 0x000000FF
	.4byte 0x00000008
	.4byte 0x00000003
	.4byte 0x00000008
	.4byte 0x3C008081
	.4byte 0xBF7EFEFF
	.4byte 0x000001FF
	.4byte 0x00000009
	.4byte 0x00000003
	.4byte 0x00000009
	.4byte 0x3B804020
	.4byte 0xBF7F7FC0
	.4byte 0x000003FF
	.4byte 0x0000000A
	.4byte 0x00000003
	.4byte 0x0000000A
	.4byte 0x3B002008
	.4byte 0xBF7FBFF0
	.4byte 0x000007FF
	.4byte 0x0000000B
	.4byte 0x00000003
	.4byte 0x0000000B
	.4byte 0x3A801002
	.4byte 0xBF7FDFFC
	.4byte 0x00000FFF
	.4byte 0x0000000C
	.4byte 0x00000003
	.4byte 0x0000000C
	.4byte 0
	.4byte 0
	.4byte 0x00001FFF
	.4byte 0x0000000D
	.4byte 0x00000003
	.4byte 0x0000000D
	.4byte 0x39800400
	.4byte 0xBF7FF800
	.4byte 0x00003FFF
	.4byte 0x0000000E
	.4byte 0x00000003
	.4byte 0x0000000E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.float 0.4 #0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x3E924925
	.4byte 0xBF5B6DB7
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0x0000000F
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x3E088889
	.4byte 0xBF6EEEEF
	.4byte 0x0000001F
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x3D842108
	.4byte 0xBF77BDF0
	.4byte 0x0000003F
	.4byte 0x00000006
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x3D020821
	.4byte 0xBF7BEFBF
	.4byte 0x0000007F
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x3C810204
	.4byte 0xBF7DFBF8
	.4byte 0x000000FF
	.4byte 0x00000008
	.4byte 0x00000003
	.4byte 0x00000008
	.4byte 0x3C008081
	.4byte 0xBF7EFEFF
	.4byte 0x000001FF
	.4byte 0x00000009
	.4byte 0x00000003
	.4byte 0x00000009
	.4byte 0x3B804020
	.4byte 0xBF7F7FC0
	.4byte 0x000003FF
	.4byte 0x0000000A
	.4byte 0x00000003
	.4byte 0x0000000A
	.4byte 0x3B002008
	.4byte 0xBF7FBFF0
	.4byte 0x000007FF
	.4byte 0x0000000B
	.4byte 0x00000003
	.4byte 0x0000000B
	.4byte 0x3A801002
	.4byte 0xBF7FDFFC
	.4byte 0x00000FFF
	.4byte 0x0000000C
	.4byte 0x00000003
	.4byte 0x0000000C
	.4byte 0x3A000801
	.4byte 0xBF7FEFFF
	.4byte 0x00001FFF
	.4byte 0x0000000D
	.4byte 0x00000003
	.4byte 0x0000000D
	.4byte 0x39800400
	.4byte 0xBF7FF800
	.4byte 0x00003FFF
	.4byte 0x0000000E
	.4byte 0x00000003
	.4byte 0x0000000E
	.4byte 0x39000200
	.4byte 0xBF7FFC00
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.float 0.4 #0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x3E924925
	.4byte 0xBF5B6DB7
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0x0000000F
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x3E088889
	.4byte 0xBF6EEEEF
	.4byte 0x0000001F
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x3D842108
	.4byte 0xBF77BDF0
	.4byte 0x0000003F
	.4byte 0x00000006
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x3D020821
	.4byte 0xBF7BEFBF
	.4byte 0x0000007F
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x3C810204
	.4byte 0xBF7DFBF8
	.4byte 0x000000FF
	.4byte 0x00000008
	.4byte 0x00000003
	.4byte 0x00000008
	.4byte 0x3C008081
	.4byte 0xBF7EFEFF
	.4byte 0x000001FF
	.4byte 0x00000009
	.4byte 0x00000003
	.4byte 0x00000009
	.4byte 0x3B804020
	.4byte 0xBF7F7FC0
	.4byte 0x000003FF
	.4byte 0x0000000A
	.4byte 0x00000003
	.4byte 0x0000000A
	.4byte 0x3B002008
	.4byte 0xBF7FBFF0
	.4byte 0x000007FF
	.4byte 0x0000000B
	.4byte 0x00000003
	.4byte 0x0000000B
	.4byte 0x3A801002
	.4byte 0xBF7FDFFC
	.4byte 0x00000FFF
	.4byte 0x0000000C
	.4byte 0x00000003
	.4byte 0x0000000C
	.4byte 0x3A000801
	.4byte 0xBF7FEFFF
	.4byte 0x00001FFF
	.4byte 0x0000000D
	.4byte 0x00000003
	.4byte 0x0000000D
	.4byte 0x39800400
	.4byte 0xBF7FF800
	.4byte 0x00003FFF
	.4byte 0x0000000E
	.4byte 0x00000003
	.4byte 0x0000000E
	.4byte 0x39000200
	.4byte 0xBF7FFC00
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.float 0.4 #0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0x0000000F
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x3E088889
	.4byte 0xBF6EEEEF
	.4byte 0x0000001F
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x3D842108
	.4byte 0xBF77BDF0
	.4byte 0x0000003F
	.4byte 0x00000006
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x3D020821
	.4byte 0xBF7BEFBF
	.4byte 0x0000007F
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x3C810204
	.4byte 0xBF7DFBF8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.float 0.4 #0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0x0000000F
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x3E088889
	.4byte 0xBF6EEEEF
	.4byte 0x0000001F
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x3D842108
	.4byte 0xBF77BDF0
	.4byte 0x0000003F
	.4byte 0x00000006
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x3D020821
	.4byte 0xBF7BEFBF
	.4byte 0x0000007F
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x3C810204
	.4byte 0xBF7DFBF8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.float 0.4 #0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0x0000000F
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x3E088889
	.4byte 0xBF6EEEEF
	.4byte 0x0000001F
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x3D842108
	.4byte 0xBF77BDF0
	.4byte 0x0000003F
	.4byte 0x00000006
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x3D020821
	.4byte 0xBF7BEFBF
	.4byte 0x0000007F
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x3C810204
	.4byte 0xBF7DFBF8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.float 0.4 #0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0x0000000F
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x3E088889
	.4byte 0xBF6EEEEF
	.4byte 0x0000001F
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x3D842108
	.4byte 0xBF77BDF0
	.4byte 0x0000003F
	.4byte 0x00000006
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x3D020821
	.4byte 0xBF7BEFBF
	.4byte 0x0000007F
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x3C810204
	.4byte 0xBF7DFBF8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.float 0.4 #0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0x0000000F
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x3E088889
	.4byte 0xBF6EEEEF
	.4byte 0x0000001F
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x3D842108
	.4byte 0xBF77BDF0
	.4byte 0x0000003F
	.4byte 0x00000006
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x3D020821
	.4byte 0xBF7BEFBF
	.4byte 0x0000007F
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x3C810204
	.4byte 0xBF7DFBF8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.float 0.4 #0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0x0000000F
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x3E088889
	.4byte 0xBF6EEEEF
	.4byte 0x0000001F
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x3D842108
	.4byte 0xBF77BDF0
	.4byte 0x0000003F
	.4byte 0x00000006
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x3D020821
	.4byte 0xBF7BEFBF
	.4byte 0x0000007F
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x3C810204
	.4byte 0xBF7DFBF8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.float 0.4 #0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0x0000000F
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x3E088889
	.4byte 0xBF6EEEEF
	.4byte 0x0000001F
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x3D842108
	.4byte 0xBF77BDF0
	.4byte 0x0000003F
	.4byte 0x00000006
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x3D020821
	.4byte 0xBF7BEFBF
	.4byte 0x0000007F
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x3C810204
	.4byte 0xBF7DFBF8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.float 0.4 #0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.float 0.4 #0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.float 0.4 #0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.float 0.4 #0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.float 0.4 #0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.float 0.4 #0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.float 0.4 #0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.float 0.4 #0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.float 0.4 #0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.float 0.4 #0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.float 0.4 #0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.float 0.4 #0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.float 0.4 #0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.float 0.4 #0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.float 0.4 #0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.float 0.4 #0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.float 0.4 #0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.float 0.4 #0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.float 0.4 #0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


#belongs in ahx_cmn.s
.global ahxcmn_multiple_tbl
ahxcmn_multiple_tbl:
	.4byte 0x40000000
	.4byte 0x3FCB2FF5
	.4byte 0x3FA14518
	.float 1.0
	.4byte 0x3F4B2FF5
	.4byte 0x3F214518
	.float 0.5
	.4byte 0x3ECB2FF5
	.4byte 0x3EA14518
	.float 0.25
	.4byte 0x3E4B2FF5
	.4byte 0x3E214518
	.float 0.125
	.4byte 0x3DCB2FF5
	.4byte 0x3DA14518
	.4byte 0x3D800000
	.4byte 0x3D4B2FF5
	.4byte 0x3D214518
	.4byte 0x3D000000
	.4byte 0x3CCB2FF5
	.4byte 0x3CA14518
	.4byte 0x3C800000
	.4byte 0x3C4B2FF5
	.4byte 0x3C214518
	.4byte 0x3C000000
	.4byte 0x3BCB2FF5
	.4byte 0x3BA14518
	.4byte 0x3B800000
	.4byte 0x3B4B2FF5
	.4byte 0x3B214518
	.4byte 0x3B000000
	.4byte 0x3ACB2FF5
	.4byte 0x3AA14518
	.4byte 0x3A800000
	.4byte 0x3A4B2FF5
	.4byte 0x3A214518
	.4byte 0x3A000000
	.4byte 0x39CB2FF5
	.4byte 0x39A14518
	.4byte 0x39800000
	.4byte 0x394B2FF5
	.4byte 0x39214518
	.4byte 0x39000000
	.4byte 0x38CB2FF5
	.4byte 0x38A14518
	.4byte 0x38800000
	.4byte 0x384B2FF5
	.4byte 0x38214518
	.4byte 0x38000000
	.4byte 0x37CB2FF5
	.4byte 0x37A14518
	.4byte 0x37800000
	.4byte 0x374B2FF5
	.4byte 0x37214518
	.4byte 0x37000000
	.4byte 0x36CB2FF5
	.4byte 0x36A14518
	.4byte 0x36800000
	.4byte 0x364B2FF5
	.4byte 0x36214518
	.4byte 0x36000000
	.4byte 0x35CB2FF5
	.4byte 0x35A14518
	.4byte 0x1E3CE508


.global lbl_80569180
lbl_80569180:
	.4byte lbl_80566080


.global lbl_80569184
lbl_80569184:
	.4byte 0x00003000


.global lbl_80569188
lbl_80569188:
	.4byte ahxcmn_multiple_tbl


.global lbl_8056918C
lbl_8056918C:
	.4byte 0x00000100
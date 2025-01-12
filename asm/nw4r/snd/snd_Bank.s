.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global __ct__Q44nw4r3snd6detail4BankFPCv
__ct__Q44nw4r3snd6detail4BankFPCv:
/* 80411780 003DAD40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80411784 003DAD44  7C 08 02 A6 */	mflr r0
/* 80411788 003DAD48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041178C 003DAD4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80411790 003DAD50  7C 7F 1B 78 */	mr r31, r3
/* 80411794 003DAD54  48 00 02 5D */	bl __ct__Q44nw4r3snd6detail14BankFileReaderFPCv
/* 80411798 003DAD58  38 00 00 00 */	li r0, 0
/* 8041179C 003DAD5C  7F E3 FB 78 */	mr r3, r31
/* 804117A0 003DAD60  90 1F 00 0C */	stw r0, 0xc(r31)
/* 804117A4 003DAD64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804117A8 003DAD68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804117AC 003DAD6C  7C 08 03 A6 */	mtlr r0
/* 804117B0 003DAD70  38 21 00 10 */	addi r1, r1, 0x10
/* 804117B4 003DAD74  4E 80 00 20 */	blr 

.global __dt__Q44nw4r3snd6detail4BankFv
__dt__Q44nw4r3snd6detail4BankFv:
/* 804117B8 003DAD78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804117BC 003DAD7C  7C 08 02 A6 */	mflr r0
/* 804117C0 003DAD80  2C 03 00 00 */	cmpwi r3, 0
/* 804117C4 003DAD84  90 01 00 14 */	stw r0, 0x14(r1)
/* 804117C8 003DAD88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804117CC 003DAD8C  7C 7F 1B 78 */	mr r31, r3
/* 804117D0 003DAD90  41 82 00 10 */	beq .L_804117E0
/* 804117D4 003DAD94  2C 04 00 00 */	cmpwi r4, 0
/* 804117D8 003DAD98  40 81 00 08 */	ble .L_804117E0
/* 804117DC 003DAD9C  48 02 34 51 */	bl __dl__FPv
.L_804117E0:
/* 804117E0 003DADA0  7F E3 FB 78 */	mr r3, r31
/* 804117E4 003DADA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804117E8 003DADA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804117EC 003DADAC  7C 08 03 A6 */	mtlr r0
/* 804117F0 003DADB0  38 21 00 10 */	addi r1, r1, 0x10
/* 804117F4 003DADB4  4E 80 00 20 */	blr 

.global NoteOn__Q44nw4r3snd6detail4BankCFRCQ44nw4r3snd6detail10NoteOnInfo
NoteOn__Q44nw4r3snd6detail4BankCFRCQ44nw4r3snd6detail10NoteOnInfo:
/* 804117F8 003DADB8  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 804117FC 003DADBC  7C 08 02 A6 */	mflr r0
/* 80411800 003DADC0  80 A4 00 00 */	lwz r5, 0(r4)
/* 80411804 003DADC4  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80411808 003DADC8  3C 00 43 30 */	lis r0, 0x4330
/* 8041180C 003DADCC  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 80411810 003DADD0  7C 7F 1B 78 */	mr r31, r3
/* 80411814 003DADD4  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 80411818 003DADD8  7C 9E 23 78 */	mr r30, r4
/* 8041181C 003DADDC  80 DE 00 04 */	lwz r6, 4(r30)
/* 80411820 003DADE0  38 81 00 0C */	addi r4, r1, 0xc
/* 80411824 003DADE4  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 80411828 003DADE8  80 FE 00 08 */	lwz r7, 8(r30)
/* 8041182C 003DADEC  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 80411830 003DADF0  48 00 03 5D */	bl ReadInstInfo__Q44nw4r3snd6detail14BankFileReaderCFPQ44nw4r3snd6detail8InstInfoiii
/* 80411834 003DADF4  2C 03 00 00 */	cmpwi r3, 0
/* 80411838 003DADF8  40 82 00 0C */	bne .L_80411844
/* 8041183C 003DADFC  38 60 00 00 */	li r3, 0
/* 80411840 003DAE00  48 00 01 98 */	b .L_804119D8
.L_80411844:
/* 80411844 003DAE04  80 DF 00 0C */	lwz r6, 0xc(r31)
/* 80411848 003DAE08  7F E3 FB 78 */	mr r3, r31
/* 8041184C 003DAE0C  38 81 00 28 */	addi r4, r1, 0x28
/* 80411850 003DAE10  38 A1 00 0C */	addi r5, r1, 0xc
/* 80411854 003DAE14  38 E1 00 08 */	addi r7, r1, 8
/* 80411858 003DAE18  48 00 06 01 */	bl ReadWaveInfo__Q44nw4r3snd6detail14BankFileReaderCFPQ44nw4r3snd6detail8WaveInfoRCQ54nw4r3snd6detail8InstInfo16WaveDataLocationPCvPPCQ44nw4r3snd6detail8WaveInfo
/* 8041185C 003DAE1C  2C 03 00 00 */	cmpwi r3, 0
/* 80411860 003DAE20  40 82 00 0C */	bne .L_8041186C
/* 80411864 003DAE24  38 60 00 00 */	li r3, 0
/* 80411868 003DAE28  48 00 01 70 */	b .L_804119D8
.L_8041186C:
/* 8041186C 003DAE2C  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80411870 003DAE30  38 60 00 02 */	li r3, 2
/* 80411874 003DAE34  2C 00 00 02 */	cmpwi r0, 2
/* 80411878 003DAE38  41 81 00 08 */	bgt .L_80411880
/* 8041187C 003DAE3C  7C 03 03 78 */	mr r3, r0
.L_80411880:
/* 80411880 003DAE40  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 80411884 003DAE44  80 BE 00 14 */	lwz r5, 0x14(r30)
/* 80411888 003DAE48  80 DE 00 1C */	lwz r6, 0x1c(r30)
/* 8041188C 003DAE4C  80 FE 00 20 */	lwz r7, 0x20(r30)
/* 80411890 003DAE50  48 00 35 91 */	bl AllocChannel__Q44nw4r3snd6detail7ChannelFiiiPFPQ44nw4r3snd6detail7ChannelQ54nw4r3snd6detail7Channel21ChannelCallbackStatusUl_vUl
/* 80411894 003DAE54  2C 03 00 00 */	cmpwi r3, 0
/* 80411898 003DAE58  7C 7F 1B 78 */	mr r31, r3
/* 8041189C 003DAE5C  40 82 00 0C */	bne .L_804118A8
/* 804118A0 003DAE60  38 60 00 00 */	li r3, 0
/* 804118A4 003DAE64  48 00 01 34 */	b .L_804119D8
.L_804118A8:
/* 804118A8 003DAE68  80 9E 00 04 */	lwz r4, 4(r30)
/* 804118AC 003DAE6C  80 1E 00 08 */	lwz r0, 8(r30)
/* 804118B0 003DAE70  90 83 00 C8 */	stw r4, 0xc8(r3)
/* 804118B4 003DAE74  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804118B8 003DAE78  C8 22 C3 48 */	lfd f1, double_8066C6C8@sda21(r2)
/* 804118BC 003DAE7C  88 81 00 21 */	lbz r4, 0x21(r1)
/* 804118C0 003DAE80  90 01 00 AC */	stw r0, 0xac(r1)
/* 804118C4 003DAE84  C0 42 C3 38 */	lfs f2, float_8066C6B8@sda21(r2)
/* 804118C8 003DAE88  90 83 00 CC */	stw r4, 0xcc(r3)
/* 804118CC 003DAE8C  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 804118D0 003DAE90  88 01 00 23 */	lbz r0, 0x23(r1)
/* 804118D4 003DAE94  EC 60 08 28 */	fsubs f3, f0, f1
/* 804118D8 003DAE98  C8 22 C3 50 */	lfd f1, double_8066C6D0@sda21(r2)
/* 804118DC 003DAE9C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 804118E0 003DAEA0  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 804118E4 003DAEA4  EC 63 10 24 */	fdivs f3, f3, f2
/* 804118E8 003DAEA8  EC 00 08 28 */	fsubs f0, f0, f1
/* 804118EC 003DAEAC  EC 63 00 F2 */	fmuls f3, f3, f3
/* 804118F0 003DAEB0  EC 00 10 24 */	fdivs f0, f0, f2
/* 804118F4 003DAEB4  EC 63 00 32 */	fmuls f3, f3, f0
/* 804118F8 003DAEB8  D0 63 00 B0 */	stfs f3, 0xb0(r3)
/* 804118FC 003DAEBC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80411900 003DAEC0  D0 03 00 BC */	stfs f0, 0xbc(r3)
/* 80411904 003DAEC4  88 81 00 14 */	lbz r4, 0x14(r1)
/* 80411908 003DAEC8  48 00 3C E1 */	bl SetAttack__Q44nw4r3snd6detail12EnvGeneratorFi
/* 8041190C 003DAECC  88 81 00 15 */	lbz r4, 0x15(r1)
/* 80411910 003DAED0  7F E3 FB 78 */	mr r3, r31
/* 80411914 003DAED4  48 00 3C ED */	bl SetHold__Q44nw4r3snd6detail12EnvGeneratorFi
/* 80411918 003DAED8  88 81 00 16 */	lbz r4, 0x16(r1)
/* 8041191C 003DAEDC  7F E3 FB 78 */	mr r3, r31
/* 80411920 003DAEE0  48 00 3C F9 */	bl SetDecay__Q44nw4r3snd6detail12EnvGeneratorFi
/* 80411924 003DAEE4  88 81 00 17 */	lbz r4, 0x17(r1)
/* 80411928 003DAEE8  7F E3 FB 78 */	mr r3, r31
/* 8041192C 003DAEEC  48 00 3D 8D */	bl SetSustain__Q44nw4r3snd6detail12EnvGeneratorFi
/* 80411930 003DAEF0  88 81 00 18 */	lbz r4, 0x18(r1)
/* 80411934 003DAEF4  7F E3 FB 78 */	mr r3, r31
/* 80411938 003DAEF8  48 00 3D 89 */	bl SetRelease__Q44nw4r3snd6detail12EnvGeneratorFi
/* 8041193C 003DAEFC  88 61 00 22 */	lbz r3, 0x22(r1)
/* 80411940 003DAF00  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 80411944 003DAF04  38 63 FF C0 */	addi r3, r3, -64
/* 80411948 003DAF08  C8 82 C3 48 */	lfd f4, double_8066C6C8@sda21(r2)
/* 8041194C 003DAF0C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80411950 003DAF10  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80411954 003DAF14  90 61 00 AC */	stw r3, 0xac(r1)
/* 80411958 003DAF18  C0 42 C3 3C */	lfs f2, float_8066C6BC@sda21(r2)
/* 8041195C 003DAF1C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80411960 003DAF20  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 80411964 003DAF24  C8 21 00 B0 */	lfd f1, 0xb0(r1)
/* 80411968 003DAF28  EC 60 20 28 */	fsubs f3, f0, f4
/* 8041196C 003DAF2C  C0 02 C3 40 */	lfs f0, float_8066C6C0@sda21(r2)
/* 80411970 003DAF30  EC 21 20 28 */	fsubs f1, f1, f4
/* 80411974 003DAF34  EC 63 10 24 */	fdivs f3, f3, f2
/* 80411978 003DAF38  EC 21 10 24 */	fdivs f1, f1, f2
/* 8041197C 003DAF3C  EC 63 08 2A */	fadds f3, f3, f1
/* 80411980 003DAF40  D0 7F 00 B4 */	stfs f3, 0xb4(r31)
/* 80411984 003DAF44  D0 1F 00 B8 */	stfs f0, 0xb8(r31)
/* 80411988 003DAF48  88 01 00 20 */	lbz r0, 0x20(r1)
/* 8041198C 003DAF4C  90 1F 00 DC */	stw r0, 0xdc(r31)
/* 80411990 003DAF50  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80411994 003DAF54  38 03 FF FF */	addi r0, r3, -1
/* 80411998 003DAF58  7C 00 00 34 */	cntlzw r0, r0
/* 8041199C 003DAF5C  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 804119A0 003DAF60  98 1F 00 3A */	stb r0, 0x3a(r31)
/* 804119A4 003DAF64  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804119A8 003DAF68  2C 00 00 02 */	cmpwi r0, 2
/* 804119AC 003DAF6C  40 82 00 14 */	bne .L_804119C0
/* 804119B0 003DAF70  80 61 00 08 */	lwz r3, 8(r1)
/* 804119B4 003DAF74  80 01 00 10 */	lwz r0, 0x10(r1)
/* 804119B8 003DAF78  90 1F 00 E8 */	stw r0, 0xe8(r31)
/* 804119BC 003DAF7C  90 7F 00 EC */	stw r3, 0xec(r31)
.L_804119C0:
/* 804119C0 003DAF80  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 804119C4 003DAF84  7F E3 FB 78 */	mr r3, r31
/* 804119C8 003DAF88  38 81 00 28 */	addi r4, r1, 0x28
/* 804119CC 003DAF8C  38 C0 00 00 */	li r6, 0
/* 804119D0 003DAF90  48 00 30 39 */	bl Start__Q44nw4r3snd6detail7ChannelFRCQ44nw4r3snd6detail8WaveInfoiUl
/* 804119D4 003DAF94  7F E3 FB 78 */	mr r3, r31
.L_804119D8:
/* 804119D8 003DAF98  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 804119DC 003DAF9C  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 804119E0 003DAFA0  83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 804119E4 003DAFA4  7C 08 03 A6 */	mtlr r0
/* 804119E8 003DAFA8  38 21 00 C0 */	addi r1, r1, 0xc0
/* 804119EC 003DAFAC  4E 80 00 20 */	blr 

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.global float_8066C6B8
float_8066C6B8:
	.float 127 #0x42FE0000


.global float_8066C6BC
float_8066C6BC:
	.float 63 #0x427C0000


.global float_8066C6C0
float_8066C6C0:
	.float 0
	.4byte 0


.global double_8066C6C8
double_8066C6C8:
	.8byte 0x4330000080000000 #signed int to float constant

.global double_8066C6D0
double_8066C6D0:
	.4byte 0x43300000
	.4byte 0
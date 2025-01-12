.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global __GXSetDirtyState
__GXSetDirtyState:
/* 8031A760 002E3D20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031A764 002E3D24  7C 08 02 A6 */	mflr r0
/* 8031A768 002E3D28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031A76C 002E3D2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8031A770 002E3D30  83 E2 BC 20 */	lwz r31, lbl_8066BFA0@sda21(r2)
/* 8031A774 002E3D34  93 C1 00 08 */	stw r30, 8(r1)
/* 8031A778 002E3D38  83 DF 05 FC */	lwz r30, 0x5fc(r31)
/* 8031A77C 002E3D3C  57 C0 07 FF */	clrlwi. r0, r30, 0x1f
/* 8031A780 002E3D40  41 82 00 08 */	beq .L_8031A788
/* 8031A784 002E3D44  48 00 25 1D */	bl __GXSetSUTexRegs
.L_8031A788:
/* 8031A788 002E3D48  57 C0 07 BD */	rlwinm. r0, r30, 0, 0x1e, 0x1e
/* 8031A78C 002E3D4C  41 82 00 08 */	beq .L_8031A794
/* 8031A790 002E3D50  48 00 2E 21 */	bl __GXUpdateBPMask
.L_8031A794:
/* 8031A794 002E3D54  57 C0 07 7B */	rlwinm. r0, r30, 0, 0x1d, 0x1d
/* 8031A798 002E3D58  41 82 00 24 */	beq .L_8031A7BC
/* 8031A79C 002E3D5C  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 8031A7A0 002E3D60  38 00 00 61 */	li r0, 0x61
/* 8031A7A4 002E3D64  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 8031A7A8 002E3D68  38 00 00 00 */	li r0, 0
/* 8031A7AC 002E3D6C  80 A2 BC 20 */	lwz r5, lbl_8066BFA0@sda21(r2)
/* 8031A7B0 002E3D70  80 65 02 54 */	lwz r3, 0x254(r5)
/* 8031A7B4 002E3D74  90 64 80 00 */	stw r3, -0x8000(r4)
/* 8031A7B8 002E3D78  B0 05 00 02 */	sth r0, 2(r5)
.L_8031A7BC:
/* 8031A7BC 002E3D7C  57 C0 07 39 */	rlwinm. r0, r30, 0, 0x1c, 0x1c
/* 8031A7C0 002E3D80  41 82 00 08 */	beq .L_8031A7C8
/* 8031A7C4 002E3D84  4B FF EC DD */	bl __GXSetVCD
.L_8031A7C8:
/* 8031A7C8 002E3D88  57 C0 06 F7 */	rlwinm. r0, r30, 0, 0x1b, 0x1b
/* 8031A7CC 002E3D8C  41 82 00 08 */	beq .L_8031A7D4
/* 8031A7D0 002E3D90  4B FF F2 61 */	bl __GXSetVAT
.L_8031A7D4:
/* 8031A7D4 002E3D94  57 C0 06 F9 */	rlwinm. r0, r30, 0, 0x1b, 0x1c
/* 8031A7D8 002E3D98  41 82 00 08 */	beq .L_8031A7E0
/* 8031A7DC 002E3D9C  4B FF ED 75 */	bl __GXCalculateVLim
.L_8031A7E0:
/* 8031A7E0 002E3DA0  57 DE 00 2F */	rlwinm. r30, r30, 0, 0, 0x17
/* 8031A7E4 002E3DA4  41 82 01 DC */	beq .L_8031A9C0
/* 8031A7E8 002E3DA8  57 C4 05 2F */	rlwinm. r4, r30, 0, 0x14, 0x17
/* 8031A7EC 002E3DAC  41 82 00 94 */	beq .L_8031A880
/* 8031A7F0 002E3DB0  54 80 05 EF */	rlwinm. r0, r4, 0, 0x17, 0x17
/* 8031A7F4 002E3DB4  41 82 00 20 */	beq .L_8031A814
/* 8031A7F8 002E3DB8  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8031A7FC 002E3DBC  38 00 00 10 */	li r0, 0x10
/* 8031A800 002E3DC0  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 8031A804 002E3DC4  38 00 10 0A */	li r0, 0x100a
/* 8031A808 002E3DC8  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8031A80C 002E3DCC  80 1F 00 A8 */	lwz r0, 0xa8(r31)
/* 8031A810 002E3DD0  90 03 80 00 */	stw r0, -0x8000(r3)
.L_8031A814:
/* 8031A814 002E3DD4  54 80 05 AD */	rlwinm. r0, r4, 0, 0x16, 0x16
/* 8031A818 002E3DD8  41 82 00 20 */	beq .L_8031A838
/* 8031A81C 002E3DDC  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8031A820 002E3DE0  38 00 00 10 */	li r0, 0x10
/* 8031A824 002E3DE4  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 8031A828 002E3DE8  38 00 10 0B */	li r0, 0x100b
/* 8031A82C 002E3DEC  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8031A830 002E3DF0  80 1F 00 AC */	lwz r0, 0xac(r31)
/* 8031A834 002E3DF4  90 03 80 00 */	stw r0, -0x8000(r3)
.L_8031A838:
/* 8031A838 002E3DF8  54 80 05 6B */	rlwinm. r0, r4, 0, 0x15, 0x15
/* 8031A83C 002E3DFC  41 82 00 20 */	beq .L_8031A85C
/* 8031A840 002E3E00  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8031A844 002E3E04  38 00 00 10 */	li r0, 0x10
/* 8031A848 002E3E08  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 8031A84C 002E3E0C  38 00 10 0C */	li r0, 0x100c
/* 8031A850 002E3E10  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8031A854 002E3E14  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8031A858 002E3E18  90 03 80 00 */	stw r0, -0x8000(r3)
.L_8031A85C:
/* 8031A85C 002E3E1C  54 80 05 29 */	rlwinm. r0, r4, 0, 0x14, 0x14
/* 8031A860 002E3E20  41 82 00 20 */	beq .L_8031A880
/* 8031A864 002E3E24  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8031A868 002E3E28  38 00 00 10 */	li r0, 0x10
/* 8031A86C 002E3E2C  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 8031A870 002E3E30  38 00 10 0D */	li r0, 0x100d
/* 8031A874 002E3E34  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8031A878 002E3E38  80 1F 00 B4 */	lwz r0, 0xb4(r31)
/* 8031A87C 002E3E3C  90 03 80 00 */	stw r0, -0x8000(r3)
.L_8031A880:
/* 8031A880 002E3E40  57 C7 01 CE */	rlwinm r7, r30, 0, 7, 7
/* 8031A884 002E3E44  53 C7 04 27 */	rlwimi. r7, r30, 0, 0x10, 0x13
/* 8031A888 002E3E48  41 82 00 74 */	beq .L_8031A8FC
/* 8031A88C 002E3E4C  54 E0 01 CF */	rlwinm. r0, r7, 0, 7, 7
/* 8031A890 002E3E50  38 C0 10 0E */	li r6, 0x100e
/* 8031A894 002E3E54  41 82 00 24 */	beq .L_8031A8B8
/* 8031A898 002E3E58  80 BF 02 54 */	lwz r5, 0x254(r31)
/* 8031A89C 002E3E5C  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8031A8A0 002E3E60  38 80 00 10 */	li r4, 0x10
/* 8031A8A4 002E3E64  38 00 10 09 */	li r0, 0x1009
/* 8031A8A8 002E3E68  98 83 80 00 */	stb r4, 0xCC008000@l(r3)
/* 8031A8AC 002E3E6C  54 A4 E7 7E */	rlwinm r4, r5, 0x1c, 0x1d, 0x1f
/* 8031A8B0 002E3E70  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8031A8B4 002E3E74  90 83 80 00 */	stw r4, -0x8000(r3)
.L_8031A8B8:
/* 8031A8B8 002E3E78  7F E5 FB 78 */	mr r5, r31
/* 8031A8BC 002E3E7C  54 E7 A7 3E */	rlwinm r7, r7, 0x14, 0x1c, 0x1f
/* 8031A8C0 002E3E80  38 80 00 10 */	li r4, 0x10
/* 8031A8C4 002E3E84  3C 60 CC 01 */	lis r3, 0xcc01
/* 8031A8C8 002E3E88  48 00 00 2C */	b .L_8031A8F4
/* 8031A8CC 002E3E8C  60 00 00 00 */	nop 
.L_8031A8D0:
/* 8031A8D0 002E3E90  54 E0 07 FF */	clrlwi. r0, r7, 0x1f
/* 8031A8D4 002E3E94  41 82 00 14 */	beq .L_8031A8E8
/* 8031A8D8 002E3E98  98 83 80 00 */	stb r4, -0x8000(r3)
/* 8031A8DC 002E3E9C  90 C3 80 00 */	stw r6, -0x8000(r3)
/* 8031A8E0 002E3EA0  80 05 00 B8 */	lwz r0, 0xb8(r5)
/* 8031A8E4 002E3EA4  90 03 80 00 */	stw r0, -0x8000(r3)
.L_8031A8E8:
/* 8031A8E8 002E3EA8  54 E7 F8 7E */	srwi r7, r7, 1
/* 8031A8EC 002E3EAC  38 A5 00 04 */	addi r5, r5, 4
/* 8031A8F0 002E3EB0  38 C6 00 01 */	addi r6, r6, 1
.L_8031A8F4:
/* 8031A8F4 002E3EB4  2C 07 00 00 */	cmpwi r7, 0
/* 8031A8F8 002E3EB8  40 82 FF D8 */	bne .L_8031A8D0
.L_8031A8FC:
/* 8031A8FC 002E3EBC  77 C8 02 FF */	andis. r8, r30, 0x2ff
/* 8031A900 002E3EC0  41 82 00 88 */	beq .L_8031A988
/* 8031A904 002E3EC4  55 00 01 8D */	rlwinm. r0, r8, 0, 6, 6
/* 8031A908 002E3EC8  38 C0 10 40 */	li r6, 0x1040
/* 8031A90C 002E3ECC  41 82 00 24 */	beq .L_8031A930
/* 8031A910 002E3ED0  80 BF 02 54 */	lwz r5, 0x254(r31)
/* 8031A914 002E3ED4  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8031A918 002E3ED8  38 80 00 10 */	li r4, 0x10
/* 8031A91C 002E3EDC  38 00 10 3F */	li r0, 0x103f
/* 8031A920 002E3EE0  98 83 80 00 */	stb r4, 0xCC008000@l(r3)
/* 8031A924 002E3EE4  54 A4 07 3E */	clrlwi r4, r5, 0x1c
/* 8031A928 002E3EE8  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8031A92C 002E3EEC  90 83 80 00 */	stw r4, -0x8000(r3)
.L_8031A930:
/* 8031A930 002E3EF0  7F E7 FB 78 */	mr r7, r31
/* 8031A934 002E3EF4  55 08 86 3E */	rlwinm r8, r8, 0x10, 0x18, 0x1f
/* 8031A938 002E3EF8  38 80 00 10 */	li r4, 0x10
/* 8031A93C 002E3EFC  3C 60 CC 01 */	lis r3, 0xcc01
/* 8031A940 002E3F00  48 00 00 40 */	b .L_8031A980
/* 8031A944 002E3F04  60 00 00 00 */	nop 
.L_8031A948:
/* 8031A948 002E3F08  55 00 07 FF */	clrlwi. r0, r8, 0x1f
/* 8031A94C 002E3F0C  38 A6 00 10 */	addi r5, r6, 0x10
/* 8031A950 002E3F10  41 82 00 24 */	beq .L_8031A974
/* 8031A954 002E3F14  98 83 80 00 */	stb r4, -0x8000(r3)
/* 8031A958 002E3F18  90 C3 80 00 */	stw r6, -0x8000(r3)
/* 8031A95C 002E3F1C  80 07 00 C8 */	lwz r0, 0xc8(r7)
/* 8031A960 002E3F20  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8031A964 002E3F24  98 83 80 00 */	stb r4, -0x8000(r3)
/* 8031A968 002E3F28  90 A3 80 00 */	stw r5, -0x8000(r3)
/* 8031A96C 002E3F2C  80 07 00 E8 */	lwz r0, 0xe8(r7)
/* 8031A970 002E3F30  90 03 80 00 */	stw r0, -0x8000(r3)
.L_8031A974:
/* 8031A974 002E3F34  55 08 F8 7E */	srwi r8, r8, 1
/* 8031A978 002E3F38  38 C6 00 01 */	addi r6, r6, 1
/* 8031A97C 002E3F3C  38 E7 00 04 */	addi r7, r7, 4
.L_8031A980:
/* 8031A980 002E3F40  2C 08 00 00 */	cmpwi r8, 0
/* 8031A984 002E3F44  40 82 FF C4 */	bne .L_8031A948
.L_8031A988:
/* 8031A988 002E3F48  57 C0 01 4B */	rlwinm. r0, r30, 0, 5, 5
/* 8031A98C 002E3F4C  41 82 00 14 */	beq .L_8031A9A0
/* 8031A990 002E3F50  38 60 00 00 */	li r3, 0
/* 8031A994 002E3F54  48 00 40 4D */	bl __GXSetMatrixIndex
/* 8031A998 002E3F58  38 60 00 05 */	li r3, 5
/* 8031A99C 002E3F5C  48 00 40 45 */	bl __GXSetMatrixIndex
.L_8031A9A0:
/* 8031A9A0 002E3F60  57 C0 00 C7 */	rlwinm. r0, r30, 0, 3, 3
/* 8031A9A4 002E3F64  41 82 00 08 */	beq .L_8031A9AC
/* 8031A9A8 002E3F68  48 00 3E 59 */	bl __GXSetViewport
.L_8031A9AC:
/* 8031A9AC 002E3F6C  57 C0 01 09 */	rlwinm. r0, r30, 0, 4, 4
/* 8031A9B0 002E3F70  41 82 00 08 */	beq .L_8031A9B8
/* 8031A9B4 002E3F74  48 00 3B 3D */	bl __GXSetProjection
.L_8031A9B8:
/* 8031A9B8 002E3F78  38 00 00 01 */	li r0, 1
/* 8031A9BC 002E3F7C  B0 1F 00 02 */	sth r0, 2(r31)
.L_8031A9C0:
/* 8031A9C0 002E3F80  38 00 00 00 */	li r0, 0
/* 8031A9C4 002E3F84  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 8031A9C8 002E3F88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031A9CC 002E3F8C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8031A9D0 002E3F90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031A9D4 002E3F94  7C 08 03 A6 */	mtlr r0
/* 8031A9D8 002E3F98  38 21 00 10 */	addi r1, r1, 0x10
/* 8031A9DC 002E3F9C  4E 80 00 20 */	blr 

.balign 16, 0
.global GXBegin
GXBegin:
/* 8031A9E0 002E3FA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031A9E4 002E3FA4  7C 08 02 A6 */	mflr r0
/* 8031A9E8 002E3FA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031A9EC 002E3FAC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8031A9F0 002E3FB0  83 E2 BC 20 */	lwz r31, lbl_8066BFA0@sda21(r2)
/* 8031A9F4 002E3FB4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8031A9F8 002E3FB8  7C BE 2B 78 */	mr r30, r5
/* 8031A9FC 002E3FBC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8031AA00 002E3FC0  7C 9D 23 78 */	mr r29, r4
/* 8031AA04 002E3FC4  93 81 00 10 */	stw r28, 0x10(r1)
/* 8031AA08 002E3FC8  7C 7C 1B 78 */	mr r28, r3
/* 8031AA0C 002E3FCC  80 1F 05 FC */	lwz r0, 0x5fc(r31)
/* 8031AA10 002E3FD0  2C 00 00 00 */	cmpwi r0, 0
/* 8031AA14 002E3FD4  41 82 00 08 */	beq .L_8031AA1C
/* 8031AA18 002E3FD8  4B FF FD 49 */	bl __GXSetDirtyState
.L_8031AA1C:
/* 8031AA1C 002E3FDC  80 1F 00 00 */	lwz r0, 0(r31)
/* 8031AA20 002E3FE0  2C 00 00 00 */	cmpwi r0, 0
/* 8031AA24 002E3FE4  40 82 00 D8 */	bne .L_8031AAFC
/* 8031AA28 002E3FE8  80 E2 BC 20 */	lwz r7, lbl_8066BFA0@sda21(r2)
/* 8031AA2C 002E3FEC  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8031AA30 002E3FF0  38 00 00 98 */	li r0, 0x98
/* 8031AA34 002E3FF4  38 C0 00 00 */	li r6, 0
/* 8031AA38 002E3FF8  A0 A7 00 04 */	lhz r5, 4(r7)
/* 8031AA3C 002E3FFC  A0 87 00 06 */	lhz r4, 6(r7)
/* 8031AA40 002E4000  7C A5 21 D7 */	mullw. r5, r5, r4
/* 8031AA44 002E4004  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 8031AA48 002E4008  A0 07 00 04 */	lhz r0, 4(r7)
/* 8031AA4C 002E400C  B0 03 80 00 */	sth r0, -0x8000(r3)
/* 8031AA50 002E4010  41 82 00 A4 */	beq .L_8031AAF4
/* 8031AA54 002E4014  38 65 00 03 */	addi r3, r5, 3
/* 8031AA58 002E4018  38 E5 FF E0 */	addi r7, r5, -32
/* 8031AA5C 002E401C  54 60 F0 BE */	srwi r0, r3, 2
/* 8031AA60 002E4020  28 00 00 08 */	cmplwi r0, 8
/* 8031AA64 002E4024  40 81 00 68 */	ble .L_8031AACC
/* 8031AA68 002E4028  28 03 00 03 */	cmplwi r3, 3
/* 8031AA6C 002E402C  38 00 00 00 */	li r0, 0
/* 8031AA70 002E4030  41 80 00 10 */	blt .L_8031AA80
/* 8031AA74 002E4034  7C 05 18 40 */	cmplw r5, r3
/* 8031AA78 002E4038  41 81 00 08 */	bgt .L_8031AA80
/* 8031AA7C 002E403C  38 00 00 01 */	li r0, 1
.L_8031AA80:
/* 8031AA80 002E4040  2C 00 00 00 */	cmpwi r0, 0
/* 8031AA84 002E4044  41 82 00 48 */	beq .L_8031AACC
/* 8031AA88 002E4048  38 07 00 1F */	addi r0, r7, 0x1f
/* 8031AA8C 002E404C  38 80 00 00 */	li r4, 0
/* 8031AA90 002E4050  54 00 D9 7E */	srwi r0, r0, 5
/* 8031AA94 002E4054  3C 60 CC 01 */	lis r3, 0xcc01
/* 8031AA98 002E4058  7C 09 03 A6 */	mtctr r0
/* 8031AA9C 002E405C  28 07 00 00 */	cmplwi r7, 0
/* 8031AAA0 002E4060  40 81 00 2C */	ble .L_8031AACC
.L_8031AAA4:
/* 8031AAA4 002E4064  90 83 80 00 */	stw r4, -0x8000(r3)
/* 8031AAA8 002E4068  38 C6 00 20 */	addi r6, r6, 0x20
/* 8031AAAC 002E406C  90 83 80 00 */	stw r4, -0x8000(r3)
/* 8031AAB0 002E4070  90 83 80 00 */	stw r4, -0x8000(r3)
/* 8031AAB4 002E4074  90 83 80 00 */	stw r4, -0x8000(r3)
/* 8031AAB8 002E4078  90 83 80 00 */	stw r4, -0x8000(r3)
/* 8031AABC 002E407C  90 83 80 00 */	stw r4, -0x8000(r3)
/* 8031AAC0 002E4080  90 83 80 00 */	stw r4, -0x8000(r3)
/* 8031AAC4 002E4084  90 83 80 00 */	stw r4, -0x8000(r3)
/* 8031AAC8 002E4088  42 00 FF DC */	bdnz .L_8031AAA4
.L_8031AACC:
/* 8031AACC 002E408C  38 05 00 03 */	addi r0, r5, 3
/* 8031AAD0 002E4090  38 80 00 00 */	li r4, 0
/* 8031AAD4 002E4094  7C 06 00 50 */	subf r0, r6, r0
/* 8031AAD8 002E4098  3C 60 CC 01 */	lis r3, 0xcc01
/* 8031AADC 002E409C  54 00 F0 BE */	srwi r0, r0, 2
/* 8031AAE0 002E40A0  7C 09 03 A6 */	mtctr r0
/* 8031AAE4 002E40A4  7C 06 28 40 */	cmplw r6, r5
/* 8031AAE8 002E40A8  40 80 00 0C */	bge .L_8031AAF4
.L_8031AAEC:
/* 8031AAEC 002E40AC  90 83 80 00 */	stw r4, -0x8000(r3)
/* 8031AAF0 002E40B0  42 00 FF FC */	bdnz .L_8031AAEC
.L_8031AAF4:
/* 8031AAF4 002E40B4  38 00 00 01 */	li r0, 1
/* 8031AAF8 002E40B8  B0 1F 00 02 */	sth r0, 2(r31)
.L_8031AAFC:
/* 8031AAFC 002E40BC  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8031AB00 002E40C0  7F A0 E3 78 */	or r0, r29, r28
/* 8031AB04 002E40C4  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 8031AB08 002E40C8  B3 C3 80 00 */	sth r30, -0x8000(r3)
/* 8031AB0C 002E40CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031AB10 002E40D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8031AB14 002E40D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8031AB18 002E40D8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8031AB1C 002E40DC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8031AB20 002E40E0  7C 08 03 A6 */	mtlr r0
/* 8031AB24 002E40E4  38 21 00 20 */	addi r1, r1, 0x20
/* 8031AB28 002E40E8  4E 80 00 20 */	blr 

.balign 16, 0
.global __GXSendFlushPrim
__GXSendFlushPrim:
/* 8031AB30 002E40F0  80 C2 BC 20 */	lwz r6, lbl_8066BFA0@sda21(r2)
/* 8031AB34 002E40F4  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8031AB38 002E40F8  38 00 00 98 */	li r0, 0x98
/* 8031AB3C 002E40FC  38 E0 00 00 */	li r7, 0
/* 8031AB40 002E4100  A0 A6 00 04 */	lhz r5, 4(r6)
/* 8031AB44 002E4104  A0 86 00 06 */	lhz r4, 6(r6)
/* 8031AB48 002E4108  7D 05 21 D7 */	mullw. r8, r5, r4
/* 8031AB4C 002E410C  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 8031AB50 002E4110  A0 06 00 04 */	lhz r0, 4(r6)
/* 8031AB54 002E4114  B0 03 80 00 */	sth r0, -0x8000(r3)
/* 8031AB58 002E4118  41 82 00 A4 */	beq .L_8031ABFC
/* 8031AB5C 002E411C  38 68 00 03 */	addi r3, r8, 3
/* 8031AB60 002E4120  38 A8 FF E0 */	addi r5, r8, -32
/* 8031AB64 002E4124  54 60 F0 BE */	srwi r0, r3, 2
/* 8031AB68 002E4128  28 00 00 08 */	cmplwi r0, 8
/* 8031AB6C 002E412C  40 81 00 68 */	ble .L_8031ABD4
/* 8031AB70 002E4130  28 03 00 03 */	cmplwi r3, 3
/* 8031AB74 002E4134  38 00 00 00 */	li r0, 0
/* 8031AB78 002E4138  41 80 00 10 */	blt .L_8031AB88
/* 8031AB7C 002E413C  7C 08 18 40 */	cmplw r8, r3
/* 8031AB80 002E4140  41 81 00 08 */	bgt .L_8031AB88
/* 8031AB84 002E4144  38 00 00 01 */	li r0, 1
.L_8031AB88:
/* 8031AB88 002E4148  2C 00 00 00 */	cmpwi r0, 0
/* 8031AB8C 002E414C  41 82 00 48 */	beq .L_8031ABD4
/* 8031AB90 002E4150  38 05 00 1F */	addi r0, r5, 0x1f
/* 8031AB94 002E4154  38 80 00 00 */	li r4, 0
/* 8031AB98 002E4158  54 00 D9 7E */	srwi r0, r0, 5
/* 8031AB9C 002E415C  3C 60 CC 01 */	lis r3, 0xcc01
/* 8031ABA0 002E4160  7C 09 03 A6 */	mtctr r0
/* 8031ABA4 002E4164  28 05 00 00 */	cmplwi r5, 0
/* 8031ABA8 002E4168  40 81 00 2C */	ble .L_8031ABD4
.L_8031ABAC:
/* 8031ABAC 002E416C  90 83 80 00 */	stw r4, -0x8000(r3)
/* 8031ABB0 002E4170  38 E7 00 20 */	addi r7, r7, 0x20
/* 8031ABB4 002E4174  90 83 80 00 */	stw r4, -0x8000(r3)
/* 8031ABB8 002E4178  90 83 80 00 */	stw r4, -0x8000(r3)
/* 8031ABBC 002E417C  90 83 80 00 */	stw r4, -0x8000(r3)
/* 8031ABC0 002E4180  90 83 80 00 */	stw r4, -0x8000(r3)
/* 8031ABC4 002E4184  90 83 80 00 */	stw r4, -0x8000(r3)
/* 8031ABC8 002E4188  90 83 80 00 */	stw r4, -0x8000(r3)
/* 8031ABCC 002E418C  90 83 80 00 */	stw r4, -0x8000(r3)
/* 8031ABD0 002E4190  42 00 FF DC */	bdnz .L_8031ABAC
.L_8031ABD4:
/* 8031ABD4 002E4194  38 08 00 03 */	addi r0, r8, 3
/* 8031ABD8 002E4198  38 80 00 00 */	li r4, 0
/* 8031ABDC 002E419C  7C 07 00 50 */	subf r0, r7, r0
/* 8031ABE0 002E41A0  3C 60 CC 01 */	lis r3, 0xcc01
/* 8031ABE4 002E41A4  54 00 F0 BE */	srwi r0, r0, 2
/* 8031ABE8 002E41A8  7C 09 03 A6 */	mtctr r0
/* 8031ABEC 002E41AC  7C 07 40 40 */	cmplw r7, r8
/* 8031ABF0 002E41B0  40 80 00 0C */	bge .L_8031ABFC
.L_8031ABF4:
/* 8031ABF4 002E41B4  90 83 80 00 */	stw r4, -0x8000(r3)
/* 8031ABF8 002E41B8  42 00 FF FC */	bdnz .L_8031ABF4
.L_8031ABFC:
/* 8031ABFC 002E41BC  38 00 00 01 */	li r0, 1
/* 8031AC00 002E41C0  B0 06 00 02 */	sth r0, 2(r6)
/* 8031AC04 002E41C4  4E 80 00 20 */	blr 

.balign 16, 0
.global GXSetLineWidth
GXSetLineWidth:
/* 8031AC10 002E41D0  81 02 BC 20 */	lwz r8, lbl_8066BFA0@sda21(r2)
/* 8031AC14 002E41D4  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 8031AC18 002E41D8  38 C0 00 61 */	li r6, 0x61
/* 8031AC1C 002E41DC  38 00 00 00 */	li r0, 0
/* 8031AC20 002E41E0  80 E8 00 7C */	lwz r7, 0x7c(r8)
/* 8031AC24 002E41E4  50 67 06 3E */	rlwimi r7, r3, 0, 0x18, 0x1f
/* 8031AC28 002E41E8  50 87 83 5E */	rlwimi r7, r4, 0x10, 0xd, 0xf
/* 8031AC2C 002E41EC  90 E8 00 7C */	stw r7, 0x7c(r8)
/* 8031AC30 002E41F0  98 C5 80 00 */	stb r6, 0xCC008000@l(r5)
/* 8031AC34 002E41F4  80 68 00 7C */	lwz r3, 0x7c(r8)
/* 8031AC38 002E41F8  90 65 80 00 */	stw r3, -0x8000(r5)
/* 8031AC3C 002E41FC  B0 08 00 02 */	sth r0, 2(r8)
/* 8031AC40 002E4200  4E 80 00 20 */	blr 

.balign 16, 0
.global GXSetPointSize
GXSetPointSize:
/* 8031AC50 002E4210  81 02 BC 20 */	lwz r8, lbl_8066BFA0@sda21(r2)
/* 8031AC54 002E4214  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 8031AC58 002E4218  38 C0 00 61 */	li r6, 0x61
/* 8031AC5C 002E421C  38 00 00 00 */	li r0, 0
/* 8031AC60 002E4220  80 E8 00 7C */	lwz r7, 0x7c(r8)
/* 8031AC64 002E4224  50 67 44 2E */	rlwimi r7, r3, 8, 0x10, 0x17
/* 8031AC68 002E4228  50 87 9A 98 */	rlwimi r7, r4, 0x13, 0xa, 0xc
/* 8031AC6C 002E422C  90 E8 00 7C */	stw r7, 0x7c(r8)
/* 8031AC70 002E4230  98 C5 80 00 */	stb r6, 0xCC008000@l(r5)
/* 8031AC74 002E4234  80 68 00 7C */	lwz r3, 0x7c(r8)
/* 8031AC78 002E4238  90 65 80 00 */	stw r3, -0x8000(r5)
/* 8031AC7C 002E423C  B0 08 00 02 */	sth r0, 2(r8)
/* 8031AC80 002E4240  4E 80 00 20 */	blr 

.balign 16, 0
.global GXEnableTexOffsets
GXEnableTexOffsets:
/* 8031AC90 002E4250  81 22 BC 20 */	lwz r9, lbl_8066BFA0@sda21(r2)
/* 8031AC94 002E4254  54 60 10 3A */	slwi r0, r3, 2
/* 8031AC98 002E4258  3C C0 CC 01 */	lis r6, 0xCC008000@ha
/* 8031AC9C 002E425C  38 60 00 61 */	li r3, 0x61
/* 8031ACA0 002E4260  7D 09 02 14 */	add r8, r9, r0
/* 8031ACA4 002E4264  38 00 00 00 */	li r0, 0
/* 8031ACA8 002E4268  80 E8 01 08 */	lwz r7, 0x108(r8)
/* 8031ACAC 002E426C  50 87 93 5A */	rlwimi r7, r4, 0x12, 0xd, 0xd
/* 8031ACB0 002E4270  50 A7 9B 18 */	rlwimi r7, r5, 0x13, 0xc, 0xc
/* 8031ACB4 002E4274  90 E8 01 08 */	stw r7, 0x108(r8)
/* 8031ACB8 002E4278  98 66 80 00 */	stb r3, 0xCC008000@l(r6)
/* 8031ACBC 002E427C  80 68 01 08 */	lwz r3, 0x108(r8)
/* 8031ACC0 002E4280  90 66 80 00 */	stw r3, -0x8000(r6)
/* 8031ACC4 002E4284  B0 09 00 02 */	sth r0, 2(r9)
/* 8031ACC8 002E4288  4E 80 00 20 */	blr 

.balign 16, 0
.global GXSetCullMode
GXSetCullMode:
/* 8031ACD0 002E4290  80 82 BC 20 */	lwz r4, lbl_8066BFA0@sda21(r2)
/* 8031ACD4 002E4294  54 65 FF FE */	rlwinm r5, r3, 0x1f, 0x1f, 0x1f
/* 8031ACD8 002E4298  50 65 0F BC */	rlwimi r5, r3, 1, 0x1e, 0x1e
/* 8031ACDC 002E429C  80 04 02 54 */	lwz r0, 0x254(r4)
/* 8031ACE0 002E42A0  50 A0 74 22 */	rlwimi r0, r5, 0xe, 0x10, 0x11
/* 8031ACE4 002E42A4  90 04 02 54 */	stw r0, 0x254(r4)
/* 8031ACE8 002E42A8  80 04 05 FC */	lwz r0, 0x5fc(r4)
/* 8031ACEC 002E42AC  60 00 00 04 */	ori r0, r0, 4
/* 8031ACF0 002E42B0  90 04 05 FC */	stw r0, 0x5fc(r4)
/* 8031ACF4 002E42B4  4E 80 00 20 */	blr 

.balign 16, 0
.global GXSetCoPlanar
GXSetCoPlanar:
/* 8031AD00 002E42C0  80 E2 BC 20 */	lwz r7, lbl_8066BFA0@sda21(r2)
/* 8031AD04 002E42C4  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 8031AD08 002E42C8  38 C0 00 61 */	li r6, 0x61
/* 8031AD0C 002E42CC  3C 80 FE 08 */	lis r4, 0xfe08
/* 8031AD10 002E42D0  80 07 02 54 */	lwz r0, 0x254(r7)
/* 8031AD14 002E42D4  50 60 9B 18 */	rlwimi r0, r3, 0x13, 0xc, 0xc
/* 8031AD18 002E42D8  90 07 02 54 */	stw r0, 0x254(r7)
/* 8031AD1C 002E42DC  38 00 00 00 */	li r0, 0
/* 8031AD20 002E42E0  98 C5 80 00 */	stb r6, 0xCC008000@l(r5)
/* 8031AD24 002E42E4  90 85 80 00 */	stw r4, -0x8000(r5)
/* 8031AD28 002E42E8  98 C5 80 00 */	stb r6, -0x8000(r5)
/* 8031AD2C 002E42EC  80 67 02 54 */	lwz r3, 0x254(r7)
/* 8031AD30 002E42F0  90 65 80 00 */	stw r3, -0x8000(r5)
/* 8031AD34 002E42F4  B0 07 00 02 */	sth r0, 2(r7)
/* 8031AD38 002E42F8  4E 80 00 20 */	blr 

.balign 16, 0
.global __GXSetGenMode
__GXSetGenMode:
/* 8031AD40 002E4300  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 8031AD44 002E4304  38 00 00 61 */	li r0, 0x61
/* 8031AD48 002E4308  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 8031AD4C 002E430C  38 00 00 00 */	li r0, 0
/* 8031AD50 002E4310  80 A2 BC 20 */	lwz r5, lbl_8066BFA0@sda21(r2)
/* 8031AD54 002E4314  80 65 02 54 */	lwz r3, 0x254(r5)
/* 8031AD58 002E4318  90 64 80 00 */	stw r3, -0x8000(r4)
/* 8031AD5C 002E431C  B0 05 00 02 */	sth r0, 2(r5)
/* 8031AD60 002E4320  4E 80 00 20 */	blr 
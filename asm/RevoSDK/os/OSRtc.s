.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global WriteSramCallback
WriteSramCallback:
/* 8035a800  94 21 ff e0 */		stwu r1, -0x20(r1)
/* 8035a804  7c 08 02 a6 */		mflr r0
/* 8035a808  3c c0 80 5d */		lis r6, lbl_805D4700@ha
/* 8035a80c  3c a0 80 36 */		lis r5, WriteSramCallback@ha
/* 8035a810  90 01 00 24 */		stw r0,36(r1)
/* 8035a814  38 c6 47 00 */		addi r6,r6,lbl_805D4700@l
/* 8035a818  38 60 00 00 */		li r3,0
/* 8035a81c  38 a5 a8 00 */		addi r5,r5,WriteSramCallback@l
/* 8035a820  93 e1 00 1c */		stw r31,28(r1)
/* 8035a824  38 80 00 01 */		li r4,1
/* 8035a828  93 c1 00 18 */		stw r30,24(r1)
/* 8035a82c  93 a1 00 14 */		stw r29,20(r1)
/* 8035a830  83 e6 00 40 */		lwz r31,64(r6)
/* 8035a834  23 bf 00 40 */		subfic r29,r31,64
/* 8035a838  7f c6 fa 14 */		add r30,r6,r31
/* 8035a83c  4b fb ab f5 */		bl EXILock
/* 8035a840  2c 03 00 00 */		cmpwi r3,0
/* 8035a844  40 82 00 0c */		bne .L_8035A850
/* 8035a848  38 00 00 00 */		li r0,0
/* 8035a84c  48 00 00 b4 */		b .L_8035A900
.L_8035A850:
/* 8035a850  38 60 00 00 */		li r3,0
/* 8035a854  38 80 00 01 */		li r4,1
/* 8035a858  38 a0 00 03 */		li r5,3
/* 8035a85c  4b fb a4 25 */		bl EXISelect
/* 8035a860  2c 03 00 00 */		cmpwi r3,0
/* 8035a864  40 82 00 14 */		bne .L_8035A878
/* 8035a868  38 60 00 00 */		li r3,0
/* 8035a86c  4b fb ac c5 */		bl EXIUnlock
/* 8035a870  38 00 00 00 */		li r0,0
/* 8035a874  48 00 00 8c */		b .L_8035A900
.L_8035A878:
/* 8035a878  57 e3 30 32 */		rlwinm r3,r31,6,0,25
/* 8035a87c  38 81 00 08 */		addi r4,r1,8
/* 8035a880  38 03 01 00 */		addi r0,r3,256
/* 8035a884  38 a0 00 04 */		li r5,4
/* 8035a888  64 00 a0 00 */		oris r0,r0,40960
/* 8035a88c  90 01 00 08 */		stw r0,8(r1)
/* 8035a890  38 60 00 00 */		li r3,0
/* 8035a894  38 c0 00 01 */		li r6,1
/* 8035a898  38 e0 00 00 */		li r7,0
/* 8035a89c  4b fb 99 45 */		bl EXIImm
/* 8035a8a0  7c 60 00 34 */		cntlzw r0,r3
/* 8035a8a4  38 60 00 00 */		li r3,0
/* 8035a8a8  54 1f d9 7e */		rlwinm r31,r0,27,5,31
/* 8035a8ac  4b fb 9d 65 */		bl EXISync
/* 8035a8b0  7c 60 00 34 */		cntlzw r0,r3
/* 8035a8b4  7f c4 f3 78 */		mr r4,r30
/* 8035a8b8  54 00 d9 7e */		rlwinm r0,r0,27,5,31
/* 8035a8bc  7f a5 eb 78 */		mr r5,r29
/* 8035a8c0  7f fd 03 78 */		or r29,r31,r0
/* 8035a8c4  38 60 00 00 */		li r3,0
/* 8035a8c8  38 c0 00 01 */		li r6,1
/* 8035a8cc  4b fb 9b 95 */		bl EXIImmEx
/* 8035a8d0  7c 60 00 34 */		cntlzw r0,r3
/* 8035a8d4  38 60 00 00 */		li r3,0
/* 8035a8d8  54 00 d9 7e */		rlwinm r0,r0,27,5,31
/* 8035a8dc  7f bd 03 78 */		or r29,r29,r0
/* 8035a8e0  4b fb a4 d1 */		bl EXIDeselect
/* 8035a8e4  7c 60 00 34 */		cntlzw r0,r3
/* 8035a8e8  38 60 00 00 */		li r3,0
/* 8035a8ec  54 00 d9 7e */		rlwinm r0,r0,27,5,31
/* 8035a8f0  7f bd 03 78 */		or r29,r29,r0
/* 8035a8f4  4b fb ac 3d */		bl EXIUnlock
/* 8035a8f8  7f a0 00 34 */		cntlzw r0,r29
/* 8035a8fc  54 00 d9 7e */		rlwinm r0,r0,27,5,31
.L_8035A900:
/* 8035a900  3c 60 80 5d */		lis r3, lbl_805D4700@ha
/* 8035a904  2c 00 00 00 */		cmpwi r0,0
/* 8035a908  38 63 47 00 */		addi r3,r3, lbl_805D4700@l
/* 8035a90c  90 03 00 4c */		stw r0,76(r3)
/* 8035a910  41 82 00 0c */		beq .L_8035A91C
/* 8035a914  38 00 00 40 */		li r0,64
/* 8035a918  90 03 00 40 */		stw r0,64(r3)
.L_8035A91C:
/* 8035a91c  80 01 00 24 */		lwz r0,36(r1)
/* 8035a920  83 e1 00 1c */		lwz r31,28(r1)
/* 8035a924  83 c1 00 18 */		lwz r30,24(r1)
/* 8035a928  83 a1 00 14 */		lwz r29,20(r1)
/* 8035a92c  7c 08 03 a6 */		mtlr r0
/* 8035a930  38 21 00 20 */		addi r1,r1,32
/* 8035a934  4e 80 00 20 */		blr
.4byte 0
.4byte 0

.balign 16, 0
.global __OSInitSram
__OSInitSram:
/* 8035A940 00323F00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035A944 00323F04  7C 08 02 A6 */	mflr r0
/* 8035A948 00323F08  38 80 00 40 */	li r4, 0x40
/* 8035A94C 00323F0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8035A950 00323F10  38 00 00 00 */	li r0, 0
/* 8035A954 00323F14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8035A958 00323F18  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8035A95C 00323F1C  3F C0 80 5D */	lis r30, lbl_805D4700@ha
/* 8035A960 00323F20  3B DE 47 00 */	addi r30, r30, lbl_805D4700@l
/* 8035A964 00323F24  90 1E 00 44 */	stw r0, 0x44(r30)
/* 8035A968 00323F28  7F C3 F3 78 */	mr r3, r30
/* 8035A96C 00323F2C  90 1E 00 48 */	stw r0, 0x48(r30)
/* 8035A970 00323F30  4B FF 96 11 */	bl DCInvalidateRange
/* 8035A974 00323F34  38 60 00 00 */	li r3, 0
/* 8035A978 00323F38  38 80 00 01 */	li r4, 1
/* 8035A97C 00323F3C  38 A0 00 00 */	li r5, 0
/* 8035A980 00323F40  4B FB AA B1 */	bl EXILock
/* 8035A984 00323F44  2C 03 00 00 */	cmpwi r3, 0
/* 8035A988 00323F48  40 82 00 0C */	bne .L_8035A994
/* 8035A98C 00323F4C  38 60 00 00 */	li r3, 0
/* 8035A990 00323F50  48 00 00 C8 */	b .L_8035AA58
.L_8035A994:
/* 8035A994 00323F54  38 60 00 00 */	li r3, 0
/* 8035A998 00323F58  38 80 00 01 */	li r4, 1
/* 8035A99C 00323F5C  38 A0 00 03 */	li r5, 3
/* 8035A9A0 00323F60  4B FB A2 E1 */	bl EXISelect
/* 8035A9A4 00323F64  2C 03 00 00 */	cmpwi r3, 0
/* 8035A9A8 00323F68  40 82 00 14 */	bne .L_8035A9BC
/* 8035A9AC 00323F6C  38 60 00 00 */	li r3, 0
/* 8035A9B0 00323F70  4B FB AB 81 */	bl EXIUnlock
/* 8035A9B4 00323F74  38 60 00 00 */	li r3, 0
/* 8035A9B8 00323F78  48 00 00 A0 */	b .L_8035AA58
.L_8035A9BC:
/* 8035A9BC 00323F7C  3C 60 20 00 */	lis r3, 0x20000100@ha
/* 8035A9C0 00323F80  38 81 00 08 */	addi r4, r1, 8
/* 8035A9C4 00323F84  38 03 01 00 */	addi r0, r3, 0x20000100@l
/* 8035A9C8 00323F88  90 01 00 08 */	stw r0, 8(r1)
/* 8035A9CC 00323F8C  38 60 00 00 */	li r3, 0
/* 8035A9D0 00323F90  38 A0 00 04 */	li r5, 4
/* 8035A9D4 00323F94  38 C0 00 01 */	li r6, 1
/* 8035A9D8 00323F98  38 E0 00 00 */	li r7, 0
/* 8035A9DC 00323F9C  4B FB 98 05 */	bl EXIImm
/* 8035A9E0 00323FA0  7C 60 00 34 */	cntlzw r0, r3
/* 8035A9E4 00323FA4  38 60 00 00 */	li r3, 0
/* 8035A9E8 00323FA8  54 1F D9 7E */	srwi r31, r0, 5
/* 8035A9EC 00323FAC  4B FB 9C 25 */	bl EXISync
/* 8035A9F0 00323FB0  7C 60 00 34 */	cntlzw r0, r3
/* 8035A9F4 00323FB4  7F C4 F3 78 */	mr r4, r30
/* 8035A9F8 00323FB8  54 00 D9 7E */	srwi r0, r0, 5
/* 8035A9FC 00323FBC  38 60 00 00 */	li r3, 0
/* 8035AA00 00323FC0  7F FE 03 78 */	or r30, r31, r0
/* 8035AA04 00323FC4  38 A0 00 40 */	li r5, 0x40
/* 8035AA08 00323FC8  38 C0 00 00 */	li r6, 0
/* 8035AA0C 00323FCC  38 E0 00 00 */	li r7, 0
/* 8035AA10 00323FD0  4B FB 9B 01 */	bl EXIDma
/* 8035AA14 00323FD4  7C 60 00 34 */	cntlzw r0, r3
/* 8035AA18 00323FD8  38 60 00 00 */	li r3, 0
/* 8035AA1C 00323FDC  54 00 D9 7E */	srwi r0, r0, 5
/* 8035AA20 00323FE0  7F DE 03 78 */	or r30, r30, r0
/* 8035AA24 00323FE4  4B FB 9B ED */	bl EXISync
/* 8035AA28 00323FE8  7C 60 00 34 */	cntlzw r0, r3
/* 8035AA2C 00323FEC  38 60 00 00 */	li r3, 0
/* 8035AA30 00323FF0  54 00 D9 7E */	srwi r0, r0, 5
/* 8035AA34 00323FF4  7F DE 03 78 */	or r30, r30, r0
/* 8035AA38 00323FF8  4B FB A3 79 */	bl EXIDeselect
/* 8035AA3C 00323FFC  7C 60 00 34 */	cntlzw r0, r3
/* 8035AA40 00324000  38 60 00 00 */	li r3, 0
/* 8035AA44 00324004  54 00 D9 7E */	srwi r0, r0, 5
/* 8035AA48 00324008  7F DE 03 78 */	or r30, r30, r0
/* 8035AA4C 0032400C  4B FB AA E5 */	bl EXIUnlock
/* 8035AA50 00324010  7F C0 00 34 */	cntlzw r0, r30
/* 8035AA54 00324014  54 03 D9 7E */	srwi r3, r0, 5
.L_8035AA58:
/* 8035AA58 00324018  3F E0 80 5D */	lis r31, lbl_805D4700@ha
/* 8035AA5C 0032401C  38 00 00 40 */	li r0, 0x40
/* 8035AA60 00324020  3B FF 47 00 */	addi r31, r31, lbl_805D4700@l
/* 8035AA64 00324024  90 7F 00 4C */	stw r3, 0x4c(r31)
/* 8035AA68 00324028  90 1F 00 40 */	stw r0, 0x40(r31)
/* 8035AA6C 0032402C  4B FF DF 45 */	bl OSDisableInterrupts
/* 8035AA70 00324030  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 8035AA74 00324034  2C 00 00 00 */	cmpwi r0, 0
/* 8035AA78 00324038  41 82 00 10 */	beq .L_8035AA88
/* 8035AA7C 0032403C  4B FF DF 75 */	bl OSRestoreInterrupts
/* 8035AA80 00324040  38 60 00 00 */	li r3, 0
/* 8035AA84 00324044  48 00 00 14 */	b .L_8035AA98
.L_8035AA88:
/* 8035AA88 00324048  38 00 00 01 */	li r0, 1
/* 8035AA8C 0032404C  90 7F 00 44 */	stw r3, 0x44(r31)
/* 8035AA90 00324050  38 7F 00 14 */	addi r3, r31, 0x14
/* 8035AA94 00324054  90 1F 00 48 */	stw r0, 0x48(r31)
.L_8035AA98:
/* 8035AA98 00324058  A3 C3 00 28 */	lhz r30, 0x28(r3)
/* 8035AA9C 0032405C  38 60 00 00 */	li r3, 0
/* 8035AAA0 00324060  38 80 00 14 */	li r4, 0x14
/* 8035AAA4 00324064  48 00 00 9D */	bl UnlockSram
/* 8035AAA8 00324068  57 C0 04 6A */	rlwinm r0, r30, 0, 0x11, 0x15
/* 8035AAAC 0032406C  28 00 50 00 */	cmplwi r0, 0x5000
/* 8035AAB0 00324070  41 82 00 10 */	beq .L_8035AAC0
/* 8035AAB4 00324074  57 C0 06 32 */	rlwinm r0, r30, 0, 0x18, 0x19
/* 8035AAB8 00324078  28 00 00 C0 */	cmplwi r0, 0xc0
/* 8035AABC 0032407C  40 82 00 08 */	bne .L_8035AAC4
.L_8035AAC0:
/* 8035AAC0 00324080  3B C0 00 00 */	li r30, 0
.L_8035AAC4:
/* 8035AAC4 00324084  4B FF DE ED */	bl OSDisableInterrupts
/* 8035AAC8 00324088  3C 80 80 5D */	lis r4, lbl_805D4700@ha
/* 8035AACC 0032408C  38 84 47 00 */	addi r4, r4, lbl_805D4700@l
/* 8035AAD0 00324090  80 04 00 48 */	lwz r0, 0x48(r4)
/* 8035AAD4 00324094  2C 00 00 00 */	cmpwi r0, 0
/* 8035AAD8 00324098  41 82 00 10 */	beq .L_8035AAE8
/* 8035AADC 0032409C  4B FF DF 15 */	bl OSRestoreInterrupts
/* 8035AAE0 003240A0  38 A0 00 00 */	li r5, 0
/* 8035AAE4 003240A4  48 00 00 14 */	b .L_8035AAF8
.L_8035AAE8:
/* 8035AAE8 003240A8  38 00 00 01 */	li r0, 1
/* 8035AAEC 003240AC  90 64 00 44 */	stw r3, 0x44(r4)
/* 8035AAF0 003240B0  38 A4 00 14 */	addi r5, r4, 0x14
/* 8035AAF4 003240B4  90 04 00 48 */	stw r0, 0x48(r4)
.L_8035AAF8:
/* 8035AAF8 003240B8  A0 05 00 28 */	lhz r0, 0x28(r5)
/* 8035AAFC 003240BC  57 C3 04 3E */	clrlwi r3, r30, 0x10
/* 8035AB00 003240C0  7C 03 00 40 */	cmplw r3, r0
/* 8035AB04 003240C4  40 82 00 14 */	bne .L_8035AB18
/* 8035AB08 003240C8  38 60 00 00 */	li r3, 0
/* 8035AB0C 003240CC  38 80 00 14 */	li r4, 0x14
/* 8035AB10 003240D0  48 00 00 31 */	bl UnlockSram
/* 8035AB14 003240D4  48 00 00 14 */	b .L_8035AB28
.L_8035AB18:
/* 8035AB18 003240D8  B3 C5 00 28 */	sth r30, 0x28(r5)
/* 8035AB1C 003240DC  38 60 00 01 */	li r3, 1
/* 8035AB20 003240E0  38 80 00 14 */	li r4, 0x14
/* 8035AB24 003240E4  48 00 00 1D */	bl UnlockSram
.L_8035AB28:
/* 8035AB28 003240E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035AB2C 003240EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8035AB30 003240F0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8035AB34 003240F4  7C 08 03 A6 */	mtlr r0
/* 8035AB38 003240F8  38 21 00 20 */	addi r1, r1, 0x20
/* 8035AB3C 003240FC  4E 80 00 20 */	blr 

.balign 16, 0
.global UnlockSram
UnlockSram:
/* 8035AB40 00324100  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035AB44 00324104  7C 08 02 A6 */	mflr r0
/* 8035AB48 00324108  2C 03 00 00 */	cmpwi r3, 0
/* 8035AB4C 0032410C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8035AB50 00324110  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8035AB54 00324114  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8035AB58 00324118  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8035AB5C 0032411C  41 82 02 8C */	beq .L_8035ADE8
/* 8035AB60 00324120  2C 04 00 00 */	cmpwi r4, 0
/* 8035AB64 00324124  40 82 01 30 */	bne .L_8035AC94
/* 8035AB68 00324128  3D 00 80 5D */	lis r8, lbl_805D4700@ha
/* 8035AB6C 0032412C  39 08 47 00 */	addi r8, r8, lbl_805D4700@l
/* 8035AB70 00324130  88 68 00 13 */	lbz r3, 0x13(r8)
/* 8035AB74 00324134  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 8035AB78 00324138  28 00 00 02 */	cmplwi r0, 2
/* 8035AB7C 0032413C  40 81 00 0C */	ble .L_8035AB88
/* 8035AB80 00324140  54 60 06 3A */	rlwinm r0, r3, 0, 0x18, 0x1d
/* 8035AB84 00324144  98 08 00 13 */	stb r0, 0x13(r8)
.L_8035AB88:
/* 8035AB88 00324148  3C 60 80 5D */	lis r3, lbl_805D4700@ha
/* 8035AB8C 0032414C  38 00 00 00 */	li r0, 0
/* 8035AB90 00324150  38 63 47 00 */	addi r3, r3, lbl_805D4700@l
/* 8035AB94 00324154  38 E8 00 0C */	addi r7, r8, 0xc
/* 8035AB98 00324158  38 A3 00 14 */	addi r5, r3, 0x14
/* 8035AB9C 0032415C  B0 08 00 02 */	sth r0, 2(r8)
/* 8035ABA0 00324160  38 65 00 01 */	addi r3, r5, 1
/* 8035ABA4 00324164  7C 67 18 50 */	subf r3, r7, r3
/* 8035ABA8 00324168  7C 07 28 40 */	cmplw r7, r5
/* 8035ABAC 0032416C  B0 08 00 00 */	sth r0, 0(r8)
/* 8035ABB0 00324170  54 63 F8 7E */	srwi r3, r3, 1
/* 8035ABB4 00324174  40 80 00 E0 */	bge .L_8035AC94
/* 8035ABB8 00324178  54 60 F0 BF */	rlwinm. r0, r3, 0x1e, 2, 0x1f
/* 8035ABBC 0032417C  7C 09 03 A6 */	mtctr r0
/* 8035ABC0 00324180  41 82 00 A4 */	beq .L_8035AC64
.L_8035ABC4:
/* 8035ABC4 00324184  A0 C8 00 00 */	lhz r6, 0(r8)
/* 8035ABC8 00324188  A0 07 00 00 */	lhz r0, 0(r7)
/* 8035ABCC 0032418C  A0 A8 00 02 */	lhz r5, 2(r8)
/* 8035ABD0 00324190  7C 06 02 14 */	add r0, r6, r0
/* 8035ABD4 00324194  B0 08 00 00 */	sth r0, 0(r8)
/* 8035ABD8 00324198  54 06 04 3E */	clrlwi r6, r0, 0x10
/* 8035ABDC 0032419C  A0 07 00 00 */	lhz r0, 0(r7)
/* 8035ABE0 003241A0  7C 00 00 F8 */	nor r0, r0, r0
/* 8035ABE4 003241A4  7C 05 02 14 */	add r0, r5, r0
/* 8035ABE8 003241A8  B0 08 00 02 */	sth r0, 2(r8)
/* 8035ABEC 003241AC  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 8035ABF0 003241B0  A0 07 00 02 */	lhz r0, 2(r7)
/* 8035ABF4 003241B4  7C 06 02 14 */	add r0, r6, r0
/* 8035ABF8 003241B8  B0 08 00 00 */	sth r0, 0(r8)
/* 8035ABFC 003241BC  54 06 04 3E */	clrlwi r6, r0, 0x10
/* 8035AC00 003241C0  A0 07 00 02 */	lhz r0, 2(r7)
/* 8035AC04 003241C4  7C 00 00 F8 */	nor r0, r0, r0
/* 8035AC08 003241C8  7C 05 02 14 */	add r0, r5, r0
/* 8035AC0C 003241CC  B0 08 00 02 */	sth r0, 2(r8)
/* 8035AC10 003241D0  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 8035AC14 003241D4  A0 07 00 04 */	lhz r0, 4(r7)
/* 8035AC18 003241D8  7C 06 02 14 */	add r0, r6, r0
/* 8035AC1C 003241DC  B0 08 00 00 */	sth r0, 0(r8)
/* 8035AC20 003241E0  54 06 04 3E */	clrlwi r6, r0, 0x10
/* 8035AC24 003241E4  A0 07 00 04 */	lhz r0, 4(r7)
/* 8035AC28 003241E8  7C 00 00 F8 */	nor r0, r0, r0
/* 8035AC2C 003241EC  7C 05 02 14 */	add r0, r5, r0
/* 8035AC30 003241F0  B0 08 00 02 */	sth r0, 2(r8)
/* 8035AC34 003241F4  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 8035AC38 003241F8  A0 07 00 06 */	lhz r0, 6(r7)
/* 8035AC3C 003241FC  7C 06 02 14 */	add r0, r6, r0
/* 8035AC40 00324200  B0 08 00 00 */	sth r0, 0(r8)
/* 8035AC44 00324204  A0 07 00 06 */	lhz r0, 6(r7)
/* 8035AC48 00324208  38 E7 00 08 */	addi r7, r7, 8
/* 8035AC4C 0032420C  7C 00 00 F8 */	nor r0, r0, r0
/* 8035AC50 00324210  7C 05 02 14 */	add r0, r5, r0
/* 8035AC54 00324214  B0 08 00 02 */	sth r0, 2(r8)
/* 8035AC58 00324218  42 00 FF 6C */	bdnz .L_8035ABC4
/* 8035AC5C 0032421C  70 63 00 03 */	andi. r3, r3, 3
/* 8035AC60 00324220  41 82 00 34 */	beq .L_8035AC94
.L_8035AC64:
/* 8035AC64 00324224  7C 69 03 A6 */	mtctr r3
.L_8035AC68:
/* 8035AC68 00324228  A0 C8 00 00 */	lhz r6, 0(r8)
/* 8035AC6C 0032422C  A0 07 00 00 */	lhz r0, 0(r7)
/* 8035AC70 00324230  A0 A8 00 02 */	lhz r5, 2(r8)
/* 8035AC74 00324234  7C 06 02 14 */	add r0, r6, r0
/* 8035AC78 00324238  B0 08 00 00 */	sth r0, 0(r8)
/* 8035AC7C 0032423C  A0 07 00 00 */	lhz r0, 0(r7)
/* 8035AC80 00324240  38 E7 00 02 */	addi r7, r7, 2
/* 8035AC84 00324244  7C 00 00 F8 */	nor r0, r0, r0
/* 8035AC88 00324248  7C 05 02 14 */	add r0, r5, r0
/* 8035AC8C 0032424C  B0 08 00 02 */	sth r0, 2(r8)
/* 8035AC90 00324250  42 00 FF D8 */	bdnz .L_8035AC68
.L_8035AC94:
/* 8035AC94 00324254  3C 60 80 5D */	lis r3, lbl_805D4700@ha
/* 8035AC98 00324258  38 63 47 00 */	addi r3, r3, lbl_805D4700@l
/* 8035AC9C 0032425C  80 03 00 40 */	lwz r0, 0x40(r3)
/* 8035ACA0 00324260  7C 04 00 40 */	cmplw r4, r0
/* 8035ACA4 00324264  40 80 00 08 */	bge .L_8035ACAC
/* 8035ACA8 00324268  90 83 00 40 */	stw r4, 0x40(r3)
.L_8035ACAC:
/* 8035ACAC 0032426C  3C 80 80 5D */	lis r4, lbl_805D4700@ha
/* 8035ACB0 00324270  38 84 47 00 */	addi r4, r4, lbl_805D4700@l
/* 8035ACB4 00324274  80 04 00 40 */	lwz r0, 0x40(r4)
/* 8035ACB8 00324278  28 00 00 14 */	cmplwi r0, 0x14
/* 8035ACBC 0032427C  41 81 00 28 */	bgt .L_8035ACE4
/* 8035ACC0 00324280  A0 64 00 3C */	lhz r3, 0x3c(r4)
/* 8035ACC4 00324284  54 60 04 6A */	rlwinm r0, r3, 0, 0x11, 0x15
/* 8035ACC8 00324288  28 00 50 00 */	cmplwi r0, 0x5000
/* 8035ACCC 0032428C  41 82 00 10 */	beq .L_8035ACDC
/* 8035ACD0 00324290  54 60 06 32 */	rlwinm r0, r3, 0, 0x18, 0x19
/* 8035ACD4 00324294  28 00 00 C0 */	cmplwi r0, 0xc0
/* 8035ACD8 00324298  40 82 00 0C */	bne .L_8035ACE4
.L_8035ACDC:
/* 8035ACDC 0032429C  38 00 00 00 */	li r0, 0
/* 8035ACE0 003242A0  B0 04 00 3C */	sth r0, 0x3c(r4)
.L_8035ACE4:
/* 8035ACE4 003242A4  3C C0 80 5D */	lis r6, lbl_805D4700@ha
/* 8035ACE8 003242A8  3C A0 80 36 */	lis r5, WriteSramCallback@ha
/* 8035ACEC 003242AC  38 C6 47 00 */	addi r6, r6, lbl_805D4700@l
/* 8035ACF0 003242B0  38 60 00 00 */	li r3, 0
/* 8035ACF4 003242B4  83 E6 00 40 */	lwz r31, 0x40(r6)
/* 8035ACF8 003242B8  38 A5 A8 00 */	addi r5, r5, WriteSramCallback@l
/* 8035ACFC 003242BC  38 80 00 01 */	li r4, 1
/* 8035AD00 003242C0  23 BF 00 40 */	subfic r29, r31, 0x40
/* 8035AD04 003242C4  7F C6 FA 14 */	add r30, r6, r31
/* 8035AD08 003242C8  4B FB A7 29 */	bl EXILock
/* 8035AD0C 003242CC  2C 03 00 00 */	cmpwi r3, 0
/* 8035AD10 003242D0  40 82 00 0C */	bne .L_8035AD1C
/* 8035AD14 003242D4  38 00 00 00 */	li r0, 0
/* 8035AD18 003242D8  48 00 00 B4 */	b .L_8035ADCC
.L_8035AD1C:
/* 8035AD1C 003242DC  38 60 00 00 */	li r3, 0
/* 8035AD20 003242E0  38 80 00 01 */	li r4, 1
/* 8035AD24 003242E4  38 A0 00 03 */	li r5, 3
/* 8035AD28 003242E8  4B FB 9F 59 */	bl EXISelect
/* 8035AD2C 003242EC  2C 03 00 00 */	cmpwi r3, 0
/* 8035AD30 003242F0  40 82 00 14 */	bne .L_8035AD44
/* 8035AD34 003242F4  38 60 00 00 */	li r3, 0
/* 8035AD38 003242F8  4B FB A7 F9 */	bl EXIUnlock
/* 8035AD3C 003242FC  38 00 00 00 */	li r0, 0
/* 8035AD40 00324300  48 00 00 8C */	b .L_8035ADCC
.L_8035AD44:
/* 8035AD44 00324304  57 E3 30 32 */	slwi r3, r31, 6
/* 8035AD48 00324308  38 81 00 08 */	addi r4, r1, 8
/* 8035AD4C 0032430C  38 03 01 00 */	addi r0, r3, 0x100
/* 8035AD50 00324310  38 A0 00 04 */	li r5, 4
/* 8035AD54 00324314  64 00 A0 00 */	oris r0, r0, 0xa000
/* 8035AD58 00324318  90 01 00 08 */	stw r0, 8(r1)
/* 8035AD5C 0032431C  38 60 00 00 */	li r3, 0
/* 8035AD60 00324320  38 C0 00 01 */	li r6, 1
/* 8035AD64 00324324  38 E0 00 00 */	li r7, 0
/* 8035AD68 00324328  4B FB 94 79 */	bl EXIImm
/* 8035AD6C 0032432C  7C 60 00 34 */	cntlzw r0, r3
/* 8035AD70 00324330  38 60 00 00 */	li r3, 0
/* 8035AD74 00324334  54 1F D9 7E */	srwi r31, r0, 5
/* 8035AD78 00324338  4B FB 98 99 */	bl EXISync
/* 8035AD7C 0032433C  7C 60 00 34 */	cntlzw r0, r3
/* 8035AD80 00324340  7F C4 F3 78 */	mr r4, r30
/* 8035AD84 00324344  54 00 D9 7E */	srwi r0, r0, 5
/* 8035AD88 00324348  7F A5 EB 78 */	mr r5, r29
/* 8035AD8C 0032434C  7F FD 03 78 */	or r29, r31, r0
/* 8035AD90 00324350  38 60 00 00 */	li r3, 0
/* 8035AD94 00324354  38 C0 00 01 */	li r6, 1
/* 8035AD98 00324358  4B FB 96 C9 */	bl EXIImmEx
/* 8035AD9C 0032435C  7C 60 00 34 */	cntlzw r0, r3
/* 8035ADA0 00324360  38 60 00 00 */	li r3, 0
/* 8035ADA4 00324364  54 00 D9 7E */	srwi r0, r0, 5
/* 8035ADA8 00324368  7F BD 03 78 */	or r29, r29, r0
/* 8035ADAC 0032436C  4B FB A0 05 */	bl EXIDeselect
/* 8035ADB0 00324370  7C 60 00 34 */	cntlzw r0, r3
/* 8035ADB4 00324374  38 60 00 00 */	li r3, 0
/* 8035ADB8 00324378  54 00 D9 7E */	srwi r0, r0, 5
/* 8035ADBC 0032437C  7F BD 03 78 */	or r29, r29, r0
/* 8035ADC0 00324380  4B FB A7 71 */	bl EXIUnlock
/* 8035ADC4 00324384  7F A0 00 34 */	cntlzw r0, r29
/* 8035ADC8 00324388  54 00 D9 7E */	srwi r0, r0, 5
.L_8035ADCC:
/* 8035ADCC 0032438C  3C 60 80 5D */	lis r3, lbl_805D4700@ha
/* 8035ADD0 00324390  2C 00 00 00 */	cmpwi r0, 0
/* 8035ADD4 00324394  38 63 47 00 */	addi r3, r3, lbl_805D4700@l
/* 8035ADD8 00324398  90 03 00 4C */	stw r0, 0x4c(r3)
/* 8035ADDC 0032439C  41 82 00 0C */	beq .L_8035ADE8
/* 8035ADE0 003243A0  38 00 00 40 */	li r0, 0x40
/* 8035ADE4 003243A4  90 03 00 40 */	stw r0, 0x40(r3)
.L_8035ADE8:
/* 8035ADE8 003243A8  3F E0 80 5D */	lis r31, lbl_805D4700@ha
/* 8035ADEC 003243AC  38 00 00 00 */	li r0, 0
/* 8035ADF0 003243B0  3B FF 47 00 */	addi r31, r31, lbl_805D4700@l
/* 8035ADF4 003243B4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 8035ADF8 003243B8  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 8035ADFC 003243BC  4B FF DB F5 */	bl OSRestoreInterrupts
/* 8035AE00 003243C0  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 8035AE04 003243C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8035AE08 003243C8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8035AE0C 003243CC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8035AE10 003243D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035AE14 003243D4  7C 08 03 A6 */	mtlr r0
/* 8035AE18 003243D8  38 21 00 20 */	addi r1, r1, 0x20
/* 8035AE1C 003243DC  4E 80 00 20 */	blr 

.balign 16, 0
.global __OSSyncSram
__OSSyncSram:
/* 8035AE20 003243E0  3C 60 80 5D */	lis r3, lbl_805D4700@ha
/* 8035AE24 003243E4  38 63 47 00 */	addi r3, r3, lbl_805D4700@l
/* 8035AE28 003243E8  80 63 00 4C */	lwz r3, 0x4c(r3)
/* 8035AE2C 003243EC  4E 80 00 20 */	blr 

.balign 16, 0
.global __OSReadROM
__OSReadROM:
/* 8035AE30 003243F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035AE34 003243F4  7C 08 02 A6 */	mflr r0
/* 8035AE38 003243F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8035AE3C 003243FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8035AE40 00324400  7C BF 2B 78 */	mr r31, r5
/* 8035AE44 00324404  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8035AE48 00324408  7C 9E 23 78 */	mr r30, r4
/* 8035AE4C 0032440C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8035AE50 00324410  7C 7D 1B 78 */	mr r29, r3
/* 8035AE54 00324414  4B FF 91 2D */	bl DCInvalidateRange
/* 8035AE58 00324418  38 60 00 00 */	li r3, 0
/* 8035AE5C 0032441C  38 80 00 01 */	li r4, 1
/* 8035AE60 00324420  38 A0 00 00 */	li r5, 0
/* 8035AE64 00324424  4B FB A5 CD */	bl EXILock
/* 8035AE68 00324428  2C 03 00 00 */	cmpwi r3, 0
/* 8035AE6C 0032442C  40 82 00 0C */	bne .L_8035AE78
/* 8035AE70 00324430  38 60 00 00 */	li r3, 0
/* 8035AE74 00324434  48 00 00 C4 */	b .L_8035AF38
.L_8035AE78:
/* 8035AE78 00324438  38 60 00 00 */	li r3, 0
/* 8035AE7C 0032443C  38 80 00 01 */	li r4, 1
/* 8035AE80 00324440  38 A0 00 03 */	li r5, 3
/* 8035AE84 00324444  4B FB 9D FD */	bl EXISelect
/* 8035AE88 00324448  2C 03 00 00 */	cmpwi r3, 0
/* 8035AE8C 0032444C  40 82 00 14 */	bne .L_8035AEA0
/* 8035AE90 00324450  38 60 00 00 */	li r3, 0
/* 8035AE94 00324454  4B FB A6 9D */	bl EXIUnlock
/* 8035AE98 00324458  38 60 00 00 */	li r3, 0
/* 8035AE9C 0032445C  48 00 00 9C */	b .L_8035AF38
.L_8035AEA0:
/* 8035AEA0 00324460  57 E0 30 32 */	slwi r0, r31, 6
/* 8035AEA4 00324464  90 01 00 08 */	stw r0, 8(r1)
/* 8035AEA8 00324468  38 81 00 08 */	addi r4, r1, 8
/* 8035AEAC 0032446C  38 60 00 00 */	li r3, 0
/* 8035AEB0 00324470  38 A0 00 04 */	li r5, 4
/* 8035AEB4 00324474  38 C0 00 01 */	li r6, 1
/* 8035AEB8 00324478  38 E0 00 00 */	li r7, 0
/* 8035AEBC 0032447C  4B FB 93 25 */	bl EXIImm
/* 8035AEC0 00324480  7C 60 00 34 */	cntlzw r0, r3
/* 8035AEC4 00324484  38 60 00 00 */	li r3, 0
/* 8035AEC8 00324488  54 1F D9 7E */	srwi r31, r0, 5
/* 8035AECC 0032448C  4B FB 97 45 */	bl EXISync
/* 8035AED0 00324490  7C 60 00 34 */	cntlzw r0, r3
/* 8035AED4 00324494  7F A4 EB 78 */	mr r4, r29
/* 8035AED8 00324498  54 00 D9 7E */	srwi r0, r0, 5
/* 8035AEDC 0032449C  7F C5 F3 78 */	mr r5, r30
/* 8035AEE0 003244A0  7F FF 03 78 */	or r31, r31, r0
/* 8035AEE4 003244A4  38 60 00 00 */	li r3, 0
/* 8035AEE8 003244A8  38 C0 00 00 */	li r6, 0
/* 8035AEEC 003244AC  38 E0 00 00 */	li r7, 0
/* 8035AEF0 003244B0  4B FB 96 21 */	bl EXIDma
/* 8035AEF4 003244B4  7C 60 00 34 */	cntlzw r0, r3
/* 8035AEF8 003244B8  38 60 00 00 */	li r3, 0
/* 8035AEFC 003244BC  54 00 D9 7E */	srwi r0, r0, 5
/* 8035AF00 003244C0  7F FF 03 78 */	or r31, r31, r0
/* 8035AF04 003244C4  4B FB 97 0D */	bl EXISync
/* 8035AF08 003244C8  7C 60 00 34 */	cntlzw r0, r3
/* 8035AF0C 003244CC  38 60 00 00 */	li r3, 0
/* 8035AF10 003244D0  54 00 D9 7E */	srwi r0, r0, 5
/* 8035AF14 003244D4  7F FF 03 78 */	or r31, r31, r0
/* 8035AF18 003244D8  4B FB 9E 99 */	bl EXIDeselect
/* 8035AF1C 003244DC  7C 60 00 34 */	cntlzw r0, r3
/* 8035AF20 003244E0  38 60 00 00 */	li r3, 0
/* 8035AF24 003244E4  54 00 D9 7E */	srwi r0, r0, 5
/* 8035AF28 003244E8  7F FF 03 78 */	or r31, r31, r0
/* 8035AF2C 003244EC  4B FB A6 05 */	bl EXIUnlock
/* 8035AF30 003244F0  7F E0 00 34 */	cntlzw r0, r31
/* 8035AF34 003244F4  54 03 D9 7E */	srwi r3, r0, 5
.L_8035AF38:
/* 8035AF38 003244F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035AF3C 003244FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8035AF40 00324500  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8035AF44 00324504  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8035AF48 00324508  7C 08 03 A6 */	mtlr r0
/* 8035AF4C 0032450C  38 21 00 20 */	addi r1, r1, 0x20
/* 8035AF50 00324510  4E 80 00 20 */	blr 

.balign 16, 0
.global OSGetWirelessID
OSGetWirelessID:
/* 8035AF60 00324520  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035AF64 00324524  7C 08 02 A6 */	mflr r0
/* 8035AF68 00324528  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035AF6C 0032452C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8035AF70 00324530  7C 7F 1B 78 */	mr r31, r3
/* 8035AF74 00324534  4B FF DA 3D */	bl OSDisableInterrupts
/* 8035AF78 00324538  3C 80 80 5D */	lis r4, lbl_805D4700@ha
/* 8035AF7C 0032453C  38 84 47 00 */	addi r4, r4, lbl_805D4700@l
/* 8035AF80 00324540  80 04 00 48 */	lwz r0, 0x48(r4)
/* 8035AF84 00324544  2C 00 00 00 */	cmpwi r0, 0
/* 8035AF88 00324548  41 82 00 10 */	beq .L_8035AF98
/* 8035AF8C 0032454C  4B FF DA 65 */	bl OSRestoreInterrupts
/* 8035AF90 00324550  38 A0 00 00 */	li r5, 0
/* 8035AF94 00324554  48 00 00 14 */	b .L_8035AFA8
.L_8035AF98:
/* 8035AF98 00324558  38 00 00 01 */	li r0, 1
/* 8035AF9C 0032455C  90 64 00 44 */	stw r3, 0x44(r4)
/* 8035AFA0 00324560  38 A4 00 14 */	addi r5, r4, 0x14
/* 8035AFA4 00324564  90 04 00 48 */	stw r0, 0x48(r4)
.L_8035AFA8:
/* 8035AFA8 00324568  57 E0 08 3C */	slwi r0, r31, 1
/* 8035AFAC 0032456C  38 60 00 00 */	li r3, 0
/* 8035AFB0 00324570  7C A5 02 14 */	add r5, r5, r0
/* 8035AFB4 00324574  38 80 00 14 */	li r4, 0x14
/* 8035AFB8 00324578  A3 E5 00 1C */	lhz r31, 0x1c(r5)
/* 8035AFBC 0032457C  4B FF FB 85 */	bl UnlockSram
/* 8035AFC0 00324580  7F E3 FB 78 */	mr r3, r31
/* 8035AFC4 00324584  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8035AFC8 00324588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035AFCC 0032458C  7C 08 03 A6 */	mtlr r0
/* 8035AFD0 00324590  38 21 00 10 */	addi r1, r1, 0x10
/* 8035AFD4 00324594  4E 80 00 20 */	blr 

.balign 16, 0
.global OSSetWirelessID
OSSetWirelessID:
/* 8035AFE0 003245A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035AFE4 003245A4  7C 08 02 A6 */	mflr r0
/* 8035AFE8 003245A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035AFEC 003245AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8035AFF0 003245B0  7C 9F 23 78 */	mr r31, r4
/* 8035AFF4 003245B4  93 C1 00 08 */	stw r30, 8(r1)
/* 8035AFF8 003245B8  7C 7E 1B 78 */	mr r30, r3
/* 8035AFFC 003245BC  4B FF D9 B5 */	bl OSDisableInterrupts
/* 8035B000 003245C0  3C 80 80 5D */	lis r4, lbl_805D4700@ha
/* 8035B004 003245C4  38 84 47 00 */	addi r4, r4, lbl_805D4700@l
/* 8035B008 003245C8  80 04 00 48 */	lwz r0, 0x48(r4)
/* 8035B00C 003245CC  2C 00 00 00 */	cmpwi r0, 0
/* 8035B010 003245D0  41 82 00 10 */	beq .L_8035B020
/* 8035B014 003245D4  4B FF D9 DD */	bl OSRestoreInterrupts
/* 8035B018 003245D8  38 60 00 00 */	li r3, 0
/* 8035B01C 003245DC  48 00 00 14 */	b .L_8035B030
.L_8035B020:
/* 8035B020 003245E0  38 00 00 01 */	li r0, 1
/* 8035B024 003245E4  90 64 00 44 */	stw r3, 0x44(r4)
/* 8035B028 003245E8  38 64 00 14 */	addi r3, r4, 0x14
/* 8035B02C 003245EC  90 04 00 48 */	stw r0, 0x48(r4)
.L_8035B030:
/* 8035B030 003245F0  57 C0 08 3C */	slwi r0, r30, 1
/* 8035B034 003245F4  7C 63 02 14 */	add r3, r3, r0
/* 8035B038 003245F8  A0 03 00 1C */	lhz r0, 0x1c(r3)
/* 8035B03C 003245FC  7C 1F 00 40 */	cmplw r31, r0
/* 8035B040 00324600  41 82 00 18 */	beq .L_8035B058
/* 8035B044 00324604  B3 E3 00 1C */	sth r31, 0x1c(r3)
/* 8035B048 00324608  38 60 00 01 */	li r3, 1
/* 8035B04C 0032460C  38 80 00 14 */	li r4, 0x14
/* 8035B050 00324610  4B FF FA F1 */	bl UnlockSram
/* 8035B054 00324614  48 00 00 10 */	b .L_8035B064
.L_8035B058:
/* 8035B058 00324618  38 60 00 00 */	li r3, 0
/* 8035B05C 0032461C  38 80 00 14 */	li r4, 0x14
/* 8035B060 00324620  4B FF FA E1 */	bl UnlockSram
.L_8035B064:
/* 8035B064 00324624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035B068 00324628  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8035B06C 0032462C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8035B070 00324630  7C 08 03 A6 */	mtlr r0
/* 8035B074 00324634  38 21 00 10 */	addi r1, r1, 0x10
/* 8035B078 00324638  4E 80 00 20 */	blr 

.balign 16, 0
.global __OSGetRTCFlags
__OSGetRTCFlags:
/* 8035B080 00324640  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035B084 00324644  7C 08 02 A6 */	mflr r0
/* 8035B088 00324648  38 80 00 01 */	li r4, 1
/* 8035B08C 0032464C  38 A0 00 00 */	li r5, 0
/* 8035B090 00324650  90 01 00 24 */	stw r0, 0x24(r1)
/* 8035B094 00324654  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8035B098 00324658  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8035B09C 0032465C  7C 7E 1B 78 */	mr r30, r3
/* 8035B0A0 00324660  38 60 00 00 */	li r3, 0
/* 8035B0A4 00324664  4B FB A3 8D */	bl EXILock
/* 8035B0A8 00324668  2C 03 00 00 */	cmpwi r3, 0
/* 8035B0AC 0032466C  40 82 00 0C */	bne .L_8035B0B8
/* 8035B0B0 00324670  38 60 00 00 */	li r3, 0
/* 8035B0B4 00324674  48 00 00 D0 */	b .L_8035B184
.L_8035B0B8:
/* 8035B0B8 00324678  38 60 00 00 */	li r3, 0
/* 8035B0BC 0032467C  38 80 00 01 */	li r4, 1
/* 8035B0C0 00324680  38 A0 00 03 */	li r5, 3
/* 8035B0C4 00324684  4B FB 9B BD */	bl EXISelect
/* 8035B0C8 00324688  2C 03 00 00 */	cmpwi r3, 0
/* 8035B0CC 0032468C  40 82 00 14 */	bne .L_8035B0E0
/* 8035B0D0 00324690  38 60 00 00 */	li r3, 0
/* 8035B0D4 00324694  4B FB A4 5D */	bl EXIUnlock
/* 8035B0D8 00324698  38 60 00 00 */	li r3, 0
/* 8035B0DC 0032469C  48 00 00 A8 */	b .L_8035B184
.L_8035B0E0:
/* 8035B0E0 003246A0  3C 60 21 00 */	lis r3, 0x21000800@ha
/* 8035B0E4 003246A4  38 81 00 08 */	addi r4, r1, 8
/* 8035B0E8 003246A8  38 03 08 00 */	addi r0, r3, 0x21000800@l
/* 8035B0EC 003246AC  90 01 00 08 */	stw r0, 8(r1)
/* 8035B0F0 003246B0  38 60 00 00 */	li r3, 0
/* 8035B0F4 003246B4  38 A0 00 04 */	li r5, 4
/* 8035B0F8 003246B8  38 C0 00 01 */	li r6, 1
/* 8035B0FC 003246BC  38 E0 00 00 */	li r7, 0
/* 8035B100 003246C0  4B FB 90 E1 */	bl EXIImm
/* 8035B104 003246C4  7C 60 00 34 */	cntlzw r0, r3
/* 8035B108 003246C8  38 60 00 00 */	li r3, 0
/* 8035B10C 003246CC  54 1F D9 7E */	srwi r31, r0, 5
/* 8035B110 003246D0  4B FB 95 01 */	bl EXISync
/* 8035B114 003246D4  7C 60 00 34 */	cntlzw r0, r3
/* 8035B118 003246D8  38 81 00 08 */	addi r4, r1, 8
/* 8035B11C 003246DC  54 00 D9 7E */	srwi r0, r0, 5
/* 8035B120 003246E0  38 60 00 00 */	li r3, 0
/* 8035B124 003246E4  7F FF 03 78 */	or r31, r31, r0
/* 8035B128 003246E8  38 A0 00 04 */	li r5, 4
/* 8035B12C 003246EC  38 C0 00 00 */	li r6, 0
/* 8035B130 003246F0  38 E0 00 00 */	li r7, 0
/* 8035B134 003246F4  4B FB 90 AD */	bl EXIImm
/* 8035B138 003246F8  7C 60 00 34 */	cntlzw r0, r3
/* 8035B13C 003246FC  38 60 00 00 */	li r3, 0
/* 8035B140 00324700  54 00 D9 7E */	srwi r0, r0, 5
/* 8035B144 00324704  7F FF 03 78 */	or r31, r31, r0
/* 8035B148 00324708  4B FB 94 C9 */	bl EXISync
/* 8035B14C 0032470C  7C 60 00 34 */	cntlzw r0, r3
/* 8035B150 00324710  38 60 00 00 */	li r3, 0
/* 8035B154 00324714  54 00 D9 7E */	srwi r0, r0, 5
/* 8035B158 00324718  7F FF 03 78 */	or r31, r31, r0
/* 8035B15C 0032471C  4B FB 9C 55 */	bl EXIDeselect
/* 8035B160 00324720  7C 60 00 34 */	cntlzw r0, r3
/* 8035B164 00324724  38 60 00 00 */	li r3, 0
/* 8035B168 00324728  54 00 D9 7E */	srwi r0, r0, 5
/* 8035B16C 0032472C  7F FF 03 78 */	or r31, r31, r0
/* 8035B170 00324730  4B FB A3 C1 */	bl EXIUnlock
/* 8035B174 00324734  80 61 00 08 */	lwz r3, 8(r1)
/* 8035B178 00324738  7F E0 00 34 */	cntlzw r0, r31
/* 8035B17C 0032473C  90 7E 00 00 */	stw r3, 0(r30)
/* 8035B180 00324740  54 03 D9 7E */	srwi r3, r0, 5
.L_8035B184:
/* 8035B184 00324744  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035B188 00324748  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8035B18C 0032474C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8035B190 00324750  7C 08 03 A6 */	mtlr r0
/* 8035B194 00324754  38 21 00 20 */	addi r1, r1, 0x20
/* 8035B198 00324758  4E 80 00 20 */	blr 

.balign 16, 0
.global __OSClearRTCFlags
__OSClearRTCFlags:
/* 8035B1A0 00324760  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035B1A4 00324764  7C 08 02 A6 */	mflr r0
/* 8035B1A8 00324768  38 60 00 00 */	li r3, 0
/* 8035B1AC 0032476C  38 80 00 01 */	li r4, 1
/* 8035B1B0 00324770  90 01 00 24 */	stw r0, 0x24(r1)
/* 8035B1B4 00324774  38 00 00 00 */	li r0, 0
/* 8035B1B8 00324778  38 A0 00 00 */	li r5, 0
/* 8035B1BC 0032477C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8035B1C0 00324780  90 01 00 08 */	stw r0, 8(r1)
/* 8035B1C4 00324784  4B FB A2 6D */	bl EXILock
/* 8035B1C8 00324788  2C 03 00 00 */	cmpwi r3, 0
/* 8035B1CC 0032478C  40 82 00 0C */	bne .L_8035B1D8
/* 8035B1D0 00324790  38 60 00 00 */	li r3, 0
/* 8035B1D4 00324794  48 00 00 C8 */	b .L_8035B29C
.L_8035B1D8:
/* 8035B1D8 00324798  38 60 00 00 */	li r3, 0
/* 8035B1DC 0032479C  38 80 00 01 */	li r4, 1
/* 8035B1E0 003247A0  38 A0 00 03 */	li r5, 3
/* 8035B1E4 003247A4  4B FB 9A 9D */	bl EXISelect
/* 8035B1E8 003247A8  2C 03 00 00 */	cmpwi r3, 0
/* 8035B1EC 003247AC  40 82 00 14 */	bne .L_8035B200
/* 8035B1F0 003247B0  38 60 00 00 */	li r3, 0
/* 8035B1F4 003247B4  4B FB A3 3D */	bl EXIUnlock
/* 8035B1F8 003247B8  38 60 00 00 */	li r3, 0
/* 8035B1FC 003247BC  48 00 00 A0 */	b .L_8035B29C
.L_8035B200:
/* 8035B200 003247C0  3C 60 A1 00 */	lis r3, 0xA1000800@ha
/* 8035B204 003247C4  38 81 00 0C */	addi r4, r1, 0xc
/* 8035B208 003247C8  38 03 08 00 */	addi r0, r3, 0xA1000800@l
/* 8035B20C 003247CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8035B210 003247D0  38 60 00 00 */	li r3, 0
/* 8035B214 003247D4  38 A0 00 04 */	li r5, 4
/* 8035B218 003247D8  38 C0 00 01 */	li r6, 1
/* 8035B21C 003247DC  38 E0 00 00 */	li r7, 0
/* 8035B220 003247E0  4B FB 8F C1 */	bl EXIImm
/* 8035B224 003247E4  7C 60 00 34 */	cntlzw r0, r3
/* 8035B228 003247E8  38 60 00 00 */	li r3, 0
/* 8035B22C 003247EC  54 1F D9 7E */	srwi r31, r0, 5
/* 8035B230 003247F0  4B FB 93 E1 */	bl EXISync
/* 8035B234 003247F4  7C 60 00 34 */	cntlzw r0, r3
/* 8035B238 003247F8  38 81 00 08 */	addi r4, r1, 8
/* 8035B23C 003247FC  54 00 D9 7E */	srwi r0, r0, 5
/* 8035B240 00324800  38 60 00 00 */	li r3, 0
/* 8035B244 00324804  7F FF 03 78 */	or r31, r31, r0
/* 8035B248 00324808  38 A0 00 04 */	li r5, 4
/* 8035B24C 0032480C  38 C0 00 01 */	li r6, 1
/* 8035B250 00324810  38 E0 00 00 */	li r7, 0
/* 8035B254 00324814  4B FB 8F 8D */	bl EXIImm
/* 8035B258 00324818  7C 60 00 34 */	cntlzw r0, r3
/* 8035B25C 0032481C  38 60 00 00 */	li r3, 0
/* 8035B260 00324820  54 00 D9 7E */	srwi r0, r0, 5
/* 8035B264 00324824  7F FF 03 78 */	or r31, r31, r0
/* 8035B268 00324828  4B FB 93 A9 */	bl EXISync
/* 8035B26C 0032482C  7C 60 00 34 */	cntlzw r0, r3
/* 8035B270 00324830  38 60 00 00 */	li r3, 0
/* 8035B274 00324834  54 00 D9 7E */	srwi r0, r0, 5
/* 8035B278 00324838  7F FF 03 78 */	or r31, r31, r0
/* 8035B27C 0032483C  4B FB 9B 35 */	bl EXIDeselect
/* 8035B280 00324840  7C 60 00 34 */	cntlzw r0, r3
/* 8035B284 00324844  38 60 00 00 */	li r3, 0
/* 8035B288 00324848  54 00 D9 7E */	srwi r0, r0, 5
/* 8035B28C 0032484C  7F FF 03 78 */	or r31, r31, r0
/* 8035B290 00324850  4B FB A2 A1 */	bl EXIUnlock
/* 8035B294 00324854  7F E0 00 34 */	cntlzw r0, r31
/* 8035B298 00324858  54 03 D9 7E */	srwi r3, r0, 5
.L_8035B29C:
/* 8035B29C 0032485C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035B2A0 00324860  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8035B2A4 00324864  7C 08 03 A6 */	mtlr r0
/* 8035B2A8 00324868  38 21 00 20 */	addi r1, r1, 0x20
/* 8035B2AC 0032486C  4E 80 00 20 */	blr

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.global lbl_805D4700
lbl_805D4700:
	.skip 0x58
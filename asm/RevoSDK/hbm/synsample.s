.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
func_80341A90:
/* 80341A90 0030B050  80 C3 00 10 */	lwz r6, 0x10(r3)
/* 80341A94 0030B054  80 83 00 04 */	lwz r4, 4(r3)
/* 80341A98 0030B058  80 A6 00 08 */	lwz r5, 8(r6)
/* 80341A9C 0030B05C  80 06 00 0C */	lwz r0, 0xc(r6)
/* 80341AA0 0030B060  7C 05 02 15 */	add. r0, r5, r0
/* 80341AA4 0030B064  41 82 01 2C */	beq .L_80341BD0
/* 80341AA8 0030B068  38 00 00 01 */	li r0, 1
/* 80341AAC 0030B06C  90 03 00 20 */	stw r0, 0x20(r3)
/* 80341AB0 0030B070  3C A0 24 92 */	lis r5, 0x24924925@ha
/* 80341AB4 0030B074  81 43 00 08 */	lwz r10, 8(r3)
/* 80341AB8 0030B078  80 06 00 08 */	lwz r0, 8(r6)
/* 80341ABC 0030B07C  38 A5 49 25 */	addi r5, r5, 0x24924925@l
/* 80341AC0 0030B080  80 E6 00 0C */	lwz r7, 0xc(r6)
/* 80341AC4 0030B084  3D 00 00 01 */	lis r8, 1
/* 80341AC8 0030B088  7C C5 00 16 */	mulhwu r6, r5, r0
/* 80341ACC 0030B08C  81 23 00 18 */	lwz r9, 0x18(r3)
/* 80341AD0 0030B090  7C E0 3A 14 */	add r7, r0, r7
/* 80341AD4 0030B094  81 4A 00 24 */	lwz r10, 0x24(r10)
/* 80341AD8 0030B098  81 29 00 04 */	lwz r9, 4(r9)
/* 80341ADC 0030B09C  39 67 FF FF */	addi r11, r7, -1
/* 80341AE0 0030B0A0  7C E5 58 16 */	mulhwu r7, r5, r11
/* 80341AE4 0030B0A4  7C A6 00 50 */	subf r5, r6, r0
/* 80341AE8 0030B0A8  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80341AEC 0030B0AC  7D 4A 4A 14 */	add r10, r10, r9
/* 80341AF0 0030B0B0  54 A5 F8 7E */	srwi r5, r5, 1
/* 80341AF4 0030B0B4  91 04 00 96 */	stw r8, 0x96(r4)
/* 80341AF8 0030B0B8  7D 05 32 14 */	add r8, r5, r6
/* 80341AFC 0030B0BC  7C C7 58 50 */	subf r6, r7, r11
/* 80341B00 0030B0C0  55 09 E8 FE */	srwi r9, r8, 3
/* 80341B04 0030B0C4  38 AA 00 02 */	addi r5, r10, 2
/* 80341B08 0030B0C8  54 C6 F8 7E */	srwi r6, r6, 1
/* 80341B0C 0030B0CC  55 08 08 36 */	rlwinm r8, r8, 1, 0, 0x1b
/* 80341B10 0030B0D0  7C C6 3A 14 */	add r6, r6, r7
/* 80341B14 0030B0D4  54 C7 E8 FE */	srwi r7, r6, 3
/* 80341B18 0030B0D8  1D 29 00 0E */	mulli r9, r9, 0xe
/* 80341B1C 0030B0DC  54 C6 08 36 */	rlwinm r6, r6, 1, 0, 0x1b
/* 80341B20 0030B0E0  7C 09 00 50 */	subf r0, r9, r0
/* 80341B24 0030B0E4  7C 00 52 14 */	add r0, r0, r10
/* 80341B28 0030B0E8  1C E7 00 0E */	mulli r7, r7, 0xe
/* 80341B2C 0030B0EC  7D 00 42 14 */	add r8, r0, r8
/* 80341B30 0030B0F0  7C 07 58 50 */	subf r0, r7, r11
/* 80341B34 0030B0F4  38 E8 00 02 */	addi r7, r8, 2
/* 80341B38 0030B0F8  90 E4 00 9A */	stw r7, 0x9a(r4)
/* 80341B3C 0030B0FC  7C 00 52 14 */	add r0, r0, r10
/* 80341B40 0030B100  7C C0 32 14 */	add r6, r0, r6
/* 80341B44 0030B104  38 06 00 02 */	addi r0, r6, 2
/* 80341B48 0030B108  90 04 00 9E */	stw r0, 0x9e(r4)
/* 80341B4C 0030B10C  90 A4 00 A2 */	stw r5, 0xa2(r4)
/* 80341B50 0030B110  80 03 00 00 */	lwz r0, 0(r3)
/* 80341B54 0030B114  90 04 00 A6 */	stw r0, 0xa6(r4)
/* 80341B58 0030B118  80 03 00 04 */	lwz r0, 4(r3)
/* 80341B5C 0030B11C  90 04 00 AA */	stw r0, 0xaa(r4)
/* 80341B60 0030B120  80 03 00 08 */	lwz r0, 8(r3)
/* 80341B64 0030B124  90 04 00 AE */	stw r0, 0xae(r4)
/* 80341B68 0030B128  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80341B6C 0030B12C  90 04 00 B2 */	stw r0, 0xb2(r4)
/* 80341B70 0030B130  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80341B74 0030B134  90 04 00 B6 */	stw r0, 0xb6(r4)
/* 80341B78 0030B138  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80341B7C 0030B13C  90 04 00 BA */	stw r0, 0xba(r4)
/* 80341B80 0030B140  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80341B84 0030B144  90 04 00 BE */	stw r0, 0xbe(r4)
/* 80341B88 0030B148  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80341B8C 0030B14C  90 04 00 C2 */	stw r0, 0xc2(r4)
/* 80341B90 0030B150  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80341B94 0030B154  90 04 00 C6 */	stw r0, 0xc6(r4)
/* 80341B98 0030B158  80 03 00 24 */	lwz r0, 0x24(r3)
/* 80341B9C 0030B15C  90 04 00 CA */	stw r0, 0xca(r4)
/* 80341BA0 0030B160  A0 03 00 28 */	lhz r0, 0x28(r3)
/* 80341BA4 0030B164  B0 04 00 DC */	sth r0, 0xdc(r4)
/* 80341BA8 0030B168  A0 03 00 2A */	lhz r0, 0x2a(r3)
/* 80341BAC 0030B16C  B0 04 00 DE */	sth r0, 0xde(r4)
/* 80341BB0 0030B170  A0 03 00 2C */	lhz r0, 0x2c(r3)
/* 80341BB4 0030B174  B0 04 00 E0 */	sth r0, 0xe0(r4)
/* 80341BB8 0030B178  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 80341BBC 0030B17C  54 00 05 60 */	rlwinm r0, r0, 0, 0x15, 0x10
/* 80341BC0 0030B180  64 00 00 04 */	oris r0, r0, 4
/* 80341BC4 0030B184  60 00 84 00 */	ori r0, r0, 0x8400
/* 80341BC8 0030B188  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80341BCC 0030B18C  4E 80 00 20 */	blr
.L_80341BD0:
/* 80341BD0 0030B190  38 E0 00 00 */	li r7, 0
/* 80341BD4 0030B194  90 E3 00 20 */	stw r7, 0x20(r3)
/* 80341BD8 0030B198  3C A0 24 92 */	lis r5, 0x24924925@ha
/* 80341BDC 0030B19C  81 23 00 18 */	lwz r9, 0x18(r3)
/* 80341BE0 0030B1A0  38 05 49 25 */	addi r0, r5, 0x24924925@l
/* 80341BE4 0030B1A4  80 C3 00 08 */	lwz r6, 8(r3)
/* 80341BE8 0030B1A8  80 A9 00 08 */	lwz r5, 8(r9)
/* 80341BEC 0030B1AC  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80341BF0 0030B1B0  39 05 FF FF */	addi r8, r5, -1
/* 80341BF4 0030B1B4  80 A6 00 24 */	lwz r5, 0x24(r6)
/* 80341BF8 0030B1B8  7C C0 40 16 */	mulhwu r6, r0, r8
/* 80341BFC 0030B1BC  80 09 00 04 */	lwz r0, 4(r9)
/* 80341C00 0030B1C0  7D 25 02 14 */	add r9, r5, r0
/* 80341C04 0030B1C4  90 E4 00 96 */	stw r7, 0x96(r4)
/* 80341C08 0030B1C8  91 24 00 9A */	stw r9, 0x9a(r4)
/* 80341C0C 0030B1CC  38 09 00 02 */	addi r0, r9, 2
/* 80341C10 0030B1D0  7C A6 40 50 */	subf r5, r6, r8
/* 80341C14 0030B1D4  54 A5 F8 7E */	srwi r5, r5, 1
/* 80341C18 0030B1D8  7C C5 32 14 */	add r6, r5, r6
/* 80341C1C 0030B1DC  54 C5 E8 FE */	srwi r5, r6, 3
/* 80341C20 0030B1E0  1C E5 00 0E */	mulli r7, r5, 0xe
/* 80341C24 0030B1E4  54 C5 08 36 */	rlwinm r5, r6, 1, 0, 0x1b
/* 80341C28 0030B1E8  7C C7 40 50 */	subf r6, r7, r8
/* 80341C2C 0030B1EC  7C C6 4A 14 */	add r6, r6, r9
/* 80341C30 0030B1F0  7C A6 2A 14 */	add r5, r6, r5
/* 80341C34 0030B1F4  38 A5 00 02 */	addi r5, r5, 2
/* 80341C38 0030B1F8  90 A4 00 9E */	stw r5, 0x9e(r4)
/* 80341C3C 0030B1FC  90 04 00 A2 */	stw r0, 0xa2(r4)
/* 80341C40 0030B200  80 03 00 00 */	lwz r0, 0(r3)
/* 80341C44 0030B204  90 04 00 A6 */	stw r0, 0xa6(r4)
/* 80341C48 0030B208  80 03 00 04 */	lwz r0, 4(r3)
/* 80341C4C 0030B20C  90 04 00 AA */	stw r0, 0xaa(r4)
/* 80341C50 0030B210  80 03 00 08 */	lwz r0, 8(r3)
/* 80341C54 0030B214  90 04 00 AE */	stw r0, 0xae(r4)
/* 80341C58 0030B218  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80341C5C 0030B21C  90 04 00 B2 */	stw r0, 0xb2(r4)
/* 80341C60 0030B220  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80341C64 0030B224  90 04 00 B6 */	stw r0, 0xb6(r4)
/* 80341C68 0030B228  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80341C6C 0030B22C  90 04 00 BA */	stw r0, 0xba(r4)
/* 80341C70 0030B230  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80341C74 0030B234  90 04 00 BE */	stw r0, 0xbe(r4)
/* 80341C78 0030B238  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80341C7C 0030B23C  90 04 00 C2 */	stw r0, 0xc2(r4)
/* 80341C80 0030B240  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80341C84 0030B244  90 04 00 C6 */	stw r0, 0xc6(r4)
/* 80341C88 0030B248  80 03 00 24 */	lwz r0, 0x24(r3)
/* 80341C8C 0030B24C  90 04 00 CA */	stw r0, 0xca(r4)
/* 80341C90 0030B250  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 80341C94 0030B254  54 00 05 60 */	rlwinm r0, r0, 0, 0x15, 0x10
/* 80341C98 0030B258  60 00 84 00 */	ori r0, r0, 0x8400
/* 80341C9C 0030B25C  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80341CA0 0030B260  4E 80 00 20 */	blr

.balign 16, 0
func_80341CB0:
/* 80341CB0 0030B270  81 43 00 10 */	lwz r10, 0x10(r3)
/* 80341CB4 0030B274  80 83 00 04 */	lwz r4, 4(r3)
/* 80341CB8 0030B278  80 AA 00 08 */	lwz r5, 8(r10)
/* 80341CBC 0030B27C  80 0A 00 0C */	lwz r0, 0xc(r10)
/* 80341CC0 0030B280  7C 05 02 15 */	add. r0, r5, r0
/* 80341CC4 0030B284  41 82 00 80 */	beq .L_80341D44
/* 80341CC8 0030B288  38 00 00 01 */	li r0, 1
/* 80341CCC 0030B28C  90 03 00 20 */	stw r0, 0x20(r3)
/* 80341CD0 0030B290  80 E3 00 08 */	lwz r7, 8(r3)
/* 80341CD4 0030B294  3C A0 00 01 */	lis r5, 0x0001000A@ha
/* 80341CD8 0030B298  80 C3 00 18 */	lwz r6, 0x18(r3)
/* 80341CDC 0030B29C  38 A5 00 0A */	addi r5, r5, 0x0001000A@l
/* 80341CE0 0030B2A0  81 27 00 1C */	lwz r9, 0x1c(r7)
/* 80341CE4 0030B2A4  38 60 00 00 */	li r3, 0
/* 80341CE8 0030B2A8  81 06 00 04 */	lwz r8, 4(r6)
/* 80341CEC 0030B2AC  3C 00 08 00 */	lis r0, 0x800
/* 80341CF0 0030B2B0  80 EA 00 08 */	lwz r7, 8(r10)
/* 80341CF4 0030B2B4  80 CA 00 0C */	lwz r6, 0xc(r10)
/* 80341CF8 0030B2B8  7D 09 42 14 */	add r8, r9, r8
/* 80341CFC 0030B2BC  7C E8 3A 14 */	add r7, r8, r7
/* 80341D00 0030B2C0  90 A4 00 96 */	stw r5, 0x96(r4)
/* 80341D04 0030B2C4  7C A7 32 14 */	add r5, r7, r6
/* 80341D08 0030B2C8  38 A5 FF FF */	addi r5, r5, -1
/* 80341D0C 0030B2CC  90 E4 00 9A */	stw r7, 0x9a(r4)
/* 80341D10 0030B2D0  90 A4 00 9E */	stw r5, 0x9e(r4)
/* 80341D14 0030B2D4  91 04 00 A2 */	stw r8, 0xa2(r4)
/* 80341D18 0030B2D8  90 64 00 A6 */	stw r3, 0xa6(r4)
/* 80341D1C 0030B2DC  90 64 00 AA */	stw r3, 0xaa(r4)
/* 80341D20 0030B2E0  90 64 00 AE */	stw r3, 0xae(r4)
/* 80341D24 0030B2E4  90 64 00 B2 */	stw r3, 0xb2(r4)
/* 80341D28 0030B2E8  90 64 00 B6 */	stw r3, 0xb6(r4)
/* 80341D2C 0030B2EC  90 64 00 BA */	stw r3, 0xba(r4)
/* 80341D30 0030B2F0  90 64 00 BE */	stw r3, 0xbe(r4)
/* 80341D34 0030B2F4  90 64 00 C2 */	stw r3, 0xc2(r4)
/* 80341D38 0030B2F8  90 04 00 C6 */	stw r0, 0xc6(r4)
/* 80341D3C 0030B2FC  90 64 00 CA */	stw r3, 0xca(r4)
/* 80341D40 0030B300  48 00 00 6C */	b .L_80341DAC
.L_80341D44:
/* 80341D44 0030B304  39 00 00 00 */	li r8, 0
/* 80341D48 0030B308  91 03 00 20 */	stw r8, 0x20(r3)
/* 80341D4C 0030B30C  81 23 00 18 */	lwz r9, 0x18(r3)
/* 80341D50 0030B310  38 A0 00 0A */	li r5, 0xa
/* 80341D54 0030B314  80 63 00 08 */	lwz r3, 8(r3)
/* 80341D58 0030B318  3C 00 08 00 */	lis r0, 0x800
/* 80341D5C 0030B31C  80 C9 00 04 */	lwz r6, 4(r9)
/* 80341D60 0030B320  80 E3 00 1C */	lwz r7, 0x1c(r3)
/* 80341D64 0030B324  80 69 00 08 */	lwz r3, 8(r9)
/* 80341D68 0030B328  7C C7 32 14 */	add r6, r7, r6
/* 80341D6C 0030B32C  90 A4 00 96 */	stw r5, 0x96(r4)
/* 80341D70 0030B330  7C 66 1A 14 */	add r3, r6, r3
/* 80341D74 0030B334  38 63 FF FF */	addi r3, r3, -1
/* 80341D78 0030B338  90 C4 00 9A */	stw r6, 0x9a(r4)
/* 80341D7C 0030B33C  90 64 00 9E */	stw r3, 0x9e(r4)
/* 80341D80 0030B340  90 C4 00 A2 */	stw r6, 0xa2(r4)
/* 80341D84 0030B344  91 04 00 A6 */	stw r8, 0xa6(r4)
/* 80341D88 0030B348  91 04 00 AA */	stw r8, 0xaa(r4)
/* 80341D8C 0030B34C  91 04 00 AE */	stw r8, 0xae(r4)
/* 80341D90 0030B350  91 04 00 B2 */	stw r8, 0xb2(r4)
/* 80341D94 0030B354  91 04 00 B6 */	stw r8, 0xb6(r4)
/* 80341D98 0030B358  91 04 00 BA */	stw r8, 0xba(r4)
/* 80341D9C 0030B35C  91 04 00 BE */	stw r8, 0xbe(r4)
/* 80341DA0 0030B360  91 04 00 C2 */	stw r8, 0xc2(r4)
/* 80341DA4 0030B364  90 04 00 C6 */	stw r0, 0xc6(r4)
/* 80341DA8 0030B368  91 04 00 CA */	stw r8, 0xca(r4)
.L_80341DAC:
/* 80341DAC 0030B36C  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 80341DB0 0030B370  54 00 05 60 */	rlwinm r0, r0, 0, 0x15, 0x10
/* 80341DB4 0030B374  60 00 84 00 */	ori r0, r0, 0x8400
/* 80341DB8 0030B378  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80341DBC 0030B37C  4E 80 00 20 */	blr

.balign 16, 0
.global func_80341DC0
func_80341DC0:
/* 80341DC0 0030B380  81 43 00 10 */	lwz r10, 0x10(r3)
/* 80341DC4 0030B384  80 83 00 04 */	lwz r4, 4(r3)
/* 80341DC8 0030B388  80 AA 00 08 */	lwz r5, 8(r10)
/* 80341DCC 0030B38C  80 0A 00 0C */	lwz r0, 0xc(r10)
/* 80341DD0 0030B390  7C 05 02 15 */	add. r0, r5, r0
/* 80341DD4 0030B394  41 82 00 80 */	beq .L_80341E54
/* 80341DD8 0030B398  38 00 00 01 */	li r0, 1
/* 80341DDC 0030B39C  90 03 00 20 */	stw r0, 0x20(r3)
/* 80341DE0 0030B3A0  80 E3 00 08 */	lwz r7, 8(r3)
/* 80341DE4 0030B3A4  3C A0 00 01 */	lis r5, 0x00010019@ha
/* 80341DE8 0030B3A8  80 C3 00 18 */	lwz r6, 0x18(r3)
/* 80341DEC 0030B3AC  38 A5 00 19 */	addi r5, r5, 0x00010019@l
/* 80341DF0 0030B3B0  81 27 00 20 */	lwz r9, 0x20(r7)
/* 80341DF4 0030B3B4  38 60 00 00 */	li r3, 0
/* 80341DF8 0030B3B8  81 06 00 04 */	lwz r8, 4(r6)
/* 80341DFC 0030B3BC  3C 00 01 00 */	lis r0, 0x100
/* 80341E00 0030B3C0  80 EA 00 08 */	lwz r7, 8(r10)
/* 80341E04 0030B3C4  80 CA 00 0C */	lwz r6, 0xc(r10)
/* 80341E08 0030B3C8  7D 09 42 14 */	add r8, r9, r8
/* 80341E0C 0030B3CC  7C E8 3A 14 */	add r7, r8, r7
/* 80341E10 0030B3D0  90 A4 00 96 */	stw r5, 0x96(r4)
/* 80341E14 0030B3D4  7C A7 32 14 */	add r5, r7, r6
/* 80341E18 0030B3D8  38 A5 FF FF */	addi r5, r5, -1
/* 80341E1C 0030B3DC  90 E4 00 9A */	stw r7, 0x9a(r4)
/* 80341E20 0030B3E0  90 A4 00 9E */	stw r5, 0x9e(r4)
/* 80341E24 0030B3E4  91 04 00 A2 */	stw r8, 0xa2(r4)
/* 80341E28 0030B3E8  90 64 00 A6 */	stw r3, 0xa6(r4)
/* 80341E2C 0030B3EC  90 64 00 AA */	stw r3, 0xaa(r4)
/* 80341E30 0030B3F0  90 64 00 AE */	stw r3, 0xae(r4)
/* 80341E34 0030B3F4  90 64 00 B2 */	stw r3, 0xb2(r4)
/* 80341E38 0030B3F8  90 64 00 B6 */	stw r3, 0xb6(r4)
/* 80341E3C 0030B3FC  90 64 00 BA */	stw r3, 0xba(r4)
/* 80341E40 0030B400  90 64 00 BE */	stw r3, 0xbe(r4)
/* 80341E44 0030B404  90 64 00 C2 */	stw r3, 0xc2(r4)
/* 80341E48 0030B408  90 04 00 C6 */	stw r0, 0xc6(r4)
/* 80341E4C 0030B40C  90 64 00 CA */	stw r3, 0xca(r4)
/* 80341E50 0030B410  48 00 00 6C */	b .L_80341EBC
.L_80341E54:
/* 80341E54 0030B414  39 00 00 00 */	li r8, 0
/* 80341E58 0030B418  91 03 00 20 */	stw r8, 0x20(r3)
/* 80341E5C 0030B41C  81 23 00 18 */	lwz r9, 0x18(r3)
/* 80341E60 0030B420  38 A0 00 19 */	li r5, 0x19
/* 80341E64 0030B424  80 63 00 08 */	lwz r3, 8(r3)
/* 80341E68 0030B428  3C 00 01 00 */	lis r0, 0x100
/* 80341E6C 0030B42C  80 C9 00 04 */	lwz r6, 4(r9)
/* 80341E70 0030B430  80 E3 00 20 */	lwz r7, 0x20(r3)
/* 80341E74 0030B434  80 69 00 08 */	lwz r3, 8(r9)
/* 80341E78 0030B438  7C C7 32 14 */	add r6, r7, r6
/* 80341E7C 0030B43C  90 A4 00 96 */	stw r5, 0x96(r4)
/* 80341E80 0030B440  7C 66 1A 14 */	add r3, r6, r3
/* 80341E84 0030B444  38 63 FF FF */	addi r3, r3, -1
/* 80341E88 0030B448  90 C4 00 9A */	stw r6, 0x9a(r4)
/* 80341E8C 0030B44C  90 64 00 9E */	stw r3, 0x9e(r4)
/* 80341E90 0030B450  90 C4 00 A2 */	stw r6, 0xa2(r4)
/* 80341E94 0030B454  91 04 00 A6 */	stw r8, 0xa6(r4)
/* 80341E98 0030B458  91 04 00 AA */	stw r8, 0xaa(r4)
/* 80341E9C 0030B45C  91 04 00 AE */	stw r8, 0xae(r4)
/* 80341EA0 0030B460  91 04 00 B2 */	stw r8, 0xb2(r4)
/* 80341EA4 0030B464  91 04 00 B6 */	stw r8, 0xb6(r4)
/* 80341EA8 0030B468  91 04 00 BA */	stw r8, 0xba(r4)
/* 80341EAC 0030B46C  91 04 00 BE */	stw r8, 0xbe(r4)
/* 80341EB0 0030B470  91 04 00 C2 */	stw r8, 0xc2(r4)
/* 80341EB4 0030B474  90 04 00 C6 */	stw r0, 0xc6(r4)
/* 80341EB8 0030B478  91 04 00 CA */	stw r8, 0xca(r4)
.L_80341EBC:
/* 80341EBC 0030B47C  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 80341EC0 0030B480  54 00 05 60 */	rlwinm r0, r0, 0, 0x15, 0x10
/* 80341EC4 0030B484  60 00 84 00 */	ori r0, r0, 0x8400
/* 80341EC8 0030B488  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80341ECC 0030B48C  4E 80 00 20 */	blr 

.balign 16, 0
.global __HBMSYNSetupSample
__HBMSYNSetupSample:
/* 80341ED0 0030B490  80 83 00 18 */	lwz r4, 0x18(r3)
/* 80341ED4 0030B494  A0 04 00 00 */	lhz r0, 0(r4)
/* 80341ED8 0030B498  2C 00 00 00 */	cmpwi r0, 0
/* 80341EDC 0030B49C  41 82 00 18 */	beq .L_80341EF4
/* 80341EE0 0030B4A0  2C 00 00 01 */	cmpwi r0, 1
/* 80341EE4 0030B4A4  41 82 00 14 */	beq .L_80341EF8
/* 80341EE8 0030B4A8  2C 00 00 02 */	cmpwi r0, 2
/* 80341EEC 0030B4AC  41 82 00 10 */	beq .L_80341EFC
/* 80341EF0 0030B4B0  4E 80 00 20 */	blr
.L_80341EF4:
/* 80341EF4 0030B4B4  4B FF FB 9C */	b func_80341A90
.L_80341EF8:
/* 80341EF8 0030B4B8  4B FF FD B8 */	b func_80341CB0
.L_80341EFC:
/* 80341EFC 0030B4BC  4B FF FE C4 */	b func_80341DC0
/* 80341F00 0030B4C0  4E 80 00 20 */	blr
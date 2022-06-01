.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global ARCInitHandle
ARCInitHandle:
/* 802D1670 0029AC30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D1674 0029AC34  7C 08 02 A6 */	mflr r0
/* 802D1678 0029AC38  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D167C 0029AC3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D1680 0029AC40  7C 9F 23 78 */	mr r31, r4
/* 802D1684 0029AC44  93 C1 00 08 */	stw r30, 8(r1)
/* 802D1688 0029AC48  7C 7E 1B 78 */	mr r30, r3
/* 802D168C 0029AC4C  80 A3 00 00 */	lwz r5, 0(r3)
/* 802D1690 0029AC50  3C 05 AA 56 */	addis r0, r5, 0xaa56
/* 802D1694 0029AC54  28 00 38 2D */	cmplwi r0, 0x382d
/* 802D1698 0029AC58  41 82 00 1C */	beq lbl_802D16B4
/* 802D169C 0029AC5C  3C A0 80 54 */	lis r5, lbl_80540000@ha
/* 802D16A0 0029AC60  38 6D 97 28 */	addi r3, r13, lbl_806658A8@sda21
/* 802D16A4 0029AC64  38 A5 00 00 */	addi r5, r5, lbl_80540000@l
/* 802D16A8 0029AC68  38 80 00 4A */	li r4, 0x4a
/* 802D16AC 0029AC6C  4C C6 31 82 */	crclr 6
/* 802D16B0 0029AC70  48 21 CD E5 */	bl OSPanic
lbl_802D16B4:
/* 802D16B4 0029AC74  93 DF 00 00 */	stw r30, 0(r31)
/* 802D16B8 0029AC78  38 00 00 00 */	li r0, 0
/* 802D16BC 0029AC7C  38 60 00 01 */	li r3, 1
/* 802D16C0 0029AC80  80 9E 00 04 */	lwz r4, 4(r30)
/* 802D16C4 0029AC84  7C BE 22 14 */	add r5, r30, r4
/* 802D16C8 0029AC88  90 BF 00 04 */	stw r5, 4(r31)
/* 802D16CC 0029AC8C  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 802D16D0 0029AC90  7C 9E 22 14 */	add r4, r30, r4
/* 802D16D4 0029AC94  90 9F 00 08 */	stw r4, 8(r31)
/* 802D16D8 0029AC98  80 85 00 08 */	lwz r4, 8(r5)
/* 802D16DC 0029AC9C  90 9F 00 0C */	stw r4, 0xc(r31)
/* 802D16E0 0029ACA0  1C 84 00 0C */	mulli r4, r4, 0xc
/* 802D16E4 0029ACA4  7C 85 22 14 */	add r4, r5, r4
/* 802D16E8 0029ACA8  90 9F 00 10 */	stw r4, 0x10(r31)
/* 802D16EC 0029ACAC  80 9E 00 08 */	lwz r4, 8(r30)
/* 802D16F0 0029ACB0  90 9F 00 14 */	stw r4, 0x14(r31)
/* 802D16F4 0029ACB4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 802D16F8 0029ACB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D16FC 0029ACBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D1700 0029ACC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D1704 0029ACC4  7C 08 03 A6 */	mtlr r0
/* 802D1708 0029ACC8  38 21 00 10 */	addi r1, r1, 0x10
/* 802D170C 0029ACCC  4E 80 00 20 */	blr 

.balign 16, 0
.global ARCOpen
ARCOpen:
/* 802D1710 0029ACD0  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 802D1714 0029ACD4  7C 08 02 A6 */	mflr r0
/* 802D1718 0029ACD8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 802D171C 0029ACDC  39 61 00 A0 */	addi r11, r1, 0xa0
/* 802D1720 0029ACE0  4B FE 8A 31 */	bl _savegpr_26
/* 802D1724 0029ACE4  83 83 00 04 */	lwz r28, 4(r3)
/* 802D1728 0029ACE8  7C 7A 1B 78 */	mr r26, r3
/* 802D172C 0029ACEC  7C 9B 23 78 */	mr r27, r4
/* 802D1730 0029ACF0  7C BD 2B 78 */	mr r29, r5
/* 802D1734 0029ACF4  48 00 02 DD */	bl ARCConvertPathToEntrynum
/* 802D1738 0029ACF8  2C 03 00 00 */	cmpwi r3, 0
/* 802D173C 0029ACFC  40 80 02 34 */	bge lbl_802D1970
/* 802D1740 0029AD00  83 BA 00 18 */	lwz r29, 0x18(r26)
/* 802D1744 0029AD04  83 9A 00 04 */	lwz r28, 4(r26)
/* 802D1748 0029AD08  2C 1D 00 00 */	cmpwi r29, 0
/* 802D174C 0029AD0C  40 82 00 0C */	bne lbl_802D1758
/* 802D1750 0029AD10  38 80 00 00 */	li r4, 0
/* 802D1754 0029AD14  48 00 01 A4 */	b lbl_802D18F8
lbl_802D1758:
/* 802D1758 0029AD18  1C 1D 00 0C */	mulli r0, r29, 0xc
/* 802D175C 0029AD1C  80 FA 00 10 */	lwz r7, 0x10(r26)
/* 802D1760 0029AD20  7C 7C 02 14 */	add r3, r28, r0
/* 802D1764 0029AD24  7C 1C 00 2E */	lwzx r0, r28, r0
/* 802D1768 0029AD28  80 63 00 04 */	lwz r3, 4(r3)
/* 802D176C 0029AD2C  54 00 02 3E */	clrlwi r0, r0, 8
/* 802D1770 0029AD30  2C 03 00 00 */	cmpwi r3, 0
/* 802D1774 0029AD34  7F C7 02 14 */	add r30, r7, r0
/* 802D1778 0029AD38  40 82 00 0C */	bne lbl_802D1784
/* 802D177C 0029AD3C  38 80 00 00 */	li r4, 0
/* 802D1780 0029AD40  48 00 01 18 */	b lbl_802D1898
lbl_802D1784:
/* 802D1784 0029AD44  1C 03 00 0C */	mulli r0, r3, 0xc
/* 802D1788 0029AD48  7C 7C 02 14 */	add r3, r28, r0
/* 802D178C 0029AD4C  7C 1C 00 2E */	lwzx r0, r28, r0
/* 802D1790 0029AD50  80 63 00 04 */	lwz r3, 4(r3)
/* 802D1794 0029AD54  54 00 02 3E */	clrlwi r0, r0, 8
/* 802D1798 0029AD58  2C 03 00 00 */	cmpwi r3, 0
/* 802D179C 0029AD5C  7F E7 02 14 */	add r31, r7, r0
/* 802D17A0 0029AD60  40 82 00 0C */	bne lbl_802D17AC
/* 802D17A4 0029AD64  38 80 00 00 */	li r4, 0
/* 802D17A8 0029AD68  48 00 00 90 */	b lbl_802D1838
lbl_802D17AC:
/* 802D17AC 0029AD6C  1C 83 00 0C */	mulli r4, r3, 0xc
/* 802D17B0 0029AD70  7F 43 D3 78 */	mr r3, r26
/* 802D17B4 0029AD74  38 A1 00 08 */	addi r5, r1, 8
/* 802D17B8 0029AD78  38 C0 00 80 */	li r6, 0x80
/* 802D17BC 0029AD7C  7C 1C 20 2E */	lwzx r0, r28, r4
/* 802D17C0 0029AD80  7C 9C 22 14 */	add r4, r28, r4
/* 802D17C4 0029AD84  80 84 00 04 */	lwz r4, 4(r4)
/* 802D17C8 0029AD88  54 00 02 3E */	clrlwi r0, r0, 8
/* 802D17CC 0029AD8C  7F 47 02 14 */	add r26, r7, r0
/* 802D17D0 0029AD90  48 00 04 C1 */	bl entryToPath_7687
/* 802D17D4 0029AD94  28 03 00 80 */	cmplwi r3, 0x80
/* 802D17D8 0029AD98  7C 64 1B 78 */	mr r4, r3
/* 802D17DC 0029AD9C  40 82 00 08 */	bne lbl_802D17E4
/* 802D17E0 0029ADA0  48 00 00 58 */	b lbl_802D1838
lbl_802D17E4:
/* 802D17E4 0029ADA4  38 83 00 01 */	addi r4, r3, 1
/* 802D17E8 0029ADA8  38 A1 00 08 */	addi r5, r1, 8
/* 802D17EC 0029ADAC  38 00 00 2F */	li r0, 0x2f
/* 802D17F0 0029ADB0  7C 05 19 AE */	stbx r0, r5, r3
/* 802D17F4 0029ADB4  20 C4 00 80 */	subfic r6, r4, 0x80
/* 802D17F8 0029ADB8  7C A5 22 14 */	add r5, r5, r4
/* 802D17FC 0029ADBC  7C C3 33 78 */	mr r3, r6
/* 802D1800 0029ADC0  48 00 00 1C */	b lbl_802D181C
/* 802D1804 0029ADC4  60 00 00 00 */	nop 
lbl_802D1808:
/* 802D1808 0029ADC8  88 1A 00 00 */	lbz r0, 0(r26)
/* 802D180C 0029ADCC  3B 5A 00 01 */	addi r26, r26, 1
/* 802D1810 0029ADD0  98 05 00 00 */	stb r0, 0(r5)
/* 802D1814 0029ADD4  38 A5 00 01 */	addi r5, r5, 1
/* 802D1818 0029ADD8  38 63 FF FF */	addi r3, r3, -1
lbl_802D181C:
/* 802D181C 0029ADDC  2C 03 00 00 */	cmpwi r3, 0
/* 802D1820 0029ADE0  41 82 00 10 */	beq lbl_802D1830
/* 802D1824 0029ADE4  88 1A 00 00 */	lbz r0, 0(r26)
/* 802D1828 0029ADE8  7C 00 07 75 */	extsb. r0, r0
/* 802D182C 0029ADEC  40 82 FF DC */	bne lbl_802D1808
lbl_802D1830:
/* 802D1830 0029ADF0  7C 03 30 50 */	subf r0, r3, r6
/* 802D1834 0029ADF4  7C 84 02 14 */	add r4, r4, r0
lbl_802D1838:
/* 802D1838 0029ADF8  28 04 00 80 */	cmplwi r4, 0x80
/* 802D183C 0029ADFC  40 82 00 08 */	bne lbl_802D1844
/* 802D1840 0029AE00  48 00 00 58 */	b lbl_802D1898
lbl_802D1844:
/* 802D1844 0029AE04  38 A4 00 01 */	addi r5, r4, 1
/* 802D1848 0029AE08  38 61 00 08 */	addi r3, r1, 8
/* 802D184C 0029AE0C  38 00 00 2F */	li r0, 0x2f
/* 802D1850 0029AE10  7C 03 21 AE */	stbx r0, r3, r4
/* 802D1854 0029AE14  20 C5 00 80 */	subfic r6, r5, 0x80
/* 802D1858 0029AE18  7C 63 2A 14 */	add r3, r3, r5
/* 802D185C 0029AE1C  7C C4 33 78 */	mr r4, r6
/* 802D1860 0029AE20  48 00 00 1C */	b lbl_802D187C
/* 802D1864 0029AE24  60 00 00 00 */	nop 
lbl_802D1868:
/* 802D1868 0029AE28  88 1F 00 00 */	lbz r0, 0(r31)
/* 802D186C 0029AE2C  3B FF 00 01 */	addi r31, r31, 1
/* 802D1870 0029AE30  98 03 00 00 */	stb r0, 0(r3)
/* 802D1874 0029AE34  38 63 00 01 */	addi r3, r3, 1
/* 802D1878 0029AE38  38 84 FF FF */	addi r4, r4, -1
lbl_802D187C:
/* 802D187C 0029AE3C  2C 04 00 00 */	cmpwi r4, 0
/* 802D1880 0029AE40  41 82 00 10 */	beq lbl_802D1890
/* 802D1884 0029AE44  88 1F 00 00 */	lbz r0, 0(r31)
/* 802D1888 0029AE48  7C 00 07 75 */	extsb. r0, r0
/* 802D188C 0029AE4C  40 82 FF DC */	bne lbl_802D1868
lbl_802D1890:
/* 802D1890 0029AE50  7C 04 30 50 */	subf r0, r4, r6
/* 802D1894 0029AE54  7C 85 02 14 */	add r4, r5, r0
lbl_802D1898:
/* 802D1898 0029AE58  28 04 00 80 */	cmplwi r4, 0x80
/* 802D189C 0029AE5C  40 82 00 08 */	bne lbl_802D18A4
/* 802D18A0 0029AE60  48 00 00 58 */	b lbl_802D18F8
lbl_802D18A4:
/* 802D18A4 0029AE64  38 A4 00 01 */	addi r5, r4, 1
/* 802D18A8 0029AE68  38 61 00 08 */	addi r3, r1, 8
/* 802D18AC 0029AE6C  38 00 00 2F */	li r0, 0x2f
/* 802D18B0 0029AE70  7C 03 21 AE */	stbx r0, r3, r4
/* 802D18B4 0029AE74  20 C5 00 80 */	subfic r6, r5, 0x80
/* 802D18B8 0029AE78  7C 63 2A 14 */	add r3, r3, r5
/* 802D18BC 0029AE7C  7C C4 33 78 */	mr r4, r6
/* 802D18C0 0029AE80  48 00 00 1C */	b lbl_802D18DC
/* 802D18C4 0029AE84  60 00 00 00 */	nop 
lbl_802D18C8:
/* 802D18C8 0029AE88  88 1E 00 00 */	lbz r0, 0(r30)
/* 802D18CC 0029AE8C  3B DE 00 01 */	addi r30, r30, 1
/* 802D18D0 0029AE90  98 03 00 00 */	stb r0, 0(r3)
/* 802D18D4 0029AE94  38 63 00 01 */	addi r3, r3, 1
/* 802D18D8 0029AE98  38 84 FF FF */	addi r4, r4, -1
lbl_802D18DC:
/* 802D18DC 0029AE9C  2C 04 00 00 */	cmpwi r4, 0
/* 802D18E0 0029AEA0  41 82 00 10 */	beq lbl_802D18F0
/* 802D18E4 0029AEA4  88 1E 00 00 */	lbz r0, 0(r30)
/* 802D18E8 0029AEA8  7C 00 07 75 */	extsb. r0, r0
/* 802D18EC 0029AEAC  40 82 FF DC */	bne lbl_802D18C8
lbl_802D18F0:
/* 802D18F0 0029AEB0  7C 04 30 50 */	subf r0, r4, r6
/* 802D18F4 0029AEB4  7C 85 02 14 */	add r4, r5, r0
lbl_802D18F8:
/* 802D18F8 0029AEB8  28 04 00 80 */	cmplwi r4, 0x80
/* 802D18FC 0029AEBC  40 82 00 10 */	bne lbl_802D190C
/* 802D1900 0029AEC0  38 00 00 00 */	li r0, 0
/* 802D1904 0029AEC4  98 01 00 87 */	stb r0, 0x87(r1)
/* 802D1908 0029AEC8  48 00 00 48 */	b lbl_802D1950
lbl_802D190C:
/* 802D190C 0029AECC  1C 1D 00 0C */	mulli r0, r29, 0xc
/* 802D1910 0029AED0  7C 1C 00 2E */	lwzx r0, r28, r0
/* 802D1914 0029AED4  54 00 00 0F */	rlwinm. r0, r0, 0, 0, 7
/* 802D1918 0029AED8  41 82 00 2C */	beq lbl_802D1944
/* 802D191C 0029AEDC  28 04 00 7F */	cmplwi r4, 0x7f
/* 802D1920 0029AEE0  40 82 00 14 */	bne lbl_802D1934
/* 802D1924 0029AEE4  38 61 00 08 */	addi r3, r1, 8
/* 802D1928 0029AEE8  38 00 00 00 */	li r0, 0
/* 802D192C 0029AEEC  7C 03 21 AE */	stbx r0, r3, r4
/* 802D1930 0029AEF0  48 00 00 20 */	b lbl_802D1950
lbl_802D1934:
/* 802D1934 0029AEF4  38 61 00 08 */	addi r3, r1, 8
/* 802D1938 0029AEF8  38 00 00 2F */	li r0, 0x2f
/* 802D193C 0029AEFC  7C 03 21 AE */	stbx r0, r3, r4
/* 802D1940 0029AF00  38 84 00 01 */	addi r4, r4, 1
lbl_802D1944:
/* 802D1944 0029AF04  38 61 00 08 */	addi r3, r1, 8
/* 802D1948 0029AF08  38 00 00 00 */	li r0, 0
/* 802D194C 0029AF0C  7C 03 21 AE */	stbx r0, r3, r4
lbl_802D1950:
/* 802D1950 0029AF10  3C 60 80 54 */	lis r3, lbl_80540024@ha
/* 802D1954 0029AF14  7F 64 DB 78 */	mr r4, r27
/* 802D1958 0029AF18  38 63 00 24 */	addi r3, r3, lbl_80540024@l
/* 802D195C 0029AF1C  38 A1 00 08 */	addi r5, r1, 8
/* 802D1960 0029AF20  4C C6 31 82 */	crclr 6
/* 802D1964 0029AF24  48 08 35 8D */	bl OSReport
/* 802D1968 0029AF28  38 60 00 00 */	li r3, 0
/* 802D196C 0029AF2C  48 00 00 38 */	b lbl_802D19A4
lbl_802D1970:
/* 802D1970 0029AF30  1C 63 00 0C */	mulli r3, r3, 0xc
/* 802D1974 0029AF34  7C 1C 18 2E */	lwzx r0, r28, r3
/* 802D1978 0029AF38  54 00 00 0F */	rlwinm. r0, r0, 0, 0, 7
/* 802D197C 0029AF3C  41 82 00 0C */	beq lbl_802D1988
/* 802D1980 0029AF40  38 60 00 00 */	li r3, 0
/* 802D1984 0029AF44  48 00 00 20 */	b lbl_802D19A4
lbl_802D1988:
/* 802D1988 0029AF48  93 5D 00 00 */	stw r26, 0(r29)
/* 802D198C 0029AF4C  7C 9C 1A 14 */	add r4, r28, r3
/* 802D1990 0029AF50  38 60 00 01 */	li r3, 1
/* 802D1994 0029AF54  80 04 00 04 */	lwz r0, 4(r4)
/* 802D1998 0029AF58  90 1D 00 04 */	stw r0, 4(r29)
/* 802D199C 0029AF5C  80 04 00 08 */	lwz r0, 8(r4)
/* 802D19A0 0029AF60  90 1D 00 08 */	stw r0, 8(r29)
lbl_802D19A4:
/* 802D19A4 0029AF64  39 61 00 A0 */	addi r11, r1, 0xa0
/* 802D19A8 0029AF68  4B FE 87 F5 */	bl _restgpr_26
/* 802D19AC 0029AF6C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 802D19B0 0029AF70  7C 08 03 A6 */	mtlr r0
/* 802D19B4 0029AF74  38 21 00 A0 */	addi r1, r1, 0xa0
/* 802D19B8 0029AF78  4E 80 00 20 */	blr 

.balign 16, 0
.global ARCFastOpen
ARCFastOpen:
/* 802D19C0 0029AF80  2C 04 00 00 */	cmpwi r4, 0
/* 802D19C4 0029AF84  80 C3 00 04 */	lwz r6, 4(r3)
/* 802D19C8 0029AF88  41 80 00 20 */	blt lbl_802D19E8
/* 802D19CC 0029AF8C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802D19D0 0029AF90  7C 04 00 40 */	cmplw r4, r0
/* 802D19D4 0029AF94  40 80 00 14 */	bge lbl_802D19E8
/* 802D19D8 0029AF98  1C 84 00 0C */	mulli r4, r4, 0xc
/* 802D19DC 0029AF9C  7C 06 20 2E */	lwzx r0, r6, r4
/* 802D19E0 0029AFA0  54 00 00 0F */	rlwinm. r0, r0, 0, 0, 7
/* 802D19E4 0029AFA4  41 82 00 0C */	beq lbl_802D19F0
lbl_802D19E8:
/* 802D19E8 0029AFA8  38 60 00 00 */	li r3, 0
/* 802D19EC 0029AFAC  4E 80 00 20 */	blr
lbl_802D19F0:
/* 802D19F0 0029AFB0  90 65 00 00 */	stw r3, 0(r5)
/* 802D19F4 0029AFB4  7C 86 22 14 */	add r4, r6, r4
/* 802D19F8 0029AFB8  38 60 00 01 */	li r3, 1
/* 802D19FC 0029AFBC  80 04 00 04 */	lwz r0, 4(r4)
/* 802D1A00 0029AFC0  90 05 00 04 */	stw r0, 4(r5)
/* 802D1A04 0029AFC4  80 04 00 08 */	lwz r0, 8(r4)
/* 802D1A08 0029AFC8  90 05 00 08 */	stw r0, 8(r5)
/* 802D1A0C 0029AFCC  4E 80 00 20 */	blr 

.balign 16, 0
.global ARCConvertPathToEntrynum
ARCConvertPathToEntrynum:
/* 802D1A10 0029AFD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D1A14 0029AFD4  3C C0 80 54 */	lis r6, lbl_8053F548@ha
/* 802D1A18 0029AFD8  38 C6 F5 48 */	addi r6, r6, lbl_8053F548@l
/* 802D1A1C 0029AFDC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D1A20 0029AFE0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D1A24 0029AFE4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802D1A28 0029AFE8  93 81 00 10 */	stw r28, 0x10(r1)
/* 802D1A2C 0029AFEC  81 23 00 18 */	lwz r9, 0x18(r3)
/* 802D1A30 0029AFF0  81 43 00 04 */	lwz r10, 4(r3)
/* 802D1A34 0029AFF4  60 00 00 00 */	nop 
lbl_802D1A38:
/* 802D1A38 0029AFF8  88 04 00 00 */	lbz r0, 0(r4)
/* 802D1A3C 0029AFFC  7C 00 07 75 */	extsb. r0, r0
/* 802D1A40 0029B000  40 82 00 0C */	bne lbl_802D1A4C
/* 802D1A44 0029B004  7D 23 4B 78 */	mr r3, r9
/* 802D1A48 0029B008  48 00 02 2C */	b lbl_802D1C74
lbl_802D1A4C:
/* 802D1A4C 0029B00C  2C 00 00 2F */	cmpwi r0, 0x2f
/* 802D1A50 0029B010  40 82 00 10 */	bne lbl_802D1A60
/* 802D1A54 0029B014  39 20 00 00 */	li r9, 0
/* 802D1A58 0029B018  38 84 00 01 */	addi r4, r4, 1
/* 802D1A5C 0029B01C  4B FF FF DC */	b lbl_802D1A38
lbl_802D1A60:
/* 802D1A60 0029B020  2C 00 00 2E */	cmpwi r0, 0x2e
/* 802D1A64 0029B024  40 82 00 70 */	bne lbl_802D1AD4
/* 802D1A68 0029B028  88 04 00 01 */	lbz r0, 1(r4)
/* 802D1A6C 0029B02C  7C 00 07 74 */	extsb r0, r0
/* 802D1A70 0029B030  2C 00 00 2E */	cmpwi r0, 0x2e
/* 802D1A74 0029B034  40 82 00 40 */	bne lbl_802D1AB4
/* 802D1A78 0029B038  88 04 00 02 */	lbz r0, 2(r4)
/* 802D1A7C 0029B03C  7C 00 07 74 */	extsb r0, r0
/* 802D1A80 0029B040  2C 00 00 2F */	cmpwi r0, 0x2f
/* 802D1A84 0029B044  40 82 00 18 */	bne lbl_802D1A9C
/* 802D1A88 0029B048  1C 09 00 0C */	mulli r0, r9, 0xc
/* 802D1A8C 0029B04C  38 84 00 03 */	addi r4, r4, 3
/* 802D1A90 0029B050  7C AA 02 14 */	add r5, r10, r0
/* 802D1A94 0029B054  81 25 00 04 */	lwz r9, 4(r5)
/* 802D1A98 0029B058  4B FF FF A0 */	b lbl_802D1A38
lbl_802D1A9C:
/* 802D1A9C 0029B05C  2C 00 00 00 */	cmpwi r0, 0
/* 802D1AA0 0029B060  40 82 00 34 */	bne lbl_802D1AD4
/* 802D1AA4 0029B064  1C 09 00 0C */	mulli r0, r9, 0xc
/* 802D1AA8 0029B068  7C 6A 02 14 */	add r3, r10, r0
/* 802D1AAC 0029B06C  80 63 00 04 */	lwz r3, 4(r3)
/* 802D1AB0 0029B070  48 00 01 C4 */	b lbl_802D1C74
lbl_802D1AB4:
/* 802D1AB4 0029B074  2C 00 00 2F */	cmpwi r0, 0x2f
/* 802D1AB8 0029B078  40 82 00 0C */	bne lbl_802D1AC4
/* 802D1ABC 0029B07C  38 84 00 02 */	addi r4, r4, 2
/* 802D1AC0 0029B080  4B FF FF 78 */	b lbl_802D1A38
lbl_802D1AC4:
/* 802D1AC4 0029B084  2C 00 00 00 */	cmpwi r0, 0
/* 802D1AC8 0029B088  40 82 00 0C */	bne lbl_802D1AD4
/* 802D1ACC 0029B08C  7D 23 4B 78 */	mr r3, r9
/* 802D1AD0 0029B090  48 00 01 A4 */	b lbl_802D1C74
lbl_802D1AD4:
/* 802D1AD4 0029B094  7C 88 23 78 */	mr r8, r4
/* 802D1AD8 0029B098  48 00 00 0C */	b lbl_802D1AE4
/* 802D1ADC 0029B09C  60 00 00 00 */	nop 
lbl_802D1AE0:
/* 802D1AE0 0029B0A0  39 08 00 01 */	addi r8, r8, 1
lbl_802D1AE4:
/* 802D1AE4 0029B0A4  88 08 00 00 */	lbz r0, 0(r8)
/* 802D1AE8 0029B0A8  7C 00 07 75 */	extsb. r0, r0
/* 802D1AEC 0029B0AC  41 82 00 10 */	beq lbl_802D1AFC
/* 802D1AF0 0029B0B0  2C 00 00 2F */	cmpwi r0, 0x2f
/* 802D1AF4 0029B0B4  41 82 00 10 */	beq lbl_802D1B04
/* 802D1AF8 0029B0B8  4B FF FF E8 */	b lbl_802D1AE0
lbl_802D1AFC:
/* 802D1AFC 0029B0BC  38 00 00 00 */	li r0, 0
/* 802D1B00 0029B0C0  48 00 00 08 */	b lbl_802D1B08
lbl_802D1B04:
/* 802D1B04 0029B0C4  38 00 00 01 */	li r0, 1
lbl_802D1B08:
/* 802D1B08 0029B0C8  1C E9 00 0C */	mulli r7, r9, 0xc
/* 802D1B0C 0029B0CC  80 A6 00 38 */	lwz r5, 0x38(r6)
/* 802D1B10 0029B0D0  7D 04 40 50 */	subf r8, r4, r8
/* 802D1B14 0029B0D4  39 29 00 01 */	addi r9, r9, 1
/* 802D1B18 0029B0D8  7C EA 3A 14 */	add r7, r10, r7
/* 802D1B1C 0029B0DC  80 E7 00 08 */	lwz r7, 8(r7)
/* 802D1B20 0029B0E0  48 00 01 28 */	b lbl_802D1C48
/* 802D1B24 0029B0E4  60 00 00 00 */	nop 
lbl_802D1B28:
/* 802D1B28 0029B0E8  1D 69 00 0C */	mulli r11, r9, 0xc
/* 802D1B2C 0029B0EC  7F AA 5A 14 */	add r29, r10, r11
lbl_802D1B30:
/* 802D1B30 0029B0F0  83 DD 00 00 */	lwz r30, 0(r29)
/* 802D1B34 0029B0F4  57 CB 00 0F */	rlwinm. r11, r30, 0, 0, 7
/* 802D1B38 0029B0F8  40 82 00 0C */	bne lbl_802D1B44
/* 802D1B3C 0029B0FC  2C 00 00 01 */	cmpwi r0, 1
/* 802D1B40 0029B100  41 82 00 E8 */	beq lbl_802D1C28
lbl_802D1B44:
/* 802D1B44 0029B104  81 83 00 10 */	lwz r12, 0x10(r3)
/* 802D1B48 0029B108  57 CB 02 3E */	clrlwi r11, r30, 8
/* 802D1B4C 0029B10C  7F 8C 5A 14 */	add r28, r12, r11
/* 802D1B50 0029B110  7D 6C 58 AE */	lbzx r11, r12, r11
/* 802D1B54 0029B114  2C 0B 00 2E */	cmpwi r11, 0x2e
/* 802D1B58 0029B118  40 82 00 1C */	bne lbl_802D1B74
/* 802D1B5C 0029B11C  89 7C 00 01 */	lbz r11, 1(r28)
/* 802D1B60 0029B120  7D 6B 07 75 */	extsb. r11, r11
/* 802D1B64 0029B124  40 82 00 10 */	bne lbl_802D1B74
/* 802D1B68 0029B128  3B BD 00 0C */	addi r29, r29, 0xc
/* 802D1B6C 0029B12C  39 29 00 01 */	addi r9, r9, 1
/* 802D1B70 0029B130  4B FF FF C0 */	b lbl_802D1B30
lbl_802D1B74:
/* 802D1B74 0029B134  7C 8C 23 78 */	mr r12, r4
/* 802D1B78 0029B138  48 00 00 78 */	b lbl_802D1BF0
/* 802D1B7C 0029B13C  60 00 00 00 */	nop 
lbl_802D1B80:
/* 802D1B80 0029B140  89 7C 00 00 */	lbz r11, 0(r28)
/* 802D1B84 0029B144  3B E0 00 01 */	li r31, 1
/* 802D1B88 0029B148  3B 9C 00 01 */	addi r28, r28, 1
/* 802D1B8C 0029B14C  7D 7E 07 74 */	extsb r30, r11
/* 802D1B90 0029B150  28 1E 00 FF */	cmplwi r30, 0xff
/* 802D1B94 0029B154  41 81 00 08 */	bgt lbl_802D1B9C
/* 802D1B98 0029B158  3B E0 00 00 */	li r31, 0
lbl_802D1B9C:
/* 802D1B9C 0029B15C  2C 1F 00 00 */	cmpwi r31, 0
/* 802D1BA0 0029B160  41 82 00 08 */	beq lbl_802D1BA8
/* 802D1BA4 0029B164  48 00 00 0C */	b lbl_802D1BB0
lbl_802D1BA8:
/* 802D1BA8 0029B168  81 65 00 10 */	lwz r11, 0x10(r5)
/* 802D1BAC 0029B16C  7F CB F0 AE */	lbzx r30, r11, r30
lbl_802D1BB0:
/* 802D1BB0 0029B170  89 6C 00 00 */	lbz r11, 0(r12)
/* 802D1BB4 0029B174  3B A0 00 01 */	li r29, 1
/* 802D1BB8 0029B178  39 8C 00 01 */	addi r12, r12, 1
/* 802D1BBC 0029B17C  7D 7F 07 74 */	extsb r31, r11
/* 802D1BC0 0029B180  28 1F 00 FF */	cmplwi r31, 0xff
/* 802D1BC4 0029B184  41 81 00 08 */	bgt lbl_802D1BCC
/* 802D1BC8 0029B188  3B A0 00 00 */	li r29, 0
lbl_802D1BCC:
/* 802D1BCC 0029B18C  2C 1D 00 00 */	cmpwi r29, 0
/* 802D1BD0 0029B190  41 82 00 08 */	beq lbl_802D1BD8
/* 802D1BD4 0029B194  48 00 00 0C */	b lbl_802D1BE0
lbl_802D1BD8:
/* 802D1BD8 0029B198  81 65 00 10 */	lwz r11, 0x10(r5)
/* 802D1BDC 0029B19C  7F EB F8 AE */	lbzx r31, r11, r31
lbl_802D1BE0:
/* 802D1BE0 0029B1A0  7C 1F F0 00 */	cmpw r31, r30
/* 802D1BE4 0029B1A4  41 82 00 0C */	beq lbl_802D1BF0
/* 802D1BE8 0029B1A8  39 60 00 00 */	li r11, 0
/* 802D1BEC 0029B1AC  48 00 00 34 */	b lbl_802D1C20
lbl_802D1BF0:
/* 802D1BF0 0029B1B0  89 7C 00 00 */	lbz r11, 0(r28)
/* 802D1BF4 0029B1B4  7D 6B 07 75 */	extsb. r11, r11
/* 802D1BF8 0029B1B8  40 82 FF 88 */	bne lbl_802D1B80
/* 802D1BFC 0029B1BC  89 6C 00 00 */	lbz r11, 0(r12)
/* 802D1C00 0029B1C0  7D 6B 07 74 */	extsb r11, r11
/* 802D1C04 0029B1C4  2C 0B 00 2F */	cmpwi r11, 0x2f
/* 802D1C08 0029B1C8  41 82 00 0C */	beq lbl_802D1C14
/* 802D1C0C 0029B1CC  2C 0B 00 00 */	cmpwi r11, 0
/* 802D1C10 0029B1D0  40 82 00 0C */	bne lbl_802D1C1C
lbl_802D1C14:
/* 802D1C14 0029B1D4  39 60 00 01 */	li r11, 1
/* 802D1C18 0029B1D8  48 00 00 08 */	b lbl_802D1C20
lbl_802D1C1C:
/* 802D1C1C 0029B1DC  39 60 00 00 */	li r11, 0
lbl_802D1C20:
/* 802D1C20 0029B1E0  2C 0B 00 01 */	cmpwi r11, 1
/* 802D1C24 0029B1E4  41 82 00 34 */	beq lbl_802D1C58
lbl_802D1C28:
/* 802D1C28 0029B1E8  1D 69 00 0C */	mulli r11, r9, 0xc
/* 802D1C2C 0029B1EC  7D 8A 5A 14 */	add r12, r10, r11
/* 802D1C30 0029B1F0  7D 6A 58 2E */	lwzx r11, r10, r11
/* 802D1C34 0029B1F4  55 6B 00 0F */	rlwinm. r11, r11, 0, 0, 7
/* 802D1C38 0029B1F8  41 82 00 0C */	beq lbl_802D1C44
/* 802D1C3C 0029B1FC  81 2C 00 08 */	lwz r9, 8(r12)
/* 802D1C40 0029B200  48 00 00 08 */	b lbl_802D1C48
lbl_802D1C44:
/* 802D1C44 0029B204  39 29 00 01 */	addi r9, r9, 1
lbl_802D1C48:
/* 802D1C48 0029B208  7C 09 38 40 */	cmplw r9, r7
/* 802D1C4C 0029B20C  41 80 FE DC */	blt lbl_802D1B28
/* 802D1C50 0029B210  38 60 FF FF */	li r3, -1
/* 802D1C54 0029B214  48 00 00 20 */	b lbl_802D1C74
lbl_802D1C58:
/* 802D1C58 0029B218  2C 00 00 00 */	cmpwi r0, 0
/* 802D1C5C 0029B21C  40 82 00 0C */	bne lbl_802D1C68
/* 802D1C60 0029B220  7D 23 4B 78 */	mr r3, r9
/* 802D1C64 0029B224  48 00 00 10 */	b lbl_802D1C74
lbl_802D1C68:
/* 802D1C68 0029B228  7C 88 22 14 */	add r4, r8, r4
/* 802D1C6C 0029B22C  38 84 00 01 */	addi r4, r4, 1
/* 802D1C70 0029B230  4B FF FD C8 */	b lbl_802D1A38
lbl_802D1C74:
/* 802D1C74 0029B234  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D1C78 0029B238  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D1C7C 0029B23C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802D1C80 0029B240  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802D1C84 0029B244  38 21 00 20 */	addi r1, r1, 0x20
/* 802D1C88 0029B248  4E 80 00 20 */	blr 

.balign 16, 0
.global entryToPath_7687
entryToPath_7687:
/* 802D1C90 0029B250  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D1C94 0029B254  7C 08 02 A6 */	mflr r0
/* 802D1C98 0029B258  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D1C9C 0029B25C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D1CA0 0029B260  4B FE 84 B5 */	bl _savegpr_27
/* 802D1CA4 0029B264  2C 04 00 00 */	cmpwi r4, 0
/* 802D1CA8 0029B268  80 E3 00 04 */	lwz r7, 4(r3)
/* 802D1CAC 0029B26C  7C BC 2B 78 */	mr r28, r5
/* 802D1CB0 0029B270  7C DD 33 78 */	mr r29, r6
/* 802D1CB4 0029B274  40 82 00 0C */	bne lbl_802D1CC0
/* 802D1CB8 0029B278  38 60 00 00 */	li r3, 0
/* 802D1CBC 0029B27C  48 00 01 8C */	b lbl_802D1E48
lbl_802D1CC0:
/* 802D1CC0 0029B280  1C 04 00 0C */	mulli r0, r4, 0xc
/* 802D1CC4 0029B284  81 03 00 10 */	lwz r8, 0x10(r3)
/* 802D1CC8 0029B288  7C 87 02 14 */	add r4, r7, r0
/* 802D1CCC 0029B28C  7C 07 00 2E */	lwzx r0, r7, r0
/* 802D1CD0 0029B290  80 84 00 04 */	lwz r4, 4(r4)
/* 802D1CD4 0029B294  54 00 02 3E */	clrlwi r0, r0, 8
/* 802D1CD8 0029B298  2C 04 00 00 */	cmpwi r4, 0
/* 802D1CDC 0029B29C  7F C8 02 14 */	add r30, r8, r0
/* 802D1CE0 0029B2A0  40 82 00 0C */	bne lbl_802D1CEC
/* 802D1CE4 0029B2A4  38 80 00 00 */	li r4, 0
/* 802D1CE8 0029B2A8  48 00 01 00 */	b lbl_802D1DE8
lbl_802D1CEC:
/* 802D1CEC 0029B2AC  1C 04 00 0C */	mulli r0, r4, 0xc
/* 802D1CF0 0029B2B0  7C 87 02 14 */	add r4, r7, r0
/* 802D1CF4 0029B2B4  7C 07 00 2E */	lwzx r0, r7, r0
/* 802D1CF8 0029B2B8  80 84 00 04 */	lwz r4, 4(r4)
/* 802D1CFC 0029B2BC  54 00 02 3E */	clrlwi r0, r0, 8
/* 802D1D00 0029B2C0  2C 04 00 00 */	cmpwi r4, 0
/* 802D1D04 0029B2C4  7F E8 02 14 */	add r31, r8, r0
/* 802D1D08 0029B2C8  40 82 00 0C */	bne lbl_802D1D14
/* 802D1D0C 0029B2CC  38 80 00 00 */	li r4, 0
/* 802D1D10 0029B2D0  48 00 00 80 */	b lbl_802D1D90
lbl_802D1D14:
/* 802D1D14 0029B2D4  1C 84 00 0C */	mulli r4, r4, 0xc
/* 802D1D18 0029B2D8  7C 07 20 2E */	lwzx r0, r7, r4
/* 802D1D1C 0029B2DC  7C 87 22 14 */	add r4, r7, r4
/* 802D1D20 0029B2E0  80 84 00 04 */	lwz r4, 4(r4)
/* 802D1D24 0029B2E4  54 00 02 3E */	clrlwi r0, r0, 8
/* 802D1D28 0029B2E8  7F 68 02 14 */	add r27, r8, r0
/* 802D1D2C 0029B2EC  4B FF FF 65 */	bl entryToPath_7687
/* 802D1D30 0029B2F0  7C 03 E8 40 */	cmplw r3, r29
/* 802D1D34 0029B2F4  7C 64 1B 78 */	mr r4, r3
/* 802D1D38 0029B2F8  40 82 00 08 */	bne lbl_802D1D40
/* 802D1D3C 0029B2FC  48 00 00 54 */	b lbl_802D1D90
lbl_802D1D40:
/* 802D1D40 0029B300  38 83 00 01 */	addi r4, r3, 1
/* 802D1D44 0029B304  38 00 00 2F */	li r0, 0x2f
/* 802D1D48 0029B308  7C C4 E8 50 */	subf r6, r4, r29
/* 802D1D4C 0029B30C  7C 1C 19 AE */	stbx r0, r28, r3
/* 802D1D50 0029B310  7C 7C 22 14 */	add r3, r28, r4
/* 802D1D54 0029B314  7C C5 33 78 */	mr r5, r6
/* 802D1D58 0029B318  48 00 00 1C */	b lbl_802D1D74
/* 802D1D5C 0029B31C  60 00 00 00 */	nop 
lbl_802D1D60:
/* 802D1D60 0029B320  88 1B 00 00 */	lbz r0, 0(r27)
/* 802D1D64 0029B324  3B 7B 00 01 */	addi r27, r27, 1
/* 802D1D68 0029B328  98 03 00 00 */	stb r0, 0(r3)
/* 802D1D6C 0029B32C  38 63 00 01 */	addi r3, r3, 1
/* 802D1D70 0029B330  38 A5 FF FF */	addi r5, r5, -1
lbl_802D1D74:
/* 802D1D74 0029B334  2C 05 00 00 */	cmpwi r5, 0
/* 802D1D78 0029B338  41 82 00 10 */	beq lbl_802D1D88
/* 802D1D7C 0029B33C  88 1B 00 00 */	lbz r0, 0(r27)
/* 802D1D80 0029B340  7C 00 07 75 */	extsb. r0, r0
/* 802D1D84 0029B344  40 82 FF DC */	bne lbl_802D1D60
lbl_802D1D88:
/* 802D1D88 0029B348  7C 05 30 50 */	subf r0, r5, r6
/* 802D1D8C 0029B34C  7C 84 02 14 */	add r4, r4, r0
lbl_802D1D90:
/* 802D1D90 0029B350  7C 04 E8 40 */	cmplw r4, r29
/* 802D1D94 0029B354  40 82 00 08 */	bne lbl_802D1D9C
/* 802D1D98 0029B358  48 00 00 50 */	b lbl_802D1DE8
lbl_802D1D9C:
/* 802D1D9C 0029B35C  38 64 00 01 */	addi r3, r4, 1
/* 802D1DA0 0029B360  38 00 00 2F */	li r0, 0x2f
/* 802D1DA4 0029B364  7C C3 E8 50 */	subf r6, r3, r29
/* 802D1DA8 0029B368  7C 1C 21 AE */	stbx r0, r28, r4
/* 802D1DAC 0029B36C  7C 9C 1A 14 */	add r4, r28, r3
/* 802D1DB0 0029B370  7C C5 33 78 */	mr r5, r6
/* 802D1DB4 0029B374  48 00 00 18 */	b lbl_802D1DCC
lbl_802D1DB8:
/* 802D1DB8 0029B378  88 1F 00 00 */	lbz r0, 0(r31)
/* 802D1DBC 0029B37C  3B FF 00 01 */	addi r31, r31, 1
/* 802D1DC0 0029B380  98 04 00 00 */	stb r0, 0(r4)
/* 802D1DC4 0029B384  38 84 00 01 */	addi r4, r4, 1
/* 802D1DC8 0029B388  38 A5 FF FF */	addi r5, r5, -1
lbl_802D1DCC:
/* 802D1DCC 0029B38C  2C 05 00 00 */	cmpwi r5, 0
/* 802D1DD0 0029B390  41 82 00 10 */	beq lbl_802D1DE0
/* 802D1DD4 0029B394  88 1F 00 00 */	lbz r0, 0(r31)
/* 802D1DD8 0029B398  7C 00 07 75 */	extsb. r0, r0
/* 802D1DDC 0029B39C  40 82 FF DC */	bne lbl_802D1DB8
lbl_802D1DE0:
/* 802D1DE0 0029B3A0  7C 05 30 50 */	subf r0, r5, r6
/* 802D1DE4 0029B3A4  7C 83 02 14 */	add r4, r3, r0
lbl_802D1DE8:
/* 802D1DE8 0029B3A8  7C 04 E8 40 */	cmplw r4, r29
/* 802D1DEC 0029B3AC  40 82 00 0C */	bne lbl_802D1DF8
/* 802D1DF0 0029B3B0  7C 83 23 78 */	mr r3, r4
/* 802D1DF4 0029B3B4  48 00 00 54 */	b lbl_802D1E48
lbl_802D1DF8:
/* 802D1DF8 0029B3B8  38 C4 00 01 */	addi r6, r4, 1
/* 802D1DFC 0029B3BC  38 00 00 2F */	li r0, 0x2f
/* 802D1E00 0029B3C0  7C A6 E8 50 */	subf r5, r6, r29
/* 802D1E04 0029B3C4  7C 1C 21 AE */	stbx r0, r28, r4
/* 802D1E08 0029B3C8  7C 7C 32 14 */	add r3, r28, r6
/* 802D1E0C 0029B3CC  7C A4 2B 78 */	mr r4, r5
/* 802D1E10 0029B3D0  48 00 00 1C */	b lbl_802D1E2C
/* 802D1E14 0029B3D4  60 00 00 00 */	nop 
lbl_802D1E18:
/* 802D1E18 0029B3D8  88 1E 00 00 */	lbz r0, 0(r30)
/* 802D1E1C 0029B3DC  3B DE 00 01 */	addi r30, r30, 1
/* 802D1E20 0029B3E0  98 03 00 00 */	stb r0, 0(r3)
/* 802D1E24 0029B3E4  38 63 00 01 */	addi r3, r3, 1
/* 802D1E28 0029B3E8  38 84 FF FF */	addi r4, r4, -1
lbl_802D1E2C:
/* 802D1E2C 0029B3EC  2C 04 00 00 */	cmpwi r4, 0
/* 802D1E30 0029B3F0  41 82 00 10 */	beq lbl_802D1E40
/* 802D1E34 0029B3F4  88 1E 00 00 */	lbz r0, 0(r30)
/* 802D1E38 0029B3F8  7C 00 07 75 */	extsb. r0, r0
/* 802D1E3C 0029B3FC  40 82 FF DC */	bne lbl_802D1E18
lbl_802D1E40:
/* 802D1E40 0029B400  7C 04 28 50 */	subf r0, r4, r5
/* 802D1E44 0029B404  7C 66 02 14 */	add r3, r6, r0
lbl_802D1E48:
/* 802D1E48 0029B408  39 61 00 20 */	addi r11, r1, 0x20
/* 802D1E4C 0029B40C  4B FE 83 55 */	bl _restgpr_27
/* 802D1E50 0029B410  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D1E54 0029B414  7C 08 03 A6 */	mtlr r0
/* 802D1E58 0029B418  38 21 00 20 */	addi r1, r1, 0x20
/* 802D1E5C 0029B41C  4E 80 00 20 */	blr 

.balign 16, 0
.global ARCGetStartAddrInMem
ARCGetStartAddrInMem:
/* 802D1E60 0029B420  80 83 00 00 */	lwz r4, 0(r3)
/* 802D1E64 0029B424  80 03 00 04 */	lwz r0, 4(r3)
/* 802D1E68 0029B428  80 64 00 00 */	lwz r3, 0(r4)
/* 802D1E6C 0029B42C  7C 63 02 14 */	add r3, r3, r0
/* 802D1E70 0029B430  4E 80 00 20 */	blr 

.balign 16, 0
.global ARCGetLength
ARCGetLength:
/* 802D1E80 0029B440  80 63 00 08 */	lwz r3, 8(r3)
/* 802D1E84 0029B444  4E 80 00 20 */	blr 

.balign 16, 0
.global ARCClose
ARCClose:
/* 802D1E90 0029B450  38 60 00 01 */	li r3, 1
/* 802D1E94 0029B454  4E 80 00 20 */	blr 

.balign 16, 0
.global ARCChangeDir
ARCChangeDir:
/* 802D1EA0 0029B460  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D1EA4 0029B464  7C 08 02 A6 */	mflr r0
/* 802D1EA8 0029B468  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D1EAC 0029B46C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D1EB0 0029B470  7C 7F 1B 78 */	mr r31, r3
/* 802D1EB4 0029B474  4B FF FB 5D */	bl ARCConvertPathToEntrynum
/* 802D1EB8 0029B478  2C 03 00 00 */	cmpwi r3, 0
/* 802D1EBC 0029B47C  80 9F 00 04 */	lwz r4, 4(r31)
/* 802D1EC0 0029B480  41 80 00 14 */	blt lbl_802D1ED4
/* 802D1EC4 0029B484  1C 03 00 0C */	mulli r0, r3, 0xc
/* 802D1EC8 0029B488  7C 04 00 2E */	lwzx r0, r4, r0
/* 802D1ECC 0029B48C  54 00 00 0F */	rlwinm. r0, r0, 0, 0, 7
/* 802D1ED0 0029B490  40 82 00 0C */	bne lbl_802D1EDC
lbl_802D1ED4:
/* 802D1ED4 0029B494  38 60 00 00 */	li r3, 0
/* 802D1ED8 0029B498  48 00 00 0C */	b lbl_802D1EE4
lbl_802D1EDC:
/* 802D1EDC 0029B49C  90 7F 00 18 */	stw r3, 0x18(r31)
/* 802D1EE0 0029B4A0  38 60 00 01 */	li r3, 1
lbl_802D1EE4:
/* 802D1EE4 0029B4A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D1EE8 0029B4A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D1EEC 0029B4AC  7C 08 03 A6 */	mtlr r0
/* 802D1EF0 0029B4B0  38 21 00 10 */	addi r1, r1, 0x10
/* 802D1EF4 0029B4B4  4E 80 00 20 */	blr 

.balign 16, 0
.global ARCOpenDir
ARCOpenDir:
/* 802D1F00 0029B4C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D1F04 0029B4C4  7C 08 02 A6 */	mflr r0
/* 802D1F08 0029B4C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D1F0C 0029B4CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D1F10 0029B4D0  7C BF 2B 78 */	mr r31, r5
/* 802D1F14 0029B4D4  93 C1 00 08 */	stw r30, 8(r1)
/* 802D1F18 0029B4D8  7C 7E 1B 78 */	mr r30, r3
/* 802D1F1C 0029B4DC  4B FF FA F5 */	bl ARCConvertPathToEntrynum
/* 802D1F20 0029B4E0  2C 03 00 00 */	cmpwi r3, 0
/* 802D1F24 0029B4E4  80 BE 00 04 */	lwz r5, 4(r30)
/* 802D1F28 0029B4E8  41 80 00 14 */	blt lbl_802D1F3C
/* 802D1F2C 0029B4EC  1C 83 00 0C */	mulli r4, r3, 0xc
/* 802D1F30 0029B4F0  7C 05 20 2E */	lwzx r0, r5, r4
/* 802D1F34 0029B4F4  54 00 00 0F */	rlwinm. r0, r0, 0, 0, 7
/* 802D1F38 0029B4F8  40 82 00 0C */	bne lbl_802D1F44
lbl_802D1F3C:
/* 802D1F3C 0029B4FC  38 60 00 00 */	li r3, 0
/* 802D1F40 0029B500  48 00 00 24 */	b lbl_802D1F64
lbl_802D1F44:
/* 802D1F44 0029B504  38 03 00 01 */	addi r0, r3, 1
/* 802D1F48 0029B508  90 7F 00 04 */	stw r3, 4(r31)
/* 802D1F4C 0029B50C  7C 85 22 14 */	add r4, r5, r4
/* 802D1F50 0029B510  38 60 00 01 */	li r3, 1
/* 802D1F54 0029B514  93 DF 00 00 */	stw r30, 0(r31)
/* 802D1F58 0029B518  90 1F 00 08 */	stw r0, 8(r31)
/* 802D1F5C 0029B51C  80 04 00 08 */	lwz r0, 8(r4)
/* 802D1F60 0029B520  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_802D1F64:
/* 802D1F64 0029B524  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D1F68 0029B528  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D1F6C 0029B52C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D1F70 0029B530  7C 08 03 A6 */	mtlr r0
/* 802D1F74 0029B534  38 21 00 10 */	addi r1, r1, 0x10
/* 802D1F78 0029B538  4E 80 00 20 */	blr 

.balign 16, 0
.global ARCReadDir
ARCReadDir:
/* 802D1F80 0029B540  80 E3 00 08 */	lwz r7, 8(r3)
/* 802D1F84 0029B544  81 23 00 00 */	lwz r9, 0(r3)
/* 802D1F88 0029B548  1C 07 00 0C */	mulli r0, r7, 0xc
/* 802D1F8C 0029B54C  81 09 00 04 */	lwz r8, 4(r9)
/* 802D1F90 0029B550  7C C8 02 14 */	add r6, r8, r0
/* 802D1F94 0029B554  60 00 00 00 */	nop 
lbl_802D1F98:
/* 802D1F98 0029B558  80 03 00 04 */	lwz r0, 4(r3)
/* 802D1F9C 0029B55C  7C 07 00 40 */	cmplw r7, r0
/* 802D1FA0 0029B560  40 81 00 10 */	ble lbl_802D1FB0
/* 802D1FA4 0029B564  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802D1FA8 0029B568  7C 00 38 40 */	cmplw r0, r7
/* 802D1FAC 0029B56C  41 81 00 0C */	bgt lbl_802D1FB8
lbl_802D1FB0:
/* 802D1FB0 0029B570  38 60 00 00 */	li r3, 0
/* 802D1FB4 0029B574  4E 80 00 20 */	blr
lbl_802D1FB8:
/* 802D1FB8 0029B578  91 24 00 00 */	stw r9, 0(r4)
/* 802D1FBC 0029B57C  90 E4 00 04 */	stw r7, 4(r4)
/* 802D1FC0 0029B580  80 06 00 00 */	lwz r0, 0(r6)
/* 802D1FC4 0029B584  54 05 00 0E */	rlwinm r5, r0, 0, 0, 7
/* 802D1FC8 0029B588  7C 05 00 D0 */	neg r0, r5
/* 802D1FCC 0029B58C  7C 00 2B 78 */	or r0, r0, r5
/* 802D1FD0 0029B590  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802D1FD4 0029B594  90 04 00 08 */	stw r0, 8(r4)
/* 802D1FD8 0029B598  80 06 00 00 */	lwz r0, 0(r6)
/* 802D1FDC 0029B59C  80 A9 00 10 */	lwz r5, 0x10(r9)
/* 802D1FE0 0029B5A0  54 00 02 3E */	clrlwi r0, r0, 8
/* 802D1FE4 0029B5A4  7C A5 02 14 */	add r5, r5, r0
/* 802D1FE8 0029B5A8  90 A4 00 0C */	stw r5, 0xc(r4)
/* 802D1FEC 0029B5AC  88 05 00 00 */	lbz r0, 0(r5)
/* 802D1FF0 0029B5B0  2C 00 00 2E */	cmpwi r0, 0x2e
/* 802D1FF4 0029B5B4  40 82 00 1C */	bne lbl_802D2010
/* 802D1FF8 0029B5B8  88 05 00 01 */	lbz r0, 1(r5)
/* 802D1FFC 0029B5BC  7C 00 07 75 */	extsb. r0, r0
/* 802D2000 0029B5C0  40 82 00 10 */	bne lbl_802D2010
/* 802D2004 0029B5C4  38 C6 00 0C */	addi r6, r6, 0xc
/* 802D2008 0029B5C8  38 E7 00 01 */	addi r7, r7, 1
/* 802D200C 0029B5CC  4B FF FF 8C */	b lbl_802D1F98
lbl_802D2010:
/* 802D2010 0029B5D0  1C 87 00 0C */	mulli r4, r7, 0xc
/* 802D2014 0029B5D4  7C 08 20 2E */	lwzx r0, r8, r4
/* 802D2018 0029B5D8  54 00 00 0F */	rlwinm. r0, r0, 0, 0, 7
/* 802D201C 0029B5DC  41 82 00 10 */	beq lbl_802D202C
/* 802D2020 0029B5E0  7C 88 22 14 */	add r4, r8, r4
/* 802D2024 0029B5E4  80 04 00 08 */	lwz r0, 8(r4)
/* 802D2028 0029B5E8  48 00 00 08 */	b lbl_802D2030
lbl_802D202C:
/* 802D202C 0029B5EC  38 07 00 01 */	addi r0, r7, 1
lbl_802D2030:
/* 802D2030 0029B5F0  90 03 00 08 */	stw r0, 8(r3)
/* 802D2034 0029B5F4  38 60 00 01 */	li r3, 1
/* 802D2038 0029B5F8  4E 80 00 20 */	blr 

.balign 16, 0
.global ARCCloseDir
ARCCloseDir:
/* 802D2040 0029B600  38 60 00 01 */	li r3, 1
/* 802D2044 0029B604  4E 80 00 20 */	blr 
.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global OSGetPhysicalMem2Size
OSGetPhysicalMem2Size:
/* 80359480 00322A40  3C 60 80 00 */	lis r3, 0x80003118@ha
/* 80359484 00322A44  80 63 31 18 */	lwz r3, 0x80003118@l(r3)
/* 80359488 00322A48  4E 80 00 20 */	blr 

.balign 16, 0
.global OSGetConsoleSimulatedMem1Size
OSGetConsoleSimulatedMem1Size:
/* 80359490 00322A50  3C 60 80 00 */	lis r3, 0x80003104@ha
/* 80359494 00322A54  80 63 31 04 */	lwz r3, 0x80003104@l(r3)
/* 80359498 00322A58  4E 80 00 20 */	blr 

.balign 16, 0
.global OSGetConsoleSimulatedMem2Size
OSGetConsoleSimulatedMem2Size:
/* 803594A0 00322A60  3C 60 80 00 */	lis r3, 0x8000311C@ha
/* 803594A4 00322A64  80 63 31 1C */	lwz r3, 0x8000311C@l(r3)
/* 803594A8 00322A68  4E 80 00 20 */	blr 

#unreferenced?
.balign 16, 0
.global OnShutdown
OnShutdown:
/* 803594B0 00322A70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803594B4 00322A74  7C 08 02 A6 */	mflr r0
/* 803594B8 00322A78  2C 03 00 00 */	cmpwi r3, 0
/* 803594BC 00322A7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803594C0 00322A80  41 82 00 18 */	beq .L_803594D8
/* 803594C4 00322A84  3C 60 CC 00 */	lis r3, 0xCC004010@ha
/* 803594C8 00322A88  38 00 00 FF */	li r0, 0xff
/* 803594CC 00322A8C  B0 03 40 10 */	sth r0, 0xCC004010@l(r3)
/* 803594D0 00322A90  3C 60 F0 00 */	lis r3, 0xf000
/* 803594D4 00322A94  4B FF F8 AD */	bl __OSMaskInterrupts
.L_803594D8:
/* 803594D8 00322A98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803594DC 00322A9C  38 60 00 01 */	li r3, 1
/* 803594E0 00322AA0  7C 08 03 A6 */	mtlr r0
/* 803594E4 00322AA4  38 21 00 10 */	addi r1, r1, 0x10
/* 803594E8 00322AA8  4E 80 00 20 */	blr 

.balign 16, 0
.global MEMIntrruptHandler
MEMIntrruptHandler:
/* 803594F0 00322AB0  3D 00 CC 00 */	lis r8, 0xCC00
/* 803594F4 00322AB4  3C 60 80 5D */	lis r3, lbl_805D43B0@ha
/* 803594F8 00322AB8  A0 A8 40 1E */	lhz r5, 0x401E(r8)
/* 803594FC 00322ABC  38 00 00 00 */	li r0, 0
/* 80359500 00322AC0  A0 E8 40 24 */	lhz r7, 0x4024(r8)
/* 80359504 00322AC4  38 63 43 B0 */	addi r3, r3, lbl_805D43B0@l
/* 80359508 00322AC8  A0 C8 40 22 */	lhz r6, 0x4022(r8)
/* 8035950C 00322ACC  50 E6 81 9E */	rlwimi r6, r7, 0x10, 6, 0xf
/* 80359510 00322AD0  B0 08 40 20 */	sth r0, 0x4020(r8)
/* 80359514 00322AD4  81 83 00 3C */	lwz r12, 0x3c(r3)
/* 80359518 00322AD8  2C 0C 00 00 */	cmpwi r12, 0
/* 8035951C 00322ADC  41 82 00 14 */	beq .L_80359530
/* 80359520 00322AE0  38 60 00 0F */	li r3, 0xf
/* 80359524 00322AE4  4C C6 31 82 */	crclr 6
/* 80359528 00322AE8  7D 89 03 A6 */	mtctr r12
/* 8035952C 00322AEC  4E 80 04 20 */	bctr 
.L_80359530:
/* 80359530 00322AF0  38 60 00 0F */	li r3, 0xf
/* 80359534 00322AF4  4B FF BC DC */	b __OSUnhandledException

.balign 16, 0
.global ConfigMEM1_24MB
ConfigMEM1_24MB:
/* 80359540 00322B00  38 E0 00 00 */	li r7, 0
/* 80359544 00322B04  3C 80 00 00 */	lis r4, 0x00000002@ha
/* 80359548 00322B08  38 84 00 02 */	addi r4, r4, 0x00000002@l
/* 8035954C 00322B0C  3C 60 80 00 */	lis r3, 0x800001FF@ha
/* 80359550 00322B10  38 63 01 FF */	addi r3, r3, 0x800001FF@l
/* 80359554 00322B14  3C C0 01 00 */	lis r6, 0x01000002@ha
/* 80359558 00322B18  38 C6 00 02 */	addi r6, r6, 0x01000002@l
/* 8035955C 00322B1C  3C A0 81 00 */	lis r5, 0x810000FF@ha
/* 80359560 00322B20  38 A5 00 FF */	addi r5, r5, 0x810000FF@l
/* 80359564 00322B24  4C 00 01 2C */	isync 
/* 80359568 00322B28  7C F8 83 A6 */	mtdbatu 0, r7
/* 8035956C 00322B2C  7C 99 83 A6 */	mtdbatl 0, r4
/* 80359570 00322B30  7C 78 83 A6 */	mtdbatu 0, r3
/* 80359574 00322B34  4C 00 01 2C */	isync 
/* 80359578 00322B38  7C F0 83 A6 */	mtibatu 0, r7
/* 8035957C 00322B3C  7C 91 83 A6 */	mtibatl 0, r4
/* 80359580 00322B40  7C 70 83 A6 */	mtibatu 0, r3
/* 80359584 00322B44  4C 00 01 2C */	isync 
/* 80359588 00322B48  7C FC 83 A6 */	mtdbatu 2, r7
/* 8035958C 00322B4C  7C DD 83 A6 */	mtdbatl 2, r6
/* 80359590 00322B50  7C BC 83 A6 */	mtdbatu 2, r5
/* 80359594 00322B54  4C 00 01 2C */	isync 
/* 80359598 00322B58  7C F4 83 A6 */	mtibatu 2, r7
/* 8035959C 00322B5C  7C D5 83 A6 */	mtibatl 2, r6
/* 803595A0 00322B60  7C B4 83 A6 */	mtibatu 2, r5
/* 803595A4 00322B64  4C 00 01 2C */	isync 
/* 803595A8 00322B68  7C 60 00 A6 */	mfmsr r3
/* 803595AC 00322B6C  60 63 00 30 */	ori r3, r3, 0x30
/* 803595B0 00322B70  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 803595B4 00322B74  7C 68 02 A6 */	mflr r3
/* 803595B8 00322B78  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 803595BC 00322B7C  4C 00 00 64 */	rfi

.balign 16, 0
.global ConfigMEM2_52MB
ConfigMEM2_52MB:
/* 803595C0 00322B80  38 E0 00 00 */	li r7, 0
/* 803595C4 00322B84  3C 80 10 00 */	lis r4, 0x10000002@ha
/* 803595C8 00322B88  38 84 00 02 */	addi r4, r4, 0x10000002@l
/* 803595CC 00322B8C  3C 60 90 00 */	lis r3, 0x900003FF@ha
/* 803595D0 00322B90  38 63 03 FF */	addi r3, r3, 0x900003FF@l
/* 803595D4 00322B94  3C C0 10 00 */	lis r6, 0x1000002A@ha
/* 803595D8 00322B98  38 C6 00 2A */	addi r6, r6, 0x1000002A@l
/* 803595DC 00322B9C  3C A0 D0 00 */	lis r5, 0xD00007FF@ha
/* 803595E0 00322BA0  38 A5 07 FF */	addi r5, r5, 0xD00007FF@l
/* 803595E4 00322BA4  4C 00 01 2C */	isync 
/* 803595E8 00322BA8  7C F8 8B A6 */	mtspr 0x238, r7
/* 803595EC 00322BAC  7C 99 8B A6 */	mtspr 0x239, r4
/* 803595F0 00322BB0  7C 78 8B A6 */	mtspr 0x238, r3
/* 803595F4 00322BB4  4C 00 01 2C */	isync 
/* 803595F8 00322BB8  7C F0 8B A6 */	mtspr 0x230, r7
/* 803595FC 00322BBC  7C F1 8B A6 */	mtspr 0x231, r7
/* 80359600 00322BC0  4C 00 01 2C */	isync 
/* 80359604 00322BC4  7C FA 8B A6 */	mtspr 0x23a, r7
/* 80359608 00322BC8  7C DB 8B A6 */	mtspr 0x23b, r6
/* 8035960C 00322BCC  7C BA 8B A6 */	mtspr 0x23a, r5
/* 80359610 00322BD0  4C 00 01 2C */	isync 
/* 80359614 00322BD4  7C F2 8B A6 */	mtspr 0x232, r7
/* 80359618 00322BD8  7C F3 8B A6 */	mtspr 0x233, r7
/* 8035961C 00322BDC  4C 00 01 2C */	isync 
/* 80359620 00322BE0  3C 80 12 00 */	lis r4, 0x12000002@ha
/* 80359624 00322BE4  38 84 00 02 */	addi r4, r4, 0x12000002@l
/* 80359628 00322BE8  3C 60 92 00 */	lis r3, 0x920001FF@ha
/* 8035962C 00322BEC  38 63 01 FF */	addi r3, r3, 0x920001FF@l
/* 80359630 00322BF0  3C C0 13 00 */	lis r6, 0x13000002@ha
/* 80359634 00322BF4  38 C6 00 02 */	addi r6, r6, 0x13000002@l
/* 80359638 00322BF8  3C A0 93 00 */	lis r5, 0x9300007F@ha
/* 8035963C 00322BFC  38 A5 00 7F */	addi r5, r5, 0x9300007F@l
/* 80359640 00322C00  4C 00 01 2C */	isync 
/* 80359644 00322C04  7C FC 8B A6 */	mtspr 0x23c, r7
/* 80359648 00322C08  7C 9D 8B A6 */	mtspr 0x23d, r4
/* 8035964C 00322C0C  7C 7C 8B A6 */	mtspr 0x23c, r3
/* 80359650 00322C10  4C 00 01 2C */	isync 
/* 80359654 00322C14  7C F4 8B A6 */	mtspr 0x234, r7
/* 80359658 00322C18  7C F5 8B A6 */	mtspr 0x235, r7
/* 8035965C 00322C1C  4C 00 01 2C */	isync 
/* 80359660 00322C20  7C FE 8B A6 */	mtspr 0x23e, r7
/* 80359664 00322C24  7C DF 8B A6 */	mtspr 0x23f, r6
/* 80359668 00322C28  7C BE 8B A6 */	mtspr 0x23e, r5
/* 8035966C 00322C2C  4C 00 01 2C */	isync 
/* 80359670 00322C30  7C F6 8B A6 */	mtspr 0x236, r7
/* 80359674 00322C34  7C F7 8B A6 */	mtspr 0x237, r7
/* 80359678 00322C38  4C 00 01 2C */	isync 
/* 8035967C 00322C3C  7C 60 00 A6 */	mfmsr r3
/* 80359680 00322C40  60 63 00 30 */	ori r3, r3, 0x30
/* 80359684 00322C44  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 80359688 00322C48  7C 68 02 A6 */	mflr r3
/* 8035968C 00322C4C  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 80359690 00322C50  4C 00 00 64 */	rfi 

.balign 16, 0
.global ConfigMEM2_56MB
ConfigMEM2_56MB:
/* 803596A0 00322C60  38 E0 00 00 */	li r7, 0
/* 803596A4 00322C64  3C 80 10 00 */	lis r4, 0x10000002@ha
/* 803596A8 00322C68  38 84 00 02 */	addi r4, r4, 0x10000002@l
/* 803596AC 00322C6C  3C 60 90 00 */	lis r3, 0x900003FF@ha
/* 803596B0 00322C70  38 63 03 FF */	addi r3, r3, 0x900003FF@l
/* 803596B4 00322C74  3C C0 10 00 */	lis r6, 0x1000002A@ha
/* 803596B8 00322C78  38 C6 00 2A */	addi r6, r6, 0x1000002A@l
/* 803596BC 00322C7C  3C A0 D0 00 */	lis r5, 0xD00007FF@ha
/* 803596C0 00322C80  38 A5 07 FF */	addi r5, r5, 0xD00007FF@l
/* 803596C4 00322C84  4C 00 01 2C */	isync 
/* 803596C8 00322C88  7C F8 8B A6 */	mtspr 0x238, r7
/* 803596CC 00322C8C  7C 99 8B A6 */	mtspr 0x239, r4
/* 803596D0 00322C90  7C 78 8B A6 */	mtspr 0x238, r3
/* 803596D4 00322C94  4C 00 01 2C */	isync 
/* 803596D8 00322C98  7C F0 8B A6 */	mtspr 0x230, r7
/* 803596DC 00322C9C  7C F1 8B A6 */	mtspr 0x231, r7
/* 803596E0 00322CA0  4C 00 01 2C */	isync 
/* 803596E4 00322CA4  7C FA 8B A6 */	mtspr 0x23a, r7
/* 803596E8 00322CA8  7C DB 8B A6 */	mtspr 0x23b, r6
/* 803596EC 00322CAC  7C BA 8B A6 */	mtspr 0x23a, r5
/* 803596F0 00322CB0  4C 00 01 2C */	isync 
/* 803596F4 00322CB4  7C F2 8B A6 */	mtspr 0x232, r7
/* 803596F8 00322CB8  7C F3 8B A6 */	mtspr 0x233, r7
/* 803596FC 00322CBC  4C 00 01 2C */	isync 
/* 80359700 00322CC0  3C 80 12 00 */	lis r4, 0x12000002@ha
/* 80359704 00322CC4  38 84 00 02 */	addi r4, r4, 0x12000002@l
/* 80359708 00322CC8  3C 60 92 00 */	lis r3, 0x920001FF@ha
/* 8035970C 00322CCC  38 63 01 FF */	addi r3, r3, 0x920001FF@l
/* 80359710 00322CD0  3C C0 13 00 */	lis r6, 0x13000002@ha
/* 80359714 00322CD4  38 C6 00 02 */	addi r6, r6, 0x13000002@l
/* 80359718 00322CD8  3C A0 93 00 */	lis r5, 0x930000FF@ha
/* 8035971C 00322CDC  38 A5 00 FF */	addi r5, r5, 0x930000FF@l
/* 80359720 00322CE0  4C 00 01 2C */	isync 
/* 80359724 00322CE4  7C FC 8B A6 */	mtspr 0x23c, r7
/* 80359728 00322CE8  7C 9D 8B A6 */	mtspr 0x23d, r4
/* 8035972C 00322CEC  7C 7C 8B A6 */	mtspr 0x23c, r3
/* 80359730 00322CF0  4C 00 01 2C */	isync 
/* 80359734 00322CF4  7C F4 8B A6 */	mtspr 0x234, r7
/* 80359738 00322CF8  7C F5 8B A6 */	mtspr 0x235, r7
/* 8035973C 00322CFC  4C 00 01 2C */	isync 
/* 80359740 00322D00  7C FE 8B A6 */	mtspr 0x23e, r7
/* 80359744 00322D04  7C DF 8B A6 */	mtspr 0x23f, r6
/* 80359748 00322D08  7C BE 8B A6 */	mtspr 0x23e, r5
/* 8035974C 00322D0C  4C 00 01 2C */	isync 
/* 80359750 00322D10  7C F6 8B A6 */	mtspr 0x236, r7
/* 80359754 00322D14  7C F7 8B A6 */	mtspr 0x237, r7
/* 80359758 00322D18  4C 00 01 2C */	isync 
/* 8035975C 00322D1C  7C 60 00 A6 */	mfmsr r3
/* 80359760 00322D20  60 63 00 30 */	ori r3, r3, 0x30
/* 80359764 00322D24  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 80359768 00322D28  7C 68 02 A6 */	mflr r3
/* 8035976C 00322D2C  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 80359770 00322D30  4C 00 00 64 */	rfi 

.balign 16, 0
.global ConfigMEM2_64MB
ConfigMEM2_64MB:
/* 80359780 00322D40  38 E0 00 00 */	li r7, 0
/* 80359784 00322D44  3C 80 10 00 */	lis r4, 0x10000002@ha
/* 80359788 00322D48  38 84 00 02 */	addi r4, r4, 0x10000002@l
/* 8035978C 00322D4C  3C 60 90 00 */	lis r3, 0x900007FF@ha
/* 80359790 00322D50  38 63 07 FF */	addi r3, r3, 0x900007FF@l
/* 80359794 00322D54  3C C0 10 00 */	lis r6, 0x1000002A@ha
/* 80359798 00322D58  38 C6 00 2A */	addi r6, r6, 0x1000002A@l
/* 8035979C 00322D5C  3C A0 D0 00 */	lis r5, 0xD00007FF@ha
/* 803597A0 00322D60  38 A5 07 FF */	addi r5, r5, 0xD00007FF@l
/* 803597A4 00322D64  4C 00 01 2C */	isync 
/* 803597A8 00322D68  7C F8 8B A6 */	mtspr 0x238, r7
/* 803597AC 00322D6C  7C 99 8B A6 */	mtspr 0x239, r4
/* 803597B0 00322D70  7C 78 8B A6 */	mtspr 0x238, r3
/* 803597B4 00322D74  4C 00 01 2C */	isync 
/* 803597B8 00322D78  7C F0 8B A6 */	mtspr 0x230, r7
/* 803597BC 00322D7C  7C F1 8B A6 */	mtspr 0x231, r7
/* 803597C0 00322D80  4C 00 01 2C */	isync 
/* 803597C4 00322D84  7C FA 8B A6 */	mtspr 0x23a, r7
/* 803597C8 00322D88  7C DB 8B A6 */	mtspr 0x23b, r6
/* 803597CC 00322D8C  7C BA 8B A6 */	mtspr 0x23a, r5
/* 803597D0 00322D90  4C 00 01 2C */	isync 
/* 803597D4 00322D94  7C F2 8B A6 */	mtspr 0x232, r7
/* 803597D8 00322D98  7C F3 8B A6 */	mtspr 0x233, r7
/* 803597DC 00322D9C  4C 00 01 2C */	isync 
/* 803597E0 00322DA0  7C F4 8B A6 */	mtspr 0x234, r7
/* 803597E4 00322DA4  7C F5 8B A6 */	mtspr 0x235, r7
/* 803597E8 00322DA8  4C 00 01 2C */	isync 
/* 803597EC 00322DAC  7C F6 8B A6 */	mtspr 0x236, r7
/* 803597F0 00322DB0  7C F7 8B A6 */	mtspr 0x237, r7
/* 803597F4 00322DB4  4C 00 01 2C */	isync 
/* 803597F8 00322DB8  7C FC 8B A6 */	mtspr 0x23c, r7
/* 803597FC 00322DBC  7C FD 8B A6 */	mtspr 0x23d, r7
/* 80359800 00322DC0  4C 00 01 2C */	isync 
/* 80359804 00322DC4  7C FE 8B A6 */	mtspr 0x23e, r7
/* 80359808 00322DC8  7C FF 8B A6 */	mtspr 0x23f, r7
/* 8035980C 00322DCC  4C 00 01 2C */	isync 
/* 80359810 00322DD0  7C 60 00 A6 */	mfmsr r3
/* 80359814 00322DD4  60 63 00 30 */	ori r3, r3, 0x30
/* 80359818 00322DD8  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 8035981C 00322DDC  7C 68 02 A6 */	mflr r3
/* 80359820 00322DE0  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 80359824 00322DE4  4C 00 00 64 */	rfi 

.balign 16, 0
.global ConfigMEM2_112MB
ConfigMEM2_112MB:
/* 80359830 00322DF0  38 E0 00 00 */	li r7, 0
/* 80359834 00322DF4  3C 80 10 00 */	lis r4, 0x10000002@ha
/* 80359838 00322DF8  38 84 00 02 */	addi r4, r4, 0x10000002@l
/* 8035983C 00322DFC  3C 60 90 00 */	lis r3, 0x900007FF@ha
/* 80359840 00322E00  38 63 07 FF */	addi r3, r3, 0x900007FF@l
/* 80359844 00322E04  3C C0 10 00 */	lis r6, 0x1000002A@ha
/* 80359848 00322E08  38 C6 00 2A */	addi r6, r6, 0x1000002A@l
/* 8035984C 00322E0C  3C A0 D0 00 */	lis r5, 0xD0000FFF@ha
/* 80359850 00322E10  38 A5 0F FF */	addi r5, r5, 0xD0000FFF@l
/* 80359854 00322E14  4C 00 01 2C */	isync 
/* 80359858 00322E18  7C F8 8B A6 */	mtspr 0x238, r7
/* 8035985C 00322E1C  7C 99 8B A6 */	mtspr 0x239, r4
/* 80359860 00322E20  7C 78 8B A6 */	mtspr 0x238, r3
/* 80359864 00322E24  4C 00 01 2C */	isync 
/* 80359868 00322E28  7C F0 8B A6 */	mtspr 0x230, r7
/* 8035986C 00322E2C  7C F1 8B A6 */	mtspr 0x231, r7
/* 80359870 00322E30  4C 00 01 2C */	isync 
/* 80359874 00322E34  7C FA 8B A6 */	mtspr 0x23a, r7
/* 80359878 00322E38  7C DB 8B A6 */	mtspr 0x23b, r6
/* 8035987C 00322E3C  7C BA 8B A6 */	mtspr 0x23a, r5
/* 80359880 00322E40  4C 00 01 2C */	isync 
/* 80359884 00322E44  7C F2 8B A6 */	mtspr 0x232, r7
/* 80359888 00322E48  7C F3 8B A6 */	mtspr 0x233, r7
/* 8035988C 00322E4C  4C 00 01 2C */	isync 
/* 80359890 00322E50  3C 80 14 00 */	lis r4, 0x14000002@ha
/* 80359894 00322E54  38 84 00 02 */	addi r4, r4, 0x14000002@l
/* 80359898 00322E58  3C 60 94 00 */	lis r3, 0x940003FF@ha
/* 8035989C 00322E5C  38 63 03 FF */	addi r3, r3, 0x940003FF@l
/* 803598A0 00322E60  3C C0 16 00 */	lis r6, 0x16000002@ha
/* 803598A4 00322E64  38 C6 00 02 */	addi r6, r6, 0x16000002@l
/* 803598A8 00322E68  3C A0 96 00 */	lis r5, 0x960001FF@ha
/* 803598AC 00322E6C  38 A5 01 FF */	addi r5, r5, 0x960001FF@l
/* 803598B0 00322E70  4C 00 01 2C */	isync 
/* 803598B4 00322E74  7C FC 8B A6 */	mtspr 0x23c, r7
/* 803598B8 00322E78  7C 9D 8B A6 */	mtspr 0x23d, r4
/* 803598BC 00322E7C  7C 7C 8B A6 */	mtspr 0x23c, r3
/* 803598C0 00322E80  4C 00 01 2C */	isync 
/* 803598C4 00322E84  7C F4 8B A6 */	mtspr 0x234, r7
/* 803598C8 00322E88  7C F5 8B A6 */	mtspr 0x235, r7
/* 803598CC 00322E8C  4C 00 01 2C */	isync 
/* 803598D0 00322E90  7C FE 8B A6 */	mtspr 0x23e, r7
/* 803598D4 00322E94  7C DF 8B A6 */	mtspr 0x23f, r6
/* 803598D8 00322E98  7C BE 8B A6 */	mtspr 0x23e, r5
/* 803598DC 00322E9C  4C 00 01 2C */	isync 
/* 803598E0 00322EA0  7C F6 8B A6 */	mtspr 0x236, r7
/* 803598E4 00322EA4  7C F7 8B A6 */	mtspr 0x237, r7
/* 803598E8 00322EA8  4C 00 01 2C */	isync 
/* 803598EC 00322EAC  7C 60 00 A6 */	mfmsr r3
/* 803598F0 00322EB0  60 63 00 30 */	ori r3, r3, 0x30
/* 803598F4 00322EB4  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 803598F8 00322EB8  7C 68 02 A6 */	mflr r3
/* 803598FC 00322EBC  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 80359900 00322EC0  4C 00 00 64 */	rfi 

.balign 16, 0
.global ConfigMEM2_128MB
ConfigMEM2_128MB:
/* 80359910 00322ED0  38 E0 00 00 */	li r7, 0
/* 80359914 00322ED4  3C 80 10 00 */	lis r4, 0x10000002@ha
/* 80359918 00322ED8  38 84 00 02 */	addi r4, r4, 0x10000002@l
/* 8035991C 00322EDC  3C 60 90 00 */	lis r3, 0x90000FFF@ha
/* 80359920 00322EE0  38 63 0F FF */	addi r3, r3, 0x90000FFF@l
/* 80359924 00322EE4  3C C0 10 00 */	lis r6, 0x1000002A@ha
/* 80359928 00322EE8  38 C6 00 2A */	addi r6, r6, 0x1000002A@l
/* 8035992C 00322EEC  3C A0 D0 00 */	lis r5, 0xD0000FFF@ha
/* 80359930 00322EF0  38 A5 0F FF */	addi r5, r5, 0xD0000FFF@l
/* 80359934 00322EF4  4C 00 01 2C */	isync 
/* 80359938 00322EF8  7C F8 8B A6 */	mtspr 0x238, r7
/* 8035993C 00322EFC  7C 99 8B A6 */	mtspr 0x239, r4
/* 80359940 00322F00  7C 78 8B A6 */	mtspr 0x238, r3
/* 80359944 00322F04  4C 00 01 2C */	isync 
/* 80359948 00322F08  7C F0 8B A6 */	mtspr 0x230, r7
/* 8035994C 00322F0C  7C F1 8B A6 */	mtspr 0x231, r7
/* 80359950 00322F10  4C 00 01 2C */	isync 
/* 80359954 00322F14  7C FA 8B A6 */	mtspr 0x23a, r7
/* 80359958 00322F18  7C DB 8B A6 */	mtspr 0x23b, r6
/* 8035995C 00322F1C  7C BA 8B A6 */	mtspr 0x23a, r5
/* 80359960 00322F20  4C 00 01 2C */	isync 
/* 80359964 00322F24  7C F2 8B A6 */	mtspr 0x232, r7
/* 80359968 00322F28  7C F3 8B A6 */	mtspr 0x233, r7
/* 8035996C 00322F2C  4C 00 01 2C */	isync 
/* 80359970 00322F30  7C F4 8B A6 */	mtspr 0x234, r7
/* 80359974 00322F34  7C F5 8B A6 */	mtspr 0x235, r7
/* 80359978 00322F38  4C 00 01 2C */	isync 
/* 8035997C 00322F3C  7C F6 8B A6 */	mtspr 0x236, r7
/* 80359980 00322F40  7C F7 8B A6 */	mtspr 0x237, r7
/* 80359984 00322F44  4C 00 01 2C */	isync 
/* 80359988 00322F48  7C FC 8B A6 */	mtspr 0x23c, r7
/* 8035998C 00322F4C  7C FD 8B A6 */	mtspr 0x23d, r7
/* 80359990 00322F50  4C 00 01 2C */	isync 
/* 80359994 00322F54  7C FE 8B A6 */	mtspr 0x23e, r7
/* 80359998 00322F58  7C FF 8B A6 */	mtspr 0x23f, r7
/* 8035999C 00322F5C  4C 00 01 2C */	isync 
/* 803599A0 00322F60  7C 60 00 A6 */	mfmsr r3
/* 803599A4 00322F64  60 63 00 30 */	ori r3, r3, 0x30
/* 803599A8 00322F68  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 803599AC 00322F6C  7C 68 02 A6 */	mflr r3
/* 803599B0 00322F70  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 803599B4 00322F74  4C 00 00 64 */	rfi 

.balign 16, 0
.global RealMode
RealMode:
/* 803599C0 00322F80  54 63 00 BE */	clrlwi r3, r3, 2
/* 803599C4 00322F84  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 803599C8 00322F88  7C 60 00 A6 */	mfmsr r3
/* 803599CC 00322F8C  54 63 07 32 */	rlwinm r3, r3, 0, 0x1c, 0x19
/* 803599D0 00322F90  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 803599D4 00322F94  4C 00 00 64 */	rfi 

.balign 16, 0
.global BATConfig
BATConfig:
/* 803599E0 00322FA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803599E4 00322FA4  7C 08 02 A6 */	mflr r0
/* 803599E8 00322FA8  3C 80 80 00 */	lis r4, 0x80003104@ha
/* 803599EC 00322FAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803599F0 00322FB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803599F4 00322FB4  93 C1 00 08 */	stw r30, 8(r1)
/* 803599F8 00322FB8  7C 7E 1B 78 */	mr r30, r3
/* 803599FC 00322FBC  83 E4 31 04 */	lwz r31, 0x80003104@l(r4)
/* 80359A00 00322FC0  80 04 31 00 */	lwz r0, 0x3100(r4)
/* 80359A04 00322FC4  7C 1F 00 40 */	cmplw r31, r0
/* 80359A08 00322FC8  40 80 00 28 */	bge .L_80359A30
/* 80359A0C 00322FCC  3C 1F FE 80 */	addis r0, r31, 0xfe80
/* 80359A10 00322FD0  28 00 00 00 */	cmplwi r0, 0
/* 80359A14 00322FD4  40 82 00 1C */	bne .L_80359A30
/* 80359A18 00322FD8  3C 60 81 80 */	lis r3, 0x8180
/* 80359A1C 00322FDC  3C 80 01 80 */	lis r4, 0x180
/* 80359A20 00322FE0  4B FF A5 61 */	bl DCInvalidateRange
/* 80359A24 00322FE4  3C 60 CC 00 */	lis r3, 0xCC004028@ha
/* 80359A28 00322FE8  38 00 00 02 */	li r0, 2
/* 80359A2C 00322FEC  B0 03 40 28 */	sth r0, 0xCC004028@l(r3)
.L_80359A30:
/* 80359A30 00322FF0  3C 00 01 80 */	lis r0, 0x180
/* 80359A34 00322FF4  7C 1F 00 40 */	cmplw r31, r0
/* 80359A38 00322FF8  41 81 00 10 */	bgt .L_80359A48
/* 80359A3C 00322FFC  3C 60 80 36 */	lis r3, ConfigMEM1_24MB@ha
/* 80359A40 00323000  38 63 95 40 */	addi r3, r3, ConfigMEM1_24MB@l
/* 80359A44 00323004  4B FF FF 7D */	bl RealMode
.L_80359A48:
/* 80359A48 00323008  3C 60 80 00 */	lis r3, 0x8000311C@ha
/* 80359A4C 0032300C  3C 00 04 00 */	lis r0, 0x400
/* 80359A50 00323010  80 83 31 1C */	lwz r4, 0x8000311C@l(r3)
/* 80359A54 00323014  80 63 31 20 */	lwz r3, 0x3120(r3)
/* 80359A58 00323018  7C 04 00 40 */	cmplw r4, r0
/* 80359A5C 0032301C  41 81 00 4C */	bgt .L_80359AA8
/* 80359A60 00323020  3C 00 93 40 */	lis r0, 0x9340
/* 80359A64 00323024  7C 03 00 40 */	cmplw r3, r0
/* 80359A68 00323028  41 81 00 14 */	bgt .L_80359A7C
/* 80359A6C 0032302C  3C 60 80 36 */	lis r3, ConfigMEM2_52MB@ha
/* 80359A70 00323030  38 63 95 C0 */	addi r3, r3, ConfigMEM2_52MB@l
/* 80359A74 00323034  4B FF FF 4D */	bl RealMode
/* 80359A78 00323038  48 00 00 64 */	b .L_80359ADC
.L_80359A7C:
/* 80359A7C 0032303C  3C 00 93 80 */	lis r0, 0x9380
/* 80359A80 00323040  7C 03 00 40 */	cmplw r3, r0
/* 80359A84 00323044  41 81 00 14 */	bgt .L_80359A98
/* 80359A88 00323048  3C 60 80 36 */	lis r3, ConfigMEM2_56MB@ha
/* 80359A8C 0032304C  38 63 96 A0 */	addi r3, r3, ConfigMEM2_56MB@l
/* 80359A90 00323050  4B FF FF 31 */	bl RealMode
/* 80359A94 00323054  48 00 00 48 */	b .L_80359ADC
.L_80359A98:
/* 80359A98 00323058  3C 60 80 36 */	lis r3, ConfigMEM2_64MB@ha
/* 80359A9C 0032305C  38 63 97 80 */	addi r3, r3, ConfigMEM2_64MB@l
/* 80359AA0 00323060  4B FF FF 21 */	bl RealMode
/* 80359AA4 00323064  48 00 00 38 */	b .L_80359ADC
.L_80359AA8:
/* 80359AA8 00323068  3C 00 08 00 */	lis r0, 0x800
/* 80359AAC 0032306C  7C 04 00 40 */	cmplw r4, r0
/* 80359AB0 00323070  41 81 00 2C */	bgt .L_80359ADC
/* 80359AB4 00323074  3C 00 97 00 */	lis r0, 0x9700
/* 80359AB8 00323078  7C 03 00 40 */	cmplw r3, r0
/* 80359ABC 0032307C  41 81 00 14 */	bgt .L_80359AD0
/* 80359AC0 00323080  3C 60 80 36 */	lis r3, ConfigMEM2_112MB@ha
/* 80359AC4 00323084  38 63 98 30 */	addi r3, r3, ConfigMEM2_112MB@l
/* 80359AC8 00323088  4B FF FE F9 */	bl RealMode
/* 80359ACC 0032308C  48 00 00 10 */	b .L_80359ADC
.L_80359AD0:
/* 80359AD0 00323090  3C 60 80 36 */	lis r3, ConfigMEM2_128MB@ha
/* 80359AD4 00323094  38 63 99 10 */	addi r3, r3, ConfigMEM2_128MB@l
/* 80359AD8 00323098  4B FF FE E9 */	bl RealMode
.L_80359ADC:
/* 80359ADC 0032309C  3C 1E FF F5 */	addis r0, r30, 0xfff5
.L_80359AE0:
/* 80359AE0 003230A0  28 00 A2 CF */	cmplwi r0, 0xa2cf
/* 80359AE4 003230A4  40 82 FF FC */	bne .L_80359AE0
/* 80359AE8 003230A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80359AEC 003230AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80359AF0 003230B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80359AF4 003230B4  7C 08 03 A6 */	mtlr r0
/* 80359AF8 003230B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80359AFC 003230BC  4E 80 00 20 */	blr 

.balign 16, 0
.global __OSRestoreCodeExecOnMEM1
__OSRestoreCodeExecOnMEM1:
/* 80359B00 003230C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80359B04 003230C4  7C 08 02 A6 */	mflr r0
/* 80359B08 003230C8  3C 80 80 36 */	lis r4, ConfigMEM1_24MB@ha
/* 80359B0C 003230CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80359B10 003230D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80359B14 003230D4  7C 7F 1B 78 */	mr r31, r3
/* 80359B18 003230D8  38 64 95 40 */	addi r3, r4, ConfigMEM1_24MB@l
/* 80359B1C 003230DC  4B FF FE A5 */	bl RealMode
/* 80359B20 003230E0  3C 1F FF F5 */	addis r0, r31, 0xfff5
/* 80359B24 003230E4  60 00 00 00 */	nop 
.L_80359B28:
/* 80359B28 003230E8  28 00 A2 CF */	cmplwi r0, 0xa2cf
/* 80359B2C 003230EC  40 82 FF FC */	bne .L_80359B28
/* 80359B30 003230F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80359B34 003230F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80359B38 003230F8  7C 08 03 A6 */	mtlr r0
/* 80359B3C 003230FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80359B40 00323100  4E 80 00 20 */	blr 

.balign 16, 0
.global __OSInitMemoryProtection
__OSInitMemoryProtection:
/* 80359B50 00323110  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80359B54 00323114  7C 08 02 A6 */	mflr r0
/* 80359B58 00323118  90 01 00 14 */	stw r0, 0x14(r1)
/* 80359B5C 0032311C  80 0D B9 28 */	lwz r0, lbl_80667AA8@sda21(r13)
/* 80359B60 00323120  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80359B64 00323124  2C 00 00 00 */	cmpwi r0, 0
/* 80359B68 00323128  93 C1 00 08 */	stw r30, 8(r1)
/* 80359B6C 0032312C  40 82 00 98 */	bne .L_80359C04
/* 80359B70 00323130  4B FF EE 41 */	bl OSDisableInterrupts
/* 80359B74 00323134  3C 80 CC 00 */	lis r4, 0xCC004020@ha
/* 80359B78 00323138  38 00 00 00 */	li r0, 0
/* 80359B7C 0032313C  B0 04 40 20 */	sth r0, 0xCC004020@l(r4)
/* 80359B80 00323140  38 00 00 FF */	li r0, 0xff
/* 80359B84 00323144  7C 7E 1B 78 */	mr r30, r3
/* 80359B88 00323148  3C 60 F0 00 */	lis r3, 0xf000
/* 80359B8C 0032314C  B0 04 40 10 */	sth r0, 0x4010(r4)
/* 80359B90 00323150  4B FF F1 F1 */	bl __OSMaskInterrupts
/* 80359B94 00323154  3F E0 80 36 */	lis r31, MEMIntrruptHandler@ha
/* 80359B98 00323158  38 60 00 00 */	li r3, 0
/* 80359B9C 0032315C  38 9F 94 F0 */	addi r4, r31, MEMIntrruptHandler@l
/* 80359BA0 00323160  4B FF EE 81 */	bl __OSSetInterruptHandler
/* 80359BA4 00323164  38 9F 94 F0 */	addi r4, r31, MEMIntrruptHandler@l
/* 80359BA8 00323168  38 60 00 01 */	li r3, 1
/* 80359BAC 0032316C  4B FF EE 75 */	bl __OSSetInterruptHandler
/* 80359BB0 00323170  38 9F 94 F0 */	addi r4, r31, MEMIntrruptHandler@l
/* 80359BB4 00323174  38 60 00 02 */	li r3, 2
/* 80359BB8 00323178  4B FF EE 69 */	bl __OSSetInterruptHandler
/* 80359BBC 0032317C  38 9F 94 F0 */	addi r4, r31, MEMIntrruptHandler@l
/* 80359BC0 00323180  38 60 00 03 */	li r3, 3
/* 80359BC4 00323184  4B FF EE 5D */	bl __OSSetInterruptHandler
/* 80359BC8 00323188  38 9F 94 F0 */	addi r4, r31, MEMIntrruptHandler@l
/* 80359BCC 0032318C  38 60 00 04 */	li r3, 4
/* 80359BD0 00323190  4B FF EE 51 */	bl __OSSetInterruptHandler
/* 80359BD4 00323194  3C 60 80 55 */	lis r3, lbl_80552AE0@ha
/* 80359BD8 00323198  38 63 2A E0 */	addi r3, r3, lbl_80552AE0@l
/* 80359BDC 0032319C  48 00 03 35 */	bl OSRegisterShutdownFunction
/* 80359BE0 003231A0  3C 60 00 0C */	lis r3, 0x000BA2CF@ha
/* 80359BE4 003231A4  38 63 A2 CF */	addi r3, r3, 0x000BA2CF@l
/* 80359BE8 003231A8  4B FF FD F9 */	bl BATConfig
/* 80359BEC 003231AC  3C 60 08 00 */	lis r3, 0x800
/* 80359BF0 003231B0  4B FF F2 11 */	bl __OSUnmaskInterrupts
/* 80359BF4 003231B4  38 00 00 01 */	li r0, 1
/* 80359BF8 003231B8  90 0D B9 28 */	stw r0, lbl_80667AA8@sda21(r13)
/* 80359BFC 003231BC  7F C3 F3 78 */	mr r3, r30
/* 80359C00 003231C0  4B FF ED F1 */	bl OSRestoreInterrupts
.L_80359C04:
/* 80359C04 003231C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80359C08 003231C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80359C0C 003231CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80359C10 003231D0  7C 08 03 A6 */	mtlr r0
/* 80359C14 003231D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80359C18 003231D8  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_80552AE0
lbl_80552AE0:
	.4byte OnShutdown
	.4byte 0x0000007F
	.4byte 0
	.4byte 0

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.global lbl_80667AA8
lbl_80667AA8:
	.skip 0x8
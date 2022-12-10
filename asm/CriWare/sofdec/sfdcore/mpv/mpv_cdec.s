.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global MPVCDEC_Init
MPVCDEC_Init:
/* 803A3F8C 0036D54C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A3F90 0036D550  7C 08 02 A6 */	mflr r0
/* 803A3F94 0036D554  3C 80 80 60 */	lis r4, mpvcdec_ixa@ha
/* 803A3F98 0036D558  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A3F9C 0036D55C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A3FA0 0036D560  7C 7F 1B 78 */	mr r31, r3
/* 803A3FA4 0036D564  90 64 5F 28 */	stw r3, mpvcdec_ixa@l(r4)
/* 803A3FA8 0036D568  48 01 5E 45 */	bl DCT_IsrInit
/* 803A3FAC 0036D56C  38 7F 11 60 */	addi r3, r31, 0x1160
/* 803A3FB0 0036D570  48 01 5F A9 */	bl DCT_IsrInitScaleTbl
/* 803A3FB4 0036D574  3C 80 80 52 */	lis r4, lbl_8051F5F8@ha
/* 803A3FB8 0036D578  3C 60 80 60 */	lis r3, lbl_80605F2C@ha
/* 803A3FBC 0036D57C  38 84 F5 F8 */	addi r4, r4, lbl_8051F5F8@l
/* 803A3FC0 0036D580  38 63 5F 2C */	addi r3, r3, lbl_80605F2C@l
/* 803A3FC4 0036D584  90 83 00 08 */	stw r4, 8(r3)
/* 803A3FC8 0036D588  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A3FCC 0036D58C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A3FD0 0036D590  7C 08 03 A6 */	mtlr r0
/* 803A3FD4 0036D594  38 21 00 10 */	addi r1, r1, 0x10
/* 803A3FD8 0036D598  4E 80 00 20 */	blr 

.global MPVCDEC_StartFrame
MPVCDEC_StartFrame:
/* 803A3FDC 0036D59C  3C C0 80 3C */	lis r6, DCT_IsrTrans@ha
/* 803A3FE0 0036D5A0  3C A0 80 60 */	lis r5, lbl_80605F2C@ha
/* 803A3FE4 0036D5A4  38 C6 9F 68 */	addi r6, r6, DCT_IsrTrans@l
/* 803A3FE8 0036D5A8  3C 80 80 60 */	lis r4, mpvcdec_ixa@ha
/* 803A3FEC 0036D5AC  90 C3 0C 84 */	stw r6, 0xc84(r3)
/* 803A3FF0 0036D5B0  38 A5 5F 2C */	addi r5, r5, lbl_80605F2C@l
/* 803A3FF4 0036D5B4  80 84 5F 28 */	lwz r4, mpvcdec_ixa@l(r4)
/* 803A3FF8 0036D5B8  38 04 11 60 */	addi r0, r4, 0x1160
/* 803A3FFC 0036D5BC  90 03 09 B4 */	stw r0, 0x9b4(r3)
/* 803A4000 0036D5C0  80 85 00 08 */	lwz r4, 8(r5)
/* 803A4004 0036D5C4  80 04 00 00 */	lwz r0, 0(r4)
/* 803A4008 0036D5C8  90 03 0C 68 */	stw r0, 0xc68(r3)
/* 803A400C 0036D5CC  80 85 00 08 */	lwz r4, 8(r5)
/* 803A4010 0036D5D0  80 04 00 04 */	lwz r0, 4(r4)
/* 803A4014 0036D5D4  90 03 0C 6C */	stw r0, 0xc6c(r3)
/* 803A4018 0036D5D8  4E 80 00 20 */	blr 

.global mpvcdec_IntraBlocksInt1
mpvcdec_IntraBlocksInt1:
/* 803A401C 0036D5DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A4020 0036D5E0  7C 08 02 A6 */	mflr r0
/* 803A4024 0036D5E4  39 20 00 00 */	li r9, 0
/* 803A4028 0036D5E8  39 43 00 88 */	addi r10, r3, 0x88
/* 803A402C 0036D5EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A4030 0036D5F0  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 803A4034 0036D5F4  7C 7E 1B 78 */	mr r30, r3
/* 803A4038 0036D5F8  91 23 00 04 */	stw r9, 4(r3)
/* 803A403C 0036D5FC  91 23 00 00 */	stw r9, 0(r3)
/* 803A4040 0036D600  91 23 00 0C */	stw r9, 0xc(r3)
/* 803A4044 0036D604  91 23 00 08 */	stw r9, 8(r3)
/* 803A4048 0036D608  91 23 00 14 */	stw r9, 0x14(r3)
/* 803A404C 0036D60C  91 23 00 10 */	stw r9, 0x10(r3)
/* 803A4050 0036D610  91 23 00 1C */	stw r9, 0x1c(r3)
/* 803A4054 0036D614  91 23 00 18 */	stw r9, 0x18(r3)
/* 803A4058 0036D618  91 23 00 24 */	stw r9, 0x24(r3)
/* 803A405C 0036D61C  91 23 00 20 */	stw r9, 0x20(r3)
/* 803A4060 0036D620  91 23 00 2C */	stw r9, 0x2c(r3)
/* 803A4064 0036D624  91 23 00 28 */	stw r9, 0x28(r3)
/* 803A4068 0036D628  91 23 00 34 */	stw r9, 0x34(r3)
/* 803A406C 0036D62C  91 23 00 30 */	stw r9, 0x30(r3)
/* 803A4070 0036D630  91 23 00 3C */	stw r9, 0x3c(r3)
/* 803A4074 0036D634  91 23 00 38 */	stw r9, 0x38(r3)
/* 803A4078 0036D638  91 23 00 44 */	stw r9, 0x44(r3)
/* 803A407C 0036D63C  91 23 00 40 */	stw r9, 0x40(r3)
/* 803A4080 0036D640  91 23 00 4C */	stw r9, 0x4c(r3)
/* 803A4084 0036D644  91 23 00 48 */	stw r9, 0x48(r3)
/* 803A4088 0036D648  91 23 00 54 */	stw r9, 0x54(r3)
/* 803A408C 0036D64C  91 23 00 50 */	stw r9, 0x50(r3)
/* 803A4090 0036D650  91 23 00 5C */	stw r9, 0x5c(r3)
/* 803A4094 0036D654  91 23 00 58 */	stw r9, 0x58(r3)
/* 803A4098 0036D658  91 23 00 64 */	stw r9, 0x64(r3)
/* 803A409C 0036D65C  91 23 00 60 */	stw r9, 0x60(r3)
/* 803A40A0 0036D660  91 23 00 6C */	stw r9, 0x6c(r3)
/* 803A40A4 0036D664  91 23 00 68 */	stw r9, 0x68(r3)
/* 803A40A8 0036D668  91 23 00 74 */	stw r9, 0x74(r3)
/* 803A40AC 0036D66C  91 23 00 70 */	stw r9, 0x70(r3)
/* 803A40B0 0036D670  91 23 00 7C */	stw r9, 0x7c(r3)
/* 803A40B4 0036D674  91 23 00 78 */	stw r9, 0x78(r3)
/* 803A40B8 0036D678  91 23 00 84 */	stw r9, 0x84(r3)
/* 803A40BC 0036D67C  91 23 00 80 */	stw r9, 0x80(r3)
/* 803A40C0 0036D680  91 23 00 8C */	stw r9, 0x8c(r3)
/* 803A40C4 0036D684  91 23 00 88 */	stw r9, 0x88(r3)
/* 803A40C8 0036D688  91 23 00 94 */	stw r9, 0x94(r3)
/* 803A40CC 0036D68C  91 23 00 90 */	stw r9, 0x90(r3)
/* 803A40D0 0036D690  91 23 00 9C */	stw r9, 0x9c(r3)
/* 803A40D4 0036D694  91 23 00 98 */	stw r9, 0x98(r3)
/* 803A40D8 0036D698  91 23 00 A4 */	stw r9, 0xa4(r3)
/* 803A40DC 0036D69C  91 23 00 A0 */	stw r9, 0xa0(r3)
/* 803A40E0 0036D6A0  91 23 00 AC */	stw r9, 0xac(r3)
/* 803A40E4 0036D6A4  91 23 00 A8 */	stw r9, 0xa8(r3)
/* 803A40E8 0036D6A8  91 23 00 B4 */	stw r9, 0xb4(r3)
/* 803A40EC 0036D6AC  91 23 00 B0 */	stw r9, 0xb0(r3)
/* 803A40F0 0036D6B0  91 23 00 BC */	stw r9, 0xbc(r3)
/* 803A40F4 0036D6B4  91 23 00 B8 */	stw r9, 0xb8(r3)
/* 803A40F8 0036D6B8  91 23 00 C4 */	stw r9, 0xc4(r3)
/* 803A40FC 0036D6BC  91 23 00 C0 */	stw r9, 0xc0(r3)
/* 803A4100 0036D6C0  91 23 00 CC */	stw r9, 0xcc(r3)
/* 803A4104 0036D6C4  91 23 00 C8 */	stw r9, 0xc8(r3)
/* 803A4108 0036D6C8  91 23 00 D4 */	stw r9, 0xd4(r3)
/* 803A410C 0036D6CC  91 23 00 D0 */	stw r9, 0xd0(r3)
/* 803A4110 0036D6D0  91 23 00 DC */	stw r9, 0xdc(r3)
/* 803A4114 0036D6D4  91 23 00 D8 */	stw r9, 0xd8(r3)
/* 803A4118 0036D6D8  91 23 00 E4 */	stw r9, 0xe4(r3)
/* 803A411C 0036D6DC  91 23 00 E0 */	stw r9, 0xe0(r3)
/* 803A4120 0036D6E0  91 23 00 EC */	stw r9, 0xec(r3)
/* 803A4124 0036D6E4  91 23 00 E8 */	stw r9, 0xe8(r3)
/* 803A4128 0036D6E8  91 23 00 F4 */	stw r9, 0xf4(r3)
/* 803A412C 0036D6EC  91 23 00 F0 */	stw r9, 0xf0(r3)
/* 803A4130 0036D6F0  91 23 00 FC */	stw r9, 0xfc(r3)
/* 803A4134 0036D6F4  91 23 00 F8 */	stw r9, 0xf8(r3)
/* 803A4138 0036D6F8  91 23 01 04 */	stw r9, 0x104(r3)
/* 803A413C 0036D6FC  91 23 01 00 */	stw r9, 0x100(r3)
/* 803A4140 0036D700  91 23 01 0C */	stw r9, 0x10c(r3)
/* 803A4144 0036D704  91 23 01 08 */	stw r9, 0x108(r3)
/* 803A4148 0036D708  91 2A 00 8C */	stw r9, 0x8c(r10)
/* 803A414C 0036D70C  91 2A 00 88 */	stw r9, 0x88(r10)
/* 803A4150 0036D710  91 2A 00 94 */	stw r9, 0x94(r10)
/* 803A4154 0036D714  91 2A 00 90 */	stw r9, 0x90(r10)
/* 803A4158 0036D718  91 2A 00 9C */	stw r9, 0x9c(r10)
/* 803A415C 0036D71C  91 2A 00 98 */	stw r9, 0x98(r10)
/* 803A4160 0036D720  91 2A 00 A4 */	stw r9, 0xa4(r10)
/* 803A4164 0036D724  91 2A 00 A0 */	stw r9, 0xa0(r10)
/* 803A4168 0036D728  91 2A 00 AC */	stw r9, 0xac(r10)
/* 803A416C 0036D72C  91 2A 00 A8 */	stw r9, 0xa8(r10)
/* 803A4170 0036D730  91 2A 00 B4 */	stw r9, 0xb4(r10)
/* 803A4174 0036D734  91 2A 00 B0 */	stw r9, 0xb0(r10)
/* 803A4178 0036D738  91 2A 00 BC */	stw r9, 0xbc(r10)
/* 803A417C 0036D73C  91 2A 00 B8 */	stw r9, 0xb8(r10)
/* 803A4180 0036D740  91 2A 00 C4 */	stw r9, 0xc4(r10)
/* 803A4184 0036D744  91 2A 00 C0 */	stw r9, 0xc0(r10)
/* 803A4188 0036D748  91 2A 00 CC */	stw r9, 0xcc(r10)
/* 803A418C 0036D74C  91 2A 00 C8 */	stw r9, 0xc8(r10)
/* 803A4190 0036D750  91 2A 00 D4 */	stw r9, 0xd4(r10)
/* 803A4194 0036D754  91 2A 00 D0 */	stw r9, 0xd0(r10)
/* 803A4198 0036D758  91 2A 00 DC */	stw r9, 0xdc(r10)
/* 803A419C 0036D75C  91 2A 00 D8 */	stw r9, 0xd8(r10)
/* 803A41A0 0036D760  91 2A 00 E4 */	stw r9, 0xe4(r10)
/* 803A41A4 0036D764  91 2A 00 E0 */	stw r9, 0xe0(r10)
/* 803A41A8 0036D768  91 2A 00 EC */	stw r9, 0xec(r10)
/* 803A41AC 0036D76C  91 2A 00 E8 */	stw r9, 0xe8(r10)
/* 803A41B0 0036D770  91 2A 00 F4 */	stw r9, 0xf4(r10)
/* 803A41B4 0036D774  91 2A 00 F0 */	stw r9, 0xf0(r10)
/* 803A41B8 0036D778  91 2A 00 FC */	stw r9, 0xfc(r10)
/* 803A41BC 0036D77C  91 2A 00 F8 */	stw r9, 0xf8(r10)
/* 803A41C0 0036D780  91 2A 01 04 */	stw r9, 0x104(r10)
/* 803A41C4 0036D784  91 2A 01 00 */	stw r9, 0x100(r10)
/* 803A41C8 0036D788  91 2A 01 0C */	stw r9, 0x10c(r10)
/* 803A41CC 0036D78C  91 2A 01 08 */	stw r9, 0x108(r10)
/* 803A41D0 0036D790  91 2A 01 14 */	stw r9, 0x114(r10)
/* 803A41D4 0036D794  91 2A 01 10 */	stw r9, 0x110(r10)
/* 803A41D8 0036D798  91 2A 01 1C */	stw r9, 0x11c(r10)
/* 803A41DC 0036D79C  91 2A 01 18 */	stw r9, 0x118(r10)
/* 803A41E0 0036D7A0  91 2A 01 24 */	stw r9, 0x124(r10)
/* 803A41E4 0036D7A4  91 2A 01 20 */	stw r9, 0x120(r10)
/* 803A41E8 0036D7A8  91 2A 01 2C */	stw r9, 0x12c(r10)
/* 803A41EC 0036D7AC  91 2A 01 28 */	stw r9, 0x128(r10)
/* 803A41F0 0036D7B0  91 2A 01 34 */	stw r9, 0x134(r10)
/* 803A41F4 0036D7B4  91 2A 01 30 */	stw r9, 0x130(r10)
/* 803A41F8 0036D7B8  91 2A 01 3C */	stw r9, 0x13c(r10)
/* 803A41FC 0036D7BC  91 2A 01 38 */	stw r9, 0x138(r10)
/* 803A4200 0036D7C0  91 2A 01 44 */	stw r9, 0x144(r10)
/* 803A4204 0036D7C4  91 2A 01 40 */	stw r9, 0x140(r10)
/* 803A4208 0036D7C8  91 2A 01 4C */	stw r9, 0x14c(r10)
/* 803A420C 0036D7CC  91 2A 01 48 */	stw r9, 0x148(r10)
/* 803A4210 0036D7D0  91 2A 01 54 */	stw r9, 0x154(r10)
/* 803A4214 0036D7D4  91 2A 01 50 */	stw r9, 0x150(r10)
/* 803A4218 0036D7D8  91 2A 01 5C */	stw r9, 0x15c(r10)
/* 803A421C 0036D7DC  91 2A 01 58 */	stw r9, 0x158(r10)
/* 803A4220 0036D7E0  91 2A 01 64 */	stw r9, 0x164(r10)
/* 803A4224 0036D7E4  91 2A 01 60 */	stw r9, 0x160(r10)
/* 803A4228 0036D7E8  91 2A 01 6C */	stw r9, 0x16c(r10)
/* 803A422C 0036D7EC  91 2A 01 68 */	stw r9, 0x168(r10)
/* 803A4230 0036D7F0  91 2A 01 74 */	stw r9, 0x174(r10)
/* 803A4234 0036D7F4  91 2A 01 70 */	stw r9, 0x170(r10)
/* 803A4238 0036D7F8  91 2A 01 7C */	stw r9, 0x17c(r10)
/* 803A423C 0036D7FC  91 2A 01 78 */	stw r9, 0x178(r10)
/* 803A4240 0036D800  91 2A 01 84 */	stw r9, 0x184(r10)
/* 803A4244 0036D804  91 2A 01 80 */	stw r9, 0x180(r10)
/* 803A4248 0036D808  91 2A 01 8C */	stw r9, 0x18c(r10)
/* 803A424C 0036D80C  91 2A 01 88 */	stw r9, 0x188(r10)
/* 803A4250 0036D810  91 2A 01 94 */	stw r9, 0x194(r10)
/* 803A4254 0036D814  91 2A 01 90 */	stw r9, 0x190(r10)
/* 803A4258 0036D818  81 03 0C 8C */	lwz r8, 0xc8c(r3)
/* 803A425C 0036D81C  3B E3 09 C4 */	addi r31, r3, 0x9c4
/* 803A4260 0036D820  80 C3 0D 4C */	lwz r6, 0xd4c(r3)
/* 803A4264 0036D824  38 E3 03 00 */	addi r7, r3, 0x300
/* 803A4268 0036D828  80 03 0D 0C */	lwz r0, 0xd0c(r3)
/* 803A426C 0036D82C  38 A3 0C F0 */	addi r5, r3, 0xcf0
/* 803A4270 0036D830  81 83 0D 3C */	lwz r12, 0xd3c(r3)
/* 803A4274 0036D834  7F E4 FB 78 */	mr r4, r31
/* 803A4278 0036D838  91 2A 01 9C */	stw r9, 0x19c(r10)
/* 803A427C 0036D83C  91 2A 01 98 */	stw r9, 0x198(r10)
/* 803A4280 0036D840  91 2A 01 A4 */	stw r9, 0x1a4(r10)
/* 803A4284 0036D844  91 2A 01 A0 */	stw r9, 0x1a0(r10)
/* 803A4288 0036D848  91 2A 01 AC */	stw r9, 0x1ac(r10)
/* 803A428C 0036D84C  91 2A 01 A8 */	stw r9, 0x1a8(r10)
/* 803A4290 0036D850  91 2A 01 B4 */	stw r9, 0x1b4(r10)
/* 803A4294 0036D854  91 2A 01 B0 */	stw r9, 0x1b0(r10)
/* 803A4298 0036D858  91 2A 01 BC */	stw r9, 0x1bc(r10)
/* 803A429C 0036D85C  91 2A 01 B8 */	stw r9, 0x1b8(r10)
/* 803A42A0 0036D860  91 2A 01 C4 */	stw r9, 0x1c4(r10)
/* 803A42A4 0036D864  91 2A 01 C0 */	stw r9, 0x1c0(r10)
/* 803A42A8 0036D868  91 2A 01 CC */	stw r9, 0x1cc(r10)
/* 803A42AC 0036D86C  91 2A 01 C8 */	stw r9, 0x1c8(r10)
/* 803A42B0 0036D870  91 2A 01 D4 */	stw r9, 0x1d4(r10)
/* 803A42B4 0036D874  91 2A 01 D0 */	stw r9, 0x1d0(r10)
/* 803A42B8 0036D878  91 2A 01 DC */	stw r9, 0x1dc(r10)
/* 803A42BC 0036D87C  91 2A 01 D8 */	stw r9, 0x1d8(r10)
/* 803A42C0 0036D880  91 2A 01 E4 */	stw r9, 0x1e4(r10)
/* 803A42C4 0036D884  91 2A 01 E0 */	stw r9, 0x1e0(r10)
/* 803A42C8 0036D888  91 2A 01 EC */	stw r9, 0x1ec(r10)
/* 803A42CC 0036D88C  91 2A 01 E8 */	stw r9, 0x1e8(r10)
/* 803A42D0 0036D890  91 2A 01 F4 */	stw r9, 0x1f4(r10)
/* 803A42D4 0036D894  91 2A 01 F0 */	stw r9, 0x1f0(r10)
/* 803A42D8 0036D898  91 2A 01 FC */	stw r9, 0x1fc(r10)
/* 803A42DC 0036D89C  91 2A 01 F8 */	stw r9, 0x1f8(r10)
/* 803A42E0 0036D8A0  91 2A 02 04 */	stw r9, 0x204(r10)
/* 803A42E4 0036D8A4  91 2A 02 00 */	stw r9, 0x200(r10)
/* 803A42E8 0036D8A8  91 2A 02 0C */	stw r9, 0x20c(r10)
/* 803A42EC 0036D8AC  91 2A 02 08 */	stw r9, 0x208(r10)
/* 803A42F0 0036D8B0  91 2A 02 14 */	stw r9, 0x214(r10)
/* 803A42F4 0036D8B4  91 2A 02 10 */	stw r9, 0x210(r10)
/* 803A42F8 0036D8B8  91 2A 02 1C */	stw r9, 0x21c(r10)
/* 803A42FC 0036D8BC  91 2A 02 18 */	stw r9, 0x218(r10)
/* 803A4300 0036D8C0  91 2A 02 24 */	stw r9, 0x224(r10)
/* 803A4304 0036D8C4  91 2A 02 20 */	stw r9, 0x220(r10)
/* 803A4308 0036D8C8  91 2A 02 2C */	stw r9, 0x22c(r10)
/* 803A430C 0036D8CC  91 2A 02 28 */	stw r9, 0x228(r10)
/* 803A4310 0036D8D0  91 2A 02 34 */	stw r9, 0x234(r10)
/* 803A4314 0036D8D4  91 2A 02 30 */	stw r9, 0x230(r10)
/* 803A4318 0036D8D8  91 2A 02 3C */	stw r9, 0x23c(r10)
/* 803A431C 0036D8DC  91 2A 02 38 */	stw r9, 0x238(r10)
/* 803A4320 0036D8E0  91 2A 02 44 */	stw r9, 0x244(r10)
/* 803A4324 0036D8E4  91 2A 02 40 */	stw r9, 0x240(r10)
/* 803A4328 0036D8E8  91 2A 02 4C */	stw r9, 0x24c(r10)
/* 803A432C 0036D8EC  91 2A 02 48 */	stw r9, 0x248(r10)
/* 803A4330 0036D8F0  91 2A 02 54 */	stw r9, 0x254(r10)
/* 803A4334 0036D8F4  91 2A 02 50 */	stw r9, 0x250(r10)
/* 803A4338 0036D8F8  91 2A 02 5C */	stw r9, 0x25c(r10)
/* 803A433C 0036D8FC  91 2A 02 58 */	stw r9, 0x258(r10)
/* 803A4340 0036D900  91 2A 02 64 */	stw r9, 0x264(r10)
/* 803A4344 0036D904  91 2A 02 60 */	stw r9, 0x260(r10)
/* 803A4348 0036D908  91 2A 02 6C */	stw r9, 0x26c(r10)
/* 803A434C 0036D90C  91 2A 02 68 */	stw r9, 0x268(r10)
/* 803A4350 0036D910  91 2A 02 74 */	stw r9, 0x274(r10)
/* 803A4354 0036D914  91 2A 02 70 */	stw r9, 0x270(r10)
/* 803A4358 0036D918  91 03 09 E8 */	stw r8, 0x9e8(r3)
/* 803A435C 0036D91C  90 E3 09 E4 */	stw r7, 0x9e4(r3)
/* 803A4360 0036D920  91 23 09 F4 */	stw r9, 0x9f4(r3)
/* 803A4364 0036D924  90 C3 09 F0 */	stw r6, 0x9f0(r3)
/* 803A4368 0036D928  90 A3 09 EC */	stw r5, 0x9ec(r3)
/* 803A436C 0036D92C  90 03 09 E0 */	stw r0, 0x9e0(r3)
/* 803A4370 0036D930  7D 89 03 A6 */	mtctr r12
/* 803A4374 0036D934  4E 80 04 21 */	bctrl 
/* 803A4378 0036D938  80 1E 0D 10 */	lwz r0, 0xd10(r30)
/* 803A437C 0036D93C  7C 7D 1B 78 */	mr r29, r3
/* 803A4380 0036D940  81 9E 0D 3C */	lwz r12, 0xd3c(r30)
/* 803A4384 0036D944  7F C3 F3 78 */	mr r3, r30
/* 803A4388 0036D948  7F E4 FB 78 */	mr r4, r31
/* 803A438C 0036D94C  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 803A4390 0036D950  7D 89 03 A6 */	mtctr r12
/* 803A4394 0036D954  4E 80 04 21 */	bctrl 
/* 803A4398 0036D958  80 1E 0D 14 */	lwz r0, 0xd14(r30)
/* 803A439C 0036D95C  7C 7C 1B 78 */	mr r28, r3
/* 803A43A0 0036D960  81 9E 0D 3C */	lwz r12, 0xd3c(r30)
/* 803A43A4 0036D964  7F C3 F3 78 */	mr r3, r30
/* 803A43A8 0036D968  7F E4 FB 78 */	mr r4, r31
/* 803A43AC 0036D96C  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 803A43B0 0036D970  7D 89 03 A6 */	mtctr r12
/* 803A43B4 0036D974  4E 80 04 21 */	bctrl 
/* 803A43B8 0036D978  80 1E 0D 18 */	lwz r0, 0xd18(r30)
/* 803A43BC 0036D97C  7C 7B 1B 78 */	mr r27, r3
/* 803A43C0 0036D980  81 9E 0D 3C */	lwz r12, 0xd3c(r30)
/* 803A43C4 0036D984  7F C3 F3 78 */	mr r3, r30
/* 803A43C8 0036D988  7F E4 FB 78 */	mr r4, r31
/* 803A43CC 0036D98C  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 803A43D0 0036D990  7D 89 03 A6 */	mtctr r12
/* 803A43D4 0036D994  4E 80 04 21 */	bctrl 
/* 803A43D8 0036D998  80 DE 0D 50 */	lwz r6, 0xd50(r30)
/* 803A43DC 0036D99C  38 BE 0C F4 */	addi r5, r30, 0xcf4
/* 803A43E0 0036D9A0  80 1E 0D 1C */	lwz r0, 0xd1c(r30)
/* 803A43E4 0036D9A4  7C 7A 1B 78 */	mr r26, r3
/* 803A43E8 0036D9A8  81 9E 0D 3C */	lwz r12, 0xd3c(r30)
/* 803A43EC 0036D9AC  7F C3 F3 78 */	mr r3, r30
/* 803A43F0 0036D9B0  7F E4 FB 78 */	mr r4, r31
/* 803A43F4 0036D9B4  90 DF 00 2C */	stw r6, 0x2c(r31)
/* 803A43F8 0036D9B8  90 BF 00 28 */	stw r5, 0x28(r31)
/* 803A43FC 0036D9BC  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 803A4400 0036D9C0  7D 89 03 A6 */	mtctr r12
/* 803A4404 0036D9C4  4E 80 04 21 */	bctrl 
/* 803A4408 0036D9C8  80 1E 0D 20 */	lwz r0, 0xd20(r30)
/* 803A440C 0036D9CC  38 BE 0C F8 */	addi r5, r30, 0xcf8
/* 803A4410 0036D9D0  81 9E 0D 3C */	lwz r12, 0xd3c(r30)
/* 803A4414 0036D9D4  7C 79 1B 78 */	mr r25, r3
/* 803A4418 0036D9D8  7F C3 F3 78 */	mr r3, r30
/* 803A441C 0036D9DC  7F E4 FB 78 */	mr r4, r31
/* 803A4420 0036D9E0  90 BF 00 28 */	stw r5, 0x28(r31)
/* 803A4424 0036D9E4  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 803A4428 0036D9E8  7D 89 03 A6 */	mtctr r12
/* 803A442C 0036D9EC  4E 80 04 21 */	bctrl 
/* 803A4430 0036D9F0  81 9E 0C 84 */	lwz r12, 0xc84(r30)
/* 803A4434 0036D9F4  7C 7F 1B 78 */	mr r31, r3
/* 803A4438 0036D9F8  7F A4 EB 78 */	mr r4, r29
/* 803A443C 0036D9FC  80 7E 0D 0C */	lwz r3, 0xd0c(r30)
/* 803A4440 0036DA00  7D 89 03 A6 */	mtctr r12
/* 803A4444 0036DA04  4E 80 04 21 */	bctrl 
/* 803A4448 0036DA08  81 9E 0C 84 */	lwz r12, 0xc84(r30)
/* 803A444C 0036DA0C  7F 84 E3 78 */	mr r4, r28
/* 803A4450 0036DA10  80 7E 0D 10 */	lwz r3, 0xd10(r30)
/* 803A4454 0036DA14  7D 89 03 A6 */	mtctr r12
/* 803A4458 0036DA18  4E 80 04 21 */	bctrl 
/* 803A445C 0036DA1C  81 9E 0C 84 */	lwz r12, 0xc84(r30)
/* 803A4460 0036DA20  7F 64 DB 78 */	mr r4, r27
/* 803A4464 0036DA24  80 7E 0D 14 */	lwz r3, 0xd14(r30)
/* 803A4468 0036DA28  7D 89 03 A6 */	mtctr r12
/* 803A446C 0036DA2C  4E 80 04 21 */	bctrl 
/* 803A4470 0036DA30  81 9E 0C 84 */	lwz r12, 0xc84(r30)
/* 803A4474 0036DA34  7F 44 D3 78 */	mr r4, r26
/* 803A4478 0036DA38  80 7E 0D 18 */	lwz r3, 0xd18(r30)
/* 803A447C 0036DA3C  7D 89 03 A6 */	mtctr r12
/* 803A4480 0036DA40  4E 80 04 21 */	bctrl 
/* 803A4484 0036DA44  81 9E 0C 84 */	lwz r12, 0xc84(r30)
/* 803A4488 0036DA48  7F 24 CB 78 */	mr r4, r25
/* 803A448C 0036DA4C  80 7E 0D 1C */	lwz r3, 0xd1c(r30)
/* 803A4490 0036DA50  7D 89 03 A6 */	mtctr r12
/* 803A4494 0036DA54  4E 80 04 21 */	bctrl 
/* 803A4498 0036DA58  81 9E 0C 84 */	lwz r12, 0xc84(r30)
/* 803A449C 0036DA5C  7F E4 FB 78 */	mr r4, r31
/* 803A44A0 0036DA60  80 7E 0D 20 */	lwz r3, 0xd20(r30)
/* 803A44A4 0036DA64  7D 89 03 A6 */	mtctr r12
/* 803A44A8 0036DA68  4E 80 04 21 */	bctrl 
/* 803A44AC 0036DA6C  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 803A44B0 0036DA70  38 60 00 00 */	li r3, 0
/* 803A44B4 0036DA74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A44B8 0036DA78  7C 08 03 A6 */	mtlr r0
/* 803A44BC 0036DA7C  38 21 00 30 */	addi r1, r1, 0x30
/* 803A44C0 0036DA80  4E 80 00 20 */	blr 

.global mpvcdec_NintraBlocksInt1
mpvcdec_NintraBlocksInt1:
/* 803A44C4 0036DA84  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803A44C8 0036DA88  7C 08 02 A6 */	mflr r0
/* 803A44CC 0036DA8C  38 A3 03 40 */	addi r5, r3, 0x340
/* 803A44D0 0036DA90  38 80 00 01 */	li r4, 1
/* 803A44D4 0036DA94  90 01 00 44 */	stw r0, 0x44(r1)
/* 803A44D8 0036DA98  BF 41 00 28 */	stmw r26, 0x28(r1)
/* 803A44DC 0036DA9C  7C 7A 1B 78 */	mr r26, r3
/* 803A44E0 0036DAA0  3B A3 09 C4 */	addi r29, r3, 0x9c4
/* 803A44E4 0036DAA4  3B C1 00 08 */	addi r30, r1, 8
/* 803A44E8 0036DAA8  7F 5F D3 78 */	mr r31, r26
/* 803A44EC 0036DAAC  3B 60 00 00 */	li r27, 0
/* 803A44F0 0036DAB0  80 C3 0C 8C */	lwz r6, 0xc8c(r3)
/* 803A44F4 0036DAB4  80 03 0C EC */	lwz r0, 0xcec(r3)
/* 803A44F8 0036DAB8  90 C3 09 E8 */	stw r6, 0x9e8(r3)
/* 803A44FC 0036DABC  54 1C 10 3A */	slwi r28, r0, 2
/* 803A4500 0036DAC0  90 A3 09 E4 */	stw r5, 0x9e4(r3)
/* 803A4504 0036DAC4  90 83 09 F4 */	stw r4, 0x9f4(r3)
lbl_803A4508:
/* 803A4508 0036DAC8  2C 1C 00 00 */	cmpwi r28, 0
/* 803A450C 0036DACC  40 80 00 24 */	bge lbl_803A4530
/* 803A4510 0036DAD0  80 1F 0D 0C */	lwz r0, 0xd0c(r31)
/* 803A4514 0036DAD4  7F 43 D3 78 */	mr r3, r26
/* 803A4518 0036DAD8  81 9A 0D 40 */	lwz r12, 0xd40(r26)
/* 803A451C 0036DADC  7F A4 EB 78 */	mr r4, r29
/* 803A4520 0036DAE0  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 803A4524 0036DAE4  7D 89 03 A6 */	mtctr r12
/* 803A4528 0036DAE8  4E 80 04 21 */	bctrl 
/* 803A452C 0036DAEC  90 7E 00 00 */	stw r3, 0(r30)
lbl_803A4530:
/* 803A4530 0036DAF0  3B 7B 00 01 */	addi r27, r27, 1
/* 803A4534 0036DAF4  57 9C 08 3C */	slwi r28, r28, 1
/* 803A4538 0036DAF8  2C 1B 00 06 */	cmpwi r27, 6
/* 803A453C 0036DAFC  3B FF 00 04 */	addi r31, r31, 4
/* 803A4540 0036DB00  3B DE 00 04 */	addi r30, r30, 4
/* 803A4544 0036DB04  41 80 FF C4 */	blt lbl_803A4508
/* 803A4548 0036DB08  80 1A 0C EC */	lwz r0, 0xcec(r26)
/* 803A454C 0036DB0C  54 1E 10 3B */	rlwinm. r30, r0, 2, 0, 0x1d
/* 803A4550 0036DB10  40 80 00 18 */	bge lbl_803A4568
/* 803A4554 0036DB14  81 9A 0C 84 */	lwz r12, 0xc84(r26)
/* 803A4558 0036DB18  80 7A 0D 0C */	lwz r3, 0xd0c(r26)
/* 803A455C 0036DB1C  80 81 00 08 */	lwz r4, 8(r1)
/* 803A4560 0036DB20  7D 89 03 A6 */	mtctr r12
/* 803A4564 0036DB24  4E 80 04 21 */	bctrl 
lbl_803A4568:
/* 803A4568 0036DB28  57 DE 08 3D */	rlwinm. r30, r30, 1, 0, 0x1e
/* 803A456C 0036DB2C  40 80 00 18 */	bge lbl_803A4584
/* 803A4570 0036DB30  81 9A 0C 84 */	lwz r12, 0xc84(r26)
/* 803A4574 0036DB34  80 7A 0D 10 */	lwz r3, 0xd10(r26)
/* 803A4578 0036DB38  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803A457C 0036DB3C  7D 89 03 A6 */	mtctr r12
/* 803A4580 0036DB40  4E 80 04 21 */	bctrl 
lbl_803A4584:
/* 803A4584 0036DB44  57 DE 08 3D */	rlwinm. r30, r30, 1, 0, 0x1e
/* 803A4588 0036DB48  40 80 00 18 */	bge lbl_803A45A0
/* 803A458C 0036DB4C  81 9A 0C 84 */	lwz r12, 0xc84(r26)
/* 803A4590 0036DB50  80 7A 0D 14 */	lwz r3, 0xd14(r26)
/* 803A4594 0036DB54  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803A4598 0036DB58  7D 89 03 A6 */	mtctr r12
/* 803A459C 0036DB5C  4E 80 04 21 */	bctrl 
lbl_803A45A0:
/* 803A45A0 0036DB60  57 DE 08 3D */	rlwinm. r30, r30, 1, 0, 0x1e
/* 803A45A4 0036DB64  40 80 00 18 */	bge lbl_803A45BC
/* 803A45A8 0036DB68  81 9A 0C 84 */	lwz r12, 0xc84(r26)
/* 803A45AC 0036DB6C  80 7A 0D 18 */	lwz r3, 0xd18(r26)
/* 803A45B0 0036DB70  80 81 00 14 */	lwz r4, 0x14(r1)
/* 803A45B4 0036DB74  7D 89 03 A6 */	mtctr r12
/* 803A45B8 0036DB78  4E 80 04 21 */	bctrl 
lbl_803A45BC:
/* 803A45BC 0036DB7C  57 DE 08 3D */	rlwinm. r30, r30, 1, 0, 0x1e
/* 803A45C0 0036DB80  40 80 00 18 */	bge lbl_803A45D8
/* 803A45C4 0036DB84  81 9A 0C 84 */	lwz r12, 0xc84(r26)
/* 803A45C8 0036DB88  80 7A 0D 1C */	lwz r3, 0xd1c(r26)
/* 803A45CC 0036DB8C  80 81 00 18 */	lwz r4, 0x18(r1)
/* 803A45D0 0036DB90  7D 89 03 A6 */	mtctr r12
/* 803A45D4 0036DB94  4E 80 04 21 */	bctrl 
lbl_803A45D8:
/* 803A45D8 0036DB98  57 C0 08 3D */	rlwinm. r0, r30, 1, 0, 0x1e
/* 803A45DC 0036DB9C  40 80 00 18 */	bge lbl_803A45F4
/* 803A45E0 0036DBA0  81 9A 0C 84 */	lwz r12, 0xc84(r26)
/* 803A45E4 0036DBA4  80 7A 0D 20 */	lwz r3, 0xd20(r26)
/* 803A45E8 0036DBA8  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 803A45EC 0036DBAC  7D 89 03 A6 */	mtctr r12
/* 803A45F0 0036DBB0  4E 80 04 21 */	bctrl 
lbl_803A45F4:
/* 803A45F4 0036DBB4  BB 41 00 28 */	lmw r26, 0x28(r1)
/* 803A45F8 0036DBB8  38 60 00 00 */	li r3, 0
/* 803A45FC 0036DBBC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803A4600 0036DBC0  7C 08 03 A6 */	mtlr r0
/* 803A4604 0036DBC4  38 21 00 40 */	addi r1, r1, 0x40
/* 803A4608 0036DBC8  4E 80 00 20 */	blr 
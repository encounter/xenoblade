.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global OnUpdateFrameSoundThread__Q44nw4r3snd6detail9SeqPlayerFv
OnUpdateFrameSoundThread__Q44nw4r3snd6detail9SeqPlayerFv:
/* 8041759C 003E0B5C  48 00 2F D4 */	b Update__Q44nw4r3snd6detail9SeqPlayerFv

.global OnShutdownSoundThread__Q44nw4r3snd6detail9SeqPlayerFv
OnShutdownSoundThread__Q44nw4r3snd6detail9SeqPlayerFv:
/* 804175A0 003E0B60  81 83 00 00 */	lwz r12, 0(r3)
/* 804175A4 003E0B64  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 804175A8 003E0B68  7D 89 03 A6 */	mtctr r12
/* 804175AC 003E0B6C  4E 80 04 20 */	bctr 

.global InvalidateWaveData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv
InvalidateWaveData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv:
/* 804175B0 003E0B70  4E 80 00 20 */	blr

.global OnUpdateVoiceSoundThread__Q54nw4r3snd6detail11SoundThread14PlayerCallbackFv
OnUpdateVoiceSoundThread__Q54nw4r3snd6detail11SoundThread14PlayerCallbackFv:
/* 804175B4 003E0B74  4E 80 00 20 */	blr 

.global IsPause__Q44nw4r3snd6detail9SeqPlayerCFv
IsPause__Q44nw4r3snd6detail9SeqPlayerCFv:
/* 804175B8 003E0B78  88 63 00 EE */	lbz r3, 0xee(r3)
/* 804175BC 003E0B7C  4E 80 00 20 */	blr 

.global IsStarted__Q44nw4r3snd6detail9SeqPlayerCFv
IsStarted__Q44nw4r3snd6detail9SeqPlayerCFv:
/* 804175C0 003E0B80  88 63 00 ED */	lbz r3, 0xed(r3)
/* 804175C4 003E0B84  4E 80 00 20 */	blr 

.global IsActive__Q44nw4r3snd6detail9SeqPlayerCFv
IsActive__Q44nw4r3snd6detail9SeqPlayerCFv:
/* 804175C8 003E0B88  88 63 00 EC */	lbz r3, 0xec(r3)
/* 804175CC 003E0B8C  4E 80 00 20 */	blr 

#@208@InvalidateWaveData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv
.global _208_InvalidateWaveData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv
_208_InvalidateWaveData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv:
/* 804175D0 003E0B90  38 63 FF 2C */	addi r3, r3, -212
/* 804175D4 003E0B94  4B FF FF DC */	b InvalidateWaveData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv

#@208@InvalidateData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv
.global _208_InvalidateData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv
_208_InvalidateData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv:
/* 804175D8 003E0B98  38 63 FF 2C */	addi r3, r3, -212
/* 804175DC 003E0B9C  48 00 2C 34 */	b InvalidateData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv

#@220@OnShutdownSoundThread__Q44nw4r3snd6detail9SeqPlayerFv
.global _220_OnShutdownSoundThread__Q44nw4r3snd6detail9SeqPlayerFv
_220_OnShutdownSoundThread__Q44nw4r3snd6detail9SeqPlayerFv:
/* 804175E0 003E0BA0  38 63 FF 20 */	addi r3, r3, -224
/* 804175E4 003E0BA4  4B FF FF BC */	b OnShutdownSoundThread__Q44nw4r3snd6detail9SeqPlayerFv

#@220@OnUpdateFrameSoundThread__Q44nw4r3snd6detail9SeqPlayerFv
.global _220_OnUpdateFrameSoundThread__Q44nw4r3snd6detail9SeqPlayerFv
_220_OnUpdateFrameSoundThread__Q44nw4r3snd6detail9SeqPlayerFv:
/* 804175E8 003E0BA8  38 63 FF 20 */	addi r3, r3, -224
/* 804175EC 003E0BAC  4B FF FF B0 */	b OnUpdateFrameSoundThread__Q44nw4r3snd6detail9SeqPlayerFv

.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

#Possible functions:
#Read__Q34nw4r2ut8IOStreamFPvUl
#ReadAsync__Q34nw4r2ut8IOStreamFPvUlPFlPQ34nw4r2ut8IOStreamPv_vPv
#Write__Q34nw4r2ut8IOStreamFPCvUl
#WriteAsync__Q34nw4r2ut8IOStreamFPCvUlPFlPQ34nw4r2ut8IOStreamPv_vPv
#IsBusy__Q34nw4r2ut8IOStreamCFv

.global func_8042BDD0
func_8042BDD0:
/* 8042BDD0 003F5390  38 60 00 00 */	li r3, 0
/* 8042BDD4 003F5394  4E 80 00 20 */	blr

.global func_8042BDD8
func_8042BDD8:
/* 8042BDD8 003F5398  38 60 00 00 */	li r3, 0
/* 8042BDDC 003F539C  4E 80 00 20 */	blr

.global func_8042BDE0
func_8042BDE0:
/* 8042BDE0 003F53A0  38 60 00 00 */	li r3, 0
/* 8042BDE4 003F53A4  4E 80 00 20 */	blr

.global func_8042BDE8
func_8042BDE8:
/* 8042BDE8 003F53A8  38 60 00 00 */	li r3, 0
/* 8042BDEC 003F53AC  4E 80 00 20 */	blr

.global sinit_8042BDF0
sinit_8042BDF0:
/* 8042BDF0 003F53B0  38 00 00 00 */	li r0, 0
/* 8042BDF4 003F53B4  90 0D BC A0 */	stw r0, lbl_80667E20@sda21(r13)
/* 8042BDF8 003F53B8  4E 80 00 20 */	blr

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.4byte sinit_8042BDF0

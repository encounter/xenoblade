.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global AllocatorAllocForExpHeap_
AllocatorAllocForExpHeap_:
/* 80349A70 00313030  7C 65 1B 78 */	mr r5, r3
/* 80349A74 00313034  80 63 00 04 */	lwz r3, 4(r3)
/* 80349A78 00313038  80 A5 00 08 */	lwz r5, 8(r5)
/* 80349A7C 0031303C  4B FF FB 74 */	b MEMAllocFromExpHeapEx


.global AllocatorFreeForExpHeap_
AllocatorFreeForExpHeap_:
/* 80349A80 00313040  80 63 00 04 */	lwz r3, 4(r3)
/* 80349A84 00313044  4B FF FC 1C */	b MEMFreeToExpHeap

.balign 16, 0
.global MEMAllocFromAllocator
MEMAllocFromAllocator:
/* 80349A90 00313050  80 A3 00 00 */	lwz r5, 0(r3)
/* 80349A94 00313054  81 85 00 00 */	lwz r12, 0(r5)
/* 80349A98 00313058  7D 89 03 A6 */	mtctr r12
/* 80349A9C 0031305C  4E 80 04 20 */	bctr 

.balign 16, 0
.global MEMFreeToAllocator
MEMFreeToAllocator:
/* 80349AA0 00313060  80 A3 00 00 */	lwz r5, 0(r3)
/* 80349AA4 00313064  81 85 00 04 */	lwz r12, 4(r5)
/* 80349AA8 00313068  7D 89 03 A6 */	mtctr r12
/* 80349AAC 0031306C  4E 80 04 20 */	bctr 

.balign 16, 0
.global MEMInitAllocatorForExpHeap
MEMInitAllocatorForExpHeap:
/* 80349AB0 00313070  38 C2 BD A0 */	addi r6, r2, lbl_8066C120@sda21
/* 80349AB4 00313074  38 00 00 00 */	li r0, 0
/* 80349AB8 00313078  90 C3 00 00 */	stw r6, 0(r3)
/* 80349ABC 0031307C  90 83 00 04 */	stw r4, 4(r3)
/* 80349AC0 00313080  90 A3 00 08 */	stw r5, 8(r3)
/* 80349AC4 00313084  90 03 00 0C */	stw r0, 0xc(r3)
/* 80349AC8 00313088  4E 80 00 20 */	blr 

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.global lbl_8066C120
lbl_8066C120:
	.4byte AllocatorAllocForExpHeap_
	.4byte AllocatorFreeForExpHeap_
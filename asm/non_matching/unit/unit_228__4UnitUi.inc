    .syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #0x1c]
	movs r0, #0x96
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, r4, r0
	ldr r2, [r2, #4]
	bl _call_via_r2
	adds r6, r0, #0
	adds r4, #0xdc
	ldr r0, [r4, #4]
	cmp r6, r0
	bge _080753F8
	lsls r5, r6, #2
	ldr r0, [r4, #8]
	adds r0, r0, r5
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	adds r1, #0x70
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r0, [r4, #8]
	adds r0, r0, r5
	ldr r2, [r0]
	cmp r2, #0
	beq _080753CC
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_080753CC:
	ldr r3, [r4, #4]
	cmp r6, r3
	bge _080753F4
	ldr r2, [r4, #8]
	adds r1, r5, r2
	adds r0, r6, #1
	subs r0, r3, r0
	adds r6, r1, #4
	cmp r0, #0
	ble _080753EC
	adds r2, r0, #0
_080753E2:
	ldm r6!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _080753E2
_080753EC:
	subs r0, r3, #1
	str r0, [r4, #4]
	movs r0, #1
	b _080753FA
_080753F4:
	movs r0, #0
	b _080753FA
_080753F8:
	movs r0, #0
_080753FA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
    .syntax divided

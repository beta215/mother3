.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_0808F8EC
sub_0808F8EC: @ 0x0808F8EC
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r7, r2, #0x18
	cmp r6, #0xb2
	bls _0808F900
	movs r6, #0xb2
	movs r7, #0xff
	lsls r7, r7, #0x18
_0808F900:
	ldr r3, _0808F948 @ =gUnknown_08119A0C
	adds r0, r6, r3
	ldrb r5, [r0]
	ldr r4, _0808F94C @ =gUnknown_08119AC0
	movs r2, #0xf
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r5, #4
	ldr r5, [r0]
	lsrs r5, r1
	adds r0, r6, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r1, #4
	ldr r0, [r0]
	lsrs r0, r1
	mov r1, ip
	ldr r4, [r1, #4]
	subs r0, r0, r5
	adds r1, r7, #0
	bl umul3232H32
	adds r1, r0, #0
	adds r1, r5, r1
	adds r0, r4, #0
	bl umul3232H32
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808F948: .4byte gUnknown_08119A0C
_0808F94C: .4byte gUnknown_08119AC0

	thumb_func_start sub_0808F950
sub_0808F950: @ 0x0808F950
	bx lr
	.align 2, 0

	thumb_func_start sub_0808F954
sub_0808F954: @ 0x0808F954
	push {lr}
	adds r2, r0, #0
	ldr r3, [r2, #0x34]
	ldr r0, _0808F96C @ =0x68736D53
	cmp r3, r0
	bne _0808F968
	ldr r0, [r2, #4]
	ldr r1, _0808F970 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_0808F968:
	pop {r0}
	bx r0
	.align 2, 0
_0808F96C: .4byte 0x68736D53
_0808F970: .4byte 0x7FFFFFFF

	thumb_func_start sub_0808F974
sub_0808F974: @ 0x0808F974
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _0808F994 @ =0x68736D53
	cmp r3, r0
	bne _0808F98E
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x28]
_0808F98E:
	pop {r0}
	bx r0
	.align 2, 0
_0808F994: .4byte 0x68736D53

	thumb_func_start sub_0808F998
sub_0808F998: @ 0x0808F998
	push {r4, r5, r6, lr}
	ldr r0, _0808F9EC @ =SoundMainRAM
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _0808F9F0 @ =gUnknown_03000000
	ldr r2, _0808F9F4 @ =0x04000100
	bl sub_08090F78
	ldr r0, _0808F9F8 @ =gUnknown_03001B20
	bl sub_0808FDC0
	ldr r0, _0808F9FC @ =gUnknown_03002B60
	bl sub_0808FC7C
	ldr r0, _0808FA00 @ =0x0095FC00
	bl sub_0808FF24
	ldr r0, _0808FA04 @ =0x0000000A
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0808F9E6
	ldr r5, _0808FA08 @ =gUnknown_08120E1C
	adds r6, r0, #0
_0808F9CA:
	ldr r4, [r5]
	ldr r1, [r5, #4]
	ldrb r2, [r5, #8]
	adds r0, r4, #0
	bl sub_08090184
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0xb]
	ldr r0, _0808FA0C @ =gUnknown_03002E60
	str r0, [r4, #0x18]
	adds r5, #0xc
	subs r6, #1
	cmp r6, #0
	bne _0808F9CA
_0808F9E6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808F9EC: .4byte SoundMainRAM
_0808F9F0: .4byte gUnknown_03000000
_0808F9F4: .4byte 0x04000100
_0808F9F8: .4byte gUnknown_03001B20
_0808F9FC: .4byte gUnknown_03002B60
_0808FA00: .4byte 0x0095FC00
_0808FA04: .4byte 0x0000000A
_0808FA08: .4byte gUnknown_08120E1C
_0808FA0C: .4byte gUnknown_03002E60

	thumb_func_start sub_0808FA10
sub_0808FA10: @ 0x0808FA10
	push {lr}
	bl SoundMain
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808FA1C
sub_0808FA1C: @ 0x0808FA1C
	push {lr}
	lsls r0, r0, #0x10
	ldr r3, _0808FA40 @ =gUnknown_08120E1C
	ldr r1, _0808FA44 @ =gUnknown_08120E94
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r2, [r0, #4]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r2, [r1]
	ldr r1, [r0]
	adds r0, r2, #0
	bl sub_080901FC
	pop {r0}
	bx r0
	.align 2, 0
_0808FA40: .4byte gUnknown_08120E1C
_0808FA44: .4byte gUnknown_08120E94

	thumb_func_start sub_0808FA48
sub_0808FA48: @ 0x0808FA48
	push {lr}
	lsls r0, r0, #0x10
	ldr r3, _0808FA74 @ =gUnknown_08120E1C
	ldr r1, _0808FA78 @ =gUnknown_08120E94
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r2, [r0, #4]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _0808FA7C
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_080901FC
	b _0808FA90
	.align 2, 0
_0808FA74: .4byte gUnknown_08120E1C
_0808FA78: .4byte gUnknown_08120E94
_0808FA7C:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _0808FA88
	cmp r2, #0
	bge _0808FA90
_0808FA88:
	adds r0, r1, #0
	adds r1, r3, #0
	bl sub_080901FC
_0808FA90:
	pop {r0}
	bx r0

	thumb_func_start sub_0808FA94
sub_0808FA94: @ 0x0808FA94
	push {lr}
	lsls r0, r0, #0x10
	ldr r3, _0808FAC0 @ =gUnknown_08120E1C
	ldr r1, _0808FAC4 @ =gUnknown_08120E94
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r2, [r0, #4]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _0808FAC8
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_080901FC
	b _0808FAE4
	.align 2, 0
_0808FAC0: .4byte gUnknown_08120E1C
_0808FAC4: .4byte gUnknown_08120E94
_0808FAC8:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _0808FADA
	adds r0, r1, #0
	adds r1, r3, #0
	bl sub_080901FC
	b _0808FAE4
_0808FADA:
	cmp r2, #0
	bge _0808FAE4
	adds r0, r1, #0
	bl sub_0808F954
_0808FAE4:
	pop {r0}
	bx r0

	thumb_func_start sub_0808FAE8
sub_0808FAE8: @ 0x0808FAE8
	push {lr}
	lsls r0, r0, #0x10
	ldr r3, _0808FB14 @ =gUnknown_08120E1C
	ldr r1, _0808FB18 @ =gUnknown_08120E94
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r2, [r0, #4]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _0808FB0E
	adds r0, r2, #0
	bl sub_080902E0
_0808FB0E:
	pop {r0}
	bx r0
	.align 2, 0
_0808FB14: .4byte gUnknown_08120E1C
_0808FB18: .4byte gUnknown_08120E94

	thumb_func_start sub_0808FB1C
sub_0808FB1C: @ 0x0808FB1C
	push {lr}
	lsls r0, r0, #0x10
	ldr r3, _0808FB48 @ =gUnknown_08120E1C
	ldr r1, _0808FB4C @ =gUnknown_08120E94
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r2, [r0, #4]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _0808FB42

	thumb_func_start sub_0808FB3C
sub_0808FB3C: @ 0x0808FB3C
	adds r0, r2, #0
	bl sub_0808F954
_0808FB42:
	pop {r0}
	bx r0
	.align 2, 0
_0808FB48: .4byte gUnknown_08120E1C
_0808FB4C: .4byte gUnknown_08120E94

	thumb_func_start sub_0808FB50
sub_0808FB50: @ 0x0808FB50
	push {r4, r5, lr}
	ldr r0, _0808FB74 @ =0x0000000A
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0808FB6E
	ldr r5, _0808FB78 @ =gUnknown_08120E1C
	adds r4, r0, #0
_0808FB60:
	ldr r0, [r5]
	bl sub_080902E0
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _0808FB60
_0808FB6E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808FB74: .4byte 0x0000000A
_0808FB78: .4byte gUnknown_08120E1C

	thumb_func_start sub_0808FB7C
sub_0808FB7C: @ 0x0808FB7C
	push {lr}
	bl sub_0808F954
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808FB88
sub_0808FB88: @ 0x0808FB88
	push {r4, r5, lr}
	ldr r0, _0808FBAC @ =0x0000000A
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0808FBA6
	ldr r5, _0808FBB0 @ =gUnknown_08120E1C
	adds r4, r0, #0
_0808FB98:
	ldr r0, [r5]
	bl sub_0808F954
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _0808FB98
_0808FBA6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808FBAC: .4byte 0x0000000A
_0808FBB0: .4byte gUnknown_08120E1C

	thumb_func_start sub_0808FBB4
sub_0808FBB4: @ 0x0808FBB4
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0808F974
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808FBC4
sub_0808FBC4: @ 0x0808FBC4
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _0808FBE0 @ =0x68736D53
	cmp r3, r0
	bne _0808FBDC
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	ldr r0, _0808FBE4 @ =0x00000101
	strh r0, [r2, #0x28]
_0808FBDC:
	pop {r0}
	bx r0
	.align 2, 0
_0808FBE0: .4byte 0x68736D53
_0808FBE4: .4byte 0x00000101

	thumb_func_start sub_0808FBE8
sub_0808FBE8: @ 0x0808FBE8
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _0808FC0C @ =0x68736D53
	cmp r3, r0
	bne _0808FC08
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #2
	strh r0, [r2, #0x28]
	ldr r0, [r2, #4]
	ldr r1, _0808FC10 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_0808FC08:
	pop {r0}
	bx r0
	.align 2, 0
_0808FC0C: .4byte 0x68736D53
_0808FC10: .4byte 0x7FFFFFFF

	thumb_func_start sub_0808FC14
sub_0808FC14: @ 0x0808FC14
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	ldr r1, [r7, #0x34]
	ldr r0, _0808FC78 @ =0x68736D53
	cmp r1, r0
	bne _0808FC6E
	adds r0, r1, #1
	str r0, [r7, #0x34]
	ldrb r5, [r7, #8]
	ldr r4, [r7, #0x2c]
	cmp r5, #0
	ble _0808FC6A
	movs r2, #0x80
_0808FC30:
	ldrb r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0808FC62
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0808FC62
	adds r0, r4, #0
	str r2, [sp]
	bl sub_0808FDAC
	ldr r2, [sp]
	strb r2, [r4]
	movs r0, #2
	strb r0, [r4, #0xf]
	strb r6, [r4, #0x13]
	movs r0, #0x16
	strb r0, [r4, #0x19]
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #1
	strb r0, [r1]
_0808FC62:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _0808FC30
_0808FC6A:
	ldr r0, _0808FC78 @ =0x68736D53
	str r0, [r7, #0x34]
_0808FC6E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808FC78: .4byte 0x68736D53

	thumb_func_start sub_0808FC7C
sub_0808FC7C: @ 0x0808FC7C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0808FD44 @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	ldr r3, _0808FD48 @ =0x04000080
	movs r2, #0
	strh r2, [r3]
	ldr r0, _0808FD4C @ =0x04000063
	movs r1, #8
	strb r1, [r0]
	adds r0, #6
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0x14
	movs r1, #0x80
	strb r1, [r0]
	adds r0, #8
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0xd
	strb r2, [r0]
	movs r0, #0x77
	strb r0, [r3]
	ldr r0, _0808FD50 @ =gUnknown_03007FF0
	ldr r4, [r0]
	ldr r6, [r4]
	ldr r0, _0808FD54 @ =0x68736D53
	cmp r6, r0
	bne _0808FD3C
	adds r0, r6, #1
	str r0, [r4]
	ldr r1, _0808FD58 @ =gUnknown_03002AD0
	ldr r0, _0808FD5C @ =sub_08090CF4
	str r0, [r1, #0x20]
	ldr r0, _0808FD60 @ =ply_lfos
	str r0, [r1, #0x44]
	ldr r0, _0808FD64 @ =ply_mod
	str r0, [r1, #0x4c]
	ldr r0, _0808FD68 @ =sub_08090E4C
	str r0, [r1, #0x70]
	ldr r0, _0808FD6C @ =ply_endtie
	str r0, [r1, #0x74]
	ldr r0, _0808FD70 @ =sub_0808FEB8
	str r0, [r1, #0x78]
	ldr r0, _0808FD74 @ =TrackStop
	str r0, [r1, #0x7c]
	adds r2, r1, #0
	adds r2, #0x80
	ldr r0, _0808FD78 @ =sub_08090320
	str r0, [r2]
	adds r1, #0x84
	ldr r0, _0808FD7C @ =sub_080903E8
	str r0, [r1]
	str r5, [r4, #0x1c]
	ldr r0, _0808FD80 @ =sub_08090600
	str r0, [r4, #0x28]
	ldr r0, _0808FD84 @ =sub_08090544
	str r0, [r4, #0x2c]
	ldr r0, _0808FD88 @ =sub_0809049C
	str r0, [r4, #0x30]
	ldr r0, _0808FD8C @ =0x00000000
	movs r1, #0
	strb r0, [r4, #0xc]
	str r1, [sp]
	ldr r2, _0808FD90 @ =0x05000040
	mov r0, sp
	adds r1, r5, #0
	bl sub_08090F78
	movs r0, #1
	strb r0, [r5, #1]
	movs r0, #0x11
	strb r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x41
	movs r0, #2
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x22
	strb r0, [r1]
	adds r1, #0x25
	movs r0, #3
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x44
	strb r0, [r1]
	adds r1, #0x24
	movs r0, #4
	strb r0, [r1, #1]
	movs r0, #0x88
	strb r0, [r1, #0x1c]
	str r6, [r4]
_0808FD3C:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808FD44: .4byte 0x04000084
_0808FD48: .4byte 0x04000080
_0808FD4C: .4byte 0x04000063
_0808FD50: .4byte gUnknown_03007FF0
_0808FD54: .4byte 0x68736D53
_0808FD58: .4byte gUnknown_03002AD0
_0808FD5C: .4byte sub_08090CF4
_0808FD60: .4byte ply_lfos
_0808FD64: .4byte ply_mod
_0808FD68: .4byte sub_08090E4C
_0808FD6C: .4byte ply_endtie
_0808FD70: .4byte sub_0808FEB8
_0808FD74: .4byte TrackStop
_0808FD78: .4byte sub_08090320
_0808FD7C: .4byte sub_080903E8
_0808FD80: .4byte sub_08090600
_0808FD84: .4byte sub_08090544
_0808FD88: .4byte sub_0809049C
_0808FD8C: .4byte 0x00000000
_0808FD90: .4byte 0x05000040

	thumb_func_start sub_0808FD94
sub_0808FD94: @ 0x0808FD94
	svc #0x2a
	bx lr

	thumb_func_start sub_0808FD98
sub_0808FD98: @ 0x0808FD98
	push {lr}
	ldr r1, _0808FDA8 @ =gUnknown_03002B58
	ldr r1, [r1]
	bl sub_08091938
	pop {r0}
	bx r0
	.align 2, 0
_0808FDA8: .4byte gUnknown_03002B58

	thumb_func_start sub_0808FDAC
sub_0808FDAC: @ 0x0808FDAC
	push {lr}
	ldr r1, _0808FDBC @ =gUnknown_03002B5C
	ldr r1, [r1]
	bl sub_08091938
	pop {r0}
	bx r0
	.align 2, 0
_0808FDBC: .4byte gUnknown_03002B5C

	thumb_func_start sub_0808FDC0
sub_0808FDC0: @ 0x0808FDC0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r3, #0
	str r3, [r5]
	ldr r1, _0808FE78 @ =0x040000C4
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x12
	ands r0, r2
	cmp r0, #0
	beq _0808FDDC
	ldr r0, _0808FE7C @ =0x84400004
	str r0, [r1]
_0808FDDC:
	ldr r1, _0808FE80 @ =0x040000D0
	ldr r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _0808FDEA
	ldr r0, _0808FE7C @ =0x84400004
	str r0, [r1]
_0808FDEA:
	ldr r0, _0808FE84 @ =0x040000C6
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldr r1, _0808FE88 @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	subs r1, #2
	ldr r2, _0808FE8C @ =0x0000A90E
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _0808FE90 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0808FE94 @ =0x040000BC
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _0808FE98 @ =0x040000A0
	str r0, [r1]
	adds r1, #8
	movs r2, #0x98
	lsls r2, r2, #4
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _0808FE9C @ =0x040000A4
	str r0, [r1]
	ldr r0, _0808FEA0 @ =gUnknown_03007FF0
	str r5, [r0]
	str r3, [sp]
	ldr r2, _0808FEA4 @ =0x050003EC
	mov r0, sp
	adds r1, r5, #0
	bl sub_08090F78
	movs r0, #8
	strb r0, [r5, #6]
	movs r0, #0xf
	strb r0, [r5, #7]
	ldr r0, _0808FEA8 @ =ply_note
	str r0, [r5, #0x38]
	ldr r0, _0808FEAC @ =sub_08090F6C
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x3c]
	ldr r4, _0808FEB0 @ =gUnknown_03002AD0
	adds r0, r4, #0
	bl MPlayJumpTableCopy
	str r4, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl sub_0808FEB8
	ldr r0, _0808FEB4 @ =0x68736D53
	str r0, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808FE78: .4byte 0x040000C4
_0808FE7C: .4byte 0x84400004
_0808FE80: .4byte 0x040000D0
_0808FE84: .4byte 0x040000C6
_0808FE88: .4byte 0x04000084
_0808FE8C: .4byte 0x0000A90E
_0808FE90: .4byte 0x04000089
_0808FE94: .4byte 0x040000BC
_0808FE98: .4byte 0x040000A0
_0808FE9C: .4byte 0x040000A4
_0808FEA0: .4byte gUnknown_03007FF0
_0808FEA4: .4byte 0x050003EC
_0808FEA8: .4byte ply_note
_0808FEAC: .4byte sub_08090F6C
_0808FEB0: .4byte gUnknown_03002AD0
_0808FEB4: .4byte 0x68736D53

	thumb_func_start sub_0808FEB8
sub_0808FEB8: @ 0x0808FEB8
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0809000C
	ldr r0, _0808FF10 @ =gUnknown_03007FF0
	ldr r5, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r4
	lsrs r4, r0, #0x10
	strb r4, [r5, #8]
	ldr r1, _0808FF14 @ =gUnknown_08119AF0
	subs r0, r4, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r4, [r0]
	str r4, [r5, #0x10]
	movs r0, #0xc6
	lsls r0, r0, #3
	adds r1, r4, #0
	bl sub_08091970
	strb r0, [r5, #0xb]
	ldr r0, _0808FF18 @ =0x00091D1B
	muls r0, r4, r0
	ldr r1, _0808FF1C @ =0x00001388
	adds r0, r0, r1
	ldr r1, _0808FF20 @ =0x00002710
	bl sub_08091970
	adds r1, r0, #0
	str r1, [r5, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl sub_08091970
	adds r0, #1
	asrs r0, r0, #1
	str r0, [r5, #0x18]
	bl sub_0809008C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808FF10: .4byte gUnknown_03007FF0
_0808FF14: .4byte gUnknown_08119AF0
_0808FF18: .4byte 0x00091D1B
_0808FF1C: .4byte 0x00001388
_0808FF20: .4byte 0x00002710

	thumb_func_start sub_0808FF24
sub_0808FF24: @ 0x0808FF24
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0808FFAC @ =gUnknown_03007FF0
	ldr r4, [r0]
	ldr r1, [r4]
	ldr r0, _0808FFB0 @ =0x68736D53
	cmp r1, r0
	bne _0808FFA6
	adds r0, r1, #1
	str r0, [r4]
	movs r3, #0xff
	ands r3, r5
	cmp r3, #0
	beq _0808FF46
	movs r0, #0x7f
	ands r3, r0
	strb r3, [r4, #5]
_0808FF46:
	movs r3, #0xf0
	lsls r3, r3, #4
	ands r3, r5
	cmp r3, #0
	beq _0808FF66
	lsrs r0, r3, #8
	strb r0, [r4, #6]
	movs r3, #0xc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
_0808FF5C:
	strb r1, [r0]
	subs r3, #1
	adds r0, #0x40
	cmp r3, #0
	bne _0808FF5C
_0808FF66:
	movs r3, #0xf0
	lsls r3, r3, #8
	ands r3, r5
	cmp r3, #0
	beq _0808FF74
	lsrs r0, r3, #0xc
	strb r0, [r4, #7]
_0808FF74:
	movs r3, #0xb0
	lsls r3, r3, #0x10
	ands r3, r5
	cmp r3, #0
	beq _0808FF92
	movs r0, #0xc0
	lsls r0, r0, #0xe
	ands r0, r3
	lsrs r3, r0, #0xe
	ldr r2, _0808FFB4 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
_0808FF92:
	movs r3, #0xf0
	lsls r3, r3, #0xc
	ands r3, r5
	cmp r3, #0
	beq _0808FFA2
	adds r0, r3, #0
	bl sub_0808FEB8
_0808FFA2:
	ldr r0, _0808FFB0 @ =0x68736D53
	str r0, [r4]
_0808FFA6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808FFAC: .4byte gUnknown_03007FF0
_0808FFB0: .4byte 0x68736D53
_0808FFB4: .4byte 0x04000089

	thumb_func_start sub_0808FFB8
sub_0808FFB8: @ 0x0808FFB8
	push {r4, r5, r6, r7, lr}
	ldr r0, _08090004 @ =gUnknown_03007FF0
	ldr r6, [r0]
	ldr r1, [r6]
	ldr r0, _08090008 @ =0x68736D53
	cmp r1, r0
	bne _0808FFFE
	adds r0, r1, #1
	str r0, [r6]
	movs r5, #0xc
	adds r4, r6, #0
	adds r4, #0x50
	movs r0, #0
_0808FFD2:
	strb r0, [r4]
	subs r5, #1
	adds r4, #0x40
	cmp r5, #0
	bgt _0808FFD2
	ldr r4, [r6, #0x1c]
	cmp r4, #0
	beq _0808FFFA
	movs r5, #1
	movs r7, #0
_0808FFE6:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r6, #0x2c]
	bl sub_08091938
	strb r7, [r4]
	adds r5, #1
	adds r4, #0x40
	cmp r5, #4
	ble _0808FFE6
_0808FFFA:
	ldr r0, _08090008 @ =0x68736D53
	str r0, [r6]
_0808FFFE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08090004: .4byte gUnknown_03007FF0
_08090008: .4byte 0x68736D53

	thumb_func_start sub_0809000C
sub_0809000C: @ 0x0809000C
	push {lr}
	sub sp, #4
	ldr r0, _08090070 @ =gUnknown_03007FF0
	ldr r2, [r0]
	ldr r1, [r2]
	ldr r3, _08090074 @ =0x978C92AD
	adds r0, r1, r3
	cmp r0, #1
	bhi _0809006A
	adds r0, r1, #0
	adds r0, #0xa
	str r0, [r2]
	ldr r1, _08090078 @ =0x04000102
	movs r0, #0
	strh r0, [r1]
	subs r1, #0x3e
	ldr r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #0x12
	ands r0, r3
	cmp r0, #0
	beq _0809003C
	ldr r0, _0809007C @ =0x84400004
	str r0, [r1]
_0809003C:
	ldr r1, _08090080 @ =0x040000D0
	ldr r0, [r1]
	ands r0, r3
	cmp r0, #0
	beq _0809004A
	ldr r0, _0809007C @ =0x84400004
	str r0, [r1]
_0809004A:
	ldr r0, _08090084 @ =0x040000C6
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	movs r0, #0
	str r0, [sp]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r2, _08090088 @ =0x05000318
	mov r0, sp
	bl sub_08090F78
_0809006A:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08090070: .4byte gUnknown_03007FF0
_08090074: .4byte 0x978C92AD
_08090078: .4byte 0x04000102
_0809007C: .4byte 0x84400004
_08090080: .4byte 0x040000D0
_08090084: .4byte 0x040000C6
_08090088: .4byte 0x05000318

	thumb_func_start sub_0809008C
sub_0809008C: @ 0x0809008C
	push {r4, lr}
	ldr r0, _080900E8 @ =gUnknown_03007FF0
	ldr r2, [r0]
	ldr r3, [r2]
	ldr r0, _080900EC @ =0x68736D53
	cmp r3, r0
	beq _080900E0
	ldr r0, _080900F0 @ =0x040000C6
	movs r4, #0xb6
	lsls r4, r4, #8
	adds r1, r4, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldrb r0, [r2, #4]
	movs r0, #0
	strb r0, [r2, #4]
	adds r0, r3, #0
	subs r0, #0xa
	str r0, [r2]
	ldr r3, _080900F4 @ =0x04000006
	ldrb r0, [r3]
	ldr r1, [r2, #0x10]
	cmp r0, #0x9f
	bne _080900C6
	adds r2, r3, #0
_080900C0:
	ldrb r0, [r2]
	cmp r0, #0x9f
	beq _080900C0
_080900C6:
	ldr r2, _080900F4 @ =0x04000006
_080900C8:
	ldrb r0, [r2]
	cmp r0, #0x9f
	bne _080900C8
	ldr r4, _080900F8 @ =0x04000100
	ldr r0, _080900FC @ =0x00044940
	bl sub_08091970
	rsbs r0, r0, #0
	strh r0, [r4]
	ldr r1, _08090100 @ =0x04000102
	movs r0, #0x80
	strh r0, [r1]
_080900E0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080900E8: .4byte gUnknown_03007FF0
_080900EC: .4byte 0x68736D53
_080900F0: .4byte 0x040000C6
_080900F4: .4byte 0x04000006
_080900F8: .4byte 0x04000100
_080900FC: .4byte 0x00044940
_08090100: .4byte 0x04000102

	thumb_func_start sub_08090104
sub_08090104: @ 0x08090104
	push {lr}
	ldr r0, _08090168 @ =gUnknown_03007FF0
	ldr r2, [r0]
	ldr r0, [r2]
	ldr r1, _0809016C @ =0x978C92AD
	adds r0, r0, r1
	cmp r0, #1
	bhi _08090162
	ldrb r0, [r2, #4]
	subs r0, #1
	ldrb r1, [r2, #4]
	strb r0, [r2, #4]
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08090162
	ldrb r0, [r2, #0xb]
	ldrb r1, [r2, #4]
	strb r0, [r2, #4]
	ldr r1, _08090170 @ =0x040000C4
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x12
	ands r0, r2
	cmp r0, #0
	beq _0809013C
	ldr r0, _08090174 @ =0x84400004
	str r0, [r1]
_0809013C:
	ldr r1, _08090178 @ =0x040000D0
	ldr r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _0809014A
	ldr r0, _08090174 @ =0x84400004
	str r0, [r1]
_0809014A:
	ldr r2, _0809017C @ =0x040000C6
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	strh r0, [r2]
	ldr r1, _08090180 @ =0x040000D2
	strh r0, [r1]
	movs r3, #0xb6
	lsls r3, r3, #8
	adds r0, r3, #0
	strh r0, [r2]
	strh r0, [r1]
_08090162:
	pop {r0}
	bx r0
	.align 2, 0
_08090168: .4byte gUnknown_03007FF0
_0809016C: .4byte 0x978C92AD
_08090170: .4byte 0x040000C4
_08090174: .4byte 0x84400004
_08090178: .4byte 0x040000D0
_0809017C: .4byte 0x040000C6
_08090180: .4byte 0x040000D2

	thumb_func_start sub_08090184
sub_08090184: @ 0x08090184
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r4, #0
	beq _080901E8
	cmp r4, #0x10
	bls _08090198
	movs r4, #0x10
_08090198:
	ldr r0, _080901F0 @ =gUnknown_03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _080901F4 @ =0x68736D53
	cmp r1, r0
	bne _080901E8
	adds r0, r1, #1
	str r0, [r5]
	adds r0, r7, #0
	bl sub_0808FDAC
	str r6, [r7, #0x2c]
	strb r4, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	cmp r4, #0
	beq _080901CC
	movs r1, #0
_080901BE:
	strb r1, [r6]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, #0x50
	cmp r4, #0
	bne _080901BE
_080901CC:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _080901DC
	str r0, [r7, #0x38]
	ldr r0, [r5, #0x24]
	str r0, [r7, #0x3c]
	movs r0, #0
	str r0, [r5, #0x20]
_080901DC:
	str r7, [r5, #0x24]
	ldr r0, _080901F8 @ =MPlayMain
	str r0, [r5, #0x20]
	ldr r0, _080901F4 @ =0x68736D53
	str r0, [r5]
	str r0, [r7, #0x34]
_080901E8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080901F0: .4byte gUnknown_03007FF0
_080901F4: .4byte 0x68736D53
_080901F8: .4byte MPlayMain

	thumb_func_start sub_080901FC
sub_080901FC: @ 0x080901FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, [r5, #0x34]
	ldr r0, _080902DC @ =0x68736D53
	cmp r1, r0
	bne _080902D0
	adds r0, r1, #1
	str r0, [r5, #0x34]
	ldrb r0, [r5, #0xb]
	ldrb r2, [r7, #2]
	cmp r0, #0
	beq _08090242
	ldr r0, [r5]
	cmp r0, #0
	beq _0809022C
	ldr r0, [r5, #0x2c]
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08090238
_0809022C:
	ldr r1, [r5, #4]
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _08090242
	cmp r1, #0
	blt _08090242
_08090238:
	ldrb r0, [r7, #2]
	ldrb r1, [r5, #9]
	adds r2, r0, #0
	cmp r1, r2
	bhi _080902CC
_08090242:
	movs r1, #0
	str r1, [r5, #4]
	str r7, [r5]
	ldr r0, [r7, #4]
	str r0, [r5, #0x30]
	strb r2, [r5, #9]
	str r1, [r5, #0xc]
	movs r0, #0x96
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x20]
	adds r0, #0x6a
	strh r0, [r5, #0x1e]
	strh r1, [r5, #0x22]
	strh r1, [r5, #0x24]
	movs r6, #0
	ldr r4, [r5, #0x2c]
	ldrb r0, [r7]
	cmp r6, r0
	bge _0809029C
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _080902BC
	mov r8, r6
_08090270:
	adds r0, r5, #0
	adds r1, r4, #0
	bl TrackStop
	movs r0, #0xc0
	strb r0, [r4]
	mov r0, r8
	str r0, [r4, #0x20]
	lsls r1, r6, #2
	adds r0, r7, #0
	adds r0, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x40]
	adds r6, #1
	adds r4, #0x50
	ldrb r0, [r7]
	cmp r6, r0
	bge _0809029C
	ldrb r0, [r5, #8]
	cmp r6, r0
	blt _08090270
_0809029C:
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _080902BC
	movs r0, #0
	mov r8, r0
_080902A6:
	adds r0, r5, #0
	adds r1, r4, #0
	bl TrackStop
	mov r0, r8
	strb r0, [r4]
	adds r6, #1
	adds r4, #0x50
	ldrb r0, [r5, #8]
	cmp r6, r0
	blt _080902A6
_080902BC:
	ldrb r1, [r7, #3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080902CC
	ldrb r0, [r7, #3]
	bl sub_0808FF24
_080902CC:
	ldr r0, _080902DC @ =0x68736D53
	str r0, [r5, #0x34]
_080902D0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080902DC: .4byte 0x68736D53

	thumb_func_start sub_080902E0
sub_080902E0: @ 0x080902E0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x34]
	ldr r0, _0809031C @ =0x68736D53
	cmp r1, r0
	bne _08090316
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r6, #4]
	ldrb r4, [r6, #8]
	ldr r5, [r6, #0x2c]
	cmp r4, #0
	ble _08090312
_08090302:
	adds r0, r6, #0
	adds r1, r5, #0
	bl TrackStop
	subs r4, #1
	adds r5, #0x50
	cmp r4, #0
	bgt _08090302
_08090312:
	ldr r0, _0809031C @ =0x68736D53
	str r0, [r6, #0x34]
_08090316:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809031C: .4byte 0x68736D53

	thumb_func_start sub_08090320
sub_08090320: @ 0x08090320
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r1, [r6, #0x24]
	cmp r1, #0
	beq _080903E2
	ldrh r0, [r6, #0x26]
	subs r0, #1
	strh r0, [r6, #0x26]
	ldr r3, _08090360 @ =0x0000FFFF
	adds r2, r3, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _080903E2
	strh r1, [r6, #0x26]
	ldrh r1, [r6, #0x28]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08090364
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	cmp r0, #0xff
	bls _080903B6
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x28]
	strh r3, [r6, #0x24]
	b _080903B6
	.align 2, 0
_08090360: .4byte 0x0000FFFF
_08090364:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080903B6
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _08090396
_0809037A:
	adds r0, r6, #0
	adds r1, r4, #0
	bl TrackStop
	ldrh r0, [r6, #0x28]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _0809038E
	strb r1, [r4]
_0809038E:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _0809037A
_08090396:
	ldrh r1, [r6, #0x28]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080903AA
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	b _080903AE
_080903AA:
	movs r0, #0x80
	lsls r0, r0, #0x18
_080903AE:
	str r0, [r6, #4]
	movs r0, #0
	strh r0, [r6, #0x24]
	b _080903E2
_080903B6:
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _080903E2
	movs r3, #0x80
	movs r7, #0
	movs r2, #3
_080903C4:
	ldrb r1, [r4]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080903DA
	ldrh r0, [r6, #0x28]
	lsrs r0, r0, #2
	strb r0, [r4, #0x13]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r4]
_080903DA:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _080903C4
_080903E2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080903E8
sub_080903E8: @ 0x080903E8
	push {r4, lr}
	adds r2, r1, #0
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0809044A
	ldrb r0, [r2, #0x12]
	ldrb r1, [r2, #0x13]
	muls r0, r1, r0
	lsrs r3, r0, #5
	ldrb r4, [r2, #0x18]
	cmp r4, #1
	bne _0809040E
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r3, r0, #7
_0809040E:
	movs r0, #0x14
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r1, #0x15
	ldrsb r1, [r2, r1]
	adds r1, r0, r1
	cmp r4, #2
	bne _08090424
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
_08090424:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08090430
	adds r1, r0, #0
	b _08090436
_08090430:
	cmp r1, #0x7f
	ble _08090436
	movs r1, #0x7f
_08090436:
	adds r0, r1, #0
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x10]
	movs r0, #0x7f
	subs r0, r0, r1
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x11]
_0809044A:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _0809048E
	movs r1, #0xe
	ldrsb r1, [r2, r1]
	ldrb r0, [r2, #0xf]
	muls r0, r1, r0
	movs r1, #0xc
	ldrsb r1, [r2, r1]
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r0, #0xa
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #0xb
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	adds r1, r1, r0
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _08090488
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	lsls r0, r0, #4
	adds r1, r1, r0
_08090488:
	asrs r0, r1, #8
	strb r0, [r2, #8]
	strb r1, [r2, #9]
_0809048E:
	movs r0, #0xfa
	ands r0, r3
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809049C
sub_0809049C: @ 0x0809049C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov ip, r2
	cmp r0, #4
	bne _080904D4
	cmp r5, #0x14
	bhi _080904B8
	movs r5, #0
	b _080904C6
_080904B8:
	adds r0, r5, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _080904C6
	movs r5, #0x3b
_080904C6:
	ldr r0, _080904D0 @ =gUnknown_08119BA4
	adds r0, r5, r0
	ldrb r0, [r0]
	b _08090536
	.align 2, 0
_080904D0: .4byte gUnknown_08119BA4
_080904D4:
	cmp r5, #0x23
	bhi _080904E0
	movs r0, #0
	mov ip, r0
	movs r5, #0
	b _080904F2
_080904E0:
	adds r0, r5, #0
	subs r0, #0x24
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x82
	bls _080904F2
	movs r5, #0x82
	movs r1, #0xff
	mov ip, r1
_080904F2:
	ldr r3, _0809053C @ =gUnknown_08119B08
	adds r0, r5, r3
	ldrb r6, [r0]
	ldr r4, _08090540 @ =gUnknown_08119B8C
	movs r2, #0xf
	adds r0, r6, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r7, #0
	ldrsh r1, [r0, r7]
	asrs r0, r6, #4
	adds r6, r1, #0
	asrs r6, r0
	adds r0, r5, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r1, r1, #4
	asrs r0, r1
	subs r0, r0, r6
	mov r7, ip
	muls r7, r0, r7
	adds r0, r7, #0
	asrs r0, r0, #8
	adds r0, r6, r0
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
_08090536:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809053C: .4byte gUnknown_08119B08
_08090540: .4byte gUnknown_08119B8C

	thumb_func_start sub_08090544
sub_08090544: @ 0x08090544
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #2
	beq _08090570
	cmp r0, #2
	bgt _0809055A
	cmp r0, #1
	beq _08090560
	b _08090584
_0809055A:
	cmp r1, #3
	beq _08090578
	b _08090584
_08090560:
	ldr r1, _0809056C @ =0x04000063
	movs r0, #8
	strb r0, [r1]
	adds r1, #2
	b _0809058C
	.align 2, 0
_0809056C: .4byte 0x04000063
_08090570:
	ldr r1, _08090574 @ =0x04000069
	b _08090586
	.align 2, 0
_08090574: .4byte 0x04000069
_08090578:
	ldr r1, _08090580 @ =0x04000070
	movs r0, #0
	b _0809058E
	.align 2, 0
_08090580: .4byte 0x04000070
_08090584:
	ldr r1, _08090594 @ =0x04000079
_08090586:
	movs r0, #8
	strb r0, [r1]
	adds r1, #4
_0809058C:
	movs r0, #0x80
_0809058E:
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08090594: .4byte 0x04000079

	thumb_func_start sub_08090598
sub_08090598: @ 0x08090598
	push {r4, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #2]
	ldrb r1, [r2, #3]
	lsls r3, r0, #0x18
	lsrs r4, r3, #0x18
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	cmp r4, r1
	blo _080905B8
	lsrs r0, r3, #0x19
	cmp r0, r1
	blo _080905C4
	movs r0, #0xf
	strb r0, [r2, #0x1b]
	b _080905D2
_080905B8:
	lsrs r0, r0, #0x19
	cmp r0, r4
	blo _080905C4
	movs r0, #0xf0
	strb r0, [r2, #0x1b]
	b _080905D2
_080905C4:
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldrb r0, [r2, #2]
	ldrb r1, [r2, #3]
	adds r0, r0, r1
	lsrs r0, r0, #4
	b _080905E2
_080905D2:
	ldrb r0, [r2, #2]
	ldrb r1, [r2, #3]
	adds r0, r0, r1
	lsrs r0, r0, #4
	strb r0, [r2, #0xa]
	cmp r0, #0xf
	bls _080905E4
	movs r0, #0xf
_080905E2:
	strb r0, [r2, #0xa]
_080905E4:
	ldrb r1, [r2, #0xa]
	ldrb r0, [r2, #6]
	muls r0, r1, r0
	adds r0, #0xf
	asrs r0, r0, #4
	strb r0, [r2, #0x19]
	ldrb r1, [r2, #0x1b]
	ldrb r0, [r2, #0x1c]
	ands r0, r1
	strb r0, [r2, #0x1b]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08090600
sub_08090600: @ 0x08090600
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r0, _08090620 @ =gUnknown_03007FF0
	ldr r0, [r0]
	str r0, [sp, #8]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _08090624
	subs r0, #1
	ldr r1, [sp, #8]
	strb r0, [r1, #0xa]
	b _0809062A
	.align 2, 0
_08090620: .4byte gUnknown_03007FF0
_08090624:
	movs r0, #0xe
	ldr r3, [sp, #8]
	strb r0, [r3, #0xa]
_0809062A:
	movs r6, #1
	ldr r0, [sp, #8]
	ldr r4, [r0, #0x1c]
	mov r1, sp
	str r1, [sp, #0x1c]
_08090634:
	ldrb r1, [r4]
	movs r0, #0xc7
	ands r0, r1
	adds r3, r6, #1
	mov sl, r3
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	bne _0809064A
	b _08090A66
_0809064A:
	cmp r6, #2
	beq _08090680
	cmp r6, #2
	bgt _08090658
	cmp r6, #1
	beq _0809065E
	b _080906C8
_08090658:
	cmp r6, #3
	beq _080906A4
	b _080906C8
_0809065E:
	ldr r3, _08090674 @ =0x04000060
	str r3, [sp, #0xc]
	adds r3, #2
	ldr r0, _08090678 @ =0x04000063
	str r0, [sp, #0x10]
	ldr r1, _0809067C @ =0x04000064
	str r1, [sp, #0x14]
	adds r0, #2
	str r0, [sp, #0x18]
	movs r0, #0
	b _080906DC
	.align 2, 0
_08090674: .4byte 0x04000060
_08090678: .4byte 0x04000063
_0809067C: .4byte 0x04000064
_08090680:
	ldr r3, _08090698 @ =0x04000061
	str r3, [sp, #0xc]
	adds r3, #7
	ldr r0, _0809069C @ =0x04000069
	str r0, [sp, #0x10]
	ldr r1, _080906A0 @ =0x0400006C
	str r1, [sp, #0x14]
	adds r0, #4
	str r0, [sp, #0x18]
	movs r0, #1
	b _080906DC
	.align 2, 0
_08090698: .4byte 0x04000061
_0809069C: .4byte 0x04000069
_080906A0: .4byte 0x0400006C
_080906A4:
	ldr r3, _080906BC @ =0x04000070
	str r3, [sp, #0xc]
	adds r3, #2
	ldr r0, _080906C0 @ =0x04000073
	str r0, [sp, #0x10]
	ldr r1, _080906C4 @ =0x04000074
	str r1, [sp, #0x14]
	adds r0, #2
	str r0, [sp, #0x18]
	movs r0, #2
	b _080906DC
	.align 2, 0
_080906BC: .4byte 0x04000070
_080906C0: .4byte 0x04000073
_080906C4: .4byte 0x04000074
_080906C8:
	ldr r3, _08090730 @ =0x04000071
	str r3, [sp, #0xc]
	adds r3, #7
	ldr r0, _08090734 @ =0x04000079
	str r0, [sp, #0x10]
	ldr r1, _08090738 @ =0x0400007C
	str r1, [sp, #0x14]
	adds r0, #4
	str r0, [sp, #0x18]
	movs r0, #3
_080906DC:
	ldr r1, [sp, #0x1c]
	strb r0, [r1]
	ldr r0, [sp, #8]
	ldrb r0, [r0, #0xa]
	str r0, [sp, #4]
	ldr r1, [sp, #0x10]
	ldrb r0, [r1]
	mov r8, r0
	ldrb r2, [r4]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _080907D6
	movs r7, #0x40
	adds r0, r7, #0
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	mov sl, r0
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r5, #0
	beq _08090710
	b _0809080C
_08090710:
	movs r0, #3
	strb r0, [r4]
	strb r0, [r4, #0x1d]
	adds r0, r4, #0
	str r3, [sp, #0x20]
	bl sub_08090598
	ldr r3, [sp, #0x20]
	cmp r6, #2
	beq _08090748
	cmp r6, #2
	bgt _0809073C
	cmp r6, #1
	beq _08090742
	b _0809079C
	.align 2, 0
_08090730: .4byte 0x04000071
_08090734: .4byte 0x04000079
_08090738: .4byte 0x0400007C
_0809073C:
	cmp r6, #3
	beq _08090754
	b _0809079C
_08090742:
	ldrb r0, [r4, #0x1f]
	ldr r1, [sp, #0xc]
	strb r0, [r1]
_08090748:
	ldr r0, [r4, #0x24]
	lsls r0, r0, #6
	ldrb r1, [r4, #0x1e]
	adds r0, r0, r1
	strb r0, [r3]
	b _080907A8
_08090754:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	beq _0809077C
	ldr r0, [sp, #0xc]
	strb r7, [r0]
	ldr r1, _08090790 @ =0x04000090
	ldr r2, [r4, #0x24]
	ldr r0, [r2]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #4]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #8]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #0xc]
	str r0, [r1]
	str r2, [r4, #0x28]
_0809077C:
	ldr r1, [sp, #0xc]
	strb r5, [r1]
	ldrb r0, [r4, #0x1e]
	strb r0, [r3]
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _08090794
	movs r0, #0xc0
	b _080907B6
	.align 2, 0
_08090790: .4byte 0x04000090
_08090794:
	movs r3, #0x80
	rsbs r3, r3, #0
	strb r3, [r4, #0x1a]
	b _080907B8
_0809079C:
	ldrb r0, [r4, #0x1e]
	strb r0, [r3]
	ldr r0, [r4, #0x24]
	lsls r0, r0, #3
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_080907A8:
	ldrb r0, [r4, #4]
	adds r0, #8
	mov r8, r0
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _080907B6
	movs r0, #0x40
_080907B6:
	strb r0, [r4, #0x1a]
_080907B8:
	ldrb r1, [r4, #4]
	movs r2, #0
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	adds r3, r6, #1
	mov sl, r3
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	bne _080907D2
	b _08090926
_080907D2:
	strb r2, [r4, #9]
	b _08090954
_080907D6:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	bne _080907F0
	ldr r0, _0809081C @ =0x04000084
	ldrb r1, [r0]
	ldr r3, [sp, #0x1c]
	ldrb r0, [r3]
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _08090820
_080907F0:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	adds r3, r6, #1
	mov sl, r3
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	ble _0809080C
	b _08090966
_0809080C:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_08090544
	movs r0, #0
	strb r0, [r4]
	b _08090A62
	.align 2, 0
_0809081C: .4byte 0x04000084
_08090820:
	movs r0, #0x40
	ands r0, r2
	adds r3, r6, #1
	mov sl, r3
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	beq _08090860
	movs r0, #3
	ands r0, r2
	cmp r0, #0
	beq _08090860
	movs r0, #0xfc
	ands r0, r2
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #7]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _08090892
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08090954
	ldrb r3, [r4, #7]
	mov r8, r3
	b _08090954
_08090860:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _08090954
	cmp r6, #3
	bne _08090872
	ldrb r1, [r4, #0x1d]
	movs r0, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
_08090872:
	adds r0, r4, #0
	bl sub_08090598
	ldrb r0, [r4]
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	bne _080908C4
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080908C0
_08090892:
	ldrb r1, [r4, #0xa]
	ldrb r0, [r4, #0xc]
	muls r0, r1, r0
	adds r0, #0xff
	asrs r0, r0, #8
	movs r1, #0
	strb r0, [r4, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0809080C
	ldrb r0, [r4]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08090966
	movs r3, #8
	mov r8, r3
	b _08090966
_080908C0:
	ldrb r0, [r4, #7]
	b _08090952
_080908C4:
	cmp r1, #1
	bne _080908D0
_080908C8:
	ldrb r0, [r4, #0x19]
	strb r0, [r4, #9]
	movs r0, #7
	b _08090952
_080908D0:
	cmp r1, #2
	bne _08090916
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x19
	ldrsb r1, [r4, r1]
	cmp r0, r1
	bgt _08090912
_080908EA:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _080908FA
	ldrb r1, [r4]
	movs r0, #0xfc
	ands r0, r1
	strb r0, [r4]
	b _08090892
_080908FA:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	ldrb r1, [r4, #0x1d]
	movs r0, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _080908C8
	movs r3, #8
	mov r8, r3
	b _080908C8
_08090912:
	ldrb r0, [r4, #5]
	b _08090952
_08090916:
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	ldrb r3, [r4, #0xa]
	cmp r0, r3
	blo _08090950
_08090926:
	ldrb r0, [r4]
	subs r0, #1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #5]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _080908EA
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #9]
	cmp r6, #3
	beq _08090954
	ldrb r0, [r4, #5]
	mov r8, r0
	b _08090954
_08090950:
	ldrb r0, [r4, #4]
_08090952:
	strb r0, [r4, #0xb]
_08090954:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	strb r0, [r4, #0xb]
	ldr r1, [sp, #4]
	cmp r1, #0
	bne _08090966
	subs r1, #1
	str r1, [sp, #4]
	b _08090860
_08090966:
	ldrb r1, [r4, #0x1d]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080909E0
	cmp r6, #3
	bgt _080909A6
	ldrb r1, [r4, #1]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080909A6
	ldr r0, _08090990 @ =0x04000089
	ldrb r0, [r0]
	adds r1, r0, #0
	cmp r1, #0x3f
	bgt _08090998
	ldr r0, [r4, #0x20]
	adds r0, #2
	ldr r1, _08090994 @ =0x000007FC
	b _080909A2
	.align 2, 0
_08090990: .4byte 0x04000089
_08090994: .4byte 0x000007FC
_08090998:
	cmp r1, #0x7f
	bgt _080909A6
	ldr r0, [r4, #0x20]
	adds r0, #1
	ldr r1, _080909B0 @ =0x000007FE
_080909A2:
	ands r0, r1
	str r0, [r4, #0x20]
_080909A6:
	cmp r6, #4
	beq _080909B4
	ldr r0, [r4, #0x20]
	b _080909C0
	.align 2, 0
_080909B0: .4byte 0x000007FE
_080909B4:
	ldr r1, [sp, #0x14]
	ldrb r0, [r1]
	movs r1, #8
	ands r1, r0
	ldr r0, [r4, #0x20]
	orrs r0, r1
_080909C0:
	ldr r3, [sp, #0x14]
	strb r0, [r3]
	ldrb r0, [r4, #0x1a]
	movs r1, #0xc0
	ands r1, r0
	ldr r0, [r4, #0x20]
	movs r2, #0xfc
	lsls r2, r2, #6
	ands r0, r2
	lsrs r0, r0, #8
	adds r1, r1, r0
	strb r1, [r4, #0x1a]
	movs r0, #0xff
	ands r1, r0
	ldr r3, [sp, #0x18]
	strb r1, [r3]
_080909E0:
	ldrb r1, [r4, #0x1d]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08090A62
	ldr r2, _08090A28 @ =0x04000081
	ldrb r1, [r4, #0x1c]
	ldrb r0, [r2]
	bics r0, r1
	ldrb r1, [r4, #0x1b]
	orrs r0, r1
	strb r0, [r2]
	cmp r6, #3
	bne _08090A30
	ldr r1, _08090A2C @ =gUnknown_08119BE0
	ldrb r0, [r4, #9]
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	ldrb r1, [r4, #0x1a]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08090A62
	ldr r3, [sp, #0xc]
	strb r2, [r3]
	ldrb r0, [r4, #0x1a]
	ldr r1, [sp, #0x18]
	strb r0, [r1]
	ldrb r1, [r4, #0x1a]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x1a]
	b _08090A62
	.align 2, 0
_08090A28: .4byte 0x04000081
_08090A2C: .4byte gUnknown_08119BE0
_08090A30:
	movs r0, #0xf
	mov r3, r8
	ands r3, r0
	mov r8, r3
	ldrb r0, [r4, #9]
	lsls r0, r0, #4
	add r0, r8
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	ldrb r0, [r4, #0x1a]
	movs r2, #0x80
	orrs r0, r2
	ldr r3, [sp, #0x18]
	strb r0, [r3]
	cmp r6, #1
	bne _08090A62
	ldr r0, [sp, #0xc]
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08090A62
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	strb r0, [r3]
_08090A62:
	movs r0, #0
	strb r0, [r4, #0x1d]
_08090A66:
	mov r6, sl
	mov r4, sb
	cmp r6, #4
	bgt _08090A70
	b _08090634
_08090A70:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08090A80
sub_08090A80: @ 0x08090A80
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08090AA0 @ =0x68736D53
	cmp r3, r0
	bne _08090A9C
	strh r1, [r2, #0x1e]
	ldrh r1, [r2, #0x1c]
	ldrh r0, [r2, #0x1e]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2, #0x20]
_08090A9C:
	pop {r0}
	bx r0
	.align 2, 0
_08090AA0: .4byte 0x68736D53

	thumb_func_start sub_08090AA4
sub_08090AA4: @ 0x08090AA4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _08090B08 @ =0x68736D53
	cmp r3, r0
	bne _08090AFC
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08090AF8
	movs r0, #0x80
	mov r8, r0
	lsrs r6, r6, #0x12
	movs r0, #3
	mov ip, r0
_08090AD4:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _08090AEE
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _08090AEE
	strb r6, [r1, #0x13]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_08090AEE:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08090AD4
_08090AF8:
	ldr r0, _08090B08 @ =0x68736D53
	str r0, [r4, #0x34]
_08090AFC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08090B08: .4byte 0x68736D53

	thumb_func_start sub_08090B0C
sub_08090B0C: @ 0x08090B0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _08090B7C @ =0x68736D53
	cmp r3, r0
	bne _08090B6E
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r3, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08090B6A
	movs r0, #0x80
	mov sb, r0
	lsls r0, r6, #0x10
	asrs r7, r0, #0x18
	movs r0, #0xc
	mov r8, r0
_08090B44:
	mov r0, ip
	ands r0, r5
	cmp r0, #0
	beq _08090B60
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _08090B60
	strb r7, [r3, #0xb]
	strb r6, [r3, #0xd]
	mov r0, r8
	orrs r0, r1
	strb r0, [r3]
_08090B60:
	subs r2, #1
	adds r3, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08090B44
_08090B6A:
	ldr r0, _08090B7C @ =0x68736D53
	str r0, [r4, #0x34]
_08090B6E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08090B7C: .4byte 0x68736D53

	thumb_func_start sub_08090B80
sub_08090B80: @ 0x08090B80
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r3, [r4, #0x34]
	ldr r0, _08090BE4 @ =0x68736D53
	cmp r3, r0
	bne _08090BD8
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08090BD4
	movs r0, #0x80
	mov r8, r0
	movs r0, #3
	mov ip, r0
_08090BB0:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _08090BCA
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _08090BCA
	strb r6, [r1, #0x15]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_08090BCA:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08090BB0
_08090BD4:
	ldr r0, _08090BE4 @ =0x68736D53
	str r0, [r4, #0x34]
_08090BD8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08090BE4: .4byte 0x68736D53

	thumb_func_start sub_08090BE8
sub_08090BE8: @ 0x08090BE8
	push {lr}
	adds r2, r0, #0
	movs r1, #0
	movs r0, #0
	strb r0, [r2, #0x1a]
	strb r0, [r2, #0x16]
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _08090C00
	ldrb r0, [r2]
	movs r1, #0xc
	b _08090C04
_08090C00:
	ldrb r0, [r2]
	movs r1, #3
_08090C04:
	orrs r0, r1
	strb r0, [r2]
	pop {r0}
	bx r0

	thumb_func_start sub_08090C0C
sub_08090C0C: @ 0x08090C0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _08090C7C @ =0x68736D53
	cmp r1, r0
	bne _08090C6C
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _08090C68
	mov sb, r8
_08090C3C:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _08090C5E
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08090C5E
	mov r0, r8
	strb r0, [r4, #0x17]
	mov r0, sb
	cmp r0, #0
	bne _08090C5E
	adds r0, r4, #0
	bl sub_08090BE8
_08090C5E:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _08090C3C
_08090C68:
	ldr r0, _08090C7C @ =0x68736D53
	str r0, [r6, #0x34]
_08090C6C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08090C7C: .4byte 0x68736D53

	thumb_func_start sub_08090C80
sub_08090C80: @ 0x08090C80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _08090CF0 @ =0x68736D53
	cmp r1, r0
	bne _08090CE0
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _08090CDC
	mov sb, r8
_08090CB0:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _08090CD2
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08090CD2
	mov r0, r8
	strb r0, [r4, #0x19]
	mov r0, sb
	cmp r0, #0
	bne _08090CD2
	adds r0, r4, #0
	bl sub_08090BE8
_08090CD2:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _08090CB0
_08090CDC:
	ldr r0, _08090CF0 @ =0x68736D53
	str r0, [r6, #0x34]
_08090CE0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08090CF0: .4byte 0x68736D53

	thumb_func_start sub_08090CF4
sub_08090CF4: @ 0x08090CF4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, [r6, #0x40]
	ldrb r5, [r0]
	adds r1, r0, #1
	str r1, [r6, #0x40]
	ldrb r2, [r0, #1]
	ldr r0, [r4, #0x18]
	adds r2, r0, r2
	adds r0, r1, #1
	str r0, [r6, #0x40]
	ldrb r3, [r1, #1]
	adds r0, #1
	str r0, [r6, #0x40]
	cmp r5, #0x11
	bls _08090D18
	b _08090E46
_08090D18:
	lsls r0, r5, #2
	ldr r1, _08090D24 @ =_08090D28
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08090D24: .4byte _08090D28
_08090D28: @ jump table
	.4byte _08090D70 @ case 0
	.4byte _08090D74 @ case 1
	.4byte _08090D7C @ case 2
	.4byte _08090D84 @ case 3
	.4byte _08090D8E @ case 4
	.4byte _08090D9C @ case 5
	.4byte _08090DAA @ case 6
	.4byte _08090DB2 @ case 7
	.4byte _08090DBA @ case 8
	.4byte _08090DC2 @ case 9
	.4byte _08090DCA @ case 10
	.4byte _08090DD2 @ case 11
	.4byte _08090DDA @ case 12
	.4byte _08090DE8 @ case 13
	.4byte _08090DF6 @ case 14
	.4byte _08090E04 @ case 15
	.4byte _08090E12 @ case 16
	.4byte _08090E20 @ case 17
_08090D70:
	strb r3, [r2]
	b _08090E46
_08090D74:
	ldrb r0, [r2]
	adds r0, r3, r0
	strb r0, [r2]
	b _08090E46
_08090D7C:
	ldrb r0, [r2]
	subs r0, r0, r3
	strb r0, [r2]
	b _08090E46
_08090D84:
	ldr r0, [r4, #0x18]
	adds r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r2]
	b _08090E46
_08090D8E:
	ldr r0, [r4, #0x18]
	adds r0, r0, r3
	ldrb r0, [r0]
	ldrb r1, [r2]
	adds r0, r0, r1
	strb r0, [r2]
	b _08090E46
_08090D9C:
	ldr r0, [r4, #0x18]
	adds r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	subs r1, r1, r0
	strb r1, [r2]
	b _08090E46
_08090DAA:
	ldrb r0, [r2]
	cmp r0, r3
	beq _08090E2C
	b _08090E40
_08090DB2:
	ldrb r0, [r2]
	cmp r0, r3
	bne _08090E2C
	b _08090E40
_08090DBA:
	ldrb r0, [r2]
	cmp r0, r3
	bhi _08090E2C
	b _08090E40
_08090DC2:
	ldrb r0, [r2]
	cmp r0, r3
	bhs _08090E2C
	b _08090E40
_08090DCA:
	ldrb r0, [r2]
	cmp r0, r3
	bls _08090E2C
	b _08090E40
_08090DD2:
	ldrb r0, [r2]
	cmp r0, r3
	blo _08090E2C
	b _08090E40
_08090DDA:
	ldr r0, [r4, #0x18]
	adds r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	beq _08090E2C
	b _08090E40
_08090DE8:
	ldr r0, [r4, #0x18]
	adds r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bne _08090E2C
	b _08090E40
_08090DF6:
	ldr r0, [r4, #0x18]
	adds r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bhi _08090E2C
	b _08090E40
_08090E04:
	ldr r0, [r4, #0x18]
	adds r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bhs _08090E2C
	b _08090E40
_08090E12:
	ldr r0, [r4, #0x18]
	adds r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bls _08090E2C
	b _08090E40
_08090E20:
	ldr r0, [r4, #0x18]
	adds r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bhs _08090E40
_08090E2C:
	ldr r0, _08090E3C @ =gUnknown_03002AD4
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0809193C
	b _08090E46
	.align 2, 0
_08090E3C: .4byte gUnknown_03002AD4
_08090E40:
	ldr r0, [r6, #0x40]
	adds r0, #4
	str r0, [r6, #0x40]
_08090E46:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08090E4C
sub_08090E4C: @ 0x08090E4C
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	ldr r2, _08090E68 @ =gUnknown_08119C24
	lsls r3, r3, #2
	adds r3, r3, r2
	ldr r2, [r3]
	bl sub_0809193C
	pop {r0}
	bx r0
	.align 2, 0
_08090E68: .4byte gUnknown_08119C24

	thumb_func_start sub_08090E6C
sub_08090E6C: @ 0x08090E6C
	push {lr}
	ldr r2, _08090E7C @ =gUnknown_03002AD0
	ldr r2, [r2]
	bl sub_0809193C
	pop {r0}
	bx r0
	.align 2, 0
_08090E7C: .4byte gUnknown_03002AD0

	thumb_func_start sub_08090E80
sub_08090E80: @ 0x08090E80
	push {r4, lr}
	ldr r3, [r1, #0x40]
	ldrb r2, [r3]
	ldr r0, _08090EB8 @ =0xFFFFFF00
	ands r4, r0
	orrs r4, r2
	ldrb r0, [r3, #1]
	lsls r0, r0, #8
	ldr r2, _08090EBC @ =0xFFFF00FF
	ands r4, r2
	orrs r4, r0
	ldrb r0, [r3, #2]
	lsls r0, r0, #0x10
	ldr r2, _08090EC0 @ =0xFF00FFFF
	ands r4, r2
	orrs r4, r0
	ldrb r0, [r3, #3]
	lsls r0, r0, #0x18
	ldr r2, _08090EC4 @ =0x00FFFFFF
	ands r4, r2
	orrs r4, r0
	str r4, [r1, #0x28]
	adds r3, #4
	str r3, [r1, #0x40]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08090EB8: .4byte 0xFFFFFF00
_08090EBC: .4byte 0xFFFF00FF
_08090EC0: .4byte 0xFF00FFFF
_08090EC4: .4byte 0x00FFFFFF

	thumb_func_start sub_08090EC8
sub_08090EC8: @ 0x08090EC8
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x24
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start sub_08090EDC
sub_08090EDC: @ 0x08090EDC
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x2c
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start sub_08090EF0
sub_08090EF0: @ 0x08090EF0
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2d
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start sub_08090F04
sub_08090F04: @ 0x08090F04
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2e
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start sub_08090F18
sub_08090F18: @ 0x08090F18
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2f
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start sub_08090F2C
sub_08090F2C: @ 0x08090F2C
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1e]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start sub_08090F38
sub_08090F38: @ 0x08090F38
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1f]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start sub_08090F44
sub_08090F44: @ 0x08090F44
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x26
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start sub_08090F58
sub_08090F58: @ 0x08090F58
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x27
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start sub_08090F6C
sub_08090F6C: @ 0x08090F6C
	bx lr
	.align 2, 0

	thumb_func_start sub_08090F70
sub_08090F70: @ 0x08090F70
	svc #0xa
	bx lr

	thumb_func_start sub_08090F74
sub_08090F74: @ 0x08090F74
	svc #0xc
	bx lr

	thumb_func_start sub_08090F78
sub_08090F78: @ 0x08090F78
	svc #0xb
	bx lr

	thumb_func_start sub_08090F7C
sub_08090F7C: @ 0x08090F7C
	svc #6
	bx lr

	thumb_func_start sub_08090F80
sub_08090F80: @ 0x08090F80
	svc #6
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_08090F88
sub_08090F88: @ 0x08090F88
	svc #0x12
	bx lr

	thumb_func_start sub_08090F8C
sub_08090F8C: @ 0x08090F8C
	svc #0x11
	bx lr

	thumb_func_start sub_08090F90
sub_08090F90: @ 0x08090F90
	ldr r3, _08090FA0 @ =0x04000208
	movs r2, #0
	strb r2, [r3]
	ldr r1, _08090FA4 @ =gUnknown_03007F00
	mov sp, r1
	svc #1
	svc #0
	movs r0, r0
	.align 2, 0
_08090FA0: .4byte 0x04000208
_08090FA4: .4byte gUnknown_03007F00

	thumb_func_start sub_08090FA8
sub_08090FA8: @ 0x08090FA8
	movs r0, #0
	svc #0x19
	bx lr
	.align 2, 0

	thumb_func_start sub_08090FB0
sub_08090FB0: @ 0x08090FB0
	movs r0, #1
	svc #0x19
	bx lr
	.align 2, 0

	thumb_func_start sub_08090FB8
sub_08090FB8: @ 0x08090FB8
	svc #8
	bx lr

	thumb_func_start sub_08090FBC
sub_08090FBC: @ 0x08090FBC
	movs r2, #0
	svc #5
	bx lr
	.align 2, 0

	thumb_func_start sub_08090FC4
sub_08090FC4: @ 0x08090FC4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, _08090FE0 @ =0x0E005555
	movs r1, #0xaa
	strb r1, [r3]
	ldr r2, _08090FE4 @ =0x0E002AAA
	movs r1, #0x55
	strb r1, [r2]
	movs r1, #0xb0
	strb r1, [r3]
	movs r1, #0xe0
	lsls r1, r1, #0x14
	strb r0, [r1]
	bx lr
	.align 2, 0
_08090FE0: .4byte 0x0E005555
_08090FE4: .4byte 0x0E002AAA

	thumb_func_start sub_08090FE8
sub_08090FE8: @ 0x08090FE8
	push {r4, r5, lr}
	sub sp, #0x44
	mov r0, sp
	bl sub_080911D8
	mov r5, sp
	adds r5, #1
	ldr r2, _08091010 @ =0x0E005555
	movs r0, #0xaa
	strb r0, [r2]
	ldr r1, _08091014 @ =0x0E002AAA
	movs r0, #0x55
	strb r0, [r1]
	movs r0, #0x90
	strb r0, [r2]
	add r1, sp, #0x40
	ldr r2, _08091018 @ =0x00004E20
	adds r0, r2, #0
	b _08091020
	.align 2, 0
_08091010: .4byte 0x0E005555
_08091014: .4byte 0x0E002AAA
_08091018: .4byte 0x00004E20
_0809101C:
	ldrh r0, [r1]
	subs r0, #1
_08091020:
	strh r0, [r1]
	ldrh r0, [r1]
	cmp r0, #0
	bne _0809101C
	ldr r0, _0809105C @ =0x0E000001
	bl sub_08091948
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x10
	movs r0, #0xe0
	lsls r0, r0, #0x14
	bl sub_08091948
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	orrs r4, r0
	ldr r1, _08091060 @ =0x0E005555
	movs r0, #0xaa
	strb r0, [r1]
	ldr r2, _08091064 @ =0x0E002AAA
	movs r0, #0x55
	strb r0, [r2]
	movs r0, #0xf0
	strb r0, [r1]
	strb r0, [r1]
	add r1, sp, #0x40
	ldr r2, _08091068 @ =0x00004E20
	adds r0, r2, #0
	b _08091070
	.align 2, 0
_0809105C: .4byte 0x0E000001
_08091060: .4byte 0x0E005555
_08091064: .4byte 0x0E002AAA
_08091068: .4byte 0x00004E20
_0809106C:
	ldrh r0, [r1]
	subs r0, #1
_08091070:
	strh r0, [r1]
	ldrh r0, [r1]
	cmp r0, #0
	bne _0809106C
	adds r0, r4, #0
	add sp, #0x44
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08091084
sub_08091084: @ 0x08091084
	push {lr}
	ldr r1, _080910A4 @ =gUnknown_02015F22
	ldrh r0, [r1]
	cmp r0, #0
	beq _080910A0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080910A0
	ldr r1, _080910A8 @ =gUnknown_02015E10
	movs r0, #1
	strb r0, [r1]
_080910A0:
	pop {r0}
	bx r0
	.align 2, 0
_080910A4: .4byte gUnknown_02015F22
_080910A8: .4byte gUnknown_02015E10

	thumb_func_start sub_080910AC
sub_080910AC: @ 0x080910AC
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bhi _080910E0
	ldr r0, _080910D0 @ =gUnknown_02015F20
	strb r1, [r0]
	ldr r1, _080910D4 @ =gUnknown_02015F24
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r3, _080910D8 @ =0x04000100
	adds r0, r0, r3
	str r0, [r1]
	ldr r0, _080910DC @ =sub_08091084
	str r0, [r2]
	movs r0, #0
	b _080910E2
	.align 2, 0
_080910D0: .4byte gUnknown_02015F20
_080910D4: .4byte gUnknown_02015F24
_080910D8: .4byte 0x04000100
_080910DC: .4byte sub_08091084
_080910E0:
	movs r0, #1
_080910E2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080910E8
sub_080910E8: @ 0x080910E8
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0809116C @ =gUnknown_02015E30
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #1
	ldr r0, [r1]
	adds r2, r2, r0
	ldr r1, _08091170 @ =gUnknown_02015F28
	ldr r0, _08091174 @ =0x04000208
	mov sb, r0
	ldrh r0, [r0]
	strh r0, [r1]
	movs r3, #0
	mov r1, sb
	strh r3, [r1]
	ldr r0, _08091178 @ =gUnknown_02015F24
	mov r8, r0
	ldr r4, [r0]
	strh r3, [r4, #2]
	ldr r6, _0809117C @ =0x04000200
	ldr r1, _08091180 @ =gUnknown_02015F20
	mov sl, r1
	ldrb r1, [r1]
	movs r5, #8
	adds r0, r5, #0
	lsls r0, r1
	adds r1, r0, #0
	ldrh r0, [r6]
	orrs r0, r1
	strh r0, [r6]
	ldr r0, _08091184 @ =gUnknown_02015E10
	strb r3, [r0]
	ldr r1, _08091188 @ =gUnknown_02015F22
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	ldrh r0, [r2]
	strh r0, [r4]
	adds r0, r4, #2
	mov r1, r8
	str r0, [r1]
	ldrh r0, [r2, #2]
	strh r0, [r4, #2]
	str r4, [r1]
	ldr r1, _0809118C @ =0x04000202
	mov r2, sl
	ldrb r0, [r2]
	lsls r5, r0
	strh r5, [r1]
	movs r0, #1
	mov r3, sb
	strh r0, [r3]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809116C: .4byte gUnknown_02015E30
_08091170: .4byte gUnknown_02015F28
_08091174: .4byte 0x04000208
_08091178: .4byte gUnknown_02015F24
_0809117C: .4byte 0x04000200
_08091180: .4byte gUnknown_02015F20
_08091184: .4byte gUnknown_02015E10
_08091188: .4byte gUnknown_02015F22
_0809118C: .4byte 0x04000202

	thumb_func_start sub_08091190
sub_08091190: @ 0x08091190
	ldr r3, _080911C0 @ =0x04000208
	movs r1, #0
	strh r1, [r3]
	ldr r2, _080911C4 @ =gUnknown_02015F24
	ldr r0, [r2]
	strh r1, [r0]
	adds r0, #2
	str r0, [r2]
	strh r1, [r0]
	subs r0, #2
	str r0, [r2]
	ldr r2, _080911C8 @ =0x04000200
	ldr r0, _080911CC @ =gUnknown_02015F20
	ldrb r0, [r0]
	movs r1, #8
	lsls r1, r0
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
	ldr r0, _080911D0 @ =gUnknown_02015F28
	ldrh r0, [r0]
	strh r0, [r3]
	bx lr
	.align 2, 0
_080911C0: .4byte 0x04000208
_080911C4: .4byte gUnknown_02015F24
_080911C8: .4byte 0x04000200
_080911CC: .4byte gUnknown_02015F20
_080911D0: .4byte gUnknown_02015F28

	thumb_func_start sub_080911D4
sub_080911D4: @ 0x080911D4
	ldrb r0, [r0]
	bx lr

	thumb_func_start sub_080911D8
sub_080911D8: @ 0x080911D8
	push {lr}
	adds r2, r0, #0
	ldr r1, _080911F4 @ =gUnknown_02015E14
	adds r0, r2, #1
	str r0, [r1]
	ldr r3, _080911F8 @ =sub_080911D4
	movs r0, #1
	bics r3, r0
	ldr r0, _080911FC @ =sub_080911D8
	ldr r1, _080911F8 @ =sub_080911D4
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _0809120C
	.align 2, 0
_080911F4: .4byte gUnknown_02015E14
_080911F8: .4byte sub_080911D4
_080911FC: .4byte sub_080911D8
_08091200:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_0809120C:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08091200
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08091218
sub_08091218: @ 0x08091218
	push {r4, lr}
	adds r4, r0, #0
	subs r3, r2, #1
	cmp r2, #0
	beq _08091234
	movs r2, #1
	rsbs r2, r2, #0
_08091226:
	ldrb r0, [r4]
	strb r0, [r1]
	adds r4, #1
	adds r1, #1
	subs r3, #1
	cmp r3, r2
	bne _08091226
_08091234:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809123C
sub_0809123C: @ 0x0809123C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x80
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	lsls r3, r0, #0x10
	lsrs r4, r3, #0x10
	ldr r2, _08091288 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _0809128C @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08091290 @ =gUnknown_02015E20
	ldr r0, [r0]
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r1, r0
	bne _08091274
	lsrs r0, r3, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08090FC4
	movs r0, #0xf
	ands r4, r0
_08091274:
	ldr r3, _08091294 @ =sub_08091218
	movs r0, #1
	bics r3, r0
	mov r2, sp
	ldr r0, _08091298 @ =sub_0809123C
	ldr r1, _08091294 @ =sub_08091218
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _080912A8
	.align 2, 0
_08091288: .4byte 0x04000204
_0809128C: .4byte 0x0000FFFC
_08091290: .4byte gUnknown_02015E20
_08091294: .4byte sub_08091218
_08091298: .4byte sub_0809123C
_0809129C:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_080912A8:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _0809129C
	mov r3, sp
	adds r3, #1
	ldr r0, _080912D4 @ =gUnknown_02015E20
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	lsls r4, r0
	adds r0, r4, #0
	movs r2, #0xe0
	lsls r2, r2, #0x14
	adds r1, r5, r2
	adds r0, r0, r1
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_08091940
	add sp, #0x80
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080912D4: .4byte gUnknown_02015E20

	thumb_func_start sub_080912D8
sub_080912D8: @ 0x080912D8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r3, r1, #0
	subs r4, r2, #1
	cmp r2, #0
	beq _080912FE
	movs r2, #1
	rsbs r2, r2, #0
_080912E8:
	ldrb r1, [r3]
	ldrb r0, [r5]
	adds r5, #1
	adds r3, #1
	cmp r1, r0
	beq _080912F8
	subs r0, r3, #1
	b _08091300
_080912F8:
	subs r4, #1
	cmp r4, r2
	bne _080912E8
_080912FE:
	movs r0, #0
_08091300:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08091308
sub_08091308: @ 0x08091308
	push {r4, r5, lr}
	sub sp, #0x100
	adds r5, r1, #0
	lsls r3, r0, #0x10
	lsrs r4, r3, #0x10
	ldr r2, _08091350 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _08091354 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08091358 @ =gUnknown_02015E20
	ldr r0, [r0]
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r1, r0
	bne _0809133C
	lsrs r0, r3, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08090FC4
	movs r0, #0xf
	ands r4, r0
_0809133C:
	ldr r3, _0809135C @ =sub_080912D8
	movs r0, #1
	bics r3, r0
	mov r2, sp
	ldr r0, _08091360 @ =sub_08091308
	ldr r1, _0809135C @ =sub_080912D8
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _08091370
	.align 2, 0
_08091350: .4byte 0x04000204
_08091354: .4byte 0x0000FFFC
_08091358: .4byte gUnknown_02015E20
_0809135C: .4byte sub_080912D8
_08091360: .4byte sub_08091308
_08091364:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_08091370:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08091364
	mov r3, sp
	adds r3, #1
	ldr r0, _0809139C @ =gUnknown_02015E20
	ldr r0, [r0]
	ldrb r1, [r0, #8]
	lsls r4, r1
	adds r1, r4, #0
	movs r2, #0xe0
	lsls r2, r2, #0x14
	adds r1, r1, r2
	ldrh r2, [r0, #4]
	adds r0, r5, #0
	bl sub_08091940
	add sp, #0x100
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0809139C: .4byte gUnknown_02015E20

	thumb_func_start sub_080913A0
sub_080913A0: @ 0x080913A0
	push {r4, r5, r6, lr}
	sub sp, #0x100
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r2, r0, #0x10
	lsrs r4, r2, #0x10
	ldr r0, _080913E8 @ =gUnknown_02015E20
	ldr r0, [r0]
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r1, r0
	bne _080913C8
	lsrs r0, r2, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08090FC4
	movs r0, #0xf
	ands r4, r0
_080913C8:
	ldr r2, _080913EC @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _080913F0 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _080913F4 @ =sub_080912D8
	movs r0, #1
	bics r3, r0
	mov r2, sp
	ldr r0, _080913F8 @ =sub_08091308
	ldr r1, _080913F4 @ =sub_080912D8
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _08091408
	.align 2, 0
_080913E8: .4byte gUnknown_02015E20
_080913EC: .4byte 0x04000204
_080913F0: .4byte 0x0000FFFC
_080913F4: .4byte sub_080912D8
_080913F8: .4byte sub_08091308
_080913FC:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_08091408:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _080913FC
	mov r3, sp
	adds r3, #1
	ldr r0, _08091434 @ =gUnknown_02015E20
	ldr r0, [r0]
	ldrb r1, [r0, #8]
	lsls r4, r1
	adds r1, r4, #0
	movs r0, #0xe0
	lsls r0, r0, #0x14
	adds r1, r1, r0
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_08091940
	add sp, #0x100
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08091434: .4byte gUnknown_02015E20

	thumb_func_start sub_08091438
sub_08091438: @ 0x08091438
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _0809144A
_08091444:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0809144A:
	cmp r6, #2
	bhi _08091470
	ldr r0, _08091478 @ =gUnknown_02015E1C
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0809193C
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _08091444
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08091308
	adds r2, r0, #0
	cmp r2, #0
	bne _08091444
_08091470:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08091478: .4byte gUnknown_02015E1C

	thumb_func_start sub_0809147C
sub_0809147C: @ 0x0809147C
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r7, r2, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _08091490
_0809148A:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08091490:
	cmp r6, #2
	bhi _080914B8
	ldr r0, _080914C0 @ =gUnknown_02015E1C
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0809193C
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _0809148A
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_080913A0
	adds r3, r0, #0
	cmp r3, #0
	bne _0809148A
_080914B8:
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080914C0: .4byte gUnknown_02015E1C

	thumb_func_start sub_080914C4
sub_080914C4: @ 0x080914C4
	push {r4, lr}
	ldr r2, _080914E4 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _080914E8 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	bl sub_08090FE8
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r2, _080914EC @ =gUnknown_08CDB134
	movs r4, #1
	b _080914F2
	.align 2, 0
_080914E4: .4byte 0x04000204
_080914E8: .4byte 0x0000FFFC
_080914EC: .4byte gUnknown_08CDB134
_080914F0:
	adds r2, #4
_080914F2:
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	beq _08091506
	ldrh r0, [r1, #0x28]
	cmp r3, r0
	bne _080914F0
	movs r4, #0
_08091506:
	ldr r1, _08091540 @ =gUnknown_02015E1C
	ldr r0, [r2]
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _08091544 @ =gUnknown_02015E28
	ldr r0, [r2]
	ldr r0, [r0, #4]
	str r0, [r1]
	ldr r1, _08091548 @ =gUnknown_02015E2C
	ldr r0, [r2]
	ldr r0, [r0, #8]
	str r0, [r1]
	ldr r1, _0809154C @ =gUnknown_02015E18
	ldr r0, [r2]
	ldr r0, [r0, #0xc]
	str r0, [r1]
	ldr r1, _08091550 @ =gUnknown_02015E30
	ldr r0, [r2]
	ldr r0, [r0, #0x10]
	str r0, [r1]
	ldr r1, _08091554 @ =gUnknown_02015E20
	ldr r0, [r2]
	adds r0, #0x14
	str r0, [r1]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08091540: .4byte gUnknown_02015E1C
_08091544: .4byte gUnknown_02015E28
_08091548: .4byte gUnknown_02015E2C
_0809154C: .4byte gUnknown_02015E18
_08091550: .4byte gUnknown_02015E30
_08091554: .4byte gUnknown_02015E20

	thumb_func_start sub_08091558
sub_08091558: @ 0x08091558
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	movs r0, #0
	mov r8, r0
	adds r0, r4, #0
	bl sub_080910E8
	ldr r7, _08091580 @ =gUnknown_02015E14
	movs r0, #0xc0
	lsls r0, r0, #8
	orrs r4, r0
	lsls r4, r4, #0x10
	b _080915A4
	.align 2, 0
_08091580: .4byte gUnknown_02015E14
_08091584:
	ldr r0, _0809159C @ =gUnknown_02015E20
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	cmp r0, #0xc2
	bne _08091594
	ldr r1, _080915A0 @ =0x0E005555
	movs r0, #0xf0
	strb r0, [r1]
_08091594:
	lsrs r4, r4, #0x10
	mov r8, r4
	b _080915CC
	.align 2, 0
_0809159C: .4byte gUnknown_02015E20
_080915A0: .4byte 0x0E005555
_080915A4:
	ldr r1, [r7]
	adds r0, r5, #0
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	beq _080915CC
	ldr r0, _080915DC @ =gUnknown_02015E10
	ldrb r0, [r0]
	cmp r0, #0
	beq _080915A4
	ldr r1, [r7]
	adds r0, r5, #0
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	bne _08091584
_080915CC:
	bl sub_08091190
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080915DC: .4byte gUnknown_02015E10

	thumb_func_start sub_080915E0
sub_080915E0: @ 0x080915E0
	push {r4, r5, r6, lr}
	sub sp, #0x40
	ldr r5, _0809163C @ =0x04000204
	ldrh r1, [r5]
	ldr r6, _08091640 @ =0x0000FFFC
	ands r1, r6
	ldr r0, _08091644 @ =gUnknown_02015E20
	ldr r0, [r0]
	ldrh r0, [r0, #0x10]
	orrs r1, r0
	strh r1, [r5]
	ldr r1, _08091648 @ =0x0E005555
	movs r4, #0xaa
	strb r4, [r1]
	ldr r3, _0809164C @ =0x0E002AAA
	movs r2, #0x55
	strb r2, [r3]
	movs r0, #0x80
	strb r0, [r1]
	strb r4, [r1]
	strb r2, [r3]
	movs r0, #0x10
	strb r0, [r1]
	mov r0, sp
	bl sub_080911D8
	ldr r0, _08091650 @ =gUnknown_02015E18
	movs r1, #0xe0
	lsls r1, r1, #0x14
	ldr r3, [r0]
	movs r0, #3
	movs r2, #0xff
	bl sub_08091940
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r5]
	ands r1, r6
	movs r2, #3
	orrs r1, r2
	strh r1, [r5]
	add sp, #0x40
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0809163C: .4byte 0x04000204
_08091640: .4byte 0x0000FFFC
_08091644: .4byte gUnknown_02015E20
_08091648: .4byte 0x0E005555
_0809164C: .4byte 0x0E002AAA
_08091650: .4byte gUnknown_02015E18

	thumb_func_start sub_08091654
sub_08091654: @ 0x08091654
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x40
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0xf
	bhi _080916DC
	ldr r6, _080916C4 @ =0x04000204
	ldrh r1, [r6]
	ldr r0, _080916C8 @ =0x0000FFFC
	mov r8, r0
	ands r1, r0
	ldr r0, _080916CC @ =gUnknown_02015E20
	ldr r2, [r0]
	ldrh r0, [r2, #0x10]
	orrs r1, r0
	strh r1, [r6]
	ldrb r4, [r2, #8]
	lsls r3, r4
	adds r4, r3, #0
	movs r2, #0xe0
	lsls r2, r2, #0x14
	adds r4, r4, r2
	ldr r1, _080916D0 @ =0x0E005555
	movs r5, #0xaa
	strb r5, [r1]
	ldr r3, _080916D4 @ =0x0E002AAA
	movs r2, #0x55
	strb r2, [r3]
	movs r0, #0x80
	strb r0, [r1]
	strb r5, [r1]
	strb r2, [r3]
	movs r0, #0x30
	strb r0, [r4]
	mov r0, sp
	bl sub_080911D8
	ldr r0, _080916D8 @ =gUnknown_02015E18
	ldr r3, [r0]
	movs r0, #2
	adds r1, r4, #0
	movs r2, #0xff
	bl sub_08091940
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r6]
	mov r2, r8
	ands r1, r2
	movs r2, #3
	orrs r1, r2
	strh r1, [r6]
	b _080916DE
	.align 2, 0
_080916C4: .4byte 0x04000204
_080916C8: .4byte 0x0000FFFC
_080916CC: .4byte gUnknown_02015E20
_080916D0: .4byte 0x0E005555
_080916D4: .4byte 0x0E002AAA
_080916D8: .4byte gUnknown_02015E18
_080916DC:
	ldr r0, _080916EC @ =0x000080FF
_080916DE:
	add sp, #0x40
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080916EC: .4byte 0x000080FF

	thumb_func_start sub_080916F0
sub_080916F0: @ 0x080916F0
	push {r4, lr}
	ldr r4, _0809171C @ =0x0E005555
	movs r2, #0xaa
	strb r2, [r4]
	ldr r3, _08091720 @ =0x0E002AAA
	movs r2, #0x55
	strb r2, [r3]
	movs r2, #0xa0
	strb r2, [r4]
	ldrb r2, [r0]
	strb r2, [r1]
	ldr r3, _08091724 @ =gUnknown_02015E18
	ldrb r2, [r0]
	ldr r3, [r3]
	movs r0, #1
	bl sub_08091940
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809171C: .4byte 0x0E005555
_08091720: .4byte 0x0E002AAA
_08091724: .4byte gUnknown_02015E18

	thumb_func_start sub_08091728
sub_08091728: @ 0x08091728
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x60
	mov sb, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0xf
	bls _08091748
	ldr r0, _08091744 @ =0x000080FF
	b _08091836
	.align 2, 0
_08091744: .4byte 0x000080FF
_08091748:
	ldr r0, _08091768 @ =gUnknown_02015E20
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	mov r7, r8
	lsls r7, r0
	movs r0, #0xe0
	lsls r0, r0, #0x14
	adds r7, r7, r0
	ldr r1, _0809176C @ =sub_0809184C
	movs r0, #1
	adds r3, r1, #0
	bics r3, r0
	mov r2, sp
	ldr r0, _08091770 @ =sub_08091870
	subs r0, r0, r1
	b _0809177E
	.align 2, 0
_08091768: .4byte gUnknown_02015E20
_0809176C: .4byte sub_0809184C
_08091770: .4byte sub_08091870
_08091774:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #2
_0809177E:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08091774
	movs r4, #0
	b _08091794
_0809178A:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	beq _08091834
_08091794:
	mov r0, r8
	bl sub_08091654
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _0809178A
	adds r0, r7, #0
	mov r1, sp
	adds r1, #1
	bl sub_08091870
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _0809178A
	movs r6, #1
	cmp r4, #0
	beq _080917BC
	movs r6, #6
_080917BC:
	movs r4, #1
	cmp r4, r6
	bhi _080917D2
_080917C2:
	mov r0, r8
	bl sub_08091654
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r6
	bls _080917C2
_080917D2:
	mov r0, sp
	bl sub_080911D8
	ldr r3, _080917F4 @ =0x04000204
	ldrh r1, [r3]
	ldr r0, _080917F8 @ =0x0000FFFC
	ands r1, r0
	ldr r0, _080917FC @ =gUnknown_02015E20
	ldr r2, [r0]
	ldrh r0, [r2, #0x10]
	orrs r1, r0
	strh r1, [r3]
	ldr r1, _08091800 @ =gUnknown_02015E24
	ldr r0, [r2, #4]
	strh r0, [r1]
	adds r4, r1, #0
	b _08091810
	.align 2, 0
_080917F4: .4byte 0x04000204
_080917F8: .4byte 0x0000FFFC
_080917FC: .4byte gUnknown_02015E20
_08091800: .4byte gUnknown_02015E24
_08091804:
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	movs r0, #1
	add sb, r0
	adds r7, #1
_08091810:
	ldrh r0, [r4]
	cmp r0, #0
	beq _08091826
	mov r0, sb
	adds r1, r7, #0
	bl sub_080916F0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08091804
_08091826:
	ldr r2, _08091844 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _08091848 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
_08091834:
	adds r0, r5, #0
_08091836:
	add sp, #0x60
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08091844: .4byte 0x04000204
_08091848: .4byte 0x0000FFFC

	thumb_func_start sub_0809184C
sub_0809184C: @ 0x0809184C
	push {lr}
	adds r2, r0, #0
	ldr r0, _08091858 @ =gUnknown_02015E20
	ldr r0, [r0]
	ldr r1, [r0, #4]
	b _0809185E
	.align 2, 0
_08091858: .4byte gUnknown_02015E20
_0809185C:
	subs r1, #1
_0809185E:
	cmp r1, #0
	beq _0809186A
	ldrb r0, [r2]
	adds r2, #1
	cmp r0, #0xff
	beq _0809185C
_0809186A:
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start sub_08091870
sub_08091870: @ 0x08091870
	push {lr}
	bl sub_08091938
	cmp r0, #0
	bne _0809187E
	movs r0, #0
	b _08091880
_0809187E:
	ldr r0, _08091884 @ =0x00008004
_08091880:
	pop {r1}
	bx r1
	.align 2, 0
_08091884: .4byte 0x00008004

	thumb_func_start sub_08091888
sub_08091888: @ 0x08091888
	push {r4, r5, r6, r7, lr}
	sub sp, #0x40
	adds r7, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _080918A0 @ =gUnknown_02015E20
	ldr r0, [r0]
	ldrh r0, [r0, #0xa]
	cmp r4, r0
	blo _080918A8
	ldr r0, _080918A4 @ =0x000080FF
	b _08091924
	.align 2, 0
_080918A0: .4byte gUnknown_02015E20
_080918A4: .4byte 0x000080FF
_080918A8:
	adds r0, r4, #0
	bl sub_08091654
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _08091922
	mov r0, sp
	bl sub_080911D8
	ldr r3, _080918E4 @ =0x04000204
	ldrh r1, [r3]
	ldr r0, _080918E8 @ =0x0000FFFC
	ands r1, r0
	ldr r0, _080918EC @ =gUnknown_02015E20
	ldr r2, [r0]
	ldrh r0, [r2, #0x10]
	orrs r1, r0
	strh r1, [r3]
	ldr r1, _080918F0 @ =gUnknown_02015E24
	ldr r0, [r2, #4]
	strh r0, [r1]
	ldrb r0, [r2, #8]
	lsls r4, r0
	movs r0, #0xe0
	lsls r0, r0, #0x14
	adds r4, r4, r0
	adds r6, r1, #0
	b _080918FE
	.align 2, 0
_080918E4: .4byte 0x04000204
_080918E8: .4byte 0x0000FFFC
_080918EC: .4byte gUnknown_02015E20
_080918F0: .4byte gUnknown_02015E24
_080918F4:
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	adds r7, #1
	adds r4, #1
_080918FE:
	ldrh r0, [r6]
	cmp r0, #0
	beq _08091914
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080916F0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _080918F4
_08091914:
	ldr r2, _0809192C @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _08091930 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
_08091922:
	adds r0, r5, #0
_08091924:
	add sp, #0x40
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809192C: .4byte 0x04000204
_08091930: .4byte 0x0000FFFC

	thumb_func_start sub_08091934
sub_08091934: @ 0x08091934
	bx r0
	nop

	thumb_func_start sub_08091938
sub_08091938: @ 0x08091938
	bx r1
	nop

	thumb_func_start sub_0809193C
sub_0809193C: @ 0x0809193C
	bx r2
	nop

	thumb_func_start sub_08091940
sub_08091940: @ 0x08091940
	bx r3
	nop

	thumb_func_start sub_08091944
sub_08091944: @ 0x08091944
	bx r4
	nop

	thumb_func_start sub_08091948
sub_08091948: @ 0x08091948
	bx r5
	nop

	thumb_func_start sub_0809194C
sub_0809194C: @ 0x0809194C
	bx r6
	nop

	thumb_func_start sub_08091950
sub_08091950: @ 0x08091950
	bx r7
	nop

	thumb_func_start sub_08091954
sub_08091954: @ 0x08091954
	bx r8
	nop

	thumb_func_start sub_08091958
sub_08091958: @ 0x08091958
	bx sb
	nop

	thumb_func_start sub_0809195C
sub_0809195C: @ 0x0809195C
	bx sl
	nop

	thumb_func_start sub_08091960
sub_08091960: @ 0x08091960
	bx fp
	nop

	thumb_func_start sub_08091964
sub_08091964: @ 0x08091964
	bx ip
	nop

	thumb_func_start sub_08091968
sub_08091968: @ 0x08091968
	bx sp
	nop

	thumb_func_start sub_0809196C
sub_0809196C: @ 0x0809196C
	bx lr
	nop

	thumb_func_start sub_08091970
sub_08091970: @ 0x08091970
	cmp r1, #0
	beq _080919F8
	push {r4}
	adds r4, r0, #0
	eors r4, r1
	mov ip, r4
	movs r3, #1
	movs r2, #0
	cmp r1, #0
	bpl _08091986
	rsbs r1, r1, #0
_08091986:
	cmp r0, #0
	bpl _0809198C
	rsbs r0, r0, #0
_0809198C:
	cmp r0, r1
	blo _080919EA
	movs r4, #1
	lsls r4, r4, #0x1c
_08091994:
	cmp r1, r4
	bhs _080919A2
	cmp r1, r0
	bhs _080919A2
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08091994
_080919A2:
	lsls r4, r4, #3
_080919A4:
	cmp r1, r4
	bhs _080919B2
	cmp r1, r0
	bhs _080919B2
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _080919A4
_080919B2:
	cmp r0, r1
	blo _080919BA
	subs r0, r0, r1
	orrs r2, r3
_080919BA:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _080919C6
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_080919C6:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _080919D2
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_080919D2:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _080919DE
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_080919DE:
	cmp r0, #0
	beq _080919EA
	lsrs r3, r3, #4
	beq _080919EA
	lsrs r1, r1, #4
	b _080919B2
_080919EA:
	adds r0, r2, #0
	mov r4, ip
	cmp r4, #0
	bpl _080919F4
	rsbs r0, r0, #0
_080919F4:
	pop {r4}
	mov pc, lr
_080919F8:
	push {lr}
	bl nullsub_14
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start nullsub_14
nullsub_14: @ 0x08091A04
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08091A08
sub_08091A08: @ 0x08091A08
	movs r3, #1
	cmp r1, #0
	beq _08091ACC
	bpl _08091A12
	rsbs r1, r1, #0
_08091A12:
	push {r4}
	push {r0}
	cmp r0, #0
	bpl _08091A1C
	rsbs r0, r0, #0
_08091A1C:
	cmp r0, r1
	blo _08091AC0
	movs r4, #1
	lsls r4, r4, #0x1c
_08091A24:
	cmp r1, r4
	bhs _08091A32
	cmp r1, r0
	bhs _08091A32
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08091A24
_08091A32:
	lsls r4, r4, #3
_08091A34:
	cmp r1, r4
	bhs _08091A42
	cmp r1, r0
	bhs _08091A42
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08091A34
_08091A42:
	movs r2, #0
	cmp r0, r1
	blo _08091A4A
	subs r0, r0, r1
_08091A4A:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _08091A5C
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08091A5C:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _08091A6E
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08091A6E:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _08091A80
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08091A80:
	mov ip, r3
	cmp r0, #0
	beq _08091A8E
	lsrs r3, r3, #4
	beq _08091A8E
	lsrs r1, r1, #4
	b _08091A42
_08091A8E:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	beq _08091AC0
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _08091AA4
	lsrs r4, r1, #3
	adds r0, r0, r4
_08091AA4:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _08091AB2
	lsrs r4, r1, #2
	adds r0, r0, r4
_08091AB2:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _08091AC0
	lsrs r4, r1, #1
	adds r0, r0, r4
_08091AC0:
	pop {r4}
	cmp r4, #0
	bpl _08091AC8
	rsbs r0, r0, #0
_08091AC8:
	pop {r4}
	mov pc, lr
_08091ACC:
	push {lr}
	bl nullsub_14
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08091AD8
sub_08091AD8: @ 0x08091AD8
	push {lr}
	bl sub_08093308
	pop {pc}

	thumb_func_start sub_08091AE0
sub_08091AE0: @ 0x08091AE0
	cmp r1, #0
	beq _08091B4E
	movs r3, #1
	movs r2, #0
	push {r4}
	cmp r0, r1
	blo _08091B48
	movs r4, #1
	lsls r4, r4, #0x1c
_08091AF2:
	cmp r1, r4
	bhs _08091B00
	cmp r1, r0
	bhs _08091B00
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08091AF2
_08091B00:
	lsls r4, r4, #3
_08091B02:
	cmp r1, r4
	bhs _08091B10
	cmp r1, r0
	bhs _08091B10
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08091B02
_08091B10:
	cmp r0, r1
	blo _08091B18
	subs r0, r0, r1
	orrs r2, r3
_08091B18:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _08091B24
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_08091B24:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _08091B30
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_08091B30:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _08091B3C
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_08091B3C:
	cmp r0, #0
	beq _08091B48
	lsrs r3, r3, #4
	beq _08091B48
	lsrs r1, r1, #4
	b _08091B10
_08091B48:
	adds r0, r2, #0
	pop {r4}
	mov pc, lr
_08091B4E:
	push {lr}
	bl nullsub_14
	movs r0, #0
	pop {pc}

	thumb_func_start sub_08091B58
sub_08091B58: @ 0x08091B58
	cmp r1, #0
	beq _08091C0E
	movs r3, #1
	cmp r0, r1
	bhs _08091B64
	mov pc, lr
_08091B64:
	push {r4}
	movs r4, #1
	lsls r4, r4, #0x1c
_08091B6A:
	cmp r1, r4
	bhs _08091B78
	cmp r1, r0
	bhs _08091B78
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08091B6A
_08091B78:
	lsls r4, r4, #3
_08091B7A:
	cmp r1, r4
	bhs _08091B88
	cmp r1, r0
	bhs _08091B88
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08091B7A
_08091B88:
	movs r2, #0
	cmp r0, r1
	blo _08091B90
	subs r0, r0, r1
_08091B90:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _08091BA2
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08091BA2:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _08091BB4
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08091BB4:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _08091BC6
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08091BC6:
	mov ip, r3
	cmp r0, #0
	beq _08091BD4
	lsrs r3, r3, #4
	beq _08091BD4
	lsrs r1, r1, #4
	b _08091B88
_08091BD4:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	bne _08091BE0
	pop {r4}
	mov pc, lr
_08091BE0:
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _08091BEE
	lsrs r4, r1, #3
	adds r0, r0, r4
_08091BEE:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _08091BFC
	lsrs r4, r1, #2
	adds r0, r0, r4
_08091BFC:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _08091C0A
	lsrs r4, r1, #1
	adds r0, r0, r4
_08091C0A:
	pop {r4}
	mov pc, lr
_08091C0E:
	push {lr}
	bl nullsub_14
	movs r0, #0
	pop {pc}

	thumb_func_start sub_08091C18
sub_08091C18: @ 0x08091C18
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r1, r0, #0
	ldr r4, [r1, #0xc]
	ldr r5, [r1, #0x10]
	ldr r7, [r1, #4]
	movs r6, #0
	movs r2, #0
	ldr r0, [r1]
	cmp r0, #1
	bhi _08091C30
	movs r2, #1
_08091C30:
	cmp r2, #0
	beq _08091C50
	ldr r6, _08091C44 @ =0x000007FF
	ldr r2, _08091C48 @ =0x00000000
	ldr r3, _08091C4C @ =0x00080000
	adds r0, r4, #0
	adds r1, r5, #0
	orrs r1, r3
	b _08091D08
	.align 2, 0
_08091C44: .4byte 0x000007FF
_08091C48: .4byte 0x00000000
_08091C4C: .4byte 0x00080000
_08091C50:
	movs r2, #0
	cmp r0, #4
	bne _08091C58
	movs r2, #1
_08091C58:
	cmp r2, #0
	bne _08091CA4
	movs r2, #0
	cmp r0, #2
	bne _08091C64
	movs r2, #1
_08091C64:
	cmp r2, #0
	beq _08091C6E
	movs r4, #0
	movs r5, #0
	b _08091D0C
_08091C6E:
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _08091D0C
	ldr r2, [r1, #8]
	ldr r0, _08091C8C @ =0xFFFFFC02
	cmp r2, r0
	bge _08091C9E
	subs r2, r0, r2
	cmp r2, #0x38
	ble _08091C90
	movs r4, #0
	movs r5, #0
	b _08091CFE
	.align 2, 0
_08091C8C: .4byte 0xFFFFFC02
_08091C90:
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_080935DC
	adds r5, r1, #0
	adds r4, r0, #0
	b _08091CFE
_08091C9E:
	ldr r0, _08091CAC @ =0x000003FF
	cmp r2, r0
	ble _08091CB4
_08091CA4:
	ldr r6, _08091CB0 @ =0x000007FF
	movs r4, #0
	movs r5, #0
	b _08091D0C
	.align 2, 0
_08091CAC: .4byte 0x000003FF
_08091CB0: .4byte 0x000007FF
_08091CB4:
	ldr r0, _08091CDC @ =0x000003FF
	adds r6, r2, r0
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _08091CE0
	cmp r2, #0
	bne _08091CE0
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	beq _08091CE8
	movs r0, #0x80
	movs r1, #0
	b _08091CE4
	.align 2, 0
_08091CDC: .4byte 0x000003FF
_08091CE0:
	movs r0, #0x7f
	movs r1, #0
_08091CE4:
	adds r4, r4, r0
	adcs r5, r1
_08091CE8:
	ldr r0, _08091D4C @ =0x1FFFFFFF
	cmp r5, r0
	bls _08091CFE
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	adds r6, #1
_08091CFE:
	lsls r3, r5, #0x18
	lsrs r2, r4, #8
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #8
_08091D08:
	adds r5, r1, #0
	adds r4, r0, #0
_08091D0C:
	str r4, [sp]
	ldr r2, _08091D50 @ =0x000FFFFF
	ands r2, r5
	ldr r0, [sp, #4]
	ldr r1, _08091D54 @ =0xFFF00000
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	mov r2, sp
	ldr r1, _08091D58 @ =0x000007FF
	adds r0, r1, #0
	ands r6, r0
	lsls r1, r6, #4
	ldr r0, _08091D5C @ =0xFFFF800F
	ldrh r3, [r2, #6]
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #6]
	lsls r1, r7, #7
	movs r0, #0x7f
	ldrb r3, [r2, #7]
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #7]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08091D4C: .4byte 0x1FFFFFFF
_08091D50: .4byte 0x000FFFFF
_08091D54: .4byte 0xFFF00000
_08091D58: .4byte 0x000007FF
_08091D5C: .4byte 0xFFFF800F

	thumb_func_start sub_08091D60
sub_08091D60: @ 0x08091D60
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r2, r0, #0
	adds r6, r1, #0
	ldr r1, [r2, #4]
	str r1, [sp]
	ldr r0, [r2]
	str r0, [sp, #4]
	mov r2, sp
	adds r4, r1, #0
	lsls r0, r0, #0xc
	lsrs r5, r0, #0xc
	ldrh r3, [r2, #6]
	lsls r0, r3, #0x11
	lsrs r3, r0, #0x15
	ldrb r2, [r2, #7]
	lsrs r0, r2, #7
	str r0, [r6, #4]
	cmp r3, #0
	bne _08091DD4
	orrs r1, r5
	cmp r1, #0
	bne _08091D94
	movs r0, #2
	str r0, [r6]
	b _08091E28
_08091D94:
	ldr r0, _08091DCC @ =0xFFFFFC02
	str r0, [r6, #8]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #3
	str r0, [r6]
	ldr r0, _08091DD0 @ =0x0FFFFFFF
	cmp r5, r0
	bhi _08091E04
	adds r7, r0, #0
_08091DB2:
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [r6, #8]
	subs r0, #1
	str r0, [r6, #8]
	cmp r5, r7
	bls _08091DB2
	b _08091E04
	.align 2, 0
_08091DCC: .4byte 0xFFFFFC02
_08091DD0: .4byte 0x0FFFFFFF
_08091DD4:
	ldr r0, _08091DE8 @ =0x000007FF
	cmp r3, r0
	bne _08091E0A
	orrs r1, r5
	cmp r1, #0
	bne _08091DEC
	movs r0, #4
	str r0, [r6]
	b _08091E28
	.align 2, 0
_08091DE8: .4byte 0x000007FF
_08091DEC:
	movs r2, #0x80
	lsls r2, r2, #0xc
	movs r0, #0
	adds r1, r5, #0
	ands r1, r2
	orrs r1, r0
	cmp r1, #0
	beq _08091E02
	movs r0, #1
	str r0, [r6]
	b _08091E04
_08091E02:
	str r1, [r6]
_08091E04:
	str r4, [r6, #0xc]
	str r5, [r6, #0x10]
	b _08091E28
_08091E0A:
	ldr r1, _08091E2C @ =0xFFFFFC01
	adds r0, r3, r1
	str r0, [r6, #8]
	movs r0, #3
	str r0, [r6]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	ldr r2, _08091E30 @ =0x00000000
	ldr r3, _08091E34 @ =0x10000000
	orrs r1, r3
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
_08091E28:
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08091E2C: .4byte 0xFFFFFC01
_08091E30: .4byte 0x00000000
_08091E34: .4byte 0x10000000

	thumb_func_start sub_08091E38
sub_08091E38: @ 0x08091E38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r3, r0, #0
	adds r4, r1, #0
	mov sl, r2
	movs r0, #0
	ldr r2, [r3]
	cmp r2, #1
	bhi _08091E54
	movs r0, #1
_08091E54:
	cmp r0, #0
	beq _08091E5C
_08091E58:
	adds r0, r3, #0
	b _08092094
_08091E5C:
	movs r1, #0
	ldr r0, [r4]
	cmp r0, #1
	bhi _08091E66
	movs r1, #1
_08091E66:
	cmp r1, #0
	bne _08091EDE
	movs r1, #0
	cmp r2, #4
	bne _08091E72
	movs r1, #1
_08091E72:
	cmp r1, #0
	beq _08091E94
	movs r1, #0
	cmp r0, #4
	bne _08091E7E
	movs r1, #1
_08091E7E:
	cmp r1, #0
	beq _08091E58
	ldr r1, [r3, #4]
	ldr r0, [r4, #4]
	cmp r1, r0
	beq _08091E58
	ldr r0, _08091E90 @ =gUnknown_02015F30
	b _08092094
	.align 2, 0
_08091E90: .4byte gUnknown_02015F30
_08091E94:
	movs r1, #0
	cmp r0, #4
	bne _08091E9C
	movs r1, #1
_08091E9C:
	cmp r1, #0
	bne _08091EDE
	movs r1, #0
	cmp r0, #2
	bne _08091EA8
	movs r1, #1
_08091EA8:
	cmp r1, #0
	beq _08091ED0
	movs r0, #0
	cmp r2, #2
	bne _08091EB4
	movs r0, #1
_08091EB4:
	cmp r0, #0
	beq _08091E58
	mov r1, sl
	adds r0, r3, #0
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r2, r5}
	stm r1!, {r2, r5}
	ldr r0, [r3, #4]
	ldr r1, [r4, #4]
	ands r0, r1
	mov r6, sl
	str r0, [r6, #4]
	b _08092092
_08091ED0:
	movs r1, #0
	ldr r0, [r3]
	cmp r0, #2
	bne _08091EDA
	movs r1, #1
_08091EDA:
	cmp r1, #0
	beq _08091EE2
_08091EDE:
	adds r0, r4, #0
	b _08092094
_08091EE2:
	ldr r0, [r3, #8]
	mov sb, r0
	ldr r1, [r4, #8]
	mov r8, r1
	ldr r6, [r3, #0xc]
	ldr r7, [r3, #0x10]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	str r0, [sp]
	str r1, [sp, #4]
	mov r1, sb
	mov r2, r8
	subs r0, r1, r2
	cmp r0, #0
	bge _08091F02
	rsbs r0, r0, #0
_08091F02:
	cmp r0, #0x3f
	bgt _08091F80
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
	cmp sb, r8
	ble _08091F4C
	mov r3, sb
	mov r4, r8
	subs r3, r3, r4
	mov r8, r3
_08091F1A:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	ldr r2, [sp]
	movs r0, #1
	ands r2, r0
	movs r3, #0
	ldr r1, [sp, #4]
	lsls r5, r1, #0x1f
	ldr r0, [sp]
	lsrs r4, r0, #1
	adds r0, r5, #0
	orrs r0, r4
	adds r4, r1, #0
	lsrs r1, r4, #1
	adds r5, r2, #0
	orrs r5, r0
	str r5, [sp]
	adds r4, r3, #0
	orrs r4, r1
	str r4, [sp, #4]
	mov r5, r8
	cmp r5, #0
	bne _08091F1A
	mov r8, sb
_08091F4C:
	cmp r8, sb
	ble _08091F9C
	mov r0, r8
	mov r1, sb
	subs r0, r0, r1
	mov sb, r0
_08091F58:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	movs r2, #1
	ands r2, r6
	movs r3, #0
	lsls r5, r7, #0x1f
	lsrs r4, r6, #1
	adds r0, r5, #0
	orrs r0, r4
	lsrs r1, r7, #1
	adds r6, r2, #0
	orrs r6, r0
	adds r7, r3, #0
	orrs r7, r1
	mov r3, sb
	cmp r3, #0
	bne _08091F58
	mov sb, r8
	b _08091F9C
_08091F80:
	cmp sb, r8
	ble _08091F8E
	movs r0, #0
	movs r1, #0
	str r0, [sp]
	str r1, [sp, #4]
	b _08091F94
_08091F8E:
	mov sb, r8
	movs r6, #0
	movs r7, #0
_08091F94:
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
_08091F9C:
	ldr r1, [sp, #8]
	cmp ip, r1
	beq _08092044
	mov r2, ip
	cmp r2, #0
	beq _08091FBE
	adds r1, r7, #0
	adds r0, r6, #0
	bl sub_08093680
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r4, [sp]
	ldr r5, [sp, #4]
	adds r2, r2, r4
	adcs r3, r5
	b _08091FCA
_08091FBE:
	adds r3, r7, #0
	adds r2, r6, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	subs r2, r2, r0
	sbcs r3, r1
_08091FCA:
	cmp r3, #0
	blt _08091FE0
	movs r0, #0
	mov r1, sl
	str r0, [r1, #4]
	mov r4, sb
	str r4, [r1, #8]
	mov r5, sl
	str r2, [r5, #0xc]
	str r3, [r5, #0x10]
	b _08091FF8
_08091FE0:
	movs r0, #1
	mov r6, sl
	str r0, [r6, #4]
	mov r0, sb
	str r0, [r6, #8]
	adds r1, r3, #0
	adds r0, r2, #0
	bl sub_08093680
	mov r2, sl
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_08091FF8:
	mov r4, sl
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	asrs r1, r0, #0x1f
_08092004:
	adds r2, r2, r0
	adcs r3, r1
	ldr r0, _08092040 @ =0x0FFFFFFF
	cmp r3, r0
	bhi _0809205C
	cmp r3, r0
	bne _0809201A
	movs r0, #2
	rsbs r0, r0, #0
	cmp r2, r0
	bhi _0809205C
_0809201A:
	mov r5, sl
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	lsrs r3, r0, #0x1f
	lsls r2, r1, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r0, #1
	mov r6, sl
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
	ldr r2, [r6, #8]
	subs r2, #1
	str r2, [r6, #8]
	movs r2, #1
	rsbs r2, r2, #0
	asrs r3, r2, #0x1f
	b _08092004
	.align 2, 0
_08092040: .4byte 0x0FFFFFFF
_08092044:
	mov r0, ip
	mov r1, sl
	str r0, [r1, #4]
	mov r2, sb
	str r2, [r1, #8]
	ldr r3, [sp]
	ldr r4, [sp, #4]
	adds r6, r6, r3
	adcs r7, r4
	mov r4, sl
	str r6, [r4, #0xc]
	str r7, [r4, #0x10]
_0809205C:
	movs r0, #3
	mov r5, sl
	str r0, [r5]
	ldr r1, [r5, #0x10]
	ldr r0, _080920A0 @ =0x1FFFFFFF
	cmp r1, r0
	bls _08092092
	ldr r4, [r5, #0xc]
	ldr r5, [r5, #0x10]
	movs r2, #1
	adds r0, r4, #0
	ands r0, r2
	movs r1, #0
	lsls r6, r5, #0x1f
	mov r8, r6
	lsrs r6, r4, #1
	mov r2, r8
	orrs r2, r6
	lsrs r3, r5, #1
	orrs r0, r2
	orrs r1, r3
	mov r2, sl
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
	ldr r0, [r2, #8]
	adds r0, #1
	str r0, [r2, #8]
_08092092:
	mov r0, sl
_08092094:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080920A0: .4byte 0x1FFFFFFF

	thumb_func_start sub_080920A4
sub_080920A4: @ 0x080920A4
	push {r4, lr}
	sub sp, #0x4c
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl sub_08091D60
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_08091D60
	add r2, sp, #0x28
	mov r0, sp
	adds r1, r4, #0
	bl sub_08091E38
	bl sub_08091C18
	add sp, #0x4c
	pop {r4, pc}

	thumb_func_start sub_080920D4
sub_080920D4: @ 0x080920D4
	push {r4, lr}
	sub sp, #0x4c
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl sub_08091D60
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_08091D60
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #4]
	add r2, sp, #0x28
	mov r0, sp
	adds r1, r4, #0
	bl sub_08091E38
	bl sub_08091C18
	add sp, #0x4c
	pop {r4, pc}

	thumb_func_start sub_0809210C
sub_0809210C: @ 0x0809210C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl sub_08091D60
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_08091D60
	mov r8, sp
	add r0, sp, #0x28
	mov sl, r0
	movs r0, #0
	ldr r1, [sp]
	cmp r1, #1
	bhi _08092142
	movs r0, #1
_08092142:
	cmp r0, #0
	bne _080921A6
	movs r2, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _08092150
	movs r2, #1
_08092150:
	cmp r2, #0
	beq _08092158
	ldr r0, [sp, #4]
	b _080921C8
_08092158:
	movs r2, #0
	cmp r1, #4
	bne _08092160
	movs r2, #1
_08092160:
	cmp r2, #0
	beq _08092172
	movs r1, #0
	cmp r0, #2
	bne _0809216C
	movs r1, #1
_0809216C:
	cmp r1, #0
	bne _0809218A
	b _080921A6
_08092172:
	movs r2, #0
	cmp r0, #4
	bne _0809217A
	movs r2, #1
_0809217A:
	cmp r2, #0
	beq _0809219A
	movs r0, #0
	cmp r1, #2
	bne _08092186
	movs r0, #1
_08092186:
	cmp r0, #0
	beq _08092194
_0809218A:
	ldr r0, _08092190 @ =gUnknown_02015F30
	b _08092392
	.align 2, 0
_08092190: .4byte gUnknown_02015F30
_08092194:
	mov r1, r8
	ldr r0, [r1, #4]
	b _080921C8
_0809219A:
	movs r2, #0
	cmp r1, #2
	bne _080921A2
	movs r2, #1
_080921A2:
	cmp r2, #0
	beq _080921B8
_080921A6:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	mov r0, sp
	b _08092392
_080921B8:
	movs r1, #0
	cmp r0, #2
	bne _080921C0
	movs r1, #1
_080921C0:
	cmp r1, #0
	beq _080921D8
	mov r2, r8
	ldr r0, [r2, #4]
_080921C8:
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x18]
	adds r0, r4, #0
	b _08092392
_080921D8:
	mov r4, r8
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	adds r6, r0, #0
	movs r7, #0
	str r1, [sp, #0x4c]
	movs r5, #0
	str r5, [sp, #0x50]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	adds r4, r0, #0
	str r1, [sp, #0x54]
	movs r0, #0
	str r0, [sp, #0x58]
	adds r1, r5, #0
	adds r0, r4, #0
	adds r3, r7, #0
	adds r2, r6, #0
	bl sub_08093610
	str r0, [sp, #0x5c]
	str r1, [sp, #0x60]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r3, r7, #0
	adds r2, r6, #0
	bl sub_08093610
	adds r7, r1, #0
	adds r6, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	bl sub_08093610
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	bl sub_08093610
	str r0, [sp, #0x64]
	str r1, [sp, #0x68]
	movs r1, #0
	movs r2, #0
	str r1, [sp, #0x6c]
	str r2, [sp, #0x70]
	adds r3, r7, #0
	adds r2, r6, #0
	adds r2, r2, r4
	adcs r3, r5
	cmp r7, r3
	bhi _08092250
	cmp r7, r3
	bne _08092258
	cmp r6, r2
	bls _08092258
_08092250:
	ldr r5, _080923A8 @ =0x00000001
	ldr r4, _080923A4 @ =0x00000000
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_08092258:
	adds r1, r2, #0
	movs r6, #0
	adds r7, r1, #0
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	adds r6, r6, r0
	adcs r7, r1
	cmp r1, r7
	bhi _08092274
	ldr r1, [sp, #0x60]
	cmp r1, r7
	bne _08092284
	cmp r0, r6
	bls _08092284
_08092274:
	movs r0, #1
	movs r1, #0
	ldr r4, [sp, #0x6c]
	ldr r5, [sp, #0x70]
	adds r4, r4, r0
	adcs r5, r1
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_08092284:
	adds r0, r3, #0
	adds r2, r0, #0
	movs r3, #0
	adds r5, r3, #0
	adds r4, r2, #0
	ldr r0, [sp, #0x64]
	ldr r1, [sp, #0x68]
	adds r4, r4, r0
	adcs r5, r1
	ldr r1, [sp, #0x6c]
	ldr r2, [sp, #0x70]
	adds r4, r4, r1
	adcs r5, r2
	mov r0, r8
	ldr r2, [r0, #8]
	ldr r0, [sp, #0x1c]
	adds r2, r2, r0
	str r2, [sp, #0x30]
	mov r0, r8
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x18]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x2c]
	adds r2, #4
	str r2, [sp, #0x30]
	ldr r0, _080923AC @ =0x1FFFFFFF
	cmp r5, r0
	bls _08092306
	movs r1, #1
	mov sb, r1
	mov r8, r0
	mov ip, r2
_080922CA:
	movs r2, #1
	add ip, r2
	mov r0, sb
	ands r0, r4
	cmp r0, #0
	beq _080922F0
	lsls r3, r7, #0x1f
	lsrs r2, r6, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r7, #1
	adds r7, r1, #0
	adds r6, r0, #0
	adds r0, r6, #0
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r1, r7
	adds r7, r1, #0
	adds r6, r0, #0
_080922F0:
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	cmp r5, r8
	bhi _080922CA
	mov r0, ip
	str r0, [sp, #0x30]
_08092306:
	ldr r0, _080923B0 @ =0x0FFFFFFF
	cmp r5, r0
	bhi _08092358
	movs r1, #0x80
	lsls r1, r1, #0x18
	mov sb, r1
	mov r8, r0
	ldr r2, [sp, #0x30]
	mov ip, r2
_08092318:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #0
	mov r1, sb
	ands r1, r7
	orrs r0, r1
	cmp r0, #0
	beq _08092342
	movs r0, #1
	orrs r0, r4
	adds r1, r5, #0
	adds r5, r1, #0
	adds r4, r0, #0
_08092342:
	lsrs r3, r6, #0x1f
	lsls r2, r7, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r6, #1
	adds r7, r1, #0
	adds r6, r0, #0
	cmp r5, r8
	bls _08092318
	mov r1, ip
	str r1, [sp, #0x30]
_08092358:
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _08092386
	cmp r2, #0
	bne _08092386
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _0809237E
	adds r0, r7, #0
	orrs r0, r6
	cmp r0, #0
	beq _08092386
_0809237E:
	movs r0, #0x80
	movs r1, #0
	adds r4, r4, r0
	adcs r5, r1
_08092386:
	str r4, [sp, #0x34]
	str r5, [sp, #0x38]
	movs r0, #3
	mov r2, sl
	str r0, [r2]
	add r0, sp, #0x28
_08092392:
	bl sub_08091C18
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080923A4: .4byte 0x00000000
_080923A8: .4byte 0x00000001
_080923AC: .4byte 0x1FFFFFFF
_080923B0: .4byte 0x0FFFFFFF

	thumb_func_start sub_080923B4
sub_080923B4: @ 0x080923B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_08091D60
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_08091D60
	mov ip, sp
	movs r0, #0
	ldr r3, [sp]
	cmp r3, #1
	bhi _080923DE
	movs r0, #1
_080923DE:
	cmp r0, #0
	beq _080923E6
	mov r1, sp
	b _08092528
_080923E6:
	movs r0, #0
	ldr r2, [sp, #0x14]
	adds r5, r2, #0
	cmp r2, #1
	bhi _080923F2
	movs r0, #1
_080923F2:
	cmp r0, #0
	beq _080923FA
	adds r1, r4, #0
	b _08092528
_080923FA:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	eors r0, r1
	str r0, [sp, #4]
	movs r0, #0
	cmp r3, #4
	bne _0809240A
	movs r0, #1
_0809240A:
	cmp r0, #0
	bne _0809241A
	movs r4, #0
	cmp r3, #2
	bne _08092416
	movs r4, #1
_08092416:
	cmp r4, #0
	beq _0809242C
_0809241A:
	mov r1, ip
	ldr r0, [r1]
	cmp r0, r5
	beq _08092424
	b _08092528
_08092424:
	ldr r1, _08092428 @ =gUnknown_02015F30
	b _08092528
	.align 2, 0
_08092428: .4byte gUnknown_02015F30
_0809242C:
	movs r0, #0
	cmp r2, #4
	bne _08092434
	movs r0, #1
_08092434:
	cmp r0, #0
	beq _08092446
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r4, [sp, #8]
	mov r1, sp
	b _08092528
_08092446:
	movs r0, #0
	cmp r2, #2
	bne _0809244E
	movs r0, #1
_0809244E:
	cmp r0, #0
	beq _0809245A
	movs r0, #4
	mov r2, ip
	str r0, [r2]
	b _08092526
_0809245A:
	mov r3, ip
	ldr r1, [r3, #8]
	ldr r0, [sp, #0x1c]
	subs r6, r1, r0
	str r6, [r3, #8]
	ldr r4, [r3, #0xc]
	ldr r5, [r3, #0x10]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x38]
	str r1, [sp, #0x3c]
	cmp r1, r5
	bhi _0809247E
	ldr r1, [sp, #0x3c]
	cmp r1, r5
	bne _08092492
	cmp r0, r4
	bls _08092492
_0809247E:
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	subs r0, r6, #1
	mov r2, ip
	str r0, [r2, #8]
_08092492:
	ldr r7, _08092538 @ =0x10000000
	ldr r6, _08092534 @ =0x00000000
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_0809249E:
	ldr r1, [sp, #0x3c]
	cmp r1, r5
	bhi _080924C2
	cmp r1, r5
	bne _080924AE
	ldr r2, [sp, #0x38]
	cmp r2, r4
	bhi _080924C2
_080924AE:
	ldr r0, [sp, #0x40]
	orrs r0, r6
	ldr r1, [sp, #0x44]
	orrs r1, r7
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	subs r4, r4, r0
	sbcs r5, r1
_080924C2:
	lsls r3, r7, #0x1f
	lsrs r2, r6, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r7, #1
	adds r7, r1, #0
	adds r6, r0, #0
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r7, #0
	orrs r0, r6
	cmp r0, #0
	bne _0809249E
	movs r0, #0xff
	ldr r1, [sp, #0x40]
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _0809251C
	cmp r2, #0
	bne _0809251C
	adds r0, #1
	ldr r1, [sp, #0x40]
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _0809250C
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _0809251C
_0809250C:
	movs r0, #0x80
	movs r1, #0
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [sp, #0x40]
	str r3, [sp, #0x44]
_0809251C:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	mov r2, ip
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_08092526:
	mov r1, ip
_08092528:
	adds r0, r1, #0
	bl sub_08091C18
	add sp, #0x48
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08092534: .4byte 0x00000000
_08092538: .4byte 0x10000000

	thumb_func_start sub_0809253C
sub_0809253C: @ 0x0809253C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0
	ldr r1, [r5]
	cmp r1, #1
	bhi _0809254C
	movs r0, #1
_0809254C:
	cmp r0, #0
	bne _0809255E
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _0809255A
	movs r0, #1
_0809255A:
	cmp r0, #0
	beq _08092562
_0809255E:
	movs r0, #1
	b _08092638
_08092562:
	movs r0, #0
	cmp r1, #4
	bne _0809256A
	movs r0, #1
_0809256A:
	cmp r0, #0
	beq _08092582
	movs r0, #0
	cmp r2, #4
	bne _08092576
	movs r0, #1
_08092576:
	cmp r0, #0
	beq _08092582
	ldr r0, [r6, #4]
	ldr r1, [r5, #4]
	subs r0, r0, r1
	b _08092638
_08092582:
	movs r1, #0
	ldr r0, [r5]
	cmp r0, #4
	bne _0809258C
	movs r1, #1
_0809258C:
	cmp r1, #0
	bne _080925DA
	movs r1, #0
	cmp r2, #4
	bne _08092598
	movs r1, #1
_08092598:
	cmp r1, #0
	beq _080925AA
_0809259C:
	ldr r0, [r6, #4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	beq _080925E4
	movs r1, #1
	b _080925E4
_080925AA:
	movs r1, #0
	cmp r0, #2
	bne _080925B2
	movs r1, #1
_080925B2:
	cmp r1, #0
	beq _080925C2
	movs r1, #0
	cmp r2, #2
	bne _080925BE
	movs r1, #1
_080925BE:
	cmp r1, #0
	bne _08092636
_080925C2:
	movs r1, #0
	cmp r0, #2
	bne _080925CA
	movs r1, #1
_080925CA:
	cmp r1, #0
	bne _0809259C
	movs r0, #0
	cmp r2, #2
	bne _080925D6
	movs r0, #1
_080925D6:
	cmp r0, #0
	beq _080925E8
_080925DA:
	ldr r0, [r5, #4]
	movs r1, #1
	cmp r0, #0
	beq _080925E4
	subs r1, #2
_080925E4:
	adds r0, r1, #0
	b _08092638
_080925E8:
	ldr r0, [r6, #4]
	ldr r4, [r5, #4]
	cmp r4, r0
	beq _080925FA
_080925F0:
	movs r0, #1
	cmp r4, #0
	beq _08092638
	subs r0, #2
	b _08092638
_080925FA:
	ldr r1, [r5, #8]
	ldr r0, [r6, #8]
	cmp r1, r0
	bgt _080925F0
	cmp r1, r0
	bge _08092612
_08092606:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, #0
	beq _08092638
	movs r0, #1
	b _08092638
_08092612:
	ldr r3, [r5, #0x10]
	ldr r2, [r6, #0x10]
	cmp r3, r2
	bhi _080925F0
	cmp r3, r2
	bne _08092626
	ldr r1, [r5, #0xc]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	bhi _080925F0
_08092626:
	cmp r2, r3
	bhi _08092606
	cmp r2, r3
	bne _08092636
	ldr r1, [r6, #0xc]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	bhi _08092606
_08092636:
	movs r0, #0
_08092638:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0809263C
sub_0809263C: @ 0x0809263C
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_08091D60
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_08091D60
	mov r0, sp
	adds r1, r4, #0
	bl sub_0809253C
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08092668
sub_08092668: @ 0x08092668
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_08091D60
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_08091D60
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08092690
	movs r1, #1
_08092690:
	cmp r1, #0
	bne _080926A2
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0809269E
	movs r1, #1
_0809269E:
	cmp r1, #0
	beq _080926A6
_080926A2:
	movs r0, #1
	b _080926AE
_080926A6:
	mov r0, sp
	adds r1, r4, #0
	bl sub_0809253C
_080926AE:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080926B4
sub_080926B4: @ 0x080926B4
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_08091D60
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_08091D60
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080926DC
	movs r1, #1
_080926DC:
	cmp r1, #0
	bne _080926EE
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _080926EA
	movs r1, #1
_080926EA:
	cmp r1, #0
	beq _080926F2
_080926EE:
	movs r0, #1
	b _080926FA
_080926F2:
	mov r0, sp
	adds r1, r4, #0
	bl sub_0809253C
_080926FA:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08092700
sub_08092700: @ 0x08092700
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_08091D60
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_08091D60
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08092728
	movs r1, #1
_08092728:
	cmp r1, #0
	bne _0809273A
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _08092736
	movs r1, #1
_08092736:
	cmp r1, #0
	beq _08092740
_0809273A:
	movs r0, #1
	rsbs r0, r0, #0
	b _08092748
_08092740:
	mov r0, sp
	adds r1, r4, #0
	bl sub_0809253C
_08092748:
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start sub_0809274C
sub_0809274C: @ 0x0809274C
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_08091D60
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_08091D60
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08092774
	movs r1, #1
_08092774:
	cmp r1, #0
	bne _08092786
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _08092782
	movs r1, #1
_08092782:
	cmp r1, #0
	beq _0809278C
_08092786:
	movs r0, #1
	rsbs r0, r0, #0
	b _08092794
_0809278C:
	mov r0, sp
	adds r1, r4, #0
	bl sub_0809253C
_08092794:
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start sub_08092798
sub_08092798: @ 0x08092798
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_08091D60
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_08091D60
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080927C0
	movs r1, #1
_080927C0:
	cmp r1, #0
	bne _080927D2
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _080927CE
	movs r1, #1
_080927CE:
	cmp r1, #0
	beq _080927D6
_080927D2:
	movs r0, #1
	b _080927DE
_080927D6:
	mov r0, sp
	adds r1, r4, #0
	bl sub_0809253C
_080927DE:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080927E4
sub_080927E4: @ 0x080927E4
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_08091D60
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_08091D60
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0809280C
	movs r1, #1
_0809280C:
	cmp r1, #0
	bne _0809281E
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0809281A
	movs r1, #1
_0809281A:
	cmp r1, #0
	beq _08092822
_0809281E:
	movs r0, #1
	b _0809282A
_08092822:
	mov r0, sp
	adds r1, r4, #0
	bl sub_0809253C
_0809282A:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08092830
sub_08092830: @ 0x08092830
	push {r4, r5, lr}
	sub sp, #0x14
	adds r2, r0, #0
	movs r0, #3
	str r0, [sp]
	lsrs r1, r2, #0x1f
	str r1, [sp, #4]
	cmp r2, #0
	bne _08092848
	movs r0, #2
	str r0, [sp]
	b _0809289E
_08092848:
	movs r0, #0x3c
	str r0, [sp, #8]
	cmp r1, #0
	beq _0809286E
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r2, r0
	bne _08092868
	ldr r1, _08092864 @ =0x00000000
	ldr r0, _08092860 @ =0xC1E00000
	b _080928A4
	.align 2, 0
_08092860: .4byte 0xC1E00000
_08092864: .4byte 0x00000000
_08092868:
	rsbs r0, r2, #0
	asrs r1, r0, #0x1f
	b _08092872
_0809286E:
	adds r0, r2, #0
	asrs r1, r2, #0x1f
_08092872:
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [sp, #0x10]
	ldr r1, _080928A8 @ =0x0FFFFFFF
	cmp r0, r1
	bhi _0809289E
	adds r5, r1, #0
	ldr r4, [sp, #8]
_08092882:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	lsrs r3, r0, #0x1f
	lsls r2, r1, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r0, #1
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	subs r4, #1
	ldr r0, [sp, #0x10]
	cmp r0, r5
	bls _08092882
	str r4, [sp, #8]
_0809289E:
	mov r0, sp
	bl sub_08091C18
_080928A4:
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_080928A8: .4byte 0x0FFFFFFF

	thumb_func_start sub_080928AC
sub_080928AC: @ 0x080928AC
	push {lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl sub_08091D60
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #2
	bne _080928C6
	movs r1, #1
_080928C6:
	cmp r1, #0
	bne _080928FA
	movs r1, #0
	cmp r0, #1
	bhi _080928D2
	movs r1, #1
_080928D2:
	cmp r1, #0
	bne _080928FA
	movs r1, #0
	cmp r0, #4
	bne _080928DE
	movs r1, #1
_080928DE:
	cmp r1, #0
	beq _080928F4
_080928E2:
	ldr r0, [sp, #4]
	ldr r1, _080928F0 @ =0x7FFFFFFF
	cmp r0, #0
	beq _08092918
	adds r1, #1
	b _08092918
	.align 2, 0
_080928F0: .4byte 0x7FFFFFFF
_080928F4:
	ldr r0, [sp, #8]
	cmp r0, #0
	bge _080928FE
_080928FA:
	movs r0, #0
	b _0809291A
_080928FE:
	cmp r0, #0x1e
	bgt _080928E2
	movs r2, #0x3c
	subs r2, r2, r0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl sub_080935DC
	adds r1, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _08092918
	rsbs r1, r1, #0
_08092918:
	adds r0, r1, #0
_0809291A:
	add sp, #0x1c
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08092920
sub_08092920: @ 0x08092920
	push {lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl sub_08091D60
	movs r1, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0809293A
	movs r1, #1
_0809293A:
	str r1, [sp, #4]
	mov r0, sp
	bl sub_08091C18
	add sp, #0x1c
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08092948
sub_08092948: @ 0x08092948
	sub sp, #4
	push {r4, lr}
	sub sp, #0x14
	str r3, [sp, #0x1c]
	ldr r3, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	str r4, [sp, #0x10]
	mov r0, sp
	bl sub_08091C18
	add sp, #0x14
	pop {r4}
	pop {r3}
	add sp, #4
	bx r3
	.align 2, 0

	thumb_func_start sub_08092970
sub_08092970: @ 0x08092970
	push {r4, r5, lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl sub_08091D60
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsls r5, r3, #2
	lsrs r4, r2, #0x1e
	adds r0, r5, #0
	orrs r0, r4
	adds r5, r0, #0
	ldr r4, _080929B0 @ =0x3FFFFFFF
	adds r0, r2, #0
	ands r0, r4
	movs r1, #0
	orrs r0, r1
	cmp r0, #0
	beq _080929A0
	movs r0, #1
	orrs r5, r0
_080929A0:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	adds r3, r5, #0
	bl sub_080932BC
	add sp, #0x1c
	pop {r4, r5, pc}
	.align 2, 0
_080929B0: .4byte 0x3FFFFFFF

	thumb_func_start sub_080929B4
sub_080929B4: @ 0x080929B4
	push {r4, r5, r6, lr}
	ldr r2, [r0, #0xc]
	ldr r6, [r0, #4]
	movs r5, #0
	movs r1, #0
	ldr r3, [r0]
	cmp r3, #1
	bhi _080929C6
	movs r1, #1
_080929C6:
	cmp r1, #0
	beq _080929D4
	movs r5, #0xff
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r2, r0
	b _08092A3A
_080929D4:
	movs r1, #0
	cmp r3, #4
	bne _080929DC
	movs r1, #1
_080929DC:
	cmp r1, #0
	bne _08092A10
	movs r1, #0
	cmp r3, #2
	bne _080929E8
	movs r1, #1
_080929E8:
	cmp r1, #0
	beq _080929F0
	movs r2, #0
	b _08092A3A
_080929F0:
	cmp r2, #0
	beq _08092A3A
	ldr r0, [r0, #8]
	movs r3, #0x7e
	rsbs r3, r3, #0
	cmp r0, r3
	bge _08092A0C
	subs r0, r3, r0
	cmp r0, #0x19
	ble _08092A08
	movs r2, #0
	b _08092A38
_08092A08:
	lsrs r2, r0
	b _08092A38
_08092A0C:
	cmp r0, #0x7f
	ble _08092A16
_08092A10:
	movs r5, #0xff
	movs r2, #0
	b _08092A3A
_08092A16:
	adds r5, r0, #0
	adds r5, #0x7f
	movs r0, #0x7f
	ands r0, r2
	cmp r0, #0x40
	bne _08092A2E
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08092A30
	adds r2, #0x40
	b _08092A30
_08092A2E:
	adds r2, #0x3f
_08092A30:
	cmp r2, #0
	bge _08092A38
	lsrs r2, r2, #1
	adds r5, #1
_08092A38:
	lsrs r2, r2, #7
_08092A3A:
	ldr r0, _08092A5C @ =0x007FFFFF
	ands r2, r0
	ldr r0, _08092A60 @ =0xFF800000
	ands r4, r0
	orrs r4, r2
	movs r0, #0xff
	ands r5, r0
	lsls r1, r5, #0x17
	ldr r0, _08092A64 @ =0x807FFFFF
	ands r4, r0
	orrs r4, r1
	lsls r1, r6, #0x1f
	ldr r0, _08092A68 @ =0x7FFFFFFF
	ands r4, r0
	orrs r4, r1
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_08092A5C: .4byte 0x007FFFFF
_08092A60: .4byte 0xFF800000
_08092A64: .4byte 0x807FFFFF
_08092A68: .4byte 0x7FFFFFFF

	thumb_func_start sub_08092A6C
sub_08092A6C: @ 0x08092A6C
	push {r4, lr}
	adds r3, r1, #0
	ldr r0, [r0]
	lsls r1, r0, #9
	lsrs r2, r1, #9
	lsls r1, r0, #1
	lsrs r1, r1, #0x18
	lsrs r0, r0, #0x1f
	str r0, [r3, #4]
	cmp r1, #0
	bne _08092AB0
	cmp r2, #0
	bne _08092A8C
	movs r0, #2
	str r0, [r3]
	b _08092AE4
_08092A8C:
	adds r4, r1, #0
	subs r4, #0x7e
	str r4, [r3, #8]
	lsls r2, r2, #7
	movs r0, #3
	str r0, [r3]
	ldr r1, _08092AAC @ =0x3FFFFFFF
	cmp r2, r1
	bhi _08092ACC
	adds r0, r4, #0
_08092AA0:
	lsls r2, r2, #1
	subs r0, #1
	cmp r2, r1
	bls _08092AA0
	str r0, [r3, #8]
	b _08092ACC
	.align 2, 0
_08092AAC: .4byte 0x3FFFFFFF
_08092AB0:
	cmp r1, #0xff
	bne _08092AD0
	cmp r2, #0
	bne _08092ABE
	movs r0, #4
	str r0, [r3]
	b _08092AE4
_08092ABE:
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	beq _08092ACA
	movs r0, #1
_08092ACA:
	str r0, [r3]
_08092ACC:
	str r2, [r3, #0xc]
	b _08092AE4
_08092AD0:
	adds r0, r1, #0
	subs r0, #0x7f
	str r0, [r3, #8]
	movs r0, #3
	str r0, [r3]
	lsls r0, r2, #7
	movs r1, #0x80
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r3, #0xc]
_08092AE4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08092AE8
sub_08092AE8: @ 0x08092AE8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _08092AFE
	movs r0, #1
_08092AFE:
	cmp r0, #0
	beq _08092B06
_08092B02:
	adds r0, r6, #0
	b _08092C5C
_08092B06:
	movs r1, #0
	ldr r0, [r7]
	cmp r0, #1
	bhi _08092B10
	movs r1, #1
_08092B10:
	cmp r1, #0
	bne _08092B84
	movs r1, #0
	cmp r2, #4
	bne _08092B1C
	movs r1, #1
_08092B1C:
	cmp r1, #0
	beq _08092B3C
	movs r1, #0
	cmp r0, #4
	bne _08092B28
	movs r1, #1
_08092B28:
	cmp r1, #0
	beq _08092B02
	ldr r1, [r6, #4]
	ldr r0, [r7, #4]
	cmp r1, r0
	beq _08092B02
	ldr r0, _08092B38 @ =gUnknown_02015F48
	b _08092C5C
	.align 2, 0
_08092B38: .4byte gUnknown_02015F48
_08092B3C:
	movs r1, #0
	cmp r0, #4
	bne _08092B44
	movs r1, #1
_08092B44:
	cmp r1, #0
	bne _08092B84
	movs r1, #0
	cmp r0, #2
	bne _08092B50
	movs r1, #1
_08092B50:
	cmp r1, #0
	beq _08092B76
	movs r0, #0
	cmp r2, #2
	bne _08092B5C
	movs r0, #1
_08092B5C:
	cmp r0, #0
	beq _08092B02
	adds r1, r5, #0
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r6, #4]
	ldr r1, [r7, #4]
	ands r0, r1
	str r0, [r5, #4]
	b _08092C5A
_08092B76:
	movs r1, #0
	ldr r0, [r6]
	cmp r0, #2
	bne _08092B80
	movs r1, #1
_08092B80:
	cmp r1, #0
	beq _08092B88
_08092B84:
	adds r0, r7, #0
	b _08092C5C
_08092B88:
	ldr r1, [r6, #8]
	ldr r3, [r7, #8]
	ldr r2, [r6, #0xc]
	ldr r4, [r7, #0xc]
	subs r0, r1, r3
	cmp r0, #0
	bge _08092B98
	rsbs r0, r0, #0
_08092B98:
	cmp r0, #0x1f
	bgt _08092BDC
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
	cmp r1, r3
	ble _08092BBE
	movs r7, #1
	mov ip, r7
	subs r3, r1, r3
_08092BAC:
	subs r3, #1
	adds r0, r4, #0
	mov r7, ip
	ands r0, r7
	lsrs r4, r4, #1
	orrs r4, r0
	cmp r3, #0
	bne _08092BAC
	adds r3, r1, #0
_08092BBE:
	cmp r3, r1
	ble _08092BEE
	movs r0, #1
	mov ip, r0
	subs r1, r3, r1
_08092BC8:
	subs r1, #1
	adds r0, r2, #0
	mov r7, ip
	ands r0, r7
	lsrs r2, r2, #1
	orrs r2, r0
	cmp r1, #0
	bne _08092BC8
	adds r1, r3, #0
	b _08092BEE
_08092BDC:
	cmp r1, r3
	ble _08092BE4
	movs r4, #0
	b _08092BE8
_08092BE4:
	adds r1, r3, #0
	movs r2, #0
_08092BE8:
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
_08092BEE:
	cmp r6, r8
	beq _08092C38
	cmp r6, #0
	beq _08092BFA
	subs r3, r4, r2
	b _08092BFC
_08092BFA:
	subs r3, r2, r4
_08092BFC:
	cmp r3, #0
	blt _08092C0A
	movs r0, #0
	str r0, [r5, #4]
	str r1, [r5, #8]
	str r3, [r5, #0xc]
	b _08092C14
_08092C0A:
	movs r0, #1
	str r0, [r5, #4]
	str r1, [r5, #8]
	rsbs r0, r3, #0
	str r0, [r5, #0xc]
_08092C14:
	ldr r1, [r5, #0xc]
	subs r0, r1, #1
	ldr r2, _08092C34 @ =0x3FFFFFFE
	cmp r0, r2
	bhi _08092C40
_08092C1E:
	lsls r0, r1, #1
	str r0, [r5, #0xc]
	ldr r1, [r5, #8]
	subs r1, #1
	str r1, [r5, #8]
	adds r1, r0, #0
	subs r0, r1, #1
	cmp r0, r2
	bls _08092C1E
	b _08092C40
	.align 2, 0
_08092C34: .4byte 0x3FFFFFFE
_08092C38:
	str r6, [r5, #4]
	str r1, [r5, #8]
	adds r0, r2, r4
	str r0, [r5, #0xc]
_08092C40:
	movs r0, #3
	str r0, [r5]
	ldr r1, [r5, #0xc]
	cmp r1, #0
	bge _08092C5A
	movs r0, #1
	ands r0, r1
	lsrs r1, r1, #1
	orrs r0, r1
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	adds r0, #1
	str r0, [r5, #8]
_08092C5A:
	adds r0, r5, #0
_08092C5C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08092C64
sub_08092C64: @ 0x08092C64
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl sub_08092A6C
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08092A6C
	add r2, sp, #0x20
	mov r0, sp
	adds r1, r4, #0
	bl sub_08092AE8
	bl sub_080929B4
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start sub_08092C90
sub_08092C90: @ 0x08092C90
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl sub_08092A6C
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08092A6C
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #4]
	add r2, sp, #0x20
	mov r0, sp
	adds r1, r4, #0
	bl sub_08092AE8
	bl sub_080929B4
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start sub_08092CC4
sub_08092CC4: @ 0x08092CC4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl sub_08092A6C
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08092A6C
	mov r7, sp
	add r0, sp, #0x20
	mov r8, r0
	movs r0, #0
	ldr r1, [sp]
	mov sb, r8
	cmp r1, #1
	bhi _08092CF6
	movs r0, #1
_08092CF6:
	cmp r0, #0
	bne _08092D54
	movs r2, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _08092D04
	movs r2, #1
_08092D04:
	cmp r2, #0
	beq _08092D0C
	ldr r0, [sp, #4]
	b _08092D74
_08092D0C:
	movs r2, #0
	cmp r1, #4
	bne _08092D14
	movs r2, #1
_08092D14:
	cmp r2, #0
	beq _08092D26
	movs r1, #0
	cmp r0, #2
	bne _08092D20
	movs r1, #1
_08092D20:
	cmp r1, #0
	bne _08092D3E
	b _08092D54
_08092D26:
	movs r2, #0
	cmp r0, #4
	bne _08092D2E
	movs r2, #1
_08092D2E:
	cmp r2, #0
	beq _08092D48
	movs r0, #0
	cmp r1, #2
	bne _08092D3A
	movs r0, #1
_08092D3A:
	cmp r0, #0
	beq _08092D72
_08092D3E:
	ldr r0, _08092D44 @ =gUnknown_02015F48
	b _08092E16
	.align 2, 0
_08092D44: .4byte gUnknown_02015F48
_08092D48:
	movs r2, #0
	cmp r1, #2
	bne _08092D50
	movs r2, #1
_08092D50:
	cmp r2, #0
	beq _08092D66
_08092D54:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	mov r0, sp
	b _08092E16
_08092D66:
	movs r1, #0
	cmp r0, #2
	bne _08092D6E
	movs r1, #1
_08092D6E:
	cmp r1, #0
	beq _08092D84
_08092D72:
	ldr r0, [r7, #4]
_08092D74:
	ldr r1, [sp, #0x14]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x14]
	adds r0, r4, #0
	b _08092E16
_08092D84:
	ldr r0, [r7, #0xc]
	movs r1, #0
	ldr r2, [sp, #0x1c]
	movs r3, #0
	bl sub_08093610
	adds r2, r1, #0
	adds r5, r2, #0
	adds r6, r0, #0
	ldr r4, [r7, #8]
	ldr r0, [sp, #0x18]
	adds r4, r4, r0
	str r4, [sp, #0x28]
	ldr r1, [r7, #4]
	ldr r0, [sp, #0x14]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x24]
	adds r4, #2
	str r4, [sp, #0x28]
	cmp r2, #0
	bge _08092DD0
	movs r2, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
_08092DBA:
	adds r4, #1
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #0
	beq _08092DC8
	lsrs r6, r6, #1
	orrs r6, r1
_08092DC8:
	lsrs r5, r5, #1
	cmp r5, #0
	blt _08092DBA
	str r4, [sp, #0x28]
_08092DD0:
	ldr r0, _08092E24 @ =0x3FFFFFFF
	cmp r5, r0
	bhi _08092DF6
	movs r4, #0x80
	lsls r4, r4, #0x18
	movs r3, #1
	adds r2, r0, #0
	ldr r1, [sp, #0x28]
_08092DE0:
	subs r1, #1
	lsls r5, r5, #1
	adds r0, r6, #0
	ands r0, r4
	cmp r0, #0
	beq _08092DEE
	orrs r5, r3
_08092DEE:
	lsls r6, r6, #1
	cmp r5, r2
	bls _08092DE0
	str r1, [sp, #0x28]
_08092DF6:
	movs r0, #0x7f
	ands r0, r5
	cmp r0, #0x40
	bne _08092E0C
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	bne _08092E0A
	cmp r6, #0
	beq _08092E0C
_08092E0A:
	adds r5, #0x40
_08092E0C:
	str r5, [sp, #0x2c]
	movs r0, #3
	mov r1, r8
	str r0, [r1]
	mov r0, sb
_08092E16:
	bl sub_080929B4
	add sp, #0x38
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08092E24: .4byte 0x3FFFFFFF

	thumb_func_start sub_08092E28
sub_08092E28: @ 0x08092E28
	push {r4, r5, r6, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_08092A6C
	add r0, sp, #0x24
	add r5, sp, #0x10
	adds r1, r5, #0
	bl sub_08092A6C
	mov r4, sp
	movs r0, #0
	ldr r3, [sp]
	cmp r3, #1
	bhi _08092E4E
	movs r0, #1
_08092E4E:
	cmp r0, #0
	beq _08092E56
	mov r1, sp
	b _08092F08
_08092E56:
	movs r0, #0
	ldr r2, [sp, #0x10]
	adds r6, r2, #0
	cmp r2, #1
	bhi _08092E62
	movs r0, #1
_08092E62:
	cmp r0, #0
	beq _08092E6A
	adds r1, r5, #0
	b _08092F08
_08092E6A:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	eors r0, r1
	str r0, [sp, #4]
	movs r0, #0
	cmp r3, #4
	bne _08092E7A
	movs r0, #1
_08092E7A:
	cmp r0, #0
	bne _08092E8A
	movs r0, #0
	cmp r3, #2
	bne _08092E86
	movs r0, #1
_08092E86:
	cmp r0, #0
	beq _08092E9C
_08092E8A:
	ldr r0, [r4]
	adds r1, r4, #0
	cmp r0, r6
	bne _08092F08
	ldr r1, _08092E98 @ =gUnknown_02015F48
	b _08092F08
	.align 2, 0
_08092E98: .4byte gUnknown_02015F48
_08092E9C:
	movs r1, #0
	cmp r2, #4
	bne _08092EA4
	movs r1, #1
_08092EA4:
	cmp r1, #0
	beq _08092EB0
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	mov r1, sp
	b _08092F08
_08092EB0:
	movs r0, #0
	cmp r2, #2
	bne _08092EB8
	movs r0, #1
_08092EB8:
	cmp r0, #0
	beq _08092EC2
	movs r0, #4
	str r0, [r4]
	b _08092F06
_08092EC2:
	ldr r1, [r4, #8]
	ldr r0, [sp, #0x18]
	subs r0, r1, r0
	str r0, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r3, [sp, #0x1c]
	cmp r2, r3
	bhs _08092ED8
	lsls r2, r2, #1
	subs r0, #1
	str r0, [r4, #8]
_08092ED8:
	movs r0, #0x80
	lsls r0, r0, #0x17
	movs r1, #0
_08092EDE:
	cmp r2, r3
	blo _08092EE6
	orrs r1, r0
	subs r2, r2, r3
_08092EE6:
	lsrs r0, r0, #1
	lsls r2, r2, #1
	cmp r0, #0
	bne _08092EDE
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x40
	bne _08092F04
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08092F02
	cmp r2, #0
	beq _08092F04
_08092F02:
	adds r1, #0x40
_08092F04:
	str r1, [r4, #0xc]
_08092F06:
	adds r1, r4, #0
_08092F08:
	adds r0, r1, #0
	bl sub_080929B4
	add sp, #0x28
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08092F14
sub_08092F14: @ 0x08092F14
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	ldr r2, [r4]
	cmp r2, #1
	bhi _08092F22
	movs r0, #1
_08092F22:
	cmp r0, #0
	bne _08092F34
	movs r0, #0
	ldr r3, [r1]
	cmp r3, #1
	bhi _08092F30
	movs r0, #1
_08092F30:
	cmp r0, #0
	beq _08092F38
_08092F34:
	movs r0, #1
	b _08092FF6
_08092F38:
	movs r0, #0
	cmp r2, #4
	bne _08092F40
	movs r0, #1
_08092F40:
	cmp r0, #0
	beq _08092F58
	movs r0, #0
	cmp r3, #4
	bne _08092F4C
	movs r0, #1
_08092F4C:
	cmp r0, #0
	beq _08092F58
	ldr r0, [r1, #4]
	ldr r1, [r4, #4]
	subs r0, r0, r1
	b _08092FF6
_08092F58:
	movs r2, #0
	ldr r0, [r4]
	cmp r0, #4
	bne _08092F62
	movs r2, #1
_08092F62:
	cmp r2, #0
	bne _08092FB0
	movs r2, #0
	cmp r3, #4
	bne _08092F6E
	movs r2, #1
_08092F6E:
	cmp r2, #0
	beq _08092F80
_08092F72:
	ldr r0, [r1, #4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	beq _08092FBA
	movs r1, #1
	b _08092FBA
_08092F80:
	movs r2, #0
	cmp r0, #2
	bne _08092F88
	movs r2, #1
_08092F88:
	cmp r2, #0
	beq _08092F98
	movs r2, #0
	cmp r3, #2
	bne _08092F94
	movs r2, #1
_08092F94:
	cmp r2, #0
	bne _08092FF4
_08092F98:
	movs r2, #0
	cmp r0, #2
	bne _08092FA0
	movs r2, #1
_08092FA0:
	cmp r2, #0
	bne _08092F72
	movs r0, #0
	cmp r3, #2
	bne _08092FAC
	movs r0, #1
_08092FAC:
	cmp r0, #0
	beq _08092FBE
_08092FB0:
	ldr r0, [r4, #4]
	movs r1, #1
	cmp r0, #0
	beq _08092FBA
	subs r1, #2
_08092FBA:
	adds r0, r1, #0
	b _08092FF6
_08092FBE:
	ldr r3, [r4, #4]
	ldr r0, [r1, #4]
	cmp r3, r0
	beq _08092FD0
_08092FC6:
	movs r0, #1
	cmp r3, #0
	beq _08092FF6
	subs r0, #2
	b _08092FF6
_08092FD0:
	ldr r2, [r4, #8]
	ldr r0, [r1, #8]
	cmp r2, r0
	bgt _08092FC6
	cmp r2, r0
	bge _08092FE8
_08092FDC:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, #0
	beq _08092FF6
	movs r0, #1
	b _08092FF6
_08092FE8:
	ldr r0, [r4, #0xc]
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bhi _08092FC6
	cmp r0, r1
	blo _08092FDC
_08092FF4:
	movs r0, #0
_08092FF6:
	pop {r4, pc}

	thumb_func_start sub_08092FF8
sub_08092FF8: @ 0x08092FF8
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_08092A6C
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08092A6C
	mov r0, sp
	adds r1, r4, #0
	bl sub_08092F14
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08093020
sub_08093020: @ 0x08093020
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_08092A6C
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08092A6C
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08093044
	movs r1, #1
_08093044:
	cmp r1, #0
	bne _08093056
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _08093052
	movs r1, #1
_08093052:
	cmp r1, #0
	beq _0809305A
_08093056:
	movs r0, #1
	b _08093062
_0809305A:
	mov r0, sp
	adds r1, r4, #0
	bl sub_08092F14
_08093062:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08093068
sub_08093068: @ 0x08093068
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_08092A6C
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08092A6C
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0809308C
	movs r1, #1
_0809308C:
	cmp r1, #0
	bne _0809309E
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0809309A
	movs r1, #1
_0809309A:
	cmp r1, #0
	beq _080930A2
_0809309E:
	movs r0, #1
	b _080930AA
_080930A2:
	mov r0, sp
	adds r1, r4, #0
	bl sub_08092F14
_080930AA:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080930B0
sub_080930B0: @ 0x080930B0
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_08092A6C
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08092A6C
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080930D4
	movs r1, #1
_080930D4:
	cmp r1, #0
	bne _080930E6
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080930E2
	movs r1, #1
_080930E2:
	cmp r1, #0
	beq _080930EC
_080930E6:
	movs r0, #1
	rsbs r0, r0, #0
	b _080930F4
_080930EC:
	mov r0, sp
	adds r1, r4, #0
	bl sub_08092F14
_080930F4:
	add sp, #0x28
	pop {r4, pc}

	thumb_func_start sub_080930F8
sub_080930F8: @ 0x080930F8
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_08092A6C
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08092A6C
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0809311C
	movs r1, #1
_0809311C:
	cmp r1, #0
	bne _0809312E
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0809312A
	movs r1, #1
_0809312A:
	cmp r1, #0
	beq _08093134
_0809312E:
	movs r0, #1
	rsbs r0, r0, #0
	b _0809313C
_08093134:
	mov r0, sp
	adds r1, r4, #0
	bl sub_08092F14
_0809313C:
	add sp, #0x28
	pop {r4, pc}

	thumb_func_start sub_08093140
sub_08093140: @ 0x08093140
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_08092A6C
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08092A6C
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08093164
	movs r1, #1
_08093164:
	cmp r1, #0
	bne _08093176
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _08093172
	movs r1, #1
_08093172:
	cmp r1, #0
	beq _0809317A
_08093176:
	movs r0, #1
	b _08093182
_0809317A:
	mov r0, sp
	adds r1, r4, #0
	bl sub_08092F14
_08093182:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08093188
sub_08093188: @ 0x08093188
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_08092A6C
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08092A6C
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080931AC
	movs r1, #1
_080931AC:
	cmp r1, #0
	bne _080931BE
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080931BA
	movs r1, #1
_080931BA:
	cmp r1, #0
	beq _080931C2
_080931BE:
	movs r0, #1
	b _080931CA
_080931C2:
	mov r0, sp
	adds r1, r4, #0
	bl sub_08092F14
_080931CA:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080931D0
sub_080931D0: @ 0x080931D0
	push {lr}
	sub sp, #0x10
	adds r1, r0, #0
	movs r0, #3
	str r0, [sp]
	lsrs r2, r1, #0x1f
	str r2, [sp, #4]
	cmp r1, #0
	bne _080931E8
	movs r0, #2
	str r0, [sp]
	b _08093220
_080931E8:
	movs r0, #0x1e
	str r0, [sp, #8]
	cmp r2, #0
	beq _08093206
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bne _08093200
	ldr r0, _080931FC @ =0xCF000000
	b _08093226
	.align 2, 0
_080931FC: .4byte 0xCF000000
_08093200:
	rsbs r0, r1, #0
	str r0, [sp, #0xc]
	b _08093208
_08093206:
	str r1, [sp, #0xc]
_08093208:
	ldr r2, [sp, #0xc]
	ldr r3, _0809322C @ =0x3FFFFFFF
	cmp r2, r3
	bhi _08093220
	ldr r1, [sp, #8]
_08093212:
	lsls r0, r2, #1
	subs r1, #1
	adds r2, r0, #0
	cmp r0, r3
	bls _08093212
	str r1, [sp, #8]
	str r0, [sp, #0xc]
_08093220:
	mov r0, sp
	bl sub_080929B4
_08093226:
	add sp, #0x10
	pop {pc}
	.align 2, 0
_0809322C: .4byte 0x3FFFFFFF

	thumb_func_start sub_08093230
sub_08093230: @ 0x08093230
	push {lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	mov r1, sp
	bl sub_08092A6C
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #2
	bne _08093248
	movs r1, #1
_08093248:
	cmp r1, #0
	bne _0809327A
	movs r1, #0
	cmp r0, #1
	bhi _08093254
	movs r1, #1
_08093254:
	cmp r1, #0
	bne _0809327A
	movs r1, #0
	cmp r0, #4
	bne _08093260
	movs r1, #1
_08093260:
	cmp r1, #0
	beq _08093274
_08093264:
	ldr r0, [sp, #4]
	ldr r1, _08093270 @ =0x7FFFFFFF
	cmp r0, #0
	beq _08093292
	adds r1, #1
	b _08093292
	.align 2, 0
_08093270: .4byte 0x7FFFFFFF
_08093274:
	ldr r1, [sp, #8]
	cmp r1, #0
	bge _0809327E
_0809327A:
	movs r0, #0
	b _08093294
_0809327E:
	cmp r1, #0x1e
	bgt _08093264
	movs r0, #0x1e
	subs r0, r0, r1
	ldr r1, [sp, #0xc]
	lsrs r1, r0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _08093292
	rsbs r1, r1, #0
_08093292:
	adds r0, r1, #0
_08093294:
	add sp, #0x14
	pop {pc}

	thumb_func_start sub_08093298
sub_08093298: @ 0x08093298
	push {lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	mov r1, sp
	bl sub_08092A6C
	movs r1, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _080932B0
	movs r1, #1
_080932B0:
	str r1, [sp, #4]
	mov r0, sp
	bl sub_080929B4
	add sp, #0x14
	pop {pc}

	thumb_func_start sub_080932BC
sub_080932BC: @ 0x080932BC
	push {lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, sp
	bl sub_080929B4
	add sp, #0x10
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080932D4
sub_080932D4: @ 0x080932D4
	push {r4, r5, r6, lr}
	sub sp, #0x18
	str r0, [sp, #0x14]
	add r0, sp, #0x14
	add r1, sp, #4
	bl sub_08092A6C
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	movs r4, #0
	lsrs r6, r3, #2
	lsls r5, r4, #0x1e
	adds r4, r6, #0
	orrs r4, r5
	lsls r3, r3, #0x1e
	str r4, [sp]
	bl sub_08092948
	add sp, #0x18
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08093300
sub_08093300: @ 0x08093300
	push {lr}
	bl sub_080936F4
	.align 2, 0

	thumb_func_start sub_08093308
sub_08093308: @ 0x08093308
	push {lr}
	ldr r0, _08093314 @ =0x09F447B8
	ldr r0, [r0]
	bl sub_08091934
	pop {pc}
	.align 2, 0
_08093314: .4byte 0x09F447B8

	thumb_func_start sub_08093318
sub_08093318: @ 0x08093318
	push {r4, lr}
	adds r4, r2, #0
	bl sub_08093D48
	cmp r0, #0
	beq _08093328
	movs r0, #0
	b _0809332A
_08093328:
	adds r0, r4, #0
_0809332A:
	pop {r4, pc}

	thumb_func_start sub_0809332C
sub_0809332C: @ 0x0809332C
	bx lr
	.align 2, 0

	thumb_func_start sub_08093330
sub_08093330: @ 0x08093330
	push {r4, lr}
	movs r0, #0x18
	bl sub_0809371C
	adds r4, r0, #0
	cmp r4, #0
	bne _08093342
	bl sub_08093308
_08093342:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x18
	bl sub_08093CC0
	adds r0, r4, #0
	adds r0, #0x10
	str r0, [r4, #4]
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08093358
sub_08093358: @ 0x08093358
	push {lr}
	ldr r0, _08093364 @ =0x09F447BC
	ldr r0, [r0]
	bl sub_08091934
	pop {pc}
	.align 2, 0
_08093364: .4byte 0x09F447BC

	thumb_func_start sub_08093368
sub_08093368: @ 0x08093368
	push {lr}
	ldr r0, _08093378 @ =0x09F447BC
	ldr r0, [r0]
	bl sub_08091934
	adds r0, #8
	pop {pc}
	.align 2, 0
_08093378: .4byte 0x09F447BC

	thumb_func_start sub_0809337C
sub_0809337C: @ 0x0809337C
	push {lr}
	ldr r1, _0809338C @ =0x09F447BC
	ldr r0, _08093390 @ =sub_08093394
	str r0, [r1]
	bl sub_08091934
	pop {pc}
	.align 2, 0
_0809338C: .4byte 0x09F447BC
_08093390: .4byte sub_08093394

	thumb_func_start sub_08093394
sub_08093394: @ 0x08093394
	push {r4, lr}
	ldr r1, _080933B8 @ =gUnknown_02015F68
	ldr r0, [r1]
	cmp r0, #0
	bne _080933B2
	movs r0, #1
	str r0, [r1]
	ldr r4, _080933BC @ =gUnknown_02015F58
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x10
	bl sub_08093CC0
	ldr r0, _080933C0 @ =gUnknown_02015F70
	str r0, [r4, #4]
_080933B2:
	ldr r0, _080933BC @ =gUnknown_02015F58
	pop {r4, pc}
	.align 2, 0
_080933B8: .4byte gUnknown_02015F68
_080933BC: .4byte gUnknown_02015F58
_080933C0: .4byte gUnknown_02015F70

	thumb_func_start sub_080933C4
sub_080933C4: @ 0x080933C4
	push {lr}
	ldr r0, _080933D4 @ =0x09F447BC
	ldr r0, [r0]
	bl sub_08091934
	adds r0, #4
	pop {pc}
	.align 2, 0
_080933D4: .4byte 0x09F447BC
sub_080933D8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _08093430 @ =0xFFFFF9B0
	add sp, r4
	mov r7, sp
	ldr r0, _08093434 @ =0x09F447BC
	ldr r0, [r0]
	bl sub_08091934
	movs r1, #0xc8
	lsls r1, r1, #3
	adds r1, r1, r7
	str r0, [r1]
	adds r0, #4
	ldr r2, _08093438 @ =0x00000644
	adds r2, r2, r7
	str r0, [r2]
	ldr r3, [r1]
	ldr r1, [r3, #4]
	adds r0, r1, #4
	movs r2, #0xc9
	lsls r2, r2, #3
	adds r2, r2, r7
	str r0, [r2]
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _080934A8
	ldr r3, _0809343C @ =0x0000064C
	adds r3, r3, r7
	str r7, [r3]
	movs r0, #0
	str r0, [r7, #4]
	str r1, [r7]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _08093440 @ =_08093444
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08093446
	.align 2, 0
_08093430: .4byte 0xFFFFF9B0
_08093434: .4byte 0x09F447BC
_08093438: .4byte 0x00000644
_0809343C: .4byte 0x0000064C
_08093440: .4byte _08093444
_08093444:
	b _080934A4
_08093446:
	ldr r1, _0809349C @ =0x0000064C
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r2, _080934A0 @ =0x00000644
	adds r2, r2, r7
	ldr r2, [r2]
	str r1, [r2]
	movs r2, #0xc9
	lsls r2, r2, #3
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2]
	cmp r0, #0
	beq _08093488
_08093462:
	movs r3, #0xc9
	lsls r3, r3, #3
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r1, [r3]
	ldr r2, [r1, #4]
	ldr r0, [r1, #8]
	ldr r1, [r1]
	str r1, [r3]
	movs r1, #2
	bl sub_0809193C
	movs r1, #0xc9
	lsls r1, r1, #3
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1]
	cmp r0, #0
	bne _08093462
_08093488:
	ldr r2, _0809349C @ =0x0000064C
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2]
	ldr r3, _080934A0 @ =0x00000644
	adds r3, r3, r7
	ldr r3, [r3]
	str r0, [r3]
	b _080934A8
	.align 2, 0
_0809349C: .4byte 0x0000064C
_080934A0: .4byte 0x00000644
_080934A4:
	bl sub_08093308
_080934A8:
	movs r1, #0xc8
	lsls r1, r1, #3
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _080934C4
	ldr r2, _080934E4 @ =0x00000644
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2]
	ldr r0, [r0]
	cmp r0, #0
	bne _080934C8
_080934C4:
	bl sub_08093308
_080934C8:
	ldr r3, _080934E4 @ =0x00000644
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r1, [r3]
	adds r2, r1, #0
	adds r2, #8
	ldr r0, [r1]
	str r0, [r3]
	ldr r0, [r2, #4]
	ldr r7, [r1, #8]
	ldr r2, [r2, #8]
	mov sp, r2
	mov pc, r0
	.align 2, 0
_080934E4: .4byte 0x00000644

	thumb_func_start sub_080934E8
sub_080934E8: @ 0x080934E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _08093538 @ =0xFFFFF9B4
	add sp, r4
	mov r7, sp
	ldr r0, _0809353C @ =0x09F447BC
	ldr r0, [r0]
	bl sub_08091934
	adds r1, r0, #4
	movs r2, #0xc8
	lsls r2, r2, #3
	adds r2, r2, r7
	str r1, [r2]
	ldr r1, [r0, #4]
	adds r3, r1, #4
	ldr r0, _08093540 @ =0x00000644
	adds r0, r0, r7
	str r3, [r0]
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _080935A4
	movs r2, #0xc9
	lsls r2, r2, #3
	adds r2, r2, r7
	str r7, [r2]
	movs r0, #0
	str r0, [r7, #4]
	str r1, [r7]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _08093544 @ =_08093548
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _0809354A
	.align 2, 0
_08093538: .4byte 0xFFFFF9B4
_0809353C: .4byte 0x09F447BC
_08093540: .4byte 0x00000644
_08093544: .4byte _08093548
_08093548:
	b _080935A0
_0809354A:
	movs r0, #0xc9
	lsls r0, r0, #3
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #0xc8
	lsls r1, r1, #3
	adds r1, r1, r7
	ldr r1, [r1]
	str r0, [r1]
	b _0809357A
_0809355E:
	ldr r2, _0809359C @ =0x00000644
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r1, [r2]
	ldr r2, [r1, #4]
	ldr r0, [r1, #8]
	ldr r1, [r1]
	ldr r3, _0809359C @ =0x00000644
	adds r3, r3, r7
	ldr r3, [r3]
	str r1, [r3]
	movs r1, #2
	bl sub_0809193C
_0809357A:
	ldr r1, _0809359C @ =0x00000644
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1]
	cmp r0, #0
	bne _0809355E
	movs r2, #0xc9
	lsls r2, r2, #3
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2]
	movs r3, #0xc8
	lsls r3, r3, #3
	adds r3, r3, r7
	ldr r3, [r3]
	str r0, [r3]
	b _080935A4
	.align 2, 0
_0809359C: .4byte 0x00000644
_080935A0:
	bl sub_08093308
_080935A4:
	movs r1, #0xc8
	lsls r1, r1, #3
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1]
	ldr r0, [r0]
	str r0, [r1]
	bl sub_080933D8
	.align 2, 0

	thumb_func_start sub_080935B8
sub_080935B8: @ 0x080935B8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08093368
	ldr r0, [r0]
	ldr r3, [r0]
	cmp r3, #0
	bne _080935CC
	movs r0, #0
	b _080935DA
_080935CC:
	adds r1, r4, #0
	movs r2, #0
	bl sub_08091940
	cmp r0, #0
	beq _080935DA
	movs r0, #1
_080935DA:
	pop {r4, pc}

	thumb_func_start sub_080935DC
sub_080935DC: @ 0x080935DC
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	cmp r2, #0
	beq _0809360C
	movs r0, #0x20
	subs r0, r0, r2
	cmp r0, #0
	bgt _080935F8
	movs r4, #0
	rsbs r0, r0, #0
	adds r3, r6, #0
	lsrs r3, r0
	b _08093608
_080935F8:
	adds r1, r6, #0
	lsls r1, r0
	adds r4, r6, #0
	lsrs r4, r2
	adds r0, r5, #0
	lsrs r0, r2
	adds r3, r0, #0
	orrs r3, r1
_08093608:
	adds r1, r4, #0
	adds r0, r3, #0
_0809360C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08093610
sub_08093610: @ 0x08093610
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r3, [sp]
	ldr r0, _0809367C @ =0x0000FFFF
	mov ip, r0
	adds r2, r3, #0
	ands r2, r0
	lsrs r3, r3, #0x10
	ldr r1, [sp, #8]
	adds r0, r1, #0
	mov r4, ip
	ands r0, r4
	lsrs r1, r1, #0x10
	adds r5, r2, #0
	muls r5, r0, r5
	adds r4, r2, #0
	muls r4, r1, r4
	adds r2, r3, #0
	muls r2, r0, r2
	muls r3, r1, r3
	lsrs r0, r5, #0x10
	adds r4, r4, r0
	adds r4, r4, r2
	cmp r4, r2
	bhs _08093650
	movs r0, #0x80
	lsls r0, r0, #9
	adds r3, r3, r0
_08093650:
	lsrs r0, r4, #0x10
	adds r7, r3, r0
	mov r1, ip
	ands r4, r1
	lsls r0, r4, #0x10
	ands r5, r1
	adds r6, r0, #0
	orrs r6, r5
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r3, [sp]
	ldr r4, [sp, #0xc]
	adds r2, r3, #0
	muls r2, r4, r2
	ldr r5, [sp, #4]
	ldr r4, [sp, #8]
	adds r3, r5, #0
	muls r3, r4, r3
	adds r2, r2, r3
	adds r1, r7, r2
	add sp, #0x10
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809367C: .4byte 0x0000FFFF

	thumb_func_start sub_08093680
sub_08093680: @ 0x08093680
	push {r4, lr}
	rsbs r2, r0, #0
	adds r3, r2, #0
	rsbs r1, r1, #0
	cmp r2, #0
	beq _0809368E
	subs r1, #1
_0809368E:
	adds r4, r1, #0
	adds r1, r4, #0
	adds r0, r3, #0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08093698
sub_08093698: @ 0x08093698
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, _080936CC @ =0x09F44AAC
	ldr r1, [r5]
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r0, r1, r4
	ldr r3, [r0]
	cmp r3, #0
	bne _080936B4
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r3, r1, r2
	str r3, [r0]
_080936B4:
	ldr r0, [r3, #4]
	cmp r0, #0x1f
	ble _080936DE
	movs r0, #0x88
	bl sub_0809371C
	adds r3, r0, #0
	cmp r3, #0
	bne _080936D0
	movs r0, #1
	rsbs r0, r0, #0
	b _080936F0
	.align 2, 0
_080936CC: .4byte 0x09F44AAC
_080936D0:
	movs r0, #0
	str r0, [r3, #4]
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r1, [r0]
	str r1, [r3]
	str r3, [r0]
_080936DE:
	ldr r0, [r3, #4]
	lsls r2, r0, #2
	adds r1, r3, #0
	adds r1, #8
	adds r1, r1, r2
	str r6, [r1]
	adds r0, #1
	str r0, [r3, #4]
	movs r0, #0
_080936F0:
	pop {r4, r5, r6, pc}
	.align 2, 0
sub_080936F4:
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _08093710 @ =0x00020022
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_08093710: .4byte 0x00020022

	thumb_func_start sub_08093714
sub_08093714: @ 0x08093714
	movs r0, #1
	bx lr

	thumb_func_start sub_08093718
sub_08093718: @ 0x08093718
	bx lr
	.align 2, 0

	thumb_func_start sub_0809371C
sub_0809371C: @ 0x0809371C
	push {lr}
	adds r1, r0, #0
	ldr r0, _0809372C @ =0x09F44AAC
	ldr r0, [r0]
	bl sub_080938A0
	pop {pc}
	.align 2, 0
_0809372C: .4byte 0x09F44AAC

	thumb_func_start sub_08093730
sub_08093730: @ 0x08093730
	push {lr}
	adds r1, r0, #0
	ldr r0, _08093740 @ =0x09F44AAC
	ldr r0, [r0]
	bl sub_08094248
	pop {pc}
	.align 2, 0
_08093740: .4byte 0x09F44AAC

	thumb_func_start sub_08093744
sub_08093744: @ 0x08093744
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	ldr r0, _080937B8 @ =0x09F44AB0
	ldr r0, [r0, #8]
	mov r8, r0
	ldr r7, [r0, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r7, r0
	mov r2, r8
	adds r4, r2, r7
	ldr r0, _080937BC @ =0x09F44EBC
	ldr r0, [r0]
	adds r1, r1, r0
	adds r6, r1, #0
	adds r6, #0x10
	ldr r3, _080937C0 @ =0x09F44EC0
	mov sl, r3
	ldr r0, [r3]
	movs r2, #1
	rsbs r2, r2, #0
	mov sb, r2
	cmp r0, sb
	beq _08093786
	ldr r3, _080937C4 @ =0x0000100F
	adds r6, r1, r3
	ldr r0, _080937C8 @ =0xFFFFF000
	ands r6, r0
_08093786:
	ldr r0, [sp]
	adds r1, r6, #0
	bl sub_08093D1C
	adds r5, r0, #0
	cmp r5, sb
	beq _08093888
	cmp r5, r4
	bhs _0809379E
	ldr r0, _080937B8 @ =0x09F44AB0
	cmp r8, r0
	bne _08093888
_0809379E:
	ldr r1, _080937CC @ =0x09F44ECC
	ldr r0, [r1]
	adds r2, r0, r6
	str r2, [r1]
	cmp r5, r4
	bne _080937D0
	adds r2, r6, r7
	ldr r3, _080937B8 @ =0x09F44AB0
	ldr r1, [r3, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r1, #4]
	b _08093870
	.align 2, 0
_080937B8: .4byte 0x09F44AB0
_080937BC: .4byte 0x09F44EBC
_080937C0: .4byte 0x09F44EC0
_080937C4: .4byte 0x0000100F
_080937C8: .4byte 0xFFFFF000
_080937CC: .4byte 0x09F44ECC
_080937D0:
	mov r3, sl
	ldr r0, [r3]
	cmp r0, sb
	bne _080937DC
	str r5, [r3]
	b _080937E2
_080937DC:
	subs r0, r5, r4
	adds r0, r2, r0
	str r0, [r1]
_080937E2:
	adds r1, r5, #0
	adds r1, #8
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	beq _080937F6
	movs r0, #8
	subs r4, r0, r1
	adds r5, r5, r4
	b _080937F8
_080937F6:
	movs r4, #0
_080937F8:
	adds r0, r5, r6
	movs r1, #0x80
	lsls r1, r1, #5
	subs r1, #1
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	subs r0, r1, r0
	adds r4, r4, r0
	ldr r0, [sp]
	adds r1, r4, #0
	bl sub_08093D1C
	adds r2, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _08093888
	ldr r1, _08093840 @ =0x09F44ECC
	ldr r0, [r1]
	adds r0, r0, r4
	str r0, [r1]
	ldr r1, _08093844 @ =0x09F44AB0
	str r5, [r1, #8]
	subs r0, r2, r5
	adds r2, r0, r4
	movs r3, #1
	orrs r2, r3
	str r2, [r5, #4]
	cmp r8, r1
	beq _08093870
	cmp r7, #0xf
	bhi _08093848
	str r3, [r5, #4]
	b _08093888
	.align 2, 0
_08093840: .4byte 0x09F44ECC
_08093844: .4byte 0x09F44AB0
_08093848:
	subs r7, #0xc
	movs r0, #8
	rsbs r0, r0, #0
	ands r7, r0
	mov r2, r8
	ldr r0, [r2, #4]
	ands r0, r3
	orrs r0, r7
	str r0, [r2, #4]
	adds r1, r2, r7
	movs r0, #5
	str r0, [r1, #4]
	str r0, [r1, #8]
	cmp r7, #0xf
	bls _08093870
	mov r1, r8
	adds r1, #8
	ldr r0, [sp]
	bl sub_08094248
_08093870:
	ldr r0, _08093894 @ =0x09F44ECC
	ldr r2, _08093898 @ =0x09F44EC4
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r1, r0
	bls _0809387E
	str r1, [r2]
_0809387E:
	ldr r2, _0809389C @ =0x09F44EC8
	ldr r0, [r2]
	cmp r1, r0
	bls _08093888
	str r1, [r2]
_08093888:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08093894: .4byte 0x09F44ECC
_08093898: .4byte 0x09F44EC4
_0809389C: .4byte 0x09F44EC8

	thumb_func_start sub_080938A0
sub_080938A0: @ 0x080938A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	adds r1, #0xb
	cmp r1, #0x16
	ble _080938C2
	movs r0, #8
	rsbs r0, r0, #0
	mov r8, r0
	mov r2, r8
	ands r2, r1
	mov r8, r2
	b _080938C6
_080938C2:
	movs r3, #0x10
	mov r8, r3
_080938C6:
	ldr r0, [sp]
	bl nullsub_15
	ldr r0, _0809390C @ =0x000001F7
	cmp r8, r0
	bhi _0809391A
	mov r4, r8
	lsrs r4, r4, #3
	mov ip, r4
	ldr r0, _08093910 @ =0x09F44AB0
	mov r7, r8
	adds r2, r7, r0
	ldr r5, [r2, #0xc]
	cmp r5, r2
	bne _080938EE
	adds r2, r5, #0
	adds r2, #8
	ldr r5, [r2, #0xc]
	cmp r5, r2
	beq _08093914
_080938EE:
	ldr r2, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r2, r0
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	adds r2, r5, r2
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _08093C46
	.align 2, 0
_0809390C: .4byte 0x000001F7
_08093910: .4byte 0x09F44AB0
_08093914:
	movs r0, #2
	add ip, r0
	b _080939C6
_0809391A:
	mov r2, r8
	lsrs r1, r2, #9
	cmp r1, #0
	bne _08093926
	lsrs r2, r2, #3
	b _08093976
_08093926:
	cmp r1, #4
	bhi _08093934
	mov r3, r8
	lsrs r0, r3, #6
	adds r0, #0x38
	mov ip, r0
	b _08093978
_08093934:
	cmp r1, #0x14
	bhi _0809393E
	adds r1, #0x5b
	mov ip, r1
	b _08093978
_0809393E:
	cmp r1, #0x54
	bhi _0809394C
	mov r4, r8
	lsrs r0, r4, #0xc
	adds r0, #0x6e
	mov ip, r0
	b _08093978
_0809394C:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0809395E
	mov r7, r8
	lsrs r0, r7, #0xf
	adds r0, #0x77
	mov ip, r0
	b _08093978
_0809395E:
	ldr r0, _08093970 @ =0x00000554
	cmp r1, r0
	bhi _08093974
	mov r1, r8
	lsrs r0, r1, #0x12
	adds r0, #0x7c
	mov ip, r0
	b _08093978
	.align 2, 0
_08093970: .4byte 0x00000554
_08093974:
	movs r2, #0x7e
_08093976:
	mov ip, r2
_08093978:
	mov r3, ip
	lsls r0, r3, #3
	ldr r1, _0809399C @ =0x09F44AB0
	adds r4, r0, r1
	ldr r5, [r4, #0xc]
	cmp r5, r4
	beq _080939C2
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	ble _080939A0
	adds r0, #3
	add ip, r0
	b _080939C2
	.align 2, 0
_0809399C: .4byte 0x09F44AB0
_080939A0:
	cmp r3, #0
	blt _080939A6
	b _08093BE0
_080939A6:
	ldr r5, [r5, #0xc]
	cmp r5, r4
	beq _080939C2
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r2, r8
	subs r3, r1, r2
	cmp r3, #0xf
	ble _080939A0
	movs r3, #1
	rsbs r3, r3, #0
	add ip, r3
_080939C2:
	movs r4, #1
	add ip, r4
_080939C6:
	ldr r0, _08093A04 @ =0x09F44AB8
	ldr r5, [r0, #8]
	mov sl, r0
	cmp r5, sl
	bne _080939D2
	b _08093AD4
_080939D2:
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	ble _08093A08
	adds r2, r5, r7
	movs r1, #1
	adds r0, r7, #0
	orrs r0, r1
	str r0, [r5, #4]
	mov r4, sl
	str r2, [r4, #0xc]
	str r2, [r4, #8]
	str r4, [r2, #0xc]
	str r4, [r2, #8]
	adds r0, r3, #0
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r2, r3
	str r3, [r0]
	b _08093C46
	.align 2, 0
_08093A04: .4byte 0x09F44AB8
_08093A08:
	mov r7, sl
	str r7, [r7, #0xc]
	str r7, [r7, #8]
	cmp r3, #0
	blt _08093A1E
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _08093C46
_08093A1E:
	ldr r0, _08093A40 @ =0x000001FF
	cmp r1, r0
	bhi _08093A44
	lsrs r2, r1, #3
	mov r3, sl
	subs r3, #8
	adds r0, r2, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r0, [r3, #4]
	orrs r0, r1
	str r0, [r3, #4]
	lsls r0, r2, #3
	adds r6, r0, r3
	ldr r4, [r6, #8]
	b _08093ACC
	.align 2, 0
_08093A40: .4byte 0x000001FF
_08093A44:
	lsrs r2, r1, #9
	cmp r2, #0
	bne _08093A4E
	lsrs r2, r1, #3
	b _08093A92
_08093A4E:
	cmp r2, #4
	bhi _08093A5A
	lsrs r0, r1, #6
	adds r2, r0, #0
	adds r2, #0x38
	b _08093A92
_08093A5A:
	cmp r2, #0x14
	bhi _08093A62
	adds r2, #0x5b
	b _08093A92
_08093A62:
	cmp r2, #0x54
	bhi _08093A6E
	lsrs r0, r1, #0xc
	adds r2, r0, #0
	adds r2, #0x6e
	b _08093A92
_08093A6E:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r2, r0
	bhi _08093A7E
	lsrs r0, r1, #0xf
	adds r2, r0, #0
	adds r2, #0x77
	b _08093A92
_08093A7E:
	ldr r0, _08093A8C @ =0x00000554
	cmp r2, r0
	bhi _08093A90
	lsrs r0, r1, #0x12
	adds r2, r0, #0
	adds r2, #0x7c
	b _08093A92
	.align 2, 0
_08093A8C: .4byte 0x00000554
_08093A90:
	movs r2, #0x7e
_08093A92:
	lsls r0, r2, #3
	ldr r3, _08093AB0 @ =0x09F44AB0
	adds r6, r0, r3
	ldr r4, [r6, #8]
	cmp r4, r6
	bne _08093AB4
	adds r0, r2, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r7, _08093AB0 @ =0x09F44AB0
	ldr r0, [r7, #4]
	orrs r0, r1
	str r0, [r7, #4]
	b _08093ACC
	.align 2, 0
_08093AB0: .4byte 0x09F44AB0
_08093AB4:
	ldr r0, [r4, #4]
	movs r2, #4
	rsbs r2, r2, #0
	b _08093AC4
_08093ABC:
	ldr r4, [r4, #8]
	cmp r4, r6
	beq _08093ACA
	ldr r0, [r4, #4]
_08093AC4:
	ands r0, r2
	cmp r1, r0
	blo _08093ABC
_08093ACA:
	ldr r6, [r4, #0xc]
_08093ACC:
	str r6, [r5, #0xc]
	str r4, [r5, #8]
	str r5, [r6, #8]
	str r5, [r4, #0xc]
_08093AD4:
	mov r0, ip
	cmp r0, #0
	bge _08093ADC
	adds r0, #3
_08093ADC:
	asrs r0, r0, #2
	movs r6, #1
	lsls r6, r0
	ldr r0, _08093B00 @ =0x09F44AB0
	ldr r1, [r0, #4]
	cmp r6, r1
	bhi _08093B9E
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08093B12
	movs r0, #4
	rsbs r0, r0, #0
	mov r2, ip
	ands r0, r2
	adds r0, #4
	mov ip, r0
	b _08093B08
	.align 2, 0
_08093B00: .4byte 0x09F44AB0
_08093B04:
	movs r3, #4
	add ip, r3
_08093B08:
	lsls r6, r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08093B04
_08093B12:
	ldr r4, _08093B90 @ =0x09F44AB0
	mov sb, r4
_08093B16:
	mov r7, ip
	str r7, [sp, #4]
	mov r1, ip
	lsls r0, r1, #3
	mov r3, sb
	adds r2, r0, r3
	adds r4, r2, #0
_08093B24:
	ldr r5, [r4, #0xc]
	cmp r5, r4
	beq _08093B44
	movs r0, #4
	rsbs r0, r0, #0
_08093B2E:
	ldr r1, [r5, #4]
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	bgt _08093BF4
	cmp r3, #0
	bge _08093C1C
	ldr r5, [r5, #0xc]
	cmp r5, r4
	bne _08093B2E
_08093B44:
	adds r4, #8
	movs r0, #1
	add ip, r0
	mov r0, ip
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08093B24
_08093B54:
	ldr r0, [sp, #4]
	ands r0, r1
	cmp r0, #0
	beq _08093B94
	ldr r3, [sp, #4]
	subs r3, #1
	str r3, [sp, #4]
	subs r2, #8
	ldr r0, [r2, #8]
	cmp r0, r2
	beq _08093B54
_08093B6A:
	lsls r6, r6, #1
	mov r4, sb
	ldr r1, [r4, #4]
	cmp r6, r1
	bhi _08093B9E
	cmp r6, #0
	beq _08093B9E
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08093B16
_08093B80:
	movs r7, #4
	add ip, r7
	lsls r6, r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08093B80
	b _08093B16
	.align 2, 0
_08093B90: .4byte 0x09F44AB0
_08093B94:
	mov r1, sb
	ldr r0, [r1, #4]
	bics r0, r6
	str r0, [r1, #4]
	b _08093B6A
_08093B9E:
	ldr r2, _08093BDC @ =0x09F44AB0
	ldr r0, [r2, #8]
	ldr r0, [r0, #4]
	movs r4, #4
	rsbs r4, r4, #0
	ands r0, r4
	mov r7, r8
	subs r3, r0, r7
	cmp r0, r8
	blo _08093BB6
	cmp r3, #0xf
	bgt _08093C30
_08093BB6:
	ldr r0, [sp]
	mov r1, r8
	bl sub_08093744
	ldr r1, _08093BDC @ =0x09F44AB0
	ldr r0, [r1, #8]
	ldr r0, [r0, #4]
	ands r0, r4
	mov r2, r8
	subs r3, r0, r2
	cmp r0, r8
	blo _08093BD2
	cmp r3, #0xf
	bgt _08093C30
_08093BD2:
	ldr r0, [sp]
	bl nullsub_16
	movs r0, #0
	b _08093C50
	.align 2, 0
_08093BDC: .4byte 0x09F44AB0
_08093BE0:
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _08093C46
_08093BF4:
	mov r4, r8
	adds r2, r5, r4
	movs r1, #1
	orrs r4, r1
	str r4, [r5, #4]
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	mov r7, sl
	str r2, [r7, #0xc]
	str r2, [r7, #8]
	str r7, [r2, #0xc]
	str r7, [r2, #8]
	adds r0, r3, #0
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r2, r3
	str r3, [r0]
	b _08093C46
_08093C1C:
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	b _08093C46
_08093C30:
	ldr r2, _08093C5C @ =0x09F44AB0
	ldr r5, [r2, #8]
	movs r1, #1
	mov r0, r8
	orrs r0, r1
	str r0, [r5, #4]
	mov r4, r8
	adds r0, r5, r4
	str r0, [r2, #8]
	orrs r3, r1
	str r3, [r0, #4]
_08093C46:
	ldr r0, [sp]
	bl nullsub_16
	adds r0, r5, #0
	adds r0, #8
_08093C50:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08093C5C: .4byte 0x09F44AB0

	thumb_func_start sub_08093C60
sub_08093C60: @ 0x08093C60
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r3, r1, #0
	cmp r2, #0xf
	bls _08093CA0
	adds r0, r3, #0
	orrs r0, r5
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08093CA0
	adds r1, r5, #0
_08093C7A:
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _08093C7A
	cmp r2, #3
	bls _08093C9E
_08093C94:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #4
	cmp r2, #3
	bhi _08093C94
_08093C9E:
	adds r4, r1, #0
_08093CA0:
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _08093CBA
	adds r1, r0, #0
_08093CAC:
	ldrb r0, [r3]
	strb r0, [r4]
	adds r3, #1
	adds r4, #1
	subs r2, #1
	cmp r2, r1
	bne _08093CAC
_08093CBA:
	adds r0, r5, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08093CC0
sub_08093CC0: @ 0x08093CC0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r5, #0
	cmp r2, #3
	bls _08093D06
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	bne _08093D06
	adds r1, r5, #0
	movs r0, #0xff
	ands r4, r0
	lsls r3, r4, #8
	orrs r3, r4
	lsls r0, r3, #0x10
	orrs r3, r0
	cmp r2, #0xf
	bls _08093CFA
_08093CE6:
	stm r1!, {r3}
	stm r1!, {r3}
	stm r1!, {r3}
	stm r1!, {r3}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _08093CE6
	b _08093CFA
_08093CF6:
	stm r1!, {r3}
	subs r2, #4
_08093CFA:
	cmp r2, #3
	bhi _08093CF6
	adds r3, r1, #0
	b _08093D06
_08093D02:
	strb r4, [r3]
	adds r3, #1
_08093D06:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _08093D02
	adds r0, r5, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start nullsub_15
nullsub_15: @ 0x08093D14
	bx lr
	.align 2, 0

	thumb_func_start nullsub_16
nullsub_16: @ 0x08093D18
	bx lr
	.align 2, 0

	thumb_func_start sub_08093D1C
sub_08093D1C: @ 0x08093D1C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	ldr r4, _08093D44 @ =gUnknown_02015E34
	movs r1, #0
	str r1, [r4]
	bl sub_08094164
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08093D3E
	ldr r0, [r4]
	cmp r0, #0
	beq _08093D3E
	str r0, [r5]
_08093D3E:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_08093D44: .4byte gUnknown_02015E34

	thumb_func_start sub_08093D48
sub_08093D48: @ 0x08093D48
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	orrs r0, r3
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08093D8E
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	bne _08093D8E
	ldr r5, _08093D74 @ =0xFEFEFEFF
	ldr r4, _08093D78 @ =0x80808080
_08093D64:
	ldr r1, [r2]
	adds r0, r1, r5
	bics r0, r1
	ands r0, r4
	cmp r0, #0
	beq _08093D7C
	movs r0, #0
	b _08093DA0
	.align 2, 0
_08093D74: .4byte 0xFEFEFEFF
_08093D78: .4byte 0x80808080
_08093D7C:
	adds r2, #4
	adds r3, #4
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	beq _08093D64
	b _08093D8E
_08093D8A:
	adds r2, #1
	adds r3, #1
_08093D8E:
	ldrb r0, [r2]
	cmp r0, #0
	beq _08093D9A
	ldrb r1, [r3]
	cmp r0, r1
	beq _08093D8A
_08093D9A:
	ldrb r2, [r2]
	ldrb r3, [r3]
	subs r0, r2, r3
_08093DA0:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08093DA4
sub_08093DA4: @ 0x08093DA4
	adds r3, r0, #0
	movs r1, #0
	ldr r2, _08093DAC @ =gUnknown_02015F88
	b _08093DB8
	.align 2, 0
_08093DAC: .4byte gUnknown_02015F88
_08093DB0:
	adds r2, #8
	adds r1, #1
	cmp r1, #0x13
	bgt _08093DBE
_08093DB8:
	ldr r0, [r2]
	cmp r0, r3
	bne _08093DB0
_08093DBE:
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_08093DC4
sub_08093DC4: @ 0x08093DC4
	adds r2, r0, #0
	ldr r0, _08093DD8 @ =0x09F44AAC
	ldr r1, [r0]
	ldr r0, [r1, #4]
	movs r3, #0xe
	ldrsh r0, [r0, r3]
	cmp r2, r0
	bne _08093DE0
	ldr r0, _08093DDC @ =gUnknown_02015F7C
	b _08093E06
	.align 2, 0
_08093DD8: .4byte 0x09F44AAC
_08093DDC: .4byte gUnknown_02015F7C
_08093DE0:
	ldr r0, [r1, #8]
	movs r3, #0xe
	ldrsh r0, [r0, r3]
	cmp r2, r0
	bne _08093DF4
	ldr r0, _08093DF0 @ =gUnknown_02015F80
	b _08093E06
	.align 2, 0
_08093DF0: .4byte gUnknown_02015F80
_08093DF4:
	ldr r0, [r1, #0xc]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	cmp r2, r0
	beq _08093E04
	adds r0, r2, #0
	subs r0, #0x20
	b _08093E08
_08093E04:
	ldr r0, _08093E0C @ =gUnknown_02015F84
_08093E06:
	ldr r0, [r0]
_08093E08:
	bx lr
	.align 2, 0
_08093E0C: .4byte gUnknown_02015F84

	thumb_func_start sub_08093E10
sub_08093E10: @ 0x08093E10
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r4, _08093E6C @ =gUnknown_08CDB298
	str r4, [sp]
	movs r3, #3
	str r3, [sp, #8]
	movs r0, #0
	str r0, [sp, #4]
	movs r5, #1
	adds r0, r5, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	ldr r5, _08093E70 @ =gUnknown_02015F7C
	str r2, [r5]
	str r4, [sp]
	str r3, [sp, #8]
	movs r0, #4
	str r0, [sp, #4]
	ldr r3, _08093E74 @ =gUnknown_02015F80
	movs r4, #1
	adds r0, r4, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	ldr r0, _08093E78 @ =gUnknown_02015F84
	str r2, [r0]
	str r2, [r3]
	ldr r2, _08093E7C @ =gUnknown_02015F88
	adds r1, r2, #0
	subs r4, #2
	adds r0, r2, #0
	adds r0, #0x98
_08093E52:
	str r4, [r0]
	subs r0, #8
	cmp r0, r1
	bge _08093E52
	movs r0, #0
	ldr r1, [r5]
	str r1, [r2]
	str r0, [r2, #4]
	ldr r1, [r3]
	str r1, [r2, #8]
	str r0, [r2, #0xc]
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_08093E6C: .4byte gUnknown_08CDB298
_08093E70: .4byte gUnknown_02015F7C
_08093E74: .4byte gUnknown_02015F80
_08093E78: .4byte gUnknown_02015F84
_08093E7C: .4byte gUnknown_02015F88

	thumb_func_start sub_08093E80
sub_08093E80: @ 0x08093E80
	push {r4, lr}
	movs r3, #0x13
	movs r4, #0
	adds r0, r3, #0
	adds r1, r4, #0
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08093E94
sub_08093E94: @ 0x08093E94
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_0809423C
	adds r4, r0, #0
	bl sub_08093E80
	str r0, [r4]
	adds r0, r5, #0
	pop {r4, r5, pc}

	thumb_func_start sub_08093EA8
sub_08093EA8: @ 0x08093EA8
	push {lr}
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08093EB8
	adds r0, r1, #0
	b _08093EBE
_08093EB8:
	adds r0, r1, #0
	bl sub_08093E94
_08093EBE:
	pop {pc}

	thumb_func_start sub_08093EC0
sub_08093EC0: @ 0x08093EC0
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r2, #0
	bl sub_08093DC4
	str r0, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	movs r3, #6
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08093EE4
sub_08093EE4: @ 0x08093EE4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	bl sub_08093DC4
	bl sub_08093DA4
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_08093EC0
	cmp r0, #0
	bge _08093F0E
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_08093E94
	b _08093F24
_08093F0E:
	subs r2, r7, r0
	cmp r6, #0x14
	beq _08093F22
	ldr r0, _08093F28 @ =gUnknown_02015F88
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
_08093F22:
	adds r0, r2, #0
_08093F24:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08093F28: .4byte gUnknown_02015F88

	thumb_func_start sub_08093F2C
sub_08093F2C: @ 0x08093F2C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	adds r4, r2, #0
	bl sub_08093DC4
	adds r7, r0, #0
	bl sub_08093DA4
	adds r6, r0, #0
	cmp r4, #1
	bne _08093F62
	cmp r6, #0x14
	bne _08093F54
	movs r0, #1
	rsbs r0, r0, #0
	b _08093FA4
_08093F54:
	ldr r0, _08093FAC @ =gUnknown_02015F88
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r5, r5, r0
	movs r4, #0
_08093F62:
	cmp r4, #2
	bne _08093F74
	str r7, [sp]
	movs r3, #0xc
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r5, r5, r2
_08093F74:
	mov r0, r8
	bl sub_08093DC4
	str r0, [sp]
	str r5, [sp, #4]
	movs r3, #0xa
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	cmp r6, #0x14
	beq _08093F9A
	cmp r2, #0
	bne _08093F9A
	ldr r0, _08093FAC @ =gUnknown_02015F88
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	str r5, [r1]
_08093F9A:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, #0
	bne _08093FA4
	adds r0, r5, #0
_08093FA4:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08093FAC: .4byte gUnknown_02015F88

	thumb_func_start sub_08093FB0
sub_08093FB0: @ 0x08093FB0
	push {lr}
	bl sub_08093F2C
	bl sub_08093EA8
	pop {pc}

	thumb_func_start sub_08093FBC
sub_08093FBC: @ 0x08093FBC
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r2, #0
	bl sub_08093DC4
	str r0, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	movs r3, #5
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08093FE0
sub_08093FE0: @ 0x08093FE0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	bl sub_08093DC4
	bl sub_08093DA4
	adds r7, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08093FBC
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08094008
	cmp r0, r6
	bne _08094010
_08094008:
	adds r0, r1, #0
	bl sub_08093E94
	b _08094026
_08094010:
	subs r2, r6, r0
	cmp r7, #0x14
	beq _08094024
	ldr r0, _08094028 @ =gUnknown_02015F88
	lsls r1, r7, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
_08094024:
	adds r0, r2, #0
_08094026:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08094028: .4byte gUnknown_02015F88

	thumb_func_start sub_0809402C
sub_0809402C: @ 0x0809402C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r4, r1, #0
	movs r5, #0
	movs r6, #1
	rsbs r6, r6, #0
	adds r0, r6, #0
	bl sub_08093DA4
	mov r8, r0
	cmp r0, #0x14
	bne _0809404E
	adds r0, r6, #0
	b _080940C2
_0809404E:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08094058
	movs r5, #2
_08094058:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08094066
	movs r0, #4
	orrs r5, r0
_08094066:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	beq _08094074
	movs r0, #4
	orrs r5, r0
_08094074:
	movs r1, #8
	ands r4, r1
	cmp r4, #0
	beq _08094084
	movs r0, #5
	rsbs r0, r0, #0
	ands r5, r0
	orrs r5, r1
_08094084:
	str r7, [sp]
	adds r0, r7, #0
	bl sub_080944C8
	str r0, [sp, #8]
	str r5, [sp, #4]
	movs r2, #1
	adds r0, r2, #0
	mov r1, sp
	svc #0xab
	adds r3, r0, #0
	cmp r3, #0
	blt _080940BC
	ldr r0, _080940B8 @ =gUnknown_02015F88
	mov r1, r8
	lsls r2, r1, #3
	adds r1, r2, r0
	str r3, [r1]
	adds r0, #4
	adds r2, r2, r0
	movs r0, #0
	str r0, [r2]
	adds r0, r3, #0
	adds r0, #0x20
	b _080940C2
	.align 2, 0
_080940B8: .4byte gUnknown_02015F88
_080940BC:
	adds r0, r3, #0
	bl sub_08093E94
_080940C2:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080940CC
sub_080940CC: @ 0x080940CC
	push {r1, r2, r3}
	push {lr}
	ldr r1, [sp, #4]
	bl sub_0809402C
	bl sub_08093EA8
	pop {r3}
	add sp, #0xc
	bx r3

	thumb_func_start sub_080940E0
sub_080940E0: @ 0x080940E0
	push {lr}
	sub sp, #4
	bl sub_08093DC4
	str r0, [sp]
	bl sub_08093DA4
	adds r1, r0, #0
	cmp r1, #0x14
	beq _08094100
	ldr r0, _08094110 @ =gUnknown_02015F88
	lsls r1, r1, #3
	adds r1, r1, r0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
_08094100:
	movs r3, #2
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	add sp, #4
	pop {pc}
	.align 2, 0
_08094110: .4byte gUnknown_02015F88

	thumb_func_start sub_08094114
sub_08094114: @ 0x08094114
	push {lr}
	bl sub_080940E0
	bl sub_08093EA8
	pop {pc}

	thumb_func_start sub_08094120
sub_08094120: @ 0x08094120
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _0809413C @ =0x00020026
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_0809413C: .4byte 0x00020026

	thumb_func_start sub_08094140
sub_08094140: @ 0x08094140
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _0809415C @ =0x00020026
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_0809415C: .4byte 0x00020026

	thumb_func_start sub_08094160
sub_08094160: @ 0x08094160
	movs r0, #1
	bx lr

	thumb_func_start sub_08094164
sub_08094164: @ 0x08094164
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, _08094194 @ =gUnknown_02015F78
	ldr r0, [r4]
	cmp r0, #0
	bne _08094174
	ldr r0, _08094198 @ =gUnknown_02036028
	str r0, [r4]
_08094174:
	ldr r5, [r4]
	adds r0, r5, r6
	cmp r0, sp
	bls _0809418A
	ldr r1, _0809419C @ =gUnknown_08CDB29C
	movs r0, #1
	movs r2, #0x20
	bl sub_08093FE0
	bl sub_080936F4
_0809418A:
	ldr r0, [r4]
	adds r0, r0, r6
	str r0, [r4]
	adds r0, r5, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_08094194: .4byte gUnknown_02015F78
_08094198: .4byte gUnknown_02036028
_0809419C: .4byte gUnknown_08CDB29C

	thumb_func_start sub_080941A0
sub_080941A0: @ 0x080941A0
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_080941AC
sub_080941AC: @ 0x080941AC
	movs r0, #1
	rsbs r0, r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_080941B4
sub_080941B4: @ 0x080941B4
	bx lr
	.align 2, 0

	thumb_func_start sub_080941B8
sub_080941B8: @ 0x080941B8
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	cmp r2, #0
	beq _080941D6
	movs r4, #0x11
	movs r5, #0
	adds r0, r4, #0
	adds r1, r5, #0
	svc #0xab
	adds r5, r0, #0
	adds r4, r5, #0
	str r4, [r2]
	movs r0, #0
	str r0, [r2, #4]
_080941D6:
	cmp r3, #0
	beq _080941E0
	movs r0, #0
	str r0, [r3]
	str r0, [r3, #4]
_080941E0:
	movs r0, #0
	pop {r4, r5, pc}

	thumb_func_start sub_080941E4
sub_080941E4: @ 0x080941E4
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r4, #0x10
	movs r5, #0
	adds r0, r4, #0
	adds r1, r5, #0
	svc #0xab
	adds r3, r0, #0
	cmp r2, #0
	beq _08094202
	str r3, [r2]
	movs r0, #0
	str r0, [r2, #4]
	str r0, [r2, #8]
	str r0, [r2, #0xc]
_08094202:
	adds r0, r3, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08094208
sub_08094208: @ 0x08094208
	push {r4, r5, lr}
	sub sp, #0x58
	mov r4, sp
	movs r5, #0
	movs r3, #0x82
	lsls r3, r3, #2
	strh r3, [r4, #0xc]
	str r0, [sp]
	str r0, [sp, #0x10]
	ldr r0, _08094234 @ =0x7FFFFFFF
	str r0, [sp, #8]
	str r0, [sp, #0x14]
	ldr r0, _08094238 @ =0x09F44AAC
	ldr r0, [r0]
	str r0, [sp, #0x54]
	mov r0, sp
	bl sub_080945A0
	ldr r1, [sp]
	strb r5, [r1]
	add sp, #0x58
	pop {r4, r5, pc}
	.align 2, 0
_08094234: .4byte 0x7FFFFFFF
_08094238: .4byte 0x09F44AAC

	thumb_func_start sub_0809423C
sub_0809423C: @ 0x0809423C
	ldr r0, _08094244 @ =0x09F44AAC
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08094244: .4byte 0x09F44AAC

	thumb_func_start sub_08094248
sub_08094248: @ 0x08094248
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r4, r1, #0
	cmp r4, #0
	bne _0809425A
	b _080943FE
_0809425A:
	bl nullsub_15
	adds r5, r4, #0
	subs r5, #8
	ldr r1, [r5, #4]
	movs r6, #2
	rsbs r6, r6, #0
	ands r6, r1
	adds r7, r5, r6
	ldr r4, [r7, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r4, r0
	ldr r0, _080942BC @ =0x09F44AB0
	mov ip, r0
	ldr r0, [r0, #8]
	cmp r7, r0
	bne _080942C8
	adds r6, r6, r4
	movs r4, #1
	ands r1, r4
	cmp r1, #0
	bne _08094296
	ldr r0, [r5]
	subs r5, r5, r0
	adds r6, r6, r0
	ldr r3, [r5, #0xc]
	ldr r2, [r5, #8]
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_08094296:
	adds r0, r6, #0
	orrs r0, r4
	str r0, [r5, #4]
	mov r2, ip
	str r5, [r2, #8]
	ldr r0, _080942C0 @ =0x09F44EB8
	ldr r0, [r0]
	cmp r6, r0
	blo _080942B2
	ldr r0, _080942C4 @ =0x09F44EBC
	ldr r1, [r0]
	mov r0, sb
	bl sub_08094408
_080942B2:
	mov r0, sb
	bl nullsub_16
	b _080943FE
	.align 2, 0
_080942BC: .4byte 0x09F44AB0
_080942C0: .4byte 0x09F44EB8
_080942C4: .4byte 0x09F44EBC
_080942C8:
	str r4, [r7, #4]
	movs r0, #0
	mov r8, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _080942F4
	ldr r0, [r5]
	subs r5, r5, r0
	adds r6, r6, r0
	ldr r1, [r5, #8]
	mov r0, ip
	adds r0, #8
	cmp r1, r0
	bne _080942EC
	movs r2, #1
	mov r8, r2
	b _080942F4
_080942EC:
	ldr r3, [r5, #0xc]
	adds r2, r1, #0
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_080942F4:
	adds r0, r7, r4
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809432C
	adds r6, r6, r4
	ldr r1, [r7, #8]
	mov r0, r8
	cmp r0, #0
	bne _08094324
	ldr r0, _08094320 @ =0x09F44AB8
	cmp r1, r0
	bne _08094324
	movs r2, #1
	mov r8, r2
	str r5, [r1, #0xc]
	str r5, [r1, #8]
	str r1, [r5, #0xc]
	str r1, [r5, #8]
	b _0809432C
	.align 2, 0
_08094320: .4byte 0x09F44AB8
_08094324:
	ldr r3, [r7, #0xc]
	adds r2, r1, #0
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_0809432C:
	movs r1, #1
	adds r0, r6, #0
	orrs r0, r1
	str r0, [r5, #4]
	adds r0, r5, r6
	str r6, [r0]
	mov r0, r8
	cmp r0, #0
	bne _080943F8
	ldr r0, _0809435C @ =0x000001FF
	cmp r6, r0
	bhi _08094364
	lsrs r4, r6, #3
	ldr r2, _08094360 @ =0x09F44AB0
	adds r0, r4, #0
	asrs r0, r0, #2
	lsls r1, r0
	ldr r0, [r2, #4]
	orrs r0, r1
	str r0, [r2, #4]
	lsls r0, r4, #3
	adds r3, r0, r2
	ldr r2, [r3, #8]
	b _080943F0
	.align 2, 0
_0809435C: .4byte 0x000001FF
_08094360: .4byte 0x09F44AB0
_08094364:
	lsrs r1, r6, #9
	cmp r1, #0
	bne _0809436E
	lsrs r4, r6, #3
	b _080943B6
_0809436E:
	cmp r1, #4
	bhi _0809437A
	lsrs r0, r6, #6
	adds r4, r0, #0
	adds r4, #0x38
	b _080943B6
_0809437A:
	cmp r1, #0x14
	bhi _08094384
	adds r4, r1, #0
	adds r4, #0x5b
	b _080943B6
_08094384:
	cmp r1, #0x54
	bhi _08094390
	lsrs r0, r6, #0xc
	adds r4, r0, #0
	adds r4, #0x6e
	b _080943B6
_08094390:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r1, r0
	bhi _080943A0
	lsrs r0, r6, #0xf
	adds r4, r0, #0
	adds r4, #0x77
	b _080943B6
_080943A0:
	ldr r0, _080943B0 @ =0x00000554
	cmp r1, r0
	bhi _080943B4
	lsrs r0, r6, #0x12
	adds r4, r0, #0
	adds r4, #0x7c
	b _080943B6
	.align 2, 0
_080943B0: .4byte 0x00000554
_080943B4:
	movs r4, #0x7e
_080943B6:
	lsls r0, r4, #3
	ldr r7, _080943D4 @ =0x09F44AB0
	adds r3, r0, r7
	ldr r2, [r3, #8]
	cmp r2, r3
	bne _080943D8
	adds r0, r4, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r0, [r7, #4]
	orrs r0, r1
	str r0, [r7, #4]
	b _080943F0
	.align 2, 0
_080943D4: .4byte 0x09F44AB0
_080943D8:
	ldr r0, [r2, #4]
	movs r1, #4
	rsbs r1, r1, #0
	b _080943E8
_080943E0:
	ldr r2, [r2, #8]
	cmp r2, r3
	beq _080943EE
	ldr r0, [r2, #4]
_080943E8:
	ands r0, r1
	cmp r6, r0
	blo _080943E0
_080943EE:
	ldr r3, [r2, #0xc]
_080943F0:
	str r3, [r5, #0xc]
	str r2, [r5, #8]
	str r5, [r3, #8]
	str r5, [r2, #0xc]
_080943F8:
	mov r0, sb
	bl nullsub_16
_080943FE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08094408
sub_08094408: @ 0x08094408
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r4, r1, #0
	bl nullsub_15
	ldr r0, _08094490 @ =0x09F44AB0
	mov r8, r0
	ldr r0, [r0, #8]
	ldr r6, [r0, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r6, r0
	subs r4, r6, r4
	movs r5, #0x80
	lsls r5, r5, #5
	ldr r1, _08094494 @ =0x00000FEF
	adds r4, r4, r1
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08091AE0
	subs r0, #1
	lsls r4, r0, #0xc
	cmp r4, r5
	blt _08094486
	adds r0, r7, #0
	movs r1, #0
	bl sub_08093D1C
	adds r2, r0, #0
	mov r1, r8
	ldr r0, [r1, #8]
	adds r0, r0, r6
	cmp r2, r0
	bne _08094486
	rsbs r1, r4, #0
	adds r0, r7, #0
	bl sub_08093D1C
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080944A0
	adds r0, r7, #0
	movs r1, #0
	bl sub_08093D1C
	adds r2, r0, #0
	mov r0, r8
	ldr r3, [r0, #8]
	subs r6, r2, r3
	cmp r6, #0xf
	ble _08094486
	ldr r1, _08094498 @ =0x09F44ECC
	ldr r0, _0809449C @ =0x09F44EC0
	ldr r0, [r0]
	subs r0, r2, r0
	str r0, [r1]
	movs r0, #1
	orrs r6, r0
	str r6, [r3, #4]
_08094486:
	adds r0, r7, #0
	bl nullsub_16
	movs r0, #0
	b _080944BC
	.align 2, 0
_08094490: .4byte 0x09F44AB0
_08094494: .4byte 0x00000FEF
_08094498: .4byte 0x09F44ECC
_0809449C: .4byte 0x09F44EC0
_080944A0:
	mov r1, r8
	ldr r2, [r1, #8]
	subs r0, r6, r4
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	ldr r1, _080944C4 @ =0x09F44ECC
	ldr r0, [r1]
	subs r0, r0, r4
	str r0, [r1]
	adds r0, r7, #0
	bl nullsub_16
	movs r0, #1
_080944BC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080944C4: .4byte 0x09F44ECC

	thumb_func_start sub_080944C8
sub_080944C8: @ 0x080944C8
	push {r4, r5, lr}
	adds r1, r0, #0
	adds r5, r1, #0
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08094500
	adds r2, r1, #0
	ldr r1, [r2]
	ldr r4, _080944E4 @ =0xFEFEFEFF
	adds r0, r1, r4
	bics r0, r1
	ldr r3, _080944E8 @ =0x80808080
	b _080944F4
	.align 2, 0
_080944E4: .4byte 0xFEFEFEFF
_080944E8: .4byte 0x80808080
_080944EC:
	adds r2, #4
	ldr r1, [r2]
	adds r0, r1, r4
	bics r0, r1
_080944F4:
	ands r0, r3
	cmp r0, #0
	beq _080944EC
	adds r1, r2, #0
	b _08094500
_080944FE:
	adds r1, #1
_08094500:
	ldrb r0, [r1]
	cmp r0, #0
	bne _080944FE
	subs r0, r1, r5
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0809450C
sub_0809450C: @ 0x0809450C
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _08094524
	adds r1, r4, #0
	bl sub_08096768
	movs r1, #0
	str r1, [r4, #8]
	str r1, [r4, #4]
	b _08094528
_08094524:
	str r1, [r4, #4]
	movs r0, #0
_08094528:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809452C
sub_0809452C: @ 0x0809452C
	push {r4, r5, lr}
	ldr r4, _0809459C @ =0xFFFFFBA8
	add sp, r4
	adds r5, r0, #0
	ldr r0, [r5, #0x54]
	str r0, [sp, #0x54]
	mov r3, sp
	movs r0, #3
	rsbs r0, r0, #0
	ldrh r4, [r5, #0xc]
	ands r0, r4
	movs r4, #0
	strh r0, [r3, #0xc]
	ldrh r0, [r5, #0xe]
	strh r0, [r3, #0xe]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x24]
	add r0, sp, #0x58
	str r0, [sp]
	str r0, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [sp, #8]
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	mov r0, sp
	bl sub_080945A0
	adds r4, r0, #0
	cmp r4, #0
	blt _0809457C
	mov r0, sp
	bl sub_08096578
	cmp r0, #0
	beq _0809457C
	movs r4, #1
	rsbs r4, r4, #0
_0809457C:
	mov r1, sp
	movs r0, #0x40
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _08094590
	movs r0, #0x40
	ldrh r1, [r5, #0xc]
	orrs r0, r1
	strh r0, [r5, #0xc]
_08094590:
	adds r0, r4, #0
	movs r3, #0x8b
	lsls r3, r3, #3
	add sp, r3
	pop {r4, r5, pc}
	.align 2, 0
_0809459C: .4byte 0xFFFFFBA8

	thumb_func_start sub_080945A0
sub_080945A0: @ 0x080945A0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r3, r2, #0
	ldr r0, [r4, #0x54]
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080945B4
	pop {r4, r5, pc}

	thumb_func_start sub_080945B4
sub_080945B4: @ 0x080945B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _0809461C @ =0xFFFFFDE0
	add sp, r4
	str r0, [sp, #0x1dc]
	str r1, [sp, #0x1e0]
	adds r4, r2, #0
	mov sl, r3
	bl sub_08096A30
	ldr r0, [r0]
	str r0, [sp, #0x1f8]
	movs r1, #0
	add r0, sp, #0x1d0
	str r1, [r0]
	ldr r1, [sp, #0x1e0]
	ldr r0, [r1, #0x54]
	cmp r0, #0
	bne _080945E6
	ldr r0, _08094620 @ =0x09F44AAC
	ldr r0, [r0]
	str r0, [r1, #0x54]
_080945E6:
	ldr r2, [sp, #0x1e0]
	ldr r1, [r2, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _080945F6
	adds r0, r1, #0
	bl sub_08096708
_080945F6:
	movs r0, #8
	ldr r1, [sp, #0x1e0]
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _0809460A
	ldr r2, [sp, #0x1e0]
	ldr r0, [r2, #0x10]
	cmp r0, #0
	bne _08094624
_0809460A:
	ldr r0, [sp, #0x1e0]
	bl sub_08095678
	cmp r0, #0
	beq _08094624
	movs r0, #1
	rsbs r0, r0, #0
	bl _08095504
	.align 2, 0
_0809461C: .4byte 0xFFFFFDE0
_08094620: .4byte 0x09F44AAC
_08094624:
	movs r0, #0x1a
	ldr r1, [sp, #0x1e0]
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0xa
	bne _08094648
	ldr r2, [sp, #0x1e0]
	movs r1, #0xe
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _08094648
	adds r0, r2, #0
	adds r1, r4, #0
	mov r2, sl
	bl sub_0809452C
	bl _08095504
_08094648:
	str r4, [sp, #0x1e4]
	add r1, sp, #0x1c
	add r5, sp, #0x28
	str r5, [sp, #0x1c]
	movs r0, #0
	str r0, [r1, #8]
	str r0, [r1, #4]
	movs r2, #0
	str r2, [sp, #0x1f0]
	mov sb, r1
	movs r4, #0xe6
	lsls r4, r4, #1
	add r4, sp
	str r4, [sp, #0x214]
	movs r0, #0xe8
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #0x218]
_0809466C:
	ldr r1, [sp, #0x1e4]
	mov r8, r1
_08094670:
	ldr r0, _0809471C @ =0x09F44AAC
	ldr r0, [r0]
	ldr r1, _08094720 @ =0x09F44EF4
	ldr r3, [r1]
	ldr r2, [sp, #0x218]
	str r2, [sp]
	ldr r1, [sp, #0x214]
	ldr r2, [sp, #0x1e4]
	bl sub_08096B1C
	adds r4, r0, #0
	cmp r4, #0
	ble _0809469E
	ldr r0, [sp, #0x1e4]
	adds r0, r0, r4
	str r0, [sp, #0x1e4]
	add r0, sp, #0x1cc
	ldr r0, [r0]
	cmp r0, #0x25
	bne _08094670
	ldr r1, [sp, #0x1e4]
	subs r1, #1
	str r1, [sp, #0x1e4]
_0809469E:
	ldr r2, [sp, #0x1e4]
	mov r0, r8
	subs r6, r2, r0
	cmp r6, #0
	beq _080946D6
	str r0, [r5]
	str r6, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r6
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080946D0
	ldr r0, [sp, #0x1e0]
	bl sub_0809450C
	cmp r0, #0
	beq _080946CE
	bl _080954F0
_080946CE:
	add r5, sp, #0x28
_080946D0:
	ldr r2, [sp, #0x1f0]
	adds r2, r2, r6
	str r2, [sp, #0x1f0]
_080946D6:
	cmp r4, #0
	bgt _080946DE
	bl _080954D8
_080946DE:
	ldr r4, [sp, #0x1e4]
	adds r4, #1
	str r4, [sp, #0x1e4]
	movs r0, #0
	str r0, [sp, #0x1ec]
	movs r1, #0
	str r1, [sp, #0x208]
	movs r2, #0
	str r2, [sp, #0x1f4]
	movs r6, #1
	rsbs r6, r6, #0
	ldr r0, _08094724 @ =0x000001C9
	add r0, sp
	strb r2, [r0]
_080946FA:
	ldr r0, [sp, #0x1e4]
	ldrb r0, [r0]
	str r0, [sp, #0x1e8]
	ldr r1, [sp, #0x1e4]
	adds r1, #1
	str r1, [sp, #0x1e4]
_08094706:
	ldr r0, [sp, #0x1e8]
	subs r0, #0x20
	cmp r0, #0x58
	bls _08094710
	b _08094DC2
_08094710:
	lsls r0, r0, #2
	ldr r1, _08094728 @ =_0809472C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809471C: .4byte 0x09F44AAC
_08094720: .4byte 0x09F44EF4
_08094724: .4byte 0x000001C9
_08094728: .4byte _0809472C
_0809472C: @ jump table
	.4byte _08094890 @ case 0
	.4byte _08094DC2 @ case 1
	.4byte _08094DC2 @ case 2
	.4byte _080948A8 @ case 3
	.4byte _08094DC2 @ case 4
	.4byte _08094DC2 @ case 5
	.4byte _08094DC2 @ case 6
	.4byte _08094DC2 @ case 7
	.4byte _08094DC2 @ case 8
	.4byte _08094DC2 @ case 9
	.4byte _080948AC @ case 10
	.4byte _080948C6 @ case 11
	.4byte _08094DC2 @ case 12
	.4byte _080948C2 @ case 13
	.4byte _080948D4 @ case 14
	.4byte _08094DC2 @ case 15
	.4byte _08094934 @ case 16
	.4byte _08094938 @ case 17
	.4byte _08094938 @ case 18
	.4byte _08094938 @ case 19
	.4byte _08094938 @ case 20
	.4byte _08094938 @ case 21
	.4byte _08094938 @ case 22
	.4byte _08094938 @ case 23
	.4byte _08094938 @ case 24
	.4byte _08094938 @ case 25
	.4byte _08094DC2 @ case 26
	.4byte _08094DC2 @ case 27
	.4byte _08094DC2 @ case 28
	.4byte _08094DC2 @ case 29
	.4byte _08094DC2 @ case 30
	.4byte _08094DC2 @ case 31
	.4byte _08094DC2 @ case 32
	.4byte _08094DC2 @ case 33
	.4byte _08094DC2 @ case 34
	.4byte _08094DC2 @ case 35
	.4byte _080949A2 @ case 36
	.4byte _080949F4 @ case 37
	.4byte _08094DC2 @ case 38
	.4byte _080949F4 @ case 39
	.4byte _08094DC2 @ case 40
	.4byte _08094DC2 @ case 41
	.4byte _08094DC2 @ case 42
	.4byte _08094DC2 @ case 43
	.4byte _0809495C @ case 44
	.4byte _08094DC2 @ case 45
	.4byte _08094DC2 @ case 46
	.4byte _08094BAA @ case 47
	.4byte _08094DC2 @ case 48
	.4byte _08094DC2 @ case 49
	.4byte _08094DC2 @ case 50
	.4byte _08094DC2 @ case 51
	.4byte _08094DC2 @ case 52
	.4byte _08094C42 @ case 53
	.4byte _08094DC2 @ case 54
	.4byte _08094DC2 @ case 55
	.4byte _08094C7E @ case 56
	.4byte _08094DC2 @ case 57
	.4byte _08094DC2 @ case 58
	.4byte _08094DC2 @ case 59
	.4byte _08094DC2 @ case 60
	.4byte _08094DC2 @ case 61
	.4byte _08094DC2 @ case 62
	.4byte _08094DC2 @ case 63
	.4byte _08094DC2 @ case 64
	.4byte _08094DC2 @ case 65
	.4byte _08094DC2 @ case 66
	.4byte _08094990 @ case 67
	.4byte _080949AA @ case 68
	.4byte _080949F4 @ case 69
	.4byte _080949F4 @ case 70
	.4byte _080949F4 @ case 71
	.4byte _08094960 @ case 72
	.4byte _080949AA @ case 73
	.4byte _08094DC2 @ case 74
	.4byte _08094DC2 @ case 75
	.4byte _08094964 @ case 76
	.4byte _08094DC2 @ case 77
	.4byte _08094B64 @ case 78
	.4byte _08094BB2 @ case 79
	.4byte _08094BE0 @ case 80
	.4byte _08094986 @ case 81
	.4byte _08094DC2 @ case 82
	.4byte _08094C00 @ case 83
	.4byte _08094DC2 @ case 84
	.4byte _08094C4A @ case 85
	.4byte _08094DC2 @ case 86
	.4byte _08094DC2 @ case 87
	.4byte _08094C88 @ case 88
_08094890:
	ldr r1, _080948A4 @ =0x000001C9
	add r1, sp
	ldrb r0, [r1]
	cmp r0, #0
	beq _0809489C
	b _080946FA
_0809489C:
	movs r0, #0x20
	strb r0, [r1]
	b _080946FA
	.align 2, 0
_080948A4: .4byte 0x000001C9
_080948A8:
	movs r0, #1
	b _08094974
_080948AC:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	str r0, [sp, #0x1f4]
	cmp r0, #0
	blt _080948BE
	b _080946FA
_080948BE:
	rsbs r0, r0, #0
	str r0, [sp, #0x1f4]
_080948C2:
	movs r0, #4
	b _08094988
_080948C6:
	ldr r1, _080948D0 @ =0x000001C9
	add r1, sp
	movs r0, #0x2b
	strb r0, [r1]
	b _080946FA
	.align 2, 0
_080948D0: .4byte 0x000001C9
_080948D4:
	ldr r2, [sp, #0x1e4]
	ldrb r2, [r2]
	str r2, [sp, #0x1e8]
	ldr r4, [sp, #0x1e4]
	adds r4, #1
	str r4, [sp, #0x1e4]
	cmp r2, #0x2a
	bne _080948FE
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
	adds r6, r4, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	blt _080948FA
	b _080946FA
_080948FA:
	adds r6, r0, #0
	b _080946FA
_080948FE:
	movs r4, #0
	ldr r0, [sp, #0x1e8]
	b _0809491E
_08094904:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	subs r0, #0x30
	ldr r1, [sp, #0x1e8]
	adds r4, r0, r1
	ldr r2, [sp, #0x1e4]
	ldrb r2, [r2]
	str r2, [sp, #0x1e8]
	ldr r0, [sp, #0x1e4]
	adds r0, #1
	str r0, [sp, #0x1e4]
	adds r0, r2, #0
_0809491E:
	subs r0, #0x30
	cmp r0, #9
	bls _08094904
	adds r6, r4, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	blt _08094930
	b _08094706
_08094930:
	adds r6, r0, #0
	b _08094706
_08094934:
	movs r0, #0x80
	b _08094988
_08094938:
	movs r4, #0
_0809493A:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	subs r0, #0x30
	ldr r2, [sp, #0x1e8]
	adds r4, r0, r2
	ldr r0, [sp, #0x1e4]
	ldrb r0, [r0]
	str r0, [sp, #0x1e8]
	ldr r1, [sp, #0x1e4]
	adds r1, #1
	str r1, [sp, #0x1e4]
	subs r0, #0x30
	cmp r0, #9
	bls _0809493A
	str r4, [sp, #0x1f4]
	b _08094706
_0809495C:
	movs r0, #8
	b _08094974
_08094960:
	movs r0, #0x40
	b _0809497E
_08094964:
	ldr r0, [sp, #0x1e4]
	ldrb r0, [r0]
	cmp r0, #0x6c
	bne _0809497C
	ldr r1, [sp, #0x1e4]
	adds r1, #1
	str r1, [sp, #0x1e4]
	movs r0, #0x20
_08094974:
	ldr r2, [sp, #0x1ec]
	orrs r2, r0
	str r2, [sp, #0x1ec]
	b _080946FA
_0809497C:
	movs r0, #0x10
_0809497E:
	ldr r4, [sp, #0x1ec]
	orrs r4, r0
	str r4, [sp, #0x1ec]
	b _080946FA
_08094986:
	movs r0, #0x20
_08094988:
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
	b _080946FA
_08094990:
	add r2, sp, #0x68
	mov r8, r2
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	strb r0, [r2]
	b _08094DD0
_080949A2:
	movs r0, #0x10
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
_080949AA:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _080949BA
	movs r4, #4
	add sl, r4
	b _080949D6
_080949BA:
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080949D2
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	movs r1, #0
	ldrsh r4, [r0, r1]
	b _080949DC
_080949D2:
	movs r2, #4
	add sl, r2
_080949D6:
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_080949DC:
	cmp r4, #0
	bge _080949EA
	rsbs r4, r4, #0
	ldr r1, _080949F0 @ =0x000001C9
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
_080949EA:
	movs r2, #1
	b _08094CD6
	.align 2, 0
_080949F0: .4byte 0x000001C9
_080949F4:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	bne _08094A00
	movs r6, #6
	b _08094A10
_08094A00:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x67
	beq _08094A0A
	cmp r4, #0x47
	bne _08094A10
_08094A0A:
	cmp r6, #0
	bne _08094A10
	movs r6, #1
_08094A10:
	movs r0, #8
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	movs r2, #8
	add sl, r2
	mov r0, sl
	subs r0, #8
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [sp, #0x1fc]
	str r2, [sp, #0x200]
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl sub_08097520
	cmp r0, #0
	beq _08094A64
	ldr r3, _08094A58 @ =0x00000000
	ldr r2, _08094A54 @ =0x00000000
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl sub_08092798
	cmp r0, #0
	bge _08094A4A
	ldr r1, _08094A5C @ =0x000001C9
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
_08094A4A:
	ldr r2, _08094A60 @ =gUnknown_08CDB2E0
	mov r8, r2
	movs r3, #3
	b _08094DDA
	.align 2, 0
_08094A54: .4byte 0x00000000
_08094A58: .4byte 0x00000000
_08094A5C: .4byte 0x000001C9
_08094A60: .4byte gUnknown_08CDB2E0
_08094A64:
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl sub_08097544
	cmp r0, #0
	beq _08094A7C
	ldr r4, _08094A78 @ =gUnknown_08CDB2E4
	mov r8, r4
	movs r3, #3
	b _08094DDA
	.align 2, 0
_08094A78: .4byte gUnknown_08CDB2E4
_08094A7C:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
	str r1, [sp]
	add r0, sp, #0x1c8
	str r0, [sp, #4]
	add r0, sp, #0x1d4
	str r0, [sp, #8]
	ldr r2, [sp, #0x1e8]
	str r2, [sp, #0xc]
	add r0, sp, #0x1d8
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1dc]
	ldr r1, [sp, #0x1fc]
	ldr r2, [sp, #0x200]
	adds r3, r6, #0
	bl sub_08095514
	mov r8, r0
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x67
	beq _08094AB0
	cmp r4, #0x47
	bne _08094AD2
_08094AB0:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	movs r0, #4
	rsbs r0, r0, #0
	cmp r1, r0
	ble _08094AC0
	cmp r1, r6
	ble _08094ACE
_08094AC0:
	movs r0, #0x45
	ldr r1, [sp, #0x1e8]
	cmp r1, #0x67
	bne _08094ACA
	movs r0, #0x65
_08094ACA:
	str r0, [sp, #0x1e8]
	b _08094AD2
_08094ACE:
	movs r2, #0x67
	str r2, [sp, #0x1e8]
_08094AD2:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x65
	bgt _08094AF8
	add r0, sp, #0x1d4
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	add r0, sp, #0x14
	ldr r2, [sp, #0x1e8]
	bl sub_08095608
	str r0, [sp, #0x204]
	add r0, sp, #0x1d8
	ldr r0, [r0]
	ldr r1, [sp, #0x204]
	adds r3, r1, r0
	cmp r0, #1
	bgt _08094B38
	b _08094B2E
_08094AF8:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x66
	bne _08094B20
	add r0, sp, #0x1d4
	ldr r0, [r0]
	cmp r0, #0
	ble _08094B1C
	adds r3, r0, #0
	cmp r6, #0
	bne _08094B16
	movs r0, #1
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _08094B48
_08094B16:
	adds r0, r3, #1
	adds r3, r0, r6
	b _08094B48
_08094B1C:
	adds r3, r6, #2
	b _08094B48
_08094B20:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	add r0, sp, #0x1d8
	ldr r0, [r0]
	cmp r1, r0
	blt _08094B3C
	adds r3, r1, #0
_08094B2E:
	movs r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _08094B48
_08094B38:
	adds r3, #1
	b _08094B48
_08094B3C:
	cmp r1, #0
	bgt _08094B46
	adds r0, #2
	subs r3, r0, r1
	b _08094B48
_08094B46:
	adds r3, r0, #1
_08094B48:
	add r0, sp, #0x1c8
	ldrb r0, [r0]
	adds r7, r5, #0
	adds r7, #8
	cmp r0, #0
	bne _08094B56
	b _08094DDE
_08094B56:
	ldr r1, _08094B60 @ =0x000001C9
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
	b _08094DDE
	.align 2, 0
_08094B60: .4byte 0x000001C9
_08094B64:
	movs r0, #0x10
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	beq _08094B7E
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	ldr r1, [sp, #0x1f0]
	str r1, [r0]
	b _0809466C
_08094B7E:
	movs r0, #0x40
	ldr r2, [sp, #0x1ec]
	ands r2, r0
	cmp r2, #0
	beq _08094B9A
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	add r1, sp, #0x1f0
	ldrh r1, [r1]
	strh r1, [r0]
	b _0809466C
_08094B9A:
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	ldr r4, [sp, #0x1f0]
	str r4, [r0]
	b _0809466C
_08094BAA:
	movs r0, #0x10
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
_08094BB2:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _08094BD2
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _08094BD2
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _08094BDC
_08094BD2:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_08094BDC:
	movs r2, #0
	b _08094CCE
_08094BE0:
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
	movs r2, #2
	ldr r1, _08094BFC @ =gUnknown_08CDB2E8
	str r1, [sp, #0x210]
	ldr r0, [sp, #0x1ec]
	orrs r0, r2
	str r0, [sp, #0x1ec]
	movs r1, #0x78
	str r1, [sp, #0x1e8]
	b _08094CCE
	.align 2, 0
_08094BFC: .4byte gUnknown_08CDB2E8
_08094C00:
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	mov r8, r0
	cmp r0, #0
	bne _08094C14
	ldr r4, _08094C34 @ =gUnknown_08CDB2FC
	mov r8, r4
_08094C14:
	cmp r6, #0
	blt _08094C38
	mov r0, r8
	movs r1, #0
	adds r2, r6, #0
	bl sub_08096B48
	cmp r0, #0
	beq _08094C30
	mov r1, r8
	subs r3, r0, r1
	cmp r3, r6
	bgt _08094C30
	b _08094DD2
_08094C30:
	adds r3, r6, #0
	b _08094DD2
	.align 2, 0
_08094C34: .4byte gUnknown_08CDB2FC
_08094C38:
	mov r0, r8
	bl sub_080944C8
	adds r3, r0, #0
	b _08094DD2
_08094C42:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	orrs r2, r0
	str r2, [sp, #0x1ec]
_08094C4A:
	movs r0, #0x10
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	beq _08094C5A
	movs r0, #4
	add sl, r0
	b _08094C74
_08094C5A:
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _08094C70
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _08094C7A
_08094C70:
	movs r4, #4
	add sl, r4
_08094C74:
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_08094C7A:
	movs r2, #1
	b _08094CCE
_08094C7E:
	ldr r0, _08094C84 @ =gUnknown_08CDB304
	str r0, [sp, #0x210]
	b _08094C8C
	.align 2, 0
_08094C84: .4byte gUnknown_08CDB304
_08094C88:
	ldr r1, _08094CAC @ =gUnknown_08CDB2E8
	str r1, [sp, #0x210]
_08094C8C:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _08094CB0
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _08094CB0
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _08094CBA
	.align 2, 0
_08094CAC: .4byte gUnknown_08CDB2E8
_08094CB0:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_08094CBA:
	movs r2, #2
	movs r0, #1
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _08094CCE
	cmp r4, #0
	beq _08094CCE
	orrs r1, r2
	str r1, [sp, #0x1ec]
_08094CCE:
	ldr r1, _08094D18 @ =0x000001C9
	add r1, sp
	movs r0, #0
	strb r0, [r1]
_08094CD6:
	str r6, [sp, #0x208]
	cmp r6, #0
	blt _08094CE6
	movs r0, #0x81
	rsbs r0, r0, #0
	ldr r1, [sp, #0x1ec]
	ands r1, r0
	str r1, [sp, #0x1ec]
_08094CE6:
	movs r0, #0xe2
	lsls r0, r0, #1
	add r0, sp
	mov r8, r0
	cmp r4, #0
	bne _08094CFC
	adds r7, r5, #0
	adds r7, #8
	ldr r1, [sp, #0x208]
	cmp r1, #0
	beq _08094DB4
_08094CFC:
	cmp r2, #1
	beq _08094D5A
	cmp r2, #1
	blo _08094D20
	cmp r2, #2
	beq _08094D94
	ldr r2, _08094D1C @ =gUnknown_08CDB318
	mov r8, r2
	mov r0, r8
	bl sub_080944C8
	adds r3, r0, #0
	b _08094DDA
	.align 2, 0
_08094D18: .4byte 0x000001C9
_08094D1C: .4byte gUnknown_08CDB318
_08094D20:
	adds r7, r5, #0
	adds r7, #8
	movs r2, #7
_08094D26:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r0, r4, #0
	ands r0, r2
	adds r1, r0, #0
	adds r1, #0x30
	mov r0, r8
	strb r1, [r0]
	lsrs r4, r4, #3
	cmp r4, #0
	bne _08094D26
	movs r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _08094DB4
	cmp r1, #0x30
	beq _08094DB4
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	movs r0, #0x30
	mov r1, r8
	strb r0, [r1]
	b _08094DB4
_08094D5A:
	adds r7, r5, #0
	adds r7, #8
	cmp r4, #9
	bls _08094D84
_08094D62:
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08091B58
	adds r0, #0x30
	mov r1, r8
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08091AE0
	adds r4, r0, #0
	cmp r4, #9
	bhi _08094D62
_08094D84:
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	adds r0, r4, #0
	adds r0, #0x30
	mov r4, r8
	strb r0, [r4]
	b _08094DB4
_08094D94:
	adds r7, r5, #0
	adds r7, #8
	movs r1, #0xf
_08094D9A:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r0, r4, #0
	ands r0, r1
	ldr r2, [sp, #0x210]
	adds r0, r2, r0
	ldrb r0, [r0]
	mov r2, r8
	strb r0, [r2]
	lsrs r4, r4, #4
	cmp r4, #0
	bne _08094D9A
_08094DB4:
	add r4, sp, #0x14
	mov r1, r8
	subs r0, r4, r1
	movs r2, #0xd8
	lsls r2, r2, #1
	adds r3, r0, r2
	b _08094DDE
_08094DC2:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0
	bne _08094DCA
	b _080954D8
_08094DCA:
	add r0, sp, #0x68
	mov r8, r0
	strb r4, [r0]
_08094DD0:
	movs r3, #1
_08094DD2:
	ldr r1, _08094DFC @ =0x000001C9
	add r1, sp
	movs r0, #0
	strb r0, [r1]
_08094DDA:
	adds r7, r5, #0
	adds r7, #8
_08094DDE:
	str r3, [sp, #0x20c]
	ldr r2, [sp, #0x208]
	cmp r3, r2
	bge _08094DE8
	str r2, [sp, #0x20c]
_08094DE8:
	ldr r0, _08094DFC @ =0x000001C9
	add r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _08094E00
	ldr r4, [sp, #0x20c]
	adds r4, #1
	str r4, [sp, #0x20c]
	b _08094E10
	.align 2, 0
_08094DFC: .4byte 0x000001C9
_08094E00:
	movs r0, #2
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _08094E10
	ldr r2, [sp, #0x20c]
	adds r2, #2
	str r2, [sp, #0x20c]
_08094E10:
	movs r0, #0x84
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	bne _08094E90
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _08094E90
	ldr r1, _08094EBC @ =gUnknown_08CDB2C0
	cmp r4, #0x10
	ble _08094E64
	mov r6, sb
_08094E2C:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, r7, #0
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _08094E5A
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl sub_0809450C
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _08094E56
	b _080954F0
_08094E56:
	add r5, sp, #0x28
	ldr r1, _08094EBC @ =gUnknown_08CDB2C0
_08094E5A:
	subs r4, #0x10
	adds r7, r5, #0
	adds r7, #8
	cmp r4, #0x10
	bgt _08094E2C
_08094E64:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	str r0, [r2, #8]
	adds r5, r7, #0
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _08094E90
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl sub_0809450C
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _08094E8E
	b _080954F0
_08094E8E:
	add r5, sp, #0x28
_08094E90:
	ldr r1, _08094EC0 @ =0x000001C9
	add r1, sp
	ldrb r0, [r1]
	cmp r0, #0
	beq _08094EC4
	str r1, [r5]
	movs r0, #1
	str r0, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _08094F04
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	b _08094EF4
	.align 2, 0
_08094EBC: .4byte gUnknown_08CDB2C0
_08094EC0: .4byte 0x000001C9
_08094EC4:
	movs r2, #2
	ldr r0, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _08094F04
	add r1, sp, #0x1c4
	movs r0, #0x30
	strb r0, [r1]
	add r0, sp, #0x1e8
	ldrb r0, [r0]
	strb r0, [r1, #1]
	str r1, [r5]
	str r2, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #2
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _08094F04
	ldr r0, [sp, #0x1e0]
_08094EF4:
	str r3, [sp, #0x21c]
	bl sub_0809450C
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _08094F02
	b _080954F0
_08094F02:
	add r5, sp, #0x28
_08094F04:
	movs r0, #0x84
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0x80
	bne _08094F80
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _08094F80
	ldr r1, _0809501C @ =gUnknown_08CDB2D0
	cmp r4, #0x10
	ble _08094F54
	mov r6, sb
_08094F20:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _08094F4E
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl sub_0809450C
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _08094F4A
	b _080954F0
_08094F4A:
	add r5, sp, #0x28
	ldr r1, _0809501C @ =gUnknown_08CDB2D0
_08094F4E:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _08094F20
_08094F54:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _08094F80
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl sub_0809450C
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _08094F7E
	b _080954F0
_08094F7E:
	add r5, sp, #0x28
_08094F80:
	ldr r0, [sp, #0x208]
	subs r4, r0, r3
	cmp r4, #0
	ble _08094FEE
	ldr r1, _0809501C @ =gUnknown_08CDB2D0
	cmp r4, #0x10
	ble _08094FC4
	mov r6, sb
_08094F90:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _08094FBE
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl sub_0809450C
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _08094FBA
	b _080954F0
_08094FBA:
	add r5, sp, #0x28
	ldr r1, _0809501C @ =gUnknown_08CDB2D0
_08094FBE:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _08094F90
_08094FC4:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _08094FEE
	ldr r0, [sp, #0x1e0]
	str r3, [sp, #0x21c]
	bl sub_0809450C
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _08094FEC
	b _080954F0
_08094FEC:
	add r5, sp, #0x28
_08094FEE:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _08095020
	mov r4, r8
	str r4, [r5]
	str r3, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r3
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	bgt _08095016
	b _08095436
_08095016:
	ldr r0, [sp, #0x1e0]
	b _0809542C
	.align 2, 0
_0809501C: .4byte gUnknown_08CDB2D0
_08095020:
	ldr r2, [sp, #0x1e8]
	cmp r2, #0x65
	bgt _08095028
	b _0809530C
_08095028:
	ldr r3, _080950F4 @ =0x00000000
	ldr r2, _080950F0 @ =0x00000000
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl sub_08092668
	cmp r0, #0
	bne _08095100
	ldr r0, _080950F8 @ =gUnknown_08CDB334
	str r0, [r5]
	movs r6, #1
	str r6, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _08095064
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_0809450C
	cmp r0, #0
	beq _08095062
	b _080954F0
_08095062:
	add r5, sp, #0x28
_08095064:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	add r4, sp, #0x1d8
	ldr r0, [r4]
	cmp r1, r0
	blt _0809507A
	ldr r0, [sp, #0x1ec]
	ands r0, r6
	cmp r0, #0
	bne _0809507A
	b _08095436
_0809507A:
	ldr r0, [sp, #0x1f8]
	str r0, [r5]
	str r6, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #1
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080950A2
	ldr r0, [sp, #0x1e0]
	bl sub_0809450C
	cmp r0, #0
	beq _080950A0
	b _080954F0
_080950A0:
	add r5, sp, #0x28
_080950A2:
	ldr r0, [r4]
	subs r4, r0, #1
	cmp r4, #0
	bgt _080950AC
	b _08095436
_080950AC:
	ldr r1, _080950FC @ =gUnknown_08CDB2D0
	cmp r4, #0x10
	ble _080950E4
	mov r6, sb
_080950B4:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080950DE
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_0809450C
	cmp r0, #0
	beq _080950DA
	b _080954F0
_080950DA:
	add r5, sp, #0x28
	ldr r1, _080950FC @ =gUnknown_08CDB2D0
_080950DE:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080950B4
_080950E4:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	b _0809541A
	.align 2, 0
_080950F0: .4byte 0x00000000
_080950F4: .4byte 0x00000000
_080950F8: .4byte gUnknown_08CDB334
_080950FC: .4byte gUnknown_08CDB2D0
_08095100:
	add r6, sp, #0x1d4
	ldr r2, [r6]
	cmp r2, #0
	bgt _080951E8
	ldr r0, _080951E0 @ =gUnknown_08CDB334
	str r0, [r5]
	movs r4, #1
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #1
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _08095132
	ldr r0, [sp, #0x1e0]
	bl sub_0809450C
	cmp r0, #0
	beq _08095130
	b _080954F0
_08095130:
	add r5, sp, #0x28
_08095132:
	ldr r2, [sp, #0x1f8]
	str r2, [r5]
	str r4, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _0809515C
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_0809450C
	cmp r0, #0
	beq _0809515A
	b _080954F0
_0809515A:
	add r5, sp, #0x28
_0809515C:
	ldr r0, [r6]
	rsbs r4, r0, #0
	cmp r4, #0
	ble _080951C2
	ldr r1, _080951E4 @ =gUnknown_08CDB2D0
	cmp r4, #0x10
	ble _0809519C
	mov r6, sb
_0809516C:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _08095196
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_0809450C
	cmp r0, #0
	beq _08095192
	b _080954F0
_08095192:
	add r5, sp, #0x28
	ldr r1, _080951E4 @ =gUnknown_08CDB2D0
_08095196:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _0809516C
_0809519C:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080951C2
	ldr r0, [sp, #0x1e0]
	bl sub_0809450C
	cmp r0, #0
	beq _080951C0
	b _080954F0
_080951C0:
	add r5, sp, #0x28
_080951C2:
	mov r2, r8
	str r2, [r5]
	add r0, sp, #0x1d8
	ldr r1, [r0]
	str r1, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, r0, r1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	b _08095424
	.align 2, 0
_080951E0: .4byte gUnknown_08CDB334
_080951E4: .4byte gUnknown_08CDB2D0
_080951E8:
	add r4, sp, #0x1d8
	ldr r1, [r4]
	cmp r2, r1
	blt _080952A4
	mov r0, r8
	str r0, [r5]
	str r1, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r1
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _0809521A
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_0809450C
	cmp r0, #0
	beq _08095218
	b _080954F0
_08095218:
	add r5, sp, #0x28
_0809521A:
	ldr r1, [r6]
	ldr r0, [r4]
	subs r4, r1, r0
	cmp r4, #0
	ble _08095282
	ldr r1, _0809529C @ =gUnknown_08CDB2D0
	cmp r4, #0x10
	ble _0809525C
	mov r6, sb
_0809522C:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _08095256
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_0809450C
	cmp r0, #0
	beq _08095252
	b _080954F0
_08095252:
	add r5, sp, #0x28
	ldr r1, _0809529C @ =gUnknown_08CDB2D0
_08095256:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _0809522C
_0809525C:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _08095282
	ldr r0, [sp, #0x1e0]
	bl sub_0809450C
	cmp r0, #0
	beq _08095280
	b _080954F0
_08095280:
	add r5, sp, #0x28
_08095282:
	movs r1, #1
	ldr r0, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	bne _0809528E
	b _08095436
_0809528E:
	ldr r0, _080952A0 @ =gUnknown_08CDB338
	str r0, [r5]
	str r1, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, #1
	b _0809541A
	.align 2, 0
_0809529C: .4byte gUnknown_08CDB2D0
_080952A0: .4byte gUnknown_08CDB338
_080952A4:
	mov r0, r8
	str r0, [r5]
	str r2, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r2
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080952CC
	ldr r0, [sp, #0x1e0]
	bl sub_0809450C
	cmp r0, #0
	beq _080952CA
	b _080954F0
_080952CA:
	add r5, sp, #0x28
_080952CC:
	ldr r0, [r6]
	add r8, r0
	ldr r0, _08095308 @ =gUnknown_08CDB338
	str r0, [r5]
	movs r0, #1
	str r0, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, #1
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _080952FC
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_0809450C
	cmp r0, #0
	beq _080952FA
	b _080954F0
_080952FA:
	add r5, sp, #0x28
_080952FC:
	mov r0, r8
	str r0, [r5]
	ldr r1, [r4]
	ldr r0, [r6]
	subs r1, r1, r0
	b _08095412
	.align 2, 0
_08095308: .4byte gUnknown_08CDB338
_0809530C:
	add r4, sp, #0x1d8
	ldr r0, [r4]
	cmp r0, #1
	bgt _0809531E
	movs r1, #1
	ldr r0, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080953E4
_0809531E:
	add r1, sp, #0x1c4
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r1]
	movs r0, #1
	add r8, r0
	movs r0, #0x2e
	strb r0, [r1, #1]
	str r1, [r5]
	movs r0, #2
	str r0, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #2
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _08095356
	ldr r0, [sp, #0x1e0]
	bl sub_0809450C
	cmp r0, #0
	beq _08095354
	b _080954F0
_08095354:
	add r5, sp, #0x28
_08095356:
	ldr r3, _08095380 @ =0x00000000
	ldr r2, _0809537C @ =0x00000000
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl sub_080926B4
	cmp r0, #0
	beq _08095384
	mov r2, r8
	str r2, [r5]
	ldr r1, [r4]
	subs r0, r1, #1
	str r0, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	subs r0, #1
	adds r0, r0, r1
	b _080953F0
	.align 2, 0
_0809537C: .4byte 0x00000000
_08095380: .4byte 0x00000000
_08095384:
	ldr r0, [r4]
	subs r4, r0, #1
	cmp r4, #0
	ble _0809540C
	ldr r1, _080953E0 @ =gUnknown_08CDB2D0
	cmp r4, #0x10
	ble _080953C4
	mov r6, sb
_08095394:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080953BE
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_0809450C
	cmp r0, #0
	beq _080953BA
	b _080954F0
_080953BA:
	add r5, sp, #0x28
	ldr r1, _080953E0 @ =gUnknown_08CDB2D0
_080953BE:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _08095394
_080953C4:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _0809540C
	ldr r0, [sp, #0x1e0]
	b _08095402
	.align 2, 0
_080953E0: .4byte gUnknown_08CDB2D0
_080953E4:
	mov r2, r8
	str r2, [r5]
	str r1, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
_080953F0:
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _0809540C
	ldr r0, [sp, #0x1e0]
	mov r1, sb
_08095402:
	bl sub_0809450C
	cmp r0, #0
	bne _080954F0
	add r5, sp, #0x28
_0809540C:
	add r0, sp, #0x14
	str r0, [r5]
	ldr r1, [sp, #0x204]
_08095412:
	str r1, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r1
_0809541A:
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
_08095424:
	cmp r0, #7
	ble _08095436
	ldr r0, [sp, #0x1e0]
	mov r1, sb
_0809542C:
	bl sub_0809450C
	cmp r0, #0
	bne _080954F0
	add r5, sp, #0x28
_08095436:
	movs r0, #4
	ldr r4, [sp, #0x1ec]
	ands r4, r0
	cmp r4, #0
	beq _080954A2
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _080954A2
	ldr r1, _080954D4 @ =gUnknown_08CDB2C0
	cmp r4, #0x10
	ble _08095480
	mov r6, sb
_08095452:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _0809547A
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_0809450C
	cmp r0, #0
	bne _080954F0
	add r5, sp, #0x28
	ldr r1, _080954D4 @ =gUnknown_08CDB2C0
_0809547A:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _08095452
_08095480:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	str r0, [r2, #8]
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _080954A2
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_0809450C
	cmp r0, #0
	bne _080954F0
_080954A2:
	ldr r0, [sp, #0x20c]
	ldr r4, [sp, #0x1f4]
	cmp r0, r4
	bge _080954AC
	adds r0, r4, #0
_080954AC:
	ldr r1, [sp, #0x1f0]
	adds r1, r1, r0
	str r1, [sp, #0x1f0]
	mov r2, sb
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _080954C6
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_0809450C
	cmp r0, #0
	bne _080954F0
_080954C6:
	movs r0, #0
	mov r4, sb
	str r0, [r4, #4]
	add r5, sp, #0x28
	bl _0809466C
	.align 2, 0
_080954D4: .4byte gUnknown_08CDB2C0
_080954D8:
	mov r1, sb
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _080954EA
	ldr r0, [sp, #0x1e0]
	bl sub_0809450C
	cmp r0, #0
	bne _080954F0
_080954EA:
	movs r0, #0
	mov r1, sb
	str r0, [r1, #4]
_080954F0:
	movs r0, #0x40
	ldr r2, [sp, #0x1e0]
	ldrh r2, [r2, #0xc]
	ands r0, r2
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	bne _08095502
	ldr r1, [sp, #0x1f0]
_08095502:
	adds r0, r1, #0
_08095504:
	movs r3, #0x88
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08095514
sub_08095514: @ 0x08095514
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #0x18]
	adds r5, r2, #0
	adds r4, r1, #0
	mov r8, r3
	ldr r6, [sp, #0x3c]
	ldr r0, [sp, #0x44]
	mov sl, r0
	ldr r1, [sp, #0x48]
	mov sb, r1
	cmp r1, #0x66
	bne _0809553A
	movs r7, #3
	b _0809554A
_0809553A:
	mov r0, sb
	cmp r0, #0x65
	beq _08095544
	cmp r0, #0x45
	bne _08095548
_08095544:
	movs r1, #1
	add r8, r1
_08095548:
	movs r7, #2
_0809554A:
	lsls r0, r4, #0x1f
	lsrs r0, r0, #0x1f
	cmp r0, #0
	beq _08095560
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_08092920
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #0x2d
_08095560:
	ldr r1, [sp, #0x40]
	strb r0, [r1]
	mov r0, r8
	str r0, [sp]
	mov r1, sl
	str r1, [sp, #4]
	add r0, sp, #0x10
	str r0, [sp, #8]
	add r0, sp, #0x14
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	adds r2, r5, #0
	adds r1, r4, #0
	adds r3, r7, #0
	bl sub_08095880
	adds r7, r0, #0
	mov r1, sb
	cmp r1, #0x67
	beq _0809558C
	cmp r1, #0x47
	bne _08095594
_0809558C:
	movs r0, #1
	ands r6, r0
	cmp r6, #0
	beq _080955E8
_08095594:
	mov r0, r8
	adds r6, r7, r0
	mov r1, sb
	cmp r1, #0x66
	bne _080955C4
	ldrb r0, [r7]
	cmp r0, #0x30
	bne _080955BE
	ldr r3, _08095604 @ =0x00000000
	ldr r2, _08095600 @ =0x00000000
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_080926B4
	cmp r0, #0
	beq _080955BE
	mov r1, r8
	rsbs r0, r1, #0
	adds r0, #1
	mov r1, sl
	str r0, [r1]
_080955BE:
	mov r1, sl
	ldr r0, [r1]
	adds r6, r6, r0
_080955C4:
	ldr r3, _08095604 @ =0x00000000
	ldr r2, _08095600 @ =0x00000000
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_08092668
	cmp r0, #0
	bne _080955D6
	str r6, [sp, #0x14]
_080955D6:
	ldr r0, [sp, #0x14]
	cmp r0, r6
	bhs _080955E8
	movs r1, #0x30
_080955DE:
	strb r1, [r0]
	adds r0, #1
	str r0, [sp, #0x14]
	cmp r0, r6
	blo _080955DE
_080955E8:
	ldr r0, [sp, #0x14]
	subs r0, r0, r7
	ldr r1, [sp, #0x4c]
	str r0, [r1]
	adds r0, r7, #0
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08095600: .4byte 0x00000000
_08095604: .4byte 0x00000000

	thumb_func_start sub_08095608
sub_08095608: @ 0x08095608
	push {r4, r5, r6, r7, lr}
	sub sp, #0x134
	adds r7, r0, #0
	adds r6, r1, #0
	strb r2, [r7]
	adds r5, r7, #1
	cmp r6, #0
	bge _0809561E
	rsbs r6, r6, #0
	movs r0, #0x2d
	b _08095620
_0809561E:
	movs r0, #0x2b
_08095620:
	strb r0, [r7, #1]
	adds r5, #1
	add r4, sp, #0x134
	cmp r6, #9
	ble _08095662
_0809562A:
	subs r4, #1
	adds r0, r6, #0
	movs r1, #0xa
	bl sub_08091A08
	adds r0, #0x30
	strb r0, [r4]
	adds r0, r6, #0
	movs r1, #0xa
	bl sub_08091970
	adds r6, r0, #0
	cmp r6, #9
	bgt _0809562A
	subs r4, #1
	adds r0, #0x30
	strb r0, [r4]
	add r0, sp, #0x134
	cmp r4, r0
	bhs _08095670
	adds r1, r0, #0
_08095654:
	ldrb r0, [r4]
	strb r0, [r5]
	adds r4, #1
	adds r5, #1
	cmp r4, r1
	blo _08095654
	b _08095670
_08095662:
	movs r0, #0x30
	strb r0, [r5]
	adds r5, #1
	adds r0, r6, #0
	adds r0, #0x30
	strb r0, [r5]
	adds r5, #1
_08095670:
	subs r0, r5, r7
	add sp, #0x134
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08095678
sub_08095678: @ 0x08095678
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _08095688
	ldr r0, _080956B4 @ =0x09F44AAC
	ldr r0, [r0]
	str r0, [r4, #0x54]
_08095688:
	ldr r1, [r4, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _08095696
	adds r0, r1, #0
	bl sub_08096708
_08095696:
	ldrh r1, [r4, #0xc]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _080956F0
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080956B8
	movs r0, #1
	rsbs r0, r0, #0
	b _08095722
	.align 2, 0
_080956B4: .4byte 0x09F44AAC
_080956B8:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080956E8
	ldr r1, [r4, #0x30]
	cmp r1, #0
	beq _080956D6
	adds r0, r4, #0
	adds r0, #0x40
	cmp r1, r0
	beq _080956D4
	ldr r0, [r4, #0x54]
	bl sub_08094248
_080956D4:
	str r5, [r4, #0x30]
_080956D6:
	movs r0, #0x25
	rsbs r0, r0, #0
	ldrh r1, [r4, #0xc]
	ands r0, r1
	movs r1, #0
	strh r0, [r4, #0xc]
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r4]
_080956E8:
	movs r0, #8
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
_080956F0:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _080956FC
	adds r0, r4, #0
	bl sub_08096A40
_080956FC:
	ldrh r1, [r4, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08095712
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0x14]
	rsbs r0, r0, #0
	str r0, [r4, #0x18]
	b _08095720
_08095712:
	movs r0, #2
	ands r0, r1
	movs r1, #0
	cmp r0, #0
	bne _0809571E
	ldr r1, [r4, #0x14]
_0809571E:
	str r1, [r4, #8]
_08095720:
	movs r0, #0
_08095722:
	pop {r4, r5, pc}

	thumb_func_start sub_08095724
sub_08095724: @ 0x08095724
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	ldr r7, [r1, #0x10]
	ldr r0, [r0, #0x10]
	cmp r0, r7
	bge _08095740
	movs r0, #0
	b _08095874
_08095740:
	ldr r0, [sp, #4]
	adds r0, #0x14
	mov r8, r0
	subs r7, #1
	lsls r0, r7, #2
	mov r1, r8
	adds r1, r1, r0
	str r1, [sp, #0xc]
	ldr r4, [sp]
	adds r4, #0x14
	adds r5, r4, r0
	ldr r1, [r1]
	adds r1, #1
	ldr r2, [r5]
	mov sl, r2
	mov r0, sl
	bl sub_08091AE0
	str r0, [sp, #8]
	mov r3, r8
	str r3, [sp, #0x14]
	str r4, [sp, #0x10]
	cmp r0, #0
	beq _080957EA
	movs r6, #0
	mov sb, r6
	ldr r0, _080957D4 @ =0x0000FFFF
	mov ip, r0
_08095778:
	mov r2, r8
	adds r2, #4
	mov r8, r2
	subs r2, #4
	ldm r2!, {r1}
	adds r0, r1, #0
	mov r3, ip
	ands r0, r3
	ldr r2, [sp, #8]
	muls r0, r2, r0
	mov r3, sb
	adds r2, r0, r3
	lsrs r0, r1, #0x10
	ldr r3, [sp, #8]
	adds r1, r0, #0
	muls r1, r3, r1
	lsrs r0, r2, #0x10
	adds r3, r1, r0
	lsrs r0, r3, #0x10
	mov sb, r0
	ldr r0, [r4]
	mov r1, ip
	ands r0, r1
	ands r2, r1
	subs r0, r0, r2
	adds r2, r0, r6
	asrs r6, r2, #0x10
	ldr r0, [r4]
	lsrs r1, r0, #0x10
	mov r0, ip
	ands r3, r0
	subs r1, r1, r3
	adds r0, r1, r6
	asrs r6, r0, #0x10
	strh r0, [r4]
	strh r2, [r4, #2]
	adds r4, #4
	ldr r1, [sp, #0xc]
	cmp r8, r1
	bls _08095778
	mov r2, sl
	cmp r2, #0
	bne _080957EA
	ldr r4, [sp, #0x10]
	b _080957DA
	.align 2, 0
_080957D4: .4byte 0x0000FFFF
_080957D8:
	subs r7, #1
_080957DA:
	subs r5, #4
	cmp r5, r4
	bls _080957E6
	ldr r0, [r5]
	cmp r0, #0
	beq _080957D8
_080957E6:
	ldr r3, [sp]
	str r7, [r3, #0x10]
_080957EA:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_08097170
	cmp r0, #0
	blt _08095872
	ldr r0, [sp, #8]
	adds r0, #1
	str r0, [sp, #8]
	movs r6, #0
	mov sb, r6
	ldr r4, [sp, #0x10]
	ldr r1, [sp, #0x14]
	mov r8, r1
	lsls r2, r7, #2
	mov sl, r2
	ldr r5, _0809585C @ =0x0000FFFF
_0809580C:
	mov r3, r8
	adds r3, #4
	mov r8, r3
	subs r3, #4
	ldm r3!, {r1}
	adds r0, r1, #0
	ands r0, r5
	mov r3, sb
	adds r2, r0, r3
	lsrs r1, r1, #0x10
	lsrs r0, r2, #0x10
	adds r3, r1, r0
	lsrs r0, r3, #0x10
	mov sb, r0
	ldr r1, [r4]
	adds r0, r1, #0
	ands r0, r5
	ands r2, r5
	subs r0, r0, r2
	adds r2, r0, r6
	asrs r6, r2, #0x10
	lsrs r1, r1, #0x10
	ands r3, r5
	subs r1, r1, r3
	adds r0, r1, r6
	asrs r6, r0, #0x10
	strh r0, [r4]
	strh r2, [r4, #2]
	adds r4, #4
	ldr r1, [sp, #0xc]
	cmp r8, r1
	bls _0809580C
	ldr r4, [sp, #0x10]
	mov r2, sl
	adds r5, r4, r2
	ldr r0, [r5]
	cmp r0, #0
	bne _08095872
	b _08095862
	.align 2, 0
_0809585C: .4byte 0x0000FFFF
_08095860:
	subs r7, #1
_08095862:
	subs r5, #4
	cmp r5, r4
	bls _0809586E
	ldr r0, [r5]
	cmp r0, #0
	beq _08095860
_0809586E:
	ldr r3, [sp]
	str r7, [r3, #0x10]
_08095872:
	ldr r0, [sp, #8]
_08095874:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08095880
sub_08095880: @ 0x08095880
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x84
	mov sl, r0
	str r3, [sp, #0xc]
	ldr r4, [sp, #0xac]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	ldr r2, [r0, #0x40]
	cmp r2, #0
	beq _080958B8
	ldr r0, [r0, #0x44]
	str r0, [r2, #4]
	mov r0, sl
	ldr r1, [r0, #0x44]
	movs r0, #1
	lsls r0, r1
	str r0, [r2, #8]
	mov r0, sl
	adds r1, r2, #0
	bl sub_08096CA8
	movs r0, #0
	mov r1, sl
	str r0, [r1, #0x40]
_080958B8:
	movs r0, #0x80
	lsls r0, r0, #0x18
	ldr r1, [sp, #0x40]
	ands r0, r1
	cmp r0, #0
	beq _080958D4
	movs r0, #1
	str r0, [r4]
	ldr r0, _080958D0 @ =0x7FFFFFFF
	ands r1, r0
	str r1, [sp, #0x40]
	b _080958D6
	.align 2, 0
_080958D0: .4byte 0x7FFFFFFF
_080958D4:
	str r0, [r4]
_080958D6:
	ldr r1, _08095918 @ =0x7FF00000
	ldr r2, [sp, #0x40]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, r1
	bne _0809592C
	ldr r0, _0809591C @ =0x0000270F
	ldr r3, [sp, #0xa8]
	str r0, [r3]
	ldr r0, _08095920 @ =gUnknown_08CDB348
	mov sb, r0
	ldr r1, [sp, #0x44]
	cmp r1, #0
	bne _080958FE
	ldr r0, _08095924 @ =0x000FFFFF
	ands r2, r0
	cmp r2, #0
	bne _080958FE
	ldr r2, _08095928 @ =gUnknown_08CDB33C
	mov sb, r2
_080958FE:
	ldr r3, [sp, #0xb0]
	cmp r3, #0
	beq _08095950
	mov r1, sb
	ldrb r0, [r1, #3]
	adds r1, #3
	cmp r0, #0
	beq _08095910
	adds r1, #5
_08095910:
	ldr r2, [sp, #0xb0]
	str r1, [r2]
	b _08095950
	.align 2, 0
_08095918: .4byte 0x7FF00000
_0809591C: .4byte 0x0000270F
_08095920: .4byte gUnknown_08CDB348
_08095924: .4byte 0x000FFFFF
_08095928: .4byte gUnknown_08CDB33C
_0809592C:
	ldr r3, _0809595C @ =0x00000000
	ldr r2, _08095958 @ =0x00000000
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_08092668
	cmp r0, #0
	bne _08095964
	movs r0, #1
	ldr r3, [sp, #0xa8]
	str r0, [r3]
	ldr r0, _08095960 @ =gUnknown_08CDB34C
	mov sb, r0
	ldr r1, [sp, #0xb0]
	cmp r1, #0
	beq _08095950
	adds r0, #1
	str r0, [r1]
_08095950:
	mov r0, sb
	bl _0809656A
	.align 2, 0
_08095958: .4byte 0x00000000
_0809595C: .4byte 0x00000000
_08095960: .4byte gUnknown_08CDB34C
_08095964:
	add r0, sp, #8
	str r0, [sp]
	mov r0, sl
	ldr r1, [sp, #0x40]
	ldr r2, [sp, #0x44]
	add r3, sp, #4
	bl sub_080973A8
	str r0, [sp, #0x5c]
	ldr r2, [sp, #0x40]
	lsls r0, r2, #1
	lsrs r0, r0, #0x15
	mov r8, r0
	cmp r0, #0
	beq _080959B4
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r0, _080959A8 @ =0x000FFFFF
	ldr r1, [sp, #0x48]
	ands r1, r0
	str r1, [sp, #0x48]
	ldr r0, _080959AC @ =0x3FF00000
	adds r2, r1, #0
	orrs r2, r0
	str r2, [sp, #0x48]
	ldr r3, _080959B0 @ =0xFFFFFC01
	add r8, r3
	movs r0, #0
	str r0, [sp, #0x58]
	ldr r6, [sp, #8]
	b _08095A14
	.align 2, 0
_080959A8: .4byte 0x000FFFFF
_080959AC: .4byte 0x3FF00000
_080959B0: .4byte 0xFFFFFC01
_080959B4:
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	adds r2, r1, r0
	ldr r3, _080959DC @ =0x00000432
	adds r3, r3, r2
	mov r8, r3
	adds r6, r1, #0
	cmp r3, #0x20
	ble _080959E4
	movs r0, #0x40
	subs r0, r0, r3
	ldr r4, [sp, #0x40]
	lsls r4, r0
	ldr r1, _080959E0 @ =0x00000412
	adds r0, r2, r1
	ldr r2, [sp, #0x44]
	lsrs r2, r0
	adds r0, r2, #0
	orrs r4, r0
	b _080959EE
	.align 2, 0
_080959DC: .4byte 0x00000432
_080959E0: .4byte 0x00000412
_080959E4:
	movs r0, #0x20
	mov r3, r8
	subs r0, r0, r3
	ldr r4, [sp, #0x44]
	lsls r4, r0
_080959EE:
	adds r0, r4, #0
	bl sub_08092830
	cmp r4, #0
	bge _08095A00
	ldr r3, _08095AC4 @ =0x00000000
	ldr r2, _08095AC0 @ =0x41F00000
	bl sub_080920A4
_08095A00:
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r1, _08095AC8 @ =0xFE100000
	ldr r0, [sp, #0x48]
	adds r1, r0, r1
	str r1, [sp, #0x48]
	ldr r2, _08095ACC @ =0xFFFFFBCD
	add r8, r2
	movs r3, #1
	str r3, [sp, #0x58]
_08095A14:
	ldr r2, _08095AD0 @ =0x3FF80000
	ldr r3, _08095AD4 @ =0x00000000
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x4c]
	bl sub_080920D4
	ldr r2, _08095AD8 @ =0x3FD287A7
	ldr r3, _08095ADC @ =0x636F4361
	bl sub_0809210C
	ldr r2, _08095AE0 @ =0x3FC68A28
	ldr r3, _08095AE4 @ =0x8B60C8B3
	bl sub_080920A4
	adds r5, r1, #0
	adds r4, r0, #0
	mov r0, r8
	bl sub_08092830
	ldr r2, _08095AE8 @ =0x3FD34413
	ldr r3, _08095AEC @ =0x509F79FB
	bl sub_0809210C
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_080920A4
	str r0, [sp, #0x6c]
	str r1, [sp, #0x70]
	bl sub_080928AC
	str r0, [sp, #0x24]
	ldr r2, _08095AF0 @ =0x00000000
	ldr r3, _08095AF4 @ =0x00000000
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl sub_08092798
	cmp r0, #0
	bge _08095A84
	ldr r0, [sp, #0x24]
	bl sub_08092830
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl sub_080926B4
	cmp r0, #0
	beq _08095A84
	ldr r0, [sp, #0x24]
	subs r0, #1
	str r0, [sp, #0x24]
_08095A84:
	movs r1, #1
	str r1, [sp, #0x2c]
	ldr r2, [sp, #0x24]
	cmp r2, #0x16
	bhi _08095AAE
	ldr r1, _08095AF8 @ =gUnknown_08CDB398
	lsls r0, r2, #3
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r3, [r0, #4]
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_08092798
	cmp r0, #0
	bge _08095AAA
	ldr r3, [sp, #0x24]
	subs r3, #1
	str r3, [sp, #0x24]
_08095AAA:
	movs r0, #0
	str r0, [sp, #0x2c]
_08095AAE:
	mov r1, r8
	subs r0, r6, r1
	subs r4, r0, #1
	cmp r4, #0
	blt _08095AFC
	movs r2, #0
	str r2, [sp, #0x10]
	str r4, [sp, #0x34]
	b _08095B04
	.align 2, 0
_08095AC0: .4byte 0x41F00000
_08095AC4: .4byte 0x00000000
_08095AC8: .4byte 0xFE100000
_08095ACC: .4byte 0xFFFFFBCD
_08095AD0: .4byte 0x3FF80000
_08095AD4: .4byte 0x00000000
_08095AD8: .4byte 0x3FD287A7
_08095ADC: .4byte 0x636F4361
_08095AE0: .4byte 0x3FC68A28
_08095AE4: .4byte 0x8B60C8B3
_08095AE8: .4byte 0x3FD34413
_08095AEC: .4byte 0x509F79FB
_08095AF0: .4byte 0x00000000
_08095AF4: .4byte 0x00000000
_08095AF8: .4byte gUnknown_08CDB398
_08095AFC:
	rsbs r4, r4, #0
	str r4, [sp, #0x10]
	movs r3, #0
	str r3, [sp, #0x34]
_08095B04:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	blt _08095B18
	movs r1, #0
	str r1, [sp, #0x14]
	str r0, [sp, #0x38]
	ldr r2, [sp, #0x34]
	adds r2, r2, r0
	str r2, [sp, #0x34]
	b _08095B28
_08095B18:
	ldr r3, [sp, #0x10]
	ldr r0, [sp, #0x24]
	subs r3, r3, r0
	str r3, [sp, #0x10]
	rsbs r1, r0, #0
	str r1, [sp, #0x14]
	movs r2, #0
	str r2, [sp, #0x38]
_08095B28:
	ldr r3, [sp, #0xc]
	cmp r3, #9
	bls _08095B32
	movs r0, #0
	str r0, [sp, #0xc]
_08095B32:
	movs r5, #1
	ldr r1, [sp, #0xc]
	cmp r1, #5
	ble _08095B40
	subs r1, #4
	str r1, [sp, #0xc]
	movs r5, #0
_08095B40:
	movs r2, #1
	str r2, [sp, #0x30]
	ldr r3, [sp, #0xc]
	cmp r3, #5
	bhi _08095BBA
	lsls r0, r3, #2
	ldr r1, _08095B54 @ =_08095B58
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08095B54: .4byte _08095B58
_08095B58: @ jump table
	.4byte _08095B70 @ case 0
	.4byte _08095B70 @ case 1
	.4byte _08095B82 @ case 2
	.4byte _08095B9E @ case 3
	.4byte _08095B86 @ case 4
	.4byte _08095BA2 @ case 5
_08095B70:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x20]
	movs r1, #0x12
	mov r8, r1
	movs r2, #0
	str r2, [sp, #0xa4]
	b _08095BBA
_08095B82:
	movs r3, #0
	str r3, [sp, #0x30]
_08095B86:
	ldr r0, [sp, #0xa4]
	cmp r0, #0
	bgt _08095B90
	movs r1, #1
	str r1, [sp, #0xa4]
_08095B90:
	ldr r2, [sp, #0xa4]
	mov r8, r2
	mov r3, r8
	str r3, [sp, #0x20]
	mov r0, r8
	str r0, [sp, #0x18]
	b _08095BBA
_08095B9E:
	movs r1, #0
	str r1, [sp, #0x30]
_08095BA2:
	ldr r2, [sp, #0xa4]
	ldr r3, [sp, #0x24]
	adds r0, r2, r3
	adds r1, r0, #1
	mov r8, r1
	mov r2, r8
	str r2, [sp, #0x18]
	str r0, [sp, #0x20]
	cmp r1, #0
	bgt _08095BBA
	movs r3, #1
	mov r8, r3
_08095BBA:
	movs r4, #4
	movs r0, #0
	mov r1, sl
	str r0, [r1, #0x44]
	mov r2, r8
	cmp r2, #0x17
	bls _08095BDA
	movs r1, #0
_08095BCA:
	adds r1, #1
	lsls r4, r4, #1
	adds r0, r4, #0
	adds r0, #0x14
	cmp r0, r8
	bls _08095BCA
	mov r3, sl
	str r1, [r3, #0x44]
_08095BDA:
	mov r0, sl
	ldr r1, [r0, #0x44]
	bl sub_08096C50
	mov r1, sl
	str r0, [r1, #0x40]
	str r0, [sp, #0x74]
	mov sb, r0
	ldr r2, [sp, #0x18]
	cmp r2, #0xe
	bls _08095BF2
	b _08095F64
_08095BF2:
	cmp r5, #0
	bne _08095BF8
	b _08095F64
_08095BF8:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	str r0, [sp, #0x78]
	str r1, [sp, #0x7c]
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r1, [sp, #0x24]
	str r1, [sp, #0x28]
	str r2, [sp, #0x1c]
	movs r7, #2
	cmp r1, #0
	ble _08095C88
	ldr r0, _08095C80 @ =gUnknown_08CDB398
	movs r2, #0xf
	ands r1, r2
	lsls r1, r1, #3
	adds r3, r1, r0
	ldr r0, [r3]
	ldr r1, [r3, #4]
	str r0, [sp, #0x6c]
	str r1, [sp, #0x70]
	ldr r1, [sp, #0x24]
	asrs r4, r1, #4
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _08095C44
	ands r4, r2
	ldr r0, _08095C84 @ =gUnknown_08CDB460
	ldr r2, [r0, #0x20]
	ldr r3, [r0, #0x24]
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	bl sub_080923B4
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	movs r7, #3
_08095C44:
	cmp r4, #0
	beq _08095C6C
	ldr r5, _08095C84 @ =gUnknown_08CDB460
_08095C4A:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08095C64
	adds r7, #1
	ldr r2, [r5]
	ldr r3, [r5, #4]
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl sub_0809210C
	str r0, [sp, #0x6c]
	str r1, [sp, #0x70]
_08095C64:
	asrs r4, r4, #1
	adds r5, #8
	cmp r4, #0
	bne _08095C4A
_08095C6C:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl sub_080923B4
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	b _08095CD4
	.align 2, 0
_08095C80: .4byte gUnknown_08CDB398
_08095C84: .4byte gUnknown_08CDB460
_08095C88:
	ldr r2, [sp, #0x24]
	rsbs r6, r2, #0
	cmp r6, #0
	beq _08095CD4
	ldr r1, _08095D7C @ =gUnknown_08CDB398
	movs r0, #0xf
	ands r0, r6
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl sub_0809210C
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	asrs r4, r6, #4
	cmp r4, #0
	beq _08095CD4
	ldr r5, _08095D80 @ =gUnknown_08CDB460
_08095CB2:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08095CCC
	adds r7, #1
	ldr r0, [r5]
	ldr r1, [r5, #4]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl sub_0809210C
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_08095CCC:
	asrs r4, r4, #1
	adds r5, #8
	cmp r4, #0
	bne _08095CB2
_08095CD4:
	ldr r3, [sp, #0x2c]
	cmp r3, #0
	beq _08095D12
	ldr r2, _08095D84 @ =0x3FF00000
	ldr r3, _08095D88 @ =0x00000000
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_08092798
	cmp r0, #0
	bge _08095D12
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ble _08095D12
	ldr r1, [sp, #0x20]
	cmp r1, #0
	bgt _08095CF8
	b _08095F50
_08095CF8:
	str r1, [sp, #0x18]
	ldr r2, [sp, #0x24]
	subs r2, #1
	str r2, [sp, #0x24]
	ldr r0, _08095D8C @ =0x40240000
	ldr r1, _08095D90 @ =0x00000000
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl sub_0809210C
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	adds r7, #1
_08095D12:
	adds r0, r7, #0
	bl sub_08092830
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl sub_0809210C
	ldr r2, _08095D94 @ =0x401C0000
	ldr r3, _08095D98 @ =0x00000000
	bl sub_080920A4
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	ldr r0, _08095D9C @ =0xFCC00000
	ldr r3, [sp, #0x50]
	adds r0, r3, r0
	str r0, [sp, #0x50]
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bne _08095DA8
	movs r2, #0
	str r2, [sp, #0x64]
	movs r3, #0
	str r3, [sp, #0x68]
	ldr r2, _08095DA0 @ =0x40140000
	ldr r3, _08095DA4 @ =0x00000000
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_080920D4
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_08092700
	cmp r0, #0
	ble _08095D60
	b _080962DA
_08095D60:
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	bl sub_08092920
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_08092798
	cmp r0, #0
	bge _08095D7A
	b _080962D2
_08095D7A:
	b _08095F50
	.align 2, 0
_08095D7C: .4byte gUnknown_08CDB398
_08095D80: .4byte gUnknown_08CDB460
_08095D84: .4byte 0x3FF00000
_08095D88: .4byte 0x00000000
_08095D8C: .4byte 0x40240000
_08095D90: .4byte 0x00000000
_08095D94: .4byte 0x401C0000
_08095D98: .4byte 0x00000000
_08095D9C: .4byte 0xFCC00000
_08095DA0: .4byte 0x40140000
_08095DA4: .4byte 0x00000000
_08095DA8:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _08095E78
	ldr r1, _08095DD8 @ =gUnknown_08CDB398
	ldr r0, [sp, #0x18]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r3, [r0, #4]
	ldr r0, _08095DDC @ =0x3FE00000
	ldr r1, _08095DE0 @ =0x00000000
	bl sub_080923B4
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_080920D4
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	movs r1, #0
	mov r8, r1
	b _08095E04
	.align 2, 0
_08095DD8: .4byte gUnknown_08CDB398
_08095DDC: .4byte 0x3FE00000
_08095DE0: .4byte 0x00000000
_08095DE4:
	ldr r1, _08095E6C @ =0x00000000
	ldr r0, _08095E68 @ =0x40240000
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_0809210C
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	ldr r1, _08095E6C @ =0x00000000
	ldr r0, _08095E68 @ =0x40240000
	adds r3, r5, #0
	adds r2, r4, #0
	bl sub_0809210C
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_08095E04:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_080928AC
	adds r6, r0, #0
	bl sub_08092830
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_080920D4
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r6, #0
	adds r0, #0x30
	mov r2, sb
	strb r0, [r2]
	movs r3, #1
	add sb, r3
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_08092798
	cmp r0, #0
	bge _08095E40
	b _0809654A
_08095E40:
	ldr r0, _08095E70 @ =0x3FF00000
	ldr r1, _08095E74 @ =0x00000000
	adds r3, r5, #0
	adds r2, r4, #0
	bl sub_080920D4
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_08092798
	cmp r0, #0
	bge _08095E5A
	b _08096064
_08095E5A:
	movs r0, #1
	add r8, r0
	ldr r1, [sp, #0x18]
	cmp r8, r1
	blt _08095DE4
	b _08095F50
	.align 2, 0
_08095E68: .4byte 0x40240000
_08095E6C: .4byte 0x00000000
_08095E70: .4byte 0x3FF00000
_08095E74: .4byte 0x00000000
_08095E78:
	ldr r1, _08095E98 @ =gUnknown_08CDB398
	ldr r0, [sp, #0x18]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_0809210C
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	movs r2, #1
	mov r8, r2
	b _08095EB0
	.align 2, 0
_08095E98: .4byte gUnknown_08CDB398
_08095E9C:
	movs r3, #1
	add r8, r3
	ldr r1, _08095F44 @ =0x00000000
	ldr r0, _08095F40 @ =0x40240000
	adds r3, r5, #0
	adds r2, r4, #0
	bl sub_0809210C
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_08095EB0:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_080928AC
	adds r6, r0, #0
	bl sub_08092830
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_080920D4
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r6, #0
	adds r0, #0x30
	mov r1, sb
	strb r0, [r1]
	movs r2, #1
	add sb, r2
	ldr r3, [sp, #0x18]
	cmp r8, r3
	bne _08095E9C
	ldr r6, _08095F48 @ =0x3FE00000
	ldr r7, _08095F4C @ =0x00000000
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_080920A4
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_08092700
	cmp r0, #0
	ble _08095F02
	b _08096064
_08095F02:
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_080920D4
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_08092798
	cmp r0, #0
	bge _08095F50
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x30
	beq _08095F2E
	b _0809608A
_08095F2E:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x30
	beq _08095F2E
	b _0809608A
	.align 2, 0
_08095F40: .4byte 0x40240000
_08095F44: .4byte 0x00000000
_08095F48: .4byte 0x3FE00000
_08095F4C: .4byte 0x00000000
_08095F50:
	ldr r1, [sp, #0x74]
	mov sb, r1
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x4c]
	str r2, [sp, #0x40]
	str r3, [sp, #0x44]
	ldr r3, [sp, #0x28]
	str r3, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x18]
_08095F64:
	ldr r0, [sp, #4]
	cmp r0, #0
	bge _08095F6C
	b _080960A0
_08095F6C:
	ldr r1, [sp, #0x24]
	cmp r1, #0xe
	ble _08095F74
	b _080960A0
_08095F74:
	ldr r1, _08095FC0 @ =gUnknown_08CDB398
	ldr r2, [sp, #0x24]
	lsls r0, r2, #3
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [sp, #0x6c]
	str r2, [sp, #0x70]
	ldr r2, [sp, #0xa4]
	cmp r2, #0
	bge _08095FCC
	ldr r3, [sp, #0x18]
	cmp r3, #0
	bgt _08095FCC
	movs r0, #0
	str r0, [sp, #0x64]
	movs r1, #0
	str r1, [sp, #0x68]
	cmp r3, #0
	bge _08095F9E
	b _080962D2
_08095F9E:
	ldr r2, _08095FC4 @ =0x40140000
	ldr r3, _08095FC8 @ =0x00000000
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl sub_0809210C
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_080927E4
	cmp r0, #0
	bgt _08095FBC
	b _080962D2
_08095FBC:
	b _080962DA
	.align 2, 0
_08095FC0: .4byte gUnknown_08CDB398
_08095FC4: .4byte 0x40140000
_08095FC8: .4byte 0x00000000
_08095FCC:
	movs r2, #1
	mov r8, r2
	b _08095FF0
_08095FD2:
	ldr r1, _08096094 @ =0x00000000
	ldr r0, _08096090 @ =0x40240000
	bl sub_0809210C
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	ldr r2, _08096098 @ =0x00000000
	ldr r3, _0809609C @ =0x00000000
	bl sub_08092668
	cmp r0, #0
	bne _08095FEC
	b _0809654A
_08095FEC:
	movs r3, #1
	add r8, r3
_08095FF0:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl sub_080923B4
	bl sub_080928AC
	adds r6, r0, #0
	bl sub_08092830
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl sub_0809210C
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_080920D4
	adds r3, r1, #0
	adds r2, r0, #0
	adds r0, r6, #0
	adds r0, #0x30
	mov r1, sb
	strb r0, [r1]
	movs r0, #1
	add sb, r0
	ldr r1, [sp, #0x18]
	cmp r8, r1
	bne _08095FD2
	adds r1, r3, #0
	adds r0, r2, #0
	bl sub_080920A4
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl sub_08092700
	cmp r0, #0
	bgt _08096064
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl sub_08092668
	cmp r0, #0
	beq _0809605A
	b _0809654A
_0809605A:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	bne _08096064
	b _0809654A
_08096064:
	movs r0, #0x30
_08096066:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x39
	bne _08096082
	ldr r1, [sp, #0x74]
	cmp sb, r1
	bne _08096066
	ldr r2, [sp, #0x24]
	adds r2, #1
	str r2, [sp, #0x24]
	strb r0, [r1]
_08096082:
	mov r3, sb
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_0809608A:
	movs r0, #1
	add sb, r0
	b _0809654A
	.align 2, 0
_08096090: .4byte 0x40240000
_08096094: .4byte 0x00000000
_08096098: .4byte 0x00000000
_0809609C: .4byte 0x00000000
_080960A0:
	ldr r5, [sp, #0x10]
	ldr r6, [sp, #0x14]
	movs r1, #0
	str r1, [sp, #0x60]
	movs r2, #0
	str r2, [sp, #0x64]
	ldr r3, [sp, #0x30]
	cmp r3, #0
	beq _08096116
	ldr r1, [sp, #0xc]
	cmp r1, #1
	bgt _080960D4
	ldr r2, [sp, #0x58]
	cmp r2, #0
	beq _080960CC
	ldr r3, _080960C8 @ =0x00000433
	adds r3, r3, r0
	mov r8, r3
	b _08096100
	.align 2, 0
_080960C8: .4byte 0x00000433
_080960CC:
	ldr r1, [sp, #8]
	movs r0, #0x36
	subs r0, r0, r1
	b _080960FE
_080960D4:
	ldr r4, [sp, #0x18]
	subs r4, #1
	ldr r0, [sp, #0x14]
	cmp r0, r4
	blt _080960E2
	subs r6, r0, r4
	b _080960F2
_080960E2:
	ldr r1, [sp, #0x14]
	subs r4, r4, r1
	ldr r2, [sp, #0x38]
	adds r2, r2, r4
	str r2, [sp, #0x38]
	adds r1, r1, r4
	str r1, [sp, #0x14]
	movs r6, #0
_080960F2:
	ldr r3, [sp, #0x18]
	mov r8, r3
	cmp r3, #0
	bge _08096100
	subs r5, r5, r3
	movs r0, #0
_080960FE:
	mov r8, r0
_08096100:
	ldr r1, [sp, #0x10]
	add r1, r8
	str r1, [sp, #0x10]
	ldr r2, [sp, #0x34]
	add r2, r8
	str r2, [sp, #0x34]
	mov r0, sl
	movs r1, #1
	bl sub_08096EB8
	str r0, [sp, #0x64]
_08096116:
	cmp r5, #0
	ble _08096138
	ldr r3, [sp, #0x34]
	cmp r3, #0
	ble _08096138
	mov r8, r3
	cmp r8, r5
	ble _08096128
	mov r8, r5
_08096128:
	ldr r0, [sp, #0x10]
	mov r1, r8
	subs r0, r0, r1
	str r0, [sp, #0x10]
	subs r5, r5, r1
	ldr r2, [sp, #0x34]
	subs r2, r2, r1
	str r2, [sp, #0x34]
_08096138:
	ldr r3, [sp, #0x14]
	cmp r3, #0
	ble _08096186
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _0809617A
	cmp r6, #0
	ble _0809616A
	mov r0, sl
	ldr r1, [sp, #0x64]
	adds r2, r6, #0
	bl sub_08097038
	str r0, [sp, #0x64]
	mov r0, sl
	ldr r1, [sp, #0x64]
	ldr r2, [sp, #0x5c]
	bl sub_08096ECC
	adds r4, r0, #0
	mov r0, sl
	ldr r1, [sp, #0x5c]
	bl sub_08096CA8
	str r4, [sp, #0x5c]
_0809616A:
	ldr r1, [sp, #0x14]
	subs r4, r1, r6
	cmp r4, #0
	beq _08096186
	mov r0, sl
	ldr r1, [sp, #0x5c]
	adds r2, r4, #0
	b _08096180
_0809617A:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	ldr r2, [sp, #0x14]
_08096180:
	bl sub_08097038
	str r0, [sp, #0x5c]
_08096186:
	mov r0, sl
	movs r1, #1
	bl sub_08096EB8
	str r0, [sp, #0x68]
	ldr r2, [sp, #0x38]
	cmp r2, #0
	ble _080961A0
	mov r0, sl
	ldr r1, [sp, #0x68]
	bl sub_08097038
	str r0, [sp, #0x68]
_080961A0:
	ldr r3, [sp, #0xc]
	cmp r3, #1
	bgt _080961DC
	ldr r0, [sp, #0x44]
	cmp r0, #0
	bne _080961D8
	ldr r0, _080961D0 @ =0x000FFFFF
	ldr r1, [sp, #0x40]
	ands r0, r1
	cmp r0, #0
	bne _080961D8
	ldr r0, _080961D4 @ =0x7FF00000
	ands r1, r0
	cmp r1, #0
	beq _080961D8
	ldr r1, [sp, #0x10]
	adds r1, #1
	str r1, [sp, #0x10]
	ldr r2, [sp, #0x34]
	adds r2, #1
	str r2, [sp, #0x34]
	movs r3, #1
	str r3, [sp, #0x3c]
	b _080961DC
	.align 2, 0
_080961D0: .4byte 0x000FFFFF
_080961D4: .4byte 0x7FF00000
_080961D8:
	movs r0, #0
	str r0, [sp, #0x3c]
_080961DC:
	ldr r1, [sp, #0x38]
	cmp r1, #0
	beq _08096208
	ldr r2, [sp, #0x68]
	ldr r1, [r2, #0x10]
	subs r1, #1
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08096DDC
	ldr r1, [sp, #0x34]
	adds r1, #0x20
	subs r1, r1, r0
	mov r8, r1
	movs r0, #0x1f
	mov r3, r8
	ands r3, r0
	mov r8, r3
	b _08096216
_08096208:
	ldr r0, [sp, #0x34]
	adds r0, #1
	mov r8, r0
	movs r0, #0x1f
	mov r1, r8
	ands r1, r0
	mov r8, r1
_08096216:
	mov r2, r8
	cmp r2, #0
	beq _08096222
	movs r0, #0x20
	subs r2, r0, r2
	mov r8, r2
_08096222:
	mov r3, r8
	cmp r3, #4
	ble _0809622E
	movs r0, #4
	rsbs r0, r0, #0
	b _08096236
_0809622E:
	mov r3, r8
	cmp r3, #3
	bgt _08096246
	movs r0, #0x1c
_08096236:
	add r8, r0
	ldr r1, [sp, #0x10]
	add r1, r8
	str r1, [sp, #0x10]
	add r5, r8
	ldr r2, [sp, #0x34]
	add r2, r8
	str r2, [sp, #0x34]
_08096246:
	ldr r3, [sp, #0x10]
	cmp r3, #0
	ble _08096258
	mov r0, sl
	ldr r1, [sp, #0x5c]
	adds r2, r3, #0
	bl sub_080970D0
	str r0, [sp, #0x5c]
_08096258:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	ble _0809626A
	mov r0, sl
	ldr r1, [sp, #0x68]
	ldr r2, [sp, #0x34]
	bl sub_080970D0
	str r0, [sp, #0x68]
_0809626A:
	ldr r1, [sp, #0x2c]
	cmp r1, #0
	beq _080962A8
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl sub_08097170
	cmp r0, #0
	bge _080962A8
	ldr r2, [sp, #0x24]
	subs r2, #1
	str r2, [sp, #0x24]
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #0xa
	movs r3, #0
	bl sub_08096CC0
	str r0, [sp, #0x5c]
	ldr r3, [sp, #0x30]
	cmp r3, #0
	beq _080962A4
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #0xa
	movs r3, #0
	bl sub_08096CC0
	str r0, [sp, #0x64]
_080962A4:
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x18]
_080962A8:
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bgt _080962EC
	ldr r2, [sp, #0xc]
	cmp r2, #2
	ble _080962EC
	cmp r1, #0
	blt _080962D2
	mov r0, sl
	ldr r1, [sp, #0x68]
	movs r2, #5
	movs r3, #0
	bl sub_08096CC0
	str r0, [sp, #0x68]
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl sub_08097170
	cmp r0, #0
	bgt _080962DA
_080962D2:
	ldr r3, [sp, #0xa4]
	mvns r3, r3
	str r3, [sp, #0x24]
	b _08096522
_080962DA:
	movs r0, #0x31
	mov r1, sb
	strb r0, [r1]
	movs r2, #1
	add sb, r2
	ldr r3, [sp, #0x24]
	adds r3, #1
	str r3, [sp, #0x24]
	b _08096522
_080962EC:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _080962F4
	b _0809646A
_080962F4:
	cmp r5, #0
	ble _08096304
	mov r0, sl
	ldr r1, [sp, #0x64]
	adds r2, r5, #0
	bl sub_080970D0
	str r0, [sp, #0x64]
_08096304:
	ldr r1, [sp, #0x64]
	str r1, [sp, #0x60]
	ldr r2, [sp, #0x3c]
	cmp r2, #0
	beq _08096336
	ldr r1, [r1, #4]
	mov r0, sl
	bl sub_08096C50
	str r0, [sp, #0x64]
	adds r0, #0xc
	ldr r1, [sp, #0x60]
	adds r1, #0xc
	ldr r3, [sp, #0x60]
	ldr r2, [r3, #0x10]
	lsls r2, r2, #2
	adds r2, #8
	bl sub_08093C60
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #1
	bl sub_080970D0
	str r0, [sp, #0x64]
_08096336:
	movs r0, #1
	mov r8, r0
	mov r1, r8
	ldr r2, [sp, #0x44]
	ands r2, r1
	str r2, [sp, #0x80]
	b _0809638C
_08096344:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #0xa
	movs r3, #0
	bl sub_08096CC0
	str r0, [sp, #0x5c]
	ldr r3, [sp, #0x60]
	ldr r0, [sp, #0x64]
	cmp r3, r0
	bne _0809636C
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #0xa
	movs r3, #0
	bl sub_08096CC0
	str r0, [sp, #0x64]
	str r0, [sp, #0x60]
	b _08096388
_0809636C:
	mov r0, sl
	ldr r1, [sp, #0x60]
	movs r2, #0xa
	movs r3, #0
	bl sub_08096CC0
	str r0, [sp, #0x60]
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #0xa
	movs r3, #0
	bl sub_08096CC0
	str r0, [sp, #0x64]
_08096388:
	movs r1, #1
	add r8, r1
_0809638C:
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl sub_08095724
	adds r7, r0, #0
	adds r7, #0x30
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	bl sub_08097170
	adds r4, r0, #0
	mov r0, sl
	ldr r1, [sp, #0x68]
	ldr r2, [sp, #0x64]
	bl sub_080971B0
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080963C0
	ldr r0, [sp, #0x5c]
	adds r1, r5, #0
	bl sub_08097170
	adds r6, r0, #0
	b _080963C2
_080963C0:
	movs r6, #1
_080963C2:
	mov r0, sl
	adds r1, r5, #0
	bl sub_08096CA8
	cmp r6, #0
	bne _080963EE
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _080963EE
	ldr r3, [sp, #0x80]
	cmp r3, #0
	bne _080963EE
	cmp r7, #0x39
	beq _08096440
	cmp r4, #0
	ble _080963E4
	adds r7, #1
_080963E4:
	mov r0, sb
	strb r7, [r0]
	movs r1, #1
	add sb, r1
	b _08096522
_080963EE:
	cmp r4, #0
	blt _08096402
	cmp r4, #0
	bne _08096438
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _08096438
	ldr r3, [sp, #0x80]
	cmp r3, #0
	bne _08096438
_08096402:
	cmp r6, #0
	ble _08096432
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #1
	bl sub_080970D0
	str r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl sub_08097170
	adds r6, r0, #0
	cmp r6, #0
	bgt _0809642C
	cmp r6, #0
	bne _08096432
	adds r0, r7, #0
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08096432
_0809642C:
	adds r7, #1
	cmp r7, #0x3a
	beq _08096440
_08096432:
	mov r2, sb
	strb r7, [r2]
	b _080964EA
_08096438:
	cmp r6, #0
	ble _08096458
	cmp r7, #0x39
	bne _0809644C
_08096440:
	movs r0, #0x39
	mov r1, sb
	strb r0, [r1]
	movs r2, #1
	add sb, r2
	b _080964C0
_0809644C:
	adds r0, r7, #1
	mov r3, sb
	strb r0, [r3]
	movs r0, #1
	add sb, r0
	b _08096522
_08096458:
	mov r1, sb
	strb r7, [r1]
	movs r2, #1
	add sb, r2
	ldr r3, [sp, #0x18]
	cmp r8, r3
	beq _08096468
	b _08096344
_08096468:
	b _0809649C
_0809646A:
	movs r0, #1
	mov r8, r0
	b _08096482
_08096470:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #0xa
	movs r3, #0
	bl sub_08096CC0
	str r0, [sp, #0x5c]
	movs r1, #1
	add r8, r1
_08096482:
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl sub_08095724
	adds r7, r0, #0
	adds r7, #0x30
	mov r2, sb
	strb r7, [r2]
	movs r3, #1
	add sb, r3
	ldr r0, [sp, #0x18]
	cmp r8, r0
	blt _08096470
_0809649C:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #1
	bl sub_080970D0
	str r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl sub_08097170
	adds r4, r0, #0
	cmp r4, #0
	bgt _080964C0
	cmp r4, #0
	bne _08096502
	movs r0, #1
	ands r7, r0
	cmp r7, #0
	beq _08096502
_080964C0:
	movs r1, #1
	rsbs r1, r1, #0
	add sb, r1
	mov r2, sb
	ldrb r2, [r2]
	cmp r2, #0x39
	bne _080964E2
_080964CE:
	ldr r3, [sp, #0x74]
	cmp sb, r3
	beq _080964F0
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x39
	beq _080964CE
_080964E2:
	mov r2, sb
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_080964EA:
	movs r3, #1
	add sb, r3
	b _08096522
_080964F0:
	ldr r0, [sp, #0x24]
	adds r0, #1
	str r0, [sp, #0x24]
	movs r0, #0x31
	ldr r1, [sp, #0x74]
	strb r0, [r1]
	adds r1, #1
	mov sb, r1
	b _08096522
_08096502:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x30
	bne _0809651E
_08096510:
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x30
	beq _08096510
_0809651E:
	movs r2, #1
	add sb, r2
_08096522:
	mov r0, sl
	ldr r1, [sp, #0x68]
	bl sub_08096CA8
	ldr r3, [sp, #0x64]
	cmp r3, #0
	beq _0809654A
	ldr r0, [sp, #0x60]
	cmp r0, #0
	beq _08096542
	cmp r0, r3
	beq _08096542
	mov r0, sl
	ldr r1, [sp, #0x60]
	bl sub_08096CA8
_08096542:
	mov r0, sl
	ldr r1, [sp, #0x64]
	bl sub_08096CA8
_0809654A:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	bl sub_08096CA8
	movs r0, #0
	mov r1, sb
	strb r0, [r1]
	ldr r0, [sp, #0x24]
	adds r0, #1
	ldr r2, [sp, #0xa8]
	str r0, [r2]
	ldr r3, [sp, #0xb0]
	cmp r3, #0
	beq _08096568
	str r1, [r3]
_08096568:
	ldr r0, [sp, #0x74]
_0809656A:
	add sp, #0x84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08096578
sub_08096578: @ 0x08096578
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	cmp r4, #0
	bne _08096594
	ldr r0, _0809658C @ =0x09F44AAC
	ldr r0, [r0]
	ldr r1, _08096590 @ =sub_08096578
	bl sub_08096994
	b _0809660A
	.align 2, 0
_0809658C: .4byte 0x09F44AAC
_08096590: .4byte sub_08096578
_08096594:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _080965A0
	ldr r0, _080965D4 @ =0x09F44AAC
	ldr r0, [r0]
	str r0, [r4, #0x54]
_080965A0:
	ldr r1, [r4, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _080965AE
	adds r0, r1, #0
	bl sub_08096708
_080965AE:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08096608
	ldr r6, [r4, #0x10]
	cmp r6, #0
	beq _08096608
	ldr r0, [r4]
	subs r5, r0, r6
	str r6, [r4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080965E6
	ldr r0, [r4, #0x14]
	b _080965E8
	.align 2, 0
_080965D4: .4byte 0x09F44AAC
_080965D8:
	movs r0, #0x40
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	b _0809660A
_080965E6:
	movs r0, #0
_080965E8:
	str r0, [r4, #8]
	cmp r5, #0
	ble _08096608
_080965EE:
	ldr r0, [r4, #0x1c]
	ldr r3, [r4, #0x24]
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_08091940
	adds r1, r0, #0
	cmp r1, #0
	ble _080965D8
	adds r6, r6, r1
	subs r5, r5, r1
	cmp r5, #0
	bgt _080965EE
_08096608:
	movs r0, #0
_0809660A:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0809660C
sub_0809660C: @ 0x0809660C
	push {r4, lr}
	movs r4, #0
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	strh r1, [r0, #0xc]
	strh r2, [r0, #0xe]
	str r4, [r0, #0x10]
	str r4, [r0, #0x18]
	str r0, [r0, #0x1c]
	ldr r1, _08096634 @ =sub_08097564
	str r1, [r0, #0x20]
	ldr r1, _08096638 @ =sub_08097598
	str r1, [r0, #0x24]
	ldr r1, _0809663C @ =sub_080975D8
	str r1, [r0, #0x28]
	ldr r1, _08096640 @ =sub_08097618
	str r1, [r0, #0x2c]
	str r3, [r0, #0x54]
	pop {r4, pc}
	.align 2, 0
_08096634: .4byte sub_08097564
_08096638: .4byte sub_08097598
_0809663C: .4byte sub_080975D8
_08096640: .4byte sub_08097618

	thumb_func_start sub_08096644
sub_08096644: @ 0x08096644
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	movs r1, #0x58
	adds r6, r5, #0
	muls r6, r1, r6
	adds r1, r6, #0
	adds r1, #0xc
	bl sub_080938A0
	adds r4, r0, #0
	cmp r4, #0
	beq _08096670
	adds r0, #0xc
	movs r1, #0
	str r1, [r4]
	str r5, [r4, #4]
	str r0, [r4, #8]
	adds r2, r6, #0
	bl sub_08093CC0
	adds r0, r4, #0
	b _08096672
_08096670:
	movs r0, #0
_08096672:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08096674
sub_08096674: @ 0x08096674
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x38]
	cmp r0, #0
	bne _08096684
	adds r0, r5, #0
	bl sub_08096708
_08096684:
	movs r0, #0xec
	lsls r0, r0, #1
	adds r4, r5, r0
	b _0809668E
_0809668C:
	ldr r4, [r4]
_0809668E:
	ldr r2, [r4, #8]
	ldr r0, [r4, #4]
	b _0809669E
_08096694:
	movs r3, #0xc
	ldrsh r1, [r2, r3]
	cmp r1, #0
	beq _080966C0
	adds r2, #0x58
_0809669E:
	subs r0, #1
	cmp r0, #0
	bge _08096694
	ldr r0, [r4]
	cmp r0, #0
	bne _0809668C
	adds r0, r5, #0
	movs r1, #4
	bl sub_08096644
	str r0, [r4]
	cmp r0, #0
	bne _0809668C
	movs r0, #0xc
	str r0, [r5]
	movs r0, #0
	b _080966E0
_080966C0:
	movs r0, #1
	strh r0, [r2, #0xc]
	str r1, [r2]
	str r1, [r2, #8]
	str r1, [r2, #4]
	str r1, [r2, #0x10]
	str r1, [r2, #0x14]
	str r1, [r2, #0x18]
	ldr r0, _080966E4 @ =0x0000FFFF
	strh r0, [r2, #0xe]
	str r1, [r2, #0x30]
	str r1, [r2, #0x34]
	str r1, [r2, #0x44]
	str r1, [r2, #0x48]
	str r5, [r2, #0x54]
	adds r0, r2, #0
_080966E0:
	pop {r4, r5, pc}
	.align 2, 0
_080966E4: .4byte 0x0000FFFF

	thumb_func_start sub_080966E8
sub_080966E8: @ 0x080966E8
	push {lr}
	ldr r1, _080966F4 @ =sub_08096578
	bl sub_08096994
	pop {pc}
	.align 2, 0
_080966F4: .4byte sub_08096578

	thumb_func_start sub_080966F8
sub_080966F8: @ 0x080966F8
	push {lr}
	ldr r0, _08096704 @ =0x09F44AAC
	ldr r0, [r0]
	bl sub_080966E8
	pop {pc}
	.align 2, 0
_08096704: .4byte 0x09F44AAC

	thumb_func_start sub_08096708
sub_08096708: @ 0x08096708
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08096764 @ =sub_080966E8
	str r0, [r5, #0x3c]
	movs r0, #1
	str r0, [r5, #0x38]
	movs r0, #0xf2
	lsls r0, r0, #1
	adds r4, r5, r0
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	adds r3, r5, #0
	bl sub_0809660C
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #9
	movs r2, #1
	adds r3, r5, #0
	bl sub_0809660C
	movs r1, #0xa5
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #0xa
	movs r2, #2
	adds r3, r5, #0
	bl sub_0809660C
	movs r0, #0xec
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	movs r0, #0xee
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #3
	str r0, [r1]
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r5, r1
	str r4, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_08096764: .4byte sub_080966E8

	thumb_func_start sub_08096768
sub_08096768: @ 0x08096768
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov sl, r1
	ldr r6, [r1, #8]
	cmp r6, #0
	bne _08096780
	b _08096976
_08096780:
	movs r0, #8
	ldrh r1, [r5, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _08096790
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0809679C
_08096790:
	adds r0, r5, #0
	bl sub_08095678
	cmp r0, #0
	beq _0809679C
	b _08096982
_0809679C:
	mov r2, sl
	ldr r2, [r2]
	mov r8, r2
	movs r6, #0
	ldrh r1, [r5, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080967F0
_080967AE:
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	cmp r6, #0
	bne _080967C4
_080967B6:
	mov r1, r8
	ldr r7, [r1]
	ldr r6, [r1, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _080967B6
_080967C4:
	adds r2, r6, #0
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r6, r1
	bls _080967D0
	adds r2, r1, #0
_080967D0:
	adds r1, r7, #0
	bl sub_08091940
	adds r4, r0, #0
	cmp r4, #0
	bgt _080967DE
	b _0809697A
_080967DE:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r1, sl
	ldr r0, [r1, #8]
	subs r0, r0, r4
	str r0, [r1, #8]
	cmp r0, #0
	bne _080967AE
	b _08096976
_080967F0:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080968AA
_080967F8:
	ldrh r1, [r5, #0xc]
	ldr r0, [r5, #8]
	ldr r3, [r5]
	cmp r6, #0
	bne _08096810
_08096802:
	mov r2, r8
	ldr r7, [r2]
	ldr r6, [r2, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _08096802
_08096810:
	adds r4, r0, #0
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0809683E
	cmp r6, r4
	bhs _08096824
	adds r4, r6, #0
_08096824:
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_08096BC8
	ldr r0, [r5, #8]
	subs r0, r0, r4
	str r0, [r5, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	adds r4, r6, #0
	b _08096898
_0809683E:
	ldr r0, [r5, #0x10]
	cmp r3, r0
	bls _08096866
	cmp r6, r4
	bls _08096866
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_08096BC8
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	adds r0, r5, #0
	bl sub_08096578
	cmp r0, #0
	beq _08096864
	b _0809697A
_08096864:
	b _08096898
_08096866:
	ldr r4, [r5, #0x14]
	cmp r6, r4
	blo _08096880
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_08091940
	adds r4, r0, #0
	cmp r4, #0
	ble _0809697A
	b _08096898
_08096880:
	adds r4, r6, #0
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_08096BC8
	ldr r0, [r5, #8]
	subs r0, r0, r4
	str r0, [r5, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
_08096898:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r1, sl
	ldr r0, [r1, #8]
	subs r0, r0, r4
	str r0, [r1, #8]
	cmp r0, #0
	bne _080967F8
	b _08096976
_080968AA:
	movs r2, #0
	str r2, [sp]
_080968AE:
	cmp r6, #0
	bne _080968C4
	movs r0, #0
	str r0, [sp]
_080968B6:
	mov r1, r8
	ldr r7, [r1]
	ldr r6, [r1, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _080968B6
_080968C4:
	ldr r0, [sp]
	cmp r0, #0
	bne _080968E8
	adds r0, r7, #0
	movs r1, #0xa
	adds r2, r6, #0
	bl sub_08096B48
	adds r1, r0, #0
	cmp r1, #0
	beq _080968E0
	subs r0, r7, #1
	subs r1, r1, r0
	b _080968E2
_080968E0:
	adds r1, r6, #1
_080968E2:
	mov sb, r1
	movs r2, #1
	str r2, [sp]
_080968E8:
	mov r2, sb
	cmp sb, r6
	bls _080968F0
	adds r2, r6, #0
_080968F0:
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x14]
	adds r4, r0, r1
	ldr r0, [r5, #0x10]
	ldr r3, [r5]
	cmp r3, r0
	bls _0809691E
	cmp r2, r4
	ble _0809691E
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_08096BC8
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	adds r0, r5, #0
	bl sub_08096578
	cmp r0, #0
	bne _0809697A
	b _0809694E
_0809691E:
	adds r4, r1, #0
	cmp r2, r4
	blt _08096938
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_08091940
	adds r4, r0, #0
	cmp r4, #0
	ble _0809697A
	b _0809694E
_08096938:
	adds r4, r2, #0
	adds r0, r3, #0
	adds r1, r7, #0
	bl sub_08096BC8
	ldr r0, [r5, #8]
	subs r0, r0, r4
	str r0, [r5, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
_0809694E:
	mov r0, sb
	subs r0, r0, r4
	mov sb, r0
	cmp r0, #0
	bne _08096966
	adds r0, r5, #0
	bl sub_08096578
	cmp r0, #0
	bne _0809697A
	movs r1, #0
	str r1, [sp]
_08096966:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r2, sl
	ldr r0, [r2, #8]
	subs r0, r0, r4
	str r0, [r2, #8]
	cmp r0, #0
	bne _080968AE
_08096976:
	movs r0, #0
	b _08096986
_0809697A:
	movs r0, #0x40
	ldrh r1, [r5, #0xc]
	orrs r0, r1
	strh r0, [r5, #0xc]
_08096982:
	movs r0, #1
	rsbs r0, r0, #0
_08096986:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08096994
sub_08096994: @ 0x08096994
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r1
	movs r7, #0
	movs r1, #0xec
	lsls r1, r1, #1
	adds r6, r0, r1
	cmp r6, #0
	beq _080969CC
_080969A8:
	ldr r5, [r6, #8]
	ldr r4, [r6, #4]
	b _080969C0
_080969AE:
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080969BE
	adds r0, r5, #0
	bl sub_08091954
	orrs r7, r0
_080969BE:
	adds r5, #0x58
_080969C0:
	subs r4, #1
	cmp r4, #0
	bge _080969AE
	ldr r6, [r6]
	cmp r6, #0
	bne _080969A8
_080969CC:
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080969D4
sub_080969D4: @ 0x080969D4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	cmp r4, #0
	beq _08096A08
	ldr r1, _080969FC @ =gUnknown_08CDB388
	adds r0, r4, #0
	bl sub_08093D48
	cmp r0, #0
	beq _08096A04
	ldr r1, _08096A00 @ =gUnknown_08CDB380
	adds r0, r4, #0
	bl sub_08093D48
	cmp r0, #0
	beq _08096A04
	movs r0, #0
	b _08096A0A
	.align 2, 0
_080969FC: .4byte gUnknown_08CDB388
_08096A00: .4byte gUnknown_08CDB380
_08096A04:
	str r6, [r5, #0x30]
	str r4, [r5, #0x34]
_08096A08:
	ldr r0, _08096A0C @ =gUnknown_08CDB388
_08096A0A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08096A0C: .4byte gUnknown_08CDB388

	thumb_func_start sub_08096A10
sub_08096A10: @ 0x08096A10
	ldr r0, _08096A14 @ =gUnknown_08CDB350
	bx lr
	.align 2, 0
_08096A14: .4byte gUnknown_08CDB350

	thumb_func_start sub_08096A18
sub_08096A18: @ 0x08096A18
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r0, _08096A2C @ =0x09F44AAC
	ldr r0, [r0]
	adds r1, r3, #0
	bl sub_080969D4
	pop {pc}
	.align 2, 0
_08096A2C: .4byte 0x09F44AAC

	thumb_func_start sub_08096A30
sub_08096A30: @ 0x08096A30
	push {lr}
	ldr r0, _08096A3C @ =0x09F44AAC
	ldr r0, [r0]
	bl sub_08096A10
	pop {pc}
	.align 2, 0
_08096A3C: .4byte 0x09F44AAC

	thumb_func_start sub_08096A40
sub_08096A40: @ 0x08096A40
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r4, r0, #0
	movs r0, #2
	ldrh r1, [r4, #0xc]
	ands r0, r1
	cmp r0, #0
	bne _08096AD6
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _08096A68
	ldr r0, [r4, #0x54]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	mov r2, sp
	bl sub_080976DC
	cmp r0, #0
	bge _08096A7A
_08096A68:
	movs r7, #0
	movs r6, #0x80
	lsls r6, r6, #3
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r1, #0
	ldrh r2, [r4, #0xc]
	orrs r0, r2
	b _08096ABE
_08096A7A:
	movs r7, #0
	ldr r1, [sp, #4]
	movs r0, #0xf0
	lsls r0, r0, #8
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r1, r0
	bne _08096A8E
	movs r7, #1
_08096A8E:
	movs r6, #0x80
	lsls r6, r6, #3
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	bne _08096AB4
	ldr r1, [r4, #0x28]
	ldr r0, _08096AB0 @ =sub_080975D8
	cmp r1, r0
	bne _08096AB4
	adds r0, r6, #0
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	str r6, [r4, #0x4c]
	b _08096AC0
	.align 2, 0
_08096AB0: .4byte sub_080975D8
_08096AB4:
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	ldrh r1, [r4, #0xc]
	orrs r0, r1
_08096ABE:
	strh r0, [r4, #0xc]
_08096AC0:
	ldr r0, [r4, #0x54]
	adds r1, r6, #0
	bl sub_080938A0
	adds r2, r0, #0
	cmp r2, #0
	bne _08096AE4
	movs r0, #2
	ldrh r2, [r4, #0xc]
	orrs r0, r2
	strh r0, [r4, #0xc]
_08096AD6:
	adds r0, r4, #0
	adds r0, #0x43
	str r0, [r4]
	str r0, [r4, #0x10]
	movs r0, #1
	str r0, [r4, #0x14]
	b _08096B12
_08096AE4:
	ldr r1, [r4, #0x54]
	ldr r0, _08096B18 @ =sub_080966E8
	str r0, [r1, #0x3c]
	movs r0, #0x80
	movs r5, #0
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	str r2, [r4]
	str r2, [r4, #0x10]
	str r6, [r4, #0x14]
	cmp r7, #0
	beq _08096B12
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	bl sub_08093714
	cmp r0, #0
	beq _08096B12
	movs r0, #1
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
_08096B12:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08096B18: .4byte sub_080966E8

	thumb_func_start sub_08096B1C
sub_08096B1C: @ 0x08096B1C
	sub sp, #4
	cmp r1, #0
	bne _08096B24
	mov r1, sp
_08096B24:
	cmp r2, #0
	beq _08096B40
	cmp r3, #0
	bne _08096B32
	movs r0, #1
	rsbs r0, r0, #0
	b _08096B42
_08096B32:
	ldrb r0, [r2]
	str r0, [r1]
	ldrb r0, [r2]
	cmp r0, #0
	beq _08096B40
	movs r0, #1
	b _08096B42
_08096B40:
	movs r0, #0
_08096B42:
	add sp, #4
	bx lr
	.align 2, 0

	thumb_func_start sub_08096B48
sub_08096B48: @ 0x08096B48
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r1, r0, #0
	movs r0, #0xff
	ands r5, r0
	cmp r2, #3
	bls _08096BBC
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08096BBC
	adds r4, r1, #0
	movs r6, #0
	movs r1, #0
_08096B64:
	lsls r0, r6, #8
	adds r6, r0, r5
	adds r1, #1
	cmp r1, #3
	bls _08096B64
	cmp r2, #3
	bls _08096BA2
	ldr r0, _08096BA8 @ =0xFEFEFEFF
	mov ip, r0
	ldr r7, _08096BAC @ =0x80808080
_08096B78:
	ldr r1, [r4]
	eors r1, r6
	mov r3, ip
	adds r0, r1, r3
	bics r0, r1
	ands r0, r7
	cmp r0, #0
	beq _08096B9A
	adds r1, r4, #0
	movs r3, #0
_08096B8C:
	ldrb r0, [r1]
	cmp r0, r5
	beq _08096BB6
	adds r1, #1
	adds r3, #1
	cmp r3, #3
	bls _08096B8C
_08096B9A:
	subs r2, #4
	adds r4, #4
	cmp r2, #3
	bhi _08096B78
_08096BA2:
	adds r1, r4, #0
	b _08096BBC
	.align 2, 0
_08096BA8: .4byte 0xFEFEFEFF
_08096BAC: .4byte 0x80808080
_08096BB0:
	ldrb r0, [r1]
	cmp r0, r5
	bne _08096BBA
_08096BB6:
	adds r0, r1, #0
	b _08096BC6
_08096BBA:
	adds r1, #1
_08096BBC:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _08096BB0
	movs r0, #0
_08096BC6:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08096BC8
sub_08096BC8: @ 0x08096BC8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r3, r1, #0
	cmp r3, r5
	bhs _08096BFA
	adds r0, r3, r2
	cmp r5, r0
	bhs _08096BFA
	adds r3, r0, #0
	adds r4, r5, r2
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _08096C4C
	adds r1, r0, #0
_08096BEA:
	subs r4, #1
	subs r3, #1
	ldrb r0, [r3]
	strb r0, [r4]
	subs r2, #1
	cmp r2, r1
	bne _08096BEA
	b _08096C4C
_08096BFA:
	cmp r2, #0xf
	bls _08096C32
	adds r0, r3, #0
	orrs r0, r4
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08096C32
	adds r1, r3, #0
_08096C0C:
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _08096C0C
	cmp r2, #3
	bls _08096C30
_08096C26:
	ldm r1!, {r0}
	stm r4!, {r0}
	subs r2, #4
	cmp r2, #3
	bhi _08096C26
_08096C30:
	adds r3, r1, #0
_08096C32:
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _08096C4C
	adds r1, r0, #0
_08096C3E:
	ldrb r0, [r3]
	strb r0, [r4]
	adds r3, #1
	adds r4, #1
	subs r2, #1
	cmp r2, r1
	bne _08096C3E
_08096C4C:
	adds r0, r5, #0
	pop {r4, r5, pc}

	thumb_func_start sub_08096C50
sub_08096C50: @ 0x08096C50
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bne _08096C6C
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0x10
	bl sub_08097658
	str r0, [r4, #0x4c]
	cmp r0, #0
	beq _08096C94
_08096C6C:
	ldr r1, [r4, #0x4c]
	lsls r0, r6, #2
	adds r2, r0, r1
	ldr r1, [r2]
	cmp r1, #0
	beq _08096C7E
	ldr r0, [r1]
	str r0, [r2]
	b _08096C9C
_08096C7E:
	movs r5, #1
	lsls r5, r6
	lsls r2, r5, #2
	adds r2, #0x14
	adds r0, r4, #0
	movs r1, #1
	bl sub_08097658
	adds r1, r0, #0
	cmp r1, #0
	bne _08096C98
_08096C94:
	movs r0, #0
	b _08096CA4
_08096C98:
	str r6, [r1, #4]
	str r5, [r1, #8]
_08096C9C:
	movs r0, #0
	str r0, [r1, #0x10]
	str r0, [r1, #0xc]
	adds r0, r1, #0
_08096CA4:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08096CA8
sub_08096CA8: @ 0x08096CA8
	adds r3, r0, #0
	adds r2, r1, #0
	cmp r2, #0
	beq _08096CBE
	ldr r0, [r2, #4]
	ldr r1, [r3, #0x4c]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	str r1, [r2]
	str r2, [r0]
_08096CBE:
	bx lr

	thumb_func_start sub_08096CC0
sub_08096CC0: @ 0x08096CC0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r5, r1, #0
	adds r4, r2, #0
	mov r8, r3
	ldr r6, [r5, #0x10]
	adds r3, r5, #0
	adds r3, #0x14
	movs r7, #0
	ldr r0, _08096D54 @ =0x0000FFFF
	mov ip, r0
_08096CDC:
	ldr r1, [r3]
	adds r0, r1, #0
	mov r2, ip
	ands r0, r2
	adds r2, r0, #0
	muls r2, r4, r2
	add r2, r8
	lsrs r1, r1, #0x10
	adds r0, r1, #0
	muls r0, r4, r0
	lsrs r1, r2, #0x10
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	mov r8, r1
	lsls r0, r0, #0x10
	mov r1, ip
	ands r2, r1
	adds r0, r0, r2
	stm r3!, {r0}
	adds r7, #1
	cmp r7, r6
	blt _08096CDC
	mov r2, r8
	cmp r2, #0
	beq _08096D4A
	ldr r0, [r5, #8]
	cmp r6, r0
	blt _08096D3A
	ldr r1, [r5, #4]
	adds r1, #1
	mov r0, sb
	bl sub_08096C50
	adds r4, r0, #0
	adds r0, #0xc
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, [r5, #0x10]
	lsls r2, r2, #2
	adds r2, #8
	bl sub_08093C60
	mov r0, sb
	adds r1, r5, #0
	bl sub_08096CA8
	adds r5, r4, #0
_08096D3A:
	lsls r1, r6, #2
	adds r0, r5, #0
	adds r0, #0x14
	adds r0, r0, r1
	mov r1, r8
	str r1, [r0]
	adds r6, #1
	str r6, [r5, #0x10]
_08096D4A:
	adds r0, r5, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08096D54: .4byte 0x0000FFFF

	thumb_func_start sub_08096D58
sub_08096D58: @ 0x08096D58
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	mov r8, r3
	mov r0, r8
	adds r0, #8
	movs r1, #9
	bl sub_08091970
	movs r1, #0
	movs r2, #1
	cmp r0, #1
	ble _08096D80
_08096D78:
	lsls r2, r2, #1
	adds r1, #1
	cmp r0, r2
	bgt _08096D78
_08096D80:
	adds r0, r7, #0
	bl sub_08096C50
	adds r1, r0, #0
	ldr r0, [sp, #0x18]
	str r0, [r1, #0x14]
	movs r0, #1
	str r0, [r1, #0x10]
	movs r5, #9
	cmp r6, #9
	ble _08096DB2
	adds r4, #9
_08096D98:
	ldrb r3, [r4]
	subs r3, #0x30
	adds r4, #1
	adds r0, r7, #0
	movs r2, #0xa
	bl sub_08096CC0
	adds r1, r0, #0
	adds r5, #1
	cmp r5, r6
	blt _08096D98
	adds r4, #1
	b _08096DB4
_08096DB2:
	adds r4, #0xa
_08096DB4:
	cmp r5, r8
	bge _08096DD2
	mov r0, r8
	subs r5, r0, r5
_08096DBC:
	ldrb r3, [r4]
	subs r3, #0x30
	adds r4, #1
	adds r0, r7, #0
	movs r2, #0xa
	bl sub_08096CC0
	adds r1, r0, #0
	subs r5, #1
	cmp r5, #0
	bne _08096DBC
_08096DD2:
	adds r0, r1, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08096DDC
sub_08096DDC: @ 0x08096DDC
	adds r1, r0, #0
	movs r2, #0
	ldr r0, _08096E2C @ =0xFFFF0000
	ands r0, r1
	cmp r0, #0
	bne _08096DEC
	movs r2, #0x10
	lsls r1, r1, #0x10
_08096DEC:
	movs r0, #0xff
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _08096DFA
	adds r2, #8
	lsls r1, r1, #8
_08096DFA:
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _08096E08
	adds r2, #4
	lsls r1, r1, #4
_08096E08:
	movs r0, #0xc0
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _08096E16
	adds r2, #2
	lsls r1, r1, #2
_08096E16:
	cmp r1, #0
	blt _08096E30
	adds r2, #1
	movs r0, #0x80
	lsls r0, r0, #0x17
	ands r0, r1
	cmp r0, #0
	bne _08096E30
	movs r0, #0x20
	b _08096E32
	.align 2, 0
_08096E2C: .4byte 0xFFFF0000
_08096E30:
	adds r0, r2, #0
_08096E32:
	bx lr

	thumb_func_start sub_08096E34
sub_08096E34: @ 0x08096E34
	adds r3, r0, #0
	ldr r1, [r3]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08096E64
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08096E4C
	movs r0, #0
	b _08096EB4
_08096E4C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08096E5C
	lsrs r0, r1, #1
	str r0, [r3]
	movs r0, #1
	b _08096EB4
_08096E5C:
	lsrs r0, r1, #2
	str r0, [r3]
	movs r0, #2
	b _08096EB4
_08096E64:
	movs r2, #0
	ldr r0, _08096EAC @ =0x0000FFFF
	ands r0, r1
	cmp r0, #0
	bne _08096E72
	movs r2, #0x10
	lsrs r1, r1, #0x10
_08096E72:
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	bne _08096E7E
	adds r2, #8
	lsrs r1, r1, #8
_08096E7E:
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08096E8A
	adds r2, #4
	lsrs r1, r1, #4
_08096E8A:
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08096E96
	adds r2, #2
	lsrs r1, r1, #2
_08096E96:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08096EB0
	adds r2, #1
	lsrs r1, r1, #1
	cmp r1, #0
	bne _08096EB0
	movs r0, #0x20
	b _08096EB4
	.align 2, 0
_08096EAC: .4byte 0x0000FFFF
_08096EB0:
	str r1, [r3]
	adds r0, r2, #0
_08096EB4:
	bx lr
	.align 2, 0

	thumb_func_start sub_08096EB8
sub_08096EB8: @ 0x08096EB8
	push {r4, lr}
	adds r4, r1, #0
	movs r1, #1
	bl sub_08096C50
	str r4, [r0, #0x14]
	movs r1, #1
	str r1, [r0, #0x10]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08096ECC
sub_08096ECC: @ 0x08096ECC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r3, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	cmp r1, r0
	bge _08096EEC
	str r4, [sp]
	adds r4, r5, #0
	ldr r5, [sp]
_08096EEC:
	ldr r1, [r4, #4]
	ldr r6, [r4, #0x10]
	ldr r0, [r5, #0x10]
	mov r8, r0
	mov r2, r8
	adds r2, r6, r2
	str r2, [sp, #4]
	ldr r0, [r4, #8]
	cmp r2, r0
	ble _08096F02
	adds r1, #1
_08096F02:
	adds r0, r3, #0
	bl sub_08096C50
	str r0, [sp]
	adds r7, r0, #0
	adds r7, #0x14
	ldr r1, [sp, #4]
	lsls r0, r1, #2
	adds r2, r7, r0
	str r2, [sp, #8]
	str r0, [sp, #0x18]
	adds r1, r4, #0
	adds r1, #0x14
	lsls r3, r6, #2
	adds r2, r5, #0
	adds r2, #0x14
	mov r5, r8
	lsls r4, r5, #2
	ldr r0, [sp, #8]
	cmp r7, r0
	bhs _08096F36
	movs r0, #0
_08096F2E:
	stm r7!, {r0}
	ldr r5, [sp, #8]
	cmp r7, r5
	blo _08096F2E
_08096F36:
	str r1, [sp, #8]
	adds r3, r1, r3
	str r3, [sp, #0xc]
	mov r8, r2
	add r4, r8
	str r4, [sp, #0x10]
	ldr r0, [sp]
	adds r0, #0x14
	mov sb, r0
	mov r1, sb
	str r1, [sp, #0x20]
	cmp r8, r4
	bhs _08096FFE
_08096F50:
	mov r2, r8
	ldm r2!, {r6}
	str r2, [sp, #0x14]
	ldr r0, _0809700C @ =0x0000FFFF
	ands r6, r0
	mov r4, sb
	adds r4, #4
	str r4, [sp, #0x1c]
	cmp r6, #0
	beq _08096FA8
	ldr r7, [sp, #8]
	mov r5, sb
	movs r1, #0
	mov ip, r1
	mov sl, r0
_08096F6E:
	ldm r7!, {r3}
	adds r0, r3, #0
	mov r2, sl
	ands r0, r2
	adds r1, r0, #0
	muls r1, r6, r1
	ldr r2, [r5]
	adds r0, r2, #0
	mov r4, sl
	ands r0, r4
	adds r1, r1, r0
	mov r0, ip
	adds r4, r1, r0
	lsrs r1, r4, #0x10
	lsrs r3, r3, #0x10
	adds r0, r3, #0
	muls r0, r6, r0
	lsrs r2, r2, #0x10
	adds r0, r0, r2
	adds r2, r0, r1
	lsrs r0, r2, #0x10
	mov ip, r0
	strh r2, [r5]
	strh r4, [r5, #2]
	adds r5, #4
	ldr r1, [sp, #0xc]
	cmp r7, r1
	blo _08096F6E
	str r0, [r5]
_08096FA8:
	mov r2, r8
	ldrh r6, [r2, #2]
	cmp r6, #0
	beq _08096FF0
	ldr r7, [sp, #8]
	mov r5, sb
	movs r4, #0
	mov ip, r4
	ldr r2, [r5]
	ldr r3, _0809700C @ =0x0000FFFF
_08096FBC:
	ldm r7!, {r1}
	adds r0, r1, #0
	ands r0, r3
	muls r0, r6, r0
	ldrh r4, [r5, #2]
	adds r4, r4, r0
	mov r8, r4
	add r4, ip
	lsrs r0, r4, #0x10
	mov ip, r0
	strh r4, [r5]
	strh r2, [r5, #2]
	adds r5, #4
	lsrs r1, r1, #0x10
	muls r1, r6, r1
	ldr r0, [r5]
	ands r0, r3
	adds r1, r1, r0
	mov r4, ip
	adds r2, r1, r4
	lsrs r0, r2, #0x10
	mov ip, r0
	ldr r1, [sp, #0xc]
	cmp r7, r1
	blo _08096FBC
	str r2, [r5]
_08096FF0:
	ldr r2, [sp, #0x14]
	mov r8, r2
	ldr r4, [sp, #0x1c]
	mov sb, r4
	ldr r5, [sp, #0x10]
	cmp r8, r5
	blo _08096F50
_08096FFE:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x18]
	adds r5, r0, r1
	ldr r2, [sp, #4]
	cmp r2, #0
	ble _08097022
	b _0809701A
	.align 2, 0
_0809700C: .4byte 0x0000FFFF
_08097010:
	ldr r4, [sp, #4]
	subs r4, #1
	str r4, [sp, #4]
	cmp r4, #0
	ble _08097022
_0809701A:
	subs r5, #4
	ldr r0, [r5]
	cmp r0, #0
	beq _08097010
_08097022:
	ldr r5, [sp, #4]
	ldr r0, [sp]
	str r5, [r0, #0x10]
	ldr r0, [sp]
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08097038
sub_08097038: @ 0x08097038
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r1, #0
	adds r6, r2, #0
	movs r1, #3
	ands r1, r6
	cmp r1, #0
	beq _08097062
	ldr r0, _08097084 @ =gUnknown_08CDB38C
	subs r1, #1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	mov r0, r8
	adds r1, r7, #0
	movs r3, #0
	bl sub_08096CC0
	adds r7, r0, #0
_08097062:
	asrs r6, r6, #2
	cmp r6, #0
	beq _080970C8
	mov r0, r8
	ldr r5, [r0, #0x48]
	adds r4, r5, #0
	cmp r5, #0
	bne _080970A4
	ldr r1, _08097088 @ =0x00000271
	bl sub_08096EB8
	mov r1, r8
	str r0, [r1, #0x48]
	adds r5, r0, #0
	str r4, [r5]
	b _080970A4
	.align 2, 0
_08097084: .4byte gUnknown_08CDB38C
_08097088: .4byte 0x00000271
_0809708C:
	ldr r0, [r5]
	adds r4, r0, #0
	cmp r0, #0
	bne _080970A2
	mov r0, r8
	adds r1, r5, #0
	adds r2, r5, #0
	bl sub_08096ECC
	str r0, [r5]
	str r4, [r0]
_080970A2:
	adds r5, r0, #0
_080970A4:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _080970C2
	mov r0, r8
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_08096ECC
	adds r4, r0, #0
	mov r0, r8
	adds r1, r7, #0
	bl sub_08096CA8
	adds r7, r4, #0
_080970C2:
	asrs r6, r6, #1
	cmp r6, #0
	bne _0809708C
_080970C8:
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080970D0
sub_080970D0: @ 0x080970D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	mov r8, r1
	adds r5, r2, #0
	asrs r6, r5, #5
	ldr r1, [r1, #4]
	mov r2, r8
	ldr r0, [r2, #0x10]
	adds r0, r6, r0
	adds r7, r0, #1
	ldr r2, [r2, #8]
	cmp r7, r2
	ble _080970FA
_080970F2:
	adds r1, #1
	lsls r2, r2, #1
	cmp r7, r2
	bgt _080970F2
_080970FA:
	mov r0, sl
	bl sub_08096C50
	mov sb, r0
	mov r4, sb
	adds r4, #0x14
	mov r0, r8
	adds r0, #0x14
	cmp r6, #0
	ble _0809711A
	movs r1, #0
	adds r2, r6, #0
_08097112:
	stm r4!, {r1}
	subs r2, #1
	cmp r2, #0
	bne _08097112
_0809711A:
	adds r3, r0, #0
	mov r1, r8
	ldr r0, [r1, #0x10]
	lsls r0, r0, #2
	adds r6, r3, r0
	movs r0, #0x1f
	ands r5, r0
	cmp r5, #0
	beq _0809714C
	movs r0, #0x20
	subs r1, r0, r5
	movs r2, #0
_08097132:
	ldr r0, [r3]
	lsls r0, r5
	orrs r0, r2
	stm r4!, {r0}
	ldm r3!, {r2}
	lsrs r2, r1
	cmp r3, r6
	blo _08097132
	str r2, [r4]
	cmp r2, #0
	beq _08097154
	adds r7, #1
	b _08097154
_0809714C:
	ldm r3!, {r0}
	stm r4!, {r0}
	cmp r3, r6
	blo _0809714C
_08097154:
	subs r0, r7, #1
	mov r2, sb
	str r0, [r2, #0x10]
	mov r0, sl
	mov r1, r8
	bl sub_08096CA8
	mov r0, sb
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08097170
sub_08097170: @ 0x08097170
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r1, #0
	ldr r0, [r2, #0x10]
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	cmp r0, #0
	bne _080971AC
	adds r4, r2, #0
	adds r4, #0x14
	lsls r1, r1, #2
	adds r3, r4, r1
	adds r0, r5, #0
	adds r0, #0x14
	adds r1, r0, r1
_0809718E:
	subs r3, #4
	subs r1, #4
	ldr r0, [r3]
	ldr r2, [r1]
	cmp r0, r2
	beq _080971A6
	movs r1, #1
	cmp r0, r2
	bhs _080971A2
	subs r1, #2
_080971A2:
	adds r0, r1, #0
	b _080971AC
_080971A6:
	cmp r3, r4
	bhi _0809718E
	movs r0, #0
_080971AC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080971B0
sub_080971B0: @ 0x080971B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	mov r8, r2
	adds r0, r5, #0
	mov r1, r8
	bl sub_08097170
	adds r4, r0, #0
	cmp r4, #0
	bne _080971E2
	adds r0, r6, #0
	movs r1, #0
	bl sub_08096C50
	adds r7, r0, #0
	movs r0, #1
	str r0, [r7, #0x10]
	str r4, [r7, #0x14]
	b _08097292
_080971E2:
	cmp r4, #0
	bge _080971F0
	adds r7, r5, #0
	mov r5, r8
	mov r8, r7
	movs r4, #1
	b _080971F2
_080971F0:
	movs r4, #0
_080971F2:
	ldr r1, [r5, #4]
	adds r0, r6, #0
	bl sub_08096C50
	adds r7, r0, #0
	str r4, [r7, #0xc]
	ldr r0, [r5, #0x10]
	mov sb, r0
	adds r6, r5, #0
	adds r6, #0x14
	lsls r0, r0, #2
	adds r0, r0, r6
	mov sl, r0
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r3, #0x14
	add r3, r8
	mov ip, r3
	lsls r0, r0, #2
	add r0, ip
	str r0, [sp]
	adds r4, r7, #0
	adds r4, #0x14
	movs r5, #0
	ldr r0, _0809727C @ =0x0000FFFF
	mov r8, r0
_08097226:
	ldm r6!, {r1}
	str r1, [sp, #4]
	mov r3, r8
	ands r1, r3
	mov r0, ip
	adds r0, #4
	mov ip, r0
	subs r0, #4
	ldm r0!, {r2}
	adds r0, r2, #0
	ands r0, r3
	subs r1, r1, r0
	adds r0, r1, r5
	asrs r5, r0, #0x10
	ldr r1, [sp, #4]
	lsrs r3, r1, #0x10
	lsrs r2, r2, #0x10
	subs r3, r3, r2
	adds r1, r3, r5
	asrs r5, r1, #0x10
	strh r1, [r4]
	strh r0, [r4, #2]
	adds r4, #4
	ldr r3, [sp]
	cmp ip, r3
	blo _08097226
	cmp r6, sl
	bhs _08097286
	ldr r2, _0809727C @ =0x0000FFFF
_08097260:
	ldm r6!, {r1}
	adds r0, r1, #0
	ands r0, r2
	adds r0, r0, r5
	asrs r5, r0, #0x10
	lsrs r1, r1, #0x10
	adds r1, r1, r5
	asrs r5, r1, #0x10
	strh r1, [r4]
	strh r0, [r4, #2]
	adds r4, #4
	cmp r6, sl
	blo _08097260
	b _08097286
	.align 2, 0
_0809727C: .4byte 0x0000FFFF
_08097280:
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
_08097286:
	subs r4, #4
	ldr r0, [r4]
	cmp r0, #0
	beq _08097280
	mov r1, sb
	str r1, [r7, #0x10]
_08097292:
	adds r0, r7, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080972A0
sub_080972A0: @ 0x080972A0
	push {r4, lr}
	ldr r2, _080972B4 @ =0x7FF00000
	ands r2, r0
	ldr r0, _080972B8 @ =0xFCC00000
	adds r2, r2, r0
	cmp r2, #0
	ble _080972BC
	adds r3, r2, #0
	movs r4, #0
	b _080972E6
	.align 2, 0
_080972B4: .4byte 0x7FF00000
_080972B8: .4byte 0xFCC00000
_080972BC:
	rsbs r0, r2, #0
	asrs r2, r0, #0x14
	cmp r2, #0x13
	bgt _080972D0
	movs r0, #0x80
	lsls r0, r0, #0xc
	adds r3, r0, #0
	asrs r3, r2
	movs r4, #0
	b _080972E6
_080972D0:
	movs r3, #0
	subs r2, #0x14
	cmp r2, #0x1e
	bgt _080972E2
	movs r0, #0x1f
	subs r0, r0, r2
	movs r1, #1
	lsls r1, r0
	b _080972E4
_080972E2:
	movs r1, #1
_080972E4:
	adds r4, r1, #0
_080972E6:
	adds r1, r4, #0
	adds r0, r3, #0
	pop {r4, pc}

	thumb_func_start sub_080972EC
sub_080972EC: @ 0x080972EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r1, #0
	movs r1, #0x14
	adds r1, r1, r0
	mov r8, r1
	ldr r0, [r0, #0x10]
	lsls r0, r0, #2
	adds r5, r1, r0
	subs r5, #4
	ldr r2, [r5]
	adds r0, r2, #0
	str r2, [sp]
	bl sub_08096DDC
	adds r3, r0, #0
	movs r0, #0x20
	subs r0, r0, r3
	str r0, [r4]
	ldr r2, [sp]
	cmp r3, #0xa
	bgt _0809734C
	movs r0, #0xb
	subs r0, r0, r3
	adds r1, r2, #0
	lsrs r1, r0
	ldr r0, _08097334 @ =0x3FF00000
	adds r6, r1, #0
	orrs r6, r0
	cmp r5, r8
	bls _08097338
	subs r5, #4
	ldr r1, [r5]
	b _0809733A
	.align 2, 0
_08097334: .4byte 0x3FF00000
_08097338:
	movs r1, #0
_0809733A:
	adds r0, r3, #0
	adds r0, #0x15
	lsls r2, r0
	movs r0, #0xb
	subs r0, r0, r3
	lsrs r1, r0
	adds r7, r2, #0
	orrs r7, r1
	b _08097398
_0809734C:
	cmp r5, r8
	bls _08097356
	subs r5, #4
	ldr r4, [r5]
	b _08097358
_08097356:
	movs r4, #0
_08097358:
	subs r3, #0xb
	cmp r3, #0
	beq _08097390
	lsls r2, r3
	movs r0, #0x20
	subs r0, r0, r3
	adds r1, r4, #0
	lsrs r1, r0
	ldr r0, _0809737C @ =0x3FF00000
	orrs r1, r0
	adds r6, r2, #0
	orrs r6, r1
	cmp r5, r8
	bls _08097380
	subs r5, #4
	ldr r2, [r5]
	b _08097382
	.align 2, 0
_0809737C: .4byte 0x3FF00000
_08097380:
	movs r2, #0
_08097382:
	lsls r4, r3
	movs r0, #0x20
	subs r0, r0, r3
	lsrs r2, r0
	adds r7, r4, #0
	orrs r7, r2
	b _08097398
_08097390:
	ldr r0, _080973A4 @ =0x3FF00000
	adds r6, r2, #0
	orrs r6, r0
	adds r7, r4, #0
_08097398:
	adds r1, r7, #0
	adds r0, r6, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080973A4: .4byte 0x3FF00000

	thumb_func_start sub_080973A8
sub_080973A8: @ 0x080973A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r3
	ldr r3, [sp, #0x28]
	mov sl, r3
	adds r5, r2, #0
	adds r4, r1, #0
	movs r1, #1
	bl sub_08096C50
	adds r6, r0, #0
	movs r0, #0x14
	adds r0, r0, r6
	mov r8, r0
	ldr r2, _08097410 @ =0x000FFFFF
	adds r1, r4, #0
	ands r2, r1
	str r2, [sp, #4]
	ldr r0, _08097414 @ =0x7FFFFFFF
	ands r4, r0
	lsrs r7, r4, #0x14
	cmp r7, #0
	beq _080973E6
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r0, r2
	str r0, [sp, #4]
_080973E6:
	str r5, [sp]
	cmp r5, #0
	beq _08097430
	mov r0, sp
	bl sub_08096E34
	adds r2, r0, #0
	cmp r2, #0
	beq _08097418
	movs r0, #0x20
	subs r0, r0, r2
	ldr r1, [sp, #4]
	lsls r1, r0
	ldr r0, [sp]
	orrs r0, r1
	str r0, [r6, #0x14]
	ldr r0, [sp, #4]
	lsrs r0, r2
	str r0, [sp, #4]
	b _0809741C
	.align 2, 0
_08097410: .4byte 0x000FFFFF
_08097414: .4byte 0x7FFFFFFF
_08097418:
	ldr r0, [sp]
	str r0, [r6, #0x14]
_0809741C:
	ldr r0, [sp, #4]
	mov r1, r8
	str r0, [r1, #4]
	movs r1, #1
	cmp r0, #0
	beq _0809742A
	movs r1, #2
_0809742A:
	str r1, [r6, #0x10]
	adds r4, r1, #0
	b _08097444
_08097430:
	add r0, sp, #4
	bl sub_08096E34
	adds r2, r0, #0
	ldr r0, [sp, #4]
	str r0, [r6, #0x14]
	movs r0, #1
	str r0, [r6, #0x10]
	movs r4, #1
	adds r2, #0x20
_08097444:
	cmp r7, #0
	beq _08097460
	ldr r3, _0809745C @ =0xFFFFFBCD
	adds r0, r2, r3
	adds r0, r7, r0
	mov r1, sb
	str r0, [r1]
	movs r0, #0x35
	subs r0, r0, r2
	mov r3, sl
	str r0, [r3]
	b _0809747C
	.align 2, 0
_0809745C: .4byte 0xFFFFFBCD
_08097460:
	ldr r1, _0809748C @ =0xFFFFFBCE
	adds r0, r2, r1
	mov r3, sb
	str r0, [r3]
	lsls r0, r4, #2
	add r0, r8
	subs r0, #4
	ldr r0, [r0]
	bl sub_08096DDC
	lsls r1, r4, #5
	subs r1, r1, r0
	mov r0, sl
	str r1, [r0]
_0809747C:
	adds r0, r6, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809748C: .4byte 0xFFFFFBCE

	thumb_func_start sub_08097490
sub_08097490: @ 0x08097490
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	mov r1, sp
	bl sub_080972EC
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r1, sp, #4
	adds r0, r5, #0
	bl sub_080972EC
	adds r7, r1, #0
	adds r6, r0, #0
	ldr r2, [sp]
	ldr r0, [sp, #4]
	subs r2, r2, r0
	ldr r0, [r4, #0x10]
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	lsls r0, r0, #5
	adds r0, r2, r0
	cmp r0, #0
	ble _080974CC
	lsls r0, r0, #0x14
	ldr r1, [sp, #8]
	adds r0, r1, r0
	str r0, [sp, #8]
	b _080974D0
_080974CC:
	lsls r0, r0, #0x14
	subs r6, r6, r0
_080974D0:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	adds r3, r7, #0
	adds r2, r6, #0
	bl sub_080923B4
	add sp, #0x10
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080974E0
sub_080974E0: @ 0x080974E0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080974FC @ =0x00000000
	ldr r0, _080974F8 @ =0x3FF00000
	cmp r4, #0x17
	bgt _08097504
	ldr r0, _08097500 @ =gUnknown_08CDB398
	lsls r1, r4, #3
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r1, [r1, #4]
	b _08097516
	.align 2, 0
_080974F8: .4byte 0x3FF00000
_080974FC: .4byte 0x00000000
_08097500: .4byte gUnknown_08CDB398
_08097504:
	cmp r4, #0
	ble _08097516
_08097508:
	ldr r3, _0809751C @ =0x00000000
	ldr r2, _08097518 @ =0x40240000
	bl sub_0809210C
	subs r4, #1
	cmp r4, #0
	bgt _08097508
_08097516:
	pop {r4, pc}
	.align 2, 0
_08097518: .4byte 0x40240000
_0809751C: .4byte 0x00000000

	thumb_func_start sub_08097520
sub_08097520: @ 0x08097520
	ldr r3, _0809753C @ =0x7FFFFFFF
	ands r3, r0
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	orrs r3, r2
	ldr r0, _08097540 @ =0x7FF00000
	subs r3, r0, r3
	rsbs r0, r3, #0
	orrs r3, r0
	lsrs r3, r3, #0x1f
	movs r0, #1
	subs r0, r0, r3
	bx lr
	.align 2, 0
_0809753C: .4byte 0x7FFFFFFF
_08097540: .4byte 0x7FF00000

	thumb_func_start sub_08097544
sub_08097544: @ 0x08097544
	ldr r3, _0809755C @ =0x7FFFFFFF
	ands r3, r0
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	orrs r3, r2
	ldr r0, _08097560 @ =0x7FF00000
	subs r3, r0, r3
	lsrs r3, r3, #0x1f
	adds r0, r3, #0
	bx lr
	.align 2, 0
_0809755C: .4byte 0x7FFFFFFF
_08097560: .4byte 0x7FF00000

	thumb_func_start sub_08097564
sub_08097564: @ 0x08097564
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r0, [r5, #0x54]
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	adds r2, r4, #0
	bl sub_08097738
	adds r1, r0, #0
	cmp r1, #0
	blt _08097586
	ldr r0, [r5, #0x50]
	adds r0, r0, r1
	str r0, [r5, #0x50]
	b _0809758E
_08097586:
	ldr r0, _08097594 @ =0xFFFFEFFF
	ldrh r2, [r5, #0xc]
	ands r0, r2
	strh r0, [r5, #0xc]
_0809758E:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_08097594: .4byte 0xFFFFEFFF

	thumb_func_start sub_08097598
sub_08097598: @ 0x08097598
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r1, [r4, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _080975BA
	ldr r0, [r4, #0x54]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	movs r2, #0
	movs r3, #2
	bl sub_08097708
_080975BA:
	ldr r0, _080975D4 @ =0xFFFFEFFF
	ldrh r1, [r4, #0xc]
	ands r0, r1
	strh r0, [r4, #0xc]
	ldr r0, [r4, #0x54]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08097628
	pop {r4, r5, r6, pc}
	.align 2, 0
_080975D4: .4byte 0xFFFFEFFF

	thumb_func_start sub_080975D8
sub_080975D8: @ 0x080975D8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r0, [r5, #0x54]
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	adds r2, r4, #0
	bl sub_08097708
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08097604
	ldr r0, _08097600 @ =0xFFFFEFFF
	ldrh r2, [r5, #0xc]
	ands r0, r2
	strh r0, [r5, #0xc]
	b _08097612
	.align 2, 0
_08097600: .4byte 0xFFFFEFFF
_08097604:
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ldrh r2, [r5, #0xc]
	orrs r0, r2
	strh r0, [r5, #0xc]
	str r1, [r5, #0x50]
_08097612:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08097618
sub_08097618: @ 0x08097618
	push {lr}
	ldr r2, [r0, #0x54]
	movs r3, #0xe
	ldrsh r1, [r0, r3]
	adds r0, r2, #0
	bl sub_080976B0
	pop {pc}

	thumb_func_start sub_08097628
sub_08097628: @ 0x08097628
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _08097654 @ =gUnknown_02015E34
	movs r3, #0
	str r3, [r4]
	bl sub_08093FE0
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0809764E
	ldr r0, [r4]
	cmp r0, #0
	beq _0809764E
	str r0, [r5]
_0809764E:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_08097654: .4byte gUnknown_02015E34

	thumb_func_start sub_08097658
sub_08097658: @ 0x08097658
	push {r4, lr}
	muls r1, r2, r1
	bl sub_080938A0
	adds r4, r0, #0
	cmp r4, #0
	bne _0809766A
	movs r0, #0
	b _080976AE
_0809766A:
	adds r0, r4, #0
	subs r0, #8
	ldr r0, [r0, #4]
	movs r1, #4
	rsbs r1, r1, #0
	ands r0, r1
	subs r2, r0, #4
	cmp r2, #0x24
	bhi _080976A4
	adds r1, r4, #0
	cmp r2, #0x13
	bls _0809769A
	movs r0, #0
	stm r1!, {r0}
	str r0, [r4, #4]
	adds r1, #4
	cmp r2, #0x1b
	bls _0809769A
	stm r1!, {r0}
	stm r1!, {r0}
	cmp r2, #0x23
	bls _0809769A
	stm r1!, {r0}
	stm r1!, {r0}
_0809769A:
	movs r0, #0
	stm r1!, {r0}
	stm r1!, {r0}
	str r0, [r1]
	b _080976AC
_080976A4:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08093CC0
_080976AC:
	adds r0, r4, #0
_080976AE:
	pop {r4, pc}

	thumb_func_start sub_080976B0
sub_080976B0: @ 0x080976B0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	ldr r4, _080976D8 @ =gUnknown_02015E34
	movs r1, #0
	str r1, [r4]
	bl sub_08094114
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080976D2
	ldr r0, [r4]
	cmp r0, #0
	beq _080976D2
	str r0, [r5]
_080976D2:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080976D8: .4byte gUnknown_02015E34

	thumb_func_start sub_080976DC
sub_080976DC: @ 0x080976DC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	ldr r4, _08097704 @ =gUnknown_02015E34
	movs r2, #0
	str r2, [r4]
	bl sub_080941A0
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08097700
	ldr r0, [r4]
	cmp r0, #0
	beq _08097700
	str r0, [r5]
_08097700:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_08097704: .4byte gUnknown_02015E34

	thumb_func_start sub_08097708
sub_08097708: @ 0x08097708
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _08097734 @ =gUnknown_02015E34
	movs r3, #0
	str r3, [r4]
	bl sub_08093FB0
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0809772E
	ldr r0, [r4]
	cmp r0, #0
	beq _0809772E
	str r0, [r5]
_0809772E:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_08097734: .4byte gUnknown_02015E34

	thumb_func_start sub_08097738
sub_08097738: @ 0x08097738
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _08097764 @ =gUnknown_02015E34
	movs r3, #0
	str r3, [r4]
	bl sub_08093EE4
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0809775E
	ldr r0, [r4]
	cmp r0, #0
	beq _0809775E
	str r0, [r5]
_0809775E:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_08097764: .4byte gUnknown_02015E34

	thumb_func_start sub_08097768
sub_08097768: @ 0x08097768
	push {lr}
	adds r2, r0, #0
	ldr r0, _08097784 @ =0x09F44F08
	str r0, [r2, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0809777E
	adds r0, r2, #0
	bl __builtin_delete
_0809777E:
	pop {r0}
	bx r0
	.align 2, 0
_08097784: .4byte 0x09F44F08

	thumb_func_start sub_08097788
sub_08097788: @ 0x08097788
	push {lr}
	movs r0, #0x24
	bl sub_0805D3B4
	bl sub_0805D494
	pop {r1}
	bx r1

	thumb_func_start sub_08097798
sub_08097798: @ 0x08097798
	ldr r0, _0809779C @ =gUnknown_080F24D0
	bx lr
	.align 2, 0
_0809779C: .4byte gUnknown_080F24D0

	thumb_func_start sub_080977A0
sub_080977A0: @ 0x080977A0
	push {lr}
	ldr r2, _080977B0 @ =0x09F44FF0
	str r2, [r0, #0x1c]
	bl sub_080689D4
	pop {r0}
	bx r0
	.align 2, 0
_080977B0: .4byte 0x09F44FF0

	thumb_func_start sub_080977B4
sub_080977B4: @ 0x080977B4
	push {lr}
	movs r0, #0x80
	bl sub_0805D3B4
	bl sub_0805EE80
	pop {r1}
	bx r1

	thumb_func_start sub_080977C4
sub_080977C4: @ 0x080977C4
	ldr r0, _080977C8 @ =gUnknown_080F2B58
	bx lr
	.align 2, 0
_080977C8: .4byte gUnknown_080F2B58

	thumb_func_start sub_080977CC
sub_080977CC: @ 0x080977CC
	push {r4, lr}
	movs r0, #0x20
	bl sub_0805D3B4
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080977E8 @ =0x09F452B0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080977E8: .4byte 0x09F452B0

	thumb_func_start sub_080977EC
sub_080977EC: @ 0x080977EC
	ldr r0, _080977F0 @ =gUnknown_080F29E8
	bx lr
	.align 2, 0
_080977F0: .4byte gUnknown_080F29E8

	thumb_func_start sub_080977F4
sub_080977F4: @ 0x080977F4
	push {lr}
	ldr r2, _08097804 @ =0x09F44FF0
	str r2, [r0, #0x1c]
	bl sub_080689D4
	pop {r0}
	bx r0
	.align 2, 0
_08097804: .4byte 0x09F44FF0

	thumb_func_start sub_08097808
sub_08097808: @ 0x08097808
	push {r4, lr}
	movs r0, #0x20
	bl sub_0805D3B4
	adds r4, r0, #0
	bl __4Base
	ldr r0, _08097824 @ =0x09F45330
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08097824: .4byte 0x09F45330

	thumb_func_start sub_08097828
sub_08097828: @ 0x08097828
	ldr r0, _0809782C @ =gUnknown_080F29C4
	bx lr
	.align 2, 0
_0809782C: .4byte gUnknown_080F29C4

	thumb_func_start sub_08097830
sub_08097830: @ 0x08097830
	push {lr}
	ldr r2, _08097840 @ =0x09F44FF0
	str r2, [r0, #0x1c]
	bl sub_080689D4
	pop {r0}
	bx r0
	.align 2, 0
_08097840: .4byte 0x09F44FF0

	thumb_func_start sub_08097844
sub_08097844: @ 0x08097844
	push {r4, lr}
	movs r0, #0x20
	bl sub_0805D3B4
	adds r4, r0, #0
	bl __4Base
	ldr r0, _08097860 @ =0x09F453B0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08097860: .4byte 0x09F453B0

	thumb_func_start sub_08097864
sub_08097864: @ 0x08097864
	ldr r0, _08097868 @ =gUnknown_080F29A0
	bx lr
	.align 2, 0
_08097868: .4byte gUnknown_080F29A0

	thumb_func_start sub_0809786C
sub_0809786C: @ 0x0809786C
	push {lr}
	ldr r2, _0809787C @ =0x09F44FF0
	str r2, [r0, #0x1c]
	bl sub_080689D4
	pop {r0}
	bx r0
	.align 2, 0
_0809787C: .4byte 0x09F44FF0

	thumb_func_start sub_08097880
sub_08097880: @ 0x08097880
	push {lr}
	movs r0, #0x24
	bl sub_0805D3B4
	bl sub_0805EEC0
	pop {r1}
	bx r1

	thumb_func_start sub_08097890
sub_08097890: @ 0x08097890
	ldr r0, _08097894 @ =gUnknown_080F2984
	bx lr
	.align 2, 0
_08097894: .4byte gUnknown_080F2984

	thumb_func_start sub_08097898
sub_08097898: @ 0x08097898
	push {lr}
	ldr r2, _080978A8 @ =0x09F44FF0
	str r2, [r0, #0x1c]
	bl sub_080689D4
	pop {r0}
	bx r0
	.align 2, 0
_080978A8: .4byte 0x09F44FF0

	thumb_func_start sub_080978AC
sub_080978AC: @ 0x080978AC
	push {lr}
	movs r0, #0x24
	bl sub_0805D3B4
	bl sub_0805EEF8
	pop {r1}
	bx r1

	thumb_func_start sub_080978BC
sub_080978BC: @ 0x080978BC
	ldr r0, _080978C0 @ =gUnknown_080F2968
	bx lr
	.align 2, 0
_080978C0: .4byte gUnknown_080F2968

	thumb_func_start sub_080978C4
sub_080978C4: @ 0x080978C4
	push {lr}
	ldr r2, _080978D4 @ =0x09F44FF0
	str r2, [r0, #0x1c]
	bl sub_080689D4
	pop {r0}
	bx r0
	.align 2, 0
_080978D4: .4byte 0x09F44FF0

	thumb_func_start sub_080978D8
sub_080978D8: @ 0x080978D8
	push {lr}
	movs r0, #0x24
	bl sub_0805D3B4
	bl sub_0805EF34
	pop {r1}
	bx r1

	thumb_func_start sub_080978E8
sub_080978E8: @ 0x080978E8
	ldr r0, _080978EC @ =gUnknown_080F294C
	bx lr
	.align 2, 0
_080978EC: .4byte gUnknown_080F294C

	thumb_func_start sub_080978F0
sub_080978F0: @ 0x080978F0
	push {lr}
	ldr r2, _08097900 @ =0x09F44FF0
	str r2, [r0, #0x1c]
	bl sub_080689D4
	pop {r0}
	bx r0
	.align 2, 0
_08097900: .4byte 0x09F44FF0

	thumb_func_start sub_08097904
sub_08097904: @ 0x08097904
	push {lr}
	movs r0, #0x24
	bl sub_0805D3B4
	bl sub_0805EF74
	pop {r1}
	bx r1

	thumb_func_start sub_08097914
sub_08097914: @ 0x08097914
	ldr r0, _08097918 @ =gUnknown_080F2934
	bx lr
	.align 2, 0
_08097918: .4byte gUnknown_080F2934

	thumb_func_start sub_0809791C
sub_0809791C: @ 0x0809791C
	push {lr}
	ldr r2, _0809792C @ =0x09F44FF0
	str r2, [r0, #0x1c]
	bl sub_080689D4
	pop {r0}
	bx r0
	.align 2, 0
_0809792C: .4byte 0x09F44FF0

	thumb_func_start sub_08097930
sub_08097930: @ 0x08097930
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0809794C @ =0x00000F98
	bl sub_0805D3B4
	adds r1, r4, #0
	bl sub_08097A28
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809794C: .4byte 0x00000F98

	thumb_func_start sub_08097950
sub_08097950: @ 0x08097950
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0809796C @ =0x00000F9C
	bl sub_0805D3B4
	adds r1, r4, #0
	bl sub_08097A94
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809796C: .4byte 0x00000F9C

	thumb_func_start sub_08097970
sub_08097970: @ 0x08097970
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0809798C @ =0x00000F98
	bl sub_0805D3B4
	adds r1, r4, #0
	bl sub_08097B5C
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809798C: .4byte 0x00000F98

	thumb_func_start sub_08097990
sub_08097990: @ 0x08097990
	push {lr}
	adds r2, r0, #0
	ldr r0, [r1, #0x20]
	ldr r3, _080979CC @ =0x00000F94
	adds r1, r2, r3
	ldr r1, [r1]
	cmp r0, r1
	bne _080979C6
	ldr r1, [r2, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xc0
	bl sub_0809193C
_080979C6:
	pop {r0}
	bx r0
	.align 2, 0
_080979CC: .4byte 0x00000F94

	thumb_func_start sub_080979D0
sub_080979D0: @ 0x080979D0
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _080979EC @ =0x00000F98
	bl sub_0805D3B4
	adds r1, r4, #0
	bl sub_08097BC8
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080979EC: .4byte 0x00000F98

	thumb_func_start sub_080979F0
sub_080979F0: @ 0x080979F0
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0xf9
	lsls r0, r0, #4
	bl sub_0805D3B4
	adds r1, r4, #0
	bl sub_08097C34
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08097A0C
sub_08097A0C: @ 0x08097A0C
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0xf9
	lsls r0, r0, #4
	bl sub_0805D3B4
	adds r1, r4, #0
	bl sub_08097D18
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08097A28
sub_08097A28: @ 0x08097A28
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0805D8FC
	ldr r0, _08097A8C @ =0x09F46450
	str r0, [r5, #0x1c]
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r5, r1
	movs r4, #0
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r1, #0xc
	adds r0, r5, r1
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r1, #0xc
	adds r0, r5, r1
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r1, #0xc
	adds r0, r5, r1
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r0, r5, #0
	bl sub_08097CB4
	adds r0, r5, #0
	bl sub_08097C94
	ldr r0, _08097A90 @ =0x09F45630
	str r0, [r5, #0x1c]
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r0, r5, r1
	str r4, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r4, [r0]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08097A8C: .4byte 0x09F46450
_08097A90: .4byte 0x09F45630

	thumb_func_start sub_08097A94
sub_08097A94: @ 0x08097A94
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0805D8FC
	ldr r0, _08097B44 @ =0x09F46450
	str r0, [r5, #0x1c]
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r5, r1
	movs r4, #0
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	ldr r3, _08097B48 @ =0x00000F6C
	adds r0, r5, r3
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r1, #0x18
	adds r0, r5, r1
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r3, #0x18
	adds r0, r5, r3
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r0, r5, #0
	bl sub_08097CB4
	adds r0, r5, #0
	bl sub_08097C94
	ldr r0, _08097B4C @ =0x09F458E8
	str r0, [r5, #0x1c]
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r0, r5, r1
	str r4, [r0]
	ldr r3, _08097B50 @ =0x00000F94
	adds r0, r5, r3
	str r4, [r0]
	movs r1, #0
	ldr r0, _08097B54 @ =gUnknown_02004110
	movs r2, #0
	adds r0, #0x18
_08097AF6:
	cmp r1, #2
	beq _08097AFC
	str r2, [r0]
_08097AFC:
	adds r0, #0x6c
	adds r1, #1
	cmp r1, #0xf
	ble _08097AF6
	ldr r0, _08097B58 @ =0x00000F98
	adds r4, r5, r0
	movs r0, #0x38
	bl sub_0805D3B4
	movs r1, #0xa3
	bl sub_0806FF6C
	str r0, [r4]
	ldr r1, [r0, #0x1c]
	adds r1, #0x70
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0
	bl sub_0809193C
	ldr r0, [r4]
	ldr r1, [r0, #0x1c]
	adds r1, #0x78
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0
	bl sub_0809193C
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08097B44: .4byte 0x09F46450
_08097B48: .4byte 0x00000F6C
_08097B4C: .4byte 0x09F458E8
_08097B50: .4byte 0x00000F94
_08097B54: .4byte gUnknown_02004110
_08097B58: .4byte 0x00000F98

	thumb_func_start sub_08097B5C
sub_08097B5C: @ 0x08097B5C
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0805D8FC
	ldr r0, _08097BC0 @ =0x09F46450
	str r0, [r5, #0x1c]
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r5, r1
	movs r4, #0
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r1, #0xc
	adds r0, r5, r1
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r1, #0xc
	adds r0, r5, r1
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r1, #0xc
	adds r0, r5, r1
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r0, r5, #0
	bl sub_08097CB4
	adds r0, r5, #0
	bl sub_08097C94
	ldr r0, _08097BC4 @ =0x09F45BF8
	str r0, [r5, #0x1c]
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r0, r5, r1
	str r4, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r4, [r0]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08097BC0: .4byte 0x09F46450
_08097BC4: .4byte 0x09F45BF8

	thumb_func_start sub_08097BC8
sub_08097BC8: @ 0x08097BC8
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0805D8FC
	ldr r0, _08097C2C @ =0x09F46450
	str r0, [r5, #0x1c]
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r5, r1
	movs r4, #0
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r1, #0xc
	adds r0, r5, r1
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r1, #0xc
	adds r0, r5, r1
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r1, #0xc
	adds r0, r5, r1
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r0, r5, #0
	bl sub_08097CB4
	adds r0, r5, #0
	bl sub_08097C94
	ldr r0, _08097C30 @ =0x09F45ED0
	str r0, [r5, #0x1c]
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r0, r5, r1
	strb r4, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r4, [r0]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08097C2C: .4byte 0x09F46450
_08097C30: .4byte 0x09F45ED0

	thumb_func_start sub_08097C34
sub_08097C34: @ 0x08097C34
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0805D8FC
	ldr r0, _08097C88 @ =0x09F46450
	str r0, [r4, #0x1c]
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r4, r1
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r2, _08097C8C @ =0x00000F6C
	adds r0, r4, r2
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	adds r2, #0xc
	adds r0, r4, r2
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	adds r2, #0xc
	adds r0, r4, r2
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	adds r0, r4, #0
	bl sub_08097CB4
	adds r0, r4, #0
	bl sub_08097C94
	ldr r0, _08097C90 @ =0x09F461B0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08097C88: .4byte 0x09F46450
_08097C8C: .4byte 0x00000F6C
_08097C90: .4byte 0x09F461B0

	thumb_func_start sub_08097C94
sub_08097C94: @ 0x08097C94
	push {lr}
	ldr r0, _08097CAC @ =0x00000173
	movs r1, #1
	bl sub_080028BC
	ldr r0, _08097CB0 @ =0x00000285
	movs r1, #1
	bl sub_080028BC
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_08097CAC: .4byte 0x00000173
_08097CB0: .4byte 0x00000285

	thumb_func_start sub_08097CB4
sub_08097CB4: @ 0x08097CB4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08097CD8
	movs r0, #0
	b _08097CFE
_08097CD8:
	ldr r1, _08097D04 @ =gUnknown_02004860
	adds r2, r4, #0
	adds r2, #0x80
	ldr r0, _08097D08 @ =0x040000D4
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08097D0C @ =0x80000410
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08097D10 @ =gUnknown_02004110
	movs r3, #0x8a
	lsls r3, r3, #4
	adds r2, r4, r3
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08097D14 @ =0x80000360
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r0, #1
_08097CFE:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08097D04: .4byte gUnknown_02004860
_08097D08: .4byte 0x040000D4
_08097D0C: .4byte 0x80000410
_08097D10: .4byte gUnknown_02004110
_08097D14: .4byte 0x80000360

	thumb_func_start sub_08097D18
sub_08097D18: @ 0x08097D18
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0805D8FC
	ldr r0, _08097D68 @ =0x09F46450
	str r0, [r4, #0x1c]
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r4, r1
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r2, _08097D6C @ =0x00000F6C
	adds r0, r4, r2
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	adds r2, #0xc
	adds r0, r4, r2
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	adds r2, #0xc
	adds r0, r4, r2
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	adds r0, r4, #0
	bl sub_08097CB4
	adds r0, r4, #0
	bl sub_08097C94
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08097D68: .4byte 0x09F46450
_08097D6C: .4byte 0x00000F6C

	thumb_func_start sub_08097D70
sub_08097D70: @ 0x08097D70
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xec
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08097D9A
	adds r0, r4, #0
	bl sub_0805EA38
	b _08097DD6
_08097D9A:
	bl sub_08074614
	cmp r0, #0
	beq _08097DBA
	bl sub_08074614
	ldr r2, [r0, #0x1c]
	adds r2, #0x88
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #2
	ldr r2, [r2, #4]
	bl sub_0809193C
_08097DBA:
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #0x96
	lsls r2, r2, #2
	mov r3, sp
	movs r0, #1
	strb r0, [r3]
	add r3, sp, #4
	movs r0, #0
	strb r0, [r3]
	movs r0, #0
	movs r3, #1
	bl sub_08074494
_08097DD6:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08097DE0
sub_08097DE0: @ 0x08097DE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x12c
	adds r7, r0, #0
	add r0, sp, #8
	movs r1, #0
	bl sub_08061E4C
	ldr r0, _08097EFC @ =0x0000027A
	ldr r1, _08097F00 @ =0x00000F94
	adds r1, r1, r7
	mov sb, r1
	ldr r1, [r1]
	bl sub_080741AC
	add r1, sp, #8
	bl sub_080742EC
	movs r0, #0x78
	bl sub_0807068C
	movs r2, #0xf9
	lsls r2, r2, #4
	adds r0, r7, r2
	ldr r2, [r0]
	movs r0, #0xc3
	adds r1, r2, #0
	bl sub_080730FC
	movs r0, #0x3c
	bl sub_0807068C
	ldr r3, [r7, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	mov r8, r0
	add r3, r8
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _08097F04 @ =0x0000065F
	add r5, sp, #0x10c
	adds r0, r5, #0
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl sub_08091940
	add r1, sp, #0x118
	movs r4, #0
	adds r0, r1, #0
	strb r4, [r0]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	adds r0, r5, #0
	movs r2, #0
	bl sub_080735E0
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	movs r0, #0x78
	bl sub_0807068C
	mov r3, sb
	ldr r2, [r3]
	movs r0, #0xc0
	adds r1, r2, #0
	bl sub_080730FC
	movs r0, #0x96
	lsls r0, r0, #1
	mov sb, r0
	bl sub_0807068C
	ldr r3, [r7, #0x1c]
	add r3, r8
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r2, #0xcc
	lsls r2, r2, #3
	adds r0, r5, #0
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl sub_08091940
	add r1, sp, #0x11c
	adds r0, r1, #0
	strb r4, [r0]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	adds r0, r5, #0
	movs r2, #0
	bl sub_080735E0
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	movs r1, #0x80
	lsls r1, r1, #1
	mov r2, sp
	movs r0, #1
	strb r0, [r2]
	add r0, sp, #4
	strb r4, [r0]
	movs r0, #0x90
	mov r2, sb
	movs r3, #1
	bl sub_08074518
	ldr r1, [r7, #0x1c]
	movs r3, #0x84
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0
	bl sub_0809193C
	add r6, sp, #0x120
	movs r0, #0x92
	lsls r0, r0, #1
	add r0, sp
	mov sb, r0
	movs r1, #0x94
	lsls r1, r1, #1
	add r1, sp
	mov sl, r1
	b _08097F26
	.align 2, 0
_08097EFC: .4byte 0x0000027A
_08097F00: .4byte 0x00000F94
_08097F04: .4byte 0x0000065F
_08097F08:
	adds r0, r4, #0
	bl sub_080729F8
	adds r1, r0, #0
	adds r1, #0x20
	ldr r2, [r0, #0x20]
	movs r3, #0x10
	ldrsh r0, [r2, r3]
	adds r1, r1, r0
	ldr r2, [r2, #0x14]
	adds r0, r1, #0
	movs r1, #0
	bl sub_0809193C
	adds r4, #1
_08097F26:
	bl sub_080729DC
	cmp r4, r0
	blt _08097F08
	movs r4, #0
	b _08097F50
_08097F32:
	adds r0, r4, #0
	bl sub_08072E18
	adds r1, r0, #0
	adds r1, #0x20
	ldr r2, [r0, #0x20]
	movs r3, #0x10
	ldrsh r0, [r2, r3]
	adds r1, r1, r0
	ldr r2, [r2, #0x14]
	adds r0, r1, #0
	movs r1, #0
	bl sub_0809193C
	adds r4, #1
_08097F50:
	bl sub_08072DFC
	cmp r4, r0
	blt _08097F32
	movs r0, #0x96
	lsls r0, r0, #1
	mov r8, r0
	bl sub_0807068C
	ldr r3, [r7, #0x1c]
	movs r1, #0x98
	lsls r1, r1, #2
	adds r3, r3, r1
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _08098028 @ =0x00000661
	add r5, sp, #0x10c
	adds r0, r5, #0
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl sub_08091940
	movs r4, #0
	add r0, sp, #0x120
	strb r4, [r0]
	strb r4, [r6, #1]
	strb r4, [r6, #2]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	bl sub_080735E0
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	mov r0, r8
	bl sub_0807068C
	ldr r3, [r7, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _0809802C @ =0x00000662
	adds r0, r5, #0
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl sub_08091940
	add r0, sp, #0x124
	strb r4, [r0]
	mov r3, sb
	strb r4, [r3, #1]
	strb r4, [r3, #2]
	adds r0, r5, #0
	mov r1, sb
	movs r2, #0
	bl sub_080735E0
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	mov r0, r8
	bl sub_0807068C
	ldr r3, [r7, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _08098030 @ =0x00000663
	adds r0, r5, #0
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl sub_08091940
	add r0, sp, #0x128
	strb r4, [r0]
	mov r3, sl
	strb r4, [r3, #1]
	strb r4, [r3, #2]
	adds r0, r5, #0
	mov r1, sl
	movs r2, #0
	bl sub_080735E0
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #8
	movs r1, #2
	bl sub_08062034
	movs r0, #1
	add sp, #0x12c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08098028: .4byte 0x00000661
_0809802C: .4byte 0x00000662
_08098030: .4byte 0x00000663

	thumb_func_start sub_08098034
sub_08098034: @ 0x08098034
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r7, #0x96
	lsls r7, r7, #2
	mov r0, sp
	movs r3, #1
	mov sb, r3
	strb r3, [r0]
	add r0, sp, #4
	mov r8, r0
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
	movs r0, #0
	movs r1, #0xc8
	adds r2, r7, #0
	bl sub_08074518
	movs r0, #0x5a
	bl sub_0807068C
	ldr r3, [r5, #0x1c]
	movs r2, #0x98
	lsls r2, r2, #2
	mov sl, r2
	add r3, sl
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _080981FC @ =0x0000065B
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl sub_08091940
	add r1, sp, #0x14
	movs r4, #0x7f
	movs r6, #0
	strb r4, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl sub_080736B4
	add r0, sp, #8
	movs r1, #2
	bl sub_0806E308
	ldr r3, [r5, #0x1c]
	add r3, sl
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _08098200 @ =0x0000065C
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl sub_08091940
	add r1, sp, #0x18
	strb r4, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl sub_080736B4
	add r0, sp, #8
	movs r1, #2
	bl sub_0806E308
	adds r4, #0x81
	mov r0, sp
	mov r3, sb
	strb r3, [r0]
	mov r0, r8
	strb r6, [r0]
	movs r0, #0x90
	adds r1, r4, #0
	movs r2, #0x78
	movs r3, #1
	bl sub_08074518
	ldr r1, [r5, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xc8
	bl sub_0809193C
	mov r0, sp
	mov r1, sb
	strb r1, [r0]
	mov r2, r8
	strb r6, [r2]
	movs r0, #0x90
	adds r1, r4, #0
	adds r2, r7, #0
	movs r3, #1
	bl sub_08074494
	movs r0, #0xb4
	bl sub_0807068C
	ldr r3, [r5, #0x1c]
	add r3, sl
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _08098204 @ =0x0000065D
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl sub_08091940
	add r1, sp, #0x1c
	strb r6, [r1]
	strb r6, [r1, #1]
	strb r6, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl sub_080735E0
	add r0, sp, #8
	movs r1, #2
	bl sub_0806E308
	movs r0, #0x3c
	bl sub_0807068C
	ldr r1, _08098208 @ =0x00000F94
	adds r4, r5, r1
	ldr r2, [r4]
	movs r0, #0x42
	adds r1, r2, #0
	bl sub_080730FC
	movs r0, #0x78
	bl sub_0807068C
	movs r0, #0xf0
	lsls r0, r0, #2
	bl sub_08070824
	ldr r0, [r4]
	ldr r1, [r0, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #1
	bl sub_0809193C
	movs r0, #0xf0
	bl sub_0807068C
	ldr r2, [r4]
	movs r0, #0x43
	adds r1, r2, #0
	bl sub_080730FC
	movs r0, #0xb4
	bl sub_0807068C
	ldr r3, [r5, #0x1c]
	add r3, sl
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809820C @ =0x0000065E
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl sub_08091940
	add r1, sp, #0x20
	strb r6, [r1]
	strb r6, [r1, #1]
	strb r6, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl sub_080735E0
	add r0, sp, #8
	movs r1, #2
	bl sub_0806E308
	movs r0, #0x96
	lsls r0, r0, #1
	bl sub_0807068C
	movs r0, #1
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080981FC: .4byte 0x0000065B
_08098200: .4byte 0x0000065C
_08098204: .4byte 0x0000065D
_08098208: .4byte 0x00000F94
_0809820C: .4byte 0x0000065E

	thumb_func_start sub_08098210
sub_08098210: @ 0x08098210
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp, #0x34]
	movs r7, #0
_08098224:
	ldr r1, [r4, #0x1c]
	movs r2, #0x9c
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08098242
	b _08098704
_08098242:
	ldr r0, _080982E8 @ =0x00000F94
	adds r0, r0, r4
	mov r8, r0
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	movs r1, #0xcc
	lsls r1, r1, #1
	mov sl, r1
	add r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	mov sb, r0
	ldr r0, [sp, #0x34]
	adds r0, #1
	str r0, [sp, #0x38]
	cmp r0, #4
	ble _080982F0
	ldr r2, [r4, #0x1c]
	adds r2, #0xb8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	movs r3, #0xf9
	lsls r3, r3, #4
	adds r1, r4, r3
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809828E
	b _08098704
_0809828E:
	movs r0, #0x78
	bl sub_0807068C
	ldr r1, [r4, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r2, [r4, #0x1c]
	movs r3, #0x98
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	ldr r2, _080982EC @ =0x00000674
	bl sub_08091940
	add r1, sp, #0xc
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	ldr r1, [r4, #0x1c]
	movs r2, #0xa6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	b _0809850A
	.align 2, 0
_080982E8: .4byte 0x00000F94
_080982EC: .4byte 0x00000674
_080982F0:
	movs r0, #0xf9
	lsls r0, r0, #4
	adds r6, r4, r0
	ldr r0, [r6]
	ldr r2, [r0, #0x1c]
	movs r5, #0xca
	lsls r5, r5, #2
	adds r2, r2, r5
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	movs r1, #1
	bl sub_08073FC4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080983A0
	ldr r2, [r4, #0x1c]
	adds r2, #0xb8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r6]
	ldr r2, [r2, #4]
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08098336
	b _08098704
_08098336:
	movs r0, #0x78
	bl sub_0807068C
	ldr r1, [r4, #0x1c]
	movs r2, #0xa4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	mov r1, r8
	ldr r0, [r1]
	ldr r2, [r0, #0x1c]
	add r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	cmp r0, sb
	blt _0809836A
	b _080984FE
_0809836A:
	ldr r2, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	ldr r2, _0809839C @ =0x00000672
	bl sub_08091940
	add r1, sp, #0x10
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	b _080984FE
	.align 2, 0
_0809839C: .4byte 0x00000672
_080983A0:
	ldr r0, [r6]
	ldr r2, [r0, #0x1c]
	movs r3, #0xca
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	bl sub_080740AC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809844C
	ldr r0, [r6]
	ldr r2, [r0, #0x1c]
	adds r2, r2, r5
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	ldr r2, [r0, #0x1c]
	movs r1, #0xac
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	adds r5, r0, #0
	ldr r2, [r4, #0x1c]
	adds r2, #0xb8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r6]
	ldr r2, [r2, #4]
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08098406
	b _08098704
_08098406:
	cmp r5, #6
	beq _0809840C
	b _080985B2
_0809840C:
	movs r0, #0x78
	bl sub_0807068C
	ldr r1, [r4, #0x1c]
	movs r2, #0xa4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r2, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	ldr r2, _08098448 @ =0x00000672
	bl sub_08091940
	add r1, sp, #0x14
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	b _080984EE
	.align 2, 0
_08098448: .4byte 0x00000672
_0809844C:
	ldr r0, [r6]
	ldr r2, [r0, #0x1c]
	adds r2, r2, r5
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	bl sub_08074020
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08098518
	ldr r0, [r6]
	ldr r2, [r0, #0x1c]
	adds r2, r2, r5
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	ldr r2, [r0, #0x1c]
	movs r1, #0xaa
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	adds r5, r0, #0
	ldr r2, [r4, #0x1c]
	adds r2, #0xb8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r6]
	ldr r2, [r2, #4]
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080984AE
	b _08098704
_080984AE:
	cmp r5, #0
	beq _080984B4
	b _080985B2
_080984B4:
	movs r0, #0x78
	bl sub_0807068C
	ldr r1, [r4, #0x1c]
	movs r2, #0xa4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r2, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	ldr r2, _08098514 @ =0x00000671
	bl sub_08091940
	add r1, sp, #0x18
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
_080984EE:
	mov r0, sp
	movs r2, #0
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
_080984FE:
	ldr r1, [r4, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
_0809850A:
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080985B2
	.align 2, 0
_08098514: .4byte 0x00000671
_08098518:
	ldr r0, [r6]
	ldr r2, [r0, #0x1c]
	adds r2, r2, r5
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	movs r1, #2
	bl sub_08073FC4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080985B2
	ldr r2, [r4, #0x1c]
	adds r2, #0xb8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r6]
	ldr r2, [r2, #4]
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08098554
	b _08098704
_08098554:
	movs r0, #0x78
	bl sub_0807068C
	ldr r1, [r4, #0x1c]
	movs r2, #0xa4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r2, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1

	thumb_func_start sub_08098580
sub_08098580: @ 0x08098580
	ldr r2, _08098610 @ =0x00000673
	bl sub_08091940
	add r1, sp, #0x1c
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	ldr r1, [r4, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
_080985B2:
	ldr r2, [r4, #0x1c]
	adds r2, #0xb8
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, r4, r0
	ldr r3, _08098614 @ =0x00000F94
	adds r1, r4, r3
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080985D2
	b _08098704
_080985D2:
	movs r0, #0x78
	bl sub_0807068C
	ldr r1, [r4, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r3, [sp, #0x34]
	cmp r3, #0
	bgt _0809861C
	ldr r2, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	ldr r2, _08098618 @ =0x0000066B
	bl sub_08091940
	add r1, sp, #0x20
	b _0809868C
	.align 2, 0
_08098610: .4byte 0x00000673
_08098614: .4byte 0x00000F94
_08098618: .4byte 0x0000066B
_0809861C:
	ldr r0, [sp, #0x34]
	cmp r0, #1
	bgt _08098644
	ldr r2, [r4, #0x1c]
	movs r1, #0x98
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	ldr r2, _08098640 @ =0x0000066C
	bl sub_08091940
	add r1, sp, #0x24
	b _0809868C
	.align 2, 0
_08098640: .4byte 0x0000066C
_08098644:
	ldr r0, [sp, #0x34]
	cmp r0, #2
	bgt _0809866C
	ldr r2, [r4, #0x1c]
	movs r1, #0x98
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	ldr r2, _08098668 @ =0x0000066D
	bl sub_08091940
	add r1, sp, #0x28
	b _0809868C
	.align 2, 0
_08098668: .4byte 0x0000066D
_0809866C:
	ldr r0, [sp, #0x34]
	cmp r0, #3
	bgt _080986A8
	ldr r2, [r4, #0x1c]
	movs r1, #0x98
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	ldr r2, _080986A4 @ =0x0000066E
	bl sub_08091940
	add r1, sp, #0x2c
_0809868C:
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	b _080986D8
	.align 2, 0
_080986A4: .4byte 0x0000066E
_080986A8:
	ldr r2, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	ldr r2, _08098708 @ =0x0000066F
	bl sub_08091940
	add r1, sp, #0x30
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
_080986D8:
	ldr r1, [r4, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r4, #0x1c]
	adds r1, #0xc0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809870C
_08098704:
	movs r0, #0
	b _08098718
	.align 2, 0
_08098708: .4byte 0x0000066F
_0809870C:
	ldr r0, [sp, #0x38]
	str r0, [sp, #0x34]
	cmp r0, #4
	bgt _08098716
	b _08098224
_08098716:
	movs r0, #1
_08098718:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08098728
sub_08098728: @ 0x08098728
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r7, #0
	movs r5, #0xb4
	lsls r5, r5, #1
	b _080987E0
_08098734:
	adds r0, r7, #0
	bl sub_080729F8
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl sub_08091940
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0
	bl sub_08091940
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #3
	movs r2, #0
	bl sub_08091940
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #4
	movs r2, #0
	bl sub_08091940
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #5
	movs r2, #0
	bl sub_08091940
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #6
	movs r2, #0
	bl sub_08091940
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #7
	movs r2, #0
	bl sub_08091940
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r4, r4, r0
	ldr r3, [r1, #4]
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	bl sub_08091940
	adds r7, #1
_080987E0:
	bl sub_080729DC
	cmp r7, r0
	blt _08098734
	movs r0, #2
	bl sub_08072A18
	movs r2, #0xf9
	lsls r2, r2, #4
	adds r1, r6, r2
	str r0, [r1]
	cmp r0, #0
	beq _0809885A
	movs r0, #0xbe
	bl sub_08072E38
	ldr r2, _08098864 @ =0x00000F94
	adds r1, r6, r2
	str r0, [r1]
	cmp r0, #0
	beq _0809885A
	ldr r1, [r6, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809885A
	ldr r1, [r6, #0x1c]
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809885A
	ldr r1, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0809885A:
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08098864: .4byte 0x00000F94

	thumb_func_start sub_08098868
sub_08098868: @ 0x08098868
	bx lr
	.align 2, 0

	thumb_func_start sub_0809886C
sub_0809886C: @ 0x0809886C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0805DE24
	ldr r0, [r4, #0x1c]
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl sub_08091938
	movs r4, #0
	b _080988AA
_0809888E:
	adds r0, r4, #0
	bl sub_080729F8
	ldr r2, [r0, #0x1c]
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	adds r4, #1
_080988AA:
	bl sub_080729DC
	cmp r4, r0
	blt _0809888E
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080988B8
sub_080988B8: @ 0x080988B8
	push {lr}
	sub sp, #8
	movs r1, #0x80
	lsls r1, r1, #1
	mov r2, sp
	movs r0, #1
	strb r0, [r2]
	add r2, sp, #4
	movs r0, #0
	strb r0, [r2]
	movs r0, #0
	movs r2, #0x20
	movs r3, #1
	bl sub_08074494
	add sp, #8
	pop {r0}
	bx r0

	thumb_func_start sub_080988DC
sub_080988DC: @ 0x080988DC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08098934 @ =0x09F46450
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0809BCE0
	ldr r1, _08098938 @ =0x00000F84
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _080988FA
	bl sub_0805D3F4
_080988FA:
	ldr r1, _0809893C @ =0x00000F78
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _08098908
	bl sub_0805D3F4
_08098908:
	ldr r1, _08098940 @ =0x00000F6C
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _08098916
	bl sub_0805D3F4
_08098916:
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _08098926
	bl sub_0805D3F4
_08098926:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0805DB84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08098934: .4byte 0x09F46450
_08098938: .4byte 0x00000F84
_0809893C: .4byte 0x00000F78
_08098940: .4byte 0x00000F6C

	thumb_func_start sub_08098944
sub_08098944: @ 0x08098944
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xec
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08098974
	adds r0, r4, #0
	bl sub_0805EA38
	b _080989C4
_08098974:
	ldr r3, _080989D4 @ =0x00000F98
	adds r0, r4, r3
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	adds r2, #0x78
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #2
	ldr r2, [r2, #4]
	bl sub_0809193C
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	movs r1, #0x96
	lsls r1, r1, #1
	mov sb, r1
	mov r0, sp
	movs r6, #1
	strb r6, [r0]
	add r5, sp, #4
	movs r4, #0
	strb r4, [r5]
	movs r0, #0x80
	mov r1, r8
	mov r2, sb
	movs r3, #1
	bl sub_08074394
	mov r0, sp
	strb r6, [r0]
	strb r4, [r5]
	movs r0, #0
	mov r1, r8
	mov r2, sb
	movs r3, #1
	bl sub_08074518
_080989C4:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080989D4: .4byte 0x00000F98

	thumb_func_start sub_080989D8
sub_080989D8: @ 0x080989D8
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	bl sub_08074614
	cmp r0, #0
	beq _08098A18
	ldr r1, _08098A3C @ =0x00000F98
	adds r0, r4, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	adds r1, #0x78
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl sub_0809193C
	bl sub_08074614
	ldr r1, [r0, #0x1c]
	adds r1, #0x80
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl sub_0809193C
_08098A18:
	movs r1, #0x80
	lsls r1, r1, #1
	mov r2, sp
	movs r0, #1
	strb r0, [r2]
	add r2, sp, #4
	movs r0, #0
	strb r0, [r2]
	movs r0, #0x80
	adds r2, r6, #0
	movs r3, #1
	bl sub_08074394
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08098A3C: .4byte 0x00000F98

	thumb_func_start sub_08098A40
sub_08098A40: @ 0x08098A40
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	bl sub_08074614
	cmp r0, #0
	beq _08098A80
	bl sub_08074614
	ldr r1, [r0, #0x1c]
	adds r1, #0x78
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl sub_0809193C
	ldr r1, _08098AA4 @ =0x00000F98
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	adds r1, #0x80
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl sub_0809193C
_08098A80:
	movs r1, #0x80
	lsls r1, r1, #1
	mov r2, sp
	movs r0, #1
	strb r0, [r2]
	add r2, sp, #4
	movs r0, #0
	strb r0, [r2]
	movs r0, #0x80
	adds r2, r6, #0
	movs r3, #1
	bl sub_08074414
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08098AA4: .4byte 0x00000F98

	thumb_func_start sub_08098AA8
sub_08098AA8: @ 0x08098AA8
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xf9
	lsls r0, r0, #4
	adds r5, r4, r0
	ldr r0, [r5]
	ldr r1, [r0, #0x1c]
	movs r2, #0xca
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	beq _08098B34
	ldr r0, [r5]
	ldr r1, [r0, #0x1c]
	movs r2, #0xca
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r2, [r0, #0x1c]
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, _08098B30 @ =0x00000F94
	adds r1, r4, r3
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl sub_0809193C
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r1, [r0, #0x1c]
	movs r2, #0xca
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r0, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r4, r0
	bge _08098B34
	movs r0, #1
	b _08098B36
	.align 2, 0
_08098B30: .4byte 0x00000F94
_08098B34:
	movs r0, #0
_08098B36:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08098B3C
sub_08098B3C: @ 0x08098B3C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0x9c
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08098B60
	movs r0, #0
	b _08098BCC
_08098B60:
	ldr r1, [r6, #0x1c]
	movs r3, #0xbe
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08098BB8
	movs r3, #0xf9
	lsls r3, r3, #4
	adds r4, r6, r3
	ldr r0, [r4]
	ldr r1, [r0, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r4]
	ldr r4, [r1, #0x1c]
	movs r0, #0xc8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r1, r5
	movs r0, #0x19
	bl sub_08073F88
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl sub_0809193C
_08098BB8:
	ldr r1, [r6, #0x1c]
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
_08098BCC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08098BD4
sub_08098BD4: @ 0x08098BD4
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0
	bl sub_0809193C
	b _08098C34
_08098BFA:
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	ldr r1, _08098C30 @ =0x000003E7
	cmp r0, r1
	bgt _08098C52
	adds r0, r4, #0
	bl sub_0805E0EC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08098C34
	movs r0, #0
	b _08098CBA
	.align 2, 0
_08098C30: .4byte 0x000003E7
_08098C34:
	ldr r1, _08098CC4 @ =0x00000F94
	adds r0, r4, r1
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	movs r3, #0xcc
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	cmp r0, #1
	bgt _08098BFA
_08098C52:
	ldr r1, [r4, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r4, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	movs r2, #0x96
	lsls r2, r2, #2
	ldr r3, [r1, #4]
	adds r1, r2, #0
	bl sub_08091940
	movs r0, #0x5a
	bl sub_0807068C
	ldr r3, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _08098CC8 @ =0x0000065A
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl sub_08091940
	add r1, sp, #0xc
	movs r0, #0xff
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080736B4
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	movs r0, #1
_08098CBA:
	add sp, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08098CC4: .4byte 0x00000F94
_08098CC8: .4byte 0x0000065A

	thumb_func_start sub_08098CCC
sub_08098CCC: @ 0x08098CCC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0
	bl sub_0809193C
	ldr r0, _08098CF8 @ =0x00000F94
	adds r6, r5, r0
	b _08098D34
	.align 2, 0
_08098CF8: .4byte 0x00000F94
_08098CFC:
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	ldr r1, _08098D30 @ =0x000001F3
	cmp r0, r1
	bgt _08098D74
	adds r0, r5, #0
	bl sub_0805E0EC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08098D34
	movs r0, #0
	b _08098E3C
	.align 2, 0
_08098D30: .4byte 0x000001F3
_08098D34:
	ldr r0, [r6]
	ldr r2, [r0, #0x1c]
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	adds r4, r0, #0
	ldr r0, [r6]
	ldr r2, [r0, #0x1c]
	movs r1, #0xd4
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	adds r1, r0, #0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0x64
	bl sub_0807066C
	cmp r4, r0
	bgt _08098CFC
_08098D74:
	ldr r1, [r5, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r5, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	movs r4, #0x96
	lsls r4, r4, #2
	ldr r3, [r1, #4]
	adds r1, r4, #0
	adds r2, r4, #0
	bl sub_08091940
	movs r0, #0x5a
	bl sub_0807068C
	ldr r3, [r5, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _08098E44 @ =0x00000659
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl sub_08091940
	add r1, sp, #0xc
	movs r0, #0xff
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_080736B4
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	movs r0, #0x5a
	bl sub_0807068C
	ldr r1, [r5, #0x1c]
	movs r3, #0x84
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xc6
	bl sub_0809193C
	ldr r1, [r5, #0x1c]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	adds r1, r4, #0
	adds r2, r4, #0
	bl sub_08091940
	movs r0, #0xb4
	bl sub_0807068C
	ldr r1, [r5, #0x1c]
	movs r3, #0xa6
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r0, #1
_08098E3C:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08098E44: .4byte 0x00000659

	thumb_func_start sub_08098E48
sub_08098E48: @ 0x08098E48
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	movs r5, #0x96
	lsls r5, r5, #2
	ldr r3, [r1, #4]
	adds r1, r5, #0
	adds r2, r5, #0
	bl sub_08091940
	movs r0, #0x5a
	bl sub_0807068C
	ldr r3, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	mov r8, r0
	add r3, r8
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _08098F30 @ =0x00000656
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl sub_08091940
	add r1, sp, #0xc
	movs r0, #0xff
	movs r6, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_080736B4
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	movs r0, #0x5a
	bl sub_0807068C
	ldr r1, [r4, #0x1c]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	adds r1, r5, #0
	adds r2, r5, #0
	bl sub_08091940
	movs r0, #0xb4
	bl sub_0807068C
	ldr r3, [r4, #0x1c]
	add r3, r8
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _08098F34 @ =0x00000657
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl sub_08091940
	add r1, sp, #0x10
	strb r6, [r1]
	strb r6, [r1, #1]
	strb r6, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	ldr r0, [r4, #0x1c]
	movs r1, #0xa6
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl sub_08091938
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08098F30: .4byte 0x00000656
_08098F34: .4byte 0x00000657

	thumb_func_start sub_08098F38
sub_08098F38: @ 0x08098F38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	movs r0, #0xa0
	lsls r0, r0, #2
	ldr r2, _08098F84 @ =0x00000F94
	adds r1, r6, r2
	ldr r1, [r1]
	bl sub_080741AC
	bl sub_08074234
	movs r3, #0
	str r3, [sp, #0x10]
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r0, r6, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0
	bl sub_0809193C
	ldr r0, _08098F84 @ =0x00000F94
	adds r0, r0, r6
	mov r8, r0
	b _08099124
	.align 2, 0
_08098F84: .4byte 0x00000F94
_08098F88:
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r0, r6, r1
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	movs r4, #0x80
	lsls r4, r4, #2
	adds r2, r2, r4
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	ldr r1, _0809902C @ =0x000003E7
	cmp r0, r1
	ble _08098FAC
	b _08099166
_08098FAC:
	ldr r1, [r6, #0x1c]
	adds r1, #0xa0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08098FC6
	b _08099120
_08098FC6:
	ldr r1, [r6, #0x1c]
	adds r1, #0xa8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08098FE0
	b _08099120
_08098FE0:
	ldr r1, [r6, #0x1c]
	movs r0, #0xbe
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	mov r3, r8
	ldr r0, [r3]
	ldr r2, [r0, #0x1c]
	adds r2, r2, r4
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	mov sl, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r7, #0
	movs r3, #0x8c
	lsls r3, r3, #2
	mov sb, r3
	b _080990E4
	.align 2, 0
_0809902C: .4byte 0x000003E7
_08099030:
	ldr r0, [r6, #0x1c]
	adds r5, r0, #0
	adds r5, #0xb8
	movs r1, #0
	ldrsh r4, [r5, r1]
	adds r4, r6, r4
	movs r2, #0x8c
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r2, [r0, #0x1c]
	adds r2, #0x88
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	adds r1, r7, #0
	bl sub_0809193C
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099120
	ldr r1, [r6, #0x1c]
	add r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r2, [r0, #0x1c]
	adds r2, #0x88
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	adds r1, r7, #0
	bl sub_0809193C
	movs r2, #0xf9
	lsls r2, r2, #4
	adds r1, r6, r2
	ldr r1, [r1]
	cmp r0, r1
	bne _080990E2
	ldr r3, [sp, #0x14]
	cmp r3, #1
	bne _080990E2
	mov r1, r8
	ldr r0, [r1]
	ldr r2, [r0, #0x1c]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	cmp r0, sl
	ble _080990E2
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bgt _080990E2
	ldr r1, [r6, #0x1c]
	movs r2, #0xb6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r0, [sp, #0x10]
	adds r0, #1
	str r0, [sp, #0x10]
_080990E2:
	adds r7, #1
_080990E4:
	ldr r1, [r6, #0x1c]
	add r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r2, [r0, #0x1c]
	adds r2, #0x80
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	cmp r7, r0
	blt _08099030
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08099124
_08099120:
	movs r0, #0
	b _08099230
_08099124:
	mov r3, r8
	ldr r0, [r3]
	ldr r2, [r0, #0x1c]
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	adds r4, r0, #0
	mov r1, r8
	ldr r0, [r1]
	ldr r2, [r0, #0x1c]
	movs r3, #0xd4
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	movs r1, #0x32
	muls r0, r1, r0
	movs r1, #0x64
	bl sub_0807066C
	cmp r4, r0
	ble _08099166
	b _08098F88
_08099166:
	ldr r1, [r6, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r6, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	movs r4, #0x96
	lsls r4, r4, #2
	ldr r3, [r1, #4]
	adds r1, r4, #0
	adds r2, r4, #0
	bl sub_08091940
	movs r0, #0x5a
	bl sub_0807068C
	ldr r3, [r6, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r2, #0xcb
	lsls r2, r2, #3
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl sub_08091940
	add r1, sp, #0xc
	movs r0, #0xff
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_080736B4
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	movs r0, #0x5a
	bl sub_0807068C
	ldr r1, [r6, #0x1c]
	movs r3, #0x84
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xc5
	bl sub_0809193C
	ldr r1, [r6, #0x1c]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r3, [r1, #4]
	adds r1, r4, #0
	adds r2, r4, #0
	bl sub_08091940
	movs r0, #0xb4
	bl sub_0807068C
	ldr r1, [r6, #0x1c]
	movs r3, #0xa6
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r0, #1
_08099230:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08099240
sub_08099240: @ 0x08099240
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	adds r6, r0, #0
	movs r4, #0
_08099250:
	ldr r1, [r6, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099308
	adds r4, #1
	cmp r4, #3
	ble _08099250
	ldr r1, [r6, #0x1c]
	movs r3, #0x9c
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099308
	ldr r1, [r6, #0x1c]
	movs r3, #0xbe
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080992E6
	movs r3, #0xf9
	lsls r3, r3, #4
	adds r4, r6, r3
	ldr r0, [r4]
	ldr r1, [r0, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r4]
	ldr r4, [r1, #0x1c]
	movs r0, #0xc8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r1, r5
	movs r0, #0x19
	bl sub_08073F88
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl sub_0809193C
_080992E6:
	ldr r2, [r6, #0x1c]
	adds r2, #0xb8
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, r6, r0
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r1, r6, r1
	str r1, [sp, #0x50]
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809930C
_08099308:
	movs r0, #0
	b _080995C0
_0809930C:
	ldr r2, _080995D0 @ =0x00000F94
	adds r7, r6, r2
	ldr r1, [r7]
	ldr r0, _080995D4 @ =0x000001BD
	bl sub_080741AC
	adds r4, r0, #0
	movs r0, #0x9b
	lsls r0, r0, #2
	bl sub_08070824
	ldr r2, [r7]
	movs r0, #0x47
	adds r1, r2, #0
	bl sub_080730FC
	ldr r2, [r4, #0x1c]
	movs r3, #0xe4
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r3, sp, #0x10
	mov sl, r3
	mov r0, sl
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl sub_0809193C
	add r0, sp, #0x1c
	mov sb, r0
	bl sub_0806E274
	add r1, sp, #0x28
	mov r8, r1
	mov r0, r8
	bl sub_0806E274
	mov r2, r8
	str r2, [sp]
	add r0, sp, #4
	ldr r1, _080995D8 @ =0x00000667
	mov r2, sl
	mov r3, sb
	bl sub_08073460
	add r1, sp, #0x34
	movs r5, #0
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	mov r0, r8
	movs r1, #2
	bl sub_0806E308
	mov r0, sb
	movs r1, #2
	bl sub_0806E308
	mov r0, sl
	movs r1, #2
	bl sub_0806E308
	ldr r2, [r7]
	movs r0, #0x90
	adds r1, r2, #0
	bl sub_080730FC
	ldr r1, [r7]
	ldr r3, [sp, #0x50]
	ldr r2, [r3]
	movs r0, #0x91
	bl sub_080730FC
	cmp r4, #0
	beq _080993C4
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl sub_0809193C
_080993C4:
	ldr r1, [r6, #0x1c]
	movs r3, #0xa4
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r3, [r6, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080995DC @ =0x00000675
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl sub_08091940
	add r1, sp, #0x38
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #0
	bl sub_0807367C
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	ldr r3, [r6, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080995E0 @ =0x00000652
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl sub_08091940
	add r1, sp, #0x3c
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #0
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	ldr r1, [r7]
	movs r0, #0x44
	movs r2, #0
	movs r3, #0
	bl sub_08073150
	ldr r3, [r6, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r2, #0xcd
	lsls r2, r2, #3
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl sub_08091940
	add r1, sp, #0x40
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #0
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	movs r0, #0xb4
	bl sub_0807068C
	ldr r3, [r6, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080995E4 @ =0x00000654
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl sub_08091940
	add r1, sp, #0x44
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_0807367C
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	movs r0, #0xb4
	bl sub_0807068C
	ldr r1, [r7]
	ldr r0, _080995D4 @ =0x000001BD
	bl sub_080741AC
	adds r4, r0, #0
	movs r0, #0x9b
	lsls r0, r0, #2
	bl sub_08070824
	ldr r2, [r7]
	movs r0, #0x47
	adds r1, r2, #0
	bl sub_080730FC
	ldr r2, [r4, #0x1c]
	movs r3, #0xe4
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sl
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl sub_0809193C
	mov r0, sb
	bl sub_0806E274
	mov r0, r8
	bl sub_0806E274
	mov r1, r8
	str r1, [sp]
	add r0, sp, #4
	ldr r1, _080995D8 @ =0x00000667
	mov r2, sl
	mov r3, sb
	bl sub_08073460
	add r1, sp, #0x48
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	mov r0, r8
	movs r1, #2
	bl sub_0806E308
	mov r0, sb
	movs r1, #2
	bl sub_0806E308
	mov r0, sl
	movs r1, #2
	bl sub_0806E308
	ldr r2, [r7]
	movs r0, #0x90
	adds r1, r2, #0
	bl sub_080730FC
	ldr r1, [r7]
	ldr r3, [sp, #0x50]
	ldr r2, [r3]
	movs r0, #0x91
	bl sub_080730FC
	cmp r4, #0
	beq _0809955A
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl sub_0809193C
_0809955A:
	ldr r1, [r7]
	movs r0, #0x45
	movs r2, #0
	movs r3, #0
	bl sub_08073150
	ldr r3, [r6, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080995E8 @ =0x00000655
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl sub_08091940
	add r1, sp, #0x4c
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #0
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	ldr r1, [r6, #0x1c]
	movs r3, #0xa6
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r0, #0xb4
	bl sub_0807068C
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
_080995C0:
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080995D0: .4byte 0x00000F94
_080995D4: .4byte 0x000001BD
_080995D8: .4byte 0x00000667
_080995DC: .4byte 0x00000675
_080995E0: .4byte 0x00000652
_080995E4: .4byte 0x00000654
_080995E8: .4byte 0x00000655

	thumb_func_start sub_080995EC
sub_080995EC: @ 0x080995EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r7, r0, #0
	movs r4, #0
_080995F8:
	ldr r1, [r7, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08099616
	b _080997E0
_08099616:
	adds r4, #1
	cmp r4, #1
	ble _080995F8
	ldr r1, [r7, #0x1c]
	movs r3, #0x9c
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809963A
	b _080997E0
_0809963A:
	ldr r1, [r7, #0x1c]
	movs r3, #0xbe
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099692
	movs r3, #0xf9
	lsls r3, r3, #4
	adds r4, r7, r3
	ldr r0, [r4]
	ldr r1, [r0, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r4]
	ldr r4, [r1, #0x1c]
	movs r0, #0xc8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r1, r5
	movs r0, #0x19
	bl sub_08073F88
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl sub_0809193C
_08099692:
	ldr r1, [r7, #0x1c]
	movs r3, #0xa4
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r7, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	movs r5, #0x96
	lsls r5, r5, #2
	ldr r3, [r1, #4]
	adds r1, r5, #0
	adds r2, r5, #0
	bl sub_08091940
	movs r0, #0x5a
	bl sub_0807068C
	ldr r3, [r7, #0x1c]
	movs r6, #0x98
	lsls r6, r6, #2
	adds r3, r3, r6
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _080997D8 @ =0x0000064E
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl sub_08091940
	add r1, sp, #0xc
	movs r4, #0xff
	movs r2, #0
	mov r8, r2
	strb r4, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	mov r0, sp
	bl sub_080736B4
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	ldr r3, [r7, #0x1c]
	adds r3, r3, r6
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xca
	lsls r2, r2, #3
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl sub_08091940
	add r1, sp, #0x10
	strb r4, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_080736B4
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	movs r0, #0x5a
	bl sub_0807068C
	ldr r1, [r7, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xc4
	bl sub_0809193C
	ldr r1, [r7, #0x1c]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r3, [r1, #4]
	adds r1, r5, #0
	adds r2, r5, #0
	bl sub_08091940
	movs r0, #0xb4
	bl sub_0807068C
	ldr r3, [r7, #0x1c]
	adds r3, r3, r6
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _080997DC @ =0x00000651
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl sub_08091940
	add r1, sp, #0x14
	mov r2, r8
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	ldr r1, [r7, #0x1c]
	movs r3, #0xa6
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r7, #0x1c]
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080997E0
	movs r0, #1
	b _080997E2
	.align 2, 0
_080997D8: .4byte 0x0000064E
_080997DC: .4byte 0x00000651
_080997E0:
	movs r0, #0
_080997E2:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080997F0
sub_080997F0: @ 0x080997F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r7, r0, #0
	movs r4, #0
_080997F8:
	ldr r1, [r7, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08099816
	b _08099988
_08099816:
	adds r4, #1
	cmp r4, #1
	ble _080997F8
	ldr r1, [r7, #0x1c]
	movs r3, #0x9c
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809983A
	b _08099988
_0809983A:
	ldr r1, [r7, #0x1c]
	movs r3, #0xbe
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099892
	movs r3, #0xf9
	lsls r3, r3, #4
	adds r4, r7, r3
	ldr r0, [r4]
	ldr r1, [r0, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r4]
	ldr r4, [r1, #0x1c]
	movs r0, #0xc8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r1, r5
	movs r0, #0x19
	bl sub_08073F88
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl sub_0809193C
_08099892:
	ldr r1, [r7, #0x1c]
	movs r3, #0xa4
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r7, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	movs r4, #0x96
	lsls r4, r4, #2
	ldr r3, [r1, #4]
	adds r1, r4, #0
	adds r2, r4, #0
	bl sub_08091940
	movs r0, #0x5a
	bl sub_0807068C
	ldr r3, [r7, #0x1c]
	movs r6, #0x98
	lsls r6, r6, #2
	adds r3, r3, r6
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _08099980 @ =0x0000064D
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl sub_08091940
	add r1, sp, #0xc
	movs r0, #0xff
	movs r5, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_080736B4
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	movs r0, #0x5a
	bl sub_0807068C
	ldr r1, [r7, #0x1c]
	movs r2, #0xc2
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r3, [r1, #4]
	adds r1, r4, #0
	adds r2, r4, #0
	bl sub_08091940
	movs r0, #0xb4
	bl sub_0807068C
	ldr r3, [r7, #0x1c]
	adds r3, r3, r6
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _08099984 @ =0x0000064F
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl sub_08091940
	add r1, sp, #0x10
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	ldr r1, [r7, #0x1c]
	movs r2, #0xa6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r7, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099988
	movs r0, #1
	b _0809998A
	.align 2, 0
_08099980: .4byte 0x0000064D
_08099984: .4byte 0x0000064F
_08099988:
	movs r0, #0
_0809998A:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08099994
sub_08099994: @ 0x08099994
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	movs r5, #0x96
	lsls r5, r5, #2
	ldr r3, [r1, #4]
	adds r1, r5, #0
	adds r2, r5, #0
	bl sub_08091940
	movs r0, #0x5a
	bl sub_0807068C
	ldr r3, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	mov r8, r0
	add r3, r8
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _08099A80 @ =0x0000064B
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl sub_08091940
	add r1, sp, #0xc
	movs r0, #0xff
	movs r6, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_080736B4
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	movs r0, #0x5a
	bl sub_0807068C
	ldr r1, [r4, #0x1c]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	adds r1, r5, #0
	adds r2, r5, #0
	bl sub_08091940
	movs r0, #0xb4
	bl sub_0807068C
	ldr r3, [r4, #0x1c]
	add r3, r8
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _08099A84 @ =0x0000064C
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl sub_08091940
	add r1, sp, #0x10
	strb r6, [r1]
	strb r6, [r1, #1]
	strb r6, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	ldr r0, [r4, #0x1c]
	movs r1, #0xa6
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl sub_08091938
	movs r0, #1
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08099A80: .4byte 0x0000064B
_08099A84: .4byte 0x0000064C

	thumb_func_start sub_08099A88
sub_08099A88: @ 0x08099A88
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	b _08099AAA
_08099A8E:
	ldr r1, [r6, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099B9C
_08099AAA:
	movs r3, #0xf9
	lsls r3, r3, #4
	adds r0, r6, r3
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	ldr r1, _08099BA0 @ =0x0000031F
	cmp r0, r1
	ble _08099A8E
	ldr r1, [r6, #0x1c]
	movs r0, #0x9c
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099B9C
	ldr r1, [r6, #0x1c]
	movs r3, #0xbe
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099B40
	movs r3, #0xf9
	lsls r3, r3, #4
	adds r4, r6, r3
	ldr r0, [r4]
	ldr r1, [r0, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r4]
	ldr r4, [r1, #0x1c]
	movs r0, #0xc8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r1, r5
	movs r0, #0x19
	bl sub_08073F88
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl sub_0809193C
_08099B40:
	ldr r1, [r6, #0x1c]
	adds r1, #0xb0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r2, [r6, #0x1c]
	adds r2, #0xb8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	movs r3, #0xf9
	lsls r3, r3, #4
	adds r1, r6, r3
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl sub_0809193C
	ldr r0, _08099BA4 @ =0x00000F94
	adds r4, r6, r0
	ldr r1, [r4]
	movs r0, #0x90
	bl sub_080741AC
	bl sub_08074234
	ldr r0, _08099BA8 @ =0x000001BD
	ldr r1, [r4]
	bl sub_080741AC
	bl sub_08074234
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
_08099B88:
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08099BB6
_08099B9C:
	movs r0, #0
	b _08099BDA
	.align 2, 0
_08099BA0: .4byte 0x0000031F
_08099BA4: .4byte 0x00000F94
_08099BA8: .4byte 0x000001BD
_08099BAC:
	ldr r1, [r6, #0x1c]
	movs r3, #0xbc
	lsls r3, r3, #2
	adds r1, r1, r3
	b _08099B88
_08099BB6:
	movs r3, #0xf9
	lsls r3, r3, #4
	adds r0, r6, r3
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	ldr r1, _08099BE0 @ =0x0000063F
	cmp r0, r1
	ble _08099BAC
	movs r0, #1
_08099BDA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08099BE0: .4byte 0x0000063F

	thumb_func_start sub_08099BE4
sub_08099BE4: @ 0x08099BE4
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, _08099C48 @ =0x00000F94
	adds r4, r5, r0
	ldr r2, [r4]
	movs r0, #3
	adds r1, r2, #0
	bl sub_080730FC
	ldr r4, [r4]
	movs r0, #0xa4
	movs r1, #0xba
	bl sub_08070660
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #1
	bl sub_08073734
	ldr r3, [r5, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _08099C4C @ =0x0000064A
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl sub_08091940
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	movs r0, #1
	add sp, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08099C48: .4byte 0x00000F94
_08099C4C: .4byte 0x0000064A

	thumb_func_start sub_08099C50
sub_08099C50: @ 0x08099C50
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r7, #0
	movs r5, #0xb4
	lsls r5, r5, #1
	b _08099D08
_08099C5C:
	adds r0, r7, #0
	bl sub_080729F8
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl sub_08091940
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0
	bl sub_08091940
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #3
	movs r2, #0
	bl sub_08091940
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #4
	movs r2, #0
	bl sub_08091940
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #5
	movs r2, #0
	bl sub_08091940
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #6
	movs r2, #0
	bl sub_08091940
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #7
	movs r2, #0
	bl sub_08091940
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r4, r4, r0
	ldr r3, [r1, #4]
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	bl sub_08091940
	adds r7, #1
_08099D08:
	bl sub_080729DC
	cmp r7, r0
	blt _08099C5C
	movs r0, #2
	bl sub_08072A18
	movs r2, #0xf9
	lsls r2, r2, #4
	adds r1, r6, r2
	str r0, [r1]
	cmp r0, #0
	bne _08099D24
	b _08099E2C
_08099D24:
	movs r0, #0xbd
	bl sub_08072E38
	ldr r2, _08099E34 @ =0x00000F94
	adds r1, r6, r2
	str r0, [r1]
	cmp r0, #0
	beq _08099E2C
	ldr r1, [r6, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099E2C
	ldr r1, [r6, #0x1c]
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099E2C
	ldr r1, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099E2C
	ldr r1, [r6, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099E2C
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099E2C
	ldr r1, [r6, #0x1c]
	movs r0, #0xb2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099E2C
	ldr r1, [r6, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099E2C
	ldr r1, [r6, #0x1c]
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099E2C
	ldr r1, [r6, #0x1c]
	movs r0, #0xba
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_08099E2C:
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08099E34: .4byte 0x00000F94

	thumb_func_start sub_08099E38
sub_08099E38: @ 0x08099E38
	bx lr
	.align 2, 0

	thumb_func_start sub_08099E3C
sub_08099E3C: @ 0x08099E3C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0805DE24
	ldr r0, [r4, #0x1c]
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl sub_08091938
	movs r4, #0
	b _08099E7A
_08099E5E:
	adds r0, r4, #0
	bl sub_080729F8
	ldr r2, [r0, #0x1c]
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	adds r4, #1
_08099E7A:
	bl sub_080729DC
	cmp r4, r0
	blt _08099E5E
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08099E88
sub_08099E88: @ 0x08099E88
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08099F00 @ =0x09F458E8
	str r0, [r4, #0x1c]
	ldr r1, _08099F04 @ =0x00000F98
	adds r0, r4, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _08099EAC
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl sub_0809193C
_08099EAC:
	ldr r0, _08099F08 @ =0x09F46450
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0809BCE0
	ldr r1, _08099F0C @ =0x00000F84
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _08099EC4
	bl sub_0805D3F4
_08099EC4:
	ldr r3, _08099F10 @ =0x00000F78
	adds r0, r4, r3
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _08099ED2
	bl sub_0805D3F4
_08099ED2:
	ldr r1, _08099F14 @ =0x00000F6C
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _08099EE0
	bl sub_0805D3F4
_08099EE0:
	movs r3, #0xf6
	lsls r3, r3, #4
	adds r0, r4, r3
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _08099EF0
	bl sub_0805D3F4
_08099EF0:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0805DB84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08099F00: .4byte 0x09F458E8
_08099F04: .4byte 0x00000F98
_08099F08: .4byte 0x09F46450
_08099F0C: .4byte 0x00000F84
_08099F10: .4byte 0x00000F78
_08099F14: .4byte 0x00000F6C

	thumb_func_start sub_08099F18
sub_08099F18: @ 0x08099F18
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xec
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099F42
	adds r0, r4, #0
	bl sub_0805EA38
	b _08099F6C
_08099F42:
	movs r4, #0xc8
	lsls r4, r4, #1
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0807459C
	movs r1, #0x80
	lsls r1, r1, #1
	mov r2, sp
	movs r0, #1
	strb r0, [r2]
	add r2, sp, #4
	movs r0, #0
	strb r0, [r2]
	movs r0, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_08074518
_08099F6C:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08099F74
sub_08099F74: @ 0x08099F74
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	bl sub_0805E0EC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099FCC
	adds r0, r4, #0
	bl sub_0805E0EC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099FCC
	ldr r3, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xc9
	lsls r2, r2, #3
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl sub_08091940
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	movs r0, #1
	b _08099FCE
_08099FCC:
	movs r0, #0
_08099FCE:
	add sp, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08099FD8
sub_08099FD8: @ 0x08099FD8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	adds r6, r0, #0
	movs r0, #0x78
	bl sub_0807068C
	ldr r1, [r6, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r3, #0xf9
	lsls r3, r3, #4
	adds r3, r3, r6
	mov r8, r3
	ldr r2, [r3]
	movs r0, #0xb7
	adds r1, r2, #0
	bl sub_08073198
	mov r0, r8
	ldr r2, [r0]
	movs r0, #0x84
	adds r1, r2, #0
	bl sub_08073198
	mov r1, r8
	ldr r2, [r1]
	movs r0, #0x85
	adds r1, r2, #0
	bl sub_080730FC
	bl sub_08073270
	ldr r0, _0809A418 @ =0x00000615
	bl sub_08070824
	mov r2, r8
	ldr r0, [r2]
	ldr r1, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #1
	bl sub_0809193C
	ldr r0, _0809A41C @ =0x00000193
	movs r1, #0xb4
	movs r2, #0xb4
	movs r3, #1
	bl sub_0807459C
	movs r0, #0x5a
	bl sub_0807068C
	ldr r3, [r6, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _0809A420 @ =0x00000642
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl sub_08091940
	add r1, sp, #0x14
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl sub_0807367C
	add r0, sp, #8
	movs r1, #2
	bl sub_0806E308
	movs r0, #0x5a
	bl sub_0807068C
	mov r3, r8
	ldr r1, [r3]
	ldr r2, [r1, #0x20]
	adds r2, #0x40
	adds r1, #0x20
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r7, sp, #0x18
	adds r0, r7, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl sub_0809193C
	ldr r1, [r6, #0x1c]
	movs r5, #0x8a
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r4, [r0, #0x1c]
	adds r4, #0xa0
	movs r3, #0
	ldrsh r1, [r4, r3]
	adds r0, r0, r1
	add r2, sp, #0x1c
	movs r1, #0x88
	lsls r1, r1, #1
	movs r3, #0
	mov sb, r3
	strh r1, [r2]
	movs r1, #0x20
	strh r1, [r2, #2]
	ldr r2, [sp, #0x1c]
	add r1, sp, #0x20
	movs r3, #0x80
	lsls r3, r3, #1
	strh r3, [r1]
	strh r3, [r1, #2]
	ldr r3, [sp, #0x20]
	ldr r4, [r4, #4]
	movs r1, #0x11
	bl sub_08091944
	ldr r1, [r6, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r0, #0x1c]
	adds r1, #0xd0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r3, [r1, #4]
	movs r1, #0
	movs r2, #0
	bl sub_08091940
	mov r1, r8
	ldr r0, [r1]
	ldr r2, [r0, #0x20]
	adds r0, #0x20
	movs r3, #0x18
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x1c]
	adds r1, r7, #0
	bl sub_0809193C
	movs r0, #0x11
	bl sub_08072E38
	ldr r1, _0809A424 @ =0x00000F94
	adds r7, r6, r1
	str r0, [r7]
	cmp r0, #0
	bne _0809A142
	b _0809A460
_0809A142:
	ldr r3, [r0, #0x20]
	adds r0, #0x20
	movs r2, #0x18
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	add r1, sp, #0x24
	movs r4, #0x30
	movs r2, #4
	strh r4, [r1]
	strh r2, [r1, #2]
	ldr r2, [r3, #0x1c]
	bl sub_0809193C
	ldr r0, [r7]
	ldr r2, [r0, #0x20]
	adds r0, #0x20
	movs r3, #0x20
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x24]
	movs r1, #6
	bl sub_0809193C
	ldr r0, _0809A428 @ =0x000003C1
	bl sub_08070824
	ldr r0, [r7]
	add r1, sp, #0x28
	movs r2, #0x14
	strh r4, [r1]
	strh r2, [r1, #2]
	movs r2, #6
	bl sub_08073070
	ldr r0, [r7]
	add r1, sp, #0x2c
	movs r2, #0x24
	strh r4, [r1]
	strh r2, [r1, #2]
	movs r2, #8
	bl sub_08073070
	ldr r0, [r7]
	add r1, sp, #0x30
	movs r2, #0x34
	strh r4, [r1]
	strh r2, [r1, #2]
	movs r2, #0x10
	bl sub_08073070
	ldr r0, [r7]
	add r1, sp, #0x34
	movs r2, #0x44
	strh r4, [r1]
	strh r2, [r1, #2]
	movs r2, #0x40
	bl sub_08073070
	ldr r0, [r7]
	ldr r1, [r0, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #1
	bl sub_0809193C
	movs r0, #0x3c
	bl sub_0807068C
	ldr r3, [r6, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _0809A42C @ =0x00000643
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl sub_08091940
	add r1, sp, #0x38
	mov r3, sb
	strb r3, [r1]
	strb r3, [r1, #1]
	strb r3, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl sub_0807367C
	add r0, sp, #8
	movs r1, #2
	bl sub_0806E308
	ldr r0, [r7]
	ldr r1, [r0, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0
	bl sub_0809193C
	ldr r0, _0809A430 @ =0x000003C7
	bl sub_08070824
	ldr r0, [r7]
	add r1, sp, #0x3c
	movs r2, #0x3c
	strh r4, [r1]
	strh r2, [r1, #2]
	movs r2, #0x30
	bl sub_08073070
	ldr r0, [r7]
	add r1, sp, #0x40
	movs r2, #0x2c
	mov sl, r2
	strh r4, [r1]
	mov r3, sl
	strh r3, [r1, #2]
	movs r2, #0x10
	bl sub_08073070
	ldr r0, [r7]
	add r1, sp, #0x44
	movs r5, #0xc
	strh r4, [r1]
	strh r5, [r1, #2]
	movs r2, #7
	bl sub_08073070
	ldr r0, [r7]
	ldr r2, [r0, #0x20]
	adds r0, #0x20
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x14]
	movs r1, #0
	bl sub_0809193C
	movs r0, #0x5a
	bl sub_0807068C
	ldr r0, [r7]
	ldr r2, [r0, #0x20]
	adds r0, #0x20
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x14]
	movs r1, #1
	bl sub_0809193C
	ldr r0, [r7]
	ldr r3, [r0, #0x20]
	adds r0, #0x20
	movs r2, #0x18
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	add r1, sp, #0x48
	movs r2, #0x90
	strh r2, [r1]
	strh r5, [r1, #2]
	ldr r2, [r3, #0x1c]
	bl sub_0809193C
	ldr r0, [r7]
	ldr r2, [r0, #0x20]
	adds r0, #0x20
	movs r3, #0x20
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x24]
	movs r1, #2
	bl sub_0809193C
	movs r0, #0xf2
	lsls r0, r0, #2
	bl sub_08070824
	ldr r0, [r7]
	add r1, sp, #0x4c
	movs r2, #0xd0
	strh r2, [r1]
	mov r2, sl
	strh r2, [r1, #2]
	movs r2, #0xe
	bl sub_08073070
	movs r0, #0x5a
	bl sub_0807068C
	ldr r0, _0809A434 @ =0x000003C9
	bl sub_08070824
	ldr r0, [r7]
	add r1, sp, #0x50
	movs r2, #0x88
	movs r3, #0x94
	strh r2, [r1]
	strh r3, [r1, #2]
	movs r2, #0xf
	bl sub_08073070
	movs r0, #3
	bl sub_0807068C
	ldr r0, [r7]
	add r1, sp, #0x54
	movs r2, #0x54
	movs r3, #0x20
	strh r3, [r1]
	strh r2, [r1, #2]
	movs r2, #0x14
	bl sub_08073070
	movs r0, #0x2d
	bl sub_0807068C
	ldr r0, _0809A438 @ =0x000003CA
	bl sub_08070824
	ldr r0, [r7]
	add r1, sp, #0x58
	movs r4, #0x78
	strh r4, [r1]
	strh r5, [r1, #2]
	movs r2, #0x10
	bl sub_08073070
	movs r0, #0x3c
	bl sub_0807068C
	ldr r0, _0809A43C @ =0x000003CB
	bl sub_08070824
	ldr r0, [r7]
	add r1, sp, #0x5c
	movs r2, #0x50
	strh r4, [r1]
	strh r2, [r1, #2]
	movs r2, #0x3c
	bl sub_08073070
	movs r0, #0x3c
	bl sub_0807068C
	movs r0, #0xf3
	lsls r0, r0, #2
	bl sub_08070824
	mov r0, r8
	ldr r2, [r0]
	movs r0, #0x82
	adds r1, r2, #0
	bl sub_08073198
	ldr r2, [r7]
	movs r0, #0x82
	adds r1, r2, #0
	bl sub_08073198
	movs r0, #0xf
	bl sub_0807068C
	mov r1, r8
	ldr r0, [r1]
	bl sub_08072FE0
	mov r0, sp
	movs r5, #1
	strb r5, [r0]
	add r4, sp, #4
	mov r2, sb
	strb r2, [r4]
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #8
	movs r3, #1
	bl sub_08074518
	movs r0, #8
	bl sub_0807068C
	ldr r0, [r7]
	ldr r1, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #1
	bl sub_0809193C
	ldr r0, [r7]
	ldr r2, [r0, #0x20]
	adds r0, #0x20
	movs r3, #0x20
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x24]
	movs r1, #6
	bl sub_0809193C
	movs r0, #8
	bl sub_0807068C
	mov r0, sp
	strb r5, [r0]
	mov r0, sb
	strb r0, [r4]
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #8
	movs r3, #1
	bl sub_08074494
	bl sub_08073270
	movs r0, #0x5a
	bl sub_0807068C
	ldr r3, [r6, #0x1c]
	movs r1, #0x98
	lsls r1, r1, #2
	adds r3, r3, r1
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _0809A440 @ =0x00000644
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl sub_08091940
	add r1, sp, #0x60
	mov r3, sb
	strb r3, [r1]
	strb r3, [r1, #1]
	strb r3, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl sub_080735E0
	add r0, sp, #8
	movs r1, #2
	bl sub_0806E308
	movs r0, #0x5a
	b _0809A444
	.align 2, 0
_0809A418: .4byte 0x00000615
_0809A41C: .4byte 0x00000193
_0809A420: .4byte 0x00000642
_0809A424: .4byte 0x00000F94
_0809A428: .4byte 0x000003C1
_0809A42C: .4byte 0x00000643
_0809A430: .4byte 0x000003C7
_0809A434: .4byte 0x000003C9
_0809A438: .4byte 0x000003CA
_0809A43C: .4byte 0x000003CB
_0809A440: .4byte 0x00000644
_0809A444:
	bl sub_0807068C
	ldr r1, [r6, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r0, #1
	b _0809A462
_0809A460:
	movs r0, #0
_0809A462:
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809A474
sub_0809A474: @ 0x0809A474
	push {r4, lr}
	ldr r2, [r0, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r1, #0
	ldrsh r3, [r2, r1]
	adds r3, r0, r3
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r4, [r2, #4]
	adds r0, r3, #0
	movs r2, #1
	bl sub_08091944
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809A4A2
	movs r0, #1
	b _0809A4A4
_0809A4A2:
	movs r0, #0
_0809A4A4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809A4AC
sub_0809A4AC: @ 0x0809A4AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r4, [r7, #0x1c]
	movs r0, #0xa0
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r6, [r4, r1]
	adds r6, r7, r6
	movs r2, #0xf9
	lsls r2, r2, #4
	adds r0, r7, r2
	ldr r5, [r0]
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0x64
	bl sub_0807066C
	adds r2, r0, #0
	ldr r3, [r4, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08091940
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809A56C
	movs r0, #0x78
	bl sub_0807068C
	ldr r1, [r7, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r3, [r7, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _0809A568 @ =0x00000641
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl sub_08091940
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_0807367C
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	movs r0, #0x5a
	bl sub_0807068C
	ldr r1, [r7, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r0, #1
	b _0809A56E
	.align 2, 0
_0809A568: .4byte 0x00000641
_0809A56C:
	movs r0, #0
_0809A56E:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809A578
sub_0809A578: @ 0x0809A578
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r4, [r7, #0x1c]
	movs r0, #0xa0
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r6, [r4, r1]
	adds r6, r7, r6
	movs r2, #0xf9
	lsls r2, r2, #4
	adds r0, r7, r2
	ldr r5, [r0]
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x64
	bl sub_0807066C
	adds r2, r0, #0
	ldr r3, [r4, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08091940
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809A636
	movs r0, #0x78
	bl sub_0807068C
	ldr r1, [r7, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r3, [r7, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r2, #0xc8
	lsls r2, r2, #3
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl sub_08091940
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_0807367C
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	movs r0, #0x5a
	bl sub_0807068C
	ldr r1, [r7, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r0, #1
	b _0809A638
_0809A636:
	movs r0, #0
_0809A638:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0809A640
sub_0809A640: @ 0x0809A640
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r4, [r7, #0x1c]
	movs r0, #0xa0
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r6, [r4, r1]
	adds r6, r7, r6
	movs r2, #0xf9
	lsls r2, r2, #4
	adds r0, r7, r2
	ldr r5, [r0]
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r1, r0, #0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0x64
	bl sub_0807066C
	adds r2, r0, #0
	ldr r3, [r4, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08091940
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809A700
	movs r0, #0x78
	bl sub_0807068C
	ldr r1, [r7, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r3, [r7, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _0809A6FC @ =0x0000063F
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl sub_08091940
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_0807367C
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	movs r0, #0x5a
	bl sub_0807068C
	ldr r1, [r7, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r0, #1
	b _0809A702
	.align 2, 0
_0809A6FC: .4byte 0x0000063F
_0809A700:
	movs r0, #0
_0809A702:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809A70C
sub_0809A70C: @ 0x0809A70C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r4, [r7, #0x1c]
	movs r0, #0xa0
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r6, [r4, r1]
	adds r6, r7, r6
	movs r2, #0xf9
	lsls r2, r2, #4
	adds r0, r7, r2
	ldr r5, [r0]
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #0x64
	bl sub_0807066C
	adds r2, r0, #0
	ldr r3, [r4, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08091940
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809A7CC
	movs r0, #0x78
	bl sub_0807068C
	ldr r1, [r7, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r3, [r7, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _0809A7C8 @ =0x0000063E
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl sub_08091940
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_0807367C
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	movs r0, #0x5a
	bl sub_0807068C
	ldr r1, [r7, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r0, #1
	b _0809A7CE
	.align 2, 0
_0809A7C8: .4byte 0x0000063E
_0809A7CC:
	movs r0, #0
_0809A7CE:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809A7D8
sub_0809A7D8: @ 0x0809A7D8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xb
	bl sub_08072E38
	movs r2, #0xf9
	lsls r2, r2, #4
	adds r1, r4, r2
	str r0, [r1]
	cmp r0, #0
	beq _0809A8AE
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809A8AE
	ldr r1, [r4, #0x1c]
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809A8AE
	ldr r1, [r4, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809A8AE
	ldr r1, [r4, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809A8AE
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809A8AE
	ldr r1, [r4, #0x1c]
	movs r0, #0xb2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809A8AE
	ldr r1, [r4, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0809A8AE:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809A8B8
sub_0809A8B8: @ 0x0809A8B8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0809A910 @ =0x09F46450
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0809BCE0
	ldr r1, _0809A914 @ =0x00000F84
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809A8D6
	bl sub_0805D3F4
_0809A8D6:
	ldr r1, _0809A918 @ =0x00000F78
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809A8E4
	bl sub_0805D3F4
_0809A8E4:
	ldr r1, _0809A91C @ =0x00000F6C
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809A8F2
	bl sub_0805D3F4
_0809A8F2:
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809A902
	bl sub_0805D3F4
_0809A902:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0805DB84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809A910: .4byte 0x09F46450
_0809A914: .4byte 0x00000F84
_0809A918: .4byte 0x00000F78
_0809A91C: .4byte 0x00000F6C

	thumb_func_start sub_0809A920
sub_0809A920: @ 0x0809A920
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	bl sub_0806A174
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809A974 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _0809A978 @ =0x09F7ED20
	str r0, [sp, #0x20]
	ldr r1, [r5, #0x1c]
	adds r1, #0x48
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r5, r5, r0
	ldr r0, _0809A97C @ =gUnknown_080F31E8
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	ldr r4, [r1, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08091944
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809A974: .4byte 0x09F44FF0
_0809A978: .4byte 0x09F7ED20
_0809A97C: .4byte gUnknown_080F31E8

	thumb_func_start sub_0809A980
sub_0809A980: @ 0x0809A980
	push {r4, lr}
	adds r4, r0, #0
	b _0809A98C
_0809A986:
	movs r0, #1
	bl sub_0807068C
_0809A98C:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r2, [r0, #0x1c]
	adds r2, #0x70
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	ldr r2, [r0, #0x1c]
	adds r2, #0xa8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xc0
	bne _0809A986
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809A9D0
sub_0809A9D0: @ 0x0809A9D0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_0806A174
	bl sub_0806A394
	ldr r2, _0809AA34 @ =0x00000F94
	adds r1, r5, r2
	adds r0, r0, r4
	str r0, [r1]
	bl sub_0806A174
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809AA38 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _0809AA3C @ =0x09F7ED20
	str r0, [sp, #0x20]
	ldr r1, [r5, #0x1c]
	movs r2, #0x38
	ldrsh r0, [r1, r2]
	adds r5, r5, r0
	ldr r0, _0809AA40 @ =gUnknown_080F31E8
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	ldr r4, [r1, #0x3c]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08091944
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809AA34: .4byte 0x00000F94
_0809AA38: .4byte 0x09F44FF0
_0809AA3C: .4byte 0x09F7ED20
_0809AA40: .4byte gUnknown_080F31E8

	thumb_func_start sub_0809AA44
sub_0809AA44: @ 0x0809AA44
	push {r4, r5, r6, lr}
	movs r5, #0
	b _0809AA8A
_0809AA4A:
	adds r0, r5, #0
	bl sub_08072AA4
	ldr r1, [r0, #0x1c]
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r4, r1, r2
	movs r3, #0
	ldrsh r1, [r4, r3]
	adds r6, r0, r1
	adds r0, r5, #0
	bl sub_08072AA4
	ldr r2, [r0, #0x1c]
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	movs r1, #1
	cmp r1, r0
	bge _0809AA80
	adds r1, r0, #0
_0809AA80:
	ldr r2, [r4, #4]
	adds r0, r6, #0
	bl sub_0809193C
	adds r5, #1
_0809AA8A:
	bl sub_08072A88
	cmp r5, r0
	blt _0809AA4A
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0809AA98
sub_0809AA98: @ 0x0809AA98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r3, #0x80
	lsls r3, r3, #1
	mov sl, r3
	mov r0, sp
	movs r5, #1
	strb r5, [r0]
	add r4, sp, #4
	movs r0, #0
	strb r0, [r4]
	movs r0, #0x80
	mov r1, sl
	movs r2, #0x5a
	movs r3, #1
	bl sub_08074414
	ldr r2, [r6, #0x1c]
	movs r0, #0xb2
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	movs r1, #0xaa
	lsls r1, r1, #1
	ldr r2, [r2, #4]
	bl sub_0809193C
	ldr r0, _0809AE88 @ =0x00000791
	movs r1, #0x3c
	movs r2, #0
	movs r3, #0
	bl sub_0807459C
	ldr r3, [r6, #0x1c]
	movs r2, #0x98
	lsls r2, r2, #2
	mov sb, r2
	add r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809AE8C @ =0x00000632
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl sub_08091940
	add r1, sp, #0x14
	movs r2, #0
	mov r8, r2
	mov r3, r8
	strb r3, [r1]
	strb r3, [r1, #1]
	strb r3, [r1, #2]
	add r0, sp, #8
	bl sub_080735E0
	add r0, sp, #8
	movs r1, #2
	bl sub_0806E308
	ldr r1, [r6, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r6, #0x1c]
	movs r3, #0xb6
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	mov r0, sp
	strb r5, [r0]
	mov r3, r8
	strb r3, [r4]
	movs r0, #0x80
	mov r1, sl
	movs r2, #0x1e
	movs r3, #1
	bl sub_08074394
	ldr r3, [r6, #0x1c]
	add r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809AE90 @ =0x00000633
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl sub_08091940
	add r1, sp, #0x18
	mov r2, r8
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl sub_080735E0
	add r0, sp, #8
	movs r1, #2
	bl sub_0806E308
	movs r0, #0x5a
	bl sub_0807068C
	movs r0, #0x82
	lsls r0, r0, #1
	bl sub_0805D3B4
	movs r1, #0
	bl sub_08061E4C
	adds r7, r0, #0
	ldr r3, [r6, #0x1c]
	add r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809AE94 @ =0x00000634
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl sub_08091940
	add r1, sp, #0x1c
	mov r2, r8
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl sub_080735E0
	add r0, sp, #8
	movs r1, #2
	bl sub_0806E308
	movs r0, #0x5a
	bl sub_0807068C
	ldr r3, [r6, #0x1c]
	add r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809AE98 @ =0x0000063B
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl sub_08091940
	add r1, sp, #0x20
	mov r2, r8
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl sub_0807367C
	add r0, sp, #8
	movs r1, #2
	bl sub_0806E308
	movs r0, #0xc
	adds r1, r7, #0
	bl sub_08073F88
	bl sub_08074234
	ldr r3, [r6, #0x1c]
	add r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809AE9C @ =0x00000635
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl sub_08091940
	add r1, sp, #0x24
	mov r2, r8
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl sub_080735E0
	add r0, sp, #8
	movs r1, #2
	bl sub_0806E308
	movs r0, #0x5a
	bl sub_0807068C
	ldr r3, [r6, #0x1c]
	add r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809AEA0 @ =0x0000063C
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl sub_08091940
	add r1, sp, #0x28
	mov r2, r8
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl sub_0807367C
	add r0, sp, #8
	movs r1, #2
	bl sub_0806E308
	movs r0, #0xe
	adds r1, r7, #0
	bl sub_08073F88
	bl sub_08074234
	ldr r1, [r6, #0x1c]
	movs r3, #0x8a
	lsls r3, r3, #2
	mov sl, r3
	add r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	adds r4, #0xb8
	movs r3, #0
	ldrsh r0, [r4, r3]
	adds r5, r5, r0
	movs r0, #0x1b
	bl sub_08072E38
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl sub_0809193C
	ldr r1, [r6, #0x1c]
	add r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r0, #0x1c]
	adds r1, #0xd0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl sub_08091940
	ldr r3, [r6, #0x1c]
	add r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809AEA4 @ =0x00000636
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl sub_08091940
	add r1, sp, #0x2c
	mov r2, r8
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl sub_080735E0
	add r0, sp, #8
	movs r1, #2
	bl sub_0806E308
	movs r0, #0x5a
	bl sub_0807068C
	ldr r3, [r6, #0x1c]
	add r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809AEA8 @ =0x0000063D
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl sub_08091940
	add r1, sp, #0x30
	mov r2, r8
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl sub_0807367C
	add r0, sp, #8
	movs r1, #2
	bl sub_0806E308
	movs r0, #0x10
	adds r1, r7, #0
	bl sub_08073F88
	bl sub_08074234
	ldr r1, [r6, #0x1c]
	add r1, sl
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	adds r4, #0xb8
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	movs r0, #0xb4
	bl sub_08072E38
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl sub_0809193C
	ldr r1, [r6, #0x1c]
	add r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r0, #0x1c]
	adds r1, #0xd0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl sub_08091940
	ldr r3, [r6, #0x1c]
	add r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809AEAC @ =0x00000637
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl sub_08091940
	add r1, sp, #0x34
	mov r2, r8
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl sub_080735E0
	add r0, sp, #8
	movs r1, #2
	bl sub_0806E308
	movs r0, #0x5a
	bl sub_0807068C
	ldr r3, [r6, #0x1c]
	add r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809AEB0 @ =0x00000649
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl sub_08091940
	add r1, sp, #0x38
	mov r2, r8
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl sub_0807367C
	add r0, sp, #8
	movs r1, #2
	bl sub_0806E308
	movs r0, #0x12
	adds r1, r7, #0
	bl sub_08073F88
	bl sub_08074234
	ldr r1, [r6, #0x1c]
	add r1, sl
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	adds r4, #0xb8
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	movs r0, #0xb5
	bl sub_08072E38
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl sub_0809193C
	ldr r0, [r6, #0x1c]
	add r0, sl
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r6, r6, r1
	ldr r1, [r0, #4]
	adds r0, r6, #0
	bl sub_08091938
	ldr r1, [r0, #0x1c]
	adds r1, #0xd0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #1
	bl sub_08091940
	cmp r7, #0
	beq _0809AE76
	ldr r1, [r7, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl sub_0809193C
_0809AE76:
	movs r0, #1
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809AE88: .4byte 0x00000791
_0809AE8C: .4byte 0x00000632
_0809AE90: .4byte 0x00000633
_0809AE94: .4byte 0x00000634
_0809AE98: .4byte 0x0000063B
_0809AE9C: .4byte 0x00000635
_0809AEA0: .4byte 0x0000063C
_0809AEA4: .4byte 0x00000636
_0809AEA8: .4byte 0x0000063D
_0809AEAC: .4byte 0x00000637
_0809AEB0: .4byte 0x00000649

	thumb_func_start sub_0809AEB4
sub_0809AEB4: @ 0x0809AEB4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
_0809AEBC:
	ldr r1, [r6, #0x1c]
	adds r1, #0xa0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809AF9A
	movs r0, #0xa9
	bl sub_08072E38
	cmp r0, #0
	bne _0809AEE2
_0809AEDE:
	movs r0, #1
	b _0809AF9C
_0809AEE2:
	ldr r1, [r6, #0x1c]
	adds r1, #0xa8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809AF9A
	ldr r1, [r6, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r7, #0
	movs r3, #0x8c
	lsls r3, r3, #2
	mov r8, r3
	b _0809AF5E
_0809AF14:
	movs r0, #0xa9
	bl sub_08072E38
	cmp r0, #0
	beq _0809AEDE
	ldr r1, [r6, #0x1c]
	adds r5, r1, #0
	adds r5, #0xb8
	movs r0, #0
	ldrsh r4, [r5, r0]
	adds r4, r6, r4
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r2, [r0, #0x1c]
	adds r2, #0x88
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	adds r1, r7, #0
	bl sub_0809193C
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809AF9A
	adds r7, #1
_0809AF5E:
	ldr r1, [r6, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r2, [r0, #0x1c]
	adds r2, #0x80
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	cmp r7, r0
	blt _0809AF14
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809AEBC
_0809AF9A:
	movs r0, #0
_0809AF9C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809AFA8
sub_0809AFA8: @ 0x0809AFA8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x80
	adds r6, r0, #0
	add r1, sp, #0x34
	movs r0, #0x78
	movs r2, #0x30
	rsbs r2, r2, #0
	movs r3, #0
	mov sb, r3
	strh r0, [r1]
	strh r2, [r1, #2]
	add r2, sp, #0x38
	adds r0, #0x88
	strh r0, [r2]
	strh r0, [r2, #2]
	movs r0, #0xa9
	movs r3, #0x1e
	bl sub_08072F9C
	adds r7, r0, #0
	ldr r0, _0809B084 @ =0x00000676
	bl sub_08070824
	movs r0, #0x5a
	bl sub_0807068C
	ldr r2, [r7, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	add r0, sp, #0x10
	mov r8, r0
	ldr r2, [r2, #4]
	adds r1, r7, r1
	bl sub_0809193C
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl sub_0806E274
	add r4, sp, #0x28
	adds r0, r4, #0
	bl sub_0806E274
	ldr r1, _0809B088 @ =0x00000631
	str r4, [sp]
	add r0, sp, #4
	mov r2, r8
	adds r3, r5, #0
	bl sub_08073460
	add r1, sp, #0x3c
	mov r2, sb
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	add r0, sp, #4
	movs r2, #0
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	mov r0, r8
	movs r1, #2
	bl sub_0806E308
	ldr r0, _0809B08C @ =0x0000026D
	adds r1, r7, #0
	bl sub_080741AC
	bl sub_08074234
	ldr r1, [r6, #0x1c]
	movs r3, #0xac
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r4
	cmp r0, #1
	beq _0809B090
	bl sub_08072A88
	cmp r0, #0
	bgt _0809B090
_0809B07E:
	movs r0, #0
	b _0809B352
	.align 2, 0
_0809B084: .4byte 0x00000676
_0809B088: .4byte 0x00000631
_0809B08C: .4byte 0x0000026D
_0809B090:
	add r1, sp, #0x40
	movs r0, #0xb8
	movs r2, #0x30
	rsbs r2, r2, #0
	movs r4, #0
	strh r0, [r1]
	strh r2, [r1, #2]
	add r2, sp, #0x44
	adds r0, #0x48
	strh r0, [r2]
	strh r0, [r2, #2]
	movs r0, #0x91
	movs r3, #0x1e
	bl sub_08072F9C
	adds r7, r0, #0
	ldr r0, _0809B120 @ =0x00000676
	bl sub_08070824
	movs r0, #0x5a
	bl sub_0807068C
	ldr r2, [r7, #0x1c]
	movs r3, #0xc4
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #0x10
	ldr r2, [r2, #4]
	adds r1, r7, r1
	bl sub_0809193C
	add r0, sp, #0x1c
	bl sub_0806E274
	mov r0, sl
	bl sub_0806E274
	ldr r1, _0809B124 @ =0x00000631
	mov r2, sl
	str r2, [sp]
	add r0, sp, #4
	add r2, sp, #0x10
	add r3, sp, #0x1c
	bl sub_08073460
	add r1, sp, #0x48
	strb r4, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	add r0, sp, #4
	movs r2, #0
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	mov r0, sl
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #0x1c
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #0x10
	movs r1, #2
	bl sub_0806E308
	b _0809B13E
	.align 2, 0
_0809B120: .4byte 0x00000676
_0809B124: .4byte 0x00000631
_0809B128:
	adds r0, r6, #0
	bl sub_0805E0EC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809B13E
	bl sub_08072A88
	cmp r0, #0
	ble _0809B07E
_0809B13E:
	bl sub_08072DFC
	cmp r0, #0
	bgt _0809B128
	movs r0, #0x5a
	bl sub_0807068C
	ldr r1, [r6, #0x1c]
	movs r3, #0x8a
	lsls r3, r3, #2
	mov sb, r3
	add r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r4, [r0, #0x1c]
	adds r4, #0xa0
	movs r3, #0
	ldrsh r1, [r4, r3]
	adds r0, r0, r1
	add r1, sp, #0x4c
	movs r7, #0x88
	lsls r7, r7, #1
	movs r2, #0x20
	mov r8, r2
	strh r7, [r1]
	mov r3, r8
	strh r3, [r1, #2]
	ldr r2, [sp, #0x4c]
	add r1, sp, #0x50
	movs r5, #0x80
	lsls r5, r5, #1
	strh r5, [r1]
	strh r5, [r1, #2]
	ldr r3, [sp, #0x50]
	ldr r4, [r4, #4]
	movs r1, #0x1b
	bl sub_08091944
	ldr r1, [r6, #0x1c]
	add r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r4, [r0, #0x1c]
	adds r4, #0xa0
	movs r3, #0
	ldrsh r1, [r4, r3]
	adds r0, r0, r1
	add r1, sp, #0x54
	strh r7, [r1]
	mov r2, r8
	strh r2, [r1, #2]
	ldr r2, [sp, #0x54]
	add r1, sp, #0x58
	strh r5, [r1]
	strh r5, [r1, #2]
	ldr r3, [sp, #0x58]
	ldr r4, [r4, #4]
	movs r1, #0xb4
	bl sub_08091944
	ldr r1, [r6, #0x1c]
	add r1, sb
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r4, [r0, #0x1c]
	adds r4, #0xa0
	movs r2, #0
	ldrsh r1, [r4, r2]
	adds r0, r0, r1
	add r1, sp, #0x5c
	strh r7, [r1]
	mov r3, r8
	strh r3, [r1, #2]
	ldr r2, [sp, #0x5c]
	add r1, sp, #0x60
	strh r5, [r1]
	strh r5, [r1, #2]
	ldr r3, [sp, #0x60]
	ldr r4, [r4, #4]
	movs r1, #0xb5
	bl sub_08091944
	ldr r1, [r6, #0x1c]
	add r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r0, #0x1c]
	adds r1, #0xd0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r3, [r1, #4]
	movs r1, #0
	movs r2, #1
	bl sub_08091940
	movs r0, #0x1b
	bl sub_08072E38
	adds r2, r0, #0
	adds r2, #0x20
	ldr r3, [r0, #0x20]
	movs r1, #0x18
	ldrsh r0, [r3, r1]
	adds r2, r2, r0
	add r1, sp, #0x64
	movs r5, #0x78
	movs r4, #0x30
	rsbs r4, r4, #0
	strh r5, [r1]
	strh r4, [r1, #2]
	ldr r3, [r3, #0x1c]
	adds r0, r2, #0
	bl sub_08091940
	movs r0, #0xb4
	bl sub_08072E38
	adds r2, r0, #0
	adds r2, #0x20
	ldr r3, [r0, #0x20]
	movs r1, #0x18
	ldrsh r0, [r3, r1]
	adds r2, r2, r0
	add r1, sp, #0x68
	movs r0, #0x38
	mov r8, r0
	mov r0, r8
	strh r0, [r1]
	strh r4, [r1, #2]
	ldr r3, [r3, #0x1c]
	adds r0, r2, #0
	bl sub_08091940
	movs r0, #0xb5
	bl sub_08072E38
	adds r2, r0, #0
	adds r2, #0x20
	ldr r3, [r0, #0x20]
	movs r1, #0x18
	ldrsh r0, [r3, r1]
	adds r2, r2, r0
	add r1, sp, #0x6c
	movs r7, #0xb8
	strh r7, [r1]
	strh r4, [r1, #2]
	ldr r3, [r3, #0x1c]
	adds r0, r2, #0
	bl sub_08091940
	movs r0, #0x1b
	bl sub_08072E38
	add r1, sp, #0x70
	movs r2, #0x50
	strh r5, [r1]
	strh r2, [r1, #2]
	movs r2, #0x1e
	bl sub_08073070
	ldr r4, _0809B364 @ =0x00000676
	adds r0, r4, #0
	bl sub_08070824
	movs r0, #0xb4
	bl sub_08072E38
	add r1, sp, #0x74
	movs r5, #0x3c
	mov r2, r8
	strh r2, [r1]
	strh r5, [r1, #2]
	movs r2, #0x1e
	bl sub_08073070
	adds r0, r4, #0
	bl sub_08070824
	movs r0, #0xb5
	bl sub_08072E38
	add r1, sp, #0x78
	strh r7, [r1]
	strh r5, [r1, #2]
	movs r2, #0x1e
	bl sub_08073070
	adds r0, r4, #0
	bl sub_08070824
	movs r0, #0x1b
	bl sub_08072E38
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r3, #0xc4
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #0x10
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl sub_0809193C
	add r0, sp, #0x1c
	bl sub_0806E274
	mov r0, sl
	bl sub_0806E274
	movs r1, #0xc6
	lsls r1, r1, #3
	mov r2, sl
	str r2, [sp]
	add r0, sp, #4
	add r2, sp, #0x10
	add r3, sp, #0x1c
	bl sub_08073460
	add r1, sp, #0x7c
	movs r3, #0
	strb r3, [r1]
	strb r3, [r1, #1]
	strb r3, [r1, #2]
	add r0, sp, #4
	movs r2, #0
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	mov r0, sl
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #0x1c
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #0x10
	movs r1, #2
	bl sub_0806E308
	movs r0, #0x5a
	bl sub_0807068C
	movs r0, #1
_0809B352:
	add sp, #0x80
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809B364: .4byte 0x00000676

	thumb_func_start sub_0809B368
sub_0809B368: @ 0x0809B368
	push {r4, lr}
	adds r4, r0, #0
	b _0809B388
_0809B36E:
	adds r0, r4, #0
	bl sub_0805E0EC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809B388
	bl sub_08072A88
	cmp r0, #0
	bgt _0809B388
	movs r0, #0
	b _0809B392
_0809B388:
	bl sub_08072DFC
	cmp r0, #0
	bgt _0809B36E
	movs r0, #1
_0809B392:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0809B398
sub_0809B398: @ 0x0809B398
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0809B3A4
sub_0809B3A4: @ 0x0809B3A4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809B416
	ldr r1, [r4, #0x1c]
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809B416
	ldr r1, [r4, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #1
	bne _0809B416
	movs r2, #0xf9
	lsls r2, r2, #4
	adds r0, r4, r2
	strb r1, [r0]
	ldr r1, [r4, #0x1c]
	adds r1, #0xc8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl sub_0809193C
_0809B416:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809B420
sub_0809B420: @ 0x0809B420
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0809B478 @ =0x09F46450
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0809BCE0
	ldr r1, _0809B47C @ =0x00000F84
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809B43E
	bl sub_0805D3F4
_0809B43E:
	ldr r1, _0809B480 @ =0x00000F78
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809B44C
	bl sub_0805D3F4
_0809B44C:
	ldr r1, _0809B484 @ =0x00000F6C
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809B45A
	bl sub_0805D3F4
_0809B45A:
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809B46A
	bl sub_0805D3F4
_0809B46A:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0805DB84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809B478: .4byte 0x09F46450
_0809B47C: .4byte 0x00000F84
_0809B480: .4byte 0x00000F78
_0809B484: .4byte 0x00000F6C

	thumb_func_start sub_0809B488
sub_0809B488: @ 0x0809B488
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xec
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809B4B2
	adds r0, r4, #0
	bl sub_0805EA38
	b _0809B4CC
_0809B4B2:
	movs r1, #0x80
	lsls r1, r1, #1
	mov r2, sp
	movs r0, #1
	strb r0, [r2]
	add r2, sp, #4
	movs r0, #0
	strb r0, [r2]
	movs r0, #0
	movs r2, #0x40
	movs r3, #1
	bl sub_08074518
_0809B4CC:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0809B4D4
sub_0809B4D4: @ 0x0809B4D4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0809B52C @ =0x09F46450
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0809BCE0
	ldr r1, _0809B530 @ =0x00000F84
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809B4F2
	bl sub_0805D3F4
_0809B4F2:
	ldr r1, _0809B534 @ =0x00000F78
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809B500
	bl sub_0805D3F4
_0809B500:
	ldr r1, _0809B538 @ =0x00000F6C
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809B50E
	bl sub_0805D3F4
_0809B50E:
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809B51E
	bl sub_0805D3F4
_0809B51E:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0805DB84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809B52C: .4byte 0x09F46450
_0809B530: .4byte 0x00000F84
_0809B534: .4byte 0x00000F78
_0809B538: .4byte 0x00000F6C

	thumb_func_start sub_0809B53C
sub_0809B53C: @ 0x0809B53C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
	b _0809B5DA
_0809B544:
	adds r0, r5, #0
	bl sub_08072AA4
	ldr r2, [r0, #0x1c]
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	movs r3, #0xf6
	lsls r3, r3, #4
	adds r1, r6, r3
	lsls r4, r5, #2
	ldr r1, [r1, #8]
	adds r1, r1, r4
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl sub_0809193C
	adds r0, r5, #0
	bl sub_08072AA4
	ldr r2, [r0, #0x1c]
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, _0809B604 @ =0x00000F6C
	adds r1, r6, r3
	ldr r1, [r1, #8]
	adds r1, r1, r4
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl sub_0809193C
	adds r0, r5, #0
	bl sub_08072AA4
	ldr r2, [r0, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, _0809B608 @ =0x00000F78
	adds r1, r6, r3
	ldr r1, [r1, #8]
	adds r1, r1, r4
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl sub_0809193C
	adds r0, r5, #0
	bl sub_08072AA4
	ldr r2, [r0, #0x1c]
	movs r1, #0xda
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, _0809B60C @ =0x00000F84
	adds r1, r6, r3
	ldr r1, [r1, #8]
	adds r1, r1, r4
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl sub_0809193C
	adds r5, #1
_0809B5DA:
	bl sub_08072A88
	cmp r5, r0
	blt _0809B544
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r6, r1
	movs r1, #0
	str r1, [r0, #4]
	ldr r2, _0809B604 @ =0x00000F6C
	adds r0, r6, r2
	str r1, [r0, #4]
	ldr r3, _0809B608 @ =0x00000F78
	adds r0, r6, r3
	str r1, [r0, #4]
	adds r2, #0x18
	adds r0, r6, r2
	str r1, [r0, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809B604: .4byte 0x00000F6C
_0809B608: .4byte 0x00000F78
_0809B60C: .4byte 0x00000F84

	thumb_func_start sub_0809B610
sub_0809B610: @ 0x0809B610
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #0x10]
	movs r0, #0
	b _0809B880
_0809B622:
	mov r0, sb
	bl sub_08072AA4
	ldr r2, [r0, #0x1c]
	movs r1, #0xe4
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	str r0, [sp]
	ldr r0, [sp, #0x10]
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r4, r0, r1
	mov sl, sp
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r4]
	add r7, sp, #4
	add r3, sp, #8
	mov r8, r3
	mov r1, sp
	adds r1, #0xc
	str r1, [sp, #0x18]
	mov r3, sb
	adds r3, #1
	str r3, [sp, #0x14]
	cmp r0, r5
	bge _0809B69C
	lsls r0, r5, #1
	movs r1, #4
	cmp r1, r0
	bge _0809B66E
	adds r1, r0, #0
_0809B66E:
	adds r5, r1, #0
	lsls r0, r5, #2
	bl sub_0805D3C8
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0809B68E
	adds r1, r0, #0
_0809B684:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0809B684
_0809B68E:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0809B698
	bl sub_0805D3F4
_0809B698:
	str r5, [r4]
	str r6, [r4, #8]
_0809B69C:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, sl
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r0, sb
	bl sub_08072AA4
	ldr r2, [r0, #0x1c]
	movs r1, #0xe6
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	ldr r1, _0809B89C @ =0x00000F6C
	adds r4, r0, r1
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r4]
	cmp r0, r5
	bge _0809B712
	lsls r0, r5, #1
	movs r1, #4
	cmp r1, r0
	bge _0809B6E4
	adds r1, r0, #0
_0809B6E4:
	adds r5, r1, #0
	lsls r0, r5, #2
	bl sub_0805D3C8
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0809B704
	adds r1, r0, #0
_0809B6FA:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0809B6FA
_0809B704:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0809B70E
	bl sub_0805D3F4
_0809B70E:
	str r5, [r4]
	str r6, [r4, #8]
_0809B712:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r0, sb
	bl sub_08072AA4
	ldr r2, [r0, #0x1c]
	movs r3, #0xea
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	ldr r1, _0809B8A0 @ =0x00000F78
	adds r4, r0, r1
	mov r7, r8
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r4]
	cmp r0, r5
	bge _0809B788
	lsls r0, r5, #1
	movs r1, #4
	cmp r1, r0
	bge _0809B75A
	adds r1, r0, #0
_0809B75A:
	adds r5, r1, #0
	lsls r0, r5, #2
	bl sub_0805D3C8
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0809B77A
	adds r1, r0, #0
_0809B770:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0809B770
_0809B77A:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0809B784
	bl sub_0805D3F4
_0809B784:
	str r5, [r4]
	str r6, [r4, #8]
_0809B788:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r0, sb
	bl sub_08072AA4
	ldr r2, [r0, #0x1c]
	movs r3, #0xec
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r1, _0809B8A4 @ =0x00000F84
	adds r4, r0, r1
	ldr r7, [sp, #0x18]
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r4]
	cmp r0, r5
	bge _0809B7FE
	lsls r0, r5, #1
	movs r1, #4
	cmp r1, r0
	bge _0809B7D0
	adds r1, r0, #0
_0809B7D0:
	adds r5, r1, #0
	lsls r0, r5, #2
	bl sub_0805D3C8
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0809B7F0
	adds r1, r0, #0
_0809B7E6:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0809B7E6
_0809B7F0:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0809B7FA
	bl sub_0805D3F4
_0809B7FA:
	str r5, [r4]
	str r6, [r4, #8]
_0809B7FE:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r0, sb
	bl sub_08072AA4
	ldr r2, [r0, #0x1c]
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #0
	bl sub_0809193C
	mov r0, sb
	bl sub_08072AA4
	ldr r2, [r0, #0x1c]
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #0
	bl sub_0809193C
	mov r0, sb
	bl sub_08072AA4
	ldr r2, [r0, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #0
	bl sub_0809193C
	mov r0, sb
	bl sub_08072AA4
	ldr r2, [r0, #0x1c]
	movs r1, #0xda
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #0
	bl sub_0809193C
	ldr r0, [sp, #0x14]
_0809B880:
	mov sb, r0
	bl sub_08072A88
	cmp sb, r0
	bge _0809B88C
	b _0809B622
_0809B88C:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809B89C: .4byte 0x00000F6C
_0809B8A0: .4byte 0x00000F78
_0809B8A4: .4byte 0x00000F84

	thumb_func_start sub_0809B8A8
sub_0809B8A8: @ 0x0809B8A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	mov sb, r1
	mov sl, r2
_0809B8B8:
	ldr r1, [r6, #0x1c]
	adds r1, #0xa0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809B99E
	ldr r1, [r6, #0x1c]
	adds r1, #0xa8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809B8EE
	b _0809B99E
_0809B8EA:
	movs r0, #1
	b _0809B9A0
_0809B8EE:
	ldr r1, [r6, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r7, #0
	movs r3, #0x8c
	lsls r3, r3, #2
	mov r8, r3
	b _0809B962
_0809B908:
	mov r0, sb
	ldr r1, [r0, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sb
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, sl
	ble _0809B8EA
	ldr r1, [r6, #0x1c]
	adds r5, r1, #0
	adds r5, #0xb8
	movs r0, #0
	ldrsh r4, [r5, r0]
	adds r4, r6, r4
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r2, [r0, #0x1c]
	adds r2, #0x88
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	adds r1, r7, #0
	bl sub_0809193C
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809B99E
	adds r7, #1
_0809B962:
	ldr r1, [r6, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r2, [r0, #0x1c]
	adds r2, #0x80
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	cmp r7, r0
	blt _0809B908
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809B8B8
_0809B99E:
	movs r0, #0
_0809B9A0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809B9B0
sub_0809B9B0: @ 0x0809B9B0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov r8, r1
	mov sb, r2
	b _0809BA8C
_0809B9C0:
	ldr r1, [r6, #0x1c]
	adds r1, #0xa0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809BA88
	ldr r1, [r6, #0x1c]
	adds r1, #0xa8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809BA88
	ldr r1, [r6, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r7, #0
	b _0809BA48
_0809BA04:
	ldr r0, [r6, #0x1c]
	adds r5, r0, #0
	adds r5, #0xb8
	movs r3, #0
	ldrsh r4, [r5, r3]
	adds r4, r6, r4
	movs r2, #0x8c
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r2, [r0, #0x1c]
	adds r2, #0x88
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	adds r1, r7, #0
	bl sub_0809193C
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809BA88
	adds r7, #1
_0809BA48:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r2, [r0, #0x1c]
	adds r2, #0x80
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	cmp r7, r0
	blt _0809BA04
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809BA8C
_0809BA88:
	movs r0, #0
	b _0809BAA8
_0809BA8C:
	mov r3, r8
	ldr r1, [r3, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, sb
	bgt _0809B9C0
	movs r0, #1
_0809BAA8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0809BAB4
sub_0809BAB4: @ 0x0809BAB4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r7, #0
	b _0809BB14
_0809BACC:
	ldr r0, [r6, #0x1c]
	adds r5, r0, #0
	adds r5, #0xb8
	movs r3, #0
	ldrsh r4, [r5, r3]
	adds r4, r6, r4
	movs r2, #0x8c
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r2, [r0, #0x1c]
	adds r2, #0x88
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	adds r1, r7, #0
	bl sub_0809193C
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809BB12
	movs r0, #0
	b _0809BB4C
_0809BB12:
	adds r7, #1
_0809BB14:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r2, [r0, #0x1c]
	adds r2, #0x80
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	cmp r7, r0
	blt _0809BACC
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
_0809BB4C:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809BB54
sub_0809BB54: @ 0x0809BB54
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0xa0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809BB8C
	ldr r1, [r4, #0x1c]
	adds r1, #0xa8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809BB8C
	movs r0, #1
	b _0809BB8E
_0809BB8C:
	movs r0, #0
_0809BB8E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0809BB94
sub_0809BB94: @ 0x0809BB94
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r1, [r0, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809BBD2
	movs r0, #0x17
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809BBD2
	ldr r0, _0809BBD8 @ =gUnknown_02004860
	movs r1, #0xe1
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0809BBDC
_0809BBD2:
	movs r0, #0
	b _0809BBDE
	.align 2, 0
_0809BBD8: .4byte gUnknown_02004860
_0809BBDC:
	adds r0, r4, #0
_0809BBDE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0809BBE4
sub_0809BBE4: @ 0x0809BBE4
	push {r4, r5, lr}
	ldr r4, [r0, #0x1c]
	movs r1, #0x9a
	lsls r1, r1, #2
	adds r4, r4, r1
	movs r1, #0
	ldrsh r5, [r4, r1]
	adds r5, r0, r5
	bl sub_0805EDAC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl sub_0809193C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0809BC10
sub_0809BC10: @ 0x0809BC10
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	mov r8, r0
	lsls r5, r2, #0x10
	lsrs r5, r5, #0x10
	add r0, sp, #4
	bl sub_0806E274
	add r6, sp, #0x10
	adds r0, r6, #0
	bl sub_0806E274
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	mov r0, r8
	adds r1, r5, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_08073460
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	mov r0, r8
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0809BC68
sub_0809BC68: @ 0x0809BC68
	push {r4, lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809BCB2
	movs r4, #0
	b _0809BCA6
_0809BC8A:
	adds r0, r4, #0
	bl sub_08072E18
	ldr r2, [r0, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	adds r4, #1
_0809BCA6:
	bl sub_08072DFC
	cmp r4, r0
	blt _0809BC8A
	movs r0, #1
	b _0809BCB4
_0809BCB2:
	movs r0, #0
_0809BCB4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809BCBC
sub_0809BCBC: @ 0x0809BCBC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0805DE24
	ldr r0, [r4, #0x1c]
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl sub_08091938
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0809BCE0
sub_0809BCE0: @ 0x0809BCE0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809BD04
	movs r0, #0
	b _0809BD34
_0809BD04:
	movs r1, #0x8a
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r2, _0809BD3C @ =gUnknown_02004110
	ldr r1, _0809BD40 @ =0x040000D4
	str r0, [r1]
	str r2, [r1, #4]
	ldr r0, _0809BD44 @ =0x80000360
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _0809BD48 @ =gUnknown_02004860
	movs r0, #0x84
	lsls r0, r0, #2
	adds r3, r2, r0
	ldr r4, [r3]
	adds r0, r5, #0
	adds r0, #0x80
	str r0, [r1]
	str r2, [r1, #4]
	ldr r0, _0809BD4C @ =0x80000410
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	str r4, [r3]
	movs r0, #1
_0809BD34:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0809BD3C: .4byte gUnknown_02004110
_0809BD40: .4byte 0x040000D4
_0809BD44: .4byte 0x80000360
_0809BD48: .4byte gUnknown_02004860
_0809BD4C: .4byte 0x80000410

	thumb_func_start sub_0809BD50
sub_0809BD50: @ 0x0809BD50
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0809BDA8 @ =0x09F46450
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0809BCE0
	ldr r1, _0809BDAC @ =0x00000F84
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809BD6E
	bl sub_0805D3F4
_0809BD6E:
	ldr r1, _0809BDB0 @ =0x00000F78
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809BD7C
	bl sub_0805D3F4
_0809BD7C:
	ldr r1, _0809BDB4 @ =0x00000F6C
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809BD8A
	bl sub_0805D3F4
_0809BD8A:
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809BD9A
	bl sub_0805D3F4
_0809BD9A:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0805DB84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809BDA8: .4byte 0x09F46450
_0809BDAC: .4byte 0x00000F84
_0809BDB0: .4byte 0x00000F78
_0809BDB4: .4byte 0x00000F6C

	thumb_func_start sub_0809BDB8
sub_0809BDB8: @ 0x0809BDB8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0x87
	lsls r0, r0, #2
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809BF18
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0809BDDC
sub_0809BDDC: @ 0x0809BDDC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0x89
	lsls r0, r0, #2
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809BFE8
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0809BE00
sub_0809BE00: @ 0x0809BE00
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0x87
	lsls r0, r0, #2
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809C0DC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0809BE24
sub_0809BE24: @ 0x0809BE24
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0x87
	lsls r0, r0, #2
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809C1B8
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0809BE48
sub_0809BE48: @ 0x0809BE48
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0x88
	lsls r0, r0, #2
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809C294
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0809BE6C
sub_0809BE6C: @ 0x0809BE6C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0x88
	lsls r0, r0, #2
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809C37C
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0809BE90
sub_0809BE90: @ 0x0809BE90
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0x87
	lsls r0, r0, #2
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809C464
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0809BEB4
sub_0809BEB4: @ 0x0809BEB4
	push {r4, lr}
	ldr r2, [r0, #0x1c]
	movs r3, #0x8d
	lsls r3, r3, #3
	adds r2, r2, r3
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r0, r0, r3
	ldr r1, [r1, #0x20]
	ldr r2, [r2, #4]
	bl sub_0809193C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809BED4
sub_0809BED4: @ 0x0809BED4
	push {r4, lr}
	ldr r2, [r0, #0x1c]
	movs r3, #0x8b
	lsls r3, r3, #3
	adds r2, r2, r3
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r0, r0, r3
	ldr r1, [r1, #0x20]
	ldr r2, [r2, #4]
	bl sub_0809193C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809BEF4
sub_0809BEF4: @ 0x0809BEF4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0x87
	lsls r0, r0, #2
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809C540
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0809BF18
sub_0809BF18: @ 0x0809BF18
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_0807A904
	ldr r0, _0809BFC4 @ =0x09F48BF8
	str r0, [r5, #0x20]
	ldr r0, _0809BFC8 @ =0x09F48C70
	str r0, [r5, #0x1c]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809BFCC @ =0x09F44FF0
	mov r8, r0
	ldr r0, _0809BFD0 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _0809BFD4 @ =gUnknown_080F52C8
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809BFD8 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _0809BFDC @ =gUnknown_080F52D0
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _0809BFE0 @ =0x09F46930
	str r0, [r5, #0x20]
	ldr r0, _0809BFE4 @ =0x09F469A8
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	movs r1, #0
	bl sub_0807BDB4
	adds r0, r5, #0
	movs r1, #7
	bl sub_0807BDB4
	adds r0, r5, #0
	movs r1, #5
	bl sub_0807BDB4
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0809BFC4: .4byte 0x09F48BF8
_0809BFC8: .4byte 0x09F48C70
_0809BFCC: .4byte 0x09F44FF0
_0809BFD0: .4byte 0x09F454B0
_0809BFD4: .4byte gUnknown_080F52C8
_0809BFD8: .4byte 0x09F45430
_0809BFDC: .4byte gUnknown_080F52D0
_0809BFE0: .4byte 0x09F46930
_0809BFE4: .4byte 0x09F469A8

	thumb_func_start sub_0809BFE8
sub_0809BFE8: @ 0x0809BFE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_0807A904
	ldr r0, _0809C0B8 @ =0x09F48BF8
	str r0, [r7, #0x20]
	ldr r0, _0809C0BC @ =0x09F48C70
	str r0, [r7, #0x1c]
	bl sub_0805D874
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0809C0C0 @ =0x09F44FF0
	ldr r0, _0809C0C4 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _0809C0C8 @ =gUnknown_080F52C8
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl sub_08068A80
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809C0CC @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _0809C0D0 @ =gUnknown_080F52D0
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl sub_08068A80
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _0809C0D4 @ =0x09F46E20
	str r0, [r7, #0x20]
	ldr r0, _0809C0D8 @ =0x09F46E98
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	bl sub_080752E8
	movs r2, #0x87
	lsls r2, r2, #2
	adds r1, r7, r2
	str r0, [r1]
	movs r0, #0x88
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_0809C840
	adds r0, r7, #0
	movs r1, #2
	bl sub_0807BDB4
	adds r0, r7, #0
	movs r1, #7
	bl sub_0807BDB4
	adds r0, r7, #0
	bl sub_0807BF70
	cmp r0, #0
	ble _0809C0A4
	adds r0, r7, #0
	movs r1, #0xb
	bl sub_0807BDB4
_0809C0A4:
	adds r0, r7, #0
	movs r1, #5
	bl sub_0807BDB4
	adds r0, r7, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809C0B8: .4byte 0x09F48BF8
_0809C0BC: .4byte 0x09F48C70
_0809C0C0: .4byte 0x09F44FF0
_0809C0C4: .4byte 0x09F454B0
_0809C0C8: .4byte gUnknown_080F52C8
_0809C0CC: .4byte 0x09F45430
_0809C0D0: .4byte gUnknown_080F52D0
_0809C0D4: .4byte 0x09F46E20
_0809C0D8: .4byte 0x09F46E98

	thumb_func_start sub_0809C0DC
sub_0809C0DC: @ 0x0809C0DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_0807A904
	ldr r0, _0809C194 @ =0x09F48BF8
	str r0, [r7, #0x20]
	ldr r0, _0809C198 @ =0x09F48C70
	str r0, [r7, #0x1c]
	bl sub_0805D874
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0809C19C @ =0x09F44FF0
	ldr r0, _0809C1A0 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _0809C1A4 @ =gUnknown_080F52C8
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl sub_08068A80
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809C1A8 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _0809C1AC @ =gUnknown_080F52D0
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl sub_08068A80
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _0809C1B0 @ =0x09F47318
	str r0, [r7, #0x20]
	ldr r0, _0809C1B4 @ =0x09F47390
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	bl sub_0809C8B4
	adds r0, r7, #0
	movs r1, #3
	bl sub_0807BDB4
	adds r0, r7, #0
	movs r1, #7
	bl sub_0807BDB4
	adds r0, r7, #0
	bl sub_0807BF70
	cmp r0, #0
	ble _0809C180
	adds r0, r7, #0
	movs r1, #0xa
	bl sub_0807BDB4
_0809C180:
	adds r0, r7, #0
	movs r1, #5
	bl sub_0807BDB4
	adds r0, r7, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809C194: .4byte 0x09F48BF8
_0809C198: .4byte 0x09F48C70
_0809C19C: .4byte 0x09F44FF0
_0809C1A0: .4byte 0x09F454B0
_0809C1A4: .4byte gUnknown_080F52C8
_0809C1A8: .4byte 0x09F45430
_0809C1AC: .4byte gUnknown_080F52D0
_0809C1B0: .4byte 0x09F47318
_0809C1B4: .4byte 0x09F47390

	thumb_func_start sub_0809C1B8
sub_0809C1B8: @ 0x0809C1B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_0807A904
	ldr r0, _0809C270 @ =0x09F48BF8
	str r0, [r7, #0x20]
	ldr r0, _0809C274 @ =0x09F48C70
	str r0, [r7, #0x1c]
	bl sub_0805D874
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0809C278 @ =0x09F44FF0
	ldr r0, _0809C27C @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _0809C280 @ =gUnknown_080F52C8
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl sub_08068A80
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809C284 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _0809C288 @ =gUnknown_080F52D0
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl sub_08068A80
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _0809C28C @ =0x09F47810
	str r0, [r7, #0x20]
	ldr r0, _0809C290 @ =0x09F47888
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	bl sub_0809C974
	adds r0, r7, #0
	movs r1, #0
	bl sub_0807BDB4
	adds r0, r7, #0
	movs r1, #7
	bl sub_0807BDB4
	adds r0, r7, #0
	bl sub_0807BF70
	cmp r0, #0
	ble _0809C25C
	adds r0, r7, #0
	movs r1, #9
	bl sub_0807BDB4
_0809C25C:
	adds r0, r7, #0
	movs r1, #5
	bl sub_0807BDB4
	adds r0, r7, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809C270: .4byte 0x09F48BF8
_0809C274: .4byte 0x09F48C70
_0809C278: .4byte 0x09F44FF0
_0809C27C: .4byte 0x09F454B0
_0809C280: .4byte gUnknown_080F52C8
_0809C284: .4byte 0x09F45430
_0809C288: .4byte gUnknown_080F52D0
_0809C28C: .4byte 0x09F47810
_0809C290: .4byte 0x09F47888

	thumb_func_start sub_0809C294
sub_0809C294: @ 0x0809C294
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_0807A904
	ldr r0, _0809C358 @ =0x09F48BF8
	str r0, [r7, #0x20]
	ldr r0, _0809C35C @ =0x09F48C70
	str r0, [r7, #0x1c]
	bl sub_0805D874
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0809C360 @ =0x09F44FF0
	ldr r0, _0809C364 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _0809C368 @ =gUnknown_080F52C8
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl sub_08068A80
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809C36C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _0809C370 @ =gUnknown_080F52D0
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl sub_08068A80
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _0809C374 @ =0x09F47D08
	str r0, [r7, #0x20]
	ldr r0, _0809C378 @ =0x09F47D80
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	bl sub_08075250
	movs r2, #0x87
	lsls r2, r2, #2
	adds r1, r7, r2
	str r0, [r1]
	adds r0, r7, #0
	bl sub_0809CCF4
	adds r0, r7, #0
	movs r1, #0
	bl sub_0807BDB4
	adds r0, r7, #0
	movs r1, #7
	bl sub_0807BDB4
	adds r0, r7, #0
	bl sub_0807BF70
	cmp r0, #0
	ble _0809C346
	adds r0, r7, #0
	movs r1, #6
	bl sub_0807BDB4
_0809C346:
	adds r0, r7, #0
	movs r1, #5
	bl sub_0807BDB4
	adds r0, r7, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809C358: .4byte 0x09F48BF8
_0809C35C: .4byte 0x09F48C70
_0809C360: .4byte 0x09F44FF0
_0809C364: .4byte 0x09F454B0
_0809C368: .4byte gUnknown_080F52C8
_0809C36C: .4byte 0x09F45430
_0809C370: .4byte gUnknown_080F52D0
_0809C374: .4byte 0x09F47D08
_0809C378: .4byte 0x09F47D80

	thumb_func_start sub_0809C37C
sub_0809C37C: @ 0x0809C37C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_0807A904
	ldr r0, _0809C440 @ =0x09F48BF8
	str r0, [r7, #0x20]
	ldr r0, _0809C444 @ =0x09F48C70
	str r0, [r7, #0x1c]
	bl sub_0805D874
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0809C448 @ =0x09F44FF0
	ldr r0, _0809C44C @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _0809C450 @ =gUnknown_080F52C8
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl sub_08068A80
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809C454 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _0809C458 @ =gUnknown_080F52D0
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl sub_08068A80
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _0809C45C @ =0x09F48200
	str r0, [r7, #0x20]
	ldr r0, _0809C460 @ =0x09F48278
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	bl sub_08075250
	movs r2, #0x87
	lsls r2, r2, #2
	adds r1, r7, r2
	str r0, [r1]
	adds r0, r7, #0
	bl sub_0809CF8C
	adds r0, r7, #0
	movs r1, #0
	bl sub_0807BDB4
	adds r0, r7, #0
	movs r1, #7
	bl sub_0807BDB4
	adds r0, r7, #0
	bl sub_0807BF70
	cmp r0, #0
	ble _0809C42E
	adds r0, r7, #0
	movs r1, #6
	bl sub_0807BDB4
_0809C42E:
	adds r0, r7, #0
	movs r1, #5
	bl sub_0807BDB4
	adds r0, r7, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809C440: .4byte 0x09F48BF8
_0809C444: .4byte 0x09F48C70
_0809C448: .4byte 0x09F44FF0
_0809C44C: .4byte 0x09F454B0
_0809C450: .4byte gUnknown_080F52C8
_0809C454: .4byte 0x09F45430
_0809C458: .4byte gUnknown_080F52D0
_0809C45C: .4byte 0x09F48200
_0809C460: .4byte 0x09F48278

	thumb_func_start sub_0809C464
sub_0809C464: @ 0x0809C464
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_0807A904
	ldr r0, _0809C51C @ =0x09F48BF8
	str r0, [r7, #0x20]
	ldr r0, _0809C520 @ =0x09F48C70
	str r0, [r7, #0x1c]
	bl sub_0805D874
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0809C524 @ =0x09F44FF0
	ldr r0, _0809C528 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _0809C52C @ =gUnknown_080F52C8
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl sub_08068A80
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809C530 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _0809C534 @ =gUnknown_080F52D0
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl sub_08068A80
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _0809C538 @ =0x09F48700
	str r0, [r7, #0x20]
	ldr r0, _0809C53C @ =0x09F48778
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	bl sub_0809D004
	adds r0, r7, #0
	movs r1, #0
	bl sub_0807BDB4
	adds r0, r7, #0
	movs r1, #7
	bl sub_0807BDB4
	adds r0, r7, #0
	bl sub_0807BF70
	cmp r0, #0
	ble _0809C508
	adds r0, r7, #0
	movs r1, #8
	bl sub_0807BDB4
_0809C508:
	adds r0, r7, #0
	movs r1, #5
	bl sub_0807BDB4
	adds r0, r7, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809C51C: .4byte 0x09F48BF8
_0809C520: .4byte 0x09F48C70
_0809C524: .4byte 0x09F44FF0
_0809C528: .4byte 0x09F454B0
_0809C52C: .4byte gUnknown_080F52C8
_0809C530: .4byte 0x09F45430
_0809C534: .4byte gUnknown_080F52D0
_0809C538: .4byte 0x09F48700
_0809C53C: .4byte 0x09F48778

	thumb_func_start sub_0809C540
sub_0809C540: @ 0x0809C540
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_0807A904
	ldr r0, _0809C5CC @ =0x09F48BF8
	str r0, [r5, #0x20]
	ldr r0, _0809C5D0 @ =0x09F48C70
	str r0, [r5, #0x1c]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809C5D4 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _0809C5D8 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _0809C5DC @ =gUnknown_080F52C8
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809C5E0 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _0809C5E4 @ =gUnknown_080F52D0
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0809C5CC: .4byte 0x09F48BF8
_0809C5D0: .4byte 0x09F48C70
_0809C5D4: .4byte 0x09F44FF0
_0809C5D8: .4byte 0x09F454B0
_0809C5DC: .4byte gUnknown_080F52C8
_0809C5E0: .4byte 0x09F45430
_0809C5E4: .4byte gUnknown_080F52D0

	thumb_func_start sub_0809C5E8
sub_0809C5E8: @ 0x0809C5E8
	push {lr}
	ldr r2, _0809C5FC @ =0x09F48BF8
	str r2, [r0, #0x20]
	ldr r2, _0809C600 @ =0x09F48C70
	str r2, [r0, #0x1c]
	bl sub_0807ACF0
	pop {r0}
	bx r0
	.align 2, 0
_0809C5FC: .4byte 0x09F48BF8
_0809C600: .4byte 0x09F48C70

	thumb_func_start sub_0809C604
sub_0809C604: @ 0x0809C604
	push {r4, lr}
	adds r4, r0, #0
	bl nullsub_31
	movs r0, #0x88
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0809C61C
sub_0809C61C: @ 0x0809C61C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	adds r6, r0, #0
	adds r7, r1, #0
	bl nullsub_32
	movs r1, #0x88
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _0809C63E
	b _0809C7D6
_0809C63E:
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809C658
	b _0809C7D6
_0809C658:
	ldr r1, [r7, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	bl sub_08072D58
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809C67A
	b _0809C7D6
_0809C67A:
	ldr r1, [r6, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r1, #0x87
	lsls r1, r1, #2
	adds r5, r6, r1
	ldr r1, [r5]
	cmp r0, r1
	bgt _0809C69C
	b _0809C7D6
_0809C69C:
	ldr r1, [r6, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	ldr r0, [r5]
	subs r4, r4, r0
	movs r0, #0x6e
	muls r0, r4, r0
	movs r1, #0x64
	bl sub_0807066C
	str r0, [sp, #0x44]
	lsls r0, r4, #6
	adds r0, r0, r4
	lsls r0, r0, #1
	movs r1, #0x64
	bl sub_0807066C
	mov sb, r0
	ldr r0, _0809C7E8 @ =0x000002FF
	bl sub_08070824
	ldr r2, [r7, #0x1c]
	movs r0, #0x90
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #0x10
	mov r8, r0
	ldr r2, [r2, #4]
	adds r1, r7, r1
	bl sub_0809193C
	ldr r2, [r7, #0x1c]
	movs r1, #0xe4
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #0x1c
	mov sl, r0
	ldr r2, [r2, #4]
	adds r1, r7, r1
	bl sub_0809193C
	ldr r2, [r6, #0x1c]
	movs r4, #0xc4
	lsls r4, r4, #1
	adds r2, r2, r4
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r5, sp, #0x28
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r6, r1
	bl sub_0809193C
	ldr r1, [r7, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	adds r2, r2, r4
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r4, sp, #0x34
	adds r0, r4, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl sub_0809193C
	str r4, [sp]
	add r0, sp, #4
	mov r1, r8
	mov r2, sl
	adds r3, r5, #0
	bl sub_080734A0
	add r1, sp, #0x40
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	mov r0, sl
	movs r1, #2
	bl sub_0806E308
	mov r0, r8
	movs r1, #2
	bl sub_0806E308
	ldr r1, [r7, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	ldr r0, [sp, #0x44]
	mov r1, sb
	bl sub_08070660
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #1
	bl sub_08073734
	ldr r1, [r7, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r2, r0, #0
	movs r0, #1
	adds r1, r6, #0
	bl sub_080730FC
_0809C7D6:
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809C7E8: .4byte 0x000002FF

	thumb_func_start sub_0809C7EC
sub_0809C7EC: @ 0x0809C7EC
	push {r4, lr}
	adds r4, r0, #0
	bl nullsub_33
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r1, #0x87
	lsls r1, r1, #2
	adds r4, r4, r1
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809C818
sub_0809C818: @ 0x0809C818
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_0807B4B8
	adds r0, r4, #0
	movs r1, #0x31
	bl sub_08073FC4
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #1
	bne _0809C83A
	movs r2, #0x88
	lsls r2, r2, #2
	adds r0, r5, r2
	strb r1, [r0]
_0809C83A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0809C840
sub_0809C840: @ 0x0809C840
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xf6
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x2e
	bl sub_0809193C
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x2f
	bl sub_0809193C
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x30
	bl sub_0809193C
	ldr r0, [r4, #0x1c]
	adds r0, r0, r5
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r2, [r0, #4]
	adds r0, r4, #0
	movs r1, #0x31
	bl sub_0809193C
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0809C898
sub_0809C898: @ 0x0809C898
	push {lr}
	ldr r2, _0809C8AC @ =0x09F48BF8
	str r2, [r0, #0x20]
	ldr r2, _0809C8B0 @ =0x09F48C70
	str r2, [r0, #0x1c]
	bl sub_0807ACF0
	pop {r0}
	bx r0
	.align 2, 0
_0809C8AC: .4byte 0x09F48BF8
_0809C8B0: .4byte 0x09F48C70

	thumb_func_start sub_0809C8B4
sub_0809C8B4: @ 0x0809C8B4
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0xf6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x2c
	bl sub_0809193C
	pop {r0}
	bx r0

	thumb_func_start sub_0809C8D0
sub_0809C8D0: @ 0x0809C8D0
	push {lr}
	ldr r2, _0809C8E4 @ =0x09F48BF8
	str r2, [r0, #0x20]
	ldr r2, _0809C8E8 @ =0x09F48C70
	str r2, [r0, #0x1c]
	bl sub_0807ACF0
	pop {r0}
	bx r0
	.align 2, 0
_0809C8E4: .4byte 0x09F48BF8
_0809C8E8: .4byte 0x09F48C70

	thumb_func_start sub_0809C8EC
sub_0809C8EC: @ 0x0809C8EC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072628
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809C96E
	bl sub_08072798
	cmp r0, #0
	bgt _0809C96E
	ldr r1, [r4, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809C96E
	bl sub_080726F8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809C938
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #9
	bgt _0809C96E
	movs r0, #8
	b _0809C952
_0809C938:
	bl sub_08072738
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809C96E
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #9
	bgt _0809C95E
	movs r0, #6
_0809C952:
	adds r1, r4, #0
	bl sub_08073F88
	bl sub_08074234
	b _0809C96E
_0809C95E:
	cmp r0, #0x1d
	bgt _0809C96E
	movs r0, #7
	adds r1, r4, #0
	bl sub_08073F88
	bl sub_08074234
_0809C96E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0809C974
sub_0809C974: @ 0x0809C974
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080728B8
	ldr r1, [r0, #0x1c]
	adds r1, #0xf8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xd6
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809C9AC
	ldr r1, [r4, #0x1c]
	movs r0, #0xf6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x25
	bl sub_0809193C
_0809C9AC:
	bl sub_080728B8
	ldr r1, [r0, #0x1c]
	adds r1, #0xf8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xd7
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809C9E0
	ldr r1, [r4, #0x1c]
	movs r0, #0xf6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x26
	bl sub_0809193C
_0809C9E0:
	bl sub_080728B8
	ldr r1, [r0, #0x1c]
	adds r1, #0xf8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xd9
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809CA14
	ldr r1, [r4, #0x1c]
	movs r0, #0xf6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x27
	bl sub_0809193C
_0809CA14:
	bl sub_080728B8
	ldr r1, [r0, #0x1c]
	adds r1, #0xf8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xd8
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809CA48
	ldr r1, [r4, #0x1c]
	movs r0, #0xf6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x28
	bl sub_0809193C
_0809CA48:
	bl sub_080728B8
	ldr r1, [r0, #0x1c]
	adds r1, #0xf8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xda
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809CA7C
	ldr r1, [r4, #0x1c]
	movs r0, #0xf6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x29
	bl sub_0809193C
_0809CA7C:
	bl sub_080728B8
	ldr r1, [r0, #0x1c]
	adds r1, #0xf8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xdb
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809CAB0
	ldr r1, [r4, #0x1c]
	movs r0, #0xf6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x2a
	bl sub_0809193C
_0809CAB0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809CAB8
sub_0809CAB8: @ 0x0809CAB8
	push {lr}
	ldr r2, _0809CACC @ =0x09F48BF8
	str r2, [r0, #0x20]
	ldr r2, _0809CAD0 @ =0x09F48C70
	str r2, [r0, #0x1c]
	bl sub_0807ACF0
	pop {r0}
	bx r0
	.align 2, 0
_0809CACC: .4byte 0x09F48BF8
_0809CAD0: .4byte 0x09F48C70

	thumb_func_start sub_0809CAD4
sub_0809CAD4: @ 0x0809CAD4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	bl sub_0807C378
	b _0809CB12
_0809CAE2:
	ldr r0, [r6, #0x1c]
	movs r1, #0xf8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xfc
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl sub_0809193C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl sub_0809193C
_0809CB12:
	ldr r1, [r6, #0x1c]
	movs r0, #0xfa
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bgt _0809CAE2
	ldr r1, [r6, #0x1c]
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x6c
	muls r1, r0, r1
	ldr r0, _0809CBC8 @ =gUnknown_02004110
	adds r1, r1, r0
	mov r8, r1
	ldr r1, [r6, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0809CBCC @ =gUnknown_080CC4E8
	adds r1, r1, r0
	adds r5, r1, #0
	adds r5, #0xc0
	movs r7, #0x1f
_0809CB74:
	ldrh r0, [r5]
	cmp r0, #0
	beq _0809CBB4
	ldrb r4, [r5, #2]
	ldr r1, [r6, #0x1c]
	movs r0, #0xc8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r4, r0
	bgt _0809CBB4
	ldrh r1, [r5]
	mov r0, r8
	movs r2, #1
	bl sub_0805C300
	ldr r2, [r6, #0x1c]
	movs r0, #0xf6
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	ldrh r1, [r5]
	ldr r2, [r2, #4]
	bl sub_0809193C
_0809CBB4:
	adds r5, #4
	subs r7, #1
	cmp r7, #0
	bge _0809CB74
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809CBC8: .4byte gUnknown_02004110
_0809CBCC: .4byte gUnknown_080CC4E8

	thumb_func_start sub_0809CBD0
sub_0809CBD0: @ 0x0809CBD0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x6c
	muls r1, r0, r1
	ldr r0, _0809CCAC @ =gUnknown_02004110
	adds r1, r1, r0
	mov r8, r1
	mov r0, r8
	bl sub_0805C1DC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809CC9E
	ldr r1, [r6, #0x1c]
	movs r0, #0xc8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0x87
	lsls r2, r2, #2
	adds r1, r6, r2
	ldr r1, [r1]
	cmp r0, r1
	ble _0809CC9E
	ldr r1, [r6, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0809CCB0 @ =gUnknown_080CC4E8
	adds r1, r1, r0
	ldr r0, _0809CCB4 @ =gUnknown_02004F94
	mov sb, r0
	adds r5, r1, #0
	adds r5, #0xc0
	movs r7, #0x1f
_0809CC56:
	ldrh r0, [r5]
	cmp r0, #0
	beq _0809CC96
	adds r1, r0, #0
	mov r0, r8
	bl sub_0805C364
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809CC96
	ldrb r4, [r5, #2]
	ldr r1, [r6, #0x1c]
	movs r2, #0xc8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r4, r0
	bgt _0809CC96
	ldrh r1, [r5]
	mov r0, r8
	movs r2, #1
	bl sub_0805C248
	movs r0, #1
	mov r1, sb
	strb r0, [r1]
_0809CC96:
	adds r5, #4
	subs r7, #1
	cmp r7, #0
	bge _0809CC56
_0809CC9E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809CCAC: .4byte gUnknown_02004110
_0809CCB0: .4byte gUnknown_080CC4E8
_0809CCB4: .4byte gUnknown_02004F94

	thumb_func_start sub_0809CCB8
sub_0809CCB8: @ 0x0809CCB8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0809CCE4 @ =0x09F47D08
	str r0, [r4, #0x20]
	ldr r0, _0809CCE8 @ =0x09F47D80
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0809CBD0
	ldr r0, _0809CCEC @ =0x09F48BF8
	str r0, [r4, #0x20]
	ldr r0, _0809CCF0 @ =0x09F48C70
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0807ACF0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809CCE4: .4byte 0x09F47D08
_0809CCE8: .4byte 0x09F47D80
_0809CCEC: .4byte 0x09F48BF8
_0809CCF0: .4byte 0x09F48C70

	thumb_func_start sub_0809CCF4
sub_0809CCF4: @ 0x0809CCF4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r1, [r7, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x6c
	muls r1, r0, r1
	ldr r0, _0809CD2C @ =gUnknown_02004110
	adds r6, r1, r0
	adds r0, r6, #0
	bl sub_0805C1DC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809CD66
	movs r5, #0
	b _0809CD5C
	.align 2, 0
_0809CD2C: .4byte gUnknown_02004110
_0809CD30:
	lsls r0, r5, #0x10
	lsrs r4, r0, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0805C364
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809CD5A
	ldr r1, [r7, #0x1c]
	movs r0, #0xf6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl sub_0809193C
_0809CD5A:
	adds r5, #1
_0809CD5C:
	adds r0, r6, #0
	bl sub_0805C21C
	cmp r5, r0
	blt _0809CD30
_0809CD66:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0809CD6C
sub_0809CD6C: @ 0x0809CD6C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	bl sub_0807C378
	b _0809CDAA
_0809CD7A:
	ldr r0, [r6, #0x1c]
	movs r1, #0xf8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xfc
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl sub_0809193C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl sub_0809193C
_0809CDAA:
	ldr r1, [r6, #0x1c]
	movs r0, #0xfa
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bgt _0809CD7A
	ldr r1, [r6, #0x1c]
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x6c
	muls r1, r0, r1
	ldr r0, _0809CE60 @ =gUnknown_02004110
	adds r1, r1, r0
	mov r8, r1
	ldr r1, [r6, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0809CE64 @ =gUnknown_080CC4E8
	adds r1, r1, r0
	adds r5, r1, #0
	adds r5, #0xc0
	movs r7, #0x1f
_0809CE0C:
	ldrh r0, [r5]
	cmp r0, #0
	beq _0809CE4C
	ldrb r4, [r5, #2]
	ldr r1, [r6, #0x1c]
	movs r0, #0xc8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r4, r0
	bgt _0809CE4C
	ldrh r1, [r5]
	mov r0, r8
	movs r2, #1
	bl sub_0805C300
	ldr r2, [r6, #0x1c]
	movs r0, #0xf6
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	ldrh r1, [r5]
	ldr r2, [r2, #4]
	bl sub_0809193C
_0809CE4C:
	adds r5, #4
	subs r7, #1
	cmp r7, #0
	bge _0809CE0C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809CE60: .4byte gUnknown_02004110
_0809CE64: .4byte gUnknown_080CC4E8

	thumb_func_start sub_0809CE68
sub_0809CE68: @ 0x0809CE68
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x6c
	muls r1, r0, r1
	ldr r0, _0809CF44 @ =gUnknown_02004110
	adds r1, r1, r0
	mov r8, r1
	mov r0, r8
	bl sub_0805C1DC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809CF36
	ldr r1, [r6, #0x1c]
	movs r0, #0xc8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0x87
	lsls r2, r2, #2
	adds r1, r6, r2
	ldr r1, [r1]
	cmp r0, r1
	ble _0809CF36
	ldr r1, [r6, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0809CF48 @ =gUnknown_080CC4E8
	adds r1, r1, r0
	ldr r0, _0809CF4C @ =gUnknown_02004F7A
	mov sb, r0
	adds r5, r1, #0
	adds r5, #0xc0
	movs r7, #0x1f
_0809CEEE:
	ldrh r0, [r5]
	cmp r0, #0
	beq _0809CF2E
	adds r1, r0, #0
	mov r0, r8
	bl sub_0805C364
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809CF2E
	ldrb r4, [r5, #2]
	ldr r1, [r6, #0x1c]
	movs r2, #0xc8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r4, r0
	bgt _0809CF2E
	ldrh r1, [r5]
	mov r0, r8
	movs r2, #1
	bl sub_0805C248
	movs r0, #1
	mov r1, sb
	strb r0, [r1]
_0809CF2E:
	adds r5, #4
	subs r7, #1
	cmp r7, #0
	bge _0809CEEE
_0809CF36:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809CF44: .4byte gUnknown_02004110
_0809CF48: .4byte gUnknown_080CC4E8
_0809CF4C: .4byte gUnknown_02004F7A

	thumb_func_start sub_0809CF50
sub_0809CF50: @ 0x0809CF50
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0809CF7C @ =0x09F48200
	str r0, [r4, #0x20]
	ldr r0, _0809CF80 @ =0x09F48278
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0809CE68
	ldr r0, _0809CF84 @ =0x09F48BF8
	str r0, [r4, #0x20]
	ldr r0, _0809CF88 @ =0x09F48C70
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0807ACF0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809CF7C: .4byte 0x09F48200
_0809CF80: .4byte 0x09F48278
_0809CF84: .4byte 0x09F48BF8
_0809CF88: .4byte 0x09F48C70

	thumb_func_start sub_0809CF8C
sub_0809CF8C: @ 0x0809CF8C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r1, [r7, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x6c
	muls r1, r0, r1
	ldr r0, _0809CFC4 @ =gUnknown_02004110
	adds r6, r1, r0
	adds r0, r6, #0
	bl sub_0805C1DC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809CFFE
	movs r5, #0
	b _0809CFF4
	.align 2, 0
_0809CFC4: .4byte gUnknown_02004110
_0809CFC8:
	lsls r0, r5, #0x10
	lsrs r4, r0, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0805C364
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809CFF2
	ldr r1, [r7, #0x1c]
	movs r0, #0xf6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl sub_0809193C
_0809CFF2:
	adds r5, #1
_0809CFF4:
	adds r0, r6, #0
	bl sub_0805C21C
	cmp r5, r0
	blt _0809CFC8
_0809CFFE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0809D004
sub_0809D004: @ 0x0809D004
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xf6
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x20
	bl sub_0809193C
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x21
	bl sub_0809193C
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x22
	bl sub_0809193C
	ldr r0, [r4, #0x1c]
	adds r0, r0, r5
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r2, [r0, #4]
	adds r0, r4, #0
	movs r1, #0x23
	bl sub_0809193C
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0809D05C
sub_0809D05C: @ 0x0809D05C
	push {lr}
	ldr r2, _0809D070 @ =0x09F48BF8
	str r2, [r0, #0x20]
	ldr r2, _0809D074 @ =0x09F48C70
	str r2, [r0, #0x1c]
	bl sub_0807ACF0
	pop {r0}
	bx r0
	.align 2, 0
_0809D070: .4byte 0x09F48BF8
_0809D074: .4byte 0x09F48C70

	thumb_func_start sub_0809D078
sub_0809D078: @ 0x0809D078
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x22
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809D0A4
	ldr r0, _0809D0A0 @ =0x00000557
	b _0809D0D0
	.align 2, 0
_0809D0A0: .4byte 0x00000557
_0809D0A4:
	ldr r1, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x23
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809D0CE
	adds r0, r4, #0
	bl sub_0807BD9C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0809D0D0
_0809D0CE:
	ldr r0, _0809D0D8 @ =0x0000055A
_0809D0D0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809D0D8: .4byte 0x0000055A

	thumb_func_start sub_0809D0DC
sub_0809D0DC: @ 0x0809D0DC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x22
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809D108
	ldr r0, _0809D104 @ =0x00000556
	b _0809D134
	.align 2, 0
_0809D104: .4byte 0x00000556
_0809D108:
	ldr r1, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x23
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809D132
	adds r0, r4, #0
	bl sub_0807BD98
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0809D134
_0809D132:
	ldr r0, _0809D13C @ =0x00000559
_0809D134:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809D13C: .4byte 0x00000559

	thumb_func_start sub_0809D140
sub_0809D140: @ 0x0809D140
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x22
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809D16C
	ldr r0, _0809D168 @ =0x00000555
	b _0809D19A
	.align 2, 0
_0809D168: .4byte 0x00000555
_0809D16C:
	ldr r1, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x23
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809D196
	adds r0, r4, #0
	bl sub_0807BD74
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0809D19A
_0809D196:
	movs r0, #0xab
	lsls r0, r0, #3
_0809D19A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0809D1A0
sub_0809D1A0: @ 0x0809D1A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	cmp r1, #4
	bhi _0809D256
	movs r6, #0
	add r7, sp, #0xc
	b _0809D23E
_0809D1BA:
	ldr r1, [r5, #0x1c]
	movs r0, #0x92
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl sub_0809193C
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	adds r2, #0xf8
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl sub_0809193C
	mov r0, sp
	bl sub_08077DB8
	adds r4, r0, #0
	mov r0, sp
	movs r1, #2
	bl sub_08077D98
	lsls r4, r4, #0x10
	cmp r4, #0
	beq _0809D23C
	ldr r1, [r5, #0x1c]
	movs r2, #0x92
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl sub_0809193C
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	adds r2, #0xf8
	movs r0, #0
	ldrsh r3, [r2, r0]
	adds r0, r7, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl sub_0809193C
	adds r0, r7, #0
	bl sub_08077DB8
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r7, #0
	movs r1, #2
	bl sub_08077D98
	adds r0, r4, #0
	b _0809D258
_0809D23C:
	adds r6, #1
_0809D23E:
	ldr r1, [r5, #0x1c]
	movs r2, #0x8e
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r6, r0
	blt _0809D1BA
_0809D256:
	mov r0, r8
_0809D258:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0809D264
sub_0809D264: @ 0x0809D264
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0807BE90
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [r4, #0x1c]
	movs r2, #0x8e
	lsls r2, r2, #3
	adds r0, r0, r2
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r4, r4, r2
	ldr r2, [r0, #4]
	adds r0, r4, #0
	bl sub_0809193C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start nullsub_53
nullsub_53: @ 0x0809D294
	bx lr
	.align 2, 0

	thumb_func_start sub_0809D298
sub_0809D298: @ 0x0809D298
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	adds r7, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	adds r5, r0, #0
	ldr r4, _0809D328 @ =gUnknown_080F52D8
	ldr r1, [r7, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #4
	bl sub_0809193C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r5, r0
	blt _0809D2D4
	b _0809D4A4
_0809D2D4:
	ldr r1, [r7, #0x1c]
	movs r3, #0xac
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #4
	bl sub_0809193C
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r3, #0x94
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl sub_0809193C
	add r1, sp, #0x5c
	movs r4, #0
	strb r4, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	add r1, sp, #0xc
	mov r8, r1
	b _0809D3E2
	.align 2, 0
_0809D328: .4byte gUnknown_080F52D8
_0809D32C:
	ldr r1, [r7, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl sub_0809193C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, r8
	adds r2, r7, #0
	movs r3, #0
	bl sub_080649AC
	mov r0, r8
	bl sub_08064F98
	adds r6, r0, #0
	mov r0, r8
	movs r1, #2
	bl sub_080649E8
	adds r0, r4, #1
	mov sb, r0
	cmp r6, #4
	bne _0809D3E0
	ldr r1, [r7, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl sub_0809193C
	add r1, sp, #0x60
	strh r0, [r1]
	mov r5, sp
	mov sl, r1
	ldr r0, [sp, #4]
	adds r4, r0, #1
	ldr r0, [sp]
	cmp r0, r4
	bge _0809D3CE
	lsls r0, r4, #1
	movs r1, #4
	cmp r6, r0
	bge _0809D39C
	adds r1, r0, #0
_0809D39C:
	adds r4, r1, #0
	lsls r0, r4, #1
	bl sub_0805D3C8
	adds r6, r0, #0
	ldr r3, [sp, #8]
	adds r2, r6, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _0809D3C0
	adds r1, r0, #0
_0809D3B2:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _0809D3B2
_0809D3C0:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0809D3CA
	bl sub_0805D3F4
_0809D3CA:
	str r4, [r5]
	str r6, [r5, #8]
_0809D3CE:
	ldr r2, [r5, #4]
	ldr r1, [r5, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	mov r3, sl
	ldrh r1, [r3]
	strh r1, [r0]
	adds r2, #1
	str r2, [r5, #4]
_0809D3E0:
	mov r4, sb
_0809D3E2:
	ldr r1, [r7, #0x1c]
	movs r0, #0x83
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r4, r0
	blt _0809D32C
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x27
	bgt _0809D40A
	movs r0, #5
	b _0809D48A
_0809D40A:
	cmp r0, #0x4f
	bgt _0809D488
	movs r0, #0
	ldr r1, [sp, #4]
	cmp r1, #0
	bgt _0809D418
	movs r0, #1
_0809D418:
	cmp r0, #0
	bne _0809D488
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	adds r5, r0, #0
	ldr r2, [r7, #0x1c]
	movs r3, #0x85
	lsls r3, r3, #3
	adds r6, r2, r3
	movs r0, #0
	ldrsh r4, [r6, r0]
	adds r4, r7, r4
	movs r1, #0x88
	lsls r1, r1, #3
	adds r2, r2, r1
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, r7, r0
	lsls r5, r5, #1
	ldr r1, [sp, #8]
	adds r1, r1, r5
	ldrh r1, [r1]
	ldr r2, [r2, #4]
	bl sub_0809193C
	adds r1, r0, #0
	ldr r2, [r6, #4]
	adds r0, r4, #0
	bl sub_0809193C
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, [sp, #8]
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r1, r7, #0
	bl sub_08074098
	adds r4, r0, #0
	bl sub_08072A88
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	bl sub_08072AA4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_080742EC
	b _0809D494
_0809D488:
	movs r0, #2
_0809D48A:
	adds r1, r7, #0
	bl sub_08073F88
	bl sub_08074234
_0809D494:
	adds r4, r0, #0
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0809D4A0
	bl sub_0805D3F4
_0809D4A0:
	adds r0, r4, #0
	b _0809D4A6
_0809D4A4:
	movs r0, #0
_0809D4A6:
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809D4B8
sub_0809D4B8: @ 0x0809D4B8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809D4EE
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08075010
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809D4EE
	movs r0, #0
	b _0809D4F0
_0809D4EE:
	movs r0, #1
_0809D4F0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start nullsub_52
nullsub_52: @ 0x0809D4F8
	bx lr
	.align 2, 0

	thumb_func_start sub_0809D4FC
sub_0809D4FC: @ 0x0809D4FC
	push {lr}
	ldr r2, _0809D510 @ =0x09F48BF8
	str r2, [r0, #0x20]
	ldr r2, _0809D514 @ =0x09F48C70
	str r2, [r0, #0x1c]
	bl sub_0807ACF0
	pop {r0}
	bx r0
	.align 2, 0
_0809D510: .4byte 0x09F48BF8
_0809D514: .4byte 0x09F48C70

	thumb_func_start sub_0809D518
sub_0809D518: @ 0x0809D518
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809D8A0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809D538
sub_0809D538: @ 0x0809D538
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809D8BC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809D558
sub_0809D558: @ 0x0809D558
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809D8D8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809D578
sub_0809D578: @ 0x0809D578
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809D8F4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809D598
sub_0809D598: @ 0x0809D598
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809D910
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809D5B8
sub_0809D5B8: @ 0x0809D5B8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809D954
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809D5D8
sub_0809D5D8: @ 0x0809D5D8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809D970
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809D5F8
sub_0809D5F8: @ 0x0809D5F8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809D98C
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809D618
sub_0809D618: @ 0x0809D618
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809D9A8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809D638
sub_0809D638: @ 0x0809D638
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809D9C4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809D658
sub_0809D658: @ 0x0809D658
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809D9E0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809D678
sub_0809D678: @ 0x0809D678
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809D9FC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809D698
sub_0809D698: @ 0x0809D698
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809DA18
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809D6B8
sub_0809D6B8: @ 0x0809D6B8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08074614
	cmp r0, #0
	beq _0809D6E4
	adds r4, r5, #0
	adds r4, #0x60
	bl sub_08074614
	ldr r1, [r0, #0x1c]
	adds r1, #0xc8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_080702C0
_0809D6E4:
	bl sub_08074614
	cmp r0, #0
	beq _0809D708
	bl sub_08074614
	ldr r1, [r0, #0x1c]
	adds r1, #0x90
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809D720
_0809D708:
	ldr r1, [r5, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #4
	movs r2, #0
	bl sub_08091940
_0809D720:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809D728
sub_0809D728: @ 0x0809D728
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r6, #0x58]
	cmp r0, #4
	bhi _0809D7CE
	lsls r0, r0, #2
	ldr r1, _0809D73C @ =_0809D740
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809D73C: .4byte _0809D740
_0809D740: @ jump table
	.4byte _0809D7CE @ case 0
	.4byte _0809D79C @ case 1
	.4byte _0809D754 @ case 2
	.4byte _0809D7B6 @ case 3
	.4byte _0809D7CE @ case 4
_0809D754:
	ldr r0, [r6, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl sub_0809193C
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809D79C
	ldr r1, [r6, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r3, [r1, #4]
	movs r1, #3
	b _0809D7AE
_0809D79C:
	ldr r1, [r6, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r3, [r1, #4]
	movs r1, #4
_0809D7AE:
	movs r2, #0
	bl sub_08091940
	b _0809D7CE
_0809D7B6:
	ldr r1, [r6, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r3, [r1, #4]
	movs r1, #4
	movs r2, #0
	bl sub_08091940
_0809D7CE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0809D7D4
sub_0809D7D4: @ 0x0809D7D4
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x58]
	cmp r0, #4
	bhi _0809D832
	lsls r0, r0, #2
	ldr r1, _0809D7E8 @ =_0809D7EC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809D7E8: .4byte _0809D7EC
_0809D7EC: @ jump table
	.4byte _0809D832 @ case 0
	.4byte _0809D832 @ case 1
	.4byte _0809D800 @ case 2
	.4byte _0809D81A @ case 3
	.4byte _0809D832 @ case 4
_0809D800:
	ldr r1, [r2, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r3, [r1, #4]
	movs r1, #4
	movs r2, #0
	bl sub_08091940
	b _0809D832
_0809D81A:
	ldr r1, [r2, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl sub_08091940
_0809D832:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809D838
sub_0809D838: @ 0x0809D838
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x58]
	cmp r0, #1
	bne _0809D85A
	ldr r1, [r2, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0
	bl sub_08091940
_0809D85A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809D860
sub_0809D860: @ 0x0809D860
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x98
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809DA34
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809D880
sub_0809D880: @ 0x0809D880
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809DA68
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809D8A0
sub_0809D8A0: @ 0x0809D8A0
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809D8B8 @ =0x09F49158
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809D8B8: .4byte 0x09F49158

	thumb_func_start sub_0809D8BC
sub_0809D8BC: @ 0x0809D8BC
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809D8D4 @ =0x09F493F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809D8D4: .4byte 0x09F493F8

	thumb_func_start sub_0809D8D8
sub_0809D8D8: @ 0x0809D8D8
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809D8F0 @ =0x09F496A0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809D8F0: .4byte 0x09F496A0

	thumb_func_start sub_0809D8F4
sub_0809D8F4: @ 0x0809D8F4
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809D90C @ =0x09F49948
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809D90C: .4byte 0x09F49948

	thumb_func_start sub_0809D910
sub_0809D910: @ 0x0809D910
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809D944 @ =0x09F49BE8
	str r0, [r4, #0x1c]
	ldr r0, _0809D948 @ =gUnknown_02004860
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r2, _0809D94C @ =gUnknown_02002214
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r1, r0
	beq _0809D93A
	str r1, [r2]
	ldr r1, _0809D950 @ =gUnknown_02002210
	movs r0, #0
	str r0, [r1]
_0809D93A:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809D944: .4byte 0x09F49BE8
_0809D948: .4byte gUnknown_02004860
_0809D94C: .4byte gUnknown_02002214
_0809D950: .4byte gUnknown_02002210

	thumb_func_start sub_0809D954
sub_0809D954: @ 0x0809D954
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809D96C @ =0x09F49E88
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809D96C: .4byte 0x09F49E88

	thumb_func_start sub_0809D970
sub_0809D970: @ 0x0809D970
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809D988 @ =0x09F4A128
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809D988: .4byte 0x09F4A128

	thumb_func_start sub_0809D98C
sub_0809D98C: @ 0x0809D98C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809D9A4 @ =0x09F4A3C8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809D9A4: .4byte 0x09F4A3C8

	thumb_func_start sub_0809D9A8
sub_0809D9A8: @ 0x0809D9A8
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809D9C0 @ =0x09F4A668
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809D9C0: .4byte 0x09F4A668

	thumb_func_start sub_0809D9C4
sub_0809D9C4: @ 0x0809D9C4
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809D9DC @ =0x09F4A910
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809D9DC: .4byte 0x09F4A910

	thumb_func_start sub_0809D9E0
sub_0809D9E0: @ 0x0809D9E0
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809D9F8 @ =0x09F4ABB8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809D9F8: .4byte 0x09F4ABB8

	thumb_func_start sub_0809D9FC
sub_0809D9FC: @ 0x0809D9FC
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809DA14 @ =0x09F4AE60
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809DA14: .4byte 0x09F4AE60

	thumb_func_start sub_0809DA18
sub_0809DA18: @ 0x0809DA18
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809DA30 @ =0x09F4B108
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809DA30: .4byte 0x09F4B108

	thumb_func_start sub_0809DA34
sub_0809DA34: @ 0x0809DA34
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809DA64 @ =0x09F4B3B0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x60
	bl sub_0806FF38
	movs r0, #0x64
	str r0, [r4, #0x4c]
	movs r0, #0
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	str r0, [r4, #0x5c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809DA64: .4byte 0x09F4B3B0

	thumb_func_start sub_0809DA68
sub_0809DA68: @ 0x0809DA68
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809DA80 @ =0x09F4B6A8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809DA80: .4byte 0x09F4B6A8

	thumb_func_start sub_0809DA84
sub_0809DA84: @ 0x0809DA84
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r0, _0809DACC @ =0x000002A2
	bl sub_080707E4
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809DAD0 @ =0x000001E9
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl sub_08091940
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809DACC: .4byte 0x000002A2
_0809DAD0: .4byte 0x000001E9

	thumb_func_start sub_0809DAD4
sub_0809DAD4: @ 0x0809DAD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	mov sl, r0
	adds r0, r1, #0
	bl sub_08072DD0
	adds r7, r0, #0
	cmp r7, #0
	bne _0809DAF0
	b _0809DC18
_0809DAF0:
	mov r0, sp
	bl sub_0806E274
	mov r0, sl
	ldr r5, [r0, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r5, r5, r1
	movs r2, #0
	ldrsh r6, [r5, r2]
	add r6, sl
	ldr r1, [r7, #0x1c]
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r2, r0, #0
	movs r0, #0xf9
	lsls r0, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	add r4, sp, #0xc
	adds r0, r4, #0
	ldr r3, [r5, #4]
	adds r1, r6, #0
	bl sub_08091940
	mov r0, sp
	adds r1, r4, #0
	bl sub_0806E374
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	ldr r1, _0809DB58 @ =0x0000FF01
	mov r0, sp
	bl sub_0806E34C
	movs r6, #0
	movs r1, #1
	str r1, [sp, #0x1c]
	mov r8, r4
	add r2, sp, #0x18
	mov sb, r2
	b _0809DBE4
	.align 2, 0
_0809DB58: .4byte 0x0000FF01
_0809DB5C:
	ldr r1, [r7, #0x1c]
	movs r0, #0xdc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl sub_0809193C
	lsls r0, r0, #0x10
	movs r1, #0xf3
	lsls r1, r1, #0x11
	cmp r0, r1
	beq _0809DBE2
	mov r0, sl
	ldr r4, [r0, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r4, r4, r1
	movs r2, #0
	ldrsh r5, [r4, r2]
	add r5, sl
	ldr r1, [r7, #0x1c]
	movs r0, #0xdc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl sub_0809193C
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, r8
	ldr r3, [r4, #4]
	adds r1, r5, #0
	bl sub_08091940
	mov r0, sp
	bl sub_0806E414
	cmp r0, #0
	ble _0809DBD2
	movs r0, #1
	ldr r1, [sp, #0x1c]
	ands r0, r1
	adds r1, #1
	str r1, [sp, #0x1c]
	cmp r0, #0
	bne _0809DBD2
	ldr r1, _0809DC28 @ =0x0000FF02
	mov r0, sp
	bl sub_0806E34C
_0809DBD2:
	mov r0, sp
	mov r1, r8
	bl sub_0806E374
	mov r0, r8
	movs r1, #2
	bl sub_0806E308
_0809DBE2:
	adds r6, #1
_0809DBE4:
	ldr r1, [r7, #0x1c]
	movs r2, #0xda
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r6, r0
	blt _0809DB5C
	movs r0, #0
	add r1, sp, #0x18
	strb r0, [r1]
	mov r1, sb
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
_0809DC18:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809DC28: .4byte 0x0000FF02

	thumb_func_start sub_0809DC2C
sub_0809DC2C: @ 0x0809DC2C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	bl sub_08072D58
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809DC8E
	ldr r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x16
	beq _0809DC8A
	cmp r0, #0x16
	bgt _0809DC74
	cmp r0, #0xd
	beq _0809DC8A
	cmp r0, #0xd
	bgt _0809DC6E
	cmp r0, #0xb
	beq _0809DC8A
	b _0809DC8E
_0809DC6E:
	cmp r0, #0x11
	beq _0809DC8A
	b _0809DC8E
_0809DC74:
	cmp r0, #0xbd
	beq _0809DC8A
	cmp r0, #0xbd
	bgt _0809DC82
	cmp r0, #0x1c
	beq _0809DC8A
	b _0809DC8E
_0809DC82:
	cmp r0, #0xbe
	beq _0809DC8A
	cmp r0, #0xbf
	bne _0809DC8E
_0809DC8A:
	movs r0, #0
	b _0809DC96
_0809DC8E:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08078C7C
_0809DC96:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0809DC9C
sub_0809DC9C: @ 0x0809DC9C
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r0, _0809DCE4 @ =0x0000055B
	bl sub_080707E4
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xf4
	lsls r2, r2, #1
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl sub_08091940
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809DCE4: .4byte 0x0000055B

	thumb_func_start sub_0809DCE8
sub_0809DCE8: @ 0x0809DCE8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	bl sub_08072D58
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809DD64
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0xb
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809DD1E
_0809DD1A:
	movs r0, #1
	b _0809DD6C
_0809DD1E:
	ldr r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x6b
	beq _0809DD1A
	cmp r0, #0x6b
	bgt _0809DD52
	cmp r0, #0x48
	beq _0809DD1A
	cmp r0, #0x48
	bgt _0809DD4C
	cmp r0, #0x47
	beq _0809DD1A
	b _0809DD64
_0809DD4C:
	cmp r0, #0x63
	beq _0809DD1A
	b _0809DD64
_0809DD52:
	cmp r0, #0x96
	beq _0809DD1A
	cmp r0, #0x96
	bgt _0809DD60
	cmp r0, #0x8f
	beq _0809DD1A
	b _0809DD64
_0809DD60:
	cmp r0, #0xa2
	beq _0809DD1A
_0809DD64:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08078BB0
_0809DD6C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809DD74
sub_0809DD74: @ 0x0809DD74
	push {lr}
	bl sub_08078700
	ldr r0, _0809DD84 @ =0x000002EE
	bl sub_080707E4
	pop {r0}
	bx r0
	.align 2, 0
_0809DD84: .4byte 0x000002EE

	thumb_func_start sub_0809DD88
sub_0809DD88: @ 0x0809DD88
	push {lr}
	ldr r2, _0809DD98 @ =0x09F4B6A8
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809DD98: .4byte 0x09F4B6A8

	thumb_func_start sub_0809DD9C
sub_0809DD9C: @ 0x0809DD9C
	push {r4, lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	movs r2, #0x90
	lsls r2, r2, #2
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r1, r4
	bl sub_08091940
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809DDE0
sub_0809DDE0: @ 0x0809DDE0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	adds r7, r1, #0
	adds r0, r7, #0
	bl sub_08072DD0
	adds r6, r0, #0
	cmp r6, #0
	beq _0809DEA2
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x4a
	bgt _0809DE70
	ldr r2, [r5, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r5, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r4, [r2, #4]
	adds r1, r7, #0
	movs r2, #0x33
	movs r3, #0x64
	bl sub_08091944
	ldr r1, [r6, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl sub_0809193C
	ldr r3, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _0809DE6C @ =0x00000243
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl sub_08091940
	add r1, sp, #0x10
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	b _0809DEA2
	.align 2, 0
_0809DE6C: .4byte 0x00000243
_0809DE70:
	ldr r3, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _0809DEAC @ =0x0000023F
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl sub_08091940
	add r1, sp, #0x14
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
_0809DEA2:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809DEAC: .4byte 0x0000023F

	thumb_func_start sub_0809DEB0
sub_0809DEB0: @ 0x0809DEB0
	push {r4, r5, lr}
	adds r0, r1, #0
	bl sub_08072DD0
	adds r4, r0, #0
	cmp r4, #0
	bne _0809DEC2
	movs r0, #0
	b _0809DEFC
_0809DEC2:
	movs r5, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bne _0809DEFA
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809DEFA
	movs r5, #1
_0809DEFA:
	adds r0, r5, #0
_0809DEFC:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809DF04
sub_0809DF04: @ 0x0809DF04
	push {r4, lr}
	sub sp, #4
	ldr r3, [r0, #0x1c]
	movs r2, #0x94
	lsls r2, r2, #1
	adds r3, r3, r2
	movs r4, #0
	ldrsh r2, [r3, r4]
	adds r0, r0, r2
	mov r4, sp
	movs r2, #1
	strb r2, [r4]
	ldr r4, [r3, #4]
	movs r2, #3
	movs r3, #0x64
	bl sub_08091944
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809DF30
sub_0809DF30: @ 0x0809DF30
	push {lr}
	adds r0, r1, #0
	ldr r1, [r0, #0x1c]
	movs r2, #0xa8
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #3
	bl sub_0809193C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809DF50
sub_0809DF50: @ 0x0809DF50
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0809DF68 @ =0x00000652
	bl sub_08070824
	adds r0, r4, #0
	bl sub_08078784
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809DF68: .4byte 0x00000652

	thumb_func_start sub_0809DF6C
sub_0809DF6C: @ 0x0809DF6C
	push {lr}
	ldr r2, _0809DF7C @ =0x09F4B6A8
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809DF7C: .4byte 0x09F4B6A8

	thumb_func_start sub_0809DF80
sub_0809DF80: @ 0x0809DF80
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	movs r5, #0
	b _0809DFB2
_0809DF8A:
	adds r0, r5, #0
	bl sub_080729F8
	adds r1, r0, #0
	ldr r3, [r6, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r0, [r3, r2]
	adds r0, r6, r0
	mov r4, sp
	movs r2, #0
	strb r2, [r4]
	ldr r4, [r3, #4]
	movs r2, #0x33
	movs r3, #0x64
	bl sub_08091944
	adds r5, #1
_0809DFB2:
	bl sub_080729DC
	cmp r5, r0
	blt _0809DF8A
	movs r5, #0
	b _0809DFE6
_0809DFBE:
	adds r0, r5, #0
	bl sub_08072C7C
	adds r1, r0, #0
	ldr r3, [r6, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r0, [r3, r2]
	adds r0, r6, r0
	mov r4, sp
	movs r2, #0
	strb r2, [r4]
	ldr r4, [r3, #4]
	movs r2, #0x33
	movs r3, #0x64
	bl sub_08091944
	adds r5, #1
_0809DFE6:
	bl sub_08072C60
	cmp r5, r0
	blt _0809DFBE
	movs r5, #0
	b _0809E036
_0809DFF2:
	adds r0, r5, #0
	bl sub_08072E18
	ldr r2, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #1
	bl sub_0809193C
	adds r0, r5, #0
	bl sub_08072E18
	adds r1, r0, #0
	ldr r3, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r0, [r3, r2]
	adds r0, r6, r0
	mov r4, sp
	movs r2, #0
	strb r2, [r4]
	ldr r4, [r3, #4]
	movs r2, #0x33
	movs r3, #0x64
	bl sub_08091944
	adds r5, #1
_0809E036:
	bl sub_08072DFC
	cmp r5, r0
	blt _0809DFF2
	adds r0, r6, #0
	bl sub_08078700
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0809E04C
sub_0809E04C: @ 0x0809E04C
	push {lr}
	ldr r2, _0809E05C @ =0x09F4B6A8
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809E05C: .4byte 0x09F4B6A8

	thumb_func_start sub_0809E060
sub_0809E060: @ 0x0809E060
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	adds r5, r0, #0
	movs r0, #0x78
	bl sub_0807068C
	ldr r1, [r5, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	bl sub_080729B0
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xe6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	mov sb, r0
	ldr r1, [r4, #0x1c]
	movs r0, #0xec
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	mov sl, r0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	mov r8, r0
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl sub_0809193C
	ldr r1, [r4, #0x1c]
	movs r6, #0xda
	lsls r6, r6, #2
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl sub_0809193C
	adds r0, r5, #0
	bl sub_08078700
	ldr r1, [r4, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	mov r1, sb
	bl sub_0809193C
	ldr r0, [r4, #0x1c]
	adds r0, r0, r6
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r2, [r0, #4]
	adds r0, r4, #0
	mov r1, sl
	bl sub_0809193C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0809E120
sub_0809E120: @ 0x0809E120
	push {lr}
	ldr r2, _0809E130 @ =0x09F4B6A8
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809E130: .4byte 0x09F4B6A8

	thumb_func_start sub_0809E134
sub_0809E134: @ 0x0809E134
	push {r4, r5, r6, lr}
	sub sp, #0x14
	adds r6, r0, #0
	ldr r3, [r6, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _0809E170 @ =0x00000281
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl sub_08091940
	add r1, sp, #0x10
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	movs r5, #0
	b _0809E19C
	.align 2, 0
_0809E170: .4byte 0x00000281
_0809E174:
	adds r0, r5, #0
	bl sub_080729F8
	adds r1, r0, #0
	ldr r3, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r0, [r3, r2]
	adds r0, r6, r0
	mov r4, sp
	movs r2, #0
	strb r2, [r4]
	ldr r4, [r3, #4]
	movs r2, #0x33
	movs r3, #0x64
	bl sub_08091944
	adds r5, #1
_0809E19C:
	bl sub_080729DC
	cmp r5, r0
	blt _0809E174
	movs r5, #0
	b _0809E1D0
_0809E1A8:
	adds r0, r5, #0
	bl sub_08072C7C
	adds r1, r0, #0
	ldr r3, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r0, [r3, r2]
	adds r0, r6, r0
	mov r4, sp
	movs r2, #0
	strb r2, [r4]
	ldr r4, [r3, #4]
	movs r2, #0x33
	movs r3, #0x64
	bl sub_08091944
	adds r5, #1
_0809E1D0:
	bl sub_08072C60
	cmp r5, r0
	blt _0809E1A8
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0809E1E0
sub_0809E1E0: @ 0x0809E1E0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xa0
	lsls r2, r2, #2
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl sub_08091940
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	bl sub_080728B8
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	adds r4, #0x70
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	adds r0, r6, #0
	bl sub_080729B0
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl sub_0809193C
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0809E244
sub_0809E244: @ 0x0809E244
	push {r4, r5, r6, lr}
	movs r6, #0
	movs r4, #0
	b _0809E26A
_0809E24C:
	adds r0, r4, #0
	bl sub_080729F8
	ldr r2, [r0, #0x1c]
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	adds r6, r6, r0
	adds r4, #1
_0809E26A:
	bl sub_080729DC
	cmp r4, r0
	blt _0809E24C
	bl sub_080729DC
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_0807066C
	adds r6, r0, #0
	movs r5, #0
	movs r4, #0
	b _0809E2A4
_0809E286:
	adds r0, r4, #0
	bl sub_08072E18
	ldr r2, [r0, #0x1c]
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	adds r5, r5, r0
	adds r4, #1
_0809E2A4:
	bl sub_08072DFC
	cmp r4, r0
	blt _0809E286
	bl sub_08072DFC
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_0807066C
	adds r5, r0, #0
	ldr r0, _0809E2D4 @ =gUnknown_020047E0
	ldrb r0, [r0]
	cmp r0, #2
	beq _0809E2E8
	bl sub_08072758
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809E2D8
	movs r4, #0
	b _0809E31A
	.align 2, 0
_0809E2D4: .4byte gUnknown_020047E0
_0809E2D8:
	bl sub_08072718
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809E2E8
	cmp r6, r5
	ble _0809E2EC
_0809E2E8:
	movs r4, #0x64
	b _0809E31A
_0809E2EC:
	cmp r6, r5
	bne _0809E308
	ldr r0, _0809E304 @ =gUnknown_02002210
	ldr r1, [r0]
	adds r2, r1, #0
	adds r1, #1
	str r1, [r0]
	movs r4, #0x64
	cmp r2, #0
	bgt _0809E31A
	b _0809E318
	.align 2, 0
_0809E304: .4byte gUnknown_02002210
_0809E308:
	ldr r0, _0809E334 @ =gUnknown_02002210
	ldr r1, [r0]
	adds r2, r1, #0
	adds r1, #1
	str r1, [r0]
	movs r4, #0x64
	cmp r2, #1
	bgt _0809E31A
_0809E318:
	movs r4, #0x32
_0809E31A:
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	movs r1, #0
	cmp r0, r4
	bge _0809E32A
	movs r1, #1
_0809E32A:
	adds r0, r1, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0809E334: .4byte gUnknown_02002210

	thumb_func_start sub_0809E338
sub_0809E338: @ 0x0809E338
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	bl sub_080729DC
	cmp r0, #1
	ble _0809E380
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809E37C @ =0x0000027A
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl sub_08091940
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	b _0809E386
	.align 2, 0
_0809E37C: .4byte 0x0000027A
_0809E380:
	adds r0, r4, #0
	bl sub_08078700
_0809E386:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809E390
sub_0809E390: @ 0x0809E390
	push {lr}
	ldr r2, _0809E3A0 @ =0x09F4B6A8
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809E3A0: .4byte 0x09F4B6A8

	thumb_func_start sub_0809E3A4
sub_0809E3A4: @ 0x0809E3A4
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r4, r0, #0
	adds r6, r1, #0
	adds r0, r6, #0
	bl sub_08072938
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bne _0809E424
	movs r0, #0
	movs r1, #2
	bl sub_08070660
	cmp r0, #1
	beq _0809E3F0
	cmp r0, #1
	bgt _0809E3D0
	cmp r0, #0
	beq _0809E3D6
	b _0809E596
_0809E3D0:
	cmp r0, #2
	beq _0809E40A
	b _0809E596
_0809E3D6:
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	mov r2, sp
	strb r5, [r2]
	ldr r4, [r1, #4]
	adds r1, r6, #0
	movs r2, #0x28
	b _0809E4D2
_0809E3F0:
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	mov r2, sp
	strb r5, [r2]
	ldr r4, [r1, #4]
	adds r1, r6, #0
	movs r2, #0x29
	b _0809E4D2
_0809E40A:
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	mov r2, sp
	strb r5, [r2]
	ldr r4, [r1, #4]
	adds r1, r6, #0
	movs r2, #0x2a
	b _0809E4D2
_0809E424:
	adds r0, r6, #0
	bl sub_08072DD0
	adds r5, r0, #0
	cmp r5, #0
	bne _0809E432
	b _0809E596
_0809E432:
	movs r0, #0
	movs r1, #4
	bl sub_08070660
	cmp r0, #4
	bls _0809E440
	b _0809E596
_0809E440:
	lsls r0, r0, #2
	ldr r1, _0809E44C @ =_0809E450
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809E44C: .4byte _0809E450
_0809E450: @ jump table
	.4byte _0809E464 @ case 0
	.4byte _0809E480 @ case 1
	.4byte _0809E49C @ case 2
	.4byte _0809E4B8 @ case 3
	.4byte _0809E4DA @ case 4
_0809E464:
	ldr r2, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r4, [r2, #4]
	adds r1, r6, #0
	movs r2, #0x20
	b _0809E4D2
_0809E480:
	ldr r2, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r4, [r2, #4]
	adds r1, r6, #0
	movs r2, #0x2c
	b _0809E4D2
_0809E49C:
	ldr r2, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r4, [r2, #4]
	adds r1, r6, #0
	movs r2, #0x2d
	b _0809E4D2
_0809E4B8:
	ldr r2, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r4, [r2, #4]
	adds r1, r6, #0
	movs r2, #0x2e
_0809E4D2:
	movs r3, #0x64
	bl sub_08091944
	b _0809E596
_0809E4DA:
	ldr r1, [r5, #0x1c]
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #1
	beq _0809E564
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809E564
	ldr r1, [r5, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl sub_0809193C
	adds r0, r5, #0
	movs r1, #0x33
	movs r2, #0
	bl sub_08073E3C
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r2, #0x9c
	lsls r2, r2, #2
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl sub_08091940
	add r1, sp, #0x10
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	b _0809E596
_0809E564:
	ldr r2, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #4
	ldr r3, [r2, #4]
	adds r1, r4, r1
	movs r2, #0xec
	bl sub_08091940
	add r1, sp, #0x14
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
_0809E596:
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809E5A0
sub_0809E5A0: @ 0x0809E5A0
	push {lr}
	ldr r2, _0809E5B0 @ =0x09F4B6A8
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809E5B0: .4byte 0x09F4B6A8

	thumb_func_start sub_0809E5B4
sub_0809E5B4: @ 0x0809E5B4
	push {r4, lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	ldr r2, _0809E5F4 @ =0x0000026D
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r1, r4
	bl sub_08091940
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809E5F4: .4byte 0x0000026D

	thumb_func_start sub_0809E5F8
sub_0809E5F8: @ 0x0809E5F8
	push {r4, r5, lr}
	adds r4, r1, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	adds r5, r0, #0
	ldr r0, [r4, #0x1c]
	movs r1, #0xfc
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r2, [r0, #4]
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_0809193C
	movs r1, #0
	cmp r5, r0
	bge _0809E626
	movs r1, #1
_0809E626:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809E630
sub_0809E630: @ 0x0809E630
	push {r4, lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	ldr r2, _0809E670 @ =0x00000272
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r1, r4
	bl sub_08091940
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809E670: .4byte 0x00000272

	thumb_func_start sub_0809E674
sub_0809E674: @ 0x0809E674
	push {lr}
	adds r0, r1, #0
	ldr r1, [r0, #0x1c]
	movs r2, #0xa8
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xf
	bl sub_0809193C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809E694
sub_0809E694: @ 0x0809E694
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r0, _0809E6E4 @ =0x0000025A
	ldr r1, _0809E6E8 @ =0x00000263
	bl sub_08070660
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sp
	ldr r3, [r4, #4]
	adds r1, r5, #0
	bl sub_08091940
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809E6E4: .4byte 0x0000025A
_0809E6E8: .4byte 0x00000263

	thumb_func_start sub_0809E6EC
sub_0809E6EC: @ 0x0809E6EC
	push {lr}
	ldr r2, _0809E6FC @ =0x09F4B6A8
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809E6FC: .4byte 0x09F4B6A8

	thumb_func_start sub_0809E700
sub_0809E700: @ 0x0809E700
	push {r4, lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	ldr r2, _0809E740 @ =0x0000026B
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r1, r4
	bl sub_08091940
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809E740: .4byte 0x0000026B

	thumb_func_start sub_0809E744
sub_0809E744: @ 0x0809E744
	push {r4, r5, lr}
	adds r4, r1, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	adds r5, r0, #0
	ldr r0, [r4, #0x1c]
	movs r1, #0xfc
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r2, [r0, #4]
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_0809193C
	movs r1, #0
	cmp r5, r0
	bge _0809E772
	movs r1, #1
_0809E772:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809E77C
sub_0809E77C: @ 0x0809E77C
	push {r4, lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	ldr r2, _0809E7BC @ =0x00000271
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r1, r4
	bl sub_08091940
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809E7BC: .4byte 0x00000271

	thumb_func_start sub_0809E7C0
sub_0809E7C0: @ 0x0809E7C0
	push {lr}
	adds r0, r1, #0
	ldr r1, [r0, #0x1c]
	movs r2, #0xa8
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xe
	bl sub_0809193C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809E7E0
sub_0809E7E0: @ 0x0809E7E0
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	movs r0, #0x94
	lsls r0, r0, #2
	ldr r1, _0809E830 @ =0x00000259
	bl sub_08070660
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sp
	ldr r3, [r4, #4]
	adds r1, r5, #0
	bl sub_08091940
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809E830: .4byte 0x00000259

	thumb_func_start sub_0809E834
sub_0809E834: @ 0x0809E834
	push {lr}
	ldr r2, _0809E844 @ =0x09F4B6A8
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809E844: .4byte 0x09F4B6A8

	thumb_func_start sub_0809E848
sub_0809E848: @ 0x0809E848
	push {lr}
	ldr r2, _0809E858 @ =0x09F4B6A8
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809E858: .4byte 0x09F4B6A8

	thumb_func_start sub_0809E85C
sub_0809E85C: @ 0x0809E85C
	push {lr}
	ldr r2, _0809E86C @ =0x09F4B6A8

	thumb_func_start sub_0809E860
sub_0809E860: @ 0x0809E860
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809E86C: .4byte 0x09F4B6A8

	thumb_func_start sub_0809E870
sub_0809E870: @ 0x0809E870
	push {lr}
	ldr r2, _0809E880 @ =0x09F4B6A8
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809E880: .4byte 0x09F4B6A8

	thumb_func_start sub_0809E884
sub_0809E884: @ 0x0809E884
	push {lr}
	ldr r2, _0809E894 @ =0x09F4B6A8
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809E894: .4byte 0x09F4B6A8

	thumb_func_start sub_0809E898
sub_0809E898: @ 0x0809E898
	push {r4, lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	ldr r2, _0809E8D8 @ =0x00000242
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r1, r4
	bl sub_08091940
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809E8D8: .4byte 0x00000242

	thumb_func_start sub_0809E8DC
sub_0809E8DC: @ 0x0809E8DC
	push {lr}
	ldr r2, _0809E8EC @ =0x09F4B6A8
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809E8EC: .4byte 0x09F4B6A8

	thumb_func_start sub_0809E8F0
sub_0809E8F0: @ 0x0809E8F0
	push {lr}
	adds r3, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, [r3, #0x58]
	cmp r0, r1
	bne _0809E902
	cmp r2, #1
	bne _0809E908
_0809E902:
	str r1, [r3, #0x58]
	movs r0, #1
	b _0809E90A
_0809E908:
	movs r0, #0
_0809E90A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809E910
sub_0809E910: @ 0x0809E910
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0809E948 @ =0x000002F1
	bl sub_08002970
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	beq _0809E94C
	ldr r4, [r5, #0x50]
	subs r4, #1
	movs r0, #0x1e
	bl sub_08002998
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	ble _0809E94C
	ldr r1, [r5, #0x50]
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x1e
	bl sub_080028F4
	movs r0, #1
	b _0809E94E
	.align 2, 0
_0809E948: .4byte 0x000002F1
_0809E94C:
	movs r0, #0
_0809E94E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0809E954
sub_0809E954: @ 0x0809E954
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r6, r1, #0
	ldr r0, _0809EA94 @ =0x00000319
	bl sub_08070824
	ldr r2, [r6, #0x20]
	adds r2, #0x40
	adds r3, r6, #0
	adds r3, #0x20
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r5, sp, #0x24
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl sub_0809193C
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r0, _0809EA98 @ =0xFFFF4000
	movs r1, #0xc0
	lsls r1, r1, #8
	bl sub_08070660
	str r0, [sp]
	movs r0, #0xa0
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0xc
	bl sub_08070660
	str r0, [sp, #4]
	ldr r0, _0809EA9C @ =0xFFFC0000
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	add r1, sp, #0xc
	mov sb, r1
	add r2, sp, #0x2c
	mov r8, r2
	add r5, sp, #0x18
	add r4, sp, #0x28
	movs r3, #1
	str r3, [sp, #0x30]
	movs r7, #0
	mov sl, r7
_0809E9C0:
	ldr r3, [sp, #0xc]
	ldr r0, [sp]
	adds r3, r3, r0
	ldr r2, [sp, #0x10]
	ldr r0, [sp, #4]
	adds r2, r2, r0
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #8]
	adds r1, r1, r0
	str r3, [sp, #0x18]
	str r2, [sp, #0x1c]
	str r1, [sp, #0x20]
	adds r0, r5, #0
	adds r1, r5, #0
	movs r2, #0xc
	bl sub_08093C60
	add r1, sp, #0xc
	adds r0, r5, #0
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r0, [sp, #4]
	ldr r2, _0809EAA0 @ =0xFFFF63C0
	adds r1, r0, r2
	str r1, [sp, #4]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bge _0809EA0A
	asrs r0, r1, #1
	rsbs r0, r0, #0
	str r0, [sp, #4]
	mov r3, sl
	mov r7, sb
	str r3, [r7, #4]
	ldr r0, [sp, #0x30]
	subs r0, #1
	str r0, [sp, #0x30]
_0809EA0A:
	add r1, sp, #0x28
	mov r2, sl
	strh r2, [r1]
	strh r2, [r4, #2]
	ldr r0, [sp, #0xc]
	asrs r0, r0, #0x10
	mov r3, sp
	ldrh r3, [r3, #0x24]
	adds r0, r0, r3
	strh r0, [r1]
	mov r7, sp
	movs r0, #0x12
	ldrsh r1, [r7, r0]
	add r0, sp, #0x24
	ldrh r0, [r0, #2]
	subs r0, r0, r1
	strh r0, [r4, #2]
	ldr r2, [r6, #0x20]
	adds r0, r6, #0
	adds r0, #0x20
	movs r3, #0x18
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x1c]
	adds r1, r4, #0
	bl sub_0809193C
	movs r1, #0x16
	ldrsh r0, [r7, r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #4
	cmp r0, #4
	ble _0809EA56
	adds r2, r0, #0
_0809EA56:
	ldr r3, [r6, #0x1c]
	movs r7, #0xf4
	lsls r7, r7, #2
	adds r3, r3, r7
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r6, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add r1, sp, #0x2c
	strh r2, [r1]
	mov r7, r8
	strh r2, [r7, #2]
	ldr r2, [r3, #4]
	mov r1, r8
	bl sub_0809193C
	movs r0, #1
	bl sub_0807068C
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bge _0809E9C0
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809EA94: .4byte 0x00000319
_0809EA98: .4byte 0xFFFF4000
_0809EA9C: .4byte 0xFFFC0000
_0809EAA0: .4byte 0xFFFF63C0

	thumb_func_start sub_0809EAA4
sub_0809EAA4: @ 0x0809EAA4
	push {r4, r5, lr}
	adds r4, r1, #0
	movs r5, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bgt _0809EAE8
	ldr r1, [r4, #0x1c]
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809EAE8
	bl sub_08072DFC
	cmp r0, #1
	bgt _0809EAE8
	movs r5, #1
_0809EAE8:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0809EAF0
sub_0809EAF0: @ 0x0809EAF0
	push {r4, r5, lr}
	adds r4, r1, #0
	ldr r1, [r0, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r0, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #8
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809EB8C
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809EB8C
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809EB8C
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809EB8C
	adds r0, r4, #0
	movs r1, #0xbe
	bl sub_08072D84
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809EB8C
	movs r0, #1
	b _0809EB8E
_0809EB8C:
	movs r0, #0
_0809EB8E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0809EB94
sub_0809EB94: @ 0x0809EB94
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x50]
	cmp r0, #0xf
	ble _0809EBA0
	movs r1, #1
_0809EBA0:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809EBA8
sub_0809EBA8: @ 0x0809EBA8
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x50]
	cmp r0, #1
	ble _0809EBB4
	movs r1, #1
_0809EBB4:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809EBBC
sub_0809EBBC: @ 0x0809EBBC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xa2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r5, #0x50]
	subs r0, #1
	movs r1, #3
	bl sub_0807067C
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r5, #0x60
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FFBC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08070048
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809EC04
sub_0809EC04: @ 0x0809EC04
	push {r4, lr}
	adds r4, r1, #0
	bl sub_08074614
	cmp r0, #0
	beq _0809EC30
	bl sub_08074614
	ldr r1, [r0, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bne _0809EC30
	movs r0, #0
	b _0809EC38
_0809EC30:
	ldr r0, _0809EC40 @ =gUnknown_080F6044
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r0, [r1]
_0809EC38:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809EC40: .4byte gUnknown_080F6044

	thumb_func_start sub_0809EC44
sub_0809EC44: @ 0x0809EC44
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r6, r1, #0
	mov sb, r2
	ldr r0, [r4, #0x1c]
	movs r1, #0xd0
	adds r1, r1, r0
	mov r8, r1
	movs r2, #0
	ldrsh r5, [r1, r2]
	adds r5, r4, r5
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r1, r0, #0
	mov r0, r8
	ldr r3, [r0, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_08091940
	adds r7, r0, #0
	ldr r5, [r6, #0x1c]
	movs r1, #0xf8
	lsls r1, r1, #1
	adds r5, r5, r1
	movs r2, #0
	ldrsh r0, [r5, r2]
	adds r6, r6, r0
	ldr r0, [r4, #0x1c]
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl sub_08091938
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r6, #0
	bl sub_0809193C
	movs r1, #0
	cmp r1, r0
	bge _0809ECB4
	adds r1, r0, #0
_0809ECB4:
	muls r7, r1, r7
	adds r0, r7, #0
	movs r1, #0x64
	bl sub_0807066C
	adds r7, r0, #0
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #1
	asrs r0, r0, #4
	lsls r1, r7, #4
	adds r1, r1, r7
	asrs r1, r1, #4
	bl sub_08070660
	adds r7, r0, #0
	ldr r1, _0809ED00 @ =gUnknown_080F6004
	mov r0, sb
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	muls r0, r7, r0
	movs r1, #0x64
	bl sub_0807066C
	adds r7, r0, #0
	movs r0, #1
	cmp r0, r7
	bge _0809ECF2
	adds r0, r7, #0
_0809ECF2:
	adds r7, r0, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809ED00: .4byte gUnknown_080F6004

	thumb_func_start sub_0809ED04
sub_0809ED04: @ 0x0809ED04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r2, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	ldr r1, [r6, #0x50]
	ldr r2, [r2, #4]
	bl sub_0809193C
	ldr r1, [r6, #0x4c]
	cmp r1, r0
	bge _0809ED2E
	b _0809F08A
_0809ED2E:
	ldr r2, [r6, #0x1c]
	movs r3, #0xac
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	ldr r1, [r6, #0x50]
	ldr r2, [r2, #4]
	bl sub_0809193C
	ldr r1, [r6, #0x4c]
	subs r1, r1, r0
	str r1, [r6, #0x4c]
	ldr r2, [r6, #0x50]
	adds r2, #1
	str r2, [r6, #0x50]
	ldr r1, [r6, #0x1c]
	movs r3, #0xaa
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r3, [r1, #4]
	adds r1, r7, #0
	bl sub_08091940
	mov r8, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bne _0809ED94
	mov r3, r8
	lsrs r0, r3, #0x1f
	add r0, r8
	asrs r0, r0, #1
	movs r1, #1
	cmp r4, r0
	bge _0809ED92
	adds r1, r0, #0
_0809ED92:
	add r8, r1
_0809ED94:
	ldr r1, [r7, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809EDD0
	ldr r1, [r7, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809EDE2
_0809EDD0:
	mov r3, r8
	lsrs r0, r3, #0x1f
	add r0, r8
	asrs r1, r0, #1
	movs r0, #1
	cmp r0, r1
	bge _0809EDE0
	adds r0, r1, #0
_0809EDE0:
	mov r8, r0
_0809EDE2:
	cmp r4, #1
	bne _0809EE30
	adds r0, r7, #0
	mov r1, r8
	movs r2, #1
	bl sub_08073ABC
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r4, #1
	cmp r0, #1
	beq _0809EE10
	movs r4, #2
_0809EE10:
	ldr r1, [r6, #0x1c]
	movs r3, #0xb0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r1, r0, #0
	adds r0, r4, #0
	adds r2, r7, #0
	bl sub_08073198
	b _0809EE58
_0809EE30:
	adds r0, r7, #0
	mov r1, r8
	movs r2, #1
	bl sub_0807392C
	ldr r1, [r6, #0x1c]
	movs r3, #0xb0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r1, r0, #0
	movs r0, #1
	adds r2, r7, #0
	bl sub_08073198
_0809EE58:
	ldr r0, [r6, #0x54]
	add r0, r8
	str r0, [r6, #0x54]
	ldr r1, [r6, #0x1c]
	movs r3, #0xb0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809EEAA
	ldr r0, [r6, #0x5c]
	ldr r1, [r0, #0x1c]
	adds r1, #0xa0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	b _0809EEA4
_0809EE90:
	ldr r0, [r6, #0x5c]
	ldr r2, [r0, #0x1c]
	adds r2, #0x98
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	adds r4, #1
_0809EEA4:
	ldr r0, [r6, #0x50]
	cmp r4, r0
	blt _0809EE90
_0809EEAA:
	ldr r1, [r6, #0x1c]

	thumb_func_start sub_0809EEAC
sub_0809EEAC: @ 0x0809EEAC
	movs r0, #0xae
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r7, #0x1c]
	movs r3, #0xa8
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809EF60
	ldr r4, [r6, #0x1c]
	movs r3, #0xb6
	lsls r3, r3, #2
	adds r4, r4, r3
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r6, r5
	adds r0, r7, #0
	bl sub_08072DD0
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809EF4A
	ldr r1, [r7, #0x1c]
	movs r2, #0xac
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl sub_0809193C
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl sub_0809193C
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
_0809EF4A:
	movs r0, #0x33
	adds r1, r7, #0
	adds r2, r7, #0
	bl sub_080730FC
	adds r0, r7, #0
	movs r1, #0x16
_0809EF58:
	movs r2, #1
	bl sub_08073EE8
	b _0809F08A
_0809EF60:
	ldr r1, [r7, #0x1c]
	movs r2, #0xa8
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809F052
	ldr r4, [r6, #0x1c]
	movs r0, #0xb6
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r5, [r4, r1]
	adds r5, r6, r5
	adds r0, r7, #0
	bl sub_08072DD0
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809EFEC
	ldr r1, [r7, #0x1c]
	movs r2, #0xac
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl sub_0809193C
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl sub_0809193C
	add r1, sp, #0x10
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
_0809EFEC:
	movs r0, #0x36
	adds r1, r7, #0
	adds r2, r7, #0
	bl sub_080730FC
	ldr r1, [r6, #0x1c]
	movs r5, #0xb0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r1, #1
	cmp r1, r8
	bge _0809F012
	mov r1, r8
_0809F012:
	movs r2, #1
	bl sub_08073734
	ldr r1, [r6, #0x1c]
	movs r3, #0x96
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r6, #0x1c]
	adds r1, r1, r5
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_080730FC
	adds r0, r7, #0
	movs r1, #0x17
	b _0809EF58
_0809F052:
	ldr r1, [r7, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	ble _0809F08A
	ldr r1, [r6, #0x1c]
	movs r3, #0xb2
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809F08A
	movs r0, #1
	b _0809F08C
_0809F08A:
	movs r0, #0
_0809F08C:
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0809F098
sub_0809F098: @ 0x0809F098
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x8c
	mov sl, r0
	str r1, [sp, #0x80]
	adds r0, r1, #0
	bl sub_08072DD0
	str r0, [sp, #0x84]
	ldr r0, [sp, #0x80]
	ldr r2, [r0, #0x20]
	adds r2, #0x58
	adds r0, #0x20
	mov sb, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	add r7, sp, #0x68
	adds r0, r7, #0
	ldr r2, [r2, #4]
	add r1, sb
	bl sub_0809193C
	movs r0, #0x8e
	lsls r0, r0, #1
	bl sub_0805D3B4
	bl sub_080651C0
	adds r5, r0, #0
	mov r0, sl
	str r5, [r0, #0x5c]
	ldr r1, [r5, #0x1c]
	mov r8, r1
	movs r2, #0x68
	add r8, r2
	mov r3, r8
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r5, r5, r0
	ldr r3, [sp, #0x80]
	ldr r2, [r3, #0x20]
	adds r2, #0x40
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r4, sp, #0x6c
	adds r0, r4, #0
	ldr r2, [r2, #4]
	add r1, sb
	bl sub_0809193C
	movs r1, #2
	ldrsh r0, [r7, r1]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	add r3, sp, #0x70
	movs r1, #0
	strh r1, [r3]
	strh r0, [r3, #2]
	movs r2, #0
	ldrsh r6, [r4, r2]
	movs r0, #2
	ldrsh r2, [r4, r0]
	movs r1, #2
	ldrsh r0, [r3, r1]
	subs r2, r2, r0
	add r1, sp, #0x74
	strh r6, [r1]
	strh r2, [r1, #2]
	mov r3, r8
	ldr r2, [r3, #4]
	adds r0, r5, #0
	bl sub_0809193C
	mov r0, sl
	ldr r5, [r0, #0x5c]
	ldr r4, [r5, #0x1c]
	adds r4, #0x70
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r2, [sp, #0x80]
	ldr r0, [r2, #0x20]
	adds r0, #0x50
	movs r3, #0
	ldrsh r1, [r0, r3]
	add sb, r1
	ldr r1, [r0, #4]
	mov r0, sb
	bl sub_08091938
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl sub_0809193C
	mov r1, sl
	ldr r0, [r1, #0x5c]
	ldr r2, [r0, #0x1c]
	adds r2, #0x78
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r7, r3]
	ldr r2, [r2, #4]
	bl sub_0809193C
	mov r0, sl
	ldr r1, [r0, #0x1c]
	movs r2, #0xa8
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sl
	ldr r2, [r1, #4]
	ldr r1, [sp, #0x80]
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809F198
	b _0809F412
_0809F198:
	mov r0, sl
	ldr r1, [r0, #0x1c]
	movs r2, #0xb4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sl
	ldr r2, [r1, #4]
	ldr r1, [sp, #0x80]
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x88]
	cmp r0, #1
	beq _0809F1BC
	b _0809F412
_0809F1BC:
	add r0, sp, #4
	bl sub_08071F8C
	mov r1, sl
	ldr r0, [r1, #0x58]
	add r7, sp, #0x24
	cmp r0, #4
	bne _0809F1CE
	b _0809F2DE
_0809F1CE:
	bl sub_08074614
	adds r5, r0, #0
	adds r0, r7, #0
	bl __4Base
	ldr r2, _0809F508 @ =0x09F44FF0
	mov sb, r2
	ldr r0, _0809F50C @ =0x09F81278
	str r0, [sp, #0x40]
	mov r3, sl
	ldr r2, [r3, #0x1c]
	movs r1, #0x38
	ldrsh r0, [r2, r1]
	add r0, sl
	ldr r1, _0809F510 @ =gUnknown_080F5FE4
	ldr r3, [r1]
	ldr r4, [r1, #4]
	str r4, [sp]
	ldr r4, [r2, #0x3c]
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_08091944
	mov r2, sb
	str r2, [sp, #0x40]
	adds r0, r7, #0
	movs r1, #2
	bl sub_080689D4
	bl sub_08074614
	adds r5, r0, #0
	adds r0, r7, #0
	bl __4Base
	ldr r0, _0809F514 @ =0x09F811F8
	str r0, [sp, #0x40]
	mov r3, sl
	ldr r2, [r3, #0x1c]
	movs r1, #0x38
	ldrsh r0, [r2, r1]
	add r0, sl
	ldr r1, _0809F518 @ =gUnknown_080F5FEC
	ldr r3, [r1]
	ldr r4, [r1, #4]
	str r4, [sp]
	ldr r4, [r2, #0x3c]
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_08091944
	mov r2, sb
	str r2, [sp, #0x40]
	adds r0, r7, #0
	movs r1, #2
	bl sub_080689D4
	adds r0, r7, #0
	bl __4Base
	ldr r0, _0809F51C @ =0x09F7F730
	str r0, [sp, #0x40]
	mov r3, sl
	ldr r2, [r3, #0x1c]
	movs r1, #0x38
	ldrsh r0, [r2, r1]
	add r0, sl
	ldr r1, _0809F520 @ =gUnknown_080F5FF4
	ldr r4, [r1]
	ldr r5, [r1, #4]
	str r5, [sp]
	adds r3, r4, #0
	ldr r6, [r2, #0x3c]
	add r1, sp, #4
	adds r2, r7, #0
	bl sub_0809194C
	mov r2, sb
	str r2, [sp, #0x40]
	adds r0, r7, #0
	movs r1, #2
	bl sub_080689D4
	adds r0, r7, #0
	bl __4Base
	ldr r0, _0809F524 @ =0x09F7F530
	str r0, [sp, #0x40]
	mov r3, sl
	ldr r1, [r3, #0x1c]
	movs r2, #0x38
	ldrsh r0, [r1, r2]
	add r0, sl
	str r5, [sp]
	adds r3, r4, #0
	ldr r4, [r1, #0x3c]
	add r1, sp, #4
	adds r2, r7, #0
	bl sub_08091944
	mov r3, sb
	str r3, [sp, #0x40]
	adds r0, r7, #0
	movs r1, #2
	bl sub_080689D4
	bl sub_0806A174
	adds r6, r0, #0
	add r0, sp, #0x44
	bl __4Base
	ldr r0, _0809F528 @ =0x09F7ED20
	str r0, [sp, #0x60]
	add r5, sp, #0x44
	mov r0, sl
	ldr r2, [r0, #0x1c]
	movs r1, #0x38
	ldrsh r0, [r2, r1]
	add r0, sl
	ldr r1, _0809F52C @ =gUnknown_080F5FFC
	ldr r3, [r1]
	ldr r4, [r1, #4]
	str r4, [sp]
	ldr r4, [r2, #0x3c]
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_08091944
	mov r2, sb
	str r2, [sp, #0x60]
	adds r0, r5, #0
	movs r1, #2
	bl sub_080689D4
_0809F2DE:
	ldr r3, [sp, #0x88]
	mov r0, sl
	str r3, [r0, #0x58]
_0809F2E4:
	movs r0, #1
	bl sub_0807068C
	mov r1, sl
	ldr r0, [r1, #0x58]
	cmp r0, #4
	bne _0809F2E4
	bl sub_08074614
	adds r5, r0, #0
	add r0, sp, #0x24
	bl __4Base
	ldr r2, _0809F508 @ =0x09F44FF0
	mov sb, r2
	ldr r0, _0809F50C @ =0x09F81278
	str r0, [sp, #0x40]
	mov r3, sl
	ldr r2, [r3, #0x1c]
	adds r2, #0x48
	movs r1, #0
	ldrsh r0, [r2, r1]
	add r0, sl
	ldr r1, _0809F510 @ =gUnknown_080F5FE4
	ldr r3, [r1]
	ldr r4, [r1, #4]
	str r4, [sp]
	ldr r4, [r2, #4]
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_08091944
	mov r2, sb
	str r2, [sp, #0x40]
	adds r0, r7, #0
	movs r1, #2
	bl sub_080689D4
	bl sub_08074614
	adds r5, r0, #0
	adds r0, r7, #0
	bl __4Base
	ldr r0, _0809F514 @ =0x09F811F8
	str r0, [sp, #0x40]
	mov r3, sl
	ldr r2, [r3, #0x1c]
	adds r2, #0x48
	movs r1, #0
	ldrsh r0, [r2, r1]
	add r0, sl
	ldr r1, _0809F518 @ =gUnknown_080F5FEC
	ldr r3, [r1]
	ldr r4, [r1, #4]
	str r4, [sp]
	ldr r4, [r2, #4]
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_08091944
	mov r2, sb
	str r2, [sp, #0x40]
	adds r0, r7, #0
	movs r1, #2
	bl sub_080689D4
	adds r0, r7, #0
	bl __4Base
	ldr r0, _0809F51C @ =0x09F7F730
	str r0, [sp, #0x40]
	mov r3, sl
	ldr r2, [r3, #0x1c]
	adds r2, #0x48
	movs r1, #0
	ldrsh r0, [r2, r1]
	add r0, sl
	ldr r1, _0809F520 @ =gUnknown_080F5FF4
	ldr r4, [r1]
	ldr r5, [r1, #4]
	str r5, [sp]
	adds r3, r4, #0
	ldr r6, [r2, #4]
	add r1, sp, #4
	adds r2, r7, #0
	bl sub_0809194C
	mov r2, sb
	str r2, [sp, #0x40]
	adds r0, r7, #0
	movs r1, #2
	bl sub_080689D4
	adds r0, r7, #0
	bl __4Base
	ldr r0, _0809F524 @ =0x09F7F530
	str r0, [sp, #0x40]
	mov r3, sl
	ldr r1, [r3, #0x1c]
	adds r1, #0x48
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sl
	str r5, [sp]
	adds r3, r4, #0
	ldr r4, [r1, #4]
	add r1, sp, #4
	adds r2, r7, #0
	bl sub_08091944
	mov r3, sb
	str r3, [sp, #0x40]
	adds r0, r7, #0
	movs r1, #2
	bl sub_080689D4
	bl sub_0806A174
	adds r5, r0, #0
	adds r0, r7, #0
	bl __4Base
	ldr r0, _0809F528 @ =0x09F7ED20
	str r0, [sp, #0x40]
	mov r0, sl
	ldr r2, [r0, #0x1c]
	adds r2, #0x48
	movs r1, #0
	ldrsh r0, [r2, r1]
	add r0, sl
	ldr r1, _0809F52C @ =gUnknown_080F5FFC
	ldr r3, [r1]
	ldr r4, [r1, #4]
	str r4, [sp]
	ldr r4, [r2, #4]
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_08091944
	mov r2, sb
	str r2, [sp, #0x40]
	adds r0, r7, #0
	movs r1, #2
	bl sub_080689D4
	add r0, sp, #4
	movs r1, #2
	bl sub_08071FBC
_0809F412:
	mov r3, sl
	ldr r1, [r3, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sl
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809F462
	movs r4, #0x9e
	lsls r4, r4, #1
	adds r0, r4, #0
	bl sub_0805D3B4
	mov r3, sl
	ldr r1, [r3, #0x50]
	add r2, sp, #0x78
	movs r5, #0x78
	movs r3, #0x28
	strh r5, [r2]
	strh r3, [r2, #2]
	bl sub_080655FC
	adds r0, r4, #0
	bl sub_0805D3B4
	mov r2, sl
	ldr r1, [r2, #0x54]
	add r2, sp, #0x7c
	movs r3, #0x34
	strh r5, [r2]
	strh r3, [r2, #2]
	bl sub_08065864
_0809F462:
	mov r3, sl
	ldr r1, [r3, #0x1c]
	movs r0, #0xb2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sl
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809F49A
	ldr r0, _0809F530 @ =0x0000064C
	bl sub_08070824
	mov r3, sl
	ldr r0, [r3, #0x5c]
	ldr r1, [r0, #0x1c]
	adds r1, #0xa8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl sub_08091938
_0809F49A:
	mov r0, sl
	ldr r2, [r0, #0x5c]
	cmp r2, #0
	beq _0809F4B2
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl sub_0809193C
_0809F4B2:
	mov r0, sl
	ldr r1, [r0, #0x1c]
	movs r2, #0xb6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sl
	ldr r2, [r1, #4]
	ldr r1, [sp, #0x84]
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809F534
	mov r0, sl
	ldr r1, [r0, #0x1c]
	movs r2, #0xb8
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sl
	ldr r2, [r1, #4]
	ldr r1, [sp, #0x84]
	bl sub_0809193C
	ldr r0, [sp, #0x84]
	ldr r1, [r0, #0x1c]
	movs r2, #0xc4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	ldr r2, [sp, #0x84]
	adds r0, r2, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl sub_0809193C
	b _0809F584
	.align 2, 0
_0809F508: .4byte 0x09F44FF0
_0809F50C: .4byte 0x09F81278
_0809F510: .4byte gUnknown_080F5FE4
_0809F514: .4byte 0x09F811F8
_0809F518: .4byte gUnknown_080F5FEC
_0809F51C: .4byte 0x09F7F730
_0809F520: .4byte gUnknown_080F5FF4
_0809F524: .4byte 0x09F7F530
_0809F528: .4byte 0x09F7ED20
_0809F52C: .4byte gUnknown_080F5FFC
_0809F530: .4byte 0x0000064C
_0809F534:
	ldr r3, [sp, #0x80]
	ldr r1, [r3, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	ble _0809F584
	ldr r3, [sp, #0x80]
	ldr r1, [r3, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #3
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809F584
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x27
	bgt _0809F584
	ldr r0, [sp, #0x80]
	movs r1, #3
	movs r2, #1
	bl sub_08073EE8
_0809F584:
	bl sub_08073270
	mov r3, sl
	ldr r1, [r3, #0x1c]
	movs r0, #0xba
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sl
	ldr r1, [r1, #4]
	bl sub_08091938
	add sp, #0x8c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809F5B0
sub_0809F5B0: @ 0x0809F5B0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r0, #0x1c]
	movs r3, #0xa8
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #5
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809F5EA
	movs r0, #0x28
	b _0809F668
_0809F5EA:
	adds r0, r4, #0
	bl sub_0808067C
	adds r5, r0, #0
	cmp r5, #0x63
	bgt _0809F666
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r0, #0x1c]
	movs r3, #0xa8
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #5
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809F666
	ldr r1, [r4, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	beq _0809F658
	ldr r1, [r4, #0x1c]
	movs r3, #0xf4
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #1
	bne _0809F666
_0809F658:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	movs r1, #0x64
	bl sub_0807066C
	adds r5, r0, #0
_0809F666:
	adds r0, r5, #0
_0809F668:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809F670
sub_0809F670: @ 0x0809F670
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, r5, #0
	movs r1, #0xbe
	bl sub_08072D84
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809F6CC
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x3b
	bgt _0809F6CC
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xce
	lsls r2, r2, #3
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl sub_08091940
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	movs r0, #0
	b _0809F6D4
_0809F6CC:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08078C7C
_0809F6D4:
	add sp, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0809F6DC
sub_0809F6DC: @ 0x0809F6DC
	movs r0, #0
	bx lr

	thumb_func_start sub_0809F6E0
sub_0809F6E0: @ 0x0809F6E0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0809F708 @ =0x09F4B3B0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x60
	movs r1, #2
	bl sub_0806FFA8
	ldr r0, _0809F70C @ =0x09F4B6A8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08080424
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809F708: .4byte 0x09F4B3B0
_0809F70C: .4byte 0x09F4B6A8

	thumb_func_start sub_0809F710
sub_0809F710: @ 0x0809F710
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xb
	bl sub_08077D8C
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809F724
sub_0809F724: @ 0x0809F724
	push {r4, r5, r6, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xb0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r0, #0x1c]
	movs r6, #0xa8
	lsls r6, r6, #2
	adds r1, r1, r6
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #6
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809F79E
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r0, #0x1c]
	movs r3, #0xac
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #6
	bl sub_0809193C
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl sub_0809193C
	add r1, sp, #0xc
	b _0809F814
_0809F79E:
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x45
	bgt _0809F830
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r0, #0x1c]
	adds r1, r1, r6
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #8
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809F830
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r0, #0x1c]
	movs r3, #0xac
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #8
	bl sub_0809193C
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl sub_0809193C
	add r1, sp, #0x10
_0809F814:
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	movs r0, #0
	b _0809F836
_0809F830:
	adds r0, r4, #0
	bl sub_08078410
_0809F836:
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809F840
sub_0809F840: @ 0x0809F840
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa
	bl sub_08077D8C
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809F854
sub_0809F854: @ 0x0809F854
	push {r4, r5, r6, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xb0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r0, #0x1c]
	movs r6, #0xa8
	lsls r6, r6, #2
	adds r1, r1, r6
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #6
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809F8CE
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r0, #0x1c]
	movs r3, #0xac
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #6
	bl sub_0809193C
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl sub_0809193C
	add r1, sp, #0xc
	b _0809F944
_0809F8CE:
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x45
	bgt _0809F960
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r0, #0x1c]
	adds r1, r1, r6
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #8
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809F960
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r0, #0x1c]
	movs r3, #0xac
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #8
	bl sub_0809193C
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl sub_0809193C
	add r1, sp, #0x10
_0809F944:
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	movs r0, #0
	b _0809F966
_0809F960:
	adds r0, r4, #0
	bl sub_08078410
_0809F966:
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809F970
sub_0809F970: @ 0x0809F970
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0xa8
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809F990
sub_0809F990: @ 0x0809F990
	push {r4, r5, r6, lr}
	sub sp, #0x50
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r5, #0x1c]
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r5, r5, r1
	ldr r1, [r0, #4]
	adds r0, r5, #0
	bl sub_08091938
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	movs r3, #0
	bl sub_080649AC
	adds r0, r6, #0
	mov r1, sp
	bl sub_08064B60
	mov r0, sp
	movs r1, #2
	bl sub_080649E8
	adds r0, r6, #0
	add sp, #0x50
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809F9F0
sub_0809F9F0: @ 0x0809F9F0
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #0x25
	cmp r0, #5
	bhi _0809FA50
	lsls r0, r0, #2
	ldr r1, _0809FA1C @ =_0809FA20
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809FA1C: .4byte _0809FA20
_0809FA20: @ jump table
	.4byte _0809FA38 @ case 0
	.4byte _0809FA3C @ case 1
	.4byte _0809FA40 @ case 2
	.4byte _0809FA44 @ case 3
	.4byte _0809FA48 @ case 4
	.4byte _0809FA4C @ case 5
_0809FA38:
	movs r0, #0xd6
	b _0809FA52
_0809FA3C:
	movs r0, #0xd7
	b _0809FA52
_0809FA40:
	movs r0, #0xd9
	b _0809FA52
_0809FA44:
	movs r0, #0xd8
	b _0809FA52
_0809FA48:
	movs r0, #0xda
	b _0809FA52
_0809FA4C:
	movs r0, #0xdb
	b _0809FA52
_0809FA50:
	movs r0, #0
_0809FA52:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809FA58
sub_0809FA58: @ 0x0809FA58
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #9
	bl sub_08077D8C
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809FA6C
sub_0809FA6C: @ 0x0809FA6C
	push {r4, r5, r6, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xb0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r0, #0x1c]
	movs r6, #0xa8
	lsls r6, r6, #2
	adds r1, r1, r6
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #6
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809FAE6
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r0, #0x1c]
	movs r3, #0xac
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #6
	bl sub_0809193C
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl sub_0809193C
	add r1, sp, #0xc
	b _0809FB5C
_0809FAE6:
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x45
	bgt _0809FB78
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r0, #0x1c]
	adds r1, r1, r6
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #8
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809FB78
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r0, #0x1c]
	movs r3, #0xac
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #8
	bl sub_0809193C
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl sub_0809193C
	add r1, sp, #0x10
_0809FB5C:
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	movs r0, #0
	b _0809FB7E
_0809FB78:
	adds r0, r4, #0
	bl sub_08078410
_0809FB7E:
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809FB88
sub_0809FB88: @ 0x0809FB88
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0808067C
	adds r5, r0, #0
	cmp r5, #0x63
	bgt _0809FC06
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r0, #0x1c]
	movs r3, #0xa8
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #5
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809FC06
	ldr r1, [r4, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	beq _0809FBF8
	ldr r1, [r4, #0x1c]
	movs r3, #0xf4
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #1
	bne _0809FC06
_0809FBF8:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	movs r1, #0x64
	bl sub_0807066C
	adds r5, r0, #0
_0809FC06:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809FC10
sub_0809FC10: @ 0x0809FC10
	push {lr}
	ldr r2, _0809FC20 @ =0x09F4B6A8
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809FC20: .4byte 0x09F4B6A8

	thumb_func_start sub_0809FC24
sub_0809FC24: @ 0x0809FC24
	push {lr}
	movs r0, #0x82
	lsls r0, r0, #1
	bl sub_0805D3B4
	bl sub_08062254
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809FC38
sub_0809FC38: @ 0x0809FC38
	ldr r0, _0809FC3C @ =gUnknown_080F6D2C
	bx lr
	.align 2, 0
_0809FC3C: .4byte gUnknown_080F6D2C

	thumb_func_start sub_0809FC40
sub_0809FC40: @ 0x0809FC40
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x84
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	bl sub_0809FD44
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0809FC5C
sub_0809FC5C: @ 0x0809FC5C
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x88
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	bl sub_0809FE04
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0809FC78
sub_0809FC78: @ 0x0809FC78
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x86
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	bl sub_0809FEE4
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0809FC94
sub_0809FC94: @ 0x0809FC94
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x88
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	bl sub_0809FFB4
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0809FCB0
sub_0809FCB0: @ 0x0809FCB0
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x84
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	bl sub_080A008C
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0809FCCC
sub_0809FCCC: @ 0x0809FCCC
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x84
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	bl sub_080A014C
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0809FCE8
sub_0809FCE8: @ 0x0809FCE8
	push {r4, lr}
	ldr r2, [r0, #0x1c]
	movs r3, #0xbc
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r0, r0, r3
	ldr r1, [r1, #0x20]
	ldr r2, [r2, #4]
	bl sub_0809193C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809FD08
sub_0809FD08: @ 0x0809FD08
	push {r4, lr}
	ldr r2, [r0, #0x1c]
	movs r3, #0xba
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r0, r0, r3
	ldr r1, [r1, #0x20]
	ldr r2, [r2, #4]
	bl sub_0809193C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809FD28
sub_0809FD28: @ 0x0809FD28
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x84
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	bl sub_080A020C
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0809FD44
sub_0809FD44: @ 0x0809FD44
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08061E4C
	ldr r0, _0809FDE0 @ =0x09F4D280
	str r0, [r5, #0x20]
	ldr r0, _0809FDE4 @ =0x09F4D2F8
	str r0, [r5, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809FDE8 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _0809FDEC @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _0809FDF0 @ =gUnknown_080F741C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809FDF4 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _0809FDF8 @ =gUnknown_080F7424
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _0809FDFC @ =0x09F4BD50
	str r0, [r5, #0x20]
	ldr r0, _0809FE00 @ =0x09F4BDC8
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0809FDE0: .4byte 0x09F4D280
_0809FDE4: .4byte 0x09F4D2F8
_0809FDE8: .4byte 0x09F44FF0
_0809FDEC: .4byte 0x09F454B0
_0809FDF0: .4byte gUnknown_080F741C
_0809FDF4: .4byte 0x09F45430
_0809FDF8: .4byte gUnknown_080F7424
_0809FDFC: .4byte 0x09F4BD50
_0809FE00: .4byte 0x09F4BDC8

	thumb_func_start sub_0809FE04
sub_0809FE04: @ 0x0809FE04
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08061E4C
	ldr r0, _0809FEC0 @ =0x09F4D280
	str r0, [r5, #0x20]
	ldr r0, _0809FEC4 @ =0x09F4D2F8
	str r0, [r5, #0x1c]
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r2, #0
	mov sb, r2
	str r2, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809FEC8 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _0809FECC @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _0809FED0 @ =gUnknown_080F741C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809FED4 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _0809FED8 @ =gUnknown_080F7424
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _0809FEDC @ =0x09F4C0D0
	str r0, [r5, #0x20]
	ldr r0, _0809FEE0 @ =0x09F4C148
	str r0, [r5, #0x1c]
	movs r0, #2
	movs r1, #3
	bl sub_08070660
	movs r2, #0x86
	lsls r2, r2, #1
	adds r1, r5, r2
	str r0, [r1]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r2, sb
	str r2, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0809FEC0: .4byte 0x09F4D280
_0809FEC4: .4byte 0x09F4D2F8
_0809FEC8: .4byte 0x09F44FF0
_0809FECC: .4byte 0x09F454B0
_0809FED0: .4byte gUnknown_080F741C
_0809FED4: .4byte 0x09F45430
_0809FED8: .4byte gUnknown_080F7424
_0809FEDC: .4byte 0x09F4C0D0
_0809FEE0: .4byte 0x09F4C148

	thumb_func_start sub_0809FEE4
sub_0809FEE4: @ 0x0809FEE4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08061E4C
	ldr r0, _0809FF90 @ =0x09F4D280
	str r0, [r5, #0x20]
	ldr r0, _0809FF94 @ =0x09F4D2F8
	str r0, [r5, #0x1c]
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov sb, r1
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809FF98 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _0809FF9C @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _0809FFA0 @ =gUnknown_080F741C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809FFA4 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _0809FFA8 @ =gUnknown_080F7424
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _0809FFAC @ =0x09F4C468
	str r0, [r5, #0x20]
	ldr r0, _0809FFB0 @ =0x09F4C4E0
	str r0, [r5, #0x1c]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, sb
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0809FF90: .4byte 0x09F4D280
_0809FF94: .4byte 0x09F4D2F8
_0809FF98: .4byte 0x09F44FF0
_0809FF9C: .4byte 0x09F454B0
_0809FFA0: .4byte gUnknown_080F741C
_0809FFA4: .4byte 0x09F45430
_0809FFA8: .4byte gUnknown_080F7424
_0809FFAC: .4byte 0x09F4C468
_0809FFB0: .4byte 0x09F4C4E0

	thumb_func_start sub_0809FFB4
sub_0809FFB4: @ 0x0809FFB4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08061E4C
	ldr r0, _080A0068 @ =0x09F4D280
	str r0, [r5, #0x20]
	ldr r0, _080A006C @ =0x09F4D2F8
	str r0, [r5, #0x1c]
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A0070 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A0074 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A0078 @ =gUnknown_080F741C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A007C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A0080 @ =gUnknown_080F7424
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A0084 @ =0x09F4C7F0
	str r0, [r5, #0x20]
	ldr r0, _080A0088 @ =0x09F4C868
	str r0, [r5, #0x1c]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	movs r1, #0x86
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A0068: .4byte 0x09F4D280
_080A006C: .4byte 0x09F4D2F8
_080A0070: .4byte 0x09F44FF0
_080A0074: .4byte 0x09F454B0
_080A0078: .4byte gUnknown_080F741C
_080A007C: .4byte 0x09F45430
_080A0080: .4byte gUnknown_080F7424
_080A0084: .4byte 0x09F4C7F0
_080A0088: .4byte 0x09F4C868

	thumb_func_start sub_080A008C
sub_080A008C: @ 0x080A008C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08061E4C
	ldr r0, _080A0128 @ =0x09F4D280
	str r0, [r5, #0x20]
	ldr r0, _080A012C @ =0x09F4D2F8
	str r0, [r5, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A0130 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A0134 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A0138 @ =gUnknown_080F741C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A013C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A0140 @ =gUnknown_080F7424
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A0144 @ =0x09F4CB80
	str r0, [r5, #0x20]
	ldr r0, _080A0148 @ =0x09F4CBF8
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A0128: .4byte 0x09F4D280
_080A012C: .4byte 0x09F4D2F8
_080A0130: .4byte 0x09F44FF0
_080A0134: .4byte 0x09F454B0
_080A0138: .4byte gUnknown_080F741C
_080A013C: .4byte 0x09F45430
_080A0140: .4byte gUnknown_080F7424
_080A0144: .4byte 0x09F4CB80
_080A0148: .4byte 0x09F4CBF8

	thumb_func_start sub_080A014C
sub_080A014C: @ 0x080A014C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08061E4C
	ldr r0, _080A01E8 @ =0x09F4D280
	str r0, [r5, #0x20]
	ldr r0, _080A01EC @ =0x09F4D2F8
	str r0, [r5, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A01F0 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A01F4 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A01F8 @ =gUnknown_080F741C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A01FC @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A0200 @ =gUnknown_080F7424
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A0204 @ =0x09F4CF00
	str r0, [r5, #0x20]
	ldr r0, _080A0208 @ =0x09F4CF78
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A01E8: .4byte 0x09F4D280
_080A01EC: .4byte 0x09F4D2F8
_080A01F0: .4byte 0x09F44FF0
_080A01F4: .4byte 0x09F454B0
_080A01F8: .4byte gUnknown_080F741C
_080A01FC: .4byte 0x09F45430
_080A0200: .4byte gUnknown_080F7424
_080A0204: .4byte 0x09F4CF00
_080A0208: .4byte 0x09F4CF78

	thumb_func_start sub_080A020C
sub_080A020C: @ 0x080A020C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08061E4C
	ldr r0, _080A02A0 @ =0x09F4D280
	str r0, [r5, #0x20]
	ldr r0, _080A02A4 @ =0x09F4D2F8
	str r0, [r5, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A02A8 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A02AC @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A02B0 @ =gUnknown_080F741C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A02B4 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A02B8 @ =gUnknown_080F7424
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A02A0: .4byte 0x09F4D280
_080A02A4: .4byte 0x09F4D2F8
_080A02A8: .4byte 0x09F44FF0
_080A02AC: .4byte 0x09F454B0
_080A02B0: .4byte gUnknown_080F741C
_080A02B4: .4byte 0x09F45430
_080A02B8: .4byte gUnknown_080F7424

	thumb_func_start sub_080A02BC
sub_080A02BC: @ 0x080A02BC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x1a
	cmp r1, #0x21
	blt _080A02D8
	movs r0, #0x1c
	cmp r1, #0x42
	bge _080A02D8
	movs r0, #0x1b
_080A02D8:
	adds r1, r4, #0
	bl sub_08074124
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A02E4
sub_080A02E4: @ 0x080A02E4
	push {lr}
	ldr r2, _080A02F8 @ =0x09F4D280
	str r2, [r0, #0x20]
	ldr r2, _080A02FC @ =0x09F4D2F8
	str r2, [r0, #0x1c]
	bl sub_08062034
	pop {r0}
	bx r0
	.align 2, 0
_080A02F8: .4byte 0x09F4D280
_080A02FC: .4byte 0x09F4D2F8

	thumb_func_start sub_080A0300
sub_080A0300: @ 0x080A0300
	push {r4, lr}
	adds r4, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0x84
	lsls r0, r0, #1
	adds r3, r4, r0
	ldr r0, [r3]
	cmp r0, r1
	bne _080A0318
	cmp r2, #1
	bne _080A0344
_080A0318:
	str r1, [r3]
	ldr r1, [r4, #0x1c]
	movs r2, #0xbe
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl sub_0809193C
	movs r0, #2
	movs r1, #3
	bl sub_08070660
	movs r2, #0x86
	lsls r2, r2, #1
	adds r1, r4, r2
	str r0, [r1]
	movs r0, #1
	b _080A0346
_080A0344:
	movs r0, #0
_080A0346:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A034C
sub_080A034C: @ 0x080A034C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x22
	cmp r1, #0x1e
	blt _080A0368
	movs r0, #0x24
	cmp r1, #0x37
	bge _080A0368
	movs r0, #0x23
_080A0368:
	adds r1, r4, #0
	bl sub_08074124
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0374
sub_080A0374: @ 0x080A0374
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x1d
	cmp r1, #0x3c
	blt _080A0390
	movs r0, #0x1f
	cmp r1, #0x61
	bge _080A0390
	movs r0, #0x1e
_080A0390:
	adds r1, r4, #0
	bl sub_08074124
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A039C
sub_080A039C: @ 0x080A039C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #6
	bl sub_08072AC4
	adds r4, r0, #0
	cmp r4, #0
	beq _080A03FE
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x45
	bgt _080A03FE
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #3
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A03F4
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #4
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A03FE
_080A03F4:
	movs r0, #0x21
	adds r1, r5, #0
	bl sub_08074124
	b _080A0434
_080A03FE:
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A0416
	cmp r0, #1
	beq _080A0420
	adds r0, r5, #0
	bl sub_080620DC
	b _080A0434
_080A0416:
	ldr r1, [r5, #0x1c]
	movs r2, #0xc2
	lsls r2, r2, #2
	adds r1, r1, r2
	b _080A0428
_080A0420:
	ldr r1, [r5, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #2
	adds r1, r1, r0
_080A0428:
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
_080A0434:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A043C
sub_080A043C: @ 0x080A043C
	push {r4, lr}
	adds r4, r1, #0
	cmp r4, r0
	bne _080A04A8
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A0456
	cmp r0, #1
	beq _080A0490
	b _080A04A8
_080A0456:
	ldr r1, [r4, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0x86
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	cmp r0, r1
	blt _080A04A8
	ldr r1, [r4, #0x1c]
	movs r0, #0xc6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl sub_08091940
	b _080A04A8
_080A0490:
	ldr r1, [r4, #0x1c]
	movs r0, #0xc6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0
	movs r2, #0
	bl sub_08091940
_080A04A8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A04B0
sub_080A04B0: @ 0x080A04B0
	push {lr}
	ldr r2, _080A04C4 @ =0x09F4D280
	str r2, [r0, #0x20]
	ldr r2, _080A04C8 @ =0x09F4D2F8
	str r2, [r0, #0x1c]
	bl sub_08062034
	pop {r0}
	bx r0
	.align 2, 0
_080A04C4: .4byte 0x09F4D280
_080A04C8: .4byte 0x09F4D2F8

	thumb_func_start sub_080A04CC
sub_080A04CC: @ 0x080A04CC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08075010
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A04E2
	movs r0, #0
	b _080A04F0
_080A04E2:
	movs r0, #0x82
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
_080A04F0:
	cmp r0, #0
	bne _080A04F8
	movs r0, #0
	b _080A0516
_080A04F8:
	adds r0, r5, #0
	movs r1, #0x15
	bl sub_08074160
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A0514
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080A0514:
	movs r0, #1
_080A0516:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A051C
sub_080A051C: @ 0x080A051C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	mov r8, r0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x16
	add r1, sp, #0xc
	strh r0, [r1]
	mov r4, sp
	adds r6, r1, #0
	movs r0, #8
	bl sub_0805D3C8
	adds r5, r0, #0
	ldr r3, [sp, #8]
	adds r2, r5, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _080A055A
	adds r1, r0, #0
_080A054C:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _080A054C
_080A055A:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080A0564
	bl sub_0805D3F4
_080A0564:
	movs r0, #4
	str r0, [r4]
	str r5, [r4, #8]
	ldr r2, [r4, #4]
	lsls r0, r2, #1
	adds r0, r0, r5
	ldrh r1, [r6]
	strh r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	movs r0, #3
	bl sub_08072AC4
	cmp r0, #0
	beq _080A05E4
	movs r0, #0x17
	mov r1, sp
	adds r1, #0xe
	strh r0, [r1]
	mov r5, sp
	adds r7, r1, #0
	ldr r0, [sp, #4]
	adds r4, r0, #1
	ldr r0, [sp]
	cmp r0, r4
	bge _080A05D4
	lsls r1, r4, #1
	movs r0, #4
	cmp r0, r1
	bge _080A05A2
	adds r0, r1, #0
_080A05A2:
	adds r4, r0, #0
	lsls r0, r4, #1
	bl sub_0805D3C8
	adds r6, r0, #0
	ldr r3, [sp, #8]
	adds r2, r6, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _080A05C6
	adds r1, r0, #0
_080A05B8:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _080A05B8
_080A05C6:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _080A05D0
	bl sub_0805D3F4
_080A05D0:
	str r4, [r5]
	str r6, [r5, #8]
_080A05D4:
	ldr r2, [r5, #4]
	ldr r1, [r5, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r1, [r7]
	strh r1, [r0]
	adds r2, #1
	str r2, [r5, #4]
_080A05E4:
	movs r0, #4
	bl sub_08072AC4
	cmp r0, #0
	beq _080A064E
	movs r0, #0x18
	add r1, sp, #0x10
	strh r0, [r1]
	mov r5, sp
	adds r7, r1, #0
	ldr r0, [sp, #4]
	adds r4, r0, #1
	ldr r0, [sp]
	cmp r0, r4
	bge _080A063E
	lsls r1, r4, #1
	movs r0, #4
	cmp r0, r1
	bge _080A060C
	adds r0, r1, #0
_080A060C:
	adds r4, r0, #0
	lsls r0, r4, #1
	bl sub_0805D3C8
	adds r6, r0, #0
	ldr r3, [sp, #8]
	adds r2, r6, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _080A0630
	adds r1, r0, #0
_080A0622:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _080A0622
_080A0630:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _080A063A
	bl sub_0805D3F4
_080A063A:
	str r4, [r5]
	str r6, [r5, #8]
_080A063E:
	ldr r2, [r5, #4]
	ldr r1, [r5, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r1, [r7]
	strh r1, [r0]
	adds r2, #1
	str r2, [r5, #4]
_080A064E:
	ldr r1, [sp, #4]
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	lsls r0, r0, #1
	ldr r1, [sp, #8]
	adds r1, r1, r0
	ldrh r0, [r1]
	mov r1, r8
	bl sub_08074124
	adds r4, r0, #0
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _080A0672
	bl sub_0805D3F4
_080A0672:
	adds r0, r4, #0
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0680
sub_080A0680: @ 0x080A0680
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072628
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A06C4
	movs r0, #0
	bl sub_08072EC4
	ldr r1, [r0, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0x95
	bgt _080A06C4
	ldr r1, [r4, #0x1c]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080A0734
_080A06C4:
	movs r3, #0x84
	lsls r3, r3, #1
	adds r0, r4, r3
	ldr r0, [r0]
	cmp r0, #0
	bgt _080A0702
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x31
	bgt _080A06E0
	movs r0, #0x14
	b _080A072E
_080A06E0:
	cmp r0, #0x42
	bgt _080A06E8
	movs r0, #0x15
	b _080A072E
_080A06E8:
	cmp r0, #0x45
	ble _080A072C
	ldr r1, [r4, #0x1c]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080A0734
_080A0702:
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x31
	bgt _080A0712
	movs r0, #0x14
	b _080A072E
_080A0712:
	cmp r0, #0x45
	ble _080A072C
	ldr r1, [r4, #0x1c]
	movs r3, #0xc2
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080A0734
_080A072C:
	movs r0, #0x19
_080A072E:
	adds r1, r4, #0
	bl sub_08074124
_080A0734:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A073C
sub_080A073C: @ 0x080A073C
	push {lr}
	ldr r2, _080A0750 @ =0x09F4D280
	str r2, [r0, #0x20]
	ldr r2, _080A0754 @ =0x09F4D2F8
	str r2, [r0, #0x1c]
	bl sub_08062034
	pop {r0}
	bx r0
	.align 2, 0
_080A0750: .4byte 0x09F4D280
_080A0754: .4byte 0x09F4D2F8

	thumb_func_start sub_080A0758
sub_080A0758: @ 0x080A0758
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_08075010
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A076E
	movs r0, #0
	b _080A077C
_080A076E:
	movs r0, #0x82
	lsls r0, r0, #1
	adds r1, r5, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
_080A077C:
	cmp r0, #0
	bne _080A0784
	movs r0, #0
	b _080A07B8
_080A0784:
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_08074160
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A079A
	movs r0, #0x84
	lsls r0, r0, #1
	b _080A07AE
_080A079A:
	adds r0, r4, #0
	movs r1, #0x11
	bl sub_08074160
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A07B6
	movs r0, #0x86
	lsls r0, r0, #1
_080A07AE:
	adds r1, r5, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080A07B6:
	movs r0, #1
_080A07B8:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A07C0
sub_080A07C0: @ 0x080A07C0
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #5
	bl sub_08072E38
	adds r5, r0, #0
	cmp r5, #0
	bne _080A07E6
	ldr r1, [r4, #0x1c]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080A083A
_080A07E6:
	ldr r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bgt _080A0802
	movs r0, #0xd
	b _080A0834
_080A0802:
	ldr r1, [r5, #0x1c]
	movs r0, #0xf8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl sub_0809193C
	cmp r0, #0
	ble _080A0832
	ldr r1, [r4, #0x1c]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080A083A
_080A0832:
	movs r0, #0x12
_080A0834:
	adds r1, r4, #0
	bl sub_08074124
_080A083A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0840
sub_080A0840: @ 0x080A0840
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #1
	bl sub_08072AC4
	adds r4, r0, #0
	cmp r4, #0
	bne _080A0854
	movs r0, #0
	b _080A08DC
_080A0854:
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #3
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A0882
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x45
	bgt _080A0882
	movs r0, #0x13
	b _080A08D6
_080A0882:
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0x13
	bgt _080A08BE
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #2
	bgt _080A08AA
	movs r0, #0x10
	b _080A08D6
_080A08AA:
	cmp r0, #3
	bne _080A08BE
	movs r2, #0x86
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bgt _080A08BE
	movs r0, #0x11
	b _080A08D6
_080A08BE:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0xd
	cmp r1, #0x21
	blt _080A08D6
	movs r0, #0xf
	cmp r1, #0x42
	bge _080A08D6
	movs r0, #0xe
_080A08D6:
	adds r1, r5, #0
	bl sub_08074124
_080A08DC:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A08E4
sub_080A08E4: @ 0x080A08E4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #4
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A08FE
	ldr r1, [r4, #0x1c]
	movs r0, #0xc2
	lsls r0, r0, #2
	b _080A0904
_080A08FE:
	ldr r1, [r4, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #2
_080A0904:
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0918
sub_080A0918: @ 0x080A0918
	push {lr}
	ldr r2, _080A092C @ =0x09F4D280
	str r2, [r0, #0x20]
	ldr r2, _080A0930 @ =0x09F4D2F8
	str r2, [r0, #0x1c]
	bl sub_08062034
	pop {r0}
	bx r0
	.align 2, 0
_080A092C: .4byte 0x09F4D280
_080A0930: .4byte 0x09F4D2F8

	thumb_func_start sub_080A0934
sub_080A0934: @ 0x080A0934
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #7
	cmp r1, #0x21
	blt _080A0950
	movs r0, #9
	cmp r1, #0x42
	bge _080A0950
	movs r0, #8
_080A0950:
	adds r1, r4, #0
	bl sub_08074124
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A095C
sub_080A095C: @ 0x080A095C
	push {lr}
	ldr r2, _080A0970 @ =0x09F4D280
	str r2, [r0, #0x20]
	ldr r2, _080A0974 @ =0x09F4D2F8
	str r2, [r0, #0x1c]
	bl sub_08062034
	pop {r0}
	bx r0
	.align 2, 0
_080A0970: .4byte 0x09F4D280
_080A0974: .4byte 0x09F4D2F8

	thumb_func_start sub_080A0978
sub_080A0978: @ 0x080A0978
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #1
	cmp r0, #0x19
	blt _080A0998
	movs r1, #2
	cmp r0, #0x32
	blt _080A0998
	movs r1, #4
	cmp r0, #0x4b
	bge _080A0998
	movs r1, #3
_080A0998:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_08074124
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A09A8
sub_080A09A8: @ 0x080A09A8
	push {lr}
	ldr r2, _080A09BC @ =0x09F4D280
	str r2, [r0, #0x20]
	ldr r2, _080A09C0 @ =0x09F4D2F8
	str r2, [r0, #0x1c]
	bl sub_08062034
	pop {r0}
	bx r0
	.align 2, 0
_080A09BC: .4byte 0x09F4D280
_080A09C0: .4byte 0x09F4D2F8

	thumb_func_start sub_080A09C4
sub_080A09C4: @ 0x080A09C4
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080A09D0
sub_080A09D0: @ 0x080A09D0
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080A09DC
sub_080A09DC: @ 0x080A09DC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08075010
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A09FC
	movs r0, #0x82
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A09FE
_080A09FC:
	movs r0, #0
_080A09FE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start nullsub_56
nullsub_56: @ 0x080A0A04
	bx lr
	.align 2, 0

	thumb_func_start nullsub_57
nullsub_57: @ 0x080A0A08
	bx lr
	.align 2, 0

	thumb_func_start sub_080A0A0C
sub_080A0A0C: @ 0x080A0A0C
	push {lr}
	ldr r2, _080A0A20 @ =0x09F4D280
	str r2, [r0, #0x20]
	ldr r2, _080A0A24 @ =0x09F4D2F8
	str r2, [r0, #0x1c]
	bl sub_08062034
	pop {r0}
	bx r0
	.align 2, 0
_080A0A20: .4byte 0x09F4D280
_080A0A24: .4byte 0x09F4D2F8

	thumb_func_start sub_080A0A28
sub_080A0A28: @ 0x080A0A28
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A0AC8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A0A48
sub_080A0A48: @ 0x080A0A48
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A0AE4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A0A68
sub_080A0A68: @ 0x080A0A68
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A0B00
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A0A88
sub_080A0A88: @ 0x080A0A88
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A0B1C
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A0AA8
sub_080A0AA8: @ 0x080A0AA8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A0B38
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A0AC8
sub_080A0AC8: @ 0x080A0AC8
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080807AC
	ldr r0, _080A0AE0 @ =0x09F4D600
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A0AE0: .4byte 0x09F4D600

	thumb_func_start sub_080A0AE4
sub_080A0AE4: @ 0x080A0AE4
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080807AC
	ldr r0, _080A0AFC @ =0x09F4D8A0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A0AFC: .4byte 0x09F4D8A0

	thumb_func_start sub_080A0B00
sub_080A0B00: @ 0x080A0B00
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080807AC
	ldr r0, _080A0B18 @ =0x09F4DB40
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A0B18: .4byte 0x09F4DB40

	thumb_func_start sub_080A0B1C
sub_080A0B1C: @ 0x080A0B1C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080807AC
	ldr r0, _080A0B34 @ =0x09F4DDE0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A0B34: .4byte 0x09F4DDE0

	thumb_func_start sub_080A0B38
sub_080A0B38: @ 0x080A0B38
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080807AC
	ldr r0, _080A0B50 @ =0x09F4E080
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A0B50: .4byte 0x09F4E080

	thumb_func_start sub_080A0B54
sub_080A0B54: @ 0x080A0B54
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r0, _080A0B88 @ =0x000002BB
	ldr r1, _080A0B8C @ =0x000002CD
	bl sub_08070660
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	ldr r3, [r4, #4]
	adds r1, r5, #0
	bl sub_08091940
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A0B88: .4byte 0x000002BB
_080A0B8C: .4byte 0x000002CD

	thumb_func_start sub_080A0B90
sub_080A0B90: @ 0x080A0B90
	push {lr}
	ldr r2, _080A0BA0 @ =0x09F4E080
	str r2, [r0, #0x1c]
	bl sub_080807DC
	pop {r0}
	bx r0
	.align 2, 0
_080A0BA0: .4byte 0x09F4E080

	thumb_func_start sub_080A0BA4
sub_080A0BA4: @ 0x080A0BA4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	movs r1, #5
	bl sub_08072D84
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A0BC4
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08078BB0
	b _080A0BC6
_080A0BC4:
	movs r0, #0
_080A0BC6:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0BCC
sub_080A0BCC: @ 0x080A0BCC
	push {lr}
	ldr r2, _080A0BDC @ =0x09F4E080
	str r2, [r0, #0x1c]
	bl sub_080807DC
	pop {r0}
	bx r0
	.align 2, 0
_080A0BDC: .4byte 0x09F4E080

	thumb_func_start sub_080A0BE0
sub_080A0BE0: @ 0x080A0BE0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	bl sub_08078D4C
	ldr r1, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r4, r4, r0
	mov r2, sp
	movs r0, #1
	strb r0, [r2]
	ldr r5, [r1, #4]
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #3
	movs r3, #0x64
	bl sub_08091948
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A0C18
sub_080A0C18: @ 0x080A0C18
	push {lr}
	ldr r2, _080A0C28 @ =0x09F4E080
	str r2, [r0, #0x1c]
	bl sub_080807DC
	pop {r0}
	bx r0
	.align 2, 0
_080A0C28: .4byte 0x09F4E080

	thumb_func_start sub_080A0C2C
sub_080A0C2C: @ 0x080A0C2C
	push {r4, r5, r6, lr}
	sub sp, #0x3c
	adds r6, r0, #0
	adds r5, r1, #0
	add r0, sp, #4
	movs r1, #0xbf
	bl sub_0806FF6C
	add r0, sp, #4
	movs r1, #0
	bl sub_08070048
	movs r0, #0xb8
	adds r1, r5, #0
	adds r2, r5, #0
	bl sub_08073198
	movs r0, #0x48
	bl sub_0807068C
	add r0, sp, #4
	movs r1, #0
	bl sub_0807014C
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08078D4C
	bl sub_08073270
	b _080A0C88
_080A0C6A:
	ldr r1, [r6, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	mov r2, sp
	strb r3, [r2]
	ldr r4, [r1, #4]
	adds r1, r5, #0
	movs r2, #3
	movs r3, #0x64
	bl sub_08091944
_080A0C88:
	ldr r1, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #3
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	beq _080A0C6A
	b _080A0CC6
_080A0CA8:
	ldr r1, [r6, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	mov r2, sp
	strb r3, [r2]
	ldr r4, [r1, #4]
	adds r1, r5, #0
	movs r2, #4
	movs r3, #0x64
	bl sub_08091944
_080A0CC6:
	ldr r1, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #4
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	beq _080A0CA8
	b _080A0D04
_080A0CE6:
	ldr r1, [r6, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	mov r2, sp
	strb r3, [r2]
	ldr r4, [r1, #4]
	adds r1, r5, #0
	movs r2, #0x20
	movs r3, #0x64
	bl sub_08091944
_080A0D04:
	ldr r1, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x20
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	beq _080A0CE6
	add r0, sp, #4
	movs r1, #2
	bl sub_0806FFA8
	add sp, #0x3c
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A0D34
sub_080A0D34: @ 0x080A0D34
	push {lr}
	ldr r2, _080A0D44 @ =0x09F4E080
	str r2, [r0, #0x1c]
	bl sub_080807DC
	pop {r0}
	bx r0
	.align 2, 0
_080A0D44: .4byte 0x09F4E080

	thumb_func_start sub_080A0D48
sub_080A0D48: @ 0x080A0D48
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08080968
	adds r5, r0, #0
	cmp r5, #0x63
	bgt _080A0DC6
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r0, #0x1c]
	movs r3, #0xa8
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #5
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A0DC6
	ldr r1, [r4, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	beq _080A0DB8
	ldr r1, [r4, #0x1c]
	movs r3, #0xf4
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #1
	bne _080A0DC6
_080A0DB8:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	movs r1, #0x64
	bl sub_0807066C
	adds r5, r0, #0
_080A0DC6:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A0DD0
sub_080A0DD0: @ 0x080A0DD0
	push {lr}
	ldr r2, _080A0DE0 @ =0x09F4E080
	str r2, [r0, #0x1c]
	bl sub_080807DC
	pop {r0}
	bx r0
	.align 2, 0
_080A0DE0: .4byte 0x09F4E080

	thumb_func_start sub_080A0DE4
sub_080A0DE4: @ 0x080A0DE4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A18D0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0E08
sub_080A0E08: @ 0x080A0E08
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa8
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A199C
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0E2C
sub_080A0E2C: @ 0x080A0E2C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A1AC4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0E50
sub_080A0E50: @ 0x080A0E50
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A1B98
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0E74
sub_080A0E74: @ 0x080A0E74
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xaa
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A1C94
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0E98
sub_080A0E98: @ 0x080A0E98
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xaa
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A1DB4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0EBC
sub_080A0EBC: @ 0x080A0EBC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xb6
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A1ED4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0EE0
sub_080A0EE0: @ 0x080A0EE0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A1FC0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0F04
sub_080A0F04: @ 0x080A0F04
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A20B8
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0F28
sub_080A0F28: @ 0x080A0F28
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A218C
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0F4C
sub_080A0F4C: @ 0x080A0F4C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A226C
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0F70
sub_080A0F70: @ 0x080A0F70
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xac
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A234C
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0F94
sub_080A0F94: @ 0x080A0F94
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa8
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A2460
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0FB8
sub_080A0FB8: @ 0x080A0FB8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A2568
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0FDC
sub_080A0FDC: @ 0x080A0FDC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A2648
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1000
sub_080A1000: @ 0x080A1000
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xae
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A2714
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1024
sub_080A1024: @ 0x080A1024
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A2848
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1048
sub_080A1048: @ 0x080A1048
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A2914
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A106C
sub_080A106C: @ 0x080A106C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A29E0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1090
sub_080A1090: @ 0x080A1090
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A2AAC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A10B4
sub_080A10B4: @ 0x080A10B4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A2B78
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A10D8
sub_080A10D8: @ 0x080A10D8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A2C44
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A10FC
sub_080A10FC: @ 0x080A10FC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A2D10
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1120
sub_080A1120: @ 0x080A1120
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A2DDC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1144
sub_080A1144: @ 0x080A1144
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A2EA8
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1168
sub_080A1168: @ 0x080A1168
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A2F74
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A118C
sub_080A118C: @ 0x080A118C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A3040
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A11B0
sub_080A11B0: @ 0x080A11B0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa8
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A310C
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A11D4
sub_080A11D4: @ 0x080A11D4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A3214
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A11F8
sub_080A11F8: @ 0x080A11F8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A32E0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A121C
sub_080A121C: @ 0x080A121C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A33AC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1240
sub_080A1240: @ 0x080A1240
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa8
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A3478
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1264
sub_080A1264: @ 0x080A1264
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A3554
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1288
sub_080A1288: @ 0x080A1288
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A3620
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A12AC
sub_080A12AC: @ 0x080A12AC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A36EC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A12D0
sub_080A12D0: @ 0x080A12D0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A37B8
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A12F4
sub_080A12F4: @ 0x080A12F4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A3884
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1318
sub_080A1318: @ 0x080A1318
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A3950
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A133C
sub_080A133C: @ 0x080A133C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A3A38
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1360
sub_080A1360: @ 0x080A1360
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A3B18
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1384
sub_080A1384: @ 0x080A1384
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A3BE4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A13A8
sub_080A13A8: @ 0x080A13A8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A3CB0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A13CC
sub_080A13CC: @ 0x080A13CC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa8
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A3D90
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A13F0
sub_080A13F0: @ 0x080A13F0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A3E8C
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1414
sub_080A1414: @ 0x080A1414
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A3F60
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1438
sub_080A1438: @ 0x080A1438
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A402C
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A145C
sub_080A145C: @ 0x080A145C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xac
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A410C
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1480
sub_080A1480: @ 0x080A1480
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A41F8
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A14A4
sub_080A14A4: @ 0x080A14A4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A42C4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A14C8
sub_080A14C8: @ 0x080A14C8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A4390
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A14EC
sub_080A14EC: @ 0x080A14EC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa8
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A4470
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1510
sub_080A1510: @ 0x080A1510
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A454C
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1534
sub_080A1534: @ 0x080A1534
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A4618
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1558
sub_080A1558: @ 0x080A1558
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A46E4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A157C
sub_080A157C: @ 0x080A157C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A47B0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A15A0
sub_080A15A0: @ 0x080A15A0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A487C
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A15C4
sub_080A15C4: @ 0x080A15C4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A495C
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A15E8
sub_080A15E8: @ 0x080A15E8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A4A28
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A160C
sub_080A160C: @ 0x080A160C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa8
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A4B08
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1630
sub_080A1630: @ 0x080A1630
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A4BE4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1654
sub_080A1654: @ 0x080A1654
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A4CC4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1678
sub_080A1678: @ 0x080A1678
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A4D90
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A169C
sub_080A169C: @ 0x080A169C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A4E70
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A16C0
sub_080A16C0: @ 0x080A16C0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A4F3C
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A16E4
sub_080A16E4: @ 0x080A16E4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A501C
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1708
sub_080A1708: @ 0x080A1708
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xaa
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A50FC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A172C
sub_080A172C: @ 0x080A172C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xaa
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A51DC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1750
sub_080A1750: @ 0x080A1750
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A52BC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1774
sub_080A1774: @ 0x080A1774
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A539C
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1798
sub_080A1798: @ 0x080A1798
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A5468
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A17BC
sub_080A17BC: @ 0x080A17BC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A5534
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A17E0
sub_080A17E0: @ 0x080A17E0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A5600
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1804
sub_080A1804: @ 0x080A1804
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa8
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A56E0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1828
sub_080A1828: @ 0x080A1828
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A57DC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A184C
sub_080A184C: @ 0x080A184C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_080726B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A1874
	ldr r2, [r4, #0x1c]
	movs r0, #0xfe
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r5, #0x20]
	ldr r2, [r2, #4]
	bl sub_0809193C
_080A1874:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A187C
sub_080A187C: @ 0x080A187C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_080726B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A18A4
	ldr r2, [r4, #0x1c]
	movs r0, #0xfc
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r5, #0x20]
	ldr r2, [r2, #4]
	bl sub_0809193C
_080A18A4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A18AC
sub_080A18AC: @ 0x080A18AC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0805D3B4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A58A8
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A18D0
sub_080A18D0: @ 0x080A18D0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A1978 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A197C @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1980 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A1984 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A1988 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A198C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A1990 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A1994 @ =0x09F4E490
	str r0, [r5, #0x20]
	ldr r0, _080A1998 @ =0x09F4E508
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A1978: .4byte 0x09F642A0
_080A197C: .4byte 0x09F64318
_080A1980: .4byte 0x09F44FF0
_080A1984: .4byte 0x09F454B0
_080A1988: .4byte gUnknown_080F8E5C
_080A198C: .4byte 0x09F45430
_080A1990: .4byte gUnknown_080F8E64
_080A1994: .4byte 0x09F4E490
_080A1998: .4byte 0x09F4E508

	thumb_func_start sub_080A199C
sub_080A199C: @ 0x080A199C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A1AA0 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A1AA4 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1AA8 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A1AAC @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A1AB0 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1AB4 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A1AB8 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A1ABC @ =0x09F4E940
	str r0, [r5, #0x20]
	ldr r0, _080A1AC0 @ =0x09F4E9B8
	str r0, [r5, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #2
	rsbs r0, r0, #0
	str r0, [r1]
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x19
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x19
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x19
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A1AA0: .4byte 0x09F642A0
_080A1AA4: .4byte 0x09F64318
_080A1AA8: .4byte 0x09F44FF0
_080A1AAC: .4byte 0x09F454B0
_080A1AB0: .4byte gUnknown_080F8E5C
_080A1AB4: .4byte 0x09F45430
_080A1AB8: .4byte gUnknown_080F8E64
_080A1ABC: .4byte 0x09F4E940
_080A1AC0: .4byte 0x09F4E9B8

	thumb_func_start sub_080A1AC4
sub_080A1AC4: @ 0x080A1AC4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A1B74 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A1B78 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1B7C @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A1B80 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A1B84 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1B88 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A1B8C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A1B90 @ =0x09F4EE30
	str r0, [r5, #0x20]
	ldr r0, _080A1B94 @ =0x09F4EEA8
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	movs r1, #0x30
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A1B74: .4byte 0x09F642A0
_080A1B78: .4byte 0x09F64318
_080A1B7C: .4byte 0x09F44FF0
_080A1B80: .4byte 0x09F454B0
_080A1B84: .4byte gUnknown_080F8E5C
_080A1B88: .4byte 0x09F45430
_080A1B8C: .4byte gUnknown_080F8E64
_080A1B90: .4byte 0x09F4EE30
_080A1B94: .4byte 0x09F4EEA8

	thumb_func_start sub_080A1B98
sub_080A1B98: @ 0x080A1B98
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A1C70 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A1C74 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1C78 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A1C7C @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A1C80 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1C84 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A1C88 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A1C8C @ =0x09F4F2E0
	str r0, [r5, #0x20]
	ldr r0, _080A1C90 @ =0x09F4F358
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	movs r1, #0x1a
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x1a
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x1a
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A1C70: .4byte 0x09F642A0
_080A1C74: .4byte 0x09F64318
_080A1C78: .4byte 0x09F44FF0
_080A1C7C: .4byte 0x09F454B0
_080A1C80: .4byte gUnknown_080F8E5C
_080A1C84: .4byte 0x09F45430
_080A1C88: .4byte gUnknown_080F8E64
_080A1C8C: .4byte 0x09F4F2E0
_080A1C90: .4byte 0x09F4F358

	thumb_func_start sub_080A1C94
sub_080A1C94: @ 0x080A1C94
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A1D90 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A1D94 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r2, #0
	mov sl, r2
	movs r1, #0
	mov r8, r1
	mov r2, r8
	strh r2, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r2, r8
	str r2, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1D98 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A1D9C @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A1DA0 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1DA4 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A1DA8 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, sb
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A1DAC @ =0x09F4F810
	str r0, [r5, #0x20]
	ldr r0, _080A1DB0 @ =0x09F4F888
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r2, r8
	str r2, [r0]
	movs r0, #2
	movs r1, #3
	bl sub_08070660
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r5, r2
	str r0, [r1]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r2, sl
	strb r2, [r0]
	adds r0, r5, #0
	movs r1, #0x1a
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x1a
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x1a
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A1D90: .4byte 0x09F642A0
_080A1D94: .4byte 0x09F64318
_080A1D98: .4byte 0x09F44FF0
_080A1D9C: .4byte 0x09F454B0
_080A1DA0: .4byte gUnknown_080F8E5C
_080A1DA4: .4byte 0x09F45430
_080A1DA8: .4byte gUnknown_080F8E64
_080A1DAC: .4byte 0x09F4F810
_080A1DB0: .4byte 0x09F4F888

	thumb_func_start sub_080A1DB4
sub_080A1DB4: @ 0x080A1DB4
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A1EB0 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A1EB4 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r2, #0
	mov sl, r2
	movs r1, #0
	mov r8, r1
	mov r2, r8
	strh r2, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r2, r8
	str r2, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1EB8 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A1EBC @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A1EC0 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1EC4 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A1EC8 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, sb
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A1ECC @ =0x09F4FCD8
	str r0, [r5, #0x20]
	ldr r0, _080A1ED0 @ =0x09F4FD50
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r2, r8
	str r2, [r0]
	movs r0, #2
	movs r1, #3
	bl sub_08070660
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r5, r2
	str r0, [r1]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r2, sl
	strb r2, [r0]
	adds r0, r5, #0
	movs r1, #0x1a
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x1a
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x1a
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A1EB0: .4byte 0x09F642A0
_080A1EB4: .4byte 0x09F64318
_080A1EB8: .4byte 0x09F44FF0
_080A1EBC: .4byte 0x09F454B0
_080A1EC0: .4byte gUnknown_080F8E5C
_080A1EC4: .4byte 0x09F45430
_080A1EC8: .4byte gUnknown_080F8E64
_080A1ECC: .4byte 0x09F4FCD8
_080A1ED0: .4byte 0x09F4FD50

	thumb_func_start sub_080A1ED4
sub_080A1ED4: @ 0x080A1ED4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A1F9C @ =0x09F642A0
	str r0, [r7, #0x20]
	ldr r0, _080A1FA0 @ =0x09F64318
	str r0, [r7, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r5, #0
	strh r5, [r0]
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r0, r7, r3
	str r5, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1FA4 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A1FA8 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A1FAC @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1FB0 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A1FB4 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r3, r8
	str r3, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A1FB8 @ =0x09F501A0
	str r0, [r7, #0x20]
	ldr r0, _080A1FBC @ =0x09F50218
	str r0, [r7, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r7, r1
	str r5, [r0]
	movs r3, #0xb4
	lsls r3, r3, #1
	adds r0, r7, r3
	str r5, [r0]
	movs r2, #0
	movs r1, #6
	subs r3, #4
	adds r0, r7, r3
_080A1F84:
	str r2, [r0]
	subs r0, #4
	subs r1, #1
	cmp r1, #0
	bge _080A1F84
	adds r0, r7, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A1F9C: .4byte 0x09F642A0
_080A1FA0: .4byte 0x09F64318
_080A1FA4: .4byte 0x09F44FF0
_080A1FA8: .4byte 0x09F454B0
_080A1FAC: .4byte gUnknown_080F8E5C
_080A1FB0: .4byte 0x09F45430
_080A1FB4: .4byte gUnknown_080F8E64
_080A1FB8: .4byte 0x09F501A0
_080A1FBC: .4byte 0x09F50218

	thumb_func_start sub_080A1FC0
sub_080A1FC0: @ 0x080A1FC0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A2094 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A2098 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A209C @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A20A0 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A20A4 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A20A8 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A20AC @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A20B0 @ =0x09F50690
	str r0, [r5, #0x20]
	ldr r0, _080A20B4 @ =0x09F50708
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	movs r1, #0x16
	bl sub_0807559C
	adds r0, r5, #0
	movs r1, #0x16
	bl sub_0807559C
	adds r0, r5, #0
	movs r1, #0x16
	bl sub_0807559C
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2094: .4byte 0x09F642A0
_080A2098: .4byte 0x09F64318
_080A209C: .4byte 0x09F44FF0
_080A20A0: .4byte 0x09F454B0
_080A20A4: .4byte gUnknown_080F8E5C
_080A20A8: .4byte 0x09F45430
_080A20AC: .4byte gUnknown_080F8E64
_080A20B0: .4byte 0x09F50690
_080A20B4: .4byte 0x09F50708

	thumb_func_start sub_080A20B8
sub_080A20B8: @ 0x080A20B8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A2168 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A216C @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2170 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A2174 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A2178 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A217C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A2180 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A2184 @ =0x09F50B40
	str r0, [r5, #0x20]
	ldr r0, _080A2188 @ =0x09F50BB8
	str r0, [r5, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2168: .4byte 0x09F642A0
_080A216C: .4byte 0x09F64318
_080A2170: .4byte 0x09F44FF0
_080A2174: .4byte 0x09F454B0
_080A2178: .4byte gUnknown_080F8E5C
_080A217C: .4byte 0x09F45430
_080A2180: .4byte gUnknown_080F8E64
_080A2184: .4byte 0x09F50B40
_080A2188: .4byte 0x09F50BB8

	thumb_func_start sub_080A218C
sub_080A218C: @ 0x080A218C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A2248 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A224C @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2250 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A2254 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A2258 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A225C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A2260 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A2264 @ =0x09F50FF8
	str r0, [r5, #0x20]
	ldr r0, _080A2268 @ =0x09F51070
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2248: .4byte 0x09F642A0
_080A224C: .4byte 0x09F64318
_080A2250: .4byte 0x09F44FF0
_080A2254: .4byte 0x09F454B0
_080A2258: .4byte gUnknown_080F8E5C
_080A225C: .4byte 0x09F45430
_080A2260: .4byte gUnknown_080F8E64
_080A2264: .4byte 0x09F50FF8
_080A2268: .4byte 0x09F51070

	thumb_func_start sub_080A226C
sub_080A226C: @ 0x080A226C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A2328 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A232C @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2330 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A2334 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A2338 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A233C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A2340 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A2344 @ =0x09F514A8
	str r0, [r5, #0x20]
	ldr r0, _080A2348 @ =0x09F51520
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2328: .4byte 0x09F642A0
_080A232C: .4byte 0x09F64318
_080A2330: .4byte 0x09F44FF0
_080A2334: .4byte 0x09F454B0
_080A2338: .4byte gUnknown_080F8E5C
_080A233C: .4byte 0x09F45430
_080A2340: .4byte gUnknown_080F8E64
_080A2344: .4byte 0x09F514A8
_080A2348: .4byte 0x09F51520

	thumb_func_start sub_080A234C
sub_080A234C: @ 0x080A234C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A243C @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A2440 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r2, #0
	mov r8, r2
	mov r1, r8
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	mov r1, r8
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r2, _080A2444 @ =0x09F44FF0
	mov sb, r2
	ldr r0, _080A2448 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A244C @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2450 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A2454 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A2458 @ =0x09F51958
	str r0, [r5, #0x20]
	ldr r0, _080A245C @ =0x09F519D0
	str r0, [r5, #0x1c]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r5, r2
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	adds r2, #4
	adds r0, r5, r2
	str r1, [r0]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r2, r8
	str r2, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r2, [r0]
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A243C: .4byte 0x09F642A0
_080A2440: .4byte 0x09F64318
_080A2444: .4byte 0x09F44FF0
_080A2448: .4byte 0x09F454B0
_080A244C: .4byte gUnknown_080F8E5C
_080A2450: .4byte 0x09F45430
_080A2454: .4byte gUnknown_080F8E64
_080A2458: .4byte 0x09F51958
_080A245C: .4byte 0x09F519D0

	thumb_func_start sub_080A2460
sub_080A2460: @ 0x080A2460
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A2544 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A2548 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A254C @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A2550 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A2554 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2558 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A255C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A2560 @ =0x09F51E28
	str r0, [r5, #0x20]
	ldr r0, _080A2564 @ =0x09F51EA0
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #2
	rsbs r0, r0, #0
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2544: .4byte 0x09F642A0
_080A2548: .4byte 0x09F64318
_080A254C: .4byte 0x09F44FF0
_080A2550: .4byte 0x09F454B0
_080A2554: .4byte gUnknown_080F8E5C
_080A2558: .4byte 0x09F45430
_080A255C: .4byte gUnknown_080F8E64
_080A2560: .4byte 0x09F51E28
_080A2564: .4byte 0x09F51EA0

	thumb_func_start sub_080A2568
sub_080A2568: @ 0x080A2568
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A2624 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A2628 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A262C @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A2630 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A2634 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2638 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A263C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A2640 @ =0x09F522E0
	str r0, [r5, #0x20]
	ldr r0, _080A2644 @ =0x09F52358
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2624: .4byte 0x09F642A0
_080A2628: .4byte 0x09F64318
_080A262C: .4byte 0x09F44FF0
_080A2630: .4byte 0x09F454B0
_080A2634: .4byte gUnknown_080F8E5C
_080A2638: .4byte 0x09F45430
_080A263C: .4byte gUnknown_080F8E64
_080A2640: .4byte 0x09F522E0
_080A2644: .4byte 0x09F52358

	thumb_func_start sub_080A2648
sub_080A2648: @ 0x080A2648
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A26F0 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A26F4 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A26F8 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A26FC @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A2700 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2704 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A2708 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A270C @ =0x09F527C0
	str r0, [r5, #0x20]
	ldr r0, _080A2710 @ =0x09F52838
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A26F0: .4byte 0x09F642A0
_080A26F4: .4byte 0x09F64318
_080A26F8: .4byte 0x09F44FF0
_080A26FC: .4byte 0x09F454B0
_080A2700: .4byte gUnknown_080F8E5C
_080A2704: .4byte 0x09F45430
_080A2708: .4byte gUnknown_080F8E64
_080A270C: .4byte 0x09F527C0
_080A2710: .4byte 0x09F52838

	thumb_func_start sub_080A2714
sub_080A2714: @ 0x080A2714
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A2824 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A2828 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r2, #0
	mov r8, r2
	mov r1, r8
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	mov r1, r8
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r2, _080A282C @ =0x09F44FF0
	mov sb, r2
	ldr r0, _080A2830 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A2834 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2838 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A283C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A2840 @ =0x09F52C70
	str r0, [r5, #0x20]
	ldr r0, _080A2844 @ =0x09F52CE8
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	movs r1, #1
	bl sub_080752CC
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r5, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #2
	bl sub_080752CC
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r5, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #3
	bl sub_080752CC
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r5, r2
	str r0, [r1]
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r2, r8
	str r2, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r2, [r0]
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2824: .4byte 0x09F642A0
_080A2828: .4byte 0x09F64318
_080A282C: .4byte 0x09F44FF0
_080A2830: .4byte 0x09F454B0
_080A2834: .4byte gUnknown_080F8E5C
_080A2838: .4byte 0x09F45430
_080A283C: .4byte gUnknown_080F8E64
_080A2840: .4byte 0x09F52C70
_080A2844: .4byte 0x09F52CE8

	thumb_func_start sub_080A2848
sub_080A2848: @ 0x080A2848
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A28F0 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A28F4 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A28F8 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A28FC @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A2900 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2904 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A2908 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A290C @ =0x09F53158
	str r0, [r5, #0x20]
	ldr r0, _080A2910 @ =0x09F531D0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A28F0: .4byte 0x09F642A0
_080A28F4: .4byte 0x09F64318
_080A28F8: .4byte 0x09F44FF0
_080A28FC: .4byte 0x09F454B0
_080A2900: .4byte gUnknown_080F8E5C
_080A2904: .4byte 0x09F45430
_080A2908: .4byte gUnknown_080F8E64
_080A290C: .4byte 0x09F53158
_080A2910: .4byte 0x09F531D0

	thumb_func_start sub_080A2914
sub_080A2914: @ 0x080A2914
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A29BC @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A29C0 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A29C4 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A29C8 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A29CC @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A29D0 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A29D4 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A29D8 @ =0x09F53608
	str r0, [r5, #0x20]
	ldr r0, _080A29DC @ =0x09F53680
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A29BC: .4byte 0x09F642A0
_080A29C0: .4byte 0x09F64318
_080A29C4: .4byte 0x09F44FF0
_080A29C8: .4byte 0x09F454B0
_080A29CC: .4byte gUnknown_080F8E5C
_080A29D0: .4byte 0x09F45430
_080A29D4: .4byte gUnknown_080F8E64
_080A29D8: .4byte 0x09F53608
_080A29DC: .4byte 0x09F53680

	thumb_func_start sub_080A29E0
sub_080A29E0: @ 0x080A29E0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A2A88 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A2A8C @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2A90 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A2A94 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A2A98 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2A9C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A2AA0 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A2AA4 @ =0x09F53AB8
	str r0, [r5, #0x20]
	ldr r0, _080A2AA8 @ =0x09F53B30
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2A88: .4byte 0x09F642A0
_080A2A8C: .4byte 0x09F64318
_080A2A90: .4byte 0x09F44FF0
_080A2A94: .4byte 0x09F454B0
_080A2A98: .4byte gUnknown_080F8E5C
_080A2A9C: .4byte 0x09F45430
_080A2AA0: .4byte gUnknown_080F8E64
_080A2AA4: .4byte 0x09F53AB8
_080A2AA8: .4byte 0x09F53B30

	thumb_func_start sub_080A2AAC
sub_080A2AAC: @ 0x080A2AAC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A2B54 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A2B58 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2B5C @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A2B60 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A2B64 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2B68 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A2B6C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A2B70 @ =0x09F53F68
	str r0, [r5, #0x20]
	ldr r0, _080A2B74 @ =0x09F53FE0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2B54: .4byte 0x09F642A0
_080A2B58: .4byte 0x09F64318
_080A2B5C: .4byte 0x09F44FF0
_080A2B60: .4byte 0x09F454B0
_080A2B64: .4byte gUnknown_080F8E5C
_080A2B68: .4byte 0x09F45430
_080A2B6C: .4byte gUnknown_080F8E64
_080A2B70: .4byte 0x09F53F68
_080A2B74: .4byte 0x09F53FE0

	thumb_func_start sub_080A2B78
sub_080A2B78: @ 0x080A2B78
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A2C20 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A2C24 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2C28 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A2C2C @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A2C30 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2C34 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A2C38 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A2C3C @ =0x09F54418
	str r0, [r5, #0x20]
	ldr r0, _080A2C40 @ =0x09F54490
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2C20: .4byte 0x09F642A0
_080A2C24: .4byte 0x09F64318
_080A2C28: .4byte 0x09F44FF0
_080A2C2C: .4byte 0x09F454B0
_080A2C30: .4byte gUnknown_080F8E5C
_080A2C34: .4byte 0x09F45430
_080A2C38: .4byte gUnknown_080F8E64
_080A2C3C: .4byte 0x09F54418
_080A2C40: .4byte 0x09F54490

	thumb_func_start sub_080A2C44
sub_080A2C44: @ 0x080A2C44
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A2CEC @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A2CF0 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2CF4 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A2CF8 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A2CFC @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2D00 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A2D04 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A2D08 @ =0x09F548C8
	str r0, [r5, #0x20]
	ldr r0, _080A2D0C @ =0x09F54940
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2CEC: .4byte 0x09F642A0
_080A2CF0: .4byte 0x09F64318
_080A2CF4: .4byte 0x09F44FF0
_080A2CF8: .4byte 0x09F454B0
_080A2CFC: .4byte gUnknown_080F8E5C
_080A2D00: .4byte 0x09F45430
_080A2D04: .4byte gUnknown_080F8E64
_080A2D08: .4byte 0x09F548C8
_080A2D0C: .4byte 0x09F54940

	thumb_func_start sub_080A2D10
sub_080A2D10: @ 0x080A2D10
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A2DB8 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A2DBC @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2DC0 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A2DC4 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A2DC8 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2DCC @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A2DD0 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A2DD4 @ =0x09F54D78
	str r0, [r5, #0x20]
	ldr r0, _080A2DD8 @ =0x09F54DF0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2DB8: .4byte 0x09F642A0
_080A2DBC: .4byte 0x09F64318
_080A2DC0: .4byte 0x09F44FF0
_080A2DC4: .4byte 0x09F454B0
_080A2DC8: .4byte gUnknown_080F8E5C
_080A2DCC: .4byte 0x09F45430
_080A2DD0: .4byte gUnknown_080F8E64
_080A2DD4: .4byte 0x09F54D78
_080A2DD8: .4byte 0x09F54DF0

	thumb_func_start sub_080A2DDC
sub_080A2DDC: @ 0x080A2DDC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A2E84 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A2E88 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2E8C @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A2E90 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A2E94 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2E98 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A2E9C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A2EA0 @ =0x09F55228
	str r0, [r5, #0x20]
	ldr r0, _080A2EA4 @ =0x09F552A0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2E84: .4byte 0x09F642A0
_080A2E88: .4byte 0x09F64318
_080A2E8C: .4byte 0x09F44FF0
_080A2E90: .4byte 0x09F454B0
_080A2E94: .4byte gUnknown_080F8E5C
_080A2E98: .4byte 0x09F45430
_080A2E9C: .4byte gUnknown_080F8E64
_080A2EA0: .4byte 0x09F55228
_080A2EA4: .4byte 0x09F552A0

	thumb_func_start sub_080A2EA8
sub_080A2EA8: @ 0x080A2EA8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A2F50 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A2F54 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2F58 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A2F5C @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A2F60 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2F64 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A2F68 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A2F6C @ =0x09F556D8
	str r0, [r5, #0x20]
	ldr r0, _080A2F70 @ =0x09F55750
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2F50: .4byte 0x09F642A0
_080A2F54: .4byte 0x09F64318
_080A2F58: .4byte 0x09F44FF0
_080A2F5C: .4byte 0x09F454B0
_080A2F60: .4byte gUnknown_080F8E5C
_080A2F64: .4byte 0x09F45430
_080A2F68: .4byte gUnknown_080F8E64
_080A2F6C: .4byte 0x09F556D8
_080A2F70: .4byte 0x09F55750

	thumb_func_start sub_080A2F74
sub_080A2F74: @ 0x080A2F74
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A301C @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A3020 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3024 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A3028 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A302C @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3030 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A3034 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A3038 @ =0x09F55B88
	str r0, [r5, #0x20]
	ldr r0, _080A303C @ =0x09F55C00
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A301C: .4byte 0x09F642A0
_080A3020: .4byte 0x09F64318
_080A3024: .4byte 0x09F44FF0
_080A3028: .4byte 0x09F454B0
_080A302C: .4byte gUnknown_080F8E5C
_080A3030: .4byte 0x09F45430
_080A3034: .4byte gUnknown_080F8E64
_080A3038: .4byte 0x09F55B88
_080A303C: .4byte 0x09F55C00

	thumb_func_start sub_080A3040
sub_080A3040: @ 0x080A3040
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A30E8 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A30EC @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A30F0 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A30F4 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A30F8 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A30FC @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A3100 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A3104 @ =0x09F56038
	str r0, [r5, #0x20]
	ldr r0, _080A3108 @ =0x09F560B0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A30E8: .4byte 0x09F642A0
_080A30EC: .4byte 0x09F64318
_080A30F0: .4byte 0x09F44FF0
_080A30F4: .4byte 0x09F454B0
_080A30F8: .4byte gUnknown_080F8E5C
_080A30FC: .4byte 0x09F45430
_080A3100: .4byte gUnknown_080F8E64
_080A3104: .4byte 0x09F56038
_080A3108: .4byte 0x09F560B0

	thumb_func_start sub_080A310C
sub_080A310C: @ 0x080A310C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A31F0 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A31F4 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A31F8 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A31FC @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A3200 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3204 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A3208 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A320C @ =0x09F564E8
	str r0, [r5, #0x20]
	ldr r0, _080A3210 @ =0x09F56560
	str r0, [r5, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A31F0: .4byte 0x09F642A0
_080A31F4: .4byte 0x09F64318
_080A31F8: .4byte 0x09F44FF0
_080A31FC: .4byte 0x09F454B0
_080A3200: .4byte gUnknown_080F8E5C
_080A3204: .4byte 0x09F45430
_080A3208: .4byte gUnknown_080F8E64
_080A320C: .4byte 0x09F564E8
_080A3210: .4byte 0x09F56560

	thumb_func_start sub_080A3214
sub_080A3214: @ 0x080A3214
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A32BC @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A32C0 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A32C4 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A32C8 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A32CC @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A32D0 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A32D4 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A32D8 @ =0x09F569C0
	str r0, [r5, #0x20]
	ldr r0, _080A32DC @ =0x09F56A38
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A32BC: .4byte 0x09F642A0
_080A32C0: .4byte 0x09F64318
_080A32C4: .4byte 0x09F44FF0
_080A32C8: .4byte 0x09F454B0
_080A32CC: .4byte gUnknown_080F8E5C
_080A32D0: .4byte 0x09F45430
_080A32D4: .4byte gUnknown_080F8E64
_080A32D8: .4byte 0x09F569C0
_080A32DC: .4byte 0x09F56A38

	thumb_func_start sub_080A32E0
sub_080A32E0: @ 0x080A32E0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A3388 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A338C @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3390 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A3394 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A3398 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A339C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A33A0 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A33A4 @ =0x09F56E70
	str r0, [r5, #0x20]
	ldr r0, _080A33A8 @ =0x09F56EE8
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A3388: .4byte 0x09F642A0
_080A338C: .4byte 0x09F64318
_080A3390: .4byte 0x09F44FF0
_080A3394: .4byte 0x09F454B0
_080A3398: .4byte gUnknown_080F8E5C
_080A339C: .4byte 0x09F45430
_080A33A0: .4byte gUnknown_080F8E64
_080A33A4: .4byte 0x09F56E70
_080A33A8: .4byte 0x09F56EE8

	thumb_func_start sub_080A33AC
sub_080A33AC: @ 0x080A33AC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A3454 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A3458 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A345C @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A3460 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A3464 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3468 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A346C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A3470 @ =0x09F57320
	str r0, [r5, #0x20]
	ldr r0, _080A3474 @ =0x09F57398
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A3454: .4byte 0x09F642A0
_080A3458: .4byte 0x09F64318
_080A345C: .4byte 0x09F44FF0
_080A3460: .4byte 0x09F454B0
_080A3464: .4byte gUnknown_080F8E5C
_080A3468: .4byte 0x09F45430
_080A346C: .4byte gUnknown_080F8E64
_080A3470: .4byte 0x09F57320
_080A3474: .4byte 0x09F57398

	thumb_func_start sub_080A3478
sub_080A3478: @ 0x080A3478
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A3530 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A3534 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r6, #0
	strh r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	bl sub_0805D874
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3538 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A353C @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A3540 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	add r2, sp, #4
	bl sub_08068A80
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3544 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A3548 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	add r2, sp, #4
	bl sub_08068A80
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A354C @ =0x09F577D0
	str r0, [r5, #0x20]
	ldr r0, _080A3550 @ =0x09F57848
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	str r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A3530: .4byte 0x09F642A0
_080A3534: .4byte 0x09F64318
_080A3538: .4byte 0x09F44FF0
_080A353C: .4byte 0x09F454B0
_080A3540: .4byte gUnknown_080F8E5C
_080A3544: .4byte 0x09F45430
_080A3548: .4byte gUnknown_080F8E64
_080A354C: .4byte 0x09F577D0
_080A3550: .4byte 0x09F57848

	thumb_func_start sub_080A3554
sub_080A3554: @ 0x080A3554
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A35FC @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A3600 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3604 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A3608 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A360C @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3610 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A3614 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A3618 @ =0x09F57C98
	str r0, [r5, #0x20]
	ldr r0, _080A361C @ =0x09F57D10
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A35FC: .4byte 0x09F642A0
_080A3600: .4byte 0x09F64318
_080A3604: .4byte 0x09F44FF0
_080A3608: .4byte 0x09F454B0
_080A360C: .4byte gUnknown_080F8E5C
_080A3610: .4byte 0x09F45430
_080A3614: .4byte gUnknown_080F8E64
_080A3618: .4byte 0x09F57C98
_080A361C: .4byte 0x09F57D10

	thumb_func_start sub_080A3620
sub_080A3620: @ 0x080A3620
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A36C8 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A36CC @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A36D0 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A36D4 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A36D8 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A36DC @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A36E0 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A36E4 @ =0x09F58148
	str r0, [r5, #0x20]
	ldr r0, _080A36E8 @ =0x09F581C0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A36C8: .4byte 0x09F642A0
_080A36CC: .4byte 0x09F64318
_080A36D0: .4byte 0x09F44FF0
_080A36D4: .4byte 0x09F454B0
_080A36D8: .4byte gUnknown_080F8E5C
_080A36DC: .4byte 0x09F45430
_080A36E0: .4byte gUnknown_080F8E64
_080A36E4: .4byte 0x09F58148
_080A36E8: .4byte 0x09F581C0

	thumb_func_start sub_080A36EC
sub_080A36EC: @ 0x080A36EC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A3794 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A3798 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A379C @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A37A0 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A37A4 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A37A8 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A37AC @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A37B0 @ =0x09F585F8
	str r0, [r5, #0x20]
	ldr r0, _080A37B4 @ =0x09F58670
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A3794: .4byte 0x09F642A0
_080A3798: .4byte 0x09F64318
_080A379C: .4byte 0x09F44FF0
_080A37A0: .4byte 0x09F454B0
_080A37A4: .4byte gUnknown_080F8E5C
_080A37A8: .4byte 0x09F45430
_080A37AC: .4byte gUnknown_080F8E64
_080A37B0: .4byte 0x09F585F8
_080A37B4: .4byte 0x09F58670

	thumb_func_start sub_080A37B8
sub_080A37B8: @ 0x080A37B8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A3860 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A3864 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3868 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A386C @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A3870 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3874 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A3878 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A387C @ =0x09F58AA8
	str r0, [r5, #0x20]
	ldr r0, _080A3880 @ =0x09F58B20
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A3860: .4byte 0x09F642A0
_080A3864: .4byte 0x09F64318
_080A3868: .4byte 0x09F44FF0
_080A386C: .4byte 0x09F454B0
_080A3870: .4byte gUnknown_080F8E5C
_080A3874: .4byte 0x09F45430
_080A3878: .4byte gUnknown_080F8E64
_080A387C: .4byte 0x09F58AA8
_080A3880: .4byte 0x09F58B20

	thumb_func_start sub_080A3884
sub_080A3884: @ 0x080A3884
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A392C @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A3930 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3934 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A3938 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A393C @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3940 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A3944 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A3948 @ =0x09F58F60
	str r0, [r5, #0x20]
	ldr r0, _080A394C @ =0x09F58FD8
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A392C: .4byte 0x09F642A0
_080A3930: .4byte 0x09F64318
_080A3934: .4byte 0x09F44FF0
_080A3938: .4byte 0x09F454B0
_080A393C: .4byte gUnknown_080F8E5C
_080A3940: .4byte 0x09F45430
_080A3944: .4byte gUnknown_080F8E64
_080A3948: .4byte 0x09F58F60
_080A394C: .4byte 0x09F58FD8

	thumb_func_start sub_080A3950
sub_080A3950: @ 0x080A3950
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A3A14 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A3A18 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3A1C @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A3A20 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A3A24 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3A28 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A3A2C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A3A30 @ =0x09F59410
	str r0, [r5, #0x20]
	ldr r0, _080A3A34 @ =0x09F59488
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	movs r1, #0x18
	bl sub_0807559C
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A3A14: .4byte 0x09F642A0
_080A3A18: .4byte 0x09F64318
_080A3A1C: .4byte 0x09F44FF0
_080A3A20: .4byte 0x09F454B0
_080A3A24: .4byte gUnknown_080F8E5C
_080A3A28: .4byte 0x09F45430
_080A3A2C: .4byte gUnknown_080F8E64
_080A3A30: .4byte 0x09F59410
_080A3A34: .4byte 0x09F59488

	thumb_func_start sub_080A3A38
sub_080A3A38: @ 0x080A3A38
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A3AF4 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A3AF8 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3AFC @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A3B00 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A3B04 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3B08 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A3B0C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A3B10 @ =0x09F598E0
	str r0, [r5, #0x20]
	ldr r0, _080A3B14 @ =0x09F59958
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A3AF4: .4byte 0x09F642A0
_080A3AF8: .4byte 0x09F64318
_080A3AFC: .4byte 0x09F44FF0
_080A3B00: .4byte 0x09F454B0
_080A3B04: .4byte gUnknown_080F8E5C
_080A3B08: .4byte 0x09F45430
_080A3B0C: .4byte gUnknown_080F8E64
_080A3B10: .4byte 0x09F598E0
_080A3B14: .4byte 0x09F59958

	thumb_func_start sub_080A3B18
sub_080A3B18: @ 0x080A3B18
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A3BC0 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A3BC4 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3BC8 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A3BCC @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A3BD0 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3BD4 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A3BD8 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A3BDC @ =0x09F59DA8
	str r0, [r5, #0x20]
	ldr r0, _080A3BE0 @ =0x09F59E20
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A3BC0: .4byte 0x09F642A0
_080A3BC4: .4byte 0x09F64318
_080A3BC8: .4byte 0x09F44FF0
_080A3BCC: .4byte 0x09F454B0
_080A3BD0: .4byte gUnknown_080F8E5C
_080A3BD4: .4byte 0x09F45430
_080A3BD8: .4byte gUnknown_080F8E64
_080A3BDC: .4byte 0x09F59DA8
_080A3BE0: .4byte 0x09F59E20

	thumb_func_start sub_080A3BE4
sub_080A3BE4: @ 0x080A3BE4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A3C8C @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A3C90 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3C94 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A3C98 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A3C9C @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3CA0 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A3CA4 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A3CA8 @ =0x09F5A258
	str r0, [r5, #0x20]
	ldr r0, _080A3CAC @ =0x09F5A2D0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A3C8C: .4byte 0x09F642A0
_080A3C90: .4byte 0x09F64318
_080A3C94: .4byte 0x09F44FF0
_080A3C98: .4byte 0x09F454B0
_080A3C9C: .4byte gUnknown_080F8E5C
_080A3CA0: .4byte 0x09F45430
_080A3CA4: .4byte gUnknown_080F8E64
_080A3CA8: .4byte 0x09F5A258
_080A3CAC: .4byte 0x09F5A2D0

	thumb_func_start sub_080A3CB0
sub_080A3CB0: @ 0x080A3CB0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A3D6C @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A3D70 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3D74 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A3D78 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A3D7C @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3D80 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A3D84 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A3D88 @ =0x09F5A708
	str r0, [r5, #0x20]
	ldr r0, _080A3D8C @ =0x09F5A780
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A3D6C: .4byte 0x09F642A0
_080A3D70: .4byte 0x09F64318
_080A3D74: .4byte 0x09F44FF0
_080A3D78: .4byte 0x09F454B0
_080A3D7C: .4byte gUnknown_080F8E5C
_080A3D80: .4byte 0x09F45430
_080A3D84: .4byte gUnknown_080F8E64
_080A3D88: .4byte 0x09F5A708
_080A3D8C: .4byte 0x09F5A780

	thumb_func_start sub_080A3D90
sub_080A3D90: @ 0x080A3D90
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A3E68 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A3E6C @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3E70 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A3E74 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A3E78 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3E7C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A3E80 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A3E84 @ =0x09F5ABD0
	str r0, [r5, #0x20]
	ldr r0, _080A3E88 @ =0x09F5AC48
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0x64
	rsbs r1, r1, #0
	str r1, [r0]
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A3E68: .4byte 0x09F642A0
_080A3E6C: .4byte 0x09F64318
_080A3E70: .4byte 0x09F44FF0
_080A3E74: .4byte 0x09F454B0
_080A3E78: .4byte gUnknown_080F8E5C
_080A3E7C: .4byte 0x09F45430
_080A3E80: .4byte gUnknown_080F8E64
_080A3E84: .4byte 0x09F5ABD0
_080A3E88: .4byte 0x09F5AC48

	thumb_func_start sub_080A3E8C
sub_080A3E8C: @ 0x080A3E8C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A3F3C @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A3F40 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3F44 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A3F48 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A3F4C @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3F50 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A3F54 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A3F58 @ =0x09F5B088
	str r0, [r5, #0x20]
	ldr r0, _080A3F5C @ =0x09F5B100
	str r0, [r5, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A3F3C: .4byte 0x09F642A0
_080A3F40: .4byte 0x09F64318
_080A3F44: .4byte 0x09F44FF0
_080A3F48: .4byte 0x09F454B0
_080A3F4C: .4byte gUnknown_080F8E5C
_080A3F50: .4byte 0x09F45430
_080A3F54: .4byte gUnknown_080F8E64
_080A3F58: .4byte 0x09F5B088
_080A3F5C: .4byte 0x09F5B100

	thumb_func_start sub_080A3F60
sub_080A3F60: @ 0x080A3F60
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A4008 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A400C @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4010 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A4014 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A4018 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A401C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A4020 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A4024 @ =0x09F5B538
	str r0, [r5, #0x20]
	ldr r0, _080A4028 @ =0x09F5B5B0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A4008: .4byte 0x09F642A0
_080A400C: .4byte 0x09F64318
_080A4010: .4byte 0x09F44FF0
_080A4014: .4byte 0x09F454B0
_080A4018: .4byte gUnknown_080F8E5C
_080A401C: .4byte 0x09F45430
_080A4020: .4byte gUnknown_080F8E64
_080A4024: .4byte 0x09F5B538
_080A4028: .4byte 0x09F5B5B0

	thumb_func_start sub_080A402C
sub_080A402C: @ 0x080A402C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A40E8 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A40EC @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A40F0 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A40F4 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A40F8 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A40FC @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A4100 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A4104 @ =0x09F5B9E8
	str r0, [r5, #0x20]
	ldr r0, _080A4108 @ =0x09F5BA60
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A40E8: .4byte 0x09F642A0
_080A40EC: .4byte 0x09F64318
_080A40F0: .4byte 0x09F44FF0
_080A40F4: .4byte 0x09F454B0
_080A40F8: .4byte gUnknown_080F8E5C
_080A40FC: .4byte 0x09F45430
_080A4100: .4byte gUnknown_080F8E64
_080A4104: .4byte 0x09F5B9E8
_080A4108: .4byte 0x09F5BA60

	thumb_func_start sub_080A410C
sub_080A410C: @ 0x080A410C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A41D4 @ =0x09F642A0
	str r0, [r7, #0x20]
	ldr r0, _080A41D8 @ =0x09F64318
	str r0, [r7, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r6, #0
	strh r6, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r7, r2
	str r6, [r0]
	bl sub_0805D874
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A41DC @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A41E0 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A41E4 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A41E8 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A41EC @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A41F0 @ =0x09F5BEB8
	str r0, [r7, #0x20]
	ldr r0, _080A41F4 @ =0x09F5BF30
	str r0, [r7, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r1, #0x64
	rsbs r1, r1, #0
	str r1, [r0]
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r0, r7, r2
	str r1, [r0]
	adds r2, #4
	adds r0, r7, r2
	str r1, [r0]
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r7, r1
	str r6, [r0]
	adds r0, r7, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A41D4: .4byte 0x09F642A0
_080A41D8: .4byte 0x09F64318
_080A41DC: .4byte 0x09F44FF0
_080A41E0: .4byte 0x09F454B0
_080A41E4: .4byte gUnknown_080F8E5C
_080A41E8: .4byte 0x09F45430
_080A41EC: .4byte gUnknown_080F8E64
_080A41F0: .4byte 0x09F5BEB8
_080A41F4: .4byte 0x09F5BF30

	thumb_func_start sub_080A41F8
sub_080A41F8: @ 0x080A41F8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A42A0 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A42A4 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A42A8 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A42AC @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A42B0 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A42B4 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A42B8 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A42BC @ =0x09F5C368
	str r0, [r5, #0x20]
	ldr r0, _080A42C0 @ =0x09F5C3E0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A42A0: .4byte 0x09F642A0
_080A42A4: .4byte 0x09F64318
_080A42A8: .4byte 0x09F44FF0
_080A42AC: .4byte 0x09F454B0
_080A42B0: .4byte gUnknown_080F8E5C
_080A42B4: .4byte 0x09F45430
_080A42B8: .4byte gUnknown_080F8E64
_080A42BC: .4byte 0x09F5C368
_080A42C0: .4byte 0x09F5C3E0

	thumb_func_start sub_080A42C4
sub_080A42C4: @ 0x080A42C4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A436C @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A4370 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4374 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A4378 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A437C @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4380 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A4384 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A4388 @ =0x09F5C818
	str r0, [r5, #0x20]
	ldr r0, _080A438C @ =0x09F5C890
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A436C: .4byte 0x09F642A0
_080A4370: .4byte 0x09F64318
_080A4374: .4byte 0x09F44FF0
_080A4378: .4byte 0x09F454B0
_080A437C: .4byte gUnknown_080F8E5C
_080A4380: .4byte 0x09F45430
_080A4384: .4byte gUnknown_080F8E64
_080A4388: .4byte 0x09F5C818
_080A438C: .4byte 0x09F5C890

	thumb_func_start sub_080A4390
sub_080A4390: @ 0x080A4390
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A444C @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A4450 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4454 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A4458 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A445C @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4460 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A4464 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A4468 @ =0x09F5CCC8
	str r0, [r5, #0x20]
	ldr r0, _080A446C @ =0x09F5CD40
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A444C: .4byte 0x09F642A0
_080A4450: .4byte 0x09F64318
_080A4454: .4byte 0x09F44FF0
_080A4458: .4byte 0x09F454B0
_080A445C: .4byte gUnknown_080F8E5C
_080A4460: .4byte 0x09F45430
_080A4464: .4byte gUnknown_080F8E64
_080A4468: .4byte 0x09F5CCC8
_080A446C: .4byte 0x09F5CD40

	thumb_func_start sub_080A4470
sub_080A4470: @ 0x080A4470
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A4528 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A452C @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r6, #0
	strh r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	bl sub_0805D874
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4530 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A4534 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A4538 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	add r2, sp, #4
	bl sub_08068A80
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A453C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A4540 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	add r2, sp, #4
	bl sub_08068A80
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A4544 @ =0x09F5D190
	str r0, [r5, #0x20]
	ldr r0, _080A4548 @ =0x09F5D208
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	str r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A4528: .4byte 0x09F642A0
_080A452C: .4byte 0x09F64318
_080A4530: .4byte 0x09F44FF0
_080A4534: .4byte 0x09F454B0
_080A4538: .4byte gUnknown_080F8E5C
_080A453C: .4byte 0x09F45430
_080A4540: .4byte gUnknown_080F8E64
_080A4544: .4byte 0x09F5D190
_080A4548: .4byte 0x09F5D208

	thumb_func_start sub_080A454C
sub_080A454C: @ 0x080A454C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A45F4 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A45F8 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A45FC @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A4600 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A4604 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4608 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A460C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A4610 @ =0x09F5D640
	str r0, [r5, #0x20]
	ldr r0, _080A4614 @ =0x09F5D6B8
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A45F4: .4byte 0x09F642A0
_080A45F8: .4byte 0x09F64318
_080A45FC: .4byte 0x09F44FF0
_080A4600: .4byte 0x09F454B0
_080A4604: .4byte gUnknown_080F8E5C
_080A4608: .4byte 0x09F45430
_080A460C: .4byte gUnknown_080F8E64
_080A4610: .4byte 0x09F5D640
_080A4614: .4byte 0x09F5D6B8

	thumb_func_start sub_080A4618
sub_080A4618: @ 0x080A4618
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A46C0 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A46C4 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A46C8 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A46CC @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A46D0 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A46D4 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A46D8 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A46DC @ =0x09F5DAF0
	str r0, [r5, #0x20]
	ldr r0, _080A46E0 @ =0x09F5DB68
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A46C0: .4byte 0x09F642A0
_080A46C4: .4byte 0x09F64318
_080A46C8: .4byte 0x09F44FF0
_080A46CC: .4byte 0x09F454B0
_080A46D0: .4byte gUnknown_080F8E5C
_080A46D4: .4byte 0x09F45430
_080A46D8: .4byte gUnknown_080F8E64
_080A46DC: .4byte 0x09F5DAF0
_080A46E0: .4byte 0x09F5DB68

	thumb_func_start sub_080A46E4
sub_080A46E4: @ 0x080A46E4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A478C @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A4790 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4794 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A4798 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A479C @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A47A0 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A47A4 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A47A8 @ =0x09F5DFA0
	str r0, [r5, #0x20]
	ldr r0, _080A47AC @ =0x09F5E018
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A478C: .4byte 0x09F642A0
_080A4790: .4byte 0x09F64318
_080A4794: .4byte 0x09F44FF0
_080A4798: .4byte 0x09F454B0
_080A479C: .4byte gUnknown_080F8E5C
_080A47A0: .4byte 0x09F45430
_080A47A4: .4byte gUnknown_080F8E64
_080A47A8: .4byte 0x09F5DFA0
_080A47AC: .4byte 0x09F5E018

	thumb_func_start sub_080A47B0
sub_080A47B0: @ 0x080A47B0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A4858 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A485C @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4860 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A4864 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A4868 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A486C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A4870 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A4874 @ =0x09F5E450
	str r0, [r5, #0x20]
	ldr r0, _080A4878 @ =0x09F5E4C8
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A4858: .4byte 0x09F642A0
_080A485C: .4byte 0x09F64318
_080A4860: .4byte 0x09F44FF0
_080A4864: .4byte 0x09F454B0
_080A4868: .4byte gUnknown_080F8E5C
_080A486C: .4byte 0x09F45430
_080A4870: .4byte gUnknown_080F8E64
_080A4874: .4byte 0x09F5E450
_080A4878: .4byte 0x09F5E4C8

	thumb_func_start sub_080A487C
sub_080A487C: @ 0x080A487C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A4938 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A493C @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4940 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A4944 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A4948 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A494C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A4950 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A4954 @ =0x09F5E900
	str r0, [r5, #0x20]
	ldr r0, _080A4958 @ =0x09F5E978
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A4938: .4byte 0x09F642A0
_080A493C: .4byte 0x09F64318
_080A4940: .4byte 0x09F44FF0
_080A4944: .4byte 0x09F454B0
_080A4948: .4byte gUnknown_080F8E5C
_080A494C: .4byte 0x09F45430
_080A4950: .4byte gUnknown_080F8E64
_080A4954: .4byte 0x09F5E900
_080A4958: .4byte 0x09F5E978

	thumb_func_start sub_080A495C
sub_080A495C: @ 0x080A495C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A4A04 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A4A08 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4A0C @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A4A10 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A4A14 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4A18 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A4A1C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A4A20 @ =0x09F5EDC8
	str r0, [r5, #0x20]
	ldr r0, _080A4A24 @ =0x09F5EE40
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A4A04: .4byte 0x09F642A0
_080A4A08: .4byte 0x09F64318
_080A4A0C: .4byte 0x09F44FF0
_080A4A10: .4byte 0x09F454B0
_080A4A14: .4byte gUnknown_080F8E5C
_080A4A18: .4byte 0x09F45430
_080A4A1C: .4byte gUnknown_080F8E64
_080A4A20: .4byte 0x09F5EDC8
_080A4A24: .4byte 0x09F5EE40

	thumb_func_start sub_080A4A28
sub_080A4A28: @ 0x080A4A28
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A4AE4 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A4AE8 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4AEC @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A4AF0 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A4AF4 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4AF8 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A4AFC @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A4B00 @ =0x09F5F278
	str r0, [r5, #0x20]
	ldr r0, _080A4B04 @ =0x09F5F2F0
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A4AE4: .4byte 0x09F642A0
_080A4AE8: .4byte 0x09F64318
_080A4AEC: .4byte 0x09F44FF0
_080A4AF0: .4byte 0x09F454B0
_080A4AF4: .4byte gUnknown_080F8E5C
_080A4AF8: .4byte 0x09F45430
_080A4AFC: .4byte gUnknown_080F8E64
_080A4B00: .4byte 0x09F5F278
_080A4B04: .4byte 0x09F5F2F0

	thumb_func_start sub_080A4B08
sub_080A4B08: @ 0x080A4B08
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A4BC0 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A4BC4 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r6, #0
	strh r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	bl sub_0805D874
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4BC8 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A4BCC @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A4BD0 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	add r2, sp, #4
	bl sub_08068A80
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4BD4 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A4BD8 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	add r2, sp, #4
	bl sub_08068A80
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A4BDC @ =0x09F5F740
	str r0, [r5, #0x20]
	ldr r0, _080A4BE0 @ =0x09F5F7B8
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	str r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A4BC0: .4byte 0x09F642A0
_080A4BC4: .4byte 0x09F64318
_080A4BC8: .4byte 0x09F44FF0
_080A4BCC: .4byte 0x09F454B0
_080A4BD0: .4byte gUnknown_080F8E5C
_080A4BD4: .4byte 0x09F45430
_080A4BD8: .4byte gUnknown_080F8E64
_080A4BDC: .4byte 0x09F5F740
_080A4BE0: .4byte 0x09F5F7B8

	thumb_func_start sub_080A4BE4
sub_080A4BE4: @ 0x080A4BE4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A4CA0 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A4CA4 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4CA8 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A4CAC @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A4CB0 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4CB4 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A4CB8 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A4CBC @ =0x09F5FBF0
	str r0, [r5, #0x20]
	ldr r0, _080A4CC0 @ =0x09F5FC68
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A4CA0: .4byte 0x09F642A0
_080A4CA4: .4byte 0x09F64318
_080A4CA8: .4byte 0x09F44FF0
_080A4CAC: .4byte 0x09F454B0
_080A4CB0: .4byte gUnknown_080F8E5C
_080A4CB4: .4byte 0x09F45430
_080A4CB8: .4byte gUnknown_080F8E64
_080A4CBC: .4byte 0x09F5FBF0
_080A4CC0: .4byte 0x09F5FC68

	thumb_func_start sub_080A4CC4
sub_080A4CC4: @ 0x080A4CC4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A4D6C @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A4D70 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4D74 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A4D78 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A4D7C @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4D80 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A4D84 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A4D88 @ =0x09F600A0
	str r0, [r5, #0x20]
	ldr r0, _080A4D8C @ =0x09F60118
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A4D6C: .4byte 0x09F642A0
_080A4D70: .4byte 0x09F64318
_080A4D74: .4byte 0x09F44FF0
_080A4D78: .4byte 0x09F454B0
_080A4D7C: .4byte gUnknown_080F8E5C
_080A4D80: .4byte 0x09F45430
_080A4D84: .4byte gUnknown_080F8E64
_080A4D88: .4byte 0x09F600A0
_080A4D8C: .4byte 0x09F60118

	thumb_func_start sub_080A4D90
sub_080A4D90: @ 0x080A4D90
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A4E4C @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A4E50 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4E54 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A4E58 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A4E5C @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4E60 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A4E64 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A4E68 @ =0x09F60550
	str r0, [r5, #0x20]
	ldr r0, _080A4E6C @ =0x09F605C8
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A4E4C: .4byte 0x09F642A0
_080A4E50: .4byte 0x09F64318
_080A4E54: .4byte 0x09F44FF0
_080A4E58: .4byte 0x09F454B0
_080A4E5C: .4byte gUnknown_080F8E5C
_080A4E60: .4byte 0x09F45430
_080A4E64: .4byte gUnknown_080F8E64
_080A4E68: .4byte 0x09F60550
_080A4E6C: .4byte 0x09F605C8

	thumb_func_start sub_080A4E70
sub_080A4E70: @ 0x080A4E70
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A4F18 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A4F1C @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4F20 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A4F24 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A4F28 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4F2C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A4F30 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A4F34 @ =0x09F60A00
	str r0, [r5, #0x20]
	ldr r0, _080A4F38 @ =0x09F60A78
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A4F18: .4byte 0x09F642A0
_080A4F1C: .4byte 0x09F64318
_080A4F20: .4byte 0x09F44FF0
_080A4F24: .4byte 0x09F454B0
_080A4F28: .4byte gUnknown_080F8E5C
_080A4F2C: .4byte 0x09F45430
_080A4F30: .4byte gUnknown_080F8E64
_080A4F34: .4byte 0x09F60A00
_080A4F38: .4byte 0x09F60A78

	thumb_func_start sub_080A4F3C
sub_080A4F3C: @ 0x080A4F3C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A4FF8 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A4FFC @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A5000 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A5004 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A5008 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A500C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A5010 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A5014 @ =0x09F60EB0
	str r0, [r5, #0x20]
	ldr r0, _080A5018 @ =0x09F60F28
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A4FF8: .4byte 0x09F642A0
_080A4FFC: .4byte 0x09F64318
_080A5000: .4byte 0x09F44FF0
_080A5004: .4byte 0x09F454B0
_080A5008: .4byte gUnknown_080F8E5C
_080A500C: .4byte 0x09F45430
_080A5010: .4byte gUnknown_080F8E64
_080A5014: .4byte 0x09F60EB0
_080A5018: .4byte 0x09F60F28

	thumb_func_start sub_080A501C
sub_080A501C: @ 0x080A501C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A50D8 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A50DC @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A50E0 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A50E4 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A50E8 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A50EC @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A50F0 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A50F4 @ =0x09F61380
	str r0, [r5, #0x20]
	ldr r0, _080A50F8 @ =0x09F613F8
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A50D8: .4byte 0x09F642A0
_080A50DC: .4byte 0x09F64318
_080A50E0: .4byte 0x09F44FF0
_080A50E4: .4byte 0x09F454B0
_080A50E8: .4byte gUnknown_080F8E5C
_080A50EC: .4byte 0x09F45430
_080A50F0: .4byte gUnknown_080F8E64
_080A50F4: .4byte 0x09F61380
_080A50F8: .4byte 0x09F613F8

	thumb_func_start sub_080A50FC
sub_080A50FC: @ 0x080A50FC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A51B8 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A51BC @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r6, #0
	strh r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	bl sub_0805D874
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A51C0 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A51C4 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A51C8 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	add r2, sp, #4
	bl sub_08068A80
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A51CC @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A51D0 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	add r2, sp, #4
	bl sub_08068A80
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A51D4 @ =0x09F61850
	str r0, [r5, #0x20]
	ldr r0, _080A51D8 @ =0x09F618C8
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	str r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A51B8: .4byte 0x09F642A0
_080A51BC: .4byte 0x09F64318
_080A51C0: .4byte 0x09F44FF0
_080A51C4: .4byte 0x09F454B0
_080A51C8: .4byte gUnknown_080F8E5C
_080A51CC: .4byte 0x09F45430
_080A51D0: .4byte gUnknown_080F8E64
_080A51D4: .4byte 0x09F61850
_080A51D8: .4byte 0x09F618C8

	thumb_func_start sub_080A51DC
sub_080A51DC: @ 0x080A51DC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A5298 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A529C @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r6, #0
	strh r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	bl sub_0805D874
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A52A0 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A52A4 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A52A8 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	add r2, sp, #4
	bl sub_08068A80
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A52AC @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A52B0 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	add r2, sp, #4
	bl sub_08068A80
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A52B4 @ =0x09F61D18
	str r0, [r5, #0x20]
	ldr r0, _080A52B8 @ =0x09F61D90
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	str r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A5298: .4byte 0x09F642A0
_080A529C: .4byte 0x09F64318
_080A52A0: .4byte 0x09F44FF0
_080A52A4: .4byte 0x09F454B0
_080A52A8: .4byte gUnknown_080F8E5C
_080A52AC: .4byte 0x09F45430
_080A52B0: .4byte gUnknown_080F8E64
_080A52B4: .4byte 0x09F61D18
_080A52B8: .4byte 0x09F61D90

	thumb_func_start sub_080A52BC
sub_080A52BC: @ 0x080A52BC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A5378 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A537C @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A5380 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A5384 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A5388 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A538C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A5390 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A5394 @ =0x09F621C8
	str r0, [r5, #0x20]
	ldr r0, _080A5398 @ =0x09F62240
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A5378: .4byte 0x09F642A0
_080A537C: .4byte 0x09F64318
_080A5380: .4byte 0x09F44FF0
_080A5384: .4byte 0x09F454B0
_080A5388: .4byte gUnknown_080F8E5C
_080A538C: .4byte 0x09F45430
_080A5390: .4byte gUnknown_080F8E64
_080A5394: .4byte 0x09F621C8
_080A5398: .4byte 0x09F62240

	thumb_func_start sub_080A539C
sub_080A539C: @ 0x080A539C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A5444 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A5448 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A544C @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A5450 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A5454 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A5458 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A545C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A5460 @ =0x09F62678
	str r0, [r5, #0x20]
	ldr r0, _080A5464 @ =0x09F626F0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A5444: .4byte 0x09F642A0
_080A5448: .4byte 0x09F64318
_080A544C: .4byte 0x09F44FF0
_080A5450: .4byte 0x09F454B0
_080A5454: .4byte gUnknown_080F8E5C
_080A5458: .4byte 0x09F45430
_080A545C: .4byte gUnknown_080F8E64
_080A5460: .4byte 0x09F62678
_080A5464: .4byte 0x09F626F0

	thumb_func_start sub_080A5468
sub_080A5468: @ 0x080A5468
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A5510 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A5514 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A5518 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A551C @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A5520 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A5524 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A5528 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A552C @ =0x09F62B28
	str r0, [r5, #0x20]
	ldr r0, _080A5530 @ =0x09F62BA0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A5510: .4byte 0x09F642A0
_080A5514: .4byte 0x09F64318
_080A5518: .4byte 0x09F44FF0
_080A551C: .4byte 0x09F454B0
_080A5520: .4byte gUnknown_080F8E5C
_080A5524: .4byte 0x09F45430
_080A5528: .4byte gUnknown_080F8E64
_080A552C: .4byte 0x09F62B28
_080A5530: .4byte 0x09F62BA0

	thumb_func_start sub_080A5534
sub_080A5534: @ 0x080A5534
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A55DC @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A55E0 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A55E4 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A55E8 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A55EC @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A55F0 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A55F4 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A55F8 @ =0x09F62FD8
	str r0, [r5, #0x20]
	ldr r0, _080A55FC @ =0x09F63050
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A55DC: .4byte 0x09F642A0
_080A55E0: .4byte 0x09F64318
_080A55E4: .4byte 0x09F44FF0
_080A55E8: .4byte 0x09F454B0
_080A55EC: .4byte gUnknown_080F8E5C
_080A55F0: .4byte 0x09F45430
_080A55F4: .4byte gUnknown_080F8E64
_080A55F8: .4byte 0x09F62FD8
_080A55FC: .4byte 0x09F63050

	thumb_func_start sub_080A5600
sub_080A5600: @ 0x080A5600
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A56BC @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A56C0 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A56C4 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A56C8 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A56CC @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A56D0 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A56D4 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A56D8 @ =0x09F63488
	str r0, [r5, #0x20]
	ldr r0, _080A56DC @ =0x09F63500
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A56BC: .4byte 0x09F642A0
_080A56C0: .4byte 0x09F64318
_080A56C4: .4byte 0x09F44FF0
_080A56C8: .4byte 0x09F454B0
_080A56CC: .4byte gUnknown_080F8E5C
_080A56D0: .4byte 0x09F45430
_080A56D4: .4byte gUnknown_080F8E64
_080A56D8: .4byte 0x09F63488
_080A56DC: .4byte 0x09F63500

	thumb_func_start sub_080A56E0
sub_080A56E0: @ 0x080A56E0
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A57B4 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A57B8 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov sl, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A57BC @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A57C0 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A57C4 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A57C8 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A57CC @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A57D0 @ =0x09F63938
	str r0, [r5, #0x20]
	ldr r0, _080A57D4 @ =0x09F639B0
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, sl
	strb r1, [r0]
	ldr r1, _080A57D8 @ =0x00000149
	adds r0, r5, r1
	mov r1, sl
	strb r1, [r0]
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A57B4: .4byte 0x09F642A0
_080A57B8: .4byte 0x09F64318
_080A57BC: .4byte 0x09F44FF0
_080A57C0: .4byte 0x09F454B0
_080A57C4: .4byte gUnknown_080F8E5C
_080A57C8: .4byte 0x09F45430
_080A57CC: .4byte gUnknown_080F8E64
_080A57D0: .4byte 0x09F63938
_080A57D4: .4byte 0x09F639B0
_080A57D8: .4byte 0x00000149

	thumb_func_start sub_080A57DC
sub_080A57DC: @ 0x080A57DC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A5884 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A5888 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A588C @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A5890 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A5894 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A5898 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A589C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	ldr r0, _080A58A0 @ =0x09F63DF0
	str r0, [r5, #0x20]
	ldr r0, _080A58A4 @ =0x09F63E68
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A5884: .4byte 0x09F642A0
_080A5888: .4byte 0x09F64318
_080A588C: .4byte 0x09F44FF0
_080A5890: .4byte 0x09F454B0
_080A5894: .4byte gUnknown_080F8E5C
_080A5898: .4byte 0x09F45430
_080A589C: .4byte gUnknown_080F8E64
_080A58A0: .4byte 0x09F63DF0
_080A58A4: .4byte 0x09F63E68

	thumb_func_start sub_080A58A8
sub_080A58A8: @ 0x080A58A8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A5948 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A594C @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A5950 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A5954 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A5958 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A595C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A5960 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08068A80
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl sub_080689D4
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A5948: .4byte 0x09F642A0
_080A594C: .4byte 0x09F64318
_080A5950: .4byte 0x09F44FF0
_080A5954: .4byte 0x09F454B0
_080A5958: .4byte gUnknown_080F8E5C
_080A595C: .4byte 0x09F45430
_080A5960: .4byte gUnknown_080F8E64

	thumb_func_start sub_080A5964
sub_080A5964: @ 0x080A5964
	push {lr}
	movs r2, #1
	cmp r2, r1
	bge _080A596E
	adds r2, r1, #0
_080A596E:
	adds r1, r2, #0
	bl sub_08081494
	pop {r0}
	bx r0

	thumb_func_start sub_080A5978
sub_080A5978: @ 0x080A5978
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A599C @ =0x0000027F
	cmp r0, #0x32
	bge _080A598C
	subs r1, #1
_080A598C:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A599C: .4byte 0x0000027F

	thumb_func_start sub_080A59A0
sub_080A59A0: @ 0x080A59A0
	push {lr}
	ldr r2, _080A59B4 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A59B8 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A59B4: .4byte 0x09F642A0
_080A59B8: .4byte 0x09F64318

	thumb_func_start sub_080A59BC
sub_080A59BC: @ 0x080A59BC
	push {lr}
	movs r2, #1
	cmp r2, r1
	bge _080A59C6
	adds r2, r1, #0
_080A59C6:
	adds r1, r2, #0
	bl sub_08081494
	pop {r0}
	bx r0

	thumb_func_start sub_080A59D0
sub_080A59D0: @ 0x080A59D0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, r4
	bge _080A59F0
	adds r0, r4, #0
_080A59F0:
	adds r4, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08081494
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A5A00
sub_080A5A00: @ 0x080A5A00
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A5A18
	cmp r0, #1
	beq _080A5A2E
	b _080A5A44
_080A5A18:
	ldr r1, [r4, #0x1c]
	movs r2, #0x8d
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl sub_0809193C
_080A5A2E:
	ldr r1, [r4, #0x1c]
	movs r0, #0x8e
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl sub_0809193C
_080A5A44:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A5A4C
sub_080A5A4C: @ 0x080A5A4C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
_080A5A50:
	movs r5, #0
	movs r4, #0
	b _080A5A6E
_080A5A56:
	adds r0, r4, #0
	bl sub_08072AA4
	movs r1, #2
	bl sub_08072964
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5A6C
	movs r5, #1
_080A5A6C:
	adds r4, #1
_080A5A6E:
	bl sub_08072A88
	cmp r4, r0
	blt _080A5A56
	cmp r5, #1
	bne _080A5A8C
	ldr r0, _080A5A88 @ =0x00000279
	adds r1, r6, #0
	bl sub_080741AC
	bl sub_08074234
	b _080A5A50
	.align 2, 0
_080A5A88: .4byte 0x00000279
_080A5A8C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A5A94
sub_080A5A94: @ 0x080A5A94
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080A5AAE
	cmp r2, #1
	bne _080A5ACA
_080A5AAE:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl sub_0809193C
	movs r0, #1
	b _080A5ACC
_080A5ACA:
	movs r0, #0
_080A5ACC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A5AD4
sub_080A5AD4: @ 0x080A5AD4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_08075064
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5B08
	ldr r1, [r5, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl sub_08091940
_080A5B08:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A5B10
sub_080A5B10: @ 0x080A5B10
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5BA6
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5BA6
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5BA6
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08075010
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5BA6
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A5BA8
_080A5BA6:
	movs r0, #0
_080A5BA8:
	cmp r0, #0
	bne _080A5BB0
	movs r0, #0
	b _080A5C7C
_080A5BB0:
	adds r0, r5, #0
	movs r1, #0x90
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5BD8
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A5BD4 @ =0x00000277
	cmp r0, #0x32
	bge _080A5BD0
	subs r1, #1
_080A5BD0:
	adds r0, r1, #0
	b _080A5C10
	.align 2, 0
_080A5BD4: .4byte 0x00000277
_080A5BD8:
	ldr r1, _080A5C1C @ =0x00000276
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5BF8
	ldr r1, _080A5C20 @ =0x00000277
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5C28
_080A5BF8:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080A5C24 @ =0x0000027B
	cmp r1, #0x21
	blt _080A5C10
	adds r0, #2
	cmp r1, #0x42
	bge _080A5C10
	subs r0, #1
_080A5C10:
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	b _080A5C7A
	.align 2, 0
_080A5C1C: .4byte 0x00000276
_080A5C20: .4byte 0x00000277
_080A5C24: .4byte 0x0000027B
_080A5C28:
	movs r1, #0xdd
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5C5C
	ldr r1, _080A5C84 @ =0x000001BB
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5C5C
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5C7A
_080A5C5C:
	ldr r1, [r4, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	subs r0, #1
	str r0, [r1]
_080A5C7A:
	movs r0, #1
_080A5C7C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A5C84: .4byte 0x000001BB

	thumb_func_start sub_080A5C88
sub_080A5C88: @ 0x080A5C88
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _080A5D3C @ =0x000001BD
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5CAA
	movs r0, #0x90
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A5CAA:
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5D40
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5D40
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5D40
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08075010
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5D40
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A5D42
	.align 2, 0
_080A5D3C: .4byte 0x000001BD
_080A5D40:
	movs r0, #0
_080A5D42:
	cmp r0, #0
	bne _080A5D4A
	movs r0, #0
	b _080A5DC0
_080A5D4A:
	adds r0, r5, #0
	movs r1, #0x90
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5D7C
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A5D78 @ =0x00000277
	cmp r0, #0x32
	bge _080A5D6A
	subs r1, #1
_080A5D6A:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	b _080A5DBE
	.align 2, 0
_080A5D78: .4byte 0x00000277
_080A5D7C:
	ldr r1, _080A5DC8 @ =0x00000276
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5D9C
	ldr r1, _080A5DCC @ =0x00000277
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5DBE
_080A5D9C:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080A5DD0 @ =0x0000027B
	cmp r1, #0x21
	blt _080A5DB4
	adds r0, #2
	cmp r1, #0x42
	bge _080A5DB4
	subs r0, #1
_080A5DB4:
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A5DBE:
	movs r0, #1
_080A5DC0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A5DC8: .4byte 0x00000276
_080A5DCC: .4byte 0x00000277
_080A5DD0: .4byte 0x0000027B

	thumb_func_start sub_080A5DD4
sub_080A5DD4: @ 0x080A5DD4
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A5DEE
	cmp r0, #1
	beq _080A5DF8
	movs r0, #0
	b _080A5E0E
_080A5DEE:
	ldr r1, [r2, #0x1c]
	movs r4, #0x8a
	lsls r4, r4, #3
	adds r1, r1, r4
	b _080A5E00
_080A5DF8:
	ldr r1, [r2, #0x1c]
	movs r0, #0x8b
	lsls r0, r0, #3
	adds r1, r1, r0
_080A5E00:
	movs r4, #0
	ldrsh r0, [r1, r4]
	adds r0, r2, r0
	ldr r2, [r1, #4]
	adds r1, r3, #0
	bl sub_0809193C
_080A5E0E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A5E14
sub_080A5E14: @ 0x080A5E14
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	movs r6, #0
	b _080A5E94
_080A5E1C:
	adds r0, r6, #0
	bl sub_08072AA4
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5E90
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5E90
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x19
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5E90
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1a
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5E92
_080A5E90:
	adds r7, #1
_080A5E92:
	adds r6, #1
_080A5E94:
	bl sub_08072A88
	cmp r6, r0
	blt _080A5E1C
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080A5EA4
sub_080A5EA4: @ 0x080A5EA4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	ble _080A5ED0
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x31
	bgt _080A5ED0
	movs r0, #0x90
	b _080A5F2C
_080A5ED0:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #2
	cmp r0, r1
	bgt _080A5F08
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A5F04 @ =0x00000277
	cmp r0, #0x37
	bge _080A5F2A
	b _080A5F28
	.align 2, 0
_080A5F04: .4byte 0x00000277
_080A5F08:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A5F38 @ =0x00000276
	cmp r0, #0x28
	blt _080A5F2A
	adds r1, #1
	cmp r0, #0x46
	blt _080A5F2A
	subs r1, #0xbd
	cmp r0, #0x55
	blt _080A5F2A
	adds r1, #2
	cmp r0, #0x5f
	bge _080A5F2A
_080A5F28:
	subs r1, #1
_080A5F2A:
	adds r0, r1, #0
_080A5F2C:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A5F38: .4byte 0x00000276

	thumb_func_start sub_080A5F3C
sub_080A5F3C: @ 0x080A5F3C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	ble _080A5F68
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x31
	bgt _080A5F68
	movs r0, #0x90
	b _080A5F7A
_080A5F68:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A5F88 @ =0x00000277
	cmp r0, #0x3c
	bge _080A5F78
	subs r1, #1
_080A5F78:
	adds r0, r1, #0
_080A5F7A:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A5F88: .4byte 0x00000277

	thumb_func_start sub_080A5F8C
sub_080A5F8C: @ 0x080A5F8C
	push {lr}
	adds r2, r0, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A5FA4
	cmp r0, #1
	beq _080A5FAE
	movs r0, #0
	b _080A5FC2
_080A5FA4:
	ldr r1, [r2, #0x1c]
	movs r3, #0x87
	lsls r3, r3, #3
	adds r1, r1, r3
	b _080A5FB6
_080A5FAE:
	ldr r1, [r2, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
_080A5FB6:
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl sub_08091938
_080A5FC2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A5FC8
sub_080A5FC8: @ 0x080A5FC8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
_080A5FCC:
	movs r5, #0
	movs r4, #0
	b _080A5FEA
_080A5FD2:
	adds r0, r4, #0
	bl sub_08072AA4
	movs r1, #2
	bl sub_08072964
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5FE8
	movs r5, #1
_080A5FE8:
	adds r4, #1
_080A5FEA:
	bl sub_08072A88
	cmp r4, r0
	blt _080A5FD2
	cmp r5, #1
	bne _080A6008
	ldr r0, _080A6004 @ =0x00000279
	adds r1, r6, #0
	bl sub_080741AC
	bl sub_08074234
	b _080A5FCC
	.align 2, 0
_080A6004: .4byte 0x00000279
_080A6008:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A6010
sub_080A6010: @ 0x080A6010
	push {lr}
	ldr r2, _080A6024 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A6028 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A6024: .4byte 0x09F642A0
_080A6028: .4byte 0x09F64318

	thumb_func_start sub_080A602C
sub_080A602C: @ 0x080A602C
	push {lr}
	movs r2, #1
	cmp r2, r1
	bge _080A6036
	adds r2, r1, #0
_080A6036:
	adds r1, r2, #0
	bl sub_08081494
	pop {r0}
	bx r0

	thumb_func_start sub_080A6040
sub_080A6040: @ 0x080A6040
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	ble _080A6062
	movs r0, #0x9c
	lsls r0, r0, #2
	b _080A6064
_080A6062:
	ldr r0, _080A6070 @ =0x0000026F
_080A6064:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A6070: .4byte 0x0000026F

	thumb_func_start sub_080A6074
sub_080A6074: @ 0x080A6074
	push {lr}
	ldr r2, _080A6088 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A608C @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A6088: .4byte 0x09F642A0
_080A608C: .4byte 0x09F64318

	thumb_func_start sub_080A6090
sub_080A6090: @ 0x080A6090
	push {lr}
	movs r2, #1
	cmp r2, r1
	bge _080A609A
	adds r2, r1, #0
_080A609A:
	adds r1, r2, #0
	bl sub_08081494
	pop {r0}
	bx r0

	thumb_func_start sub_080A60A4
sub_080A60A4: @ 0x080A60A4
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080A60BE
	cmp r2, #1
	bne _080A60DA
_080A60BE:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl sub_0809193C
	movs r0, #1
	b _080A60DC
_080A60DA:
	movs r0, #0
_080A60DC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A60E4
sub_080A60E4: @ 0x080A60E4
	bx lr
	.align 2, 0

	thumb_func_start sub_080A60E8
sub_080A60E8: @ 0x080A60E8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x14
	bl sub_0809193C
	cmp r4, r0
	bgt _080A6134
	ldr r1, [r5, #0x1c]
	movs r0, #0x96
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #4
	movs r2, #0
	bl sub_08091940
_080A6134:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A613C
sub_080A613C: @ 0x080A613C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x28
	bl sub_0809193C
	cmp r4, r0
	bgt _080A6188
	ldr r1, [r5, #0x1c]
	movs r0, #0x96
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #3
	movs r2, #0
	bl sub_08091940
_080A6188:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A6190
sub_080A6190: @ 0x080A6190
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x3c
	bl sub_0809193C
	cmp r4, r0
	bgt _080A61DC
	ldr r1, [r5, #0x1c]
	movs r0, #0x96
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0
	bl sub_08091940
_080A61DC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A61E4
sub_080A61E4: @ 0x080A61E4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x50
	bl sub_0809193C
	cmp r4, r0
	bgt _080A6230
	ldr r1, [r5, #0x1c]
	movs r0, #0x96
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl sub_08091940
_080A6230:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A6238
sub_080A6238: @ 0x080A6238
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl nullsub_32
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	ble _080A62F6
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #4
	bhi _080A62F6
	lsls r0, r0, #2
	ldr r1, _080A6270 @ =_080A6274
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A6270: .4byte _080A6274
_080A6274: @ jump table
	.4byte _080A6288 @ case 0
	.4byte _080A629E @ case 1
	.4byte _080A62B4 @ case 2
	.4byte _080A62CA @ case 3
	.4byte _080A62E0 @ case 4
_080A6288:
	ldr r1, [r4, #0x1c]
	movs r2, #0x91
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl sub_0809193C
_080A629E:
	ldr r1, [r4, #0x1c]
	movs r0, #0x92
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl sub_0809193C
_080A62B4:
	ldr r1, [r4, #0x1c]
	movs r0, #0x93
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl sub_0809193C
_080A62CA:
	ldr r1, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl sub_0809193C
_080A62E0:
	ldr r1, [r4, #0x1c]
	movs r0, #0x95
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl sub_0809193C
_080A62F6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A62FC
sub_080A62FC: @ 0x080A62FC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	ldr r1, [r0, #0x1c]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	ldr r1, _080A6350 @ =0x01A90000
	cmp r0, r1
	bne _080A6346
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A6354 @ =0x00000265
	cmp r0, #0xf
	blt _080A633A
	adds r1, #3
	cmp r0, #0x23
	blt _080A633A
	adds r1, #3
	cmp r0, #0x50
	bge _080A633A
	subs r1, #2
_080A633A:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A6346:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A6350: .4byte 0x01A90000
_080A6354: .4byte 0x00000265

	thumb_func_start sub_080A6358
sub_080A6358: @ 0x080A6358
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	ldr r1, [r0, #0x1c]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	ldr r1, _080A63B0 @ =0x01A90000
	cmp r0, r1
	bne _080A63A8
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A63B4 @ =0x00000265
	cmp r0, #0xf
	blt _080A639C
	adds r1, #2
	cmp r0, #0x1e
	blt _080A639C
	adds r1, #1
	cmp r0, #0x46
	blt _080A639C
	adds r1, #3
	cmp r0, #0x50
	bge _080A639C
	subs r1, #1
_080A639C:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A63A8:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A63B0: .4byte 0x01A90000
_080A63B4: .4byte 0x00000265

	thumb_func_start sub_080A63B8
sub_080A63B8: @ 0x080A63B8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	ldr r1, [r0, #0x1c]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	ldr r1, _080A6410 @ =0x01A90000
	cmp r0, r1
	bne _080A6408
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A6414 @ =0x00000265
	cmp r0, #0xf
	blt _080A63FC
	adds r1, #2
	cmp r0, #0x32
	blt _080A63FC
	adds r1, #3
	cmp r0, #0x41
	blt _080A63FC
	adds r1, #1
	cmp r0, #0x4b
	bge _080A63FC
	subs r1, #5
_080A63FC:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A6408:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A6410: .4byte 0x01A90000
_080A6414: .4byte 0x00000265

	thumb_func_start sub_080A6418
sub_080A6418: @ 0x080A6418
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	ldr r1, [r0, #0x1c]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	ldr r1, _080A6470 @ =0x01A90000
	cmp r0, r1
	bne _080A6468
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A6474 @ =0x00000265
	cmp r0, #0x14
	blt _080A645C
	adds r1, #2
	cmp r0, #0x37
	blt _080A645C
	adds r1, #7
	cmp r0, #0x41
	blt _080A645C
	subs r1, #4
	cmp r0, #0x50
	bge _080A645C
	subs r1, #4
_080A645C:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A6468:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A6470: .4byte 0x01A90000
_080A6474: .4byte 0x00000265

	thumb_func_start sub_080A6478
sub_080A6478: @ 0x080A6478
	movs r0, #1
	bx lr

	thumb_func_start sub_080A647C
sub_080A647C: @ 0x080A647C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6512
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6512
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6512
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08075010
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A6512
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A6514
_080A6512:
	movs r0, #0
_080A6514:
	cmp r0, #0
	beq _080A6582
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #4
	bhi _080A6582
	lsls r0, r0, #2
	ldr r1, _080A6530 @ =_080A6534
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A6530: .4byte _080A6534
_080A6534: @ jump table
	.4byte _080A6548 @ case 0
	.4byte _080A6552 @ case 1
	.4byte _080A655A @ case 2
	.4byte _080A6562 @ case 3
	.4byte _080A656A @ case 4
_080A6548:
	ldr r1, [r4, #0x1c]
	movs r2, #0x8c
	lsls r2, r2, #3
	adds r1, r1, r2
	b _080A6572
_080A6552:
	ldr r1, [r4, #0x1c]
	movs r0, #0x8d
	lsls r0, r0, #3
	b _080A6570
_080A655A:
	ldr r1, [r4, #0x1c]
	movs r0, #0x8e
	lsls r0, r0, #3
	b _080A6570
_080A6562:
	ldr r1, [r4, #0x1c]
	movs r0, #0x8f
	lsls r0, r0, #3
	b _080A6570
_080A656A:
	ldr r1, [r4, #0x1c]
	movs r0, #0x90
	lsls r0, r0, #3
_080A6570:
	adds r1, r1, r0
_080A6572:
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl sub_0809193C
	b _080A6584
_080A6582:
	movs r0, #0
_080A6584:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A658C
sub_080A658C: @ 0x080A658C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bgt _080A65B0
	ldr r0, _080A65AC @ =0x000001A9
	b _080A660E
	.align 2, 0
_080A65AC: .4byte 0x000001A9
_080A65B0:
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080A65E8 @ =0x00000269
	cmp r0, r5
	bne _080A65F0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080A65EC @ =0x00000265
	cmp r1, #0x1e
	blt _080A660E
	adds r0, #6
	cmp r1, #0x41
	bge _080A660E
	subs r0, #3
	b _080A660E
	.align 2, 0
_080A65E8: .4byte 0x00000269
_080A65EC: .4byte 0x00000265
_080A65F0:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A661C @ =0x00000265
	cmp r0, #0xf
	blt _080A660C
	adds r1, #3
	cmp r0, #0x23
	blt _080A660C
	adds r1, #3
	cmp r0, #0x50
	bge _080A660C
	adds r1, r5, #0
_080A660C:
	adds r0, r1, #0
_080A660E:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A661C: .4byte 0x00000265

	thumb_func_start sub_080A6620
sub_080A6620: @ 0x080A6620
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bgt _080A6644
	ldr r0, _080A6640 @ =0x000001A9
	b _080A66AC
	.align 2, 0
_080A6640: .4byte 0x000001A9
_080A6644:
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080A6680 @ =0x0000026A
	cmp r0, r5
	bne _080A6688
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A6684 @ =0x00000265
	cmp r0, #0x14
	blt _080A66AA
	adds r1, #2
	cmp r0, #0x28
	blt _080A66AA
	adds r1, #4
	cmp r0, #0x50
	bge _080A66AA
	subs r1, #3
	b _080A66AA
	.align 2, 0
_080A6680: .4byte 0x0000026A
_080A6684: .4byte 0x00000265
_080A6688:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A66B8 @ =0x00000265
	cmp r0, #0xf
	blt _080A66AA
	adds r1, #2
	cmp r0, #0x1e
	blt _080A66AA
	adds r1, #1
	cmp r0, #0x46
	blt _080A66AA
	adds r1, #3
	cmp r0, #0x50
	bge _080A66AA
	adds r1, r5, #0
_080A66AA:
	adds r0, r1, #0
_080A66AC:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A66B8: .4byte 0x00000265

	thumb_func_start sub_080A66BC
sub_080A66BC: @ 0x080A66BC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bgt _080A66E0
	ldr r0, _080A66DC @ =0x000001A9
	b _080A678C
	.align 2, 0
_080A66DC: .4byte 0x000001A9
_080A66E0:
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080A671C @ =0x0000026A
	cmp r0, r5
	bne _080A6724
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A6720 @ =0x00000265
	cmp r0, #0x14
	blt _080A678A
	adds r1, #2
	cmp r0, #0x3c
	blt _080A678A
	subs r1, #1
	cmp r0, #0x46
	bge _080A678A
	adds r1, #8
	b _080A678A
	.align 2, 0
_080A671C: .4byte 0x0000026A
_080A6720: .4byte 0x00000265
_080A6724:
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r6, _080A6760 @ =0x00000266
	cmp r0, r6
	bne _080A6768
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A6764 @ =0x00000265
	cmp r0, #0x14
	blt _080A678A
	adds r1, #2
	cmp r0, #0x3c
	blt _080A678A
	adds r1, #4
	cmp r0, #0x4b
	bge _080A678A
	adds r1, r5, #0
	b _080A678A
	.align 2, 0
_080A6760: .4byte 0x00000266
_080A6764: .4byte 0x00000265
_080A6768:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A6798 @ =0x00000265
	cmp r0, #0xf
	blt _080A678A
	adds r1, #2
	cmp r0, #0x32
	blt _080A678A
	adds r1, r5, #0
	cmp r0, #0x41
	blt _080A678A
	ldr r1, _080A679C @ =0x0000026B
	cmp r0, #0x4b
	bge _080A678A
	adds r1, r6, #0
_080A678A:
	adds r0, r1, #0
_080A678C:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A6798: .4byte 0x00000265
_080A679C: .4byte 0x0000026B

	thumb_func_start sub_080A67A0
sub_080A67A0: @ 0x080A67A0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bgt _080A67C4
	ldr r0, _080A67C0 @ =0x000001A9
	b _080A6880
	.align 2, 0
_080A67C0: .4byte 0x000001A9
_080A67C4:
	ldr r1, [r4, #0x1c]
	movs r6, #0x85
	lsls r6, r6, #3
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r7, _080A6810 @ =0x0000026E
	cmp r0, r7
	beq _080A67FC
	ldr r1, [r4, #0x1c]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080A6814 @ =0x00000266
	cmp r0, r5
	bne _080A681C
_080A67FC:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A6818 @ =0x00000267
	cmp r0, #0x32
	bge _080A687E
	subs r1, #2
	b _080A687E
	.align 2, 0
_080A6810: .4byte 0x0000026E
_080A6814: .4byte 0x00000266
_080A6818: .4byte 0x00000267
_080A681C:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r6, _080A6854 @ =0x0000026A
	cmp r0, r6
	bne _080A685C
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A6858 @ =0x00000265
	cmp r0, #0x19
	blt _080A687E
	adds r1, #2
	cmp r0, #0x41
	blt _080A687E
	adds r1, r5, #0
	cmp r0, #0x50
	bge _080A687E
	adds r1, r7, #0
	b _080A687E
	.align 2, 0
_080A6854: .4byte 0x0000026A
_080A6858: .4byte 0x00000265
_080A685C:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A688C @ =0x00000265
	cmp r0, #0x14
	blt _080A687E
	adds r1, #2
	cmp r0, #0x37
	blt _080A687E
	adds r1, r7, #0
	cmp r0, #0x41
	blt _080A687E
	adds r1, r6, #0
	cmp r0, #0x50
	bge _080A687E
	adds r1, r5, #0
_080A687E:
	adds r0, r1, #0
_080A6880:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A688C: .4byte 0x00000265

	thumb_func_start sub_080A6890
sub_080A6890: @ 0x080A6890
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r6, _080A68D4 @ =0x0000026E
	cmp r0, r6
	beq _080A68D0
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080A68D8 @ =0x00000266
	cmp r0, r5
	bne _080A68E0
_080A68D0:
	ldr r0, _080A68DC @ =0x00000265
	b _080A68F8
	.align 2, 0
_080A68D4: .4byte 0x0000026E
_080A68D8: .4byte 0x00000266
_080A68DC: .4byte 0x00000265
_080A68E0:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080A6904 @ =0x00000265
	cmp r1, #0x3c
	blt _080A68F8
	adds r0, r5, #0
	cmp r1, #0x50
	bge _080A68F8
	adds r0, r6, #0
_080A68F8:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A6904: .4byte 0x00000265

	thumb_func_start sub_080A6908
sub_080A6908: @ 0x080A6908
	push {lr}
	adds r2, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #4
	bhi _080A6974
	lsls r0, r0, #2
	ldr r1, _080A6924 @ =_080A6928
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A6924: .4byte _080A6928
_080A6928: @ jump table
	.4byte _080A693C @ case 0
	.4byte _080A6946 @ case 1
	.4byte _080A694E @ case 2
	.4byte _080A6956 @ case 3
	.4byte _080A695E @ case 4
_080A693C:
	ldr r1, [r2, #0x1c]
	movs r3, #0x87
	lsls r3, r3, #3
	adds r1, r1, r3
	b _080A6966
_080A6946:
	ldr r1, [r2, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	b _080A6964
_080A694E:
	ldr r1, [r2, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	b _080A6964
_080A6956:
	ldr r1, [r2, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	b _080A6964
_080A695E:
	ldr r1, [r2, #0x1c]
	movs r0, #0x8b
	lsls r0, r0, #3
_080A6964:
	adds r1, r1, r0
_080A6966:
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080A6976
_080A6974:
	movs r0, #0
_080A6976:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A697C
sub_080A697C: @ 0x080A697C
	push {lr}
	ldr r2, _080A6990 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A6994 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A6990: .4byte 0x09F642A0
_080A6994: .4byte 0x09F64318

	thumb_func_start sub_080A6998
sub_080A6998: @ 0x080A6998
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC
	cmp r0, #1
	bgt _080A69AC
	ldr r0, _080A69A8 @ =0x0000026D
	b _080A69DA
	.align 2, 0
_080A69A8: .4byte 0x0000026D
_080A69AC:
	bl sub_08072DFC
	cmp r0, #2
	bgt _080A69BA
	movs r0, #0x9b
	lsls r0, r0, #2
	b _080A69DA
_080A69BA:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xd7
	lsls r1, r1, #1
	cmp r0, #0x19
	blt _080A69D8
	adds r1, #1
	cmp r0, #0x32
	blt _080A69D8
	adds r1, #2
	cmp r0, #0x4b
	bge _080A69D8
	subs r1, #1
_080A69D8:
	adds r0, r1, #0
_080A69DA:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A69E8
sub_080A69E8: @ 0x080A69E8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC
	cmp r0, #1
	bgt _080A69FC
	ldr r0, _080A69F8 @ =0x0000026D
	b _080A6A1C
	.align 2, 0
_080A69F8: .4byte 0x0000026D
_080A69FC:
	bl sub_08072DFC
	cmp r0, #2
	bgt _080A6A0A
	movs r0, #0x9b
	lsls r0, r0, #2
	b _080A6A1C
_080A6A0A:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A6A28 @ =0x000001B9
	cmp r0, #0x37
	bge _080A6A1A
	subs r1, #0xf
_080A6A1A:
	adds r0, r1, #0
_080A6A1C:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A6A28: .4byte 0x000001B9

	thumb_func_start sub_080A6A2C
sub_080A6A2C: @ 0x080A6A2C
	push {lr}
	adds r2, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A6A44
	cmp r0, #1
	beq _080A6A4E
	movs r0, #0
	b _080A6A62
_080A6A44:
	ldr r1, [r2, #0x1c]
	movs r3, #0x88
	lsls r3, r3, #3
	adds r1, r1, r3
	b _080A6A56
_080A6A4E:
	ldr r1, [r2, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
_080A6A56:
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl sub_08091938
_080A6A62:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A6A68
sub_080A6A68: @ 0x080A6A68
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080A6A82
	cmp r2, #1
	bne _080A6A9E
_080A6A82:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl sub_0809193C
	movs r0, #1
	b _080A6AA0
_080A6A9E:
	movs r0, #0
_080A6AA0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A6AA8
sub_080A6AA8: @ 0x080A6AA8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A6ABE
	cmp r0, #1
	beq _080A6AE8
	b _080A6B10
_080A6ABE:
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	bgt _080A6B10
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl sub_08091940
	b _080A6B10
_080A6AE8:
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0
	movs r2, #0
	bl sub_08091940
	movs r0, #2
	movs r1, #3
	bl sub_08070660
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	str r0, [r1]
_080A6B10:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A6B18
sub_080A6B18: @ 0x080A6B18
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bgt _080A6B42
	movs r0, #0x84
	lsls r0, r0, #2
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A6B42:
	adds r0, r4, #0
	bl sub_08080F54
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A6B50
sub_080A6B50: @ 0x080A6B50
	push {lr}
	ldr r2, _080A6B64 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A6B68 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A6B64: .4byte 0x09F642A0
_080A6B68: .4byte 0x09F64318

	thumb_func_start sub_080A6B6C
sub_080A6B6C: @ 0x080A6B6C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xd7
	lsls r1, r1, #1
	cmp r0, #0x19
	blt _080A6B8E
	adds r1, #1
	cmp r0, #0x32
	blt _080A6B8E
	adds r1, #2
	cmp r0, #0x4b
	bge _080A6B8E
	subs r1, #1
_080A6B8E:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A6B9C
sub_080A6B9C: @ 0x080A6B9C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A6BC0 @ =0x000001B9
	cmp r0, #0x37
	bge _080A6BB0
	subs r1, #0xf
_080A6BB0:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A6BC0: .4byte 0x000001B9

	thumb_func_start sub_080A6BC4
sub_080A6BC4: @ 0x080A6BC4
	push {lr}
	adds r2, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A6BDC
	cmp r0, #1
	beq _080A6BE6
	movs r0, #0
	b _080A6BFA
_080A6BDC:
	ldr r1, [r2, #0x1c]
	movs r3, #0x88
	lsls r3, r3, #3
	adds r1, r1, r3
	b _080A6BEE
_080A6BE6:
	ldr r1, [r2, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
_080A6BEE:
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl sub_08091938
_080A6BFA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A6C00
sub_080A6C00: @ 0x080A6C00
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080A6C1A
	cmp r2, #1
	bne _080A6C36
_080A6C1A:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl sub_0809193C
	movs r0, #1
	b _080A6C38
_080A6C36:
	movs r0, #0
_080A6C38:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A6C40
sub_080A6C40: @ 0x080A6C40
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A6C56
	cmp r0, #1
	beq _080A6C80
	b _080A6CA8
_080A6C56:
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	bgt _080A6CA8
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl sub_08091940
	b _080A6CA8
_080A6C80:
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0
	movs r2, #0
	bl sub_08091940
	movs r0, #2
	movs r1, #3
	bl sub_08070660
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	str r0, [r1]
_080A6CA8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A6CB0
sub_080A6CB0: @ 0x080A6CB0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bgt _080A6CDA
	movs r0, #0x84
	lsls r0, r0, #2
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A6CDA:
	adds r0, r4, #0
	bl sub_08080F54
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A6CE8
sub_080A6CE8: @ 0x080A6CE8
	push {lr}
	ldr r2, _080A6CFC @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A6D00 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A6CFC: .4byte 0x09F642A0
_080A6D00: .4byte 0x09F64318

	thumb_func_start sub_080A6D04
sub_080A6D04: @ 0x080A6D04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r7, r0, #0
	adds r6, r1, #0
	bl nullsub_34
	ldr r1, [r7, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bgt _080A6D2A
	b _080A6E8C
_080A6D2A:
	ldr r1, [r6, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #1
	beq _080A6D44
	b _080A6E8C
_080A6D44:
	ldr r1, [r7, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6D64
	b _080A6E8C
_080A6D64:
	movs r0, #0x14
	bl sub_0807068C
	ldr r1, [r7, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl sub_0809193C
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl sub_0809193C
	add r1, sp, #0x34
	movs r5, #0
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	ldr r0, _080A6EC0 @ =0x0000064E
	bl sub_08070824
	movs r0, #0x47
	adds r1, r7, #0
	adds r2, r7, #0
	bl sub_080730FC
	ldr r1, [r6, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r1, #0x14
	movs r2, #1
	bl sub_08073734
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r2, r0, #0
	movs r0, #0x49
	adds r1, r4, #0
	bl sub_080730FC
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #0x10
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl sub_0809193C
	add r0, sp, #0x1c
	bl sub_0806E274
	add r0, sp, #0x28
	bl sub_0806E274
	add r4, sp, #0x28
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x9f
	lsls r1, r1, #2
	add r2, sp, #0x10
	add r3, sp, #0x1c
	bl sub_08073460
	add r1, sp, #0x38
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #0x1c
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #0x10
	movs r1, #2
	bl sub_0806E308
_080A6E8C:
	ldr r1, [r7, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	ble _080A6F42
	adds r0, r6, #0
	movs r1, #1
	bl sub_08073FC4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A6EC4
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, [r1]
	adds r0, #3
	b _080A6F40
	.align 2, 0
_080A6EC0: .4byte 0x0000064E
_080A6EC4:
	adds r0, r6, #0
	movs r1, #0xf
	bl sub_0807404C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6F04
	adds r0, r6, #0
	movs r1, #0x10
	bl sub_0807404C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6F04
	adds r0, r6, #0
	movs r1, #0x11
	bl sub_0807404C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6F04
	adds r0, r6, #0
	movs r1, #0x12
	bl sub_0807404C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A6F10
_080A6F04:
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r0, [r1]
	adds r0, #5
	b _080A6F40
_080A6F10:
	adds r0, r6, #0
	bl sub_08074020
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A6F42
	ldr r1, [r6, #0x1c]
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bne _080A6F42
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, [r1]
	adds r0, #4
_080A6F40:
	str r0, [r1]
_080A6F42:
	add sp, #0x3c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A6F4C
sub_080A6F4C: @ 0x080A6F4C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6FE2
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6FE2
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6FE2
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08075010
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A6FE2
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A6FE4
_080A6FE2:
	movs r0, #0
_080A6FE4:
	cmp r0, #0
	bne _080A6FEC
	movs r0, #0
	b _080A705C
_080A6FEC:
	ldr r6, _080A7024 @ =0x0000019F
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A702C
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	adds r0, r6, #0
	cmp r1, #0x2d
	blt _080A7016
	ldr r0, _080A7028 @ =0x000001A3
	cmp r1, #0x50
	bge _080A7016
	subs r0, #1
_080A7016:
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	b _080A705A
	.align 2, 0
_080A7024: .4byte 0x0000019F
_080A7028: .4byte 0x000001A3
_080A702C:
	movs r1, #0xd3
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A705A
	ldr r1, [r4, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	str r0, [r1]
_080A705A:
	movs r0, #1
_080A705C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A7064
sub_080A7064: @ 0x080A7064
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x12
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7108
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x21
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7108
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x13
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7108
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x14
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7108
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x22
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7108
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x15
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A710C
_080A7108:
	movs r0, #1
	b _080A710E
_080A710C:
	movs r0, #0
_080A710E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A7114
sub_080A7114: @ 0x080A7114
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	movs r6, #0
	b _080A71C8
_080A711C:
	adds r0, r6, #0
	bl sub_080729F8
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1b
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A71C4
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x31
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A71C4
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1c
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A71C4
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1d
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A71C4
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A71C4
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A71C6
_080A71C4:
	adds r7, #1
_080A71C6:
	adds r6, #1
_080A71C8:
	bl sub_080729DC
	cmp r6, r0
	blt _080A711C
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080A71D8
sub_080A71D8: @ 0x080A71D8
	push {r4, r5, r6, lr}
	movs r6, #0
	movs r5, #0
	b _080A7228
_080A71E0:
	adds r0, r5, #0
	bl sub_080729F8
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x19
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7224
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1a
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7226
_080A7224:
	adds r6, #1
_080A7226:
	adds r5, #1
_080A7228:
	bl sub_080729DC
	cmp r5, r0
	blt _080A71E0
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080A7238
sub_080A7238: @ 0x080A7238
	push {r4, r5, r6, lr}
	movs r6, #0
	movs r5, #0
	b _080A7288
_080A7240:
	adds r0, r5, #0
	bl sub_080729F8
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7284
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7286
_080A7284:
	adds r6, #1
_080A7286:
	adds r5, #1
_080A7288:
	bl sub_080729DC
	cmp r5, r0
	blt _080A7240
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080A7298
sub_080A7298: @ 0x080A7298
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0x8b
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	ble _080A72C0
	movs r3, #0xac
	lsls r3, r3, #1
	adds r1, r6, r3
	ldr r0, [r1]
	adds r0, #6
	str r0, [r1]
_080A72C0:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	ble _080A72E4
	movs r3, #0xae
	lsls r3, r3, #1
	adds r1, r6, r3
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
_080A72E4:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8d
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	ble _080A7308
	movs r3, #0xb0
	lsls r3, r3, #1
	adds r1, r6, r3
	ldr r0, [r1]
	adds r0, #4
	str r0, [r1]
_080A7308:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8e
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #1
	bne _080A732C
	movs r3, #0xb2
	lsls r3, r3, #1
	adds r1, r6, r3
	ldr r0, [r1]
	adds r0, #5
	str r0, [r1]
_080A732C:
	movs r4, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	movs r3, #0
	adds r2, r6, r1
_080A733A:
	ldr r1, [r2]
	cmp r1, r0
	ble _080A7344
	adds r4, r3, #0
	adds r0, r1, #0
_080A7344:
	adds r2, #4
	adds r3, #1
	cmp r3, #6
	ble _080A733A
	movs r2, #0
	movs r1, #6
	movs r3, #0xb2
	lsls r3, r3, #1
	adds r0, r6, r3
_080A7356:
	str r2, [r0]
	subs r0, #4
	subs r1, #1
	cmp r1, #0
	bge _080A7356
	cmp r4, #6
	bhi _080A73E8
	lsls r0, r4, #2
	ldr r1, _080A7370 @ =_080A7374
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A7370: .4byte _080A7374
_080A7374: @ jump table
	.4byte _080A7390 @ case 0
	.4byte _080A73A0 @ case 1
	.4byte _080A73AC @ case 2
	.4byte _080A73BC @ case 3
	.4byte _080A73C6 @ case 4
	.4byte _080A73D0 @ case 5
	.4byte _080A73DC @ case 6
_080A7390:
	ldr r0, _080A739C @ =0x000001A5
	adds r1, r6, #0
	bl sub_080741AC
	b _080A7442
	.align 2, 0
_080A739C: .4byte 0x000001A5
_080A73A0:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r6, #0
	bl sub_080741AC
	b _080A7442
_080A73AC:
	ldr r0, _080A73B8 @ =0x000001A9
	adds r1, r6, #0
	bl sub_080741AC
	b _080A7442
	.align 2, 0
_080A73B8: .4byte 0x000001A9
_080A73BC:
	movs r0, #0x90
	adds r1, r6, #0
	bl sub_080741AC
	b _080A7442
_080A73C6:
	movs r0, #0x90
	adds r1, r6, #0
	bl sub_080741AC
	b _080A7442
_080A73D0:
	movs r0, #0xc7
	lsls r0, r0, #1
	adds r1, r6, #0
	bl sub_080741AC
	b _080A7442
_080A73DC:
	movs r0, #0xd2
	lsls r0, r0, #1
	adds r1, r6, #0
	bl sub_080741AC
	b _080A7442
_080A73E8:
	ldr r1, [r6, #0x1c]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	ble _080A7440
	ldr r0, [r6, #0x1c]
	movs r3, #0xd8
	lsls r3, r3, #2
	adds r5, r0, r3
	movs r1, #0
	ldrsh r4, [r5, r1]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl sub_0809193C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080A7442
_080A7440:
	movs r0, #0
_080A7442:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080A7448
sub_080A7448: @ 0x080A7448
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bgt _080A746A
	movs r0, #0xd3
	lsls r0, r0, #1
	b _080A74D4
_080A746A:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #2
	cmp r0, r1
	bgt _080A74B0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A74AC @ =0x0000019F
	cmp r0, #0xf
	blt _080A74D2
	adds r1, #1
	cmp r0, #0x2d
	blt _080A74D2
	adds r1, #2
	cmp r0, #0x41
	bge _080A74D2
	subs r1, #1
	b _080A74D2
	.align 2, 0
_080A74AC: .4byte 0x0000019F
_080A74B0:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A74E0 @ =0x0000019F
	cmp r0, #0xa
	blt _080A74D2
	adds r1, #1
	cmp r0, #0x23
	blt _080A74D2
	adds r1, #1
	cmp r0, #0x32
	blt _080A74D2
	adds r1, #5
	cmp r0, #0x46
	bge _080A74D2
	subs r1, #4
_080A74D2:
	adds r0, r1, #0
_080A74D4:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A74E0: .4byte 0x0000019F

	thumb_func_start sub_080A74E4
sub_080A74E4: @ 0x080A74E4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A7518 @ =0x0000019F
	cmp r0, #0xf
	blt _080A750A
	adds r1, #1
	cmp r0, #0x32
	blt _080A750A
	adds r1, #1
	cmp r0, #0x46
	blt _080A750A
	adds r1, #2
	cmp r0, #0x5a
	bge _080A750A
	subs r1, #1
_080A750A:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A7518: .4byte 0x0000019F

	thumb_func_start sub_080A751C
sub_080A751C: @ 0x080A751C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	ble _080A756C
	ldr r1, [r6, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r1, #3
	bl sub_0807067C
	cmp r0, #0
	bne _080A756C
	ldr r1, [r6, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080A7602
_080A756C:
	movs r1, #0xb4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A75D4
	cmp r0, #1
	beq _080A75EA
	ldr r1, [r6, #0x1c]
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	ble _080A7600
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl sub_0809193C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080A7602
_080A75D4:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080A7602
_080A75EA:
	ldr r1, [r6, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080A7602
_080A7600:
	movs r0, #0
_080A7602:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080A7608
sub_080A7608: @ 0x080A7608
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080A7622
	cmp r2, #1
	bne _080A763E
_080A7622:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl sub_0809193C
	movs r0, #1
	b _080A7640
_080A763E:
	movs r0, #0
_080A7640:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A7648
sub_080A7648: @ 0x080A7648
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl sub_0809193C
	cmp r4, r0
	bge _080A7694
	ldr r1, [r5, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl sub_08091940
_080A7694:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A769C
sub_080A769C: @ 0x080A769C
	push {lr}
	ldr r2, _080A76B0 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A76B4 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A76B0: .4byte 0x09F642A0
_080A76B4: .4byte 0x09F64318

	thumb_func_start sub_080A76B8
sub_080A76B8: @ 0x080A76B8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A774E
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A774E
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A774E
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08075010
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A774E
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A7750
_080A774E:
	movs r0, #0
_080A7750:
	cmp r0, #0
	bne _080A7758
	movs r0, #0
	b _080A7776
_080A7758:
	adds r0, r5, #0
	movs r1, #0xaa
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7774
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080A7774:
	movs r0, #1
_080A7776:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A777C
sub_080A777C: @ 0x080A777C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bgt _080A77C4
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A77C0 @ =0x00000241
	cmp r0, #0x3c
	blt _080A77BC
	movs r1, #0x82
	lsls r1, r1, #1
	cmp r0, #0x50
	blt _080A77BC
	movs r1, #0x6d
	cmp r0, #0x5a
	blt _080A77BC
	movs r1, #0xaa
	cmp r0, #0x5f
	bge _080A77BC
_080A77BA:
	movs r1, #0x4a
_080A77BC:
	adds r0, r1, #0
	b _080A7808
	.align 2, 0
_080A77C0: .4byte 0x00000241
_080A77C4:
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #1
	bgt _080A77EE
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x82
	lsls r1, r1, #1
	cmp r0, #0x1e
	blt _080A77BC
	movs r1, #0x6d
	cmp r0, #0x46
	blt _080A77BC
	movs r1, #0xaa
	cmp r0, #0x50
	bge _080A77BC
	b _080A77BA
_080A77EE:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x82
	lsls r0, r0, #1
	cmp r1, #0x23
	blt _080A7808
	movs r0, #0x4a
	cmp r1, #0x50
	bge _080A7808
	movs r0, #0x6d
_080A7808:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A7814
sub_080A7814: @ 0x080A7814
	push {lr}
	ldr r2, _080A7828 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A782C @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A7828: .4byte 0x09F642A0
_080A782C: .4byte 0x09F64318

	thumb_func_start sub_080A7830
sub_080A7830: @ 0x080A7830
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl nullsub_32
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	ble _080A789C
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _080A789C
	ldr r1, [r4, #0x1c]
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #1
	bne _080A789C
	ldr r1, [r5, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #1
	bne _080A789C
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A789C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A78A4
sub_080A78A4: @ 0x080A78A4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl nullsub_35
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A78CA
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
_080A78CA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A78D0
sub_080A78D0: @ 0x080A78D0
	push {r4, lr}
	movs r4, #0
	b _080A791C
_080A78D6:
	adds r0, r4, #0
	bl sub_08072EC4
	ldr r2, [r0, #0x1c]
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	cmp r0, #4
	beq _080A7912
	adds r0, r4, #0
	bl sub_08072EC4
	ldr r2, [r0, #0x1c]
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl sub_08091938
	cmp r0, #3
	bne _080A791A
_080A7912:
	adds r0, r4, #0
	bl sub_08072EC4
	b _080A7926
_080A791A:
	adds r4, #1
_080A791C:
	bl sub_08072EA8
	cmp r4, r0
	blt _080A78D6
	movs r0, #0
_080A7926:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A792C
sub_080A792C: @ 0x080A792C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _080A7978 @ =0x0000019D
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A797C
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r3, r0, #0
	cmp r3, #0
	beq _080A797C
	ldr r1, [r5, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r3, #0
	bl sub_0809193C
	movs r0, #1
	b _080A7984
	.align 2, 0
_080A7978: .4byte 0x0000019D
_080A797C:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08080EB8
_080A7984:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A798C
sub_080A798C: @ 0x080A798C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A79B0 @ =0x0000019D
	cmp r0, #0x46
	bge _080A79A0
	movs r1, #0x6d
_080A79A0:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A79B0: .4byte 0x0000019D

	thumb_func_start sub_080A79B4
sub_080A79B4: @ 0x080A79B4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _080A79D0
	ldr r0, _080A79DC @ =0x00000129
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A79D0:
	adds r0, r4, #0
	bl sub_08080F54
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A79DC: .4byte 0x00000129

	thumb_func_start sub_080A79E0
sub_080A79E0: @ 0x080A79E0
	push {lr}
	ldr r2, _080A79F4 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A79F8 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A79F4: .4byte 0x09F642A0
_080A79F8: .4byte 0x09F64318

	thumb_func_start sub_080A79FC
sub_080A79FC: @ 0x080A79FC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7A92
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7A92
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7A92
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08075010
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7A92
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A7A94
_080A7A92:
	movs r0, #0
_080A7A94:
	cmp r0, #0
	bne _080A7A9C
	movs r0, #0
	b _080A7ABA
_080A7A9C:
	ldr r1, _080A7AC0 @ =0x00000243
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7AB8
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080A7AB8:
	movs r0, #1
_080A7ABA:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A7AC0: .4byte 0x00000243

	thumb_func_start sub_080A7AC4
sub_080A7AC4: @ 0x080A7AC4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #1
	bgt _080A7AF4
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x82
	lsls r0, r0, #1
	cmp r1, #0x46
	blt _080A7B08
	ldr r0, _080A7AF0 @ =0x00000243
	cmp r1, #0x55
	bge _080A7B08
	subs r0, #0x6f
	b _080A7B08
	.align 2, 0
_080A7AF0: .4byte 0x00000243
_080A7AF4:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xea
	lsls r1, r1, #1
	cmp r0, #0x50
	bge _080A7B06
	subs r1, #0xd0
_080A7B06:
	adds r0, r1, #0
_080A7B08:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A7B14
sub_080A7B14: @ 0x080A7B14
	push {lr}
	ldr r2, _080A7B28 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A7B2C @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A7B28: .4byte 0x09F642A0
_080A7B2C: .4byte 0x09F64318

	thumb_func_start sub_080A7B30
sub_080A7B30: @ 0x080A7B30
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7BC6
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7BC6
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7BC6
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08075010
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7BC6
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A7BC8
_080A7BC6:
	movs r0, #0
_080A7BC8:
	cmp r0, #0
	bne _080A7BD0
	movs r0, #0
	b _080A7BEE
_080A7BD0:
	adds r0, r5, #0
	movs r1, #0x50
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7BEC
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080A7BEC:
	movs r0, #1
_080A7BEE:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A7BF4
sub_080A7BF4: @ 0x080A7BF4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl sub_0809193C
	cmp r4, r0
	bge _080A7C48
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x82
	lsls r0, r0, #1
	cmp r1, #0x19
	blt _080A7CEA
	ldr r0, _080A7C44 @ =0x0000022A
	cmp r1, #0x3c
	bge _080A7CEA
	movs r0, #0x6d
	b _080A7CEA
	.align 2, 0
_080A7C44: .4byte 0x0000022A
_080A7C48:
	bl sub_08072DFC
	cmp r0, #2
	bgt _080A7CA2
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	ble _080A7C7C
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x82
	lsls r1, r1, #1
	cmp r0, #0x14
	blt _080A7CE8
	movs r1, #0x23
	cmp r0, #0x37
	blt _080A7CE8
	movs r1, #0xc3
	cmp r0, #0x41
	bge _080A7CE8
	movs r1, #0x28
	b _080A7CE8
_080A7C7C:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x82
	lsls r1, r1, #1
	cmp r0, #0xf
	blt _080A7CE8
	movs r1, #0x50
	cmp r0, #0x2d
	blt _080A7CE8
	movs r1, #0x23
	cmp r0, #0x4b
	blt _080A7CE8
	movs r1, #0xc3
	cmp r0, #0x50
	bge _080A7CE8
	movs r1, #0x28
	b _080A7CE8
_080A7CA2:
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	ble _080A7CCA
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x82
	lsls r0, r0, #1
	cmp r1, #0x1e
	blt _080A7CEA
	movs r0, #0x28
	cmp r1, #0x50
	bge _080A7CEA
	movs r0, #0x23
	b _080A7CEA
_080A7CCA:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x82
	lsls r1, r1, #1
	cmp r0, #0x14
	blt _080A7CE8
	movs r1, #0x50
	cmp r0, #0x32
	blt _080A7CE8
	movs r1, #0x28
	cmp r0, #0x5a
	bge _080A7CE8
	movs r1, #0x23
_080A7CE8:
	adds r0, r1, #0
_080A7CEA:
	adds r1, r5, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A7CF8
sub_080A7CF8: @ 0x080A7CF8
	push {lr}
	ldr r2, _080A7D0C @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A7D10 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A7D0C: .4byte 0x09F642A0
_080A7D10: .4byte 0x09F64318

	thumb_func_start sub_080A7D14
sub_080A7D14: @ 0x080A7D14
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	adds r1, r5, #0
	bl sub_08075770
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r5, #0x16
	bne _080A7D5E
	ldr r1, [r4, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl sub_0809193C
	cmp r0, #0
	bgt _080A7D5E
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa4
	lsls r2, r2, #1
	b _080A7D94
_080A7D5E:
	cmp r5, #0x19
	bne _080A7D98
	ldr r1, [r4, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x19
	bl sub_0809193C
	cmp r0, #0
	bgt _080A7D98
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa6
	lsls r2, r2, #1
_080A7D94:
	adds r1, r4, r2
	str r0, [r1]
_080A7D98:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080A7DA0
sub_080A7DA0: @ 0x080A7DA0
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	blt _080A7DBA
	cmp r2, #1
	bne _080A7DD6
_080A7DBA:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl sub_0809193C
	movs r0, #1
	b _080A7DD8
_080A7DD6:
	movs r0, #0
_080A7DD8:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A7DE0
sub_080A7DE0: @ 0x080A7DE0
	push {r4, r5, r6, lr}
	sub sp, #0x38
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl sub_0809193C
	cmp r4, r0
	bge _080A7E30
	ldr r1, [r5, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0
	bl sub_08091940
	b _080A7EEA
_080A7E30:
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x3c
	bl sub_0809193C
	cmp r4, r0
	bge _080A7EEA
	ldr r1, [r5, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl sub_08091940
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7EEA
	ldr r0, _080A7EF4 @ =0x00000237
	adds r1, r5, #0
	bl sub_080741AC
	bl sub_08074234
	movs r0, #0x78
	bl sub_0807068C
	add r6, sp, #0x10
	adds r0, r6, #0
	bl sub_0806E274
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl sub_0806E274
	add r4, sp, #0x28
	adds r0, r4, #0
	bl sub_0806E274
	ldr r1, _080A7EF8 @ =0x000004EB
	str r4, [sp]
	add r0, sp, #4
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08073460
	add r1, sp, #0x34
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
_080A7EEA:
	add sp, #0x38
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A7EF4: .4byte 0x00000237
_080A7EF8: .4byte 0x000004EB

	thumb_func_start sub_080A7EFC
sub_080A7EFC: @ 0x080A7EFC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7F92
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7F92
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7F92
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08075010
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7F92
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A7F94
_080A7F92:
	movs r0, #0
_080A7F94:
	cmp r0, #0
	bne _080A7F9C
	movs r0, #0
	b _080A80A2
_080A7F9C:
	ldr r6, _080A7FD0 @ =0x00000243
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7FD4
	ldr r1, [r4, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r4, r2
	subs r0, #1
	str r0, [r1]
	b _080A80A0
	.align 2, 0
_080A7FD0: .4byte 0x00000243
_080A7FD4:
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A804C
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #2
	cmp r0, r1
	bgt _080A8020
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A801C @ =0x00000242
	cmp r0, #0x41
	bge _080A8018
	subs r1, #0x55
_080A8018:
	adds r0, r1, #0
	b _080A8038
	.align 2, 0
_080A801C: .4byte 0x00000242
_080A8020:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080A8044 @ =0x000001ED
	cmp r1, #0x3c
	blt _080A8038
	adds r0, r6, #0
	cmp r1, #0x5a
	bge _080A8038
	ldr r0, _080A8048 @ =0x00000242
_080A8038:
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	b _080A80A0
	.align 2, 0
_080A8044: .4byte 0x000001ED
_080A8048: .4byte 0x00000242
_080A804C:
	ldr r1, _080A80A8 @ =0x000001ED
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A806C
	ldr r1, _080A80AC @ =0x00000242
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A80A0
_080A806C:
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x45
	bgt _080A80A0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A80B0 @ =0x000001F1
	cmp r0, #0x19
	blt _080A8094
	adds r1, #1
	cmp r0, #0x32
	blt _080A8094
	subs r1, #2
	cmp r0, #0x4b
	bge _080A8094
	adds r1, #3
_080A8094:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A80A0:
	movs r0, #1
_080A80A2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A80A8: .4byte 0x000001ED
_080A80AC: .4byte 0x00000242
_080A80B0: .4byte 0x000001F1

	thumb_func_start sub_080A80B4
sub_080A80B4: @ 0x080A80B4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #6
	bgt _080A80E6
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xf7
	lsls r1, r1, #1
	cmp r0, #0x32
	bge _080A80E2
	subs r1, #1
_080A80E2:
	adds r0, r1, #0
	b _080A81FA
_080A80E6:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	blt _080A8112
	ldr r1, [r4, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r5]
	adds r1, #3
	cmp r0, r1
	bne _080A8112
	movs r0, #0xb5
	b _080A81FA
_080A8112:
	ldr r1, [r4, #0x1c]
	movs r5, #0x84
	lsls r5, r5, #3
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	subs r0, #1
	movs r1, #6
	bl sub_0807067C
	cmp r0, #0
	bne _080A814E
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x8e
	lsls r0, r0, #2
	cmp r1, #0x2d
	blt _080A81FA
	movs r0, #0x88
	cmp r1, #0x50
	bge _080A81FA
	movs r0, #0x65
	b _080A81FA
_080A814E:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	subs r0, #1
	movs r1, #6
	bl sub_0807067C
	cmp r0, #1
	beq _080A81F8
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	subs r0, #1
	movs r1, #6
	bl sub_0807067C
	cmp r0, #2
	bne _080A81A4
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x65
	cmp r0, #0x46
	bge _080A819A
	ldr r1, _080A81A0 @ =0x00000223
_080A819A:
	adds r0, r1, #0
	b _080A81FA
	.align 2, 0
_080A81A0: .4byte 0x00000223
_080A81A4:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	subs r0, #1
	movs r1, #6
	bl sub_0807067C
	cmp r0, #3
	beq _080A81F8
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	subs r0, #1
	movs r1, #6
	bl sub_0807067C
	cmp r0, #4
	bne _080A81F8
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x8e
	lsls r0, r0, #2
	cmp r1, #0x23
	blt _080A81FA
	subs r0, #0xd5
	cmp r1, #0x37
	bge _080A81FA
	movs r0, #0xac
	b _080A81FA
_080A81F8:
	ldr r0, _080A8208 @ =0x000001F5
_080A81FA:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A8208: .4byte 0x000001F5

	thumb_func_start sub_080A820C
sub_080A820C: @ 0x080A820C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0x28
	bgt _080A823E
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xf7
	lsls r1, r1, #1
	cmp r0, #0x32
	bge _080A823A
	subs r1, #1
_080A823A:
	adds r0, r1, #0
	b _080A830A
_080A823E:
	ldr r1, [r4, #0x1c]
	movs r6, #0x84
	lsls r6, r6, #3
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bgt _080A825A
_080A8256:
	movs r0, #0xb5
	b _080A830A
_080A825A:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	blt _080A827E
	ldr r1, [r4, #0x1c]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r5]
	adds r1, #3
	cmp r0, r1
	beq _080A8256
_080A827E:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	subs r0, #1
	movs r1, #3
	bl sub_0807067C
	cmp r0, #0
	bne _080A82BA
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x8e
	lsls r0, r0, #2
	cmp r1, #0x2d
	blt _080A830A
	movs r0, #0x88
	cmp r1, #0x50
	bge _080A830A
	movs r0, #0x65
	b _080A830A
_080A82BA:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	subs r0, #1
	movs r1, #3
	bl sub_0807067C
	cmp r0, #1
	bne _080A82F0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x65
	cmp r0, #0x46
	bge _080A823A
	ldr r1, _080A82EC @ =0x00000223
	b _080A823A
	.align 2, 0
_080A82EC: .4byte 0x00000223
_080A82F0:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x8e
	lsls r0, r0, #2
	cmp r1, #0x23
	blt _080A830A
	subs r0, #0xd5
	cmp r1, #0x37
	bge _080A830A
	movs r0, #0xac
_080A830A:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A8318
sub_080A8318: @ 0x080A8318
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	blt _080A834A
	ldr r1, [r4, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r5]
	adds r1, #3
	cmp r0, r1
	bne _080A834A
	movs r0, #0xfa
	lsls r0, r0, #1
	b _080A83D6
_080A834A:
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080A836C @ =0x00000191
	cmp r0, r5
	bne _080A8374
	ldr r0, _080A8370 @ =0x000001EF
	b _080A83D6
	.align 2, 0
_080A836C: .4byte 0x00000191
_080A8370: .4byte 0x000001EF
_080A8374:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #2
	cmp r0, r1
	bgt _080A83B8
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080A83B0 @ =0x000001ED
	cmp r1, #0x28
	blt _080A83D6
	adds r0, r5, #0
	cmp r1, #0x50
	bge _080A83D6
	ldr r0, _080A83B4 @ =0x00000242
	b _080A83D6
	.align 2, 0
_080A83B0: .4byte 0x000001ED
_080A83B4: .4byte 0x00000242
_080A83B8:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A83E4 @ =0x000001ED
	cmp r0, #0x1e
	blt _080A83D4
	adds r1, #0x55
	cmp r0, #0x3c
	blt _080A83D4
	adds r1, #1
	cmp r0, #0x50
	bge _080A83D4
	adds r1, r5, #0
_080A83D4:
	adds r0, r1, #0
_080A83D6:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A83E4: .4byte 0x000001ED

	thumb_func_start sub_080A83E8
sub_080A83E8: @ 0x080A83E8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _080A841E
	cmp r0, #1
	bgt _080A8402
	cmp r0, #0
	beq _080A8408
	b _080A844A
_080A8402:
	cmp r0, #2
	beq _080A8434
	b _080A844A
_080A8408:
	ldr r1, [r6, #0x1c]
	movs r2, #0x87
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080A84A4
_080A841E:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080A84A4
_080A8434:
	ldr r1, [r6, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080A84A4
_080A844A:
	ldr r1, [r6, #0x1c]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	ble _080A84A2
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl sub_0809193C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080A84A4
_080A84A2:
	movs r0, #0
_080A84A4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A84AC
sub_080A84AC: @ 0x080A84AC
	push {lr}
	ldr r2, _080A84C0 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A84C4 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A84C0: .4byte 0x09F642A0
_080A84C4: .4byte 0x09F64318

	thumb_func_start sub_080A84C8
sub_080A84C8: @ 0x080A84C8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A855E
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A855E
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A855E
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08075010
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A855E
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A8560
_080A855E:
	movs r0, #0
_080A8560:
	cmp r0, #0
	bne _080A8568
	movs r0, #0
	b _080A8652
_080A8568:
	movs r6, #0xc9
	lsls r6, r6, #1
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A858E
	ldr r7, _080A85A8 @ =0x00000193
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A85AC
_080A858E:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	adds r0, r6, #0
	cmp r1, #0x21
	blt _080A85EE
	movs r0, #0xcb
	lsls r0, r0, #1
	cmp r1, #0x42
	bge _080A85EE
	b _080A85EC
	.align 2, 0
_080A85A8: .4byte 0x00000193
_080A85AC:
	adds r0, r5, #0
	movs r1, #0x90
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A8600
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bgt _080A85D4
	ldr r0, _080A85D0 @ =0x00000195
	b _080A85EE
	.align 2, 0
_080A85D0: .4byte 0x00000195
_080A85D4:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	adds r0, r6, #0
	cmp r1, #0x19
	blt _080A85EE
	movs r0, #0xcb
	lsls r0, r0, #1
	cmp r1, #0x32
	bge _080A85EE
_080A85EC:
	ldr r0, _080A85FC @ =0x00000193
_080A85EE:
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	b _080A8650
	.align 2, 0
_080A85FC: .4byte 0x00000193
_080A8600:
	ldr r1, _080A8658 @ =0x00000197
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A8632
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A8632
	ldr r1, _080A865C @ =0x00000195
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A8650
_080A8632:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	subs r0, #1
	str r0, [r1]
_080A8650:
	movs r0, #1
_080A8652:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A8658: .4byte 0x00000197
_080A865C: .4byte 0x00000195

	thumb_func_start sub_080A8660
sub_080A8660: @ 0x080A8660
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	movs r6, #0
	b _080A86E0
_080A8668:
	adds r0, r6, #0
	bl sub_080729F8
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A86DC
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A86DC
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x19
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A86DC
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1a
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A86DE
_080A86DC:
	adds r7, #1
_080A86DE:
	adds r6, #1
_080A86E0:
	bl sub_080729DC
	cmp r6, r0
	blt _080A8668
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080A86F0
sub_080A86F0: @ 0x080A86F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #2
	bgt _080A8724
_080A870C:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A8720 @ =0x00000193
	cmp r0, #0x28
	bge _080A87E8
	subs r1, #1
	b _080A87E8
	.align 2, 0
_080A8720: .4byte 0x00000193
_080A8724:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #3
	bgt _080A8740
	movs r0, #0x90
	b _080A87EA
_080A8740:
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	ble _080A8768
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x1d
	bgt _080A8768
	movs r0, #0x90
	b _080A87EA
_080A8768:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #4
	ble _080A870C
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #2
	cmp r0, r1
	bgt _080A87BE
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0xc9
	lsls r0, r0, #1
	cmp r1, #0x1e
	blt _080A87EA
	adds r0, #4
	cmp r1, #0x46
	bge _080A87EA
	subs r0, #3
	b _080A87EA
_080A87BE:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xc9
	lsls r1, r1, #1
	cmp r0, #0xf
	blt _080A87E8
	adds r1, #1
	cmp r0, #0x28
	blt _080A87E8
	adds r1, #3
	cmp r0, #0x37
	blt _080A87E8
	adds r1, #1
	cmp r0, #0x55
	blt _080A87E8
	subs r1, #2
	cmp r0, #0x5f
	bge _080A87E8
	adds r1, #3
_080A87E8:
	adds r0, r1, #0
_080A87EA:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A87F8
sub_080A87F8: @ 0x080A87F8
	push {lr}
	ldr r2, _080A880C @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A8810 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A880C: .4byte 0x09F642A0
_080A8810: .4byte 0x09F64318

	thumb_func_start sub_080A8814
sub_080A8814: @ 0x080A8814
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080A882E
	cmp r2, #1
	bne _080A884A
_080A882E:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl sub_0809193C
	movs r0, #1
	b _080A884C
_080A884A:
	movs r0, #0
_080A884C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A8854
sub_080A8854: @ 0x080A8854
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A88EA
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A88EA
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A88EA
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08075010
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A88EA
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A88EC
_080A88EA:
	movs r0, #0
_080A88EC:
	cmp r0, #0
	bne _080A88F4
	movs r0, #0
	b _080A89C2
_080A88F4:
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A891A
	ldr r1, [r4, #0x1c]
	movs r2, #0x8c
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	b _080A898C
_080A891A:
	ldr r1, _080A8940 @ =0x000001FF
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A8944
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #2
	b _080A898C
	.align 2, 0
_080A8940: .4byte 0x000001FF
_080A8944:
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A896A
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #3
	b _080A898C
_080A896A:
	ldr r1, _080A8994 @ =0x00000201
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A8998
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #4
_080A898C:
	movs r2, #0
	bl sub_08091940
	b _080A89C0
	.align 2, 0
_080A8994: .4byte 0x00000201
_080A8998:
	movs r1, #0x85
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A89C0
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl sub_0809193C
_080A89C0:
	movs r0, #1
_080A89C2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A89C8
sub_080A89C8: @ 0x080A89C8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bgt _080A89F6
	movs r0, #5
	bl sub_08072AC4
	cmp r0, #0
	beq _080A89F2
	movs r0, #0xf7
	b _080A8A32
_080A89F2:
	movs r0, #0xfa
	b _080A8A32
_080A89F6:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #1
	bgt _080A8A20
	movs r0, #5
	bl sub_08072AC4
	cmp r0, #0
	beq _080A8A1C
	movs r0, #0xf8
	b _080A8A32
_080A8A1C:
	movs r0, #0xfa
	b _080A8A32
_080A8A20:
	movs r0, #5
	bl sub_08072AC4
	cmp r0, #0
	bne _080A8A30
	movs r0, #0x85
	lsls r0, r0, #1
	b _080A8A32
_080A8A30:
	ldr r0, _080A8A40 @ =0x00000205
_080A8A32:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A8A40: .4byte 0x00000205

	thumb_func_start sub_080A8A44
sub_080A8A44: @ 0x080A8A44
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bgt _080A8A72
	movs r0, #3
	bl sub_08072AC4
	cmp r0, #0
	beq _080A8A6E
	movs r0, #0xf7
	b _080A8AB0
_080A8A6E:
	movs r0, #0xfa
	b _080A8AB0
_080A8A72:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #1
	bgt _080A8A9C
	movs r0, #3
	bl sub_08072AC4
	cmp r0, #0
	beq _080A8A98
	movs r0, #0xf8
	b _080A8AB0
_080A8A98:
	movs r0, #0xfa
	b _080A8AB0
_080A8A9C:
	movs r0, #3
	bl sub_08072AC4
	cmp r0, #0
	bne _080A8AAC
	movs r0, #0x85
	lsls r0, r0, #1
	b _080A8AB0
_080A8AAC:
	movs r0, #0x81
	lsls r0, r0, #2
_080A8AB0:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A8ABC
sub_080A8ABC: @ 0x080A8ABC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bgt _080A8AEA
	movs r0, #4
	bl sub_08072AC4
	cmp r0, #0
	beq _080A8AE6
	movs r0, #0xf7
	b _080A8B26
_080A8AE6:
	movs r0, #0xfa
	b _080A8B26
_080A8AEA:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #1
	bgt _080A8B14
	movs r0, #4
	bl sub_08072AC4
	cmp r0, #0
	beq _080A8B10
	movs r0, #0xf8
	b _080A8B26
_080A8B10:
	movs r0, #0xfa
	b _080A8B26
_080A8B14:
	movs r0, #4
	bl sub_08072AC4
	cmp r0, #0
	bne _080A8B24
	movs r0, #0x85
	lsls r0, r0, #1
	b _080A8B26
_080A8B24:
	ldr r0, _080A8B34 @ =0x00000203
_080A8B26:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A8B34: .4byte 0x00000203

	thumb_func_start sub_080A8B38
sub_080A8B38: @ 0x080A8B38
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bgt _080A8B66
	movs r0, #2
	bl sub_08072AC4
	cmp r0, #0
	beq _080A8B62
	movs r0, #0xf7
	b _080A8BA2
_080A8B62:
	movs r0, #0xfa
	b _080A8BA2
_080A8B66:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #1
	bgt _080A8B90
	movs r0, #2
	bl sub_08072AC4
	cmp r0, #0
	beq _080A8B8C
	movs r0, #0xf8
	b _080A8BA2
_080A8B8C:
	movs r0, #0xfa
	b _080A8BA2
_080A8B90:
	movs r0, #2
	bl sub_08072AC4
	cmp r0, #0
	bne _080A8BA0
	movs r0, #0x85
	lsls r0, r0, #1
	b _080A8BA2
_080A8BA0:
	ldr r0, _080A8BB0 @ =0x00000202
_080A8BA2:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A8BB0: .4byte 0x00000202

	thumb_func_start sub_080A8BB4
sub_080A8BB4: @ 0x080A8BB4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A8BF0 @ =0x00000113
	cmp r0, #0xf
	blt _080A8BE2
	movs r1, #0xe3
	cmp r0, #0x14
	blt _080A8BE2
	movs r1, #0xff
	lsls r1, r1, #1
	cmp r0, #0x28
	blt _080A8BE2
	adds r1, #1
	cmp r0, #0x3c
	blt _080A8BE2
	adds r1, #2
	cmp r0, #0x50
	bge _080A8BE2
	subs r1, #1
_080A8BE2:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A8BF0: .4byte 0x00000113

	thumb_func_start sub_080A8BF4
sub_080A8BF4: @ 0x080A8BF4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #4
	bhi _080A8C96
	lsls r0, r0, #2
	ldr r1, _080A8C10 @ =_080A8C14
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A8C10: .4byte _080A8C14
_080A8C14: @ jump table
	.4byte _080A8C28 @ case 0
	.4byte _080A8C3E @ case 1
	.4byte _080A8C54 @ case 2
	.4byte _080A8C6A @ case 3
	.4byte _080A8C80 @ case 4
_080A8C28:
	ldr r1, [r6, #0x1c]
	movs r2, #0x87
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080A8CF0
_080A8C3E:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080A8CF0
_080A8C54:
	ldr r1, [r6, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080A8CF0
_080A8C6A:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080A8CF0
_080A8C80:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8b
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080A8CF0
_080A8C96:
	ldr r1, [r6, #0x1c]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	ble _080A8CEE
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl sub_0809193C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080A8CF0
_080A8CEE:
	movs r0, #0
_080A8CF0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A8CF8
sub_080A8CF8: @ 0x080A8CF8
	push {lr}
	ldr r2, _080A8D0C @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A8D10 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A8D0C: .4byte 0x09F642A0
_080A8D10: .4byte 0x09F64318

	thumb_func_start sub_080A8D14
sub_080A8D14: @ 0x080A8D14
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC
	cmp r0, #2
	bgt _080A8D44
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A8D40 @ =0x00000113
	cmp r0, #0x37
	blt _080A8D60
	adds r1, #0xd
	cmp r0, #0x4b
	blt _080A8D60
	subs r1, #0x13
	cmp r0, #0x55
	bge _080A8D60
	movs r1, #0x8c
	b _080A8D60
	.align 2, 0
_080A8D40: .4byte 0x00000113
_080A8D44:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A8D70 @ =0x00000113
	cmp r0, #0x19
	blt _080A8D60
	ldr r1, _080A8D74 @ =0x0000024B
	cmp r0, #0x41
	blt _080A8D60
	movs r1, #0x8c
	cmp r0, #0x5a
	bge _080A8D60
	adds r1, #0x94
_080A8D60:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A8D70: .4byte 0x00000113
_080A8D74: .4byte 0x0000024B

	thumb_func_start sub_080A8D78
sub_080A8D78: @ 0x080A8D78
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x76
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	adds r0, r4, #0
	bl sub_08080F54
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080A8D94
sub_080A8D94: @ 0x080A8D94
	push {lr}
	ldr r2, _080A8DA8 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A8DAC @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A8DA8: .4byte 0x09F642A0
_080A8DAC: .4byte 0x09F64318

	thumb_func_start sub_080A8DB0
sub_080A8DB0: @ 0x080A8DB0
	push {lr}
	cmp r1, #0
	bne _080A8DFC
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #4
	bhi _080A8DFC
	lsls r0, r0, #2
	ldr r1, _080A8DCC @ =_080A8DD0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A8DCC: .4byte _080A8DD0
_080A8DD0: @ jump table
	.4byte _080A8DFC @ case 0
	.4byte _080A8DE4 @ case 1
	.4byte _080A8DEC @ case 2
	.4byte _080A8DF2 @ case 3
	.4byte _080A8DFC @ case 4
_080A8DE4:
	ldr r0, _080A8DE8 @ =0x00000203
	b _080A8E00
	.align 2, 0
_080A8DE8: .4byte 0x00000203
_080A8DEC:
	movs r0, #0x81
	lsls r0, r0, #2
	b _080A8E00
_080A8DF2:
	ldr r0, _080A8DF8 @ =0x00000205
	b _080A8E00
	.align 2, 0
_080A8DF8: .4byte 0x00000205
_080A8DFC:
	movs r0, #0xf3
	lsls r0, r0, #1
_080A8E00:
	pop {r1}
	bx r1

	thumb_func_start sub_080A8E04
sub_080A8E04: @ 0x080A8E04
	push {lr}
	movs r2, #1
	cmp r2, r1
	bge _080A8E0E
	adds r2, r1, #0
_080A8E0E:
	adds r1, r2, #0
	bl sub_08081494
	pop {r0}
	bx r0

	thumb_func_start sub_080A8E18
sub_080A8E18: @ 0x080A8E18
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xac
	lsls r0, r0, #1
	adds r3, r5, r0
	ldr r0, [r3]
	cmp r0, r1
	bne _080A8E32
	cmp r2, #1
	beq _080A8E32
	b _080A8FD4
_080A8E32:
	str r1, [r3]
	cmp r1, #4
	bls _080A8E3A
	b _080A8FB0
_080A8E3A:
	lsls r0, r1, #2
	ldr r1, _080A8E44 @ =_080A8E48
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A8E44: .4byte _080A8E48
_080A8E48: @ jump table
	.4byte _080A8E5C @ case 0
	.4byte _080A8EB0 @ case 1
	.4byte _080A8EDA @ case 2
	.4byte _080A8F1C @ case 3
	.4byte _080A8F5E @ case 4
_080A8E5C:
	ldr r3, [r5, #0x1c]
	movs r4, #0xb0
	lsls r4, r4, #1
	adds r3, r3, r4
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r5, r0
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r2, [r1]
	ldr r3, [r3, #4]
	movs r1, #1
	bl sub_08091940
	ldr r3, [r5, #0x1c]
	adds r3, r3, r4
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r5, r0
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r2, [r1]
	ldr r3, [r3, #4]
	movs r1, #2
	bl sub_08091940
	ldr r3, [r5, #0x1c]
	adds r3, r3, r4
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r5, r0
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r2, [r1]
	ldr r3, [r3, #4]
	movs r1, #3
	bl sub_08091940
	b _080A8FB0
_080A8EB0:
	ldr r1, [r5, #0x1c]
	movs r4, #0xb0
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0x78
	bl sub_08091940
	ldr r1, [r5, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0
	b _080A8F02
_080A8EDA:
	ldr r1, [r5, #0x1c]
	movs r4, #0xb0
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl sub_08091940
	ldr r1, [r5, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0x78
_080A8F02:
	bl sub_08091940
	ldr r1, [r5, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #3
	movs r2, #0
	bl sub_08091940
	b _080A8FB0
_080A8F1C:
	ldr r1, [r5, #0x1c]
	movs r4, #0xb0
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl sub_08091940
	ldr r1, [r5, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0
	bl sub_08091940
	ldr r1, [r5, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #3
	movs r2, #0x78
	bl sub_08091940
	b _080A8FB0
_080A8F5E:
	ldr r3, [r5, #0x1c]
	movs r4, #0xb0
	lsls r4, r4, #1
	adds r3, r3, r4
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r5, r0
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r2, [r1]
	ldr r3, [r3, #4]
	movs r1, #1
	bl sub_08091940
	ldr r3, [r5, #0x1c]
	adds r3, r3, r4
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r5, r0
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r2, [r1]
	ldr r3, [r3, #4]
	movs r1, #2
	bl sub_08091940
	ldr r3, [r5, #0x1c]
	adds r3, r3, r4
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r5, r0
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r2, [r1]
	ldr r3, [r3, #4]
	movs r1, #3
	bl sub_08091940
_080A8FB0:
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	ldr r1, [r5, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl sub_0809193C
	movs r0, #1
	b _080A8FD6
_080A8FD4:
	movs r0, #0
_080A8FD6:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A8FDC
sub_080A8FDC: @ 0x080A8FDC
	push {lr}
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _080A8FFE
	cmp r0, #2
	bgt _080A8FF4
	cmp r0, #1
	beq _080A8FFA
	b _080A9006
_080A8FF4:
	cmp r0, #3
	beq _080A9002
	b _080A9006
_080A8FFA:
	movs r0, #1
	b _080A9008
_080A8FFE:
	movs r0, #2
	b _080A9008
_080A9002:
	movs r0, #3
	b _080A9008
_080A9006:
	movs r0, #0
_080A9008:
	pop {r1}
	bx r1

	thumb_func_start sub_080A900C
sub_080A900C: @ 0x080A900C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r6, r0, #0
	adds r7, r1, #0
	bl nullsub_34
	ldr r1, [r6, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bgt _080A9032
	b _080A9194
_080A9032:
	ldr r1, [r7, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #1
	beq _080A904C
	b _080A9194
_080A904C:
	ldr r1, [r6, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A906C
	b _080A9194
_080A906C:
	movs r0, #0x14
	bl sub_0807068C
	ldr r1, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl sub_0809193C
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl sub_0809193C
	add r1, sp, #0x34
	movs r5, #0
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	ldr r0, _080A9230 @ =0x0000064E
	bl sub_08070824
	movs r0, #0x47
	adds r1, r6, #0
	adds r2, r6, #0
	bl sub_080730FC
	ldr r1, [r7, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r1, #0x14
	movs r2, #1
	bl sub_08073734
	ldr r1, [r7, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	ldr r1, [r7, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r2, r0, #0
	movs r0, #0x49
	adds r1, r4, #0
	bl sub_080730FC
	ldr r1, [r7, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #0x10
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl sub_0809193C
	add r0, sp, #0x1c
	bl sub_0806E274
	add r0, sp, #0x28
	bl sub_0806E274
	add r4, sp, #0x28
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x9f
	lsls r1, r1, #2
	add r2, sp, #0x10
	add r3, sp, #0x1c
	bl sub_08073460
	add r1, sp, #0x38
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #0x1c
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #0x10
	movs r1, #2
	bl sub_0806E308
_080A9194:
	ldr r1, [r6, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	ble _080A9226
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	subs r0, #1
	cmp r0, #2
	bhi _080A9226
	ldr r1, [r7, #0x1c]
	movs r2, #0xf8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r4, r0
	bne _080A9226
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #2
	ble _080A9226
	ldr r1, [r6, #0x1c]
	movs r2, #0x8d
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r3, [r1, #4]
	movs r1, #0
	movs r2, #0
	bl sub_08091940
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A9226
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r1, r6, #0
	bl sub_080741AC
	bl sub_08074234
_080A9226:
	add sp, #0x3c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A9230: .4byte 0x0000064E

	thumb_func_start sub_080A9234
sub_080A9234: @ 0x080A9234
	push {r4, r5, r6, r7, lr}
	sub sp, #0x38
	adds r7, r0, #0
	adds r4, r1, #0
	bl nullsub_35
	ldr r1, _080A9264 @ =0x000001FB
	adds r0, r4, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A9268
	ldr r1, [r7, #0x1c]
	movs r0, #0x8d
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r3, [r1, #4]
	movs r1, #1
	b _080A92B0
	.align 2, 0
_080A9264: .4byte 0x000001FB
_080A9268:
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A928E
	ldr r1, [r7, #0x1c]
	movs r0, #0x8d
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r3, [r1, #4]
	movs r1, #2
	b _080A92B0
_080A928E:
	ldr r1, _080A92B8 @ =0x000001FD
	adds r0, r4, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A92BC
	ldr r1, [r7, #0x1c]
	movs r0, #0x8d
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r3, [r1, #4]
	movs r1, #3
_080A92B0:
	movs r2, #0
	bl sub_08091940
	b _080A9350
	.align 2, 0
_080A92B8: .4byte 0x000001FD
_080A92BC:
	ldr r1, _080A9358 @ =0x0000018B
	adds r0, r4, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A9350
	ldr r0, _080A935C @ =0x0000028A
	bl sub_08070824
	ldr r1, [r7, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl sub_0809193C
	movs r0, #0x78
	bl sub_0807068C
	add r6, sp, #0x10
	adds r0, r6, #0
	bl sub_0806E274
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl sub_0806E274
	add r4, sp, #0x28
	adds r0, r4, #0
	bl sub_0806E274
	movs r1, #0x9d
	lsls r1, r1, #3
	str r4, [sp]
	add r0, sp, #4
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08073460
	add r1, sp, #0x34
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r7, #0
	movs r1, #0
	bl sub_08081494
_080A9350:
	add sp, #0x38
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A9358: .4byte 0x0000018B
_080A935C: .4byte 0x0000028A

	thumb_func_start sub_080A9360
sub_080A9360: @ 0x080A9360
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0x84
	lsls r5, r5, #3
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bgt _080A9382
	movs r0, #0xfd
	lsls r0, r0, #1
	b _080A93E0
_080A9382:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #1
	bgt _080A93A4
	ldr r0, _080A93A0 @ =0x0000018D
	b _080A93E0
	.align 2, 0
_080A93A0: .4byte 0x0000018D
_080A93A4:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #2
	bgt _080A93BE
	movs r0, #0xfd
	lsls r0, r0, #1
	b _080A93E0
_080A93BE:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #3
	ble _080A93DC
	ldr r0, _080A93D8 @ =0x0000018B
	b _080A93E0
	.align 2, 0
_080A93D8: .4byte 0x0000018B
_080A93DC:
	movs r0, #0xc6
	lsls r0, r0, #1
_080A93E0:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A93EC
sub_080A93EC: @ 0x080A93EC
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0x88
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl sub_08091938
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A9408
sub_080A9408: @ 0x080A9408
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0x88
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl sub_08091938
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A9424
sub_080A9424: @ 0x080A9424
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x14
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A945C
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x13
	bgt _080A945C
_080A9452:
	ldr r0, _080A9458 @ =0x00000231
	b _080A9506
	.align 2, 0
_080A9458: .4byte 0x00000231
_080A945C:
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x22
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A9486
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x31
	ble _080A9452
_080A9486:
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x15
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A94B0
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x45
	ble _080A9452
_080A94B0:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _080A94EC
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0xfc
	lsls r0, r0, #1
	cmp r1, #0x23
	blt _080A9506
	movs r0, #0x64
	cmp r1, #0x50
	bge _080A9506
	ldr r0, _080A94E8 @ =0x000001F7
	b _080A9506
	.align 2, 0
_080A94E8: .4byte 0x000001F7
_080A94EC:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0xfb
	lsls r0, r0, #1
	cmp r1, #0x2d
	blt _080A9506
	movs r0, #0x63
	cmp r1, #0x46
	bge _080A9506
	ldr r0, _080A9514 @ =0x000001F9
_080A9506:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A9514: .4byte 0x000001F9

	thumb_func_start sub_080A9518
sub_080A9518: @ 0x080A9518
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080A9540 @ =0x000001FB
	cmp r1, #0x21
	blt _080A9534
	adds r0, #2
	cmp r1, #0x42
	bge _080A9534
	subs r0, #1
_080A9534:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A9540: .4byte 0x000001FB

	thumb_func_start sub_080A9544
sub_080A9544: @ 0x080A9544
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #4
	bhi _080A95E6
	lsls r0, r0, #2
	ldr r1, _080A9560 @ =_080A9564
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A9560: .4byte _080A9564
_080A9564: @ jump table
	.4byte _080A9578 @ case 0
	.4byte _080A958E @ case 1
	.4byte _080A95A4 @ case 2
	.4byte _080A95BA @ case 3
	.4byte _080A95D0 @ case 4
_080A9578:
	ldr r1, [r6, #0x1c]
	movs r2, #0x87
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080A9640
_080A958E:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080A9640
_080A95A4:
	ldr r1, [r6, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080A9640
_080A95BA:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080A9640
_080A95D0:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8b
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080A9640
_080A95E6:
	ldr r1, [r6, #0x1c]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	ble _080A963E
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl sub_0809193C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080A9640
_080A963E:
	movs r0, #0
_080A9640:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A9648
sub_080A9648: @ 0x080A9648
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xac
	lsls r0, r0, #1
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #4
	beq _080A96B2
	ldr r1, [r4, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #1
	bgt _080A96B2
	ldr r0, [r5]
	cmp r0, #0
	beq _080A969A
	ldr r1, [r4, #0x1c]
	movs r0, #0x8d
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0
	movs r2, #0
	bl sub_08091940
	ldr r0, _080A96B8 @ =0x00000189
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A969A:
	ldr r1, [r4, #0x1c]
	movs r0, #0x8d
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #4
	movs r2, #0
	bl sub_08091940
_080A96B2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A96B8: .4byte 0x00000189

	thumb_func_start sub_080A96BC
sub_080A96BC: @ 0x080A96BC
	push {lr}
	ldr r2, _080A96D0 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A96D4 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A96D0: .4byte 0x09F642A0
_080A96D4: .4byte 0x09F64318

	thumb_func_start sub_080A96D8
sub_080A96D8: @ 0x080A96D8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC
	cmp r0, #2
	bgt _080A9708
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080A9700 @ =0x00000113
	cmp r1, #0xf
	blt _080A971A
	movs r0, #0xc3
	cmp r1, #0x50
	bge _080A971A
	ldr r0, _080A9704 @ =0x000001D9
	b _080A971A
	.align 2, 0
_080A9700: .4byte 0x00000113
_080A9704: .4byte 0x000001D9
_080A9708:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A9728 @ =0x000001D9
	cmp r0, #0x19
	bge _080A9718
	subs r1, #0xc6
_080A9718:
	adds r0, r1, #0
_080A971A:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A9728: .4byte 0x000001D9

	thumb_func_start sub_080A972C
sub_080A972C: @ 0x080A972C
	push {lr}
	ldr r2, _080A9740 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A9744 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A9740: .4byte 0x09F642A0
_080A9744: .4byte 0x09F64318

	thumb_func_start sub_080A9748
sub_080A9748: @ 0x080A9748
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bne _080A977C
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A9778 @ =0x000001C5
	cmp r0, #0x23
	bge _080A97B8
	subs r1, #1
	b _080A97B8
	.align 2, 0
_080A9778: .4byte 0x000001C5
_080A977C:
	bl sub_08072DFC
	cmp r0, #2
	bgt _080A97A8
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080A97A0 @ =0x00000113
	cmp r1, #0xf
	blt _080A97BA
	movs r0, #0xc3
	cmp r1, #0x50
	bge _080A97BA
	ldr r0, _080A97A4 @ =0x000001D9
	b _080A97BA
	.align 2, 0
_080A97A0: .4byte 0x00000113
_080A97A4: .4byte 0x000001D9
_080A97A8:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A97C8 @ =0x000001D9
	cmp r0, #0x23
	bge _080A97B8
	subs r1, #0xc6
_080A97B8:
	adds r0, r1, #0
_080A97BA:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A97C8: .4byte 0x000001D9

	thumb_func_start sub_080A97CC
sub_080A97CC: @ 0x080A97CC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bne _080A982E
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl sub_0809193C
	cmp r4, r0
	bge _080A982E
	ldr r1, [r5, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl sub_0809193C
_080A982E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A9834
sub_080A9834: @ 0x080A9834
	push {lr}
	ldr r2, _080A9848 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A984C @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A9848: .4byte 0x09F642A0
_080A984C: .4byte 0x09F64318

	thumb_func_start sub_080A9850
sub_080A9850: @ 0x080A9850
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x30
	cmp r0, #0x4b
	bge _080A9864
	movs r1, #0xc
_080A9864:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A9874
sub_080A9874: @ 0x080A9874
	push {lr}
	ldr r2, _080A9888 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A988C @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A9888: .4byte 0x09F642A0
_080A988C: .4byte 0x09F64318

	thumb_func_start sub_080A9890
sub_080A9890: @ 0x080A9890
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bne _080A98C0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xe3
	lsls r1, r1, #1
	cmp r0, #0x4b
	bge _080A98D0
	subs r1, #2
	b _080A98D0
_080A98C0:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x30
	cmp r0, #0x4b
	bge _080A98D0
	movs r1, #0xc
_080A98D0:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A98E0
sub_080A98E0: @ 0x080A98E0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bne _080A9942
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl sub_0809193C
	cmp r4, r0
	bge _080A9942
	ldr r1, [r5, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl sub_0809193C
_080A9942:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A9948
sub_080A9948: @ 0x080A9948
	push {lr}
	ldr r2, _080A995C @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A9960 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A995C: .4byte 0x09F642A0
_080A9960: .4byte 0x09F64318

	thumb_func_start sub_080A9964
sub_080A9964: @ 0x080A9964
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0xec
	lsls r0, r0, #1
	cmp r1, #0x23
	blt _080A9982
	movs r0, #0x41
	cmp r1, #0x55
	bge _080A9982
	movs r0, #0x1e
_080A9982:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A9990
sub_080A9990: @ 0x080A9990
	push {lr}
	ldr r2, _080A99A4 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A99A8 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A99A4: .4byte 0x09F642A0
_080A99A8: .4byte 0x09F64318

	thumb_func_start sub_080A99AC
sub_080A99AC: @ 0x080A99AC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bne _080A99E4
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0xdf
	lsls r0, r0, #1
	cmp r1, #0x23
	blt _080A99FE
	adds r0, #3
	cmp r1, #0x55
	bge _080A99FE
	subs r0, #1
	b _080A99FE
_080A99E4:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0xec
	lsls r0, r0, #1
	cmp r1, #0x23
	blt _080A99FE
	movs r0, #0x41
	cmp r1, #0x55
	bge _080A99FE
	movs r0, #0x1e
_080A99FE:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A9A0C
sub_080A9A0C: @ 0x080A9A0C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bne _080A9A6E
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl sub_0809193C
	cmp r4, r0
	bge _080A9A6E
	ldr r1, [r5, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl sub_0809193C
_080A9A6E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A9A74
sub_080A9A74: @ 0x080A9A74
	push {lr}
	ldr r2, _080A9A88 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A9A8C @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A9A88: .4byte 0x09F642A0
_080A9A8C: .4byte 0x09F64318

	thumb_func_start sub_080A9A90
sub_080A9A90: @ 0x080A9A90
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bgt _080A9AB4
	ldr r0, _080A9AB0 @ =0x00000151
	b _080A9B08
	.align 2, 0
_080A9AB0: .4byte 0x00000151
_080A9AB4:
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bne _080A9AE8
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0xe2
	lsls r0, r0, #1
	cmp r1, #0x41
	blt _080A9B08
	movs r0, #0xea
	cmp r1, #0x5f
	bge _080A9B08
	adds r0, #0x67
	b _080A9B08
_080A9AE8:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xa7
	lsls r1, r1, #1
	cmp r0, #0x32
	blt _080A9B06
	adds r1, #3
	cmp r0, #0x50
	blt _080A9B06
	subs r1, #2
	cmp r0, #0x55
	bge _080A9B06
	movs r1, #0xea
_080A9B06:
	adds r0, r1, #0
_080A9B08:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A9B14
sub_080A9B14: @ 0x080A9B14
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bne _080A9B76
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x3c
	bl sub_0809193C
	cmp r4, r0
	bge _080A9B76
	ldr r1, [r5, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl sub_0809193C
_080A9B76:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A9B7C
sub_080A9B7C: @ 0x080A9B7C
	push {lr}
	ldr r2, _080A9B90 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A9B94 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A9B90: .4byte 0x09F642A0
_080A9B94: .4byte 0x09F64318

	thumb_func_start sub_080A9B98
sub_080A9B98: @ 0x080A9B98
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bgt _080A9BBC
	ldr r0, _080A9BB8 @ =0x00000151
	b _080A9C28
	.align 2, 0
_080A9BB8: .4byte 0x00000151
_080A9BBC:
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl sub_0809193C
	cmp r4, r0
	blt _080A9C08
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0xa7
	lsls r0, r0, #1
	cmp r1, #0x41
	blt _080A9C28
	movs r0, #0xea
	cmp r1, #0x5f
	bge _080A9C28
	adds r0, #0x67
	b _080A9C28
_080A9C08:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xa7
	lsls r1, r1, #1
	cmp r0, #0x41
	blt _080A9C26
	adds r1, #3
	cmp r0, #0x5f
	blt _080A9C26
	subs r1, #2
	cmp r0, #0x64
	bge _080A9C26
	movs r1, #0xea
_080A9C26:
	adds r0, r1, #0
_080A9C28:
	adds r1, r5, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A9C34
sub_080A9C34: @ 0x080A9C34
	push {lr}
	ldr r2, _080A9C48 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A9C4C @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A9C48: .4byte 0x09F642A0
_080A9C4C: .4byte 0x09F64318

	thumb_func_start sub_080A9C50
sub_080A9C50: @ 0x080A9C50
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A9CE6
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A9CE6
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A9CE6
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08075010
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A9CE6
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A9CE8
_080A9CE6:
	movs r0, #0
_080A9CE8:
	cmp r0, #0
	bne _080A9CF0
	movs r0, #0
	b _080A9D54
_080A9CF0:
	ldr r6, _080A9D10 @ =0x00000213
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A9D14
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	b _080A9D52
	.align 2, 0
_080A9D10: .4byte 0x00000213
_080A9D14:
	ldr r1, _080A9D5C @ =0x00000216
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A9D34
	ldr r1, _080A9D60 @ =0x00000217
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A9D52
_080A9D34:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x85
	lsls r1, r1, #2
	cmp r0, #0x41
	bge _080A9D46
	adds r1, r6, #0
_080A9D46:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A9D52:
	movs r0, #1
_080A9D54:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A9D5C: .4byte 0x00000216
_080A9D60: .4byte 0x00000217

	thumb_func_start sub_080A9D64
sub_080A9D64: @ 0x080A9D64
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A9D94 @ =0x00000213
	cmp r0, #0x2d
	blt _080A9D84
	adds r1, #3
	cmp r0, #0x37
	blt _080A9D84
	subs r1, #2
	cmp r0, #0x41
	bge _080A9D84
	adds r1, #3
_080A9D84:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A9D94: .4byte 0x00000213

	thumb_func_start sub_080A9D98
sub_080A9D98: @ 0x080A9D98
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080A9DCC @ =0x00000215
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	adds r0, r4, #0
	bl sub_08080F54
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl sub_08091938
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A9DCC: .4byte 0x00000215

	thumb_func_start sub_080A9DD0
sub_080A9DD0: @ 0x080A9DD0
	push {lr}
	ldr r2, _080A9DE4 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A9DE8 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A9DE4: .4byte 0x09F642A0
_080A9DE8: .4byte 0x09F64318

	thumb_func_start sub_080A9DEC
sub_080A9DEC: @ 0x080A9DEC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080A9E14 @ =0x00000219
	cmp r1, #0x21
	blt _080A9E08
	adds r0, #8
	cmp r1, #0x42
	bge _080A9E08
	subs r0, #7
_080A9E08:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A9E14: .4byte 0x00000219

	thumb_func_start sub_080A9E18
sub_080A9E18: @ 0x080A9E18
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	adds r0, r4, #0
	bl sub_08080F54
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A9E38
sub_080A9E38: @ 0x080A9E38
	push {lr}
	ldr r2, _080A9E4C @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A9E50 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A9E4C: .4byte 0x09F642A0
_080A9E50: .4byte 0x09F64318

	thumb_func_start sub_080A9E54
sub_080A9E54: @ 0x080A9E54
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl sub_0809193C
	cmp r4, r0
	bge _080A9EA8
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x6d
	cmp r1, #0x2d
	blt _080A9EC0
	ldr r0, _080A9EA4 @ =0x0000020D
	cmp r1, #0x46
	bge _080A9EC0
	movs r0, #0xfe
	b _080A9EC0
	.align 2, 0
_080A9EA4: .4byte 0x0000020D
_080A9EA8:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x6d
	cmp r1, #0x37
	blt _080A9EC0
	movs r0, #0xfe
	cmp r1, #0x41
	bge _080A9EC0
	movs r0, #0x89
_080A9EC0:
	adds r1, r5, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A9ECC
sub_080A9ECC: @ 0x080A9ECC
	push {lr}
	ldr r2, _080A9EE0 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A9EE4 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A9EE0: .4byte 0x09F642A0
_080A9EE4: .4byte 0x09F64318

	thumb_func_start sub_080A9EE8
sub_080A9EE8: @ 0x080A9EE8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	adds r1, r4, #0
	bl sub_08075770
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r4, #0x16
	bne _080A9F34
	ldr r1, [r5, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl sub_0809193C
	cmp r0, #0
	bgt _080A9F34
	ldr r1, [r5, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r5, r2
	str r0, [r1]
_080A9F34:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080A9F3C
sub_080A9F3C: @ 0x080A9F3C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A9FD2
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A9FD2
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A9FD2
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08075010
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A9FD2
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A9FD4
_080A9FD2:
	movs r0, #0
_080A9FD4:
	cmp r0, #0
	bne _080A9FDC
	movs r0, #0
	b _080AA070
_080A9FDC:
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AA018
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080AA014 @ =0x000001ED
	cmp r1, #0x2d
	blt _080AA006
	adds r0, #1
	cmp r1, #0x50
	bge _080AA006
	adds r0, #0x24
_080AA006:
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	b _080AA06E
	.align 2, 0
_080AA014: .4byte 0x000001ED
_080AA018:
	ldr r1, _080AA078 @ =0x000001ED
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AA03A
	movs r1, #0xf7
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AA06E
_080AA03A:
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x45
	bgt _080AA06E
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080AA07C @ =0x000001F1
	cmp r0, #0x19
	blt _080AA062
	adds r1, #1
	cmp r0, #0x32
	blt _080AA062
	subs r1, #2
	cmp r0, #0x4b
	bge _080AA062
	adds r1, #3
_080AA062:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080AA06E:
	movs r0, #1
_080AA070:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AA078: .4byte 0x000001ED
_080AA07C: .4byte 0x000001F1

	thumb_func_start sub_080AA080
sub_080AA080: @ 0x080AA080
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0x8a
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl sub_08091938
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AA09C
sub_080AA09C: @ 0x080AA09C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bgt _080AA0C0
	ldr r0, _080AA0BC @ =0x000001F5
	b _080AA10C
	.align 2, 0
_080AA0BC: .4byte 0x000001F5
_080AA0C0:
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080AA0E4 @ =0x00000191
	cmp r0, r5
	bne _080AA0EC
	ldr r0, _080AA0E8 @ =0x000001EF
	b _080AA10C
	.align 2, 0
_080AA0E4: .4byte 0x00000191
_080AA0E8: .4byte 0x000001EF
_080AA0EC:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080AA118 @ =0x000001ED
	cmp r0, #0x14
	blt _080AA10A
	adds r1, #0x25
	cmp r0, #0x1e
	blt _080AA10A
	adds r1, r5, #0
	cmp r0, #0x37
	bge _080AA10A
	movs r1, #0xf7
	lsls r1, r1, #1
_080AA10A:
	adds r0, r1, #0
_080AA10C:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AA118: .4byte 0x000001ED

	thumb_func_start sub_080AA11C
sub_080AA11C: @ 0x080AA11C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bgt _080AA140
	ldr r0, _080AA13C @ =0x00000191
	b _080AA18C
	.align 2, 0
_080AA13C: .4byte 0x00000191
_080AA140:
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080AA164 @ =0x00000191
	cmp r0, r5
	bne _080AA16C
	ldr r0, _080AA168 @ =0x000001EF
	b _080AA18C
	.align 2, 0
_080AA164: .4byte 0x00000191
_080AA168: .4byte 0x000001EF
_080AA16C:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080AA198 @ =0x000001ED
	cmp r0, #0x14
	blt _080AA18A
	adds r1, #0x25
	cmp r0, #0x1e
	blt _080AA18A
	adds r1, r5, #0
	cmp r0, #0x37
	bge _080AA18A
	movs r1, #0xf7
	lsls r1, r1, #1
_080AA18A:
	adds r0, r1, #0
_080AA18C:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AA198: .4byte 0x000001ED

	thumb_func_start sub_080AA19C
sub_080AA19C: @ 0x080AA19C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	blt _080AA1CE
	ldr r1, [r4, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	ldr r1, [r5]
	adds r1, #3
	cmp r0, r1
	bne _080AA1CE
	movs r0, #0xfa
	lsls r0, r0, #1
	b _080AA1E6
_080AA1CE:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080AA1F4 @ =0x000001ED
	cmp r1, #0x2d
	blt _080AA1E6
	adds r0, #1
	cmp r1, #0x50
	bge _080AA1E6
	adds r0, #0x24
_080AA1E6:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AA1F4: .4byte 0x000001ED

	thumb_func_start sub_080AA1F8
sub_080AA1F8: @ 0x080AA1F8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _080AA232
	cmp r0, #1
	bgt _080AA212
	cmp r0, #0
	beq _080AA21C
	b _080AA274
_080AA212:
	cmp r0, #2
	beq _080AA248
	cmp r0, #3
	beq _080AA25E
	b _080AA274
_080AA21C:
	ldr r1, [r6, #0x1c]
	movs r2, #0x88
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080AA2CE
_080AA232:
	ldr r1, [r6, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080AA2CE
_080AA248:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080AA2CE
_080AA25E:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8b
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080AA2CE
_080AA274:
	ldr r1, [r6, #0x1c]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	ble _080AA2CC
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl sub_0809193C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080AA2CE
_080AA2CC:
	movs r0, #0
_080AA2CE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080AA2D4
sub_080AA2D4: @ 0x080AA2D4
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	blt _080AA2EE
	cmp r2, #1
	bne _080AA30A
_080AA2EE:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl sub_0809193C
	movs r0, #1
	b _080AA30C
_080AA30A:
	movs r0, #0
_080AA30C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AA314
sub_080AA314: @ 0x080AA314
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #2
	bne _080AA368
	ldr r1, [r5, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0xa
	bl sub_0809193C
	cmp r4, r0
	bge _080AA368
	ldr r1, [r5, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #3
	b _080AA3B6
_080AA368:
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _080AA3BE
	ldr r1, [r5, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl sub_0809193C
	cmp r4, r0
	bge _080AA3BE
	ldr r1, [r5, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #2
_080AA3B6:
	movs r2, #0
	bl sub_08091940
	b _080AA412
_080AA3BE:
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _080AA412
	ldr r1, [r5, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl sub_0809193C
	cmp r4, r0
	bge _080AA412
	ldr r1, [r5, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl sub_08091940
_080AA412:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080AA418
sub_080AA418: @ 0x080AA418
	push {lr}
	ldr r2, _080AA42C @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AA430 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AA42C: .4byte 0x09F642A0
_080AA430: .4byte 0x09F64318

	thumb_func_start sub_080AA434
sub_080AA434: @ 0x080AA434
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC
	cmp r0, #1
	bgt _080AA45C
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080AA458 @ =0x00000113
	cmp r1, #0x19
	blt _080AA474
	adds r0, #0x53
	cmp r1, #0x3c
	bge _080AA474
	b _080AA472
	.align 2, 0
_080AA458: .4byte 0x00000113
_080AA45C:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080AA480 @ =0x00000113
	cmp r1, #0x23
	blt _080AA474
	movs r0, #0xa9
	cmp r1, #0x55
	bge _080AA474
_080AA472:
	ldr r0, _080AA484 @ =0x00000165
_080AA474:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AA480: .4byte 0x00000113
_080AA484: .4byte 0x00000165

	thumb_func_start sub_080AA488
sub_080AA488: @ 0x080AA488
	push {lr}
	ldr r2, _080AA49C @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AA4A0 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AA49C: .4byte 0x09F642A0
_080AA4A0: .4byte 0x09F64318

	thumb_func_start sub_080AA4A4
sub_080AA4A4: @ 0x080AA4A4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC
	cmp r0, #2
	bgt _080AA4D0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080AA4CC @ =0x000001D9
	cmp r1, #0x19
	blt _080AA4E4
	movs r0, #0xc3
	cmp r1, #0x55
	bge _080AA4E4
	movs r0, #0xed
	lsls r0, r0, #1
	b _080AA4E4
	.align 2, 0
_080AA4CC: .4byte 0x000001D9
_080AA4D0:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xed
	lsls r1, r1, #1
	cmp r0, #0x23
	bge _080AA4E2
	subs r1, #1
_080AA4E2:
	adds r0, r1, #0
_080AA4E4:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080AA4F0
sub_080AA4F0: @ 0x080AA4F0
	push {lr}
	ldr r2, _080AA504 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AA508 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AA504: .4byte 0x09F642A0
_080AA508: .4byte 0x09F64318

	thumb_func_start sub_080AA50C
sub_080AA50C: @ 0x080AA50C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r1, #3
	bl sub_08091A08
	cmp r0, #0
	bgt _080AA54A
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x96
	lsls r0, r0, #2
	cmp r1, #0x21
	blt _080AA5AC
	adds r0, #2
	cmp r1, #0x42
	bge _080AA5AC
	subs r0, #1
	b _080AA5AC
_080AA54A:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r1, #3
	bl sub_08091A08
	cmp r0, #1
	bgt _080AA588
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080AA584 @ =0x0000025B
	cmp r1, #0x21
	blt _080AA5AC
	adds r0, #2
	cmp r1, #0x42
	bge _080AA5AC
	subs r0, #1
	b _080AA5AC
	.align 2, 0
_080AA584: .4byte 0x0000025B
_080AA588:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080AA5B8 @ =0x0000025E
	cmp r0, #0x14
	blt _080AA5AA
	adds r1, #1
	cmp r0, #0x28
	blt _080AA5AA
	adds r1, #1
	cmp r0, #0x3c
	blt _080AA5AA
	adds r1, #2
	cmp r0, #0x50
	bge _080AA5AA
	subs r1, #1
_080AA5AA:
	adds r0, r1, #0
_080AA5AC:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AA5B8: .4byte 0x0000025E

	thumb_func_start sub_080AA5BC
sub_080AA5BC: @ 0x080AA5BC
	push {lr}
	ldr r2, _080AA5D0 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AA5D4 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AA5D0: .4byte 0x09F642A0
_080AA5D4: .4byte 0x09F64318

	thumb_func_start sub_080AA5D8
sub_080AA5D8: @ 0x080AA5D8
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080AA5F2
	cmp r2, #1
	bne _080AA60E
_080AA5F2:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl sub_0809193C
	movs r0, #1
	b _080AA610
_080AA60E:
	movs r0, #0
_080AA610:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AA618
sub_080AA618: @ 0x080AA618
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r6, r0, #0
	adds r7, r1, #0
	bl nullsub_34
	ldr r1, [r6, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bgt _080AA63E
	b _080AA7A0
_080AA63E:
	ldr r1, [r7, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #1
	beq _080AA658
	b _080AA7A0
_080AA658:
	ldr r1, [r6, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AA678
	b _080AA7A0
_080AA678:
	movs r0, #0x14
	bl sub_0807068C
	ldr r1, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl sub_0809193C
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl sub_0809193C
	add r1, sp, #0x34
	movs r5, #0
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	ldr r0, _080AA814 @ =0x0000064E
	bl sub_08070824
	movs r0, #0x47
	adds r1, r6, #0
	adds r2, r6, #0
	bl sub_080730FC
	ldr r1, [r7, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r1, #0x14
	movs r2, #1
	bl sub_08073734
	ldr r1, [r7, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	ldr r1, [r7, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r2, r0, #0
	movs r0, #0x49
	adds r1, r4, #0
	bl sub_080730FC
	ldr r1, [r7, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #0x10
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl sub_0809193C
	add r0, sp, #0x1c
	bl sub_0806E274
	add r0, sp, #0x28
	bl sub_0806E274
	add r4, sp, #0x28
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x9f
	lsls r1, r1, #2
	add r2, sp, #0x10
	add r3, sp, #0x1c
	bl sub_08073460
	add r1, sp, #0x38
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #0x1c
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #0x10
	movs r1, #2
	bl sub_0806E308
_080AA7A0:
	ldr r1, [r6, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	ble _080AA80C
	ldr r1, [r7, #0x1c]
	movs r0, #0xf8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #3
	bne _080AA80C
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #2
	ble _080AA80C
	ldr r1, [r6, #0x1c]
	movs r2, #0x89
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl sub_08091940
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AA80C
	movs r0, #0x43
	adds r1, r6, #0
	bl sub_080741AC
	bl sub_08074234
_080AA80C:
	add sp, #0x3c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AA814: .4byte 0x0000064E

	thumb_func_start sub_080AA818
sub_080AA818: @ 0x080AA818
	push {lr}
	adds r1, r0, #0
	ldr r0, _080AA828 @ =0x000001EB
	bl sub_080741AC
	pop {r1}
	bx r1
	.align 2, 0
_080AA828: .4byte 0x000001EB

	thumb_func_start sub_080AA82C
sub_080AA82C: @ 0x080AA82C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl sub_0809193C
	cmp r4, r0
	blt _080AA8B4
	ldr r1, [r5, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r4, #0xf6
	lsls r4, r4, #1
	cmp r0, r4
	bne _080AA892
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xf5
	lsls r1, r1, #1
	cmp r0, #0x28
	bge _080AA8C6
	b _080AA8C4
_080AA892:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080AA8B0 @ =0x000001E9
	cmp r1, #0x28
	blt _080AA8C8
	adds r0, r4, #0
	cmp r1, #0x5a
	bge _080AA8C8
	movs r0, #0xf5
	lsls r0, r0, #1
	b _080AA8C8
	.align 2, 0
_080AA8B0: .4byte 0x000001E9
_080AA8B4:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xf5
	lsls r1, r1, #1
	cmp r0, #0x41
	bge _080AA8C6
_080AA8C4:
	subs r1, #1
_080AA8C6:
	adds r0, r1, #0
_080AA8C8:
	adds r1, r5, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080AA8D4
sub_080AA8D4: @ 0x080AA8D4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080AA940
	cmp r0, #1
	beq _080AA956
	ldr r1, [r6, #0x1c]
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	ble _080AA96C
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl sub_0809193C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080AA96E
_080AA940:
	ldr r1, [r6, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080AA96E
_080AA956:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080AA96E
_080AA96C:
	movs r0, #0
_080AA96E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080AA974
sub_080AA974: @ 0x080AA974
	push {lr}
	ldr r2, _080AA988 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AA98C @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AA988: .4byte 0x09F642A0
_080AA98C: .4byte 0x09F64318

	thumb_func_start sub_080AA990
sub_080AA990: @ 0x080AA990
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x39
	bl sub_08072E38
	cmp r0, #0
	beq _080AA9B8
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x1d
	cmp r1, #0x2d
	blt _080AA9D0
	movs r0, #0x42
	cmp r1, #0x55
	bge _080AA9D0
	adds r0, #0xc7
	b _080AA9D0
_080AA9B8:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x1d
	cmp r1, #0x32
	blt _080AA9D0
	movs r0, #0x42
	cmp r1, #0x55
	bge _080AA9D0
	ldr r0, _080AA9DC @ =0x000001D5
_080AA9D0:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AA9DC: .4byte 0x000001D5

	thumb_func_start sub_080AA9E0
sub_080AA9E0: @ 0x080AA9E0
	push {lr}
	ldr r2, _080AA9F4 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AA9F8 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AA9F4: .4byte 0x09F642A0
_080AA9F8: .4byte 0x09F64318

	thumb_func_start sub_080AA9FC
sub_080AA9FC: @ 0x080AA9FC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC
	cmp r0, #2
	bgt _080AAA22
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #4
	cmp r1, #0x32
	blt _080AAA34
	movs r0, #0xc3
	cmp r1, #0x55
	bge _080AAA34
	movs r0, #0x5d
	b _080AAA34
_080AAA22:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x5d
	cmp r0, #0x46
	bge _080AAA32
	movs r1, #4
_080AAA32:
	adds r0, r1, #0
_080AAA34:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080AAA40
sub_080AAA40: @ 0x080AAA40
	push {lr}
	ldr r2, _080AAA54 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AAA58 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AAA54: .4byte 0x09F642A0
_080AAA58: .4byte 0x09F64318

	thumb_func_start sub_080AAA5C
sub_080AAA5C: @ 0x080AAA5C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl sub_0809193C
	cmp r4, r0
	blt _080AAAAC
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x1a
	cmp r0, #0x23
	blt _080AAACA
	movs r1, #0x6d
	cmp r0, #0x50
	blt _080AAACA
	movs r1, #0x34
	cmp r0, #0x55
	bge _080AAACA
	b _080AAAC8
_080AAAAC:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x1a
	cmp r0, #0x1e
	blt _080AAACA
	movs r1, #0x6d
	cmp r0, #0x46
	blt _080AAACA
	movs r1, #0xe9
	lsls r1, r1, #1
	cmp r0, #0x4b
	bge _080AAACA
_080AAAC8:
	movs r1, #0x85
_080AAACA:
	adds r0, r1, #0
	adds r1, r5, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080AAAD8
sub_080AAAD8: @ 0x080AAAD8
	push {lr}
	ldr r2, _080AAAEC @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AAAF0 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AAAEC: .4byte 0x09F642A0
_080AAAF0: .4byte 0x09F64318

	thumb_func_start sub_080AAAF4
sub_080AAAF4: @ 0x080AAAF4
	push {r4, lr}
	movs r4, #0
	b _080AAB28
_080AAAFA:
	adds r0, r4, #0
	bl sub_08072AA4
	ldr r2, [r0, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #1
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AAB26
	adds r0, r4, #0
	bl sub_08072AA4
	b _080AAB32
_080AAB26:
	adds r4, #1
_080AAB28:
	bl sub_08072A88
	cmp r4, r0
	blt _080AAAFA
	movs r0, #0
_080AAB32:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080AAB38
sub_080AAB38: @ 0x080AAB38
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _080AAB84 @ =0x000001CD
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AAB88
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r3, r0, #0
	cmp r3, #0
	beq _080AAB88
	ldr r1, [r5, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r3, #0
	bl sub_0809193C
	movs r0, #1
	b _080AAB90
	.align 2, 0
_080AAB84: .4byte 0x000001CD
_080AAB88:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08080EB8
_080AAB90:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AAB98
sub_080AAB98: @ 0x080AAB98
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x8d
	bne _080AAC0E
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bne _080AABEC
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0xbe
	lsls r0, r0, #1
	cmp r1, #0x2d
	blt _080AAC6E
	adds r0, #2
	cmp r1, #0x50
	bge _080AAC6E
	subs r0, #1
	b _080AAC6E
_080AABEC:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xbe
	lsls r1, r1, #1
	cmp r0, #0x1e
	blt _080AAC6C
	adds r1, #1
	cmp r0, #0x32
	blt _080AAC6C
	adds r1, #0x50
	cmp r0, #0x50
	bge _080AAC6C
	movs r1, #0xbf
	lsls r1, r1, #1
	b _080AAC6C
_080AAC0E:
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bne _080AAC48
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xbe
	lsls r1, r1, #1
	cmp r0, #0x28
	blt _080AAC6C
	adds r1, #1
	cmp r0, #0x46
	blt _080AAC6C
	movs r1, #0x8d
	cmp r0, #0x5f
	bge _080AAC6C
	movs r1, #0xbf
	lsls r1, r1, #1
	b _080AAC6C
_080AAC48:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xbe
	lsls r1, r1, #1
	cmp r0, #0x1e
	blt _080AAC6C
	adds r1, #1
	cmp r0, #0x32
	blt _080AAC6C
	adds r1, #1
	cmp r0, #0x50
	blt _080AAC6C
	movs r1, #0x8d
	cmp r0, #0x5f
	bge _080AAC6C
	ldr r1, _080AAC7C @ =0x000001CD
_080AAC6C:
	adds r0, r1, #0
_080AAC6E:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AAC7C: .4byte 0x000001CD

	thumb_func_start sub_080AAC80
sub_080AAC80: @ 0x080AAC80
	push {lr}
	ldr r2, _080AAC94 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AAC98 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AAC94: .4byte 0x09F642A0
_080AAC98: .4byte 0x09F64318

	thumb_func_start sub_080AAC9C
sub_080AAC9C: @ 0x080AAC9C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AAD32
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AAD32
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AAD32
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08075010
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AAD32
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080AAD34
_080AAD32:
	movs r0, #0
_080AAD34:
	cmp r0, #0
	bne _080AAD3C
	movs r0, #0
	b _080AAD5E
_080AAD3C:
	adds r0, r5, #0
	movs r1, #0x91
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AAD50
	movs r0, #1
	b _080AAD5E
_080AAD50:
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080AAD5E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080AAD64
sub_080AAD64: @ 0x080AAD64
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x19
	cmp r0, #0xa
	blt _080AAD84
	movs r1, #0x1e
	cmp r0, #0x23
	blt _080AAD84
	movs r1, #0x91
	cmp r0, #0x32
	bge _080AAD84
	movs r1, #0x5c
_080AAD84:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AAD94
sub_080AAD94: @ 0x080AAD94
	push {lr}
	ldr r2, _080AADA8 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AADAC @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AADA8: .4byte 0x09F642A0
_080AADAC: .4byte 0x09F64318

	thumb_func_start sub_080AADB0
sub_080AADB0: @ 0x080AADB0
	push {lr}
	adds r2, r0, #0
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r0, [r0]
	cmp r0, #2
	beq _080AADCA
	movs r0, #0x3c
	cmp r0, r1
	bge _080AADC8
	adds r0, r1, #0
_080AADC8:
	adds r1, r0, #0
_080AADCA:
	adds r0, r2, #0
	bl sub_08081494
	pop {r0}
	bx r0

	thumb_func_start sub_080AADD4
sub_080AADD4: @ 0x080AADD4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	bl sub_0808110C
	ldr r1, [r6, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r6, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	adds r0, r4, #0
	movs r2, #1
	bl sub_0805CD30
	cmp r5, #0
	bne _080AAE36
	ldr r1, [r6, #0x1c]
	movs r0, #0x9a
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl sub_0809193C
	b _080AAE4C
_080AAE36:
	ldr r1, [r6, #0x1c]
	movs r0, #0x9c
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl sub_0809193C
_080AAE4C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AAE54
sub_080AAE54: @ 0x080AAE54
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080AAE6E
	cmp r2, #1
	bne _080AAE8A
_080AAE6E:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl sub_0809193C
	movs r0, #1
	b _080AAE8C
_080AAE8A:
	movs r0, #0
_080AAE8C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AAE94
sub_080AAE94: @ 0x080AAE94
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AAF2A
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AAF2A
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AAF2A
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08075010
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AAF2A
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080AAF2C
_080AAF2A:
	movs r0, #0
_080AAF2C:
	cmp r0, #0
	bne _080AAF34
	movs r0, #0
	b _080AAF8C
_080AAF34:
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AAF60
	ldr r1, [r4, #0x1c]
	movs r2, #0x8a
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl sub_08091940
	b _080AAF8A
_080AAF60:
	movs r1, #0xb9
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AAF8A
	ldr r1, [r4, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0
	movs r2, #0
	bl sub_08091940
_080AAF8A:
	movs r0, #1
_080AAF8C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AAF94
sub_080AAF94: @ 0x080AAF94
	push {lr}
	adds r1, r0, #0
	movs r0, #0xfc
	bl sub_080741AC
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AAFA4
sub_080AAFA4: @ 0x080AAFA4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #1
	ble _080AAFC6
	movs r0, #0xb9
	lsls r0, r0, #1
	b _080AAFC8
_080AAFC6:
	ldr r0, _080AAFD4 @ =0x00000171
_080AAFC8:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AAFD4: .4byte 0x00000171

	thumb_func_start sub_080AAFD8
sub_080AAFD8: @ 0x080AAFD8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #1
	bgt _080AB00C
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080AB008 @ =0x00000173
	cmp r0, #0x32
	bge _080AB004
	subs r1, #4
_080AB004:
	adds r0, r1, #0
	b _080AB02C
	.align 2, 0
_080AB008: .4byte 0x00000173
_080AB00C:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #2
	ble _080AB02A
	movs r0, #0xb8
	lsls r0, r0, #1
	b _080AB02C
_080AB02A:
	ldr r0, _080AB038 @ =0x0000021F
_080AB02C:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AB038: .4byte 0x0000021F

	thumb_func_start sub_080AB03C
sub_080AB03C: @ 0x080AB03C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _080AB072
	cmp r0, #1
	bgt _080AB056
	cmp r0, #0
	beq _080AB05C
	b _080AB09E
_080AB056:
	cmp r0, #2
	beq _080AB088
	b _080AB09E
_080AB05C:
	ldr r1, [r6, #0x1c]
	movs r2, #0x87
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080AB0F8
_080AB072:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080AB0F8
_080AB088:
	ldr r1, [r6, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080AB0F8
_080AB09E:
	ldr r1, [r6, #0x1c]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	ble _080AB0F6
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl sub_0809193C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080AB0F8
_080AB0F6:
	movs r0, #0
_080AB0F8:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AB100
sub_080AB100: @ 0x080AB100
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0x3c
	bgt _080AB15E
	ldr r1, [r4, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0
	bl sub_08091940
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AB15E
	ldr r0, _080AB164 @ =0x0000021E
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	ldr r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl sub_0809193C
_080AB15E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AB164: .4byte 0x0000021E

	thumb_func_start sub_080AB168
sub_080AB168: @ 0x080AB168
	push {lr}
	ldr r2, _080AB17C @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AB180 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AB17C: .4byte 0x09F642A0
_080AB180: .4byte 0x09F64318

	thumb_func_start sub_080AB184
sub_080AB184: @ 0x080AB184
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0xb6
	lsls r0, r0, #1
	cmp r1, #0xf
	blt _080AB1A2
	adds r0, #2
	cmp r1, #0x1e
	bge _080AB1A2
	subs r0, #1
_080AB1A2:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AB1B0
sub_080AB1B0: @ 0x080AB1B0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080AB1E0 @ =0x00000167
	cmp r0, #0x19
	blt _080AB1D0
	adds r1, #1
	cmp r0, #0x41
	blt _080AB1D0
	adds r1, #1
	cmp r0, #0x5f
	bge _080AB1D0
	adds r1, #2
_080AB1D0:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AB1E0: .4byte 0x00000167

	thumb_func_start sub_080AB1E4
sub_080AB1E4: @ 0x080AB1E4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080AB250
	cmp r0, #1
	beq _080AB266
	ldr r1, [r6, #0x1c]
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	ble _080AB27C
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl sub_0809193C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080AB27E
_080AB250:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080AB27E
_080AB266:
	ldr r1, [r6, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080AB27E
_080AB27C:
	movs r0, #0
_080AB27E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080AB284
sub_080AB284: @ 0x080AB284
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080AB29E
	cmp r2, #1
	bne _080AB2BA
_080AB29E:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl sub_0809193C
	movs r0, #1
	b _080AB2BC
_080AB2BA:
	movs r0, #0
_080AB2BC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AB2C4
sub_080AB2C4: @ 0x080AB2C4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x41
	bl sub_0809193C
	cmp r4, r0
	bge _080AB326
	ldr r1, [r5, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl sub_08091940
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AB326
	movs r0, #0xb5
	lsls r0, r0, #1
	adds r1, r5, #0
	bl sub_080741AC
	bl sub_08074234
_080AB326:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080AB32C
sub_080AB32C: @ 0x080AB32C
	push {lr}
	ldr r2, _080AB340 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AB344 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AB340: .4byte 0x09F642A0
_080AB344: .4byte 0x09F64318

	thumb_func_start sub_080AB348
sub_080AB348: @ 0x080AB348
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bgt _080AB36C
	ldr r0, _080AB368 @ =0x0000011F
	b _080AB39C
	.align 2, 0
_080AB368: .4byte 0x0000011F
_080AB36C:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #1
	ble _080AB39A
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #2
	cmp r1, #0x1e
	blt _080AB39C
	movs r0, #0x3a
	cmp r1, #0x55
	bge _080AB39C
_080AB39A:
	movs r0, #0x59
_080AB39C:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080AB3A8
sub_080AB3A8: @ 0x080AB3A8
	push {lr}
	ldr r2, _080AB3BC @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AB3C0 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AB3BC: .4byte 0x09F642A0
_080AB3C0: .4byte 0x09F64318

	thumb_func_start sub_080AB3C4
sub_080AB3C4: @ 0x080AB3C4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x83
	bl sub_08072E38
	adds r2, r0, #0
	cmp r2, #0
	beq _080AB3F2
	ldr r1, [r2, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0x45
	bgt _080AB3F2
	movs r0, #0x91
	lsls r0, r0, #1
	b _080AB40A
_080AB3F2:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080AB418 @ =0x00000127
	cmp r1, #0x37
	blt _080AB40A
	adds r0, #0x72
	cmp r1, #0x41
	bge _080AB40A
	movs r0, #0xca
_080AB40A:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AB418: .4byte 0x00000127

	thumb_func_start sub_080AB41C
sub_080AB41C: @ 0x080AB41C
	push {lr}
	ldr r2, _080AB430 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AB434 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AB430: .4byte 0x09F642A0
_080AB434: .4byte 0x09F64318

	thumb_func_start sub_080AB438
sub_080AB438: @ 0x080AB438
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080AB452
	cmp r2, #1
	bne _080AB46E
_080AB452:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl sub_0809193C
	movs r0, #1
	b _080AB470
_080AB46E:
	movs r0, #0
_080AB470:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AB478
sub_080AB478: @ 0x080AB478
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r7, r0, #0
	adds r6, r1, #0
	bl nullsub_34
	ldr r1, [r7, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bgt _080AB49E
	b _080AB600
_080AB49E:
	ldr r1, [r6, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #1
	beq _080AB4B8
	b _080AB600
_080AB4B8:
	ldr r1, [r7, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AB4D8
	b _080AB600
_080AB4D8:
	movs r0, #0x14
	bl sub_0807068C
	ldr r1, [r7, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl sub_0809193C
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl sub_0809193C
	add r1, sp, #0x34
	movs r5, #0
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	ldr r0, _080AB64C @ =0x0000064E
	bl sub_08070824
	movs r0, #0x47
	adds r1, r7, #0
	adds r2, r7, #0
	bl sub_080730FC
	ldr r1, [r6, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r1, #0x14
	movs r2, #1
	bl sub_08073734
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r2, r0, #0
	movs r0, #0x49
	adds r1, r4, #0
	bl sub_080730FC
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #0x10
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl sub_0809193C
	add r0, sp, #0x1c
	bl sub_0806E274
	add r0, sp, #0x28
	bl sub_0806E274
	add r4, sp, #0x28
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x9f
	lsls r1, r1, #2
	add r2, sp, #0x10
	add r3, sp, #0x1c
	bl sub_08073460
	add r1, sp, #0x38
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #0x1c
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #0x10
	movs r1, #2
	bl sub_0806E308
_080AB600:
	ldr r1, [r7, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	ble _080AB642
	movs r1, #0x91
	lsls r1, r1, #1
	adds r0, r6, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AB642
	ldr r1, [r7, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r3, [r1, #4]
	movs r1, #0
	movs r2, #0
	bl sub_08091940
_080AB642:
	add sp, #0x3c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AB64C: .4byte 0x0000064E

	thumb_func_start sub_080AB650
sub_080AB650: @ 0x080AB650
	push {lr}
	adds r1, r0, #0
	movs r0, #0xfc
	bl sub_080741AC
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AB660
sub_080AB660: @ 0x080AB660
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x4e
	bne _080AB694
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x2c
	cmp r0, #0x3c
	bge _080AB690
	movs r1, #0x73
_080AB690:
	adds r0, r1, #0
	b _080AB6AC
_080AB694:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x73
	cmp r1, #0x23
	blt _080AB6AC
	movs r0, #0x4e
	cmp r1, #0x3c
	bge _080AB6AC
	movs r0, #0x2c
_080AB6AC:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080AB6B8
sub_080AB6B8: @ 0x080AB6B8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080AB724
	cmp r0, #1
	beq _080AB73A
	ldr r1, [r6, #0x1c]
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	ble _080AB750
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl sub_0809193C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080AB752
_080AB724:
	ldr r1, [r6, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080AB752
_080AB73A:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080AB752
_080AB750:
	movs r0, #0
_080AB752:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080AB758
sub_080AB758: @ 0x080AB758
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0x45
	bgt _080AB7A0
	ldr r1, [r4, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl sub_08091940
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AB7A0
	movs r0, #0xfb
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080AB7A0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AB7A8
sub_080AB7A8: @ 0x080AB7A8
	push {lr}
	ldr r2, _080AB7BC @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AB7C0 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AB7BC: .4byte 0x09F642A0
_080AB7C0: .4byte 0x09F64318

	thumb_func_start sub_080AB7C4
sub_080AB7C4: @ 0x080AB7C4
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	adds r1, r5, #0
	bl sub_08075770
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AB7DE
	movs r0, #0
	b _080AB81E
_080AB7DE:
	cmp r5, #0x16
	bne _080AB81C
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl sub_0809193C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AB81C
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	str r0, [r1]
_080AB81C:
	movs r0, #1
_080AB81E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080AB824
sub_080AB824: @ 0x080AB824
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AB8BA
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AB8BA
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AB8BA
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08075010
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AB8BA
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080AB8BC
_080AB8BA:
	movs r0, #0
_080AB8BC:
	cmp r0, #0
	bne _080AB8C4
	movs r0, #0
	b _080AB91E
_080AB8C4:
	movs r1, #0xbc
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AB8F4
	ldr r1, [r4, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	subs r0, #1
	str r0, [r1]
_080AB8F4:
	adds r0, r5, #0
	movs r1, #0xae
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AB91C
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	bl sub_08074234
_080AB91C:
	movs r0, #1
_080AB91E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080AB924
sub_080AB924: @ 0x080AB924
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #1
	cmp r0, r1
	bne _080AB964
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080AB960 @ =0x00000177
	cmp r0, #0x28
	bge _080AB95A
	subs r1, #1
_080AB95A:
	adds r0, r1, #0
	b _080AB97E
	.align 2, 0
_080AB960: .4byte 0x00000177
_080AB964:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0xbb
	lsls r0, r0, #1
	cmp r1, #0x1e
	blt _080AB97E
	adds r0, #2
	cmp r1, #0x50
	bge _080AB97E
	subs r0, #1
_080AB97E:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AB98C
sub_080AB98C: @ 0x080AB98C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #3
	cmp r0, r1
	bne _080AB9BC
	movs r0, #0xae
	adds r1, r4, #0
	bl sub_080741AC
	b _080ABA14
_080AB9BC:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r0, #1
	movs r1, #3
	bl sub_0807067C
	cmp r0, #0
	bne _080ABA00
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080AB9FC @ =0x00000179
	cmp r1, #0x14
	blt _080AB9F4
	adds r0, #2
	cmp r1, #0x28
	bge _080AB9F4
	subs r0, #1
_080AB9F4:
	adds r1, r4, #0
	bl sub_080741AC
	b _080ABA14
	.align 2, 0
_080AB9FC: .4byte 0x00000179
_080ABA00:
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
_080ABA14:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080ABA1C
sub_080ABA1C: @ 0x080ABA1C
	push {lr}
	ldr r2, _080ABA30 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080ABA34 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080ABA30: .4byte 0x09F642A0
_080ABA34: .4byte 0x09F64318

	thumb_func_start sub_080ABA38
sub_080ABA38: @ 0x080ABA38
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl nullsub_32
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	ble _080ABAA4
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _080ABAA4
	ldr r1, [r4, #0x1c]
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #1
	bne _080ABAA4
	ldr r1, [r5, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #1
	bne _080ABAA4
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080ABAA4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ABAAC
sub_080ABAAC: @ 0x080ABAAC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl nullsub_35
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ABAD2
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
_080ABAD2:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080ABAD8
sub_080ABAD8: @ 0x080ABAD8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x9d
	cmp r0, #0x46
	bge _080ABAEC
	movs r1, #0x1f
_080ABAEC:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080ABAFC
sub_080ABAFC: @ 0x080ABAFC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _080ABB18
	movs r0, #0x77
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080ABB18:
	adds r0, r4, #0
	bl sub_08080F54
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080ABB24
sub_080ABB24: @ 0x080ABB24
	push {lr}
	ldr r2, _080ABB38 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080ABB3C @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080ABB38: .4byte 0x09F642A0
_080ABB3C: .4byte 0x09F64318

	thumb_func_start sub_080ABB40
sub_080ABB40: @ 0x080ABB40
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC
	cmp r0, #2
	bgt _080ABB78
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #2
	cmp r0, #0x14
	blt _080ABB70
	movs r1, #0x2b
	cmp r0, #0x23
	blt _080ABB70
	movs r1, #0x8c
	lsls r1, r1, #2
	cmp r0, #0x28
	blt _080ABB70
	ldr r1, _080ABB74 @ =0x0000012B
	cmp r0, #0x41
	bge _080ABB70
	subs r1, #1
_080ABB70:
	adds r0, r1, #0
	b _080ABB92
	.align 2, 0
_080ABB74: .4byte 0x0000012B
_080ABB78:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080ABBA0 @ =0x00000113
	cmp r1, #0x3c
	blt _080ABB92
	movs r0, #0x8c
	lsls r0, r0, #2
	cmp r1, #0x50
	bge _080ABB92
	movs r0, #0x2b
_080ABB92:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080ABBA0: .4byte 0x00000113

	thumb_func_start sub_080ABBA4
sub_080ABBA4: @ 0x080ABBA4
	push {lr}
	ldr r2, _080ABBB8 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080ABBBC @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080ABBB8: .4byte 0x09F642A0
_080ABBBC: .4byte 0x09F64318

	thumb_func_start sub_080ABBC0
sub_080ABBC0: @ 0x080ABBC0
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	blt _080ABBDA
	cmp r2, #1
	bne _080ABBF6
_080ABBDA:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl sub_0809193C
	movs r0, #1
	b _080ABBF8
_080ABBF6:
	movs r0, #0
_080ABBF8:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080ABC00
sub_080ABC00: @ 0x080ABC00
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ABC96
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ABC96
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ABC96
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08075010
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ABC96
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080ABC98
_080ABC96:
	movs r0, #0
_080ABC98:
	cmp r0, #0
	bne _080ABCA0
	movs r0, #0
	b _080ABCCA
_080ABCA0:
	ldr r1, _080ABCD0 @ =0x000001E7
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ABCC8
	ldr r1, [r4, #0x1c]
	movs r2, #0x8a
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0
	bl sub_08091940
_080ABCC8:
	movs r0, #1
_080ABCCA:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080ABCD0: .4byte 0x000001E7

	thumb_func_start sub_080ABCD4
sub_080ABCD4: @ 0x080ABCD4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r5, #0xcf
	lsls r5, r5, #1
	cmp r0, r5
	bne _080ABCFE
	movs r0, #0xf4
	lsls r0, r0, #1
	b _080ABD18
_080ABCFE:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0xf2
	lsls r0, r0, #1
	cmp r1, #0x19
	blt _080ABD18
	adds r0, r5, #0
	cmp r1, #0x3c
	bge _080ABD18
	ldr r0, _080ABD24 @ =0x000001E5
_080ABD18:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080ABD24: .4byte 0x000001E5

	thumb_func_start sub_080ABD28
sub_080ABD28: @ 0x080ABD28
	push {lr}
	adds r1, r0, #0
	ldr r0, _080ABD38 @ =0x000001E7
	bl sub_080741AC
	pop {r1}
	bx r1
	.align 2, 0
_080ABD38: .4byte 0x000001E7

	thumb_func_start sub_080ABD3C
sub_080ABD3C: @ 0x080ABD3C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r5, #0xf3
	lsls r5, r5, #1
	cmp r0, r5
	bne _080ABD84
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080ABD80 @ =0x000001E3
	cmp r0, #0x14
	blt _080ABDA6
	adds r1, #1
	cmp r0, #0x2d
	blt _080ABDA6
	adds r1, #1
	cmp r0, #0x41
	bge _080ABDA6
	subs r1, #4
	b _080ABDA6
	.align 2, 0
_080ABD80: .4byte 0x000001E3
_080ABD84:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080ABDB4 @ =0x000001E3
	cmp r0, #0xa
	blt _080ABDA6
	adds r1, #1
	cmp r0, #0x23
	blt _080ABDA6
	subs r1, #3
	cmp r0, #0x37
	blt _080ABDA6
	adds r1, r5, #0
	cmp r0, #0x5a
	bge _080ABDA6
	ldr r1, _080ABDB8 @ =0x000001E5
_080ABDA6:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080ABDB4: .4byte 0x000001E3
_080ABDB8: .4byte 0x000001E5

	thumb_func_start sub_080ABDBC
sub_080ABDBC: @ 0x080ABDBC
	push {lr}
	adds r2, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _080ABDE6
	cmp r0, #1
	bgt _080ABDD6
	cmp r0, #0
	beq _080ABDDC
	b _080ABE04
_080ABDD6:
	cmp r0, #2
	beq _080ABDEE
	b _080ABE04
_080ABDDC:
	ldr r1, [r2, #0x1c]
	movs r3, #0x87
	lsls r3, r3, #3
	adds r1, r1, r3
	b _080ABDF6
_080ABDE6:
	ldr r1, [r2, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	b _080ABDF4
_080ABDEE:
	ldr r1, [r2, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
_080ABDF4:
	adds r1, r1, r0
_080ABDF6:
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	b _080ABE06
_080ABE04:
	movs r0, #0
_080ABE06:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080ABE0C
sub_080ABE0C: @ 0x080ABE0C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x64
	bl sub_0807066C
	cmp r4, r0
	bge _080ABE64
	ldr r1, [r5, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl sub_08091940
_080ABE64:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ABE6C
sub_080ABE6C: @ 0x080ABE6C
	push {lr}
	ldr r2, _080ABE80 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080ABE84 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080ABE80: .4byte 0x09F642A0
_080ABE84: .4byte 0x09F64318

	thumb_func_start sub_080ABE88
sub_080ABE88: @ 0x080ABE88
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r6, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08081494
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x14
	bl sub_0809193C
	cmp r6, r0
	ble _080ABF10
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x14
	bl sub_0809193C
	cmp r4, r0
	bgt _080ABF10
	ldr r1, [r5, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa6
	lsls r2, r2, #1
	b _080ABF72
_080ABF10:
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl sub_0809193C
	cmp r6, r0
	ble _080ABF76
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl sub_0809193C
	cmp r4, r0
	bgt _080ABF76
	ldr r1, [r5, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa4
	lsls r2, r2, #1
_080ABF72:
	adds r1, r5, r2
	str r0, [r1]
_080ABF76:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080ABF7C
sub_080ABF7C: @ 0x080ABF7C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AC012
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AC012
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AC012
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08075010
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AC012
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080AC014
_080AC012:
	movs r0, #0
_080AC014:
	cmp r0, #0
	bne _080AC01C
	movs r0, #0
	b _080AC03A
_080AC01C:
	ldr r1, _080AC040 @ =0x000001DF
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AC038
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080AC038:
	movs r0, #1
_080AC03A:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AC040: .4byte 0x000001DF

	thumb_func_start sub_080AC044
sub_080AC044: @ 0x080AC044
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #1
	cmp r0, r1
	bne _080AC070
	movs r0, #0xf1
	lsls r0, r0, #1
	b _080AC1A4
_080AC070:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #1
	cmp r0, r1
	bne _080AC098
	movs r0, #0xf1
	lsls r0, r0, #1
	b _080AC1A4
_080AC098:
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	bgt _080AC0B8
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #9
	bgt _080AC0B8
	ldr r0, _080AC0B4 @ =0x000001DF
	b _080AC1A4
	.align 2, 0
_080AC0B4: .4byte 0x000001DF
_080AC0B8:
	ldr r1, [r4, #0x1c]
	movs r5, #0x84
	lsls r5, r5, #3
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #2
	bgt _080AC120
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #1
	cmp r0, r1
	bne _080AC102
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xee
	lsls r1, r1, #1
	cmp r0, #0x2d
	bge _080AC1A2
	subs r1, #1
	b _080AC1A2
_080AC102:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080AC11C @ =0x000001DB
	cmp r1, #0x28
	blt _080AC1A4
	adds r0, #3
	cmp r1, #0x5a
	bge _080AC1A4
	subs r0, #2
	b _080AC1A4
	.align 2, 0
_080AC11C: .4byte 0x000001DB
_080AC120:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #3
	bgt _080AC13E
	movs r0, #0xf0
	lsls r0, r0, #1
	b _080AC1A4
_080AC13E:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #1
	cmp r0, r1
	bne _080AC180
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080AC17C @ =0x000001DB
	cmp r0, #0xa
	blt _080AC1A2
	adds r1, #1
	cmp r0, #0x23
	blt _080AC1A2
	adds r1, #5
	cmp r0, #0x4b
	bge _080AC1A2
	subs r1, #4
	b _080AC1A2
	.align 2, 0
_080AC17C: .4byte 0x000001DB
_080AC180:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080AC1B0 @ =0x000001DB
	cmp r0, #0xa
	blt _080AC1A2
	adds r1, #1
	cmp r0, #0x1e
	blt _080AC1A2
	adds r1, #1
	cmp r0, #0x46
	blt _080AC1A2
	adds r1, #1
	cmp r0, #0x5a
	bge _080AC1A2
	adds r1, #3
_080AC1A2:
	adds r0, r1, #0
_080AC1A4:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AC1B0: .4byte 0x000001DB

	thumb_func_start sub_080AC1B4
sub_080AC1B4: @ 0x080AC1B4
	push {lr}
	ldr r2, _080AC1C8 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AC1CC @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AC1C8: .4byte 0x09F642A0
_080AC1CC: .4byte 0x09F64318

	thumb_func_start sub_080AC1D0
sub_080AC1D0: @ 0x080AC1D0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #1
	bgt _080AC200
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x4d
	cmp r0, #0x3c
	bge _080AC1FC
	movs r1, #0x1d
_080AC1FC:
	adds r0, r1, #0
	b _080AC202
_080AC200:
	movs r0, #0xc0
_080AC202:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AC210
sub_080AC210: @ 0x080AC210
	push {lr}
	ldr r2, _080AC224 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AC228 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AC224: .4byte 0x09F642A0
_080AC228: .4byte 0x09F64318

	thumb_func_start sub_080AC22C
sub_080AC22C: @ 0x080AC22C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #1
	bne _080AC252
	cmp r5, #3
	bne _080AC252
	movs r0, #0x82
	b _080AC25A
_080AC252:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080752CC
_080AC25A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080AC260
sub_080AC260: @ 0x080AC260
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bne _080AC290
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	movs r1, #0
	cmp r0, #0x45
	bgt _080AC28C
	movs r1, #0x9a
_080AC28C:
	adds r0, r1, #0
	b _080AC29A
_080AC290:
	adds r0, r4, #0
	bl sub_08080FEC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_080AC29A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080AC2A0
sub_080AC2A0: @ 0x080AC2A0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bne _080AC2D0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #7
	cmp r0, #0x41
	bge _080AC2CC
	movs r1, #0xd7
_080AC2CC:
	adds r0, r1, #0
	b _080AC2EA
_080AC2D0:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080AC2F8 @ =0x00000101
	cmp r1, #0x28
	blt _080AC2EA
	movs r0, #0x99
	lsls r0, r0, #2
	cmp r1, #0x4b
	bge _080AC2EA
	subs r0, #1
_080AC2EA:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AC2F8: .4byte 0x00000101

	thumb_func_start sub_080AC2FC
sub_080AC2FC: @ 0x080AC2FC
	push {r4, r5, lr}
	adds r5, r1, #0
	cmp r5, r0
	bne _080AC358
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bne _080AC358
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x46
	bl sub_0809193C
	cmp r4, r0
	bge _080AC358
	movs r0, #1
	adds r1, r5, #0
	bl sub_080741AC
	bl sub_08074234
_080AC358:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AC360
sub_080AC360: @ 0x080AC360
	push {lr}
	ldr r2, _080AC374 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AC378 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AC374: .4byte 0x09F642A0
_080AC378: .4byte 0x09F64318

	thumb_func_start sub_080AC37C
sub_080AC37C: @ 0x080AC37C
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080AC396
	cmp r2, #1
	bne _080AC3B2
_080AC396:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl sub_0809193C
	movs r0, #1
	b _080AC3B4
_080AC3B2:
	movs r0, #0
_080AC3B4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AC3BC
sub_080AC3BC: @ 0x080AC3BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl sub_08091938
	cmp r0, #0
	bgt _080AC3DE
	movs r0, #0x81
	lsls r0, r0, #1
	b _080AC3F6
_080AC3DE:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080AC404 @ =0x0000015B
	cmp r1, #0x19
	blt _080AC3F6
	adds r0, #1
	cmp r1, #0x55
	bge _080AC3F6
	adds r0, #3
_080AC3F6:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AC404: .4byte 0x0000015B

	thumb_func_start sub_080AC408
sub_080AC408: @ 0x080AC408
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0x9b
	bl sub_08072E38
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	movs r0, #0x9c
	bl sub_08072E38
	cmp r0, #0
	beq _080AC424
	adds r4, #1
_080AC424:
	cmp r4, #1


	.code	16
.gcc2_compiled.:
.text
	.align	2, 0
	.globl	init__12ClockManager
	.type	 init__12ClockManager,function
	.thumb_func
init__12ClockManager:
.LFB1:
.LM1:

	push	{lr}
.LBB2:
	mov	r0, #36
	bl	__builtin_new
	bl	__5Clock
.LBE2:
	pop	{r1}
	bx	r1
.LFE1:
.Lfe1:
	.size	 init__12ClockManager,.Lfe1-init__12ClockManager
	.align	2, 0
	.globl	getName__12ClockManager
	.type	 getName__12ClockManager,function
	.thumb_func
getName__12ClockManager:
.LFB2:
.LM2:

.LBB3:
	ldr	r0, .L17
.LBE3:
	bx	lr
.L18:
	.align	2, 0
.L17:
	.word	gUnknown_080FEF44
.LFE2:
.Lfe2:
	.size	 getName__12ClockManager,.Lfe2-getName__12ClockManager
	.align	2, 0
	.globl	init__21PostSysClockSingleton
	.type	 init__21PostSysClockSingleton,function
	.thumb_func
init__21PostSysClockSingleton:
.LFB3:
.LM3:

	push	{lr}
.LBB4:
	mov	r0, #36
	bl	__builtin_new
	bl	__12PostSysClock
.LBE4:
	pop	{r1}
	bx	r1
.LFE3:
.Lfe3:
	.size	 init__21PostSysClockSingleton,.Lfe3-init__21PostSysClockSingleton
	.align	2, 0
	.globl	getName__21PostSysClockSingleton
	.type	 getName__21PostSysClockSingleton,function
	.thumb_func
getName__21PostSysClockSingleton:
.LFB4:
.LM4:

.LBB5:
	ldr	r0, .L21
.LBE5:
	bx	lr
.L22:
	.align	2, 0
.L21:
	.word	gUnknown_080FEF2C
.LFE4:
.Lfe4:
	.size	 getName__21PostSysClockSingleton,.Lfe4-getName__21PostSysClockSingleton
	.align	2, 0
	.globl	_._12PostSysClock
	.type	 _._12PostSysClock,function
	.thumb_func
_._12PostSysClock:
.LFB5:
.LM5:

	push	{lr}
.LBB6:
.LBE6:
.LM6:

.LBB7:
	ldr	r2, .L27
	str	r2, [r0, #28]
.LBB8:
.LBE8:
	bl	_._4Base
.LBE7:
.LM7:

	pop	{r0}
	bx	r0
.L28:
	.align	2, 0
.L27:
	.word	_vt.3Unk
.LFE5:
.Lfe5:
	.size	 _._12PostSysClock,.Lfe5-_._12PostSysClock
	.align	2, 0
	.globl	init__21PostAppClockSingleton
	.type	 init__21PostAppClockSingleton,function
	.thumb_func
init__21PostAppClockSingleton:
.LFB6:
.LM8:

	push	{lr}
.LBB9:
	mov	r0, #36
	bl	__builtin_new
	bl	__12PostAppClock
.LBE9:
	pop	{r1}
	bx	r1
.LFE6:
.Lfe6:
	.size	 init__21PostAppClockSingleton,.Lfe6-init__21PostAppClockSingleton
	.align	2, 0
	.globl	getName__21PostAppClockSingleton
	.type	 getName__21PostAppClockSingleton,function
	.thumb_func
getName__21PostAppClockSingleton:
.LFB7:
.LM9:

.LBB10:
	ldr	r0, .L31
.LBE10:
	bx	lr
.L32:
	.align	2, 0
.L31:
	.word	gUnknown_080FEF0C
.LFE7:
.Lfe7:
	.size	 getName__21PostAppClockSingleton,.Lfe7-getName__21PostAppClockSingleton
	.align	2, 0
	.globl	_._12PostAppClock
	.type	 _._12PostAppClock,function
	.thumb_func
_._12PostAppClock:
.LFB8:
.LM10:

	push	{lr}
.LBB11:
.LBE11:
.LM11:

.LBB12:
	ldr	r2, .L37
	str	r2, [r0, #28]
.LBB13:
.LBE13:
	bl	_._4Base
.LBE12:
.LM12:

	pop	{r0}
	bx	r0
.L38:
	.align	2, 0
.L37:
	.word	_vt.3Unk
.LFE8:
.Lfe8:
	.size	 _._12PostAppClock,.Lfe8-_._12PostAppClock
	.align	2, 0
	.globl	init__17AppClockSingleton
	.type	 init__17AppClockSingleton,function
	.thumb_func
init__17AppClockSingleton:
.LFB9:
.LM13:

	push	{lr}
.LBB14:
	mov	r0, #36
	bl	__builtin_new
	bl	__8AppClock
.LBE14:
	pop	{r1}
	bx	r1
.LFE9:
.Lfe9:
	.size	 init__17AppClockSingleton,.Lfe9-init__17AppClockSingleton
	.align	2, 0
	.globl	getName__17AppClockSingleton
	.type	 getName__17AppClockSingleton,function
	.thumb_func
getName__17AppClockSingleton:
.LFB10:
.LM14:

.LBB15:
	ldr	r0, .L41
.LBE15:
	bx	lr
.L42:
	.align	2, 0
.L41:
	.word	gUnknown_080FEEF0
.LFE10:
.Lfe10:
	.size	 getName__17AppClockSingleton,.Lfe10-getName__17AppClockSingleton
	.align	2, 0
	.globl	_._8AppClock
	.type	 _._8AppClock,function
	.thumb_func
_._8AppClock:
.LFB11:
.LM15:

	push	{lr}
.LBB16:
.LBE16:
.LM16:

.LBB17:
	ldr	r2, .L47
	str	r2, [r0, #28]
.LBB18:
.LBE18:
	bl	_._4Base
.LBE17:
.LM17:

	pop	{r0}
	bx	r0
.L48:
	.align	2, 0
.L47:
	.word	_vt.3Unk
.LFE11:
.Lfe11:
	.size	 _._8AppClock,.Lfe11-_._8AppClock
	.align	2, 0
	.globl	init__20PreAppClockSingleton
	.type	 init__20PreAppClockSingleton,function
	.thumb_func
init__20PreAppClockSingleton:
.LFB12:
.LM18:

	push	{lr}
.LBB19:
	mov	r0, #36
	bl	__builtin_new
	bl	__11PreAppClock
.LBE19:
	pop	{r1}
	bx	r1
.LFE12:
.Lfe12:
	.size	 init__20PreAppClockSingleton,.Lfe12-init__20PreAppClockSingleton
	.align	2, 0
	.globl	getName__20PreAppClockSingleton
	.type	 getName__20PreAppClockSingleton,function
	.thumb_func
getName__20PreAppClockSingleton:
.LFB13:
.LM19:

.LBB20:
	ldr	r0, .L51
.LBE20:
	bx	lr
.L52:
	.align	2, 0
.L51:
	.word	gUnknown_080FEED8
.LFE13:
.Lfe13:
	.size	 getName__20PreAppClockSingleton,.Lfe13-getName__20PreAppClockSingleton
	.align	2, 0
	.globl	_._11PreAppClock
	.type	 _._11PreAppClock,function
	.thumb_func
_._11PreAppClock:
.LFB14:
.LM20:

	push	{lr}
.LBB21:
.LBE21:
.LM21:

.LBB22:
	ldr	r2, .L57
	str	r2, [r0, #28]
.LBB23:
.LBE23:
	bl	_._4Base
.LBE22:
.LM22:

	pop	{r0}
	bx	r0
.L58:
	.align	2, 0
.L57:
	.word	_vt.3Unk
.LFE14:
.Lfe14:
	.size	 _._11PreAppClock,.Lfe14-_._11PreAppClock
	.align	2, 0
	.globl	init__17SysClockSingleton
	.type	 init__17SysClockSingleton,function
	.thumb_func
init__17SysClockSingleton:
.LFB15:
.LM23:

	push	{lr}
.LBB24:
	mov	r0, #36
	bl	__builtin_new
	bl	__8SysClock
.LBE24:
	pop	{r1}
	bx	r1
.LFE15:
.Lfe15:
	.size	 init__17SysClockSingleton,.Lfe15-init__17SysClockSingleton
	.align	2, 0
	.globl	getName__17SysClockSingleton
	.type	 getName__17SysClockSingleton,function
	.thumb_func
getName__17SysClockSingleton:
.LFB16:
.LM24:

.LBB25:
	ldr	r0, .L61
.LBE25:
	bx	lr
.L62:
	.align	2, 0
.L61:
	.word	gUnknown_080FEEC0
.LFE16:
.Lfe16:
	.size	 getName__17SysClockSingleton,.Lfe16-getName__17SysClockSingleton
	.align	2, 0
	.globl	_._8SysClock
	.type	 _._8SysClock,function
	.thumb_func
_._8SysClock:
.LFB17:
.LM25:

	push	{lr}
.LBB26:
.LBE26:
.LM26:

.LBB27:
	ldr	r2, .L67
	str	r2, [r0, #28]
.LBB28:
.LBE28:
	bl	_._4Base
.LBE27:
.LM27:

	pop	{r0}
	bx	r0
.L68:
	.align	2, 0
.L67:
	.word	_vt.3Unk
.LFE17:
.Lfe17:
	.size	 _._8SysClock,.Lfe17-_._8SysClock
	.align	2, 0
	.globl	init__20PreSysClockSingleton
	.type	 init__20PreSysClockSingleton,function
	.thumb_func
init__20PreSysClockSingleton:
.LFB18:
.LM28:

	push	{lr}
.LBB29:
	mov	r0, #36
	bl	__builtin_new
	bl	__11PreSysClock
.LBE29:
	pop	{r1}
	bx	r1
.LFE18:
.Lfe18:
	.size	 init__20PreSysClockSingleton,.Lfe18-init__20PreSysClockSingleton
	.align	2, 0
	.globl	getName__20PreSysClockSingleton
	.type	 getName__20PreSysClockSingleton,function
	.thumb_func
getName__20PreSysClockSingleton:
.LFB19:
.LM29:

.LBB30:
	ldr	r0, .L71
.LBE30:
	bx	lr
.L72:
	.align	2, 0
.L71:
	.word	gUnknown_080FEEA8
.LFE19:
.Lfe19:
	.size	 getName__20PreSysClockSingleton,.Lfe19-getName__20PreSysClockSingleton
	.align	2, 0
	.globl	_._11PreSysClock
	.type	 _._11PreSysClock,function
	.thumb_func
_._11PreSysClock:
.LFB20:
.LM30:

	push	{lr}
.LBB31:
.LBE31:
.LM31:

.LBB32:
	ldr	r2, .L77
	str	r2, [r0, #28]
.LBB33:
.LBE33:
	bl	_._4Base
.LBE32:
.LM32:

	pop	{r0}
	bx	r0
.L78:
	.align	2, 0
.L77:
	.word	_vt.3Unk
.LFE20:
.Lfe20:
	.size	 _._11PreSysClock,.Lfe20-_._11PreSysClock
	.weak	_vt.12ClockManager
	.section .gnu.linkonce.d._vt.12ClockManager,"aw"
	.align	2, 0
	.type	 _vt.12ClockManager,object
	.size	 _vt.12ClockManager,24
_vt.12ClockManager:
	.short	0
	.short	0
	.word	0
	.short	0
	.short	0
	.word	getName__12ClockManager
	.short	0
	.short	0
	.word	init__12ClockManager
	.weak	_vt.21PostSysClockSingleton
	.section .gnu.linkonce.d._vt.21PostSysClockSingleton,"aw"
	.align	2, 0
	.type	 _vt.21PostSysClockSingleton,object
	.size	 _vt.21PostSysClockSingleton,24
_vt.21PostSysClockSingleton:
	.short	0
	.short	0
	.word	0
	.short	0
	.short	0
	.word	getName__21PostSysClockSingleton
	.short	0
	.short	0
	.word	init__21PostSysClockSingleton
	.weak	_vt.21PostAppClockSingleton
	.section .gnu.linkonce.d._vt.21PostAppClockSingleton,"aw"
	.align	2, 0
	.type	 _vt.21PostAppClockSingleton,object
	.size	 _vt.21PostAppClockSingleton,24
_vt.21PostAppClockSingleton:
	.short	0
	.short	0
	.word	0
	.short	0
	.short	0
	.word	getName__21PostAppClockSingleton
	.short	0
	.short	0
	.word	init__21PostAppClockSingleton
	.weak	_vt.17AppClockSingleton
	.section .gnu.linkonce.d._vt.17AppClockSingleton,"aw"
	.align	2, 0
	.type	 _vt.17AppClockSingleton,object
	.size	 _vt.17AppClockSingleton,24
_vt.17AppClockSingleton:
	.short	0
	.short	0
	.word	0
	.short	0
	.short	0
	.word	getName__17AppClockSingleton
	.short	0
	.short	0
	.word	init__17AppClockSingleton
	.weak	_vt.20PreAppClockSingleton
	.section .gnu.linkonce.d._vt.20PreAppClockSingleton,"aw"
	.align	2, 0
	.type	 _vt.20PreAppClockSingleton,object
	.size	 _vt.20PreAppClockSingleton,24
_vt.20PreAppClockSingleton:
	.short	0
	.short	0
	.word	0
	.short	0
	.short	0
	.word	getName__20PreAppClockSingleton
	.short	0
	.short	0
	.word	init__20PreAppClockSingleton
	.weak	_vt.17SysClockSingleton
	.section .gnu.linkonce.d._vt.17SysClockSingleton,"aw"
	.align	2, 0
	.type	 _vt.17SysClockSingleton,object
	.size	 _vt.17SysClockSingleton,24
_vt.17SysClockSingleton:
	.short	0
	.short	0
	.word	0
	.short	0
	.short	0
	.word	getName__17SysClockSingleton
	.short	0
	.short	0
	.word	init__17SysClockSingleton
	.weak	_vt.20PreSysClockSingleton
	.section .gnu.linkonce.d._vt.20PreSysClockSingleton,"aw"
	.align	2, 0
	.type	 _vt.20PreSysClockSingleton,object
	.size	 _vt.20PreSysClockSingleton,24
_vt.20PreSysClockSingleton:
	.short	0
	.short	0
	.word	0
	.short	0
	.short	0
	.word	getName__20PreSysClockSingleton
	.short	0
	.short	0
	.word	init__20PreSysClockSingleton
	.weak	_vt.12PostSysClock
	.section .gnu.linkonce.d._vt.12PostSysClock,"aw"
	.align	2, 0
	.type	 _vt.12PostSysClock,object
	.size	 _vt.12PostSysClock,104
_vt.12PostSysClock:
	.short	0
	.short	0
	.word	0
	.short	0
	.short	0
	.word	_._12PostSysClock
	.short	0
	.short	0
	.word	getRTTI__12PostSysClock
	.short	0
	.short	0
	.word	base_1c__4Base
	.short	0
	.short	0
	.word	base_24__4Base
	.short	0
	.short	0
	.word	base_2c__4Base
	.short	0
	.short	0
	.word	base_34__4Base
	.short	0
	.short	0
	.word	listen__4BasePvRC4BaseG9ClockData
	.short	0
	.short	0
	.word	base_44__4Base
	.short	0
	.short	0
	.word	base_4c__4BaseUiR4BaseUi
	.short	0
	.short	0
	.word	emit__4BaseR4Base
	.short	0
	.short	0
	.word	base_5c__4Base
	.short	0
	.short	0
	.word	clearNullOutgoing__4Base
	.weak	_vt.12PostAppClock
	.section .gnu.linkonce.d._vt.12PostAppClock,"aw"
	.align	2, 0
	.type	 _vt.12PostAppClock,object
	.size	 _vt.12PostAppClock,104
_vt.12PostAppClock:
	.short	0
	.short	0
	.word	0
	.short	0
	.short	0
	.word	_._12PostAppClock
	.short	0
	.short	0
	.word	getRTTI__12PostAppClock
	.short	0
	.short	0
	.word	base_1c__4Base
	.short	0
	.short	0
	.word	base_24__4Base
	.short	0
	.short	0
	.word	base_2c__4Base
	.short	0
	.short	0
	.word	base_34__4Base
	.short	0
	.short	0
	.word	listen__4BasePvRC4BaseG9ClockData
	.short	0
	.short	0
	.word	base_44__4Base
	.short	0
	.short	0
	.word	base_4c__4BaseUiR4BaseUi
	.short	0
	.short	0
	.word	emit__4BaseR4Base
	.short	0
	.short	0
	.word	base_5c__4Base
	.short	0
	.short	0
	.word	clearNullOutgoing__4Base
	.weak	_vt.8AppClock
	.section .gnu.linkonce.d._vt.8AppClock,"aw"
	.align	2, 0
	.type	 _vt.8AppClock,object
	.size	 _vt.8AppClock,104
_vt.8AppClock:
	.short	0
	.short	0
	.word	0
	.short	0
	.short	0
	.word	_._8AppClock
	.short	0
	.short	0
	.word	getRTTI__8AppClock
	.short	0
	.short	0
	.word	base_1c__4Base
	.short	0
	.short	0
	.word	base_24__4Base
	.short	0
	.short	0
	.word	base_2c__4Base
	.short	0
	.short	0
	.word	base_34__4Base
	.short	0
	.short	0
	.word	listen__4BasePvRC4BaseG9ClockData
	.short	0
	.short	0
	.word	base_44__4Base
	.short	0
	.short	0
	.word	base_4c__4BaseUiR4BaseUi
	.short	0
	.short	0
	.word	emit__4BaseR4Base
	.short	0
	.short	0
	.word	base_5c__4Base
	.short	0
	.short	0
	.word	clearNullOutgoing__4Base
	.weak	_vt.11PreAppClock
	.section .gnu.linkonce.d._vt.11PreAppClock,"aw"
	.align	2, 0
	.type	 _vt.11PreAppClock,object
	.size	 _vt.11PreAppClock,104
_vt.11PreAppClock:
	.short	0
	.short	0
	.word	0
	.short	0
	.short	0
	.word	_._11PreAppClock
	.short	0
	.short	0
	.word	getRTTI__11PreAppClock
	.short	0
	.short	0
	.word	base_1c__4Base
	.short	0
	.short	0
	.word	base_24__4Base
	.short	0
	.short	0
	.word	base_2c__4Base
	.short	0
	.short	0
	.word	base_34__4Base
	.short	0
	.short	0
	.word	listen__4BasePvRC4BaseG9ClockData
	.short	0
	.short	0
	.word	base_44__4Base
	.short	0
	.short	0
	.word	base_4c__4BaseUiR4BaseUi
	.short	0
	.short	0
	.word	emit__4BaseR4Base
	.short	0
	.short	0
	.word	base_5c__4Base
	.short	0
	.short	0
	.word	clearNullOutgoing__4Base
	.weak	_vt.8SysClock
	.section .gnu.linkonce.d._vt.8SysClock,"aw"
	.align	2, 0
	.type	 _vt.8SysClock,object
	.size	 _vt.8SysClock,104
_vt.8SysClock:
	.short	0
	.short	0
	.word	0
	.short	0
	.short	0
	.word	_._8SysClock
	.short	0
	.short	0
	.word	getRTTI__8SysClock
	.short	0
	.short	0
	.word	base_1c__4Base
	.short	0
	.short	0
	.word	base_24__4Base
	.short	0
	.short	0
	.word	base_2c__4Base
	.short	0
	.short	0
	.word	base_34__4Base
	.short	0
	.short	0
	.word	listen__4BasePvRC4BaseG9ClockData
	.short	0
	.short	0
	.word	base_44__4Base
	.short	0
	.short	0
	.word	base_4c__4BaseUiR4BaseUi
	.short	0
	.short	0
	.word	emit__4BaseR4Base
	.short	0
	.short	0
	.word	base_5c__4Base
	.short	0
	.short	0
	.word	clearNullOutgoing__4Base
	.weak	_vt.11PreSysClock
	.section .gnu.linkonce.d._vt.11PreSysClock,"aw"
	.align	2, 0
	.type	 _vt.11PreSysClock,object
	.size	 _vt.11PreSysClock,104
_vt.11PreSysClock:
	.short	0
	.short	0
	.word	0
	.short	0
	.short	0
	.word	_._11PreSysClock
	.short	0
	.short	0
	.word	getRTTI__11PreSysClock
	.short	0
	.short	0
	.word	base_1c__4Base
	.short	0
	.short	0
	.word	base_24__4Base
	.short	0
	.short	0
	.word	base_2c__4Base
	.short	0
	.short	0
	.word	base_34__4Base
	.short	0
	.short	0
	.word	listen__4BasePvRC4BaseG9ClockData
	.short	0
	.short	0
	.word	base_44__4Base
	.short	0
	.short	0
	.word	base_4c__4BaseUiR4BaseUi
	.short	0
	.short	0
	.word	emit__4BaseR4Base
	.short	0
	.short	0
	.word	base_5c__4Base
	.short	0
	.short	0
	.word	clearNullOutgoing__4Base
	.weak	_vt.3Unk
	.section .gnu.linkonce.d._vt.3Unk,"aw"
	.align	2, 0
	.type	 _vt.3Unk,object
	.size	 _vt.3Unk,104
_vt.3Unk:
	.short	0
	.short	0
	.word	0
	.short	0
	.short	0
	.word	_._3Unk
	.short	0
	.short	0
	.word	getRTTI__4Base
	.short	0
	.short	0
	.word	base_1c__4Base
	.short	0
	.short	0
	.word	base_24__4Base
	.short	0
	.short	0
	.word	base_2c__4Base
	.short	0
	.short	0
	.word	base_34__4Base
	.short	0
	.short	0
	.word	listen__4BasePvRC4BaseG9ClockData
	.short	0
	.short	0
	.word	base_44__4Base
	.short	0
	.short	0
	.word	base_4c__4BaseUiR4BaseUi
	.short	0
	.short	0
	.word	emit__4BaseR4Base
	.short	0
	.short	0
	.word	base_5c__4Base
	.short	0
	.short	0
	.word	clearNullOutgoing__4Base
	.section .gnu.linkonce.t._._3Unk,"ax",%progbits
	.align	2, 0
	.weak	_._3Unk
	.type	 _._3Unk,function
	.thumb_func
_._3Unk:
.LFB21:
.LSM0:

	push	{lr}
	ldr	r2, .L79
	str	r2, [r0, #28]
.LBB34:
.LBE34:
	bl	_._4Base
	pop	{r0}
	bx	r0
.L80:
	.align	2, 0
.L79:
	.word	_vt.3Unk
.LFE21:
.Lfe21:
	.size	 _._3Unk,.Lfe21-_._3Unk

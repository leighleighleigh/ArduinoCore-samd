	.cpu cortex-m0plus
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 34, 0
	.file	"<artificial>"
	.text
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	sam_ba_putdata.isra.0, %function
sam_ba_putdata.isra.0:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, r0
	push	{r4, lr}
	movs	r0, r1
	movs	r1, r2
	blx	r3
	movs	r2, #128
	ldr	r3, .L2
	lsls	r2, r2, #20
	str	r2, [r3, #20]
	movs	r2, #100
	ldr	r3, .L2+4
	@ sp needed
	strh	r2, [r3]
	pop	{r4, pc}
.L3:
	.align	2
.L2:
	.word	1090536448
	.word	.LANCHOR0
	.size	sam_ba_putdata.isra.0, .-sam_ba_putdata.isra.0
	.thumb_set sam_ba_putdata_xmd.isra.2,sam_ba_putdata.isra.0
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	eraseFlash, %function
eraseFlash:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L10
	push	{r4, r5, lr}
	ldr	r1, [r3, #8]
	str	r0, [r3, #4]
	ldr	r3, [r3, #12]
	ldr	r2, .L10+4
	ldr	r4, .L10+8
	lsls	r3, r3, #2
.L5:
	cmp	r1, r0
	bhi	.L7
	@ sp needed
	pop	{r4, r5, pc}
.L7:
	lsrs	r5, r0, #1
	str	r5, [r2, #28]
	strh	r4, [r2]
.L6:
	ldrb	r5, [r2, #20]
	lsls	r5, r5, #31
	bpl	.L6
	adds	r0, r0, r3
	b	.L5
.L11:
	.align	2
.L10:
	.word	.LANCHOR0
	.word	1090535424
	.word	-23294
	.size	eraseFlash, .-eraseFlash
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	sam_ba_putdata_term, %function
sam_ba_putdata_term:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r3, .L24
	movs	r2, r1
	ldrb	r1, [r3, #16]
	sub	sp, sp, #20
	ldr	r4, [r3, #20]
	cmp	r1, #0
	beq	.L13
	cmp	r2, #4
	bne	.L14
	ldr	r0, [r0]
.L15:
	movs	r6, #15
	movs	r7, #48
	lsls	r2, r2, #1
	add	r3, sp, #16
	adds	r3, r3, r2
	subs	r3, r3, #11
	subs	r5, r3, r2
.L19:
	movs	r1, r0
	ands	r1, r6
	cmp	r1, #9
	bhi	.L17
	orrs	r1, r7
.L22:
	strb	r1, [r3]
	subs	r3, r3, #1
	lsrs	r0, r0, #4
	cmp	r5, r3
	bne	.L19
	movs	r0, #10
	ldr	r3, .L24+4
	add	r1, sp, #4
	strh	r3, [r1]
	adds	r3, r1, r2
	strb	r0, [r3, #2]
	adds	r0, r0, #3
	strb	r0, [r3, #3]
	adds	r2, r2, #4
.L23:
	ldr	r0, [r4, #12]
	bl	sam_ba_putdata.isra.0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L14:
	cmp	r2, #2
	bne	.L16
	ldrh	r0, [r0]
	b	.L15
.L16:
	ldrb	r0, [r0]
	b	.L15
.L17:
	adds	r1, r1, #55
	b	.L22
.L13:
	movs	r1, r0
	b	.L23
.L25:
	.align	2
.L24:
	.word	.LANCHOR0
	.word	30768
	.size	sam_ba_putdata_term, .-sam_ba_putdata_term
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SysTick_Handler, %function
SysTick_Handler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L37
	ldr	r3, .L37+4
	ldrb	r1, [r2, #24]
	cmp	r1, #0
	bne	.L27
	ldrb	r1, [r3]
	ldrb	r0, [r3, #1]
	adds	r1, r1, r0
	movs	r0, #128
	uxtb	r1, r1
	strb	r1, [r3, #1]
	ldr	r1, .L37+8
	lsls	r0, r0, #10
	str	r0, [r1, #28]
.L27:
	ldrb	r1, [r2, #24]
	adds	r1, r1, #1
	uxtb	r1, r1
	strb	r1, [r2, #24]
	ldrb	r1, [r3, #1]
	cmp	r1, #240
	bhi	.L28
	ldrb	r1, [r3, #1]
	cmp	r1, #9
	bhi	.L29
.L28:
	ldrb	r1, [r3]
	rsbs	r1, r1, #0
	sxtb	r1, r1
	strb	r1, [r3]
	ldrb	r1, [r3]
	ldrb	r0, [r3, #1]
	adds	r1, r1, r0
	uxtb	r1, r1
	strb	r1, [r3, #1]
.L29:
	ldrb	r1, [r2, #24]
	ldrb	r3, [r3, #1]
	cmp	r1, r3
	bne	.L30
	movs	r1, #128
	ldr	r3, .L37+8
	lsls	r1, r1, #10
	str	r1, [r3, #28]
.L30:
	ldrh	r3, [r2]
	cmp	r3, #0
	beq	.L32
	ldrh	r3, [r2]
	subs	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2]
	cmp	r3, #0
	bne	.L32
	movs	r1, #128
	ldr	r3, .L37+8
	lsls	r1, r1, #20
	str	r1, [r3, #24]
.L32:
	ldrh	r3, [r2, #26]
	cmp	r3, #0
	beq	.L26
	ldrh	r3, [r2, #26]
	subs	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2, #26]
	cmp	r3, #0
	bne	.L26
	movs	r2, #8
	ldr	r3, .L37+12
	str	r2, [r3]
.L26:
	@ sp needed
	bx	lr
.L38:
	.align	2
.L37:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	1090536448
	.word	1090536600
	.size	SysTick_Handler, .-SysTick_Handler
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PendSV_Handler, %function
PendSV_Handler:
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.syntax divided
@ 139 "board_startup.c" 1
	bkpt 2
@ 0 "" 2
	.thumb
	.syntax unified
.L40:
	b	.L40
	.size	PendSV_Handler, .-PendSV_Handler
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SVC_Handler, %function
SVC_Handler:
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.syntax divided
@ 133 "board_startup.c" 1
	bkpt 5
@ 0 "" 2
	.thumb
	.syntax unified
.L42:
	b	.L42
	.size	SVC_Handler, .-SVC_Handler
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	HardFault_Handler, %function
HardFault_Handler:
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.syntax divided
@ 127 "board_startup.c" 1
	bkpt 13
@ 0 "" 2
	.thumb
	.syntax unified
.L44:
	b	.L44
	.size	HardFault_Handler, .-HardFault_Handler
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	NMI_Handler, %function
NMI_Handler:
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.syntax divided
@ 121 "board_startup.c" 1
	bkpt 14
@ 0 "" 2
	.thumb
	.syntax unified
.L46:
	b	.L46
	.size	NMI_Handler, .-NMI_Handler
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	dfll_sync, %function
dfll_sync:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #16
	ldr	r1, .L51
.L48:
	ldr	r2, [r1, #12]
	tst	r2, r3
	beq	.L48
	@ sp needed
	bx	lr
.L52:
	.align	2
.L51:
	.word	1073743872
	.size	dfll_sync, .-dfll_sync
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	gclk_sync, %function
gclk_sync:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L56
.L54:
	ldrb	r3, [r2, #1]
	sxtb	r3, r3
	cmp	r3, #0
	blt	.L54
	@ sp needed
	bx	lr
.L57:
	.align	2
.L56:
	.word	1073744896
	.size	gclk_sync, .-gclk_sync
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	USB_SendZlp, %function
USB_SendZlp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L62
	adds	r0, r0, #255
	ldr	r3, [r2, #20]
	lsrs	r3, r3, #14
	lsls	r3, r3, #14
	str	r3, [r2, #20]
	movs	r3, #2
	strb	r3, [r0, #8]
	ldrb	r2, [r0, #6]
	subs	r3, r3, #130
	orrs	r3, r2
	strb	r3, [r0, #6]
.L59:
	ldrb	r3, [r0, #8]
	lsls	r3, r3, #30
	bpl	.L59
	@ sp needed
	bx	lr
.L63:
	.align	2
.L62:
	.word	usb_endpoint_table
	.size	USB_SendZlp, .-USB_SendZlp
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	USB_Read, %function
USB_Read:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	ldr	r7, .L69
	movs	r6, r0
	ldrb	r3, [r7, #28]
	movs	r0, r1
	movs	r4, r2
	cmp	r3, #0
	bne	.L65
	ldr	r3, .L69+4
	ldr	r2, .L69+8
	ldr	r1, .L69+12
	str	r2, [r3, #64]
	ldr	r2, [r3, #68]
	lsrs	r2, r2, #14
	lsls	r2, r2, #14
	str	r2, [r3, #68]
	ldr	r2, [r3, #68]
	ands	r2, r1
	str	r2, [r3, #68]
	movs	r2, #162
	movs	r3, #64
	lsls	r2, r2, #1
	ldrb	r1, [r6, r2]
	orrs	r3, r1
	strb	r3, [r6, r2]
	movs	r3, #1
	strb	r3, [r7, #28]
.L65:
	movs	r5, #72
	adds	r5, r5, #255
	ldrb	r3, [r6, r5]
	lsls	r3, r3, #31
	lsrs	r3, r3, #31
	beq	.L68
	ldr	r2, .L69+4
	ldr	r3, [r2, #68]
	lsls	r3, r3, #18
	lsrs	r3, r3, #18
	cmp	r4, r3
	bls	.L67
	ldr	r4, [r2, #68]
	lsls	r4, r4, #18
	lsrs	r4, r4, #18
.L67:
	movs	r2, r4
	ldr	r1, .L69+8
	bl	memcpy
	movs	r3, #1
	strb	r3, [r6, r5]
	movs	r3, #0
	strb	r3, [r7, #28]
.L66:
	movs	r0, r4
	@ sp needed
	pop	{r3, r4, r5, r6, r7, pc}
.L68:
	movs	r4, r3
	b	.L66
.L70:
	.align	2
.L69:
	.word	.LANCHOR0
	.word	usb_endpoint_table
	.word	udd_ep_out_cache_buffer+64
	.word	-268419073
	.size	USB_Read, .-USB_Read
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	cdc_getc, %function
cdc_getc:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, lr}
	mov	r3, sp
	adds	r4, r3, #7
	ldr	r3, .L72
	movs	r2, #1
	movs	r1, r4
	ldr	r0, [r3, #32]
	bl	USB_Read
	@ sp needed
	ldrb	r0, [r4]
	pop	{r1, r2, r4, pc}
.L73:
	.align	2
.L72:
	.word	.LANCHOR0
	.size	cdc_getc, .-cdc_getc
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	USB_Write, %function
USB_Write:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	str	r0, [sp]
	movs	r0, #1
	ldr	r5, .L80
	movs	r4, r3
	lsls	r3, r3, #5
	movs	r6, r2
	str	r3, [sp, #4]
	adds	r2, r5, r3
	ldr	r3, [r2, #20]
	adds	r2, r2, #16
	lsls	r3, r3, #1
	lsrs	r3, r3, #29
	adds	r3, r3, #3
	lsls	r0, r0, r3
	cmp	r0, r6
	bhi	.L75
	movs	r3, #128
	ldr	r0, [r2, #4]
	lsls	r3, r3, #24
	orrs	r3, r0
	str	r3, [r2, #4]
.L76:
	lsls	r3, r4, #5
	adds	r5, r5, r3
	str	r1, [r5, #16]
	ldr	r3, [r5, #20]
	lsls	r1, r6, #18
	lsrs	r3, r3, #14
	lsrs	r1, r1, #18
	lsls	r3, r3, #14
	orrs	r3, r1
	str	r3, [r5, #20]
	ldr	r3, [r5, #20]
	ldr	r1, .L80+4
	adds	r4, r4, #8
	ands	r3, r1
	str	r3, [r5, #20]
	ldr	r3, [sp]
	lsls	r4, r4, #5
	adds	r4, r3, r4
	movs	r3, #2
	strb	r3, [r4, #7]
	ldrb	r2, [r4, #5]
	subs	r3, r3, #130
	orrs	r3, r2
	strb	r3, [r4, #5]
.L77:
	ldrb	r3, [r4, #7]
	lsls	r3, r3, #30
	bpl	.L77
	movs	r0, r6
	@ sp needed
	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
.L75:
	ldr	r3, .L80+8
	lsls	r7, r4, #6
	adds	r7, r7, r3
	movs	r2, r6
	movs	r0, r7
	bl	memcpy
	movs	r1, r7
	b	.L76
.L81:
	.align	2
.L80:
	.word	usb_endpoint_table
	.word	-268419073
	.word	udd_ep_in_cache_buffer
	.size	USB_Write, .-USB_Write
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	cdc_write_buf, %function
cdc_write_buf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r4, r1
	movs	r2, r1
	movs	r1, r0
	ldr	r0, .L83
	movs	r3, #1
	ldr	r0, [r0, #32]
	bl	USB_Write
	@ sp needed
	movs	r0, r4
	pop	{r4, pc}
.L84:
	.align	2
.L83:
	.word	.LANCHOR0
	.size	cdc_write_buf, .-cdc_write_buf
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	cdc_putc, %function
cdc_putc:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #1
	push	{r0, r1, r2, lr}
	str	r0, [sp, #4]
	ldr	r0, .L86
	movs	r2, r3
	add	r1, sp, #4
	ldr	r0, [r0, #32]
	bl	USB_Write
	@ sp needed
	movs	r0, #1
	pop	{r1, r2, r3, pc}
.L87:
	.align	2
.L86:
	.word	.LANCHOR0
	.size	cdc_putc, .-cdc_putc
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	USB_SendString, %function
USB_SendString:
	@ args = 0, pretend = 0, frame = 256
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r5, r0
	sub	sp, sp, #256
	movs	r0, r1
	movs	r6, r2
	movs	r4, r1
	bl	strlen
	mov	r3, sp
	lsls	r0, r0, #1
	adds	r0, r0, #2
	strb	r0, [r3]
	mov	r2, sp
	movs	r3, #3
	lsrs	r6, r6, #1
	strb	r3, [r2, #1]
	subs	r3, r3, #2
.L89:
	subs	r2, r3, #1
	ldrb	r1, [r4, r2]
	lsls	r2, r3, #1
	cmp	r1, #0
	beq	.L92
	cmp	r6, r3
	bgt	.L91
.L92:
	movs	r3, #0
	mov	r1, sp
	movs	r0, r5
	bl	USB_Write
	add	sp, sp, #256
	@ sp needed
	pop	{r4, r5, r6, pc}
.L91:
	mov	r0, sp
	adds	r3, r3, #1
	strh	r1, [r0, r2]
	b	.L89
	.size	USB_SendString, .-USB_SendString
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	USB_IsConfigured, %function
USB_IsConfigured:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	ldr	r5, [r0]
	movs	r2, #8
	movs	r1, r5
	ldrh	r3, [r5, #28]
	movs	r6, r0
	ands	r3, r2
	adds	r1, r1, #255
	cmp	r3, #0
	beq	.L95
	movs	r3, #128
	movs	r0, #64
	movs	r4, #192
	strh	r2, [r5, #28]
	adds	r2, r2, #9
	strb	r3, [r5, #10]
	strb	r2, [r1, #1]
	strb	r0, [r1, #6]
	strb	r3, [r1, #5]
	ldr	r3, .L170
	ldr	r5, .L170+4
	ldr	r2, [r3, #4]
	lsls	r4, r4, #22
	ands	r2, r5
	orrs	r2, r4
	str	r2, [r3, #4]
	ldr	r2, [r3, #20]
	ands	r2, r5
	orrs	r4, r2
	ldr	r2, .L170+8
	str	r4, [r3, #20]
	str	r2, [r3]
	ldr	r2, .L170+12
	ldr	r4, .L170+16
	str	r2, [r3, #16]
	ldr	r2, [r3, #4]
	ands	r4, r2
	movs	r2, #128
	lsls	r2, r2, #10
	orrs	r2, r4
	str	r2, [r3, #4]
	ldr	r2, [r3, #4]
	lsrs	r2, r2, #14
	lsls	r2, r2, #14
	str	r2, [r3, #4]
	movs	r3, #0
	strb	r0, [r1, #5]
	strb	r3, [r6, #4]
.L96:
	ldrb	r0, [r6, #4]
	@ sp needed
	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
.L95:
	movs	r0, #16
	ldrb	r2, [r1, #8]
	tst	r2, r0
	beq	.L96
	ldr	r2, .L170+8
	strb	r0, [r1, #8]
	ldrb	r7, [r2]
	ldr	r0, .L170+20
	ldr	r4, .L170+24
	strb	r7, [r0]
	ldrb	r7, [r2, #1]
	ldr	r0, .L170+28
	strb	r7, [r0]
	ldrb	r7, [r2, #2]
	strh	r7, [r4, #46]
	ldrb	r7, [r2, #3]
	ldrh	r0, [r4, #46]
	lsls	r7, r7, #8
	orrs	r7, r0
	strh	r7, [r4, #46]
	ldrb	r7, [r2, #4]
	strh	r7, [r4, #48]
	ldrb	r7, [r2, #5]
	ldrh	r0, [r4, #48]
	lsls	r7, r7, #8
	orrs	r7, r0
	strh	r7, [r4, #48]
	ldrb	r7, [r2, #6]
	ldr	r0, .L170+20
	strh	r7, [r4, #50]
	ldrb	r2, [r2, #7]
	ldrh	r7, [r4, #50]
	lsls	r2, r2, #8
	orrs	r7, r2
	strh	r7, [r4, #50]
	movs	r7, #64
	ldr	r2, .L170+28
	strb	r7, [r1, #5]
	ldrb	r2, [r2]
	ldrb	r0, [r0]
	lsls	r2, r2, #8
	orrs	r2, r0
	ldr	r0, .L170+32
	cmp	r2, r0
	bne	.LCB855
	b	.L98	@long jump
.LCB855:
	bgt	.L99
	movs	r0, #128
	lsls	r0, r0, #1
	cmp	r2, r0
	beq	.L97
	bgt	.L101
	cmp	r2, #129
	beq	.L102
	cmp	r2, #130
	bne	.LCB867
	b	.L103	@long jump
.LCB867:
	cmp	r2, #128
	bne	.L97
.L102:
	movs	r1, r4
	strh	r3, [r4, #52]
	adds	r1, r1, #52
.L169:
	movs	r2, #2
	b	.L166
.L101:
	movs	r3, #129
	lsls	r3, r3, #1
	cmp	r2, r3
	bne	.LCB884
	b	.L105	@long jump
.LCB884:
	bge	.LCB886
	b	.L168	@long jump
.LCB886:
	adds	r3, r3, #255
	adds	r3, r3, #255
	cmp	r2, r3
	bne	.LCB890
	b	.L107	@long jump
.LCB890:
	ldr	r3, .L170+36
	cmp	r2, r3
	bne	.LCB893
	b	.L168	@long jump
.LCB893:
.L97:
	movs	r3, #32
	adds	r5, r5, #255
	ldrb	r2, [r5, #6]
	orrs	r3, r2
	strb	r3, [r5, #6]
	b	.L96
.L99:
	movs	r1, #144
	lsls	r1, r1, #4
	cmp	r2, r1
	beq	.L109
	bgt	.L110
	movs	r1, #208
	lsls	r1, r1, #3
	cmp	r2, r1
	beq	.L111
	movs	r1, #136
	lsls	r1, r1, #4
	cmp	r2, r1
	bne	.LCB917
	b	.L112	@long jump
.LCB917:
	movs	r3, #160
	lsls	r3, r3, #3
	cmp	r2, r3
	bne	.L97
	movs	r0, r5
	bl	USB_SendZlp
	movs	r3, #128
	ldrh	r2, [r4, #46]
	rsbs	r3, r3, #0
	orrs	r3, r2
	ldr	r2, [r6]
	uxtb	r3, r3
	strb	r3, [r2, #10]
	b	.L96
.L110:
	ldr	r3, .L170+40
	cmp	r2, r3
	bne	.LCB939
	b	.L168	@long jump
.LCB939:
	ble	.L97
	ldr	r3, .L170+44
	cmp	r2, r3
	bne	.LCB944
	b	.L116	@long jump
.LCB944:
	ldr	r3, .L170+48
	cmp	r2, r3
	bne	.L97
	ldrh	r3, [r4, #46]
	strb	r3, [r6, #5]
	b	.L168
.L111:
	ldrh	r3, [r4, #46]
	lsrs	r3, r3, #8
	cmp	r3, #1
	bne	.L118
	movs	r2, #18
	ldrh	r3, [r4, #50]
	cmp	r3, r2
	bhi	.L119
	ldrh	r2, [r4, #50]
	uxth	r2, r2
.L119:
	movs	r3, #0
	ldr	r1, .L170+52
.L166:
	movs	r0, r5
	bl	USB_Write
	b	.L96
.L118:
	ldrh	r3, [r4, #46]
	lsrs	r3, r3, #8
	cmp	r3, #2
	bne	.L120
	movs	r2, #67
	ldrh	r3, [r4, #50]
	cmp	r3, r2
	bhi	.L121
	ldrh	r2, [r4, #50]
	uxth	r2, r2
.L121:
	ldr	r1, .L170+56
	movs	r3, #0
	adds	r1, r1, #4
	b	.L166
.L120:
	ldrh	r3, [r4, #46]
	lsrs	r3, r3, #8
	cmp	r3, #3
	bne	.L97
	ldrh	r3, [r4, #46]
	uxtb	r3, r3
	cmp	r3, #1
	beq	.L124
	cmp	r3, #0
	beq	.L125
	cmp	r3, #2
	bne	.L97
	ldrh	r2, [r4, #50]
	ldr	r1, .L170+60
	uxtb	r2, r2
	b	.L167
.L125:
	ldr	r1, .L170+52
	movs	r2, #4
	adds	r1, r1, #18
	add	r0, sp, #4
	bl	memcpy
	movs	r2, #4
	ldrh	r3, [r4, #50]
	cmp	r3, r2
	bhi	.L127
	ldrh	r2, [r4, #50]
	uxth	r2, r2
.L127:
	movs	r3, #0
	add	r1, sp, #4
	b	.L166
.L124:
	ldrh	r2, [r4, #50]
	ldr	r1, .L170+64
	uxtb	r2, r2
.L167:
	movs	r0, r5
	bl	USB_SendString
	b	.L96
.L109:
	ldrh	r3, [r4, #46]
	movs	r0, r5
	strb	r3, [r6, #4]
	bl	USB_SendZlp
	movs	r3, #160
	movs	r2, #3
	movs	r1, #192
	lsls	r3, r3, #1
	strb	r2, [r5, r3]
	ldr	r3, .L170
	ldr	r0, .L170+4
	ldr	r2, [r3, #68]
	lsls	r1, r1, #22
	ands	r2, r0
	orrs	r2, r1
	str	r2, [r3, #68]
	movs	r2, #70
	adds	r2, r2, #255
	strb	r7, [r5, r2]
	ldr	r2, .L170+68
	movs	r4, #48
	str	r2, [r3, #64]
	movs	r2, #144
	lsls	r2, r2, #1
	strb	r4, [r5, r2]
	ldr	r2, [r3, #52]
	ands	r2, r0
	orrs	r1, r2
	movs	r2, #146
	str	r1, [r3, #52]
	movs	r1, #128
	lsls	r2, r2, #1
	strb	r1, [r5, r2]
	ldr	r2, .L170+72
	str	r2, [r3, #48]
	movs	r2, #176
	lsls	r2, r2, #1
	strb	r7, [r5, r2]
	ldr	r2, [r3, #116]
	ands	r0, r2
	str	r0, [r3, #116]
	movs	r3, #178
	lsls	r3, r3, #1
	strb	r1, [r5, r3]
	b	.L96
.L112:
	adds	r1, r6, #4
	movs	r2, #1
	b	.L166
.L103:
	movs	r2, #80
	strh	r3, [r4, #52]
	ldrh	r3, [r4, #48]
	movs	r0, #15
	ands	r3, r2
	movs	r2, r4
	adds	r2, r2, #54
	strb	r3, [r2]
	ldrh	r3, [r4, #48]
	ands	r3, r0
	strh	r3, [r4, #48]
	ldrh	r3, [r4, #48]
	cmp	r3, #3
	bhi	.L107
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.L129
	ldrh	r3, [r4, #48]
	adds	r3, r3, #8
	lsls	r3, r3, #5
	adds	r3, r5, r3
	ldrb	r3, [r3, #6]
	lsls	r3, r3, #26
.L163:
	movs	r1, r4
	lsrs	r3, r3, #31
	strh	r3, [r4, #52]
	adds	r1, r1, #52
	movs	r3, #0
	b	.L169
.L129:
	ldrh	r3, [r4, #48]
	adds	r3, r3, #8
	lsls	r3, r3, #5
	adds	r3, r5, r3
	ldrb	r3, [r3, #6]
	lsls	r3, r3, #27
	b	.L163
.L107:
	movs	r3, #32
	ldrb	r2, [r1, #6]
	orrs	r3, r2
	strb	r3, [r1, #6]
	b	.L96
.L98:
	movs	r2, #128
	ldrh	r3, [r4, #48]
	movs	r1, #15
	ands	r3, r2
	movs	r2, r4
	adds	r2, r2, #54
	strb	r3, [r2]
	ldrh	r3, [r4, #48]
	ands	r3, r1
	strh	r3, [r4, #48]
	ldrh	r3, [r4, #46]
	cmp	r3, #0
	beq	.LCB1199
	b	.L97	@long jump
.LCB1199:
	ldrh	r3, [r4, #48]
	cmp	r3, #0
	bne	.LCB1203
	b	.L97	@long jump
.LCB1203:
	ldrh	r3, [r4, #48]
	cmp	r3, #3
	bls	.LCB1207
	b	.L97	@long jump
.LCB1207:
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.L132
	movs	r2, #32
	ldrh	r3, [r4, #48]
	adds	r3, r3, #8
	lsls	r3, r3, #5
	adds	r3, r5, r3
.L164:
	strb	r2, [r3, #5]
.L168:
	movs	r0, r5
	bl	USB_SendZlp
	b	.L96
.L132:
	ldrh	r3, [r4, #48]
	movs	r2, #16
	adds	r3, r3, #8
	lsls	r3, r3, #5
	adds	r3, r5, r3
	b	.L164
.L171:
	.align	2
.L170:
	.word	usb_endpoint_table
	.word	-1879048193
	.word	udd_ep_out_cache_buffer
	.word	udd_ep_in_cache_buffer
	.word	-268419073
	.word	.LANCHOR0+44
	.word	.LANCHOR0
	.word	.LANCHOR0+45
	.word	770
	.word	769
	.word	8225
	.word	8609
	.word	8737
	.word	.LANCHOR2
	.word	.LANCHOR1
	.word	.LC27
	.word	.LC25
	.word	udd_ep_out_cache_buffer+64
	.word	udd_ep_in_cache_buffer+64
.L105:
	movs	r2, #128
	ldrh	r3, [r4, #48]
	ands	r3, r2
	movs	r2, r4
	adds	r2, r2, #54
	strb	r3, [r2]
	movs	r2, #15
	ldrh	r3, [r4, #48]
	ands	r3, r2
	strh	r3, [r4, #48]
	ldrh	r3, [r4, #46]
	cmp	r3, #0
	beq	.LCB1280
	b	.L97	@long jump
.LCB1280:
	ldrh	r3, [r4, #48]
	cmp	r3, #0
	bne	.LCB1284
	b	.L97	@long jump
.LCB1284:
	ldrh	r3, [r4, #48]
	cmp	r3, #3
	bls	.LCB1288
	b	.L97	@long jump
.LCB1288:
	movs	r3, r4
	adds	r3, r3, #54
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L135
	ldrh	r3, [r4, #48]
	adds	r3, r3, #8
	lsls	r3, r3, #5
	adds	r3, r5, r3
	ldrb	r3, [r3, #6]
	lsls	r3, r3, #26
	bpl	.L168
	ldrh	r3, [r4, #48]
	adds	r2, r2, #17
	adds	r3, r3, #8
	lsls	r3, r3, #5
	adds	r3, r5, r3
	strb	r2, [r3, #4]
	ldrh	r3, [r4, #48]
	adds	r3, r3, #8
	lsls	r3, r3, #5
	adds	r3, r5, r3
	ldrb	r3, [r3, #7]
	lsls	r3, r3, #25
	bpl	.L168
	ldrh	r3, [r4, #48]
	adds	r2, r2, #32
	adds	r3, r3, #8
	lsls	r3, r3, #5
	adds	r3, r5, r3
	strb	r2, [r3, #7]
	ldrh	r3, [r4, #48]
	subs	r2, r2, #62
	adds	r3, r3, #8
	lsls	r3, r3, #5
	adds	r3, r5, r3
.L165:
	strb	r2, [r3, #4]
	b	.L168
.L135:
	ldrh	r3, [r4, #48]
	adds	r3, r3, #8
	lsls	r3, r3, #5
	adds	r3, r5, r3
	ldrb	r3, [r3, #6]
	lsls	r3, r3, #27
	bmi	.LCB1354
	b	.L168	@long jump
.LCB1354:
	movs	r2, #16
	ldrh	r3, [r4, #48]
	adds	r3, r3, #8
	lsls	r3, r3, #5
	adds	r3, r5, r3
	strb	r2, [r3, #4]
	ldrh	r3, [r4, #48]
	adds	r3, r3, #8
	lsls	r3, r3, #5
	adds	r3, r5, r3
	ldrb	r3, [r3, #7]
	lsls	r3, r3, #26
	bmi	.LCB1372
	b	.L168	@long jump
.LCB1372:
	ldrh	r3, [r4, #48]
	adds	r2, r2, r2
	adds	r3, r3, #8
	lsls	r3, r3, #5
	adds	r3, r5, r3
	strb	r2, [r3, #7]
	ldrh	r3, [r4, #48]
	subs	r2, r2, #31
	adds	r3, r3, #8
	lsls	r3, r3, #5
	adds	r3, r5, r3
	b	.L165
.L116:
	movs	r2, #8
	ldrh	r3, [r4, #50]
	cmp	r3, r2
	bhi	.L139
	ldrh	r2, [r4, #50]
	uxth	r2, r2
.L139:
	ldr	r1, .L172
	movs	r3, #0
	adds	r1, r1, #72
	b	.L166
.L173:
	.align	2
.L172:
	.word	.LANCHOR1
	.size	USB_IsConfigured, .-USB_IsConfigured
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	cdc_read_buf_xmd, %function
cdc_read_buf_xmd:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	ldr	r7, .L179
	movs	r6, r0
	movs	r0, r7
	adds	r0, r0, #32
	movs	r5, r1
	bl	USB_IsConfigured
	movs	r4, r5
	cmp	r0, #0
	bne	.L176
	movs	r5, r0
	b	.L175
.L177:
	movs	r2, r4
	movs	r1, r6
	ldr	r0, [r7, #32]
	bl	USB_Read
	subs	r4, r4, r0
	adds	r6, r6, r0
.L176:
	cmp	r4, #0
	bne	.L177
.L175:
	movs	r0, r5
	@ sp needed
	pop	{r3, r4, r5, r6, r7, pc}
.L180:
	.align	2
.L179:
	.word	.LANCHOR0
	.size	cdc_read_buf_xmd, .-cdc_read_buf_xmd
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	cdc_read_buf, %function
cdc_read_buf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L185
	movs	r5, r0
	movs	r0, r4
	adds	r0, r0, #32
	movs	r6, r1
	bl	USB_IsConfigured
	movs	r3, r0
	movs	r0, #0
	cmp	r3, r0
	beq	.L181
	movs	r2, r6
	movs	r1, r5
	ldr	r0, [r4, #32]
	bl	USB_Read
.L181:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L186:
	.align	2
.L185:
	.word	.LANCHOR0
	.size	cdc_read_buf, .-cdc_read_buf
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	cdc_is_rx_ready, %function
cdc_is_rx_ready:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L191
	movs	r0, r4
	adds	r0, r0, #32
	bl	USB_IsConfigured
	movs	r3, r0
	movs	r0, #0
	cmp	r3, r0
	beq	.L188
	movs	r3, #72
	ldr	r2, [r4, #32]
	adds	r3, r3, #255
	ldrb	r0, [r2, r3]
	lsls	r0, r0, #31
	lsrs	r0, r0, #31
.L188:
	@ sp needed
	pop	{r4, pc}
.L192:
	.align	2
.L191:
	.word	.LANCHOR0
	.size	cdc_is_rx_ready, .-cdc_is_rx_ready
	.section	.text.startup,"ax",%progbits
	.align	1
	.global	main
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	main, %function
main:
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	movs	r2, #2
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L337
	sub	sp, sp, #60
	ldr	r3, [r4, #52]
	add	r7, sp, #0
	bics	r3, r2
	str	r3, [r4, #52]
.L194:
	ldr	r3, [r4, #12]
	lsls	r3, r3, #20
	bpl	.L194
	ldr	r3, .L337+4
	str	r3, [r4, #52]
	movs	r3, #2
	ldr	r2, [r4, #52]
	orrs	r3, r2
	str	r3, [r4, #52]
.L195:
	ldr	r3, [r4, #12]
	lsls	r3, r3, #22
	bpl	.L195
.L196:
	ldr	r3, [r4, #12]
	lsls	r3, r3, #21
	bmi	.L196
	movs	r2, #2
	ldr	r3, [r4, #52]
	bics	r3, r2
	str	r3, [r4, #52]
.L197:
	ldr	r3, [r4, #12]
	lsls	r3, r3, #20
	bpl	.L197
	movs	r3, #8
	ldr	r2, [r4, #52]
	orrs	r3, r2
	str	r3, [r4, #52]
	movs	r3, #2
	ldr	r2, [r4, #52]
	orrs	r3, r2
	ldr	r2, .L337+8
	str	r3, [r4, #52]
	ldr	r3, [r2]
	adds	r3, r3, #1
	beq	.L199
	ldr	r3, .L337+12
	ldr	r1, .L337+16
	uxtb	r0, r2
	str	r1, [r3, #56]
	cmp	r0, #0
	bne	.L199
	ldr	r3, .L337+20
	ldr	r1, .L337+24
	ldrb	r3, [r3]
	lsls	r3, r3, #31
	lsrs	r3, r3, #31
	beq	.L201
	str	r0, [r1]
.L202:
	ldr	r3, [r2]
	.syntax divided
@ 190 "/home/leigh/.arduino15/packages/arduino/tools/CMSIS/4.5.0/CMSIS/Include/cmsis_gcc.h" 1
	MSR msp, r3

@ 0 "" 2
	.thumb
	.syntax unified
	movs	r3, #255
	movs	r1, r2
	bics	r1, r3
	ldr	r3, .L337+28
	str	r1, [r3, #8]
	ldr	r3, [r2, #4]
	.syntax divided
@ 46 "main.c" 1
	bx r3
@ 0 "" 2
	.thumb
	.syntax unified
	b	.L199
.L338:
	.align	2
.L337:
	.word	1073743872
	.word	3145732
	.word	__sketch_vectors_ptr
	.word	.LANCHOR0
	.word	__sketch_vectors_ptr+4
	.word	1073742904
	.word	536879100
	.word	-536810240
.L201:
	ldr	r5, [r1]
	ldr	r0, .L339
	cmp	r5, r0
	beq	.LCB1642
	b	.L203	@long jump
.LCB1642:
	str	r3, [r1]
.L199:
	movs	r1, #30
	movs	r6, #2
	ldr	r2, .L339+4
	ldr	r3, [r2, #4]
	bics	r3, r1
	orrs	r3, r6
	str	r3, [r2, #4]
	ldr	r3, .L339+8
	strh	r3, [r4, #20]
	ldrh	r3, [r4, #20]
	orrs	r3, r6
	strh	r3, [r4, #20]
	str	r2, [r7, #12]
.L205:
	ldr	r3, [r4, #12]
	tst	r3, r6
	beq	.L205
	movs	r3, #1
	ldr	r5, .L339+12
	str	r3, [r5, #8]
	bl	gclk_sync
	ldr	r3, .L339+16
	str	r3, [r5, #4]
	bl	gclk_sync
	movs	r3, #130
	lsls	r3, r3, #7
	strh	r3, [r5, #2]
	bl	gclk_sync
	movs	r2, #128
	ldrh	r3, [r4, #36]
	bics	r3, r2
	strh	r3, [r4, #36]
	bl	dfll_sync
	ldr	r3, .L339+20
	str	r3, [r4, #44]
	bl	dfll_sync
	ldrh	r2, [r4, #36]
	ldr	r3, .L339+24
	orrs	r3, r2
	strh	r3, [r4, #36]
	bl	dfll_sync
	ldrh	r3, [r4, #36]
	orrs	r6, r3
	movs	r3, #128
	strh	r6, [r4, #36]
	movs	r1, r3
	subs	r3, r3, #64
.L206:
	ldr	r2, [r4, #12]
	tst	r2, r1
	beq	.L206
	ldr	r2, [r4, #12]
	tst	r2, r3
	beq	.L206
	movs	r4, #0
	bl	dfll_sync
	str	r4, [r5, #8]
	bl	gclk_sync
	ldr	r3, .L339+28
	str	r3, [r5, #4]
	bl	gclk_sync
	movs	r1, #192
	ldr	r3, .L339+32
	ldr	r2, .L339+36
	ldr	r0, .L339+40
	str	r2, [r3, #4]
	ldr	r2, [r0, #32]
	lsls	r1, r1, #24
	lsls	r2, r2, #8
	lsrs	r2, r2, #8
	orrs	r2, r1
	str	r2, [r0, #32]
	movs	r2, #7
	str	r4, [r3, #8]
	str	r2, [r3]
	.syntax divided
@ 60 "/home/leigh/.arduino15/packages/arduino/tools/CMSIS/4.5.0/CMSIS/Include/cmsis_gcc.h" 1
	cpsie i
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r1, .L339+44
	movs	r6, #1
	ldr	r4, [r1, #28]
	adds	r2, r2, #25
	orrs	r2, r4
	str	r2, [r1, #28]
	movs	r1, #15
	ldr	r4, .L339+48
	ldrb	r2, [r4]
	orrs	r2, r6
	strb	r2, [r4]
	ldr	r2, .L339+52
	ldrb	r4, [r2]
	bics	r4, r1
	strb	r4, [r2]
	movs	r4, #6
	ldrb	r1, [r2]
	orrs	r4, r1
	strb	r4, [r2]
	ldr	r4, .L339+56
	ldrb	r1, [r4]
	orrs	r1, r6
	strb	r1, [r4]
	movs	r4, #15
	ldrb	r1, [r2]
	ands	r4, r1
	movs	r1, #96
	strb	r4, [r2]
	ldrb	r4, [r2]
	orrs	r1, r4
	strb	r1, [r2]
	movs	r4, r3
	ldr	r2, .L339+60
	ldr	r3, .L339+36
	strh	r2, [r5, #2]
	str	r0, [r7, #8]
	str	r3, [r7]
.L208:
	ldrb	r3, [r5, #1]
	sxtb	r3, r3
	cmp	r3, #0
	blt	.L208
	movs	r3, #1
	ldr	r6, .L339+64
	ldrb	r2, [r6]
	orrs	r3, r2
	strb	r3, [r6]
.L209:
	ldrb	r3, [r6, #2]
	lsls	r3, r3, #31
	bmi	.L209
	movs	r1, #31
	ldr	r2, .L339+68
	ldr	r3, [r2]
	lsrs	r3, r3, #13
	ands	r3, r1
	cmp	r3, r1
	bne	.L210
	movs	r3, #5
.L210:
	ldrh	r0, [r6, #40]
	ldr	r5, .L339+72
	ands	r3, r1
	lsls	r3, r3, #6
	ands	r0, r5
	orrs	r3, r0
	strh	r3, [r6, #40]
	ldr	r3, [r2]
	lsrs	r3, r3, #18
	ands	r3, r1
	cmp	r3, #31
	bne	.L211
	subs	r3, r3, #2
.L211:
	movs	r0, #31
	ldrh	r1, [r6, #40]
	ands	r3, r0
	bics	r1, r0
	orrs	r3, r1
	strh	r3, [r6, #40]
	ldr	r3, [r2]
	movs	r2, #7
	lsrs	r3, r3, #23
	ands	r3, r2
	str	r2, [r7, #4]
	cmp	r3, r2
	bne	.L212
	movs	r3, #3
.L212:
	ldr	r1, [r7, #4]
	ldrh	r2, [r6, #40]
	ands	r3, r1
	ldr	r1, .L339+76
	lsls	r3, r3, #12
	ands	r2, r1
	orrs	r3, r2
	movs	r2, #127
	strh	r3, [r6, #40]
	ldrb	r3, [r6]
	ldr	r0, .L339+80
	ands	r3, r2
	strb	r3, [r6]
	movs	r3, #4
	ldrb	r2, [r6]
	movs	r1, #0
	orrs	r3, r2
	movs	r2, #12
	strb	r3, [r6]
	str	r0, [r6, #36]
	ldrh	r3, [r6, #8]
	bics	r3, r2
	strh	r3, [r6, #8]
	ldrh	r3, [r6, #8]
	subs	r2, r2, #11
	bics	r3, r2
	strh	r3, [r6, #8]
	adds	r2, r2, #127
	bl	memset
	movs	r2, #0
	ldr	r5, .L339+84
	ldr	r3, .L339+88
	str	r6, [r5, #32]
	str	r3, [r5, #40]
	movs	r3, #2
	strh	r2, [r5, #36]
	ldrb	r1, [r6]
	ldr	r0, .L339+92
	orrs	r3, r1
	movs	r1, #128
	strb	r3, [r6]
	ldr	r3, .L339+96
	lsls	r1, r1, #10
	str	r1, [r3, #8]
	movs	r1, #8
	str	r1, [r0]
	ldr	r0, .L339+100
	movs	r6, #1
	str	r1, [r0]
	movs	r1, #128
	lsls	r1, r1, #20
	str	r1, [r3, #8]
	str	r1, [r3, #24]
	movs	r1, #192
	ldr	r3, [r7]
	lsls	r1, r1, #24
	str	r3, [r4, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #32]
	lsls	r3, r3, #8
	lsrs	r3, r3, #8
	orrs	r3, r1
	ldr	r1, [r7, #8]
	str	r3, [r1, #32]
	ldr	r3, [r7, #4]
	str	r2, [r4, #8]
	str	r3, [r4]
	movs	r4, r5
	adds	r4, r4, #60
.L214:
	movs	r0, r5
	ldr	r3, [r5, #40]
	adds	r0, r0, #32
	blx	r3
	cmp	r0, #0
	beq	.L213
	strb	r6, [r4]
.L213:
	ldrb	r3, [r4]
	cmp	r3, #0
	beq	.L214
	ldr	r3, .L339+104
	movs	r2, #16
	adds	r3, r3, #24
	str	r3, [r5, #20]
	movs	r3, #8
	adds	r2, r7, r2
	adds	r1, r2, r3
	movs	r2, r1
	ldr	r3, .L339+104
	adds	r3, r3, #52
	ldmia	r3!, {r0, r4, r6}
	stmia	r2!, {r0, r4, r6}
	ldmia	r3!, {r0, r4, r6}
	stmia	r2!, {r0, r4, r6}
	ldmia	r3!, {r0, r4}
	stmia	r2!, {r0, r4}
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #13
	lsrs	r3, r3, #29
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	str	r3, [r5, #12]
	ldr	r2, [r2, #8]
	uxth	r2, r2
	muls	r3, r2
	movs	r2, r5
	str	r3, [r5, #8]
	ldr	r3, [r7, #12]
	adds	r2, r2, #61
	ldrh	r3, [r3, #24]
	lsls	r3, r3, #23
	lsrs	r3, r3, #31
	strb	r3, [r2]
	movs	r3, #0
	str	r3, [r5, #64]
	movs	r3, r5
	movs	r2, #122
	adds	r3, r3, #68
	strb	r2, [r3]
.L273:
	ldr	r3, [r5, #20]
	movs	r1, #64
	ldr	r3, [r3, #16]
	ldr	r0, .L339+108
	blx	r3
	cmp	r0, #0
	beq	.L215
	movs	r2, #8
	ldr	r3, .L339+112
	str	r2, [r3]
	movs	r3, #100
	strh	r3, [r5, #26]
.L215:
	ldr	r3, .L339+116
	ldr	r2, .L339+108
	str	r0, [r3, #8]
	str	r2, [r3, #12]
	movs	r3, #0
	ldr	r2, .L339+116
	str	r3, [r2, #16]
.L216:
	ldr	r4, .L339+116
	ldr	r3, [r4, #16]
	ldr	r2, [r4, #8]
	cmp	r3, r2
	bcs	.L273
	ldr	r3, [r4, #12]
	ldrb	r3, [r3]
	cmp	r3, #255
	beq	.L218
	cmp	r3, #35
	beq	.LCB2021
	b	.L219	@long jump
.LCB2021:
	ldrb	r3, [r5, #16]
	cmp	r3, #0
	beq	.L220
	ldr	r3, [r5, #20]
	movs	r2, #2
	ldr	r1, .L339+120
	ldr	r0, [r3, #12]
	bl	sam_ba_putdata.isra.0
.L220:
	movs	r3, r5
	adds	r3, r3, #68
	ldrb	r3, [r3]
	cmp	r3, #83
	beq	.LCB2037
	b	.L221	@long jump
.LCB2037:
	ldr	r3, [r4, #8]
	ldr	r6, [r4, #16]
	cmp	r3, r6
	bls	.L222
	ldr	r1, [r4, #12]
	ldr	r2, [r4, #20]
	adds	r1, r1, #1
	adds	r6, r6, #1
	str	r1, [r7, #8]
	str	r1, [r4, #12]
	str	r6, [r4, #16]
	subs	r3, r3, r6
	cmp	r3, r2
	bcs	.L223
	str	r3, [r4, #24]
.L224:
	ldr	r3, [r4, #24]
	ldr	r1, [r7, #8]
	movs	r2, r3
	ldr	r0, [r5, #64]
	str	r3, [r7, #12]
	bl	memcpy
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #12]
	mov	ip, r2
	adds	r6, r6, r3
	ldr	r3, [r7, #8]
	str	r6, [r4, #16]
	add	r3, r3, ip
	str	r3, [r4, #12]
	ldrb	r3, [r7, #12]
	strb	r3, [r4, #28]
.L222:
	ldr	r3, .L339+116
	ldr	r2, .L339+116
	ldr	r3, [r3, #16]
	ldr	r1, [r2, #20]
	subs	r3, r3, #1
	str	r3, [r2, #16]
	ldr	r3, [r2, #12]
	str	r3, [r7, #12]
	subs	r3, r3, #1
	str	r3, [r2, #12]
	ldrb	r3, [r2, #28]
	cmp	r3, r1
	bcs	.L226
	subs	r1, r1, r3
	ldr	r3, [r5, #20]
	ldr	r0, [r5, #64]
	ldr	r3, [r3, #24]
	blx	r3
	cmp	r0, #0
	beq	.L226
	movs	r2, #8
	ldr	r3, .L339+112
	str	r2, [r3]
	movs	r3, #100
	strh	r3, [r5, #26]
.L226:
	.syntax divided
@ 347 "sam_ba_monitor.c" 1
	nop
@ 0 "" 2
	.thumb
	.syntax unified
.L228:
	movs	r3, r5
	movs	r2, #122
	adds	r3, r3, #68
	strb	r2, [r3]
	movs	r2, #0
	ldr	r3, .L339+116
	str	r2, [r3, #20]
	ldrb	r3, [r5, #16]
	cmp	r3, r2
	beq	.L218
	ldr	r3, [r5, #20]
	adds	r2, r2, #1
	ldr	r1, .L339+124
	ldr	r0, [r3, #12]
	bl	sam_ba_putdata.isra.0
.L218:
	ldr	r3, .L339+116
	ldr	r2, [r3, #16]
	adds	r2, r2, #1
	str	r2, [r3, #16]
	ldr	r2, [r3, #12]
	adds	r2, r2, #1
	str	r2, [r3, #12]
	b	.L216
.L203:
	ldr	r3, .L339+128
	str	r0, [r1]
.L204:
	subs	r3, r3, #1
	cmp	r3, #0
	bne	.L204
	str	r3, [r1]
	b	.L202
.L223:
	str	r2, [r4, #24]
	b	.L224
.L340:
	.align	2
.L339:
	.word	125010229
	.word	1090535424
	.word	1548
	.word	1073744896
	.word	66817
	.word	2113865144
	.word	2564
	.word	198400
	.word	-536813552
	.word	999
	.word	-536810240
	.word	1073742848
	.word	1090536536
	.word	1090536508
	.word	1090536537
	.word	16390
	.word	1090539520
	.word	8413220
	.word	-1985
	.word	-28673
	.word	usb_endpoint_table
	.word	.LANCHOR0
	.word	USB_IsConfigured
	.word	1090536584
	.word	1090536448
	.word	1090536600
	.word	.LANCHOR2
	.word	.LANCHOR0+69
	.word	1090536596
	.word	.LANCHOR3
	.word	.LC51
	.word	.LC68
	.word	125000
.L221:
	cmp	r3, #82
	bne	.L229
	movs	r3, r5
	adds	r3, r3, #61
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L230
	ldr	r3, .L341
	ldr	r2, [r5, #64]
	cmp	r2, r3
	bhi	.L230
	ldr	r3, .L341+4
	str	r3, [r5, #64]
.L230:
	ldr	r3, [r5, #20]
	ldr	r2, [r4, #20]
	ldr	r1, [r5, #64]
	ldr	r0, [r3, #20]
	bl	sam_ba_putdata_xmd.isra.2
	b	.L228
.L229:
	cmp	r3, #79
	bne	.L231
	ldr	r3, [r4, #20]
	ldr	r2, [r5, #64]
	strb	r3, [r2]
	b	.L228
.L231:
	cmp	r3, #72
	bne	.L232
	ldr	r3, [r4, #20]
	ldr	r2, [r5, #64]
	strh	r3, [r2]
	b	.L228
.L232:
	cmp	r3, #87
	bne	.L233
	ldr	r3, [r5, #64]
	ldr	r2, [r4, #20]
	str	r2, [r3]
	b	.L228
.L233:
	movs	r2, r5
	adds	r2, r2, #61
	ldrb	r2, [r2]
	cmp	r3, #111
	bne	.L234
	cmp	r2, #0
	beq	.L235
	ldr	r3, [r5, #64]
	ldr	r2, .L341+8
	subs	r3, r3, #4
	cmp	r3, r2
	bhi	.L235
	adds	r4, r4, #20
	str	r4, [r5, #64]
.L235:
	movs	r1, #1
	ldr	r0, [r5, #64]
.L333:
	bl	sam_ba_putdata_term
	b	.L228
.L234:
	cmp	r3, #104
	bne	.L236
	ldr	r1, [r5, #64]
	cmp	r2, #0
	beq	.L237
	ldr	r2, .L341+8
	subs	r3, r1, #4
	cmp	r3, r2
	bhi	.L237
	movs	r3, #0
.L331:
	movs	r0, r4
	str	r3, [r4, #20]
	adds	r0, r0, #20
	movs	r1, #2
	b	.L333
.L237:
	ldrh	r3, [r1]
	b	.L331
.L236:
	cmp	r3, #119
	bne	.L239
	ldr	r1, [r5, #64]
	cmp	r2, #0
	beq	.L240
	ldr	r2, .L341+8
	subs	r3, r1, #4
	cmp	r3, r2
	bhi	.L240
	movs	r3, #0
.L332:
	movs	r0, r4
	str	r3, [r4, #20]
	adds	r0, r0, #20
	movs	r1, #4
	b	.L333
.L240:
	ldr	r3, [r1]
	b	.L332
.L239:
	cmp	r2, #0
	bne	.L242
	cmp	r3, #71
	bne	.L242
	ldr	r3, .L341+12
	ldr	r3, [r3, #20]
	.syntax divided
@ 71 "/home/leigh/.arduino15/packages/arduino/tools/CMSIS/4.5.0/CMSIS/Include/cmsis_gcc.h" 1
	cpsid i
@ 0 "" 2
@ 177 "/home/leigh/.arduino15/packages/arduino/tools/CMSIS/4.5.0/CMSIS/Include/cmsis_gcc.h" 1
	MRS r2, msp

@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r1, .L341+12
	str	r2, [r1, #32]
	ldr	r2, [r3]
	.syntax divided
@ 190 "/home/leigh/.arduino15/packages/arduino/tools/CMSIS/4.5.0/CMSIS/Include/cmsis_gcc.h" 1
	MSR msp, r2

@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r3, [r3, #4]
	.syntax divided
@ 253 "sam_ba_monitor.c" 1
	bx r3
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r3, [r1, #32]
	.syntax divided
@ 190 "/home/leigh/.arduino15/packages/arduino/tools/CMSIS/4.5.0/CMSIS/Include/cmsis_gcc.h" 1
	MSR msp, r3

@ 0 "" 2
@ 60 "/home/leigh/.arduino15/packages/arduino/tools/CMSIS/4.5.0/CMSIS/Include/cmsis_gcc.h" 1
	cpsie i
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r3, .L341+12
	adds	r3, r3, #5
	ldrb	r3, [r3, #31]
	cmp	r3, #0
	bne	.LCB2346
	b	.L228	@long jump
.LCB2346:
	ldr	r3, [r5, #20]
	movs	r0, #6
	ldr	r3, [r3]
	blx	r3
	b	.L228
.L242:
	cmp	r3, #84
	bne	.L244
	movs	r2, #2
	subs	r3, r3, #83
	strb	r3, [r5, #16]
	ldr	r1, .L341+16
	ldr	r3, [r5, #20]
.L334:
	ldr	r0, [r3, #12]
	bl	sam_ba_putdata.isra.0
	b	.L228
.L244:
	cmp	r3, #78
	bne	.L245
	ldrb	r3, [r5, #16]
	cmp	r3, #0
	bne	.L246
	ldr	r3, [r5, #20]
	movs	r2, #2
	ldr	r1, .L341+16
	ldr	r0, [r3, #12]
	bl	sam_ba_putdata.isra.0
.L246:
	movs	r3, #0
	strb	r3, [r5, #16]
	b	.L228
.L245:
	cmp	r3, #86
	bne	.L247
	ldr	r3, [r5, #20]
	movs	r2, #1
	ldr	r1, .L341+20
	ldr	r0, [r3, #12]
	bl	sam_ba_putdata.isra.0
	ldr	r3, [r5, #20]
	ldr	r1, .L341+24
	movs	r2, #3
	adds	r1, r1, #84
	ldr	r0, [r3, #12]
	bl	sam_ba_putdata.isra.0
	ldr	r3, [r5, #20]
	movs	r2, #1
	ldr	r1, .L341+28
	ldr	r0, [r3, #12]
	bl	sam_ba_putdata.isra.0
	ldr	r3, [r5, #20]
	ldr	r1, .L341+24
	movs	r2, #14
	adds	r1, r1, #88
	ldr	r0, [r3, #12]
	bl	sam_ba_putdata.isra.0
	ldr	r1, .L341+32
	ldr	r3, [r5, #20]
	str	r1, [r4, #12]
	movs	r2, #23
	b	.L334
.L247:
	cmp	r3, #88
	bne	.L248
	cmp	r2, #0
	bne	.L277
	ldr	r0, [r4, #20]
.L249:
	bl	eraseFlash
	ldr	r3, [r5, #20]
	movs	r2, #3
	ldr	r1, .L341+36
	b	.L334
.L277:
	movs	r0, #128
	lsls	r0, r0, #6
	b	.L249
.L248:
	cmp	r3, #89
	bne	.L250
	ldr	r3, [r4, #20]
	ldr	r6, [r5, #64]
	cmp	r3, #0
	bne	.L251
	str	r6, [r4, #40]
.L252:
	ldr	r3, [r5, #20]
	movs	r2, #3
	ldr	r1, .L341+40
	b	.L334
.L251:
	cmp	r2, #0
	beq	.L253
	movs	r0, #128
	ldr	r3, [r5, #4]
	lsls	r0, r0, #6
	cmp	r3, r0
	beq	.L253
	bl	eraseFlash
.L253:
	movs	r0, #128
	ldr	r3, .L341+12
	ldr	r3, [r3, #20]
	str	r3, [r7, #12]
	lsrs	r2, r3, #2
	ldr	r3, .L341+12
	ldr	r3, [r3, #40]
	mov	ip, r3
	ldr	r3, .L341+44
	ldr	r1, [r3, #4]
	bics	r1, r0
	str	r1, [r3, #4]
	ldr	r1, [r5, #12]
	lsrs	r1, r1, #2
	str	r1, [r7, #8]
.L254:
	cmp	r2, #0
	beq	.L252
	ldr	r1, .L341+48
	strh	r1, [r3]
.L255:
	ldrb	r1, [r3, #20]
	lsls	r1, r1, #31
	bpl	.L255
	mov	r1, ip
	movs	r4, r6
	str	r1, [r7, #12]
	movs	r1, #0
.L256:
	ldr	r0, [r7, #12]
	movs	r6, r4
	mov	ip, r0
	ldr	r0, [r7, #8]
	cmp	r1, r0
	beq	.L257
	cmp	r1, r2
	bne	.L258
.L257:
	ldr	r0, .L341+52
	strh	r0, [r3]
.L259:
	ldrb	r0, [r3, #20]
	lsls	r0, r0, #31
	bpl	.L259
	subs	r2, r2, r1
	b	.L254
.L258:
	ldr	r0, [r7, #12]
	adds	r1, r1, #1
	ldmia	r0!, {r6}
	str	r0, [r7, #12]
	stmia	r4!, {r6}
	b	.L256
.L250:
	cmp	r3, #90
	beq	.LCB2542
	b	.L228	@long jump
.LCB2542:
	ldr	r1, [r4, #20]
	movs	r4, #0
	ldr	r3, [r5, #64]
	ldr	r0, .L341+56
	adds	r1, r3, r1
.L262:
	cmp	r1, r3
	bne	.L263
	ldr	r3, [r5, #20]
	movs	r2, #1
	ldr	r0, [r3, #12]
	ldr	r1, .L341+60
	bl	sam_ba_putdata.isra.0
	movs	r3, #7
.L266:
	movs	r2, #15
	ands	r2, r4
	uxtb	r0, r2
	movs	r1, r0
	lsrs	r4, r4, #4
	adds	r1, r1, #48
	cmp	r2, #9
	ble	.L265
	adds	r1, r1, #7
.L265:
	movs	r2, #16
	adds	r2, r7, r2
	strb	r1, [r2, r3]
	subs	r3, r3, #1
	bcs	.L266
	movs	r1, #16
	ldr	r3, [r5, #20]
	movs	r2, #8
	adds	r1, r7, r1
	ldr	r0, [r3, #12]
	bl	sam_ba_putdata.isra.0
	ldr	r3, [r5, #20]
	movs	r2, #3
	ldr	r1, .L341+64
	b	.L334
.L263:
	ldrb	r6, [r3]
	lsrs	r2, r4, #8
	eors	r2, r6
	lsls	r2, r2, #1
	ldrh	r2, [r2, r0]
	lsls	r4, r4, #8
	eors	r4, r2
	uxth	r4, r4
	adds	r3, r3, #1
	b	.L262
.L219:
	movs	r2, r3
	subs	r2, r2, #48
	uxtb	r1, r2
	cmp	r1, #9
	bhi	.L268
	ldr	r3, [r4, #20]
	lsls	r3, r3, #4
.L335:
	orrs	r3, r2
	str	r3, [r4, #20]
	b	.L218
.L268:
	movs	r2, r3
	subs	r2, r2, #65
	cmp	r2, #5
	bhi	.L269
	ldr	r2, [r4, #20]
	subs	r3, r3, #55
	lsls	r2, r2, #4
	b	.L335
.L269:
	movs	r2, r3
	subs	r2, r2, #97
	cmp	r2, #5
	bhi	.L270
	ldr	r2, [r4, #20]
	subs	r3, r3, #87
	lsls	r2, r2, #4
	b	.L335
.L270:
	movs	r2, #0
	cmp	r3, #44
	bne	.L271
	ldr	r3, [r4, #20]
	str	r3, [r5, #64]
.L336:
	str	r2, [r4, #20]
	b	.L218
.L271:
	movs	r1, r5
	adds	r1, r1, #68
	strb	r3, [r1]
	b	.L336
.L342:
	.align	2
.L341:
	.word	536870911
	.word	536891392
	.word	536870907
	.word	.LANCHOR3
	.word	.LC51
	.word	.LC53
	.word	.LANCHOR2
	.word	.LC55
	.word	.LC57
	.word	.LC59
	.word	.LC61
	.word	1090535424
	.word	-23228
	.word	-23292
	.word	crc16Table
	.word	.LC64
	.word	.LC66
	.size	main, .-main
	.text
	.align	1
	.global	Reset_Handler
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Reset_Handler, %function
Reset_Handler:
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L355
	ldr	r0, .L355+4
	push	{r4, r5, r6, lr}
	cmp	r2, r0
	bne	.L344
.L348:
	ldr	r2, .L355+8
	ldr	r3, .L355+12
	movs	r1, #0
	cmp	r3, r2
	bne	.L345
.L346:
	bl	main
.L344:
	ldr	r4, .L355+16
	movs	r3, #0
	cmp	r4, r2
	beq	.L348
.L347:
	adds	r1, r2, r3
	cmp	r0, r1
	bls	.L348
	ldr	r5, [r4, r3]
	adds	r3, r3, #4
	str	r5, [r1]
	b	.L347
.L350:
	stmia	r3!, {r1}
.L345:
	cmp	r3, r2
	bcc	.L350
	b	.L346
.L356:
	.align	2
.L355:
	.word	__data_start__
	.word	__data_end__
	.word	__bss_end__
	.word	__bss_start__
	.word	__etext
	.size	Reset_Handler, .-Reset_Handler
	.global	exception_table
	.section	.rodata
	.align	2
	.set	.LANCHOR2,. + 0
	.type	devDescriptor, %object
	.size	devDescriptor, 18
devDescriptor:
	.byte	18
	.byte	1
	.byte	0
	.byte	2
	.byte	2
	.byte	0
	.byte	0
	.byte	64
	.byte	65
	.byte	35
	.byte	77
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.byte	2
	.byte	0
	.byte	1
.LC24:
	.short	772
	.short	1033
	.space	2
	.type	usbcdc_if, %object
	.size	usbcdc_if, 28
usbcdc_if:
	.word	cdc_putc
	.word	cdc_getc
	.word	cdc_is_rx_ready
	.word	cdc_write_buf
	.word	cdc_read_buf
	.word	cdc_write_buf
	.word	cdc_read_buf_xmd
.LC49:
	.word	8
	.word	16
	.word	32
	.word	64
	.word	128
	.word	256
	.word	512
	.word	1024
	.type	RomBOOT_Version, %object
	.size	RomBOOT_Version, 4
RomBOOT_Version:
	.ascii	"2.0\000"
	.type	RomBOOT_ExtendedCapabilities, %object
	.size	RomBOOT_ExtendedCapabilities, 15
RomBOOT_ExtendedCapabilities:
	.ascii	"[Arduino:XYZP]\000"
	.space	1
	.type	crc16Table, %object
	.size	crc16Table, 512
crc16Table:
	.short	0
	.short	4129
	.short	8258
	.short	12387
	.short	16516
	.short	20645
	.short	24774
	.short	28903
	.short	-32504
	.short	-28375
	.short	-24246
	.short	-20117
	.short	-15988
	.short	-11859
	.short	-7730
	.short	-3601
	.short	4657
	.short	528
	.short	12915
	.short	8786
	.short	21173
	.short	17044
	.short	29431
	.short	25302
	.short	-27847
	.short	-31976
	.short	-19589
	.short	-23718
	.short	-11331
	.short	-15460
	.short	-3073
	.short	-7202
	.short	9314
	.short	13379
	.short	1056
	.short	5121
	.short	25830
	.short	29895
	.short	17572
	.short	21637
	.short	-23190
	.short	-19125
	.short	-31448
	.short	-27383
	.short	-6674
	.short	-2609
	.short	-14932
	.short	-10867
	.short	13907
	.short	9842
	.short	5649
	.short	1584
	.short	30423
	.short	26358
	.short	22165
	.short	18100
	.short	-18597
	.short	-22662
	.short	-26855
	.short	-30920
	.short	-2081
	.short	-6146
	.short	-10339
	.short	-14404
	.short	18628
	.short	22757
	.short	26758
	.short	30887
	.short	2112
	.short	6241
	.short	10242
	.short	14371
	.short	-13876
	.short	-9747
	.short	-5746
	.short	-1617
	.short	-30392
	.short	-26263
	.short	-22262
	.short	-18133
	.short	23285
	.short	19156
	.short	31415
	.short	27286
	.short	6769
	.short	2640
	.short	14899
	.short	10770
	.short	-9219
	.short	-13348
	.short	-1089
	.short	-5218
	.short	-25735
	.short	-29864
	.short	-17605
	.short	-21734
	.short	27814
	.short	31879
	.short	19684
	.short	23749
	.short	11298
	.short	15363
	.short	3168
	.short	7233
	.short	-4690
	.short	-625
	.short	-12820
	.short	-8755
	.short	-21206
	.short	-17141
	.short	-29336
	.short	-25271
	.short	32407
	.short	28342
	.short	24277
	.short	20212
	.short	15891
	.short	11826
	.short	7761
	.short	3696
	.short	-97
	.short	-4162
	.short	-8227
	.short	-12292
	.short	-16613
	.short	-20678
	.short	-24743
	.short	-28808
	.short	-28280
	.short	-32343
	.short	-20022
	.short	-24085
	.short	-12020
	.short	-16083
	.short	-3762
	.short	-7825
	.short	4224
	.short	161
	.short	12482
	.short	8419
	.short	20484
	.short	16421
	.short	28742
	.short	24679
	.short	-31815
	.short	-27752
	.short	-23557
	.short	-19494
	.short	-15555
	.short	-11492
	.short	-7297
	.short	-3234
	.short	689
	.short	4752
	.short	8947
	.short	13010
	.short	16949
	.short	21012
	.short	25207
	.short	29270
	.short	-18966
	.short	-23093
	.short	-27224
	.short	-31351
	.short	-2706
	.short	-6833
	.short	-10964
	.short	-15091
	.short	13538
	.short	9411
	.short	5280
	.short	1153
	.short	29798
	.short	25671
	.short	21540
	.short	17413
	.short	-22565
	.short	-18438
	.short	-30823
	.short	-26696
	.short	-6305
	.short	-2178
	.short	-14563
	.short	-10436
	.short	9939
	.short	14066
	.short	1681
	.short	5808
	.short	26199
	.short	30326
	.short	17941
	.short	22068
	.short	-9908
	.short	-13971
	.short	-1778
	.short	-5841
	.short	-26168
	.short	-30231
	.short	-18038
	.short	-22101
	.short	22596
	.short	18533
	.short	30726
	.short	26663
	.short	6336
	.short	2273
	.short	14466
	.short	10403
	.short	-13443
	.short	-9380
	.short	-5313
	.short	-1250
	.short	-29703
	.short	-25640
	.short	-21573
	.short	-17510
	.short	19061
	.short	23124
	.short	27191
	.short	31254
	.short	2801
	.short	6864
	.short	10931
	.short	14994
	.short	-722
	.short	-4849
	.short	-8852
	.short	-12979
	.short	-16982
	.short	-21109
	.short	-25112
	.short	-29239
	.short	31782
	.short	27655
	.short	23652
	.short	19525
	.short	15522
	.short	11395
	.short	7392
	.short	3265
	.short	-4321
	.short	-194
	.short	-12451
	.short	-8324
	.short	-20581
	.short	-16454
	.short	-28711
	.short	-24584
	.short	28183
	.short	32310
	.short	20053
	.short	24180
	.short	11923
	.short	16050
	.short	3793
	.short	7920
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	ledDirection, %object
	.size	ledDirection, 1
ledDirection:
	.byte	1
	.type	ledTargetValue, %object
	.size	ledTargetValue, 1
ledTargetValue:
	.byte	20
	.space	2
	.type	cfgDescriptor, %object
	.size	cfgDescriptor, 67
cfgDescriptor:
	.byte	9
	.byte	2
	.byte	67
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	-128
	.byte	50
	.byte	9
	.byte	4
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	2
	.byte	0
	.byte	0
	.byte	5
	.byte	36
	.byte	0
	.byte	16
	.byte	1
	.byte	4
	.byte	36
	.byte	2
	.byte	0
	.byte	5
	.byte	36
	.byte	6
	.byte	0
	.byte	1
	.byte	5
	.byte	36
	.byte	1
	.byte	0
	.byte	1
	.byte	7
	.byte	5
	.byte	-125
	.byte	3
	.byte	8
	.byte	0
	.byte	-1
	.byte	9
	.byte	4
	.byte	1
	.byte	0
	.byte	2
	.byte	10
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.byte	5
	.byte	-127
	.byte	2
	.byte	64
	.byte	0
	.byte	0
	.byte	7
	.byte	5
	.byte	2
	.byte	2
	.byte	64
	.byte	0
	.byte	0
	.space	1
	.type	line_coding, %object
	.size	line_coding, 8
line_coding:
	.word	115200
	.byte	0
	.byte	0
	.byte	8
	.space	1
	.type	g_interrupt_enabled, %object
	.size	g_interrupt_enabled, 1
g_interrupt_enabled:
	.byte	1
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.set	.LANCHOR3,. + 128
	.type	txLEDPulse, %object
	.size	txLEDPulse, 2
txLEDPulse:
	.space	2
	.space	2
	.type	erased_from, %object
	.size	erased_from, 4
erased_from:
	.space	4
	.type	MAX_FLASH, %object
	.size	MAX_FLASH, 4
MAX_FLASH:
	.space	4
	.type	PAGE_SIZE, %object
	.size	PAGE_SIZE, 4
PAGE_SIZE:
	.space	4
	.type	b_terminal_mode, %object
	.size	b_terminal_mode, 1
b_terminal_mode:
	.space	1
	.space	3
	.type	ptr_monitor_if, %object
	.size	ptr_monitor_if, 4
ptr_monitor_if:
	.space	4
	.type	ledKeepValue, %object
	.size	ledKeepValue, 1
ledKeepValue:
	.space	1
	.space	1
	.type	rxLEDPulse, %object
	.size	rxLEDPulse, 2
rxLEDPulse:
	.space	2
	.type	read_job, %object
	.size	read_job, 1
read_job:
	.space	1
	.space	3
	.type	sam_ba_cdc, %object
	.size	sam_ba_cdc, 12
sam_ba_cdc:
	.space	12
	.type	bmRequestType.10449, %object
	.size	bmRequestType.10449, 1
bmRequestType.10449:
	.space	1
	.type	bRequest.10450, %object
	.size	bRequest.10450, 1
bRequest.10450:
	.space	1
	.type	wValue.10452, %object
	.size	wValue.10452, 2
wValue.10452:
	.space	2
	.type	wIndex.10453, %object
	.size	wIndex.10453, 2
wIndex.10453:
	.space	2
	.type	wLength.10454, %object
	.size	wLength.10454, 2
wLength.10454:
	.space	2
	.type	wStatus.10455, %object
	.size	wStatus.10455, 2
wStatus.10455:
	.space	2
	.type	dir.10451, %object
	.size	dir.10451, 1
dir.10451:
	.space	1
	.space	1
	.type	pulSketch_Start_Address, %object
	.size	pulSketch_Start_Address, 4
pulSketch_Start_Address:
	.space	4
	.type	main_b_cdc_enable, %object
	.size	main_b_cdc_enable, 1
main_b_cdc_enable:
	.space	1
	.type	b_security_enabled, %object
	.size	b_security_enabled, 1
b_security_enabled:
	.space	1
	.space	2
	.type	ptr_data, %object
	.size	ptr_data, 4
ptr_data:
	.space	4
	.type	command, %object
	.size	command, 1
command:
	.space	1
	.type	data, %object
	.size	data, 64
data:
	.space	64
	.space	3
	.type	length, %object
	.size	length, 4
length:
	.space	4
	.type	ptr, %object
	.size	ptr, 4
ptr:
	.space	4
	.type	i, %object
	.size	i, 4
i:
	.space	4
	.type	current_number, %object
	.size	current_number, 4
current_number:
	.space	4
	.type	u32tmp, %object
	.size	u32tmp, 4
u32tmp:
	.space	4
	.type	j, %object
	.size	j, 1
j:
	.space	1
	.space	3
	.type	sp, %object
	.size	sp, 4
sp:
	.space	4
	.type	b_sam_ba_interface_usart, %object
	.size	b_sam_ba_interface_usart, 1
b_sam_ba_interface_usart:
	.space	1
	.space	3
	.type	src_buff_addr.11921, %object
	.size	src_buff_addr.11921, 4
src_buff_addr.11921:
	.space	4
	.type	udd_ep_in_cache_buffer, %object
	.size	udd_ep_in_cache_buffer, 128
udd_ep_in_cache_buffer:
	.space	128
	.type	udd_ep_out_cache_buffer, %object
	.size	udd_ep_out_cache_buffer, 128
udd_ep_out_cache_buffer:
	.space	128
	.type	usb_endpoint_table, %object
	.size	usb_endpoint_table, 128
usb_endpoint_table:
	.space	128
	.section	.isr_vector,"a",%progbits
	.align	2
	.type	exception_table, %object
	.size	exception_table, 64
exception_table:
	.word	__StackTop
	.word	Reset_Handler
	.word	NMI_Handler
	.word	HardFault_Handler
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	SVC_Handler
	.word	0
	.word	0
	.word	PendSV_Handler
	.word	SysTick_Handler
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC25:
	.ascii	"Arduino LLC\000"
.LC27:
	.ascii	"Arduino Zero\000"
.LC51:
	.ascii	"\012\015\000"
.LC53:
	.ascii	"v\000"
.LC55:
	.ascii	" \000"
.LC57:
	.ascii	" Jan 10 2022 16:15:33\012\015\000"
.LC59:
	.ascii	"X\012\015\000"
.LC61:
	.ascii	"Y\012\015\000"
.LC64:
	.ascii	"Z\000"
.LC66:
	.ascii	"#\012\015\000"
.LC68:
	.ascii	">\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2017-q4-major) 7.2.1 20170904 (release) [ARM/embedded-7-branch revision 255204]"

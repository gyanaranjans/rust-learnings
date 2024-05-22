	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0
	.globl	_process                        ; -- Begin function process
	.p2align	2
_process:                               ; @process
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	ldr	w8, [sp, #12]
	cmp	wzr, w8
	b.ge	LBB0_10
; %bb.1:
	str	wzr, [sp, #8]
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	str	wzr, [sp, #4]
	str	wzr, [sp]
	ldr	w8, [sp, #8]
	cmp	w8, #0
	b.le	LBB0_7
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	b	LBB0_4
LBB0_4:                                 ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp]
	mov	x10, #4                         ; =0x4
	madd	x8, x9, x10, x8
	ldr	w8, [x8]
	ldr	w9, [sp, #4]
	add	w8, w9, w8
	str	w8, [sp, #4]
	ldr	w8, [sp]
	add	w8, w8, #1
	str	w8, [sp]
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=2
	ldr	w8, [sp]
	ldr	w9, [sp, #8]
	cmp	w8, w9
	b.lt	LBB0_4
; %bb.6:                                ;   in Loop: Header=BB0_2 Depth=1
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #8]
	mov	x10, #4                         ; =0x4
	madd	x8, x9, x10, x8
	ldr	w8, [x8]
	ldr	w9, [sp, #4]
	add	w8, w9, w8
	str	w8, [sp, #4]
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #8]
	mov	x11, #4                         ; =0x4
	madd	x9, x10, x11, x9
	str	w8, [x9]
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
; %bb.8:                                ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #12]
	cmp	w8, w9
	b.lt	LBB0_2
; %bb.9:
	b	LBB0_10
LBB0_10:
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	wzr, [sp, #28]
	adrp	x8, l___const.main.src@PAGE
	add	x1, x8, l___const.main.src@PAGEOFF
	sub	x0, x29, #28
	mov	x2, #20                         ; =0x14
	bl	_memcpy
	mov	w8, #5                          ; =0x5
	str	w8, [sp, #24]
	ldr	w2, [sp, #24]
	sub	x0, x29, #28
	add	x1, sp, #32
	bl	_process
	str	wzr, [sp, #20]
LBB1_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #24]
	cmp	w8, w9
	b.ge	LBB1_4
; %bb.2:                                ;   in Loop: Header=BB1_1 Depth=1
	ldrsw	x8, [sp, #20]
	add	x9, sp, #32
	mov	x10, #4                         ; =0x4
	madd	x8, x8, x10, x9
	ldr	w8, [x8]
	str	x8, [sp]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
; %bb.3:                                ;   in Loop: Header=BB1_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	LBB1_1
LBB1_4:
	ldur	x8, [x29, #-8]
	adrp	x9, ___stack_chk_guard@GOTPAGE
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x9, [x9]
	subs	x8, x9, x8
	b.ne	LBB1_5
	b	LBB1_6
LBB1_5:
	bl	___stack_chk_fail
LBB1_6:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__const
	.p2align	2, 0x0                          ; @__const.main.src
l___const.main.src:
	.long	1                               ; 0x1
	.long	2                               ; 0x2
	.long	3                               ; 0x3
	.long	4                               ; 0x4
	.long	5                               ; 0x5

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d "

.subsections_via_symbols

	.cpu cortex-m7
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.file	"ada_bismillah.adb"
	.text
	.align	2
	.global	run_bismillah
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	run_bismillah, %function
run_bismillah:
	.fnstart
.LFB2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.save {r7}
	.setfp r7, sp, #0
	add	r7, sp, #0
.L3:
	nop
	b	.L3
	.fnend
	.size	run_bismillah, .-run_bismillah
	.global	ada_bismillah_E
	.data
	.align	1
	.type	ada_bismillah_E, %object
	.size	ada_bismillah_E, 2
ada_bismillah_E:
	.space	2
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",%progbits

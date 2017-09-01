	.file	1 "fibonacci.c"

 # -G value = 8, Cpu = 3000, ISA = 1
 # GNU C version egcs-2.90.23 980102 (egcs-1.0.1 release) (sde) [AL 1.1, MM 40] Algorithmics SDE-MIPS v4.0.5 compiled by GNU C version egcs-2.91.57 19980901 (egcs-1.1 release).
 # options passed:  -O2 -Wall
 # options enabled:  -fdefer-pop -fomit-frame-pointer -fcse-follow-jumps
 # -fcse-skip-blocks -fexpensive-optimizations -fthread-jumps
 # -fstrength-reduce -fpeephole -fforce-mem -finline -fkeep-static-consts
 # -fcaller-saves -fpcc-struct-return -fdelayed-branch
 # -frerun-cse-after-loop -frerun-loop-opt -fschedule-insns
 # -fschedule-insns2 -fcommon -fverbose-asm -fgnu-linker -fregmove
 # -falias-check -fargument-alias -msplit-addresses -mgas -mrnames -mgpOPT
 # -mgpopt -membedded-data -meb -mmad -marg32 -mdebugh -mdebugi -mmadd
 # -mno-gpconst -mcpu=3000

gcc2_compiled.:

	.text
	.text
	.align	2
	.globl	fibo
	.ent	fibo
fibo:
	.frame	$sp,88,$ra		# vars= 88, regs= 0/0, args= 0, extra= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	subu	$sp,$sp,88
	li	$v0,3			# 0x00000003
	sw	$v0,4($sp)
	li	$v0,5			# 0x00000005
	sw	$v0,8($sp)
	li	$v0,7			# 0x00000007
	sw	$v0,12($sp)
	li	$v0,11			# 0x0000000b
	sw	$v0,16($sp)
	li	$v0,13			# 0x0000000d
	sw	$v0,20($sp)
	li	$v0,17			# 0x00000011
	sw	$v0,24($sp)
	li	$v0,19			# 0x00000013
	sw	$v0,28($sp)
	li	$v0,23			# 0x00000017
	sw	$v0,32($sp)
	li	$v0,29			# 0x0000001d
	sw	$v0,36($sp)
	li	$v0,31			# 0x0000001f
	sw	$v0,40($sp)
	li	$v0,37			# 0x00000025
	sw	$v0,44($sp)
	li	$v0,41			# 0x00000029
	sw	$v0,48($sp)
	li	$v0,43			# 0x0000002b
	sw	$v0,52($sp)
	li	$v0,47			# 0x0000002f
	sw	$v0,56($sp)
	li	$v0,53			# 0x00000035
	sw	$v0,60($sp)
	li	$v0,59			# 0x0000003b
	sw	$v0,64($sp)
	li	$v0,61			# 0x0000003d
	sw	$v0,68($sp)
	li	$v0,67			# 0x00000043
	sw	$v0,72($sp)
	li	$v0,71			# 0x00000047
	sw	$v0,76($sp)
	li	$v0,73			# 0x00000049
	sw	$v0,80($sp)
	li	$v0,79			# 0x0000004f
	sw	$v0,84($sp)
	li	$a2,1			# 0x00000001
	move	$a3,$zero
	sltu	$v0,$a0,2
	.set	noreorder
	.set	nomacro
	beq	$v0,$zero,.L8
	move	$v1,$a3
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	b	.L3
	sw	$a0,0($a1)
	.set	macro
	.set	reorder

.L6:
	addu	$v1,$a2,$a3
	move	$a3,$a2
	move	$a2,$v1
	addu	$a0,$a0,-1
.L8:
	slt	$v0,$a0,2
	beq	$v0,$zero,.L6
	sw	$v1,0($a1)
.L3:
	.set	noreorder
	.set	nomacro
	j	$ra
	addu	$sp,$sp,88
	.set	macro
	.set	reorder

	.end	fibo
	.size	fibo,.-fibo
	.align	2
	.globl	main
	.ent	main
main:
	.frame	$sp,40,$ra		# vars= 16, regs= 1/0, args= 16, extra= 0
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	subu	$sp,$sp,40
	sw	$ra,32($sp)
	sw	$zero,16($sp)
	li	$v0,3			# 0x00000003
	sw	$v0,20($sp)
	move	$a0,$v0
	.set	noreorder
	.set	nomacro
	jal	fibo
	addu	$a1,$sp,24
	.set	macro
	.set	reorder

	lw	$ra,32($sp)
	move	$v0,$zero
	.set	noreorder
	.set	nomacro
	j	$ra
	addu	$sp,$sp,40
	.set	macro
	.set	reorder

	.end	main
	.size	main,.-main

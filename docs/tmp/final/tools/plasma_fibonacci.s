	.file	1 "plasma_fibonacci.c"

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

	.lcomm	buf.2,5
	.rdata
	.align	0
	.align	2
.LC0:
	.ascii	"the Fibonacci number of \000"
	.align	2
.LC1:
	.ascii	" is \000"

	.text
	.text
	.align	2
	.globl	itoa10
	.ent	itoa10
itoa10:
	.frame	$sp,0,$ra		# vars= 0, regs= 0/0, args= 0, extra= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sb	$zero,buf.2+3
	move	$a2,$a0
	li	$a1,2			# 0x00000002
	la	$t0,buf.2
	li	$a3,-858993459			# 0xcccccccd
.L5:
	multu	$a2,$a3
	addu	$a0,$a1,$t0
	addu	$a1,$a1,-1
	mfhi	$t1
	srl	$v1,$t1,3
	sll	$v0,$v1,2
	addu	$v0,$v0,$v1
	sll	$v0,$v0,1
	subu	$v0,$a2,$v0
	addu	$v0,$v0,48
	sb	$v0,0($a0)
	.set	noreorder
	.set	nomacro
	bgez	$a1,.L5
	move	$a2,$v1
	.set	macro
	.set	reorder

	la	$v0,buf.2
	j	$ra
	.end	itoa10
	.size	itoa10,.-itoa10
	.align	2
	.globl	fibo
	.ent	fibo
fibo:
	.frame	$sp,0,$ra		# vars= 0, regs= 0/0, args= 0, extra= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$a2,1			# 0x00000001
	move	$a3,$zero
	sltu	$v0,$a0,2
	.set	noreorder
	.set	nomacro
	beq	$v0,$zero,.L14
	move	$v1,$a3
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	b	.L9
	sw	$a0,0($a1)
	.set	macro
	.set	reorder

.L12:
	addu	$v1,$a2,$a3
	move	$a3,$a2
	move	$a2,$v1
	addu	$a0,$a0,-1
.L14:
	slt	$v0,$a0,2
	beq	$v0,$zero,.L12
	sw	$v1,0($a1)
.L9:
	j	$ra
	.end	fibo
	.size	fibo,.-fibo
	.text
	.align	2
	.globl	main
	.ent	main
main:
	.frame	$sp,48,$ra		# vars= 8, regs= 6/0, args= 16, extra= 0
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	subu	$sp,$sp,48
	sw	$ra,44($sp)
	sw	$s4,40($sp)
	sw	$s3,36($sp)
	sw	$s2,32($sp)
	sw	$s1,28($sp)
	sw	$s0,24($sp)
	move	$s1,$zero
	li	$s0,18			# 0x00000012
	li	$s4,20			# 0x00000014
	lui	$s3,%hi(.LC0) # high
	lui	$s2,%hi(.LC1) # high
.L19:
	move	$a0,$s0
	.set	noreorder
	.set	nomacro
	jal	fibo
	addu	$a1,$sp,16
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	puts
	addiu	$a0,$s3,%lo(.LC0) # low
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	itoa10
	move	$a0,$s0
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	puts
	move	$a0,$v0
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	puts
	addiu	$a0,$s2,%lo(.LC1) # low
	.set	macro
	.set	reorder

	lw	$a0,16($sp)
	addu	$s0,$s0,1
	.set	noreorder
	.set	nomacro
	jal	itoa10
	addu	$s1,$s1,1
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	puts
	move	$a0,$v0
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	putchar
	li	$a0,13			# 0x0000000d
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	putchar
	li	$a0,10			# 0x0000000a
	.set	macro
	.set	reorder

	sltu	$v0,$s4,$s1
	.set	noreorder
	.set	nomacro
	beq	$v0,$zero,.L19
	move	$v0,$zero
	.set	macro
	.set	reorder

	lw	$ra,44($sp)
	lw	$s4,40($sp)
	lw	$s3,36($sp)
	lw	$s2,32($sp)
	lw	$s1,28($sp)
	lw	$s0,24($sp)
	.set	noreorder
	.set	nomacro
	j	$ra
	addu	$sp,$sp,48
	.set	macro
	.set	reorder

	.end	main
	.size	main,.-main

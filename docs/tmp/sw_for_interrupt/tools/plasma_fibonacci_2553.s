	.file	1 "plasma_fibonacci_2553.c"

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
	.text
	.align	2
	.globl	main
	.ent	main
main:
	.frame	$sp,56,$ra		# vars= 0, regs= 10/0, args= 16, extra= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	subu	$sp,$sp,56
	sw	$ra,52($sp)
	sw	$fp,48($sp)
	sw	$s7,44($sp)
	sw	$s6,40($sp)
	sw	$s5,36($sp)
	sw	$s4,32($sp)
	sw	$s3,28($sp)
	sw	$s2,24($sp)
	sw	$s1,20($sp)
	.set	noreorder
	.set	nomacro
	jal	OS_Init
	sw	$s0,16($sp)
	.set	macro
	.set	reorder

	li	$fp,38			# 0x00000026
	move	$s0,$zero
	li	$s1,18			# 0x00000012
	li	$s2,65488			# 0x0000ffd0
	li	$s4,536870912			# 0x20000000
	ori	$s4,$s4,0x0070
	lui	$s7,%hi(.LC0) # high
	lui	$s6,%hi(.LC1) # high
	li	$s3,5			# 0x00000005
	li	$s5,65520			# 0x0000fff0
.L11:
	#.set	volatile
	sw	$s0,0($s2)
	#.set	novolatile
	#.set	volatile
	sw	$s1,0($s4)
	#.set	novolatile
	.set	noreorder
	.set	nomacro
	jal	puts
	addiu	$a0,$s7,%lo(.LC0) # low
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	itoa10
	move	$a0,$s1
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
	addiu	$a0,$s6,%lo(.LC1) # low
	.set	macro
	.set	reorder

.L12:
	#.set	volatile
	lw	$s0,0($s2)
	#.set	novolatile
	bne	$s0,$s3,.L12
	#.set	volatile
	lw	$a0,0($s5)
	#.set	novolatile
	move	$s0,$zero
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

	sltu	$v0,$fp,$s1
	.set	noreorder
	.set	nomacro
	beq	$v0,$zero,.L11
	li	$v0,65488			# 0x0000ffd0
	.set	macro
	.set	reorder

	li	$s0,2			# 0x00000002
	#.set	volatile
	sw	$s0,0($v0)
	#.set	novolatile
	move	$v0,$s0
	lw	$ra,52($sp)
	lw	$fp,48($sp)
	lw	$s7,44($sp)
	lw	$s6,40($sp)
	lw	$s5,36($sp)
	lw	$s4,32($sp)
	lw	$s3,28($sp)
	lw	$s2,24($sp)
	lw	$s1,20($sp)
	lw	$s0,16($sp)
	.set	noreorder
	.set	nomacro
	j	$ra
	addu	$sp,$sp,56
	.set	macro
	.set	reorder

	.end	main
	.size	main,.-main

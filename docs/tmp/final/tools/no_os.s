	.file	1 "no_os.c"

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
	.globl	putchar
	.ent	putchar
putchar:
	.frame	$sp,0,$ra		# vars= 0, regs= 0/0, args= 0, extra= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$v0,536870912			# 0x20000000
	ori	$v0,$v0,0x0020
	#.set	volatile
	lw	$v0,0($v0)
	#.set	novolatile
	andi	$v0,$v0,0x0002
	.set	noreorder
	.set	nomacro
	bne	$v0,$zero,.L6
	li	$v0,536870912			# 0x20000000
	.set	macro
	.set	reorder

	li	$v1,536870912			# 0x20000000
	ori	$v1,$v1,0x0020
.L2:
	#.set	volatile
	lw	$v0,0($v1)
	#.set	novolatile
	andi	$v0,$v0,0x0002
	.set	noreorder
	.set	nomacro
	beq	$v0,$zero,.L2
	li	$v0,536870912			# 0x20000000
	.set	macro
	.set	reorder

.L6:
	#.set	volatile
	sw	$a0,0($v0)
	#.set	novolatile
	j	$ra
	.end	putchar
	.size	putchar,.-putchar
	.align	2
	.globl	puts
	.ent	puts
puts:
	.frame	$sp,32,$ra		# vars= 0, regs= 3/0, args= 16, extra= 0
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	subu	$sp,$sp,32
	sw	$s0,16($sp)
	move	$s0,$a0
	sw	$ra,24($sp)
	sw	$s1,20($sp)
	lbu	$v0,0($s0)
	.set	noreorder
	.set	nomacro
	beq	$v0,$zero,.L9
	li	$s1,10			# 0x0000000a
	.set	macro
	.set	reorder

.L10:
	bne	$v0,$s1,.L11
	.set	noreorder
	.set	nomacro
	jal	putchar
	li	$a0,13			# 0x0000000d
	.set	macro
	.set	reorder

.L11:
	lbu	$a0,0($s0)
	.set	noreorder
	.set	nomacro
	jal	putchar
	addu	$s0,$s0,1
	.set	macro
	.set	reorder

	lbu	$v0,0($s0)
	bne	$v0,$zero,.L10
.L9:
	lw	$ra,24($sp)
	lw	$s1,20($sp)
	lw	$s0,16($sp)
	move	$v0,$zero
	.set	noreorder
	.set	nomacro
	j	$ra
	addu	$sp,$sp,32
	.set	macro
	.set	reorder

	.end	puts
	.size	puts,.-puts
	.align	2
	.globl	print_hex
	.ent	print_hex
print_hex:
	.frame	$sp,32,$ra		# vars= 0, regs= 3/0, args= 16, extra= 0
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	subu	$sp,$sp,32
	sw	$ra,24($sp)
	sw	$s1,20($sp)
	sw	$s0,16($sp)
	move	$s1,$a0
	li	$s0,28			# 0x0000001c
	srl	$v0,$s1,$s0
.L22:
	andi	$a0,$v0,0x000f
	sltu	$v0,$a0,10
	beq	$v0,$zero,.L18
	.set	noreorder
	.set	nomacro
	b	.L21
	ori	$a0,$a0,0x0030
	.set	macro
	.set	reorder

.L18:
	addu	$a0,$a0,87
.L21:
	.set	noreorder
	.set	nomacro
	jal	putchar
	addu	$s0,$s0,-4
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	bgez	$s0,.L22
	srl	$v0,$s1,$s0
	.set	macro
	.set	reorder

	lw	$ra,24($sp)
	lw	$s1,20($sp)
	lw	$s0,16($sp)
	.set	noreorder
	.set	nomacro
	j	$ra
	addu	$sp,$sp,32
	.set	macro
	.set	reorder

	.end	print_hex
	.size	print_hex,.-print_hex
	.align	2
	.globl	OS_InterruptServiceRoutine
	.ent	OS_InterruptServiceRoutine
OS_InterruptServiceRoutine:
	.frame	$sp,0,$ra		# vars= 0, regs= 0/0, args= 0, extra= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$v0,536870912			# 0x20000000
	ori	$v0,$v0,0x0010
	#.set	volatile
	lw	$v1,0($v0)
	#.set	novolatile
	and	$a0,$a0,$v1
	.set	noreorder
	.set	nomacro
	beq	$a0,$zero,.L24
	li	$v0,536870912			# 0x20000000
	.set	macro
	.set	reorder

	ori	$v0,$v0,0x0070
	#.set	volatile
	lw	$v1,0($v0)
	#.set	novolatile
	li	$v0,65520			# 0x0000fff0
	#.set	volatile
	sw	$v1,0($v0)
	#.set	novolatile
.L24:
	j	$ra
	.end	OS_InterruptServiceRoutine
	.size	OS_InterruptServiceRoutine,.-OS_InterruptServiceRoutine
	.align	2
	.globl	kbhit
	.ent	kbhit
kbhit:
	.frame	$sp,0,$ra		# vars= 0, regs= 0/0, args= 0, extra= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$v0,536870912			# 0x20000000
	ori	$v0,$v0,0x0020
	#.set	volatile
	lw	$v0,0($v0)
	#.set	novolatile
	li	$v1,536870912			# 0x20000000
	ori	$v1,$v1,0x0070
	.set	noreorder
	.set	nomacro
	j	$ra
	and	$v0,$v0,$v1
	.set	macro
	.set	reorder

	.end	kbhit
	.size	kbhit,.-kbhit
	.align	2
	.globl	getch
	.ent	getch
getch:
	.frame	$sp,24,$ra		# vars= 0, regs= 1/0, args= 16, extra= 0
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	subu	$sp,$sp,24
	sw	$ra,16($sp)
.L27:
	jal	kbhit
	.set	noreorder
	.set	nomacro
	beq	$v0,$zero,.L27
	li	$v0,536870912			# 0x20000000
	.set	macro
	.set	reorder

	ori	$v0,$v0,0x0070
	#.set	volatile
	lw	$v0,0($v0)
	#.set	novolatile
	lw	$ra,16($sp)
	.set	noreorder
	.set	nomacro
	j	$ra
	addu	$sp,$sp,24
	.set	macro
	.set	reorder

	.end	getch
	.size	getch,.-getch
	.align	2
	.globl	OS_InterruptMaskSet
	.ent	OS_InterruptMaskSet
OS_InterruptMaskSet:
	.frame	$sp,0,$ra		# vars= 0, regs= 0/0, args= 0, extra= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$v0,536870912			# 0x20000000
	ori	$v0,$v0,0x0010
	#.set	volatile
	sw	$a0,0($v0)
	#.set	novolatile
	j	$ra
	.end	OS_InterruptMaskSet
	.size	OS_InterruptMaskSet,.-OS_InterruptMaskSet
	.align	2
	.globl	OS_Init
	.ent	OS_Init
OS_Init:
	.frame	$sp,24,$ra		# vars= 0, regs= 1/0, args= 16, extra= 0
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	subu	$sp,$sp,24
	sw	$ra,16($sp)
	.set	noreorder
	.set	nomacro
	jal	OS_AsmInterruptEnable
	li	$a0,1			# 0x00000001
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	OS_InterruptMaskSet
	li	$a0,32			# 0x00000020
	.set	macro
	.set	reorder

	lw	$ra,16($sp)
	.set	noreorder
	.set	nomacro
	j	$ra
	addu	$sp,$sp,24
	.set	macro
	.set	reorder

	.end	OS_Init
	.size	OS_Init,.-OS_Init

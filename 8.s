	.file	"8.c"
	.text
	.globl	mabs
	.type	mabs, @function
mabs:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -8(%rbp)		#double x
	pxor	%xmm0, %xmm0
	ucomisd	-8(%rbp), %xmm0
	jbe	.L7
	movsd	-8(%rbp), %xmm1
	movq	.LC1(%rip), %xmm0
	xorpd	%xmm1, %xmm0
	jmp	.L5
.L7:
	movsd	-8(%rbp), %xmm0		#return
.L5:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	mabs, .-mabs
	.globl	root_res
	.type	root_res, @function
root_res:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$72, %rsp
	movsd	%xmm0, -72(%rbp)	#double num
	pxor	%xmm0, %xmm0
	ucomisd	-72(%rbp), %xmm0
	jp	.L9
	pxor	%xmm0, %xmm0
	ucomisd	-72(%rbp), %xmm0
	jne	.L9
	pxor	%xmm0, %xmm0
	jmp	.L11
.L9:
	movsd	.LC2(%rip), %xmm0
	ucomisd	-72(%rbp), %xmm0
	jp	.L12
	movsd	.LC2(%rip), %xmm0
	ucomisd	-72(%rbp), %xmm0
	jne	.L12
	movsd	.LC2(%rip), %xmm0
	jmp	.L11
.L12:
	movsd	.LC3(%rip), %xmm0
	ucomisd	-72(%rbp), %xmm0
	jp	.L14
	movsd	.LC3(%rip), %xmm0
	ucomisd	-72(%rbp), %xmm0
	jne	.L14
	movsd	.LC3(%rip), %xmm0
	jmp	.L11
.L14:
	pxor	%xmm0, %xmm0
	ucomisd	-72(%rbp), %xmm0
	jbe	.L30
	movsd	-72(%rbp), %xmm1
	movq	.LC1(%rip), %xmm0
	xorpd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movl	$5, -52(%rbp)		#rootDegree = 5
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, -8(%rbp)		#eps
	cvtsi2sd	-52(%rbp), %xmm0
	movsd	-72(%rbp), %xmm1
	divsd	%xmm0, %xmm1		# root =
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-72(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	jmp	.L18
.L21:
	movsd	-72(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	$1, -64(%rbp)
	jmp	.L19
.L20:
	movsd	-40(%rbp), %xmm0
	divsd	-48(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	addl	$1, -64(%rbp)
.L19:
	cmpl	$4, -64(%rbp)
	jle	.L20
	movsd	-40(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	divsd	-72(%rbp), %xmm1
	movsd	.LC2(%rip), %xmm0
	divsd	-72(%rbp), %xmm0
	movsd	.LC2(%rip), %xmm2
	subsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	mulsd	-48(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
.L18:
	movsd	-48(%rbp), %xmm0
	subsd	-40(%rbp), %xmm0	#(root - rn) to mabs
	call	mabs
	ucomisd	-8(%rbp), %xmm0		#result of mabs
	jnb	.L21
	movsd	-48(%rbp), %xmm1
	movq	.LC1(%rip), %xmm0
	xorpd	%xmm1, %xmm0
	jmp	.L11
.L30:
	movl	$5, -56(%rbp)		#rootDegree = 5
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)
	cvtsi2sd	-56(%rbp), %xmm0
	movsd	-72(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-72(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	jmp	.L22
.L25:
	movsd	-72(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	$1, -60(%rbp)
	jmp	.L23
.L24:
	movsd	-24(%rbp), %xmm0
	divsd	-32(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	addl	$1, -60(%rbp)
.L23:
	cmpl	$4, -60(%rbp)
	jle	.L24
	movsd	-24(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	divsd	-72(%rbp), %xmm1
	movsd	.LC2(%rip), %xmm0
	divsd	-72(%rbp), %xmm0
	movsd	.LC2(%rip), %xmm2
	subsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	mulsd	-32(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
.L22:
	movsd	-32(%rbp), %xmm0
	subsd	-24(%rbp), %xmm0
	call	mabs
	ucomisd	-16(%rbp), %xmm0
	jnb	.L25
	movsd	-32(%rbp), %xmm0	#return root
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	root_res, .-root_res
	.section	.rodata
	.align 8
.LC5:
	.string	"Incrorrect input, check README.md"
.LC6:
	.string	"-r"
.LC7:
	.string	"random num = %lf\n"
.LC9:
	.string	"root: %lf\ntime: %.6lf\n"
.LC10:
	.string	"-h"
.LC11:
	.string	"\n-h help"
.LC12:
	.string	"-r create random number"
	.align 8
.LC13:
	.string	"-f use number from first file and save result in second file"
	.align 8
.LC14:
	.string	"-s take number from terminal and print result in terminal"
.LC15:
	.string	"-f"
.LC16:
	.string	"r"
.LC17:
	.string	"w"
.LC18:
	.string	"incorrect file"
.LC19:
	.string	"%lf"
.LC20:
	.string	"root = %lf\ntime: %.6lf\n"
.LC21:
	.string	"-s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movl	%edi, -100(%rbp)	#argc 
	movq	%rsi, -112(%rbp)	#argv
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpl	$2, -100(%rbp)		#argc != 2
	je	.L32
	cmpl	$4, -100(%rbp)		#argc != 4
	je	.L32
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L33
.L32:
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L34
	movl	$0, %edi		#srand
	call	time@PLT
	movl	%eax, %edi		#a
	call	srand@PLT
	call	rand@PLT
	movl	%eax, %ecx
	movl	$1759218605, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$12, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$10000, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$100, %eax
	movl	%eax, -92(%rbp)		#b
	call	rand@PLT
	movl	%eax, %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$3, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	leal	0(,%rax,4), %edx
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	leal	1(%rdx), %eax
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm0, -32(%rbp)
	cvtsi2sd	-92(%rbp), %xmm0
	divsd	-32(%rbp), %xmm0	#num = a /b
	movsd	%xmm0, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)
	movsd	-120(%rbp), %xmm0
	leaq	.LC7(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	call	clock@PLT		#start
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)
	movsd	-120(%rbp), %xmm0	#num to func root_res
	call	root_res
	movq	%xmm0, %rax		#save result of root_res
	movq	%rax, -16(%rbp)
	call	clock@PLT		#end
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	subq	-80(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC8(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, -120(%rbp)
	movsd	-120(%rbp), %xmm0
	leaq	.LC9(%rip), %rdi
	movl	$2, %eax
	call	printf@PLT
	jmp	.L35
.L34:					#flag -h to print all commands
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC10(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT		#check flag -f
	testl	%eax, %eax
	jne	.L36
	leaq	.LC11(%rip), %rdi
	call	puts@PLT		
	leaq	.LC12(%rip), %rdi
	call	puts@PLT
	leaq	.LC13(%rip), %rdi
	call	puts@PLT
	leaq	.LC14(%rip), %rdi
	call	puts@PLT
	jmp	.L35
.L36:
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L37
	movq	-112(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -56(%rbp)
	movq	-112(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L38
	cmpq	$0, -48(%rbp)
	jne	.L39
.L38:
	leaq	.LC18(%rip), %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L33
.L39:
	leaq	-88(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_fscanf@PLT
	call	clock@PLT
	movq	%rax, -80(%rbp)		#num
	movq	-88(%rbp), %rax
	movq	%rax, -120(%rbp)
	movsd	-120(%rbp), %xmm0	#num to root_res
	call	root_res
	movq	%xmm0, %rax		#save result
	movq	%rax, -40(%rbp)
	call	clock@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	subq	-80(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC8(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rdx, -120(%rbp)
	movsd	-120(%rbp), %xmm0
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	movl	$2, %eax
	call	fprintf@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	jmp	.L35
.L37:
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT		#check flag -s
	testl	%eax, %eax
	jne	.L35
	leaq	-88(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	call	clock@PLT		#start
	movq	%rax, -80(%rbp)		#save num from scanf
	movq	-88(%rbp), %rax
	movq	%rax, -120(%rbp)
	movsd	-120(%rbp), %xmm0	#num to root_res
	call	root_res	
	movq	%xmm0, %rax		#save root_res
	movq	%rax, -72(%rbp)
	call	clock@PLT		#end
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	subq	-80(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC8(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, -120(%rbp)
	movsd	-120(%rbp), %xmm0
	leaq	.LC20(%rip), %rdi
	movl	$2, %eax
	call	printf@PLT
.L35:
	movl	$0, %eax
.L33:
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L40
	call	__stack_chk_fail@PLT
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align 16
.LC1:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC2:
	.long	0
	.long	1072693248
	.align 8
.LC3:
	.long	0
	.long	-1074790400
	.align 8
.LC4:
	.long	3539053052
	.long	1062232653
	.align 8
.LC8:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits

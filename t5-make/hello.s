	.file	"hello.go"
	.intel_syntax noprefix
	.section	.go_export,"",@progbits
	.ascii	"v1;\n"
	.ascii	"package "
	.ascii	"main"
	.ascii	";\n"
	.ascii	"pkgpath "
	.ascii	"main"
	.ascii	";\n"
	.ascii	"priority 7;\n"
	.ascii	"import "
	.ascii	"fmt"
	.ascii	" "
	.ascii	"fmt"
	.ascii	" \""
	.ascii	"fmt"
	.ascii	"\";\n"
	.ascii	"init"
	.ascii	" "
	.ascii	"math"
	.ascii	" "
	.ascii	"math..import"
	.ascii	" 1"
	.ascii	" "
	.ascii	"runtime"
	.ascii	" "
	.ascii	"runtime..import"
	.ascii	" 1"
	.ascii	" "
	.ascii	"strconv"
	.ascii	" "
	.ascii	"strconv..import"
	.ascii	" 2"
	.ascii	" "
	.ascii	"sync"
	.ascii	" "
	.ascii	"sync..import"
	.ascii	" 2"
	.ascii	" "
	.ascii	"io"
	.ascii	" "
	.ascii	"io..import"
	.ascii	" 3"
	.ascii	" "
	.ascii	"reflect"
	.ascii	" "
	.ascii	"reflect..import"
	.ascii	" 3"
	.ascii	" "
	.ascii	"syscall"
	.ascii	" "
	.ascii	"syscall..import"
	.ascii	" 3"
	.ascii	" "
	.ascii	"time"
	.ascii	" "
	.ascii	"time..import"
	.ascii	" 4"
	.ascii	" "
	.ascii	"os"
	.ascii	" "
	.ascii	"os..import"
	.ascii	" 5"
	.ascii	" "
	.ascii	"fmt"
	.ascii	" "
	.ascii	"fmt..import"
	.ascii	" 6"
	.ascii	";\n"
	.ascii	"checksum 6FA2485F591AB961218EE0E298E6B9E35ACA6237;\n"
	.section	.rodata
.LC0:
	.ascii	"hello, world\n"
	.zero	1
	.text
	.globl	main.main
	.type	main.main, @function
main.main:
.LFB0:
	.cfi_startproc
	cmp	rsp, QWORD PTR %fs:112
	jae	.L2
	mov	r10d, 72
	mov	r11d, 0
	call	__morestack
	ret
.L2:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	QWORD PTR [rbp-64], 0
	mov	QWORD PTR [rbp-56], 0
	mov	QWORD PTR [rbp-48], 0
	mov	eax, OFFSET FLAT:.LC0
	mov	edx, 13
	lea	rcx, [rbp-32]
	sub	rsp, 8
	mov	rsi, rax
	mov	rdi, rdx
	mov	rax, rdx
	push	QWORD PTR [rbp-48]
	push	QWORD PTR [rbp-56]
	push	QWORD PTR [rbp-64]
	mov	rdx, rax
	mov	rdi, rcx
	call	fmt.Printf
	add	rsp, 32
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main.main, .-main.main
	.globl	__go_init_main
	.type	__go_init_main, @function
__go_init_main:
.LFB1:
	.cfi_startproc
	cmp	rsp, QWORD PTR %fs:112
	jae	.L4
	mov	r10d, 8
	mov	r11d, 0
	call	__morestack
	ret
.L4:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	call	math..import
	call	runtime..import
	call	strconv..import
	call	sync..import
	call	io..import
	call	reflect..import
	call	syscall..import
	call	time..import
	call	os..import
	call	fmt..import
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	__go_init_main, .-__go_init_main
	.section	.note.GNU-split-stack,"",@progbits
	.ident	"GCC: (Ubuntu 4.9.1-0ubuntu1) 4.9.1"
	.section	.note.GNU-stack,"",@progbits

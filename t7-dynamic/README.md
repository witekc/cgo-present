Notes:
	- go binaries are statically linked with excpetions:
		- e.g net/http
	- "external" linking, where the system linker is invoked after the go-provided one (6l, 8l, or 5l) to actually perform the final link, and thus supports the full range of features needed to statically link most code properly. Note: the "external" linking mode doesn't enforce static linking, it is just better supported
	- LD_LIBRAY_PATH OR -Wl,-rpath=/home/username/foo OR use "ldconfig" (ld config tool) - to let the linux loader where to find the libraries
		- rpath - is fixed; less flexible


go tool cgo [cgo options] [-- compiler options] gofiles...

cgo is a separate tool:
/home/witek/.gvm/gos/go1.4.2/pkg/tool/linux_amd64/cgo --help
  -cdefs=false: for bootstrap: write C definitions for C file to standard output
  -debug-define=false: print relevant #defines
  -debug-gcc=false: print gcc invocations
  -dynimport="": if non-empty, print dynamic import data for that file
  -dynlinker=false: record dynamic linker information in dynimport mode
  -dynout="": write -dynobj output to this file
  -gccgo=false: generate files for use with gccgo
  -gccgopkgpath="": -fgo-pkgpath option used with gccgo
  -gccgoprefix="": -fgo-prefix option used with gccgo
  -godefs=false: for bootstrap: write Go definitions for C file to standard output
  -import_runtime_cgo=true: import runtime/cgo in generated code
  -import_syscall=true: import syscall in generated code
  -objdir="": object directory

options (command line or in-file):
	- CGO_ENABLED=0,1
	- CGO_CFLAGS
	- CGO_LDFLAGS


go build -x -o main
	- cgo is called automatically if cgo instructions are detected:
		/*
		#include <stdlib.h>
		extern void my_puts(const char*);
		*/
	- output notes:
		- long output
		- produces dynamically linked binary
		- the compile for this does not wholly use golang’s internal linker, and has to use the external linker (gcc)
---OR---
go tool cgo main.go
		- specify the libraries, library paths, header file paths etc.
	- part of the "go build" process
	- produces "_obj"
		-_cgo_defun.c
		-_cgo_export.c
		-_cgo_export.h
		-_cgo_flags
		-_cgo_gotypes.go
		-_cgo_main.c
		-_cgo_.o
		-main.cgo1.go
		-main.cgo2.c

file ./main
	./main: ELF 64-bit LSB  executable, x86-64, version 1 (SYSV), dynamically linked (uses shared libs), for GNU/Linux 2.6.24, BuildID[sha1]=632e132f9542b63f2f0ecfcaa7b9459becea31e8, not stripped+

ldd main
	dynamically linked:
		linux-vdso.so.1 =>  (0x00007fff569e8000)
		libpthread.so.0 => /lib/x86_64-linux-gnu/libpthread.so.0 (0x00007fa8f1922000)
		libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007fa8f155c000)
		/lib64/ld-linux-x86-64.so.2 (0x00007fa8f1b5b000)




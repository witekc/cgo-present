

Example:
	$ cat >hello.go <<EOF
	package main

	import "fmt"

	func main() {
	        fmt.Printf("hello, world\n")
	}
	EOF

	$ 6g hello.go
		- produces hello.6
	$ 6l hello.6
		- producse 6.out
	$ ./6.out
	hello, world


Examine the code:
	6g -S hello.go
		- prints go assembly listing
		- criticism: non-standard; asm can be changed by the linker
	use this instead: objdump -d 6.out > 6.asm
	OR
	gccgo -S -O0 -masm=intel hello.go



github.com/witekcc/cgo-p-t8-static

Notes:
	- fully static go: https://groups.google.com/forum/#!msg/golang-nuts/H-NTwhQVp-8/i5vhUB5dZ5QJ
		- good post
		- go build -tags netgo -a
			- builds the net package to not use cgo without disabling cgo entirely, or needing to rebuild go
		- export GO_EXTLINK_ENABLED=0 - disable external linker?
		- export CGO_ENABLED=0

go build -x --ldflags '-extldflags "-static"' -o main
	- statically linked:
		6l -o main -L $WORK -extldflags -static -extld=gcc $WORK/_/home/witek/go_projects/cgo-presentation/t8-static.a

file main
main: ELF 64-bit LSB  executable, x86-64, version 1 (GNU/Linux), statically linked, for GNU/Linux 2.6.24, BuildID[sha1]=adfce291899f3ca931aa5fa20f0a073e4aff5b9e, not stripped

ldd main





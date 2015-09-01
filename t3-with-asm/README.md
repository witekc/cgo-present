

go build -x -a github.com/witekcc/cgo-p-t3-with-asm


Output:
WORK=/tmp/go-build583684592
mkdir -p $WORK/github.com/witekcc/cgo-p-t3-with-asm/_obj/
mkdir -p $WORK/github.com/witekcc/
cd /home/witek/.gvm/pkgsets/go1.4.2/cgo-presentation/src/github.com/witekcc/cgo-p-t3-with-asm
/home/witek/.gvm/gos/go1.4.2/pkg/tool/linux_amd64/6g 
	-o $WORK/github.com/witekcc/cgo-p-t3-with-asm.a 
	-trimpath $WORK 
	-p github.com/witekcc/cgo-p-t3-with-asm 
	-D _/home/witek/.gvm/pkgsets/go1.4.2/cgo-presentation/src/github.com/witekcc/cgo-p-t3-with-asm 
	-I $WORK 
	-pack ./md5.go ./md5block.go ./md5block_decl.go
/home/witek/.gvm/gos/go1.4.2/pkg/tool/linux_amd64/6a 
	-trimpath $WORK 
	-I $WORK/github.com/witekcc/cgo-p-t3-with-asm/_obj/ 
	-I /home/witek/.gvm/gos/go1.4.2/pkg/linux_amd64 
	-o $WORK/github.com/witekcc/cgo-p-t3-with-asm/_obj/md5block_amd64.6 
	-D GOOS_linux 
	-D GOARCH_amd64 ./md5block_amd64.s
pack r $WORK/github.com/witekcc/cgo-p-t3-with-asm.a $WORK/github.com/witekcc/cgo-p-t3-with-asm/_obj/md5block_amd64.6 # internal


Notes:
- 6a 
	- compiles assembly language into machine language
	- Go selects the file md5block_amd64.6 using prefix; alternatively, the file can contail tags (call with "-tag amd64")
- pack
	- packages objects into .a (archive file) which the linker consumes

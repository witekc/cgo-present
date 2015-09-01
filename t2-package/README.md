Notes:
	- http://dave.cheney.net/2013/10/15/how-does-the-go-build-command-work
	- Because we invoked go build on a package, the result is discarded as $WORK is deleted after the build completes. 


go build -x -a github.com/witekcc/cgo-p-t2-package


Output:
WORK=/tmp/go-build476694771
mkdir -p $WORK/github.com/witekcc/cgo-p-t2-package/_obj/
mkdir -p $WORK/github.com/witekcc/
cd /home/witek/.gvm/pkgsets/go1.4.2/cgo-presentation/src/github.com/witekcc/cgo-p-t2-package
/home/witek/.gvm/gos/go1.4.2/pkg/tool/linux_amd64/6g 
	-o $WORK/github.com/witekcc/cgo-p-t2-package.a 
	-trimpath $WORK 
	-p github.com/witekcc/cgo-p-t2-package 
	-complete 
	-D _/home/witek/.gvm/pkgsets/go1.4.2/cgo-presentation/src/github.com/witekcc/cgo-p-t2-package 
	-I $WORK 
	-pack ./package.go


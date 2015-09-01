

go build -x cmd/gofmt


Output:
WORK=/tmp/go-build159088139
mkdir -p $WORK/cmd/gofmt/_obj/
mkdir -p $WORK/cmd/gofmt/_obj/exe/
cd /home/witek/.gvm/gos/go1.4.2/src/cmd/gofmt
/home/witek/.gvm/gos/go1.4.2/pkg/tool/linux_amd64/6g -o $WORK/cmd/gofmt.a -trimpath $WORK -p cmd/gofmt -complete -D _/home/witek/.gvm/gos/go1.4.2/src/cmd/gofmt -I $WORK -pack ./doc.go ./gofmt.go ./rewrite.go ./simplify.go
cd .
/home/witek/.gvm/gos/go1.4.2/pkg/tool/linux_amd64/6l -o $WORK/cmd/gofmt/_obj/exe/a.out -L $WORK -extld=gcc $WORK/cmd/gofmt.a
mv $WORK/cmd/gofmt/_obj/exe/a.out gofmt


Notes:
- linker produces the final binary and copies it to to $GOPATH/bin (or $GOBIN if set)
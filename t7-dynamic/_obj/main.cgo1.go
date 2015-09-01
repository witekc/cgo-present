// Created by cgo - DO NOT EDIT

//line /home/witek/go_projects/cgo-presentation/t7-dynamic/main.go:1
package main
//line /home/witek/go_projects/cgo-presentation/t7-dynamic/main.go:9

//line /home/witek/go_projects/cgo-presentation/t7-dynamic/main.go:8
import "unsafe"
//line /home/witek/go_projects/cgo-presentation/t7-dynamic/main.go:11

//line /home/witek/go_projects/cgo-presentation/t7-dynamic/main.go:10
func main() {
	p := _Cfunc_CString("From Golang")
	defer _Cfunc_free(unsafe.Pointer(p))
	_Cfunc_my_puts(p)
}

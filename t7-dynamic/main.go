package main

/*
#include <stdlib.h>
extern void my_puts(const char*);
*/
import "C"
import "unsafe"

func main() {
	p := C.CString("From Golang")
	defer C.free(unsafe.Pointer(p))//have to free memory manually
	C.my_puts(p)
}
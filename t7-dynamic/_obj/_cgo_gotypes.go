// Created by cgo - DO NOT EDIT

package main

import "unsafe"

import _ "runtime/cgo"

import "syscall"

var _ syscall.Errno
func _Cgo_ptr(ptr unsafe.Pointer) unsafe.Pointer { return ptr }

type _Ctype_char int8

type _Ctype_void [0]byte

var _cgo_runtime_cgocall_errno func(unsafe.Pointer, uintptr) int32
var _cgo_runtime_cmalloc func(uintptr) unsafe.Pointer


func _Cfunc_CString(s string) *_Ctype_char {
	p := _cgo_runtime_cmalloc(uintptr(len(s)+1))
	pp := (*[1<<30]byte)(p)
	copy(pp[:], s)
	pp[len(s)] = 0
	return (*_Ctype_char)(p)
}

var _cgo_e5ae1c2b8973_Cfunc_free unsafe.Pointer
func _Cfunc_free(p0 unsafe.Pointer) (r1 _Ctype_void) {
	_cgo_runtime_cgocall_errno(_cgo_e5ae1c2b8973_Cfunc_free, uintptr(unsafe.Pointer(&p0)))
	return
}

var _cgo_e5ae1c2b8973_Cfunc_my_puts unsafe.Pointer
func _Cfunc_my_puts(p0 *_Ctype_char) (r1 _Ctype_void) {
	_cgo_runtime_cgocall_errno(_cgo_e5ae1c2b8973_Cfunc_my_puts, uintptr(unsafe.Pointer(&p0)))
	return
}

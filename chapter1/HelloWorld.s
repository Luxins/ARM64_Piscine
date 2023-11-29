.global _start
.align	2

_start:
	mov	X0, #1 // stdout
	adr	X1, helloworld // addr of string
	mov X2, #13 // number of bytes
	mov X16, #4 // write instruction
	svc #0x80
	mov X0, #0 // exit code 0
	mov X16, #1 // exit instruction
	svc #0x80

helloworld: .ascii "hello world\n"
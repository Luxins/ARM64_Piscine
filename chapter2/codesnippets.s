.global	_start
.align	2

_start:
l1:	MOV	X1, #0xF
	MOV X0, X1
	ORR X0, XZR, X1

	MOV X0, #0x0001
	MOVK X0, #0x0001, LSL #16
	LSL x1, X0, #16

	MOV x1, #0x8000000000000000
	ASR x1, x1, #1



	MOV X16, #1
	SVC #0x80
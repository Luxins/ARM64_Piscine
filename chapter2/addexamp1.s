.global _start
.align 2

_start:
	MOVN	W0, #2
	ADD		W0, W0, #1

	MOV X16, #1
	SVC #0x80
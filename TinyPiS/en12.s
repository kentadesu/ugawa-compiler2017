	.section .data
	@ 大域変数の定義
_Pi_var_x:
	.word 0
_Pi_var_y:
	.word 0
_Pi_var_answer:
	.word 0
	.section .text
	.global _start
_start:
	@ 式をコンパイルした命令列
	ldr r0, =#6
	ldr r1, =_Pi_var_x
	str r0, [r1, #0]
	ldr r0, =#5
	ldr r1, =_Pi_var_y
	str r0, [r1, #0]
	ldr r0, =_Pi_var_x
	ldr r0, [r0, #0]
	str r1, [sp, #-4]!
	mov r1, r0
	ldr r0, =_Pi_var_y
	ldr r0, [r0, #0]
	and r0, r1, r0
	ldr r1, [sp], #4
	ldr r1, =_Pi_var_answer
	str r0, [r1, #0]
	ldr r0, =_Pi_var_x
	ldr r0, [r0, #0]
	str r1, [sp, #-4]!
	mov r1, r0
	ldr r0, =_Pi_var_y
	ldr r0, [r0, #0]
	orr r0, r1, r0
	ldr r1, [sp], #4
	ldr r1, =_Pi_var_answer
	str r0, [r1, #0]
	ldr r0, =_Pi_var_x
	ldr r0, [r0, #0]
	mvn r0, r0
	add r0, r0, #1
	ldr r1, =_Pi_var_answer
	str r0, [r1, #0]
	ldr r0, =_Pi_var_y
	ldr r0, [r0, #0]
	mvn r0, r0
	ldr r1, =_Pi_var_answer
	str r0, [r1, #0]
	@ EXITシステムコール
	ldr r0, =_Pi_var_answer
	ldr r0, [r0, #0]
	mov r7, #1
	swi #0

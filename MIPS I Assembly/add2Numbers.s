# MIPS I assembly code to add two 32b constants and store result in a register

.data
X: .word 5
Y: .word 10

.text
.globl main
main:
    la $t0, X
    la $t1, Y
    lw $s0, 0($t0)
    lw $s1, 0($t1)
    add $t2, $s0, $s1

    li $v0, 10
    syscall

    .end

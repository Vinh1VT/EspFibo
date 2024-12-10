.globl fibo

.text

fibo :
addi sp, sp, -28
sw ra, 0(sp)
sw a0, 4(sp)
sw a1, 8(sp)
sw a2, 12(sp)
sw a3, 16(sp)
sw a4, 20(sp)
sw a5, 24(sp)
sw a6, 28(sp)

#initialisation du tableau
li a2, 0
sw a2, 0(a0)
li a2, 1
sw a2, 4(a0)

addi a3, a1, -2
li a4, 0

boucle:
beq a4,a3, end

lw a5, 0(a0)
lw a6, 4(a0)
add a2, a5, a6
sw a2, 8(a0)


addi a0,a0,4
addi a4, a4, 1
j boucle


end:
lw a6,28(sp)
lw a5,24(sp)
lw a4, 20(sp)
lw a3, 16(sp)
lw a2, 12(sp)
lw a1, 8(sp)
lw a0, 4(sp)
lw ra, 0(sp)
addi sp, sp, 28
jalr ra
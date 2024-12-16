.globl allumer, eteindre

.text
allumer:
addi sp, sp, -16
sw ra, 0(sp)
sw a0, 4(sp)
sw a1, 8(sp)
sw a2, 12(sp)

li a2, 0x400

#enable
la a0, 0x60004020
lw a1, 0(a0)
or a1, a1, a2
sw a1, 0(a0)


#allumer la led
la a0, 0x60004008
lw a1, 0(a0)
or a1, a1, a2
sw a2, 0(a0)

lw a2, 12(sp)
lw a1, 8(sp)
lw a0, 4(sp)
lw ra, 0(sp)
addi sp, sp, 16
jalr ra

eteindre:
addi sp, sp, -16
sw ra, 0(sp)
sw a0, 4(sp)
sw a1, 8(sp)
sw a2, 12(sp)

li a2, 0x400

#enable
la a0, 0x60004020
lw a1, 0(a0)
or a1, a1, a2
sw a1, 0(a0)


#eteindre la led
la a0, 0x6000400c
lw a1, 0(a0)
or a1, a1, a2
sw a2, 0(a0)

lw a2, 12(sp)
lw a1, 8(sp)
lw a0, 4(sp)
lw ra, 0(sp)
addi sp, sp, 16
jalr ra
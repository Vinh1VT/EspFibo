.globl led

.text
led:
addi sp, sp, -16
sw ra, 0(sp)
#sw a0, 4(sp)
sw a1, 8(sp)
sw a2, 12(sp)


#output config

li a2, 0x34
la a0, 0x60004574
lw a1, 0(a0)
xor a1, a1, a2
sw a2, 0(a0)

li a2, 0x800

#enable jcrois ça sert a R
la a0, 0x60004020
lw a1, 0(a0)
or a1, a1, a2
sw a1, 0(a0)


#allumer la led
la a0, 0x60004008
lw a1, 0(a0)
or a1, a1, a2
sw a2, 0(a0)

la a0, 0x60004004
lw a0, 0(a0)


#loop:
#   j loop


end:

lw a2, 12(sp)
lw a1, 8(sp)
#lw a0, 4(sp)
lw ra, 0(sp)
addi sp, sp, 16
jalr ra

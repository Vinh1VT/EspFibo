.globl detect_input

.text

detect_input:
addi sp, sp, -16
sw ra, 0(sp)
sw a1, 4(sp)
sw a2, 8(sp)

#activation pullup
la a1, 0x6000901C
li a0, 0x8
lw a2, 0(a1)
or a2, a2, a0
sw a2, 0(a1)

#detection de l'input
la a1, 0x6000403c

li a0, 64
lw a2, 0(a1)
and a0, a0, a2


end:
lw a2, 8(sp)
lw a1, 4(sp)
lw ra, 0(sp)
addi sp, sp, 16
jalr ra
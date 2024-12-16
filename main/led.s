.globl allumer, eteindre, delai, blink_N

.text


blink_N:
addi sp, sp, -16
sw ra, 0(sp)
sw a0, 4(sp)

beqz a0, blink_zero


boucle_blink:
    beqz a0, end_blink
    jal allumer
    jal delai
    jal eteindre
    jal delai
    addi a0, a0, -1
    j boucle_blink


#on met quand meme le delai si on a 0, pour pas que la premiere entrée soit comptée double
blink_zero:
    jal delai
    jal delai


end_blink:
lw a0, 4(sp)
lw ra, 0(sp)
addi sp, sp, 16
jalr ra







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

#boucle de délai (environ 1s)
delai:
addi sp, sp, -16
sw ra, 0(sp)
sw a0, 4(sp)

li a0, 26666667
boucle_d:
    addi a0, a0, -1
    bne zero, a0, boucle_d 

lw a0, 4(sp)
lw ra, 0(sp)
addi sp, sp, 16
jalr ra
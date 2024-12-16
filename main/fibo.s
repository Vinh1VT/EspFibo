.globl fibo, fibo_n

.text

fibo_n:

addi sp, sp, -16
sw ra, 0(sp)
sw a1, 4(sp) 
sw a2, 8(sp)
sw a3, 12(sp)
#condition initiales
li a2, 0
beqz a0, end_fib 
li a2, 1
beq a0, a2, end_fib

li a1, 0
addi a0, a0, -2

boucle_fib:
    add a3, a1, a2
    addi a1, a2, 0
    addi a2, a3, 0
    beqz a0, end_fib
    addi a0, a0, -1
    j boucle_fib

end_fib:

addi a0, a2, 0

lw a3, 12(sp)
lw a2, 8(sp)
lw a1, 4(sp)
lw ra, 0(sp)
addi sp, sp, 16
jalr ra






fibotab:
#prologue
addi sp, sp, -20
sw ra, 0(sp)
sw a0, 4(sp) 
sw a1, 8(sp) 
sw a2, 12(sp) 
sw a3, 16(sp)
sw a4, 20(sp)

#####REGISTRES#####
#a0 adresse du tableau
#a1 taille du tableau
#a2 entier rentré dans le tableau
#a3 valeur a additionner 1
#a4 valeur a additionner 2
###################

#initialisation du tableau
li a2, 0
sw a2, 0(a0)
li a2, 1
sw a2, 4(a0)

addi a1, a1, -2

#remplissage apres le terme 2
boucle:
beqz a1, end

lw a3, 0(a0)
lw a4, 4(a0)
add a2, a3, a4
sw a2, 8(a0)


addi a0,a0,4
addi a1, a1, -1
j boucle


end:
#epilogue
lw a4, 20(sp)
lw a3, 16(sp)
lw a2, 12(sp)
lw a1, 8(sp)
lw a0, 4(sp)
lw ra, 0(sp)
addi sp, sp, 20
jalr ra
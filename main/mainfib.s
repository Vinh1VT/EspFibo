.globl mainfib

.text
mainfib:
    #pas besoin de prologue/epilogue, ce n'est pas une vraie fonction mais juste un programme
    li a1, 0
    main_loop:
        jal detect_input
        beqz a0, main_blink #si il y a un input, appelle les fonctions de calcul et blink
        j main_loop
    
    main_blink:
        addi a0, a1, 0
        jal fibo_n
        jal blink_n
        addi a1, a1, 1
        j main_loop
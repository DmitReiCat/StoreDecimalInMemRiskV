.text
storeInMemMain:
.globl storeInMemMain
  lw a2, input          #  a3 = input number
  la a3, output         #  a3 = output
  la t2, output_sign    #  a3 = output_sign

  addi sp, sp, -16 # выделение памяти в стеке
  sw ra, 12(sp) # сохранение ra

  call storeInMemSub  # call fun

  lw ra, 12(sp) # восстановление ra
  addi sp, sp, 16 # освобождение памяти в стеке
  
  ret       # } return 0;

.rodata
input:
  .word -2147483647


.data
output:
  .word 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
output_sign:
  .word 0
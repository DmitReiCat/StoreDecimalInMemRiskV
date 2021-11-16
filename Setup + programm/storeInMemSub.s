.text
storeInMemSub:
.globl storeInMemSub
  ##                    #  a2 = input
  ##                    #  a3 = output
  la a4, subtrahend     #  a4 = subtrahend
  li a5, 0              #  i = 0
  
  li a6, 0              #  var result = 0
  li a7, 0              #  var tempSubstraction = 0
  
  li t3, 0              #  var substrathend[i]
  li t4, 0              #  var output[i]
  li t5, 0              #  var 
  li t6, 0              #  var 
  lw t0, negative_sign  #  const = 1
  li t1, 9              #  
  ##                    #  t2 = output_sign
  
  bge a2, x0, while_i_less_than_9
  
  #  if input < 0
  sw t0, 0(t2)
  neg a2, a2
  
  
while_i_less_than_9:
  bge a5, t1, while_i_less_than_9_exit
  
  li a6, 0
  
  #  t3 = substrathend[i]
  slli t3, a5, 2
  add t3, a4, t3
  lw t3, 0(t3)
  
  sub a7, a2, t3
  
while_temp_Substraction_GE_than_0:
  bltz a7, while_temp_Substraction_GE_than_0_exit
  
  sub a2, a2, t3
  add a6, t0, a6
  sub a7, a2, t3
  

  j while_temp_Substraction_GE_than_0
  
while_temp_Substraction_GE_than_0_exit:
  #  t4 = link to output[i]
  slli t4, a5, 2
  add t4, a3, t4
  
  sw a6, 0(t4)
  add a5, t0, a5
  j while_i_less_than_9  
  
while_i_less_than_9_exit:
  slli t4, a5, 2
  add t4, a3, t4
  
  sw a2, 0(t4)
  
  ret
  
.rodata
subtrahend:
  .word 1000000000, 100000000, 10000000, 1000000, 100000, 10000, 1000, 100, 10
negative_sign:
  .word 1
    .data    
    .comm    u,260
n:    .long    0
    .text    
    .globl    ptmain
ptmain:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $2,u+0
    .data    
s16:    .asciz  "Hello"
    .text    
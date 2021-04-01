    .data    
    .comm    u,516
n:    .long    0
    .text    
    .globl    ptmain
ptmain:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $2,u+0
    movl    $4,n
    .data    
s18:    .asciz  "Hello"
    .text    

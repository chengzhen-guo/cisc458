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
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s16,%eax
    pushl    %eax
    call    pttrap101
    addl    $4,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax

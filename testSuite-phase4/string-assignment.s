    .data    
    .comm    u,260
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
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s18,%eax
    pushl    %eax
    lea    u+4,%eax
    pushl    %eax
    call    pttrap101
    addl    $4,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax

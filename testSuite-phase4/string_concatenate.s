    .data    
    .comm    u,772
n:    .long    0
    .text    
    .globl    ptmain
ptmain:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $1,u+0
    .data    
s16:    .asciz  "Hello"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s16,%eax
    pushl    %eax
    lea    u+4,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    .data    
s36:    .asciz  "World"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s36,%eax
    pushl    %eax
    lea    u+260,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    u+260,%eax
    pushl    %eax
    lea    u+4,%eax
    pushl    %eax
    call    pttrap103
    addl    $8,%esp

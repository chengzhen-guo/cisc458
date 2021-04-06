    .data    
    .comm    u,520
n:    .long    0
    .text    
    .globl    ptmain
ptmain:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $1,u+0
    movl    $2,u+4
b1:    movl    $8,n
    pushl    u+4
    .data    
s29:    .asciz  "Please give me a regular French 'er' verb (end with 'arreter')"
    .text    
    lea    s29,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+0
    lea    u+8,%eax
    pushl    %eax
    call    pttrap108
    addl    $8,%esp
    incl    n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    movl    $12,n
    pushl    u+4
    .data    
s145:    .asciz  "Thanks, here is the present conjugation"
    .text    
    lea    s145,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    u+8,%eax
    pushl    %eax
    call    pttrap105
    addl    $4,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    subl    $2,%al
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    pushl    %eax

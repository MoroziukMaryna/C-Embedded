.global lab1
.syntax unified

/*
    Variant: 2520 % 5 = 0 => (a+b)/2 + c!
*/

#define A #5
#define B #6
#define C #6

lab1:
    mov r0, A
    mov r1, B
    mov r2, C

    add r0, r0, r1
    asr r0, r0, #1

    mov r1, r2
    sub r2, r2, #1
    loop:
    cmp r2, #1
    beq loopstop
    mul r1, r1, r2
    sub r2, r2, #1
    b loop

    loopstop:
    add r0, r0, r1

    mov pc, lr

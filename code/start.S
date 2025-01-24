.syntax unified
.cpu cortex-m4
.thumb

.global vtable
.global reset_handler

.type vtable, %object
.type __hard_reset__, %function

vtable:
    .word __stack_start
    .word __hard_reset__+1
    .size vtable, .-vtable

__hard_reset__:
    bl lab1

    loopback:
    b loopback

    b __hard_reset__

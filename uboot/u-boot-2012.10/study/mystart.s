b reset
b reset
b reset
b reset
b reset
b reset
b reset
b reset

reset:
    bl gpio_out
    bl led2_on
    mov r0, r1
    mov r1, r2
    mov r2, r3
    mov r3, r4
    mov r4, r5

1:
    b 1b

gpio_out:
    ldr r11, =0xE0200280
    ldr r12, =0x00001111
    str r12, [r11]

    ldr r11, =0xE0200284
    ldr r12, =0xF
    str r12, [r11]
    mov pc, lr

2;***************************************************************************
;
; Program for education in subject "Assembly Languages" and "APPS"
; petr.olivka@vsb.cz, Department of Computer Science, VSB-TUO
;
; Empty project
;
;***************************************************************************

    bits 64

    section .data

    extern g_int_a, g_int_b
    extern g_long_1
    extern g_char_hello

;***************************************************************************

    section .text

    global asm_function

asm_function:
    ;split long into halves
    mov eax, [ g_long_1 ]   ;LSB
    mov [ g_int_a ], eax ; a = low part of 1
    mov eax, [ g_long_1 + 4 ] ;MSB because int is 4 bytes
    mov [ g_int_b ], eax ; b = high part of 1
    ret 

    global asm_function2
asm_function2:
    ;join two int into long
    mov eax, [ g_int_a ]
    mov [ g_long_1 + 4 ], eax
    mov eax, [ g_int_b ]
    mov [ g_long_1 ], eax
    ret

    global asm_function3
asm_function3:
    mov cl , [ g_char_hello ]
    mov dl, [g_char_hello + 4]
    mov [ g_char_hello ], dl
    mov [ g_char_hello + 4], cl
    ret


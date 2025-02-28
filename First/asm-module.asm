;***************************************************************************
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

;***************************************************************************

    section .text

    global asm_function
asm_function:
    ;split long into halves
    mov eax, 69
    mov [ g_int_a ], eax
    mov [ g_int_b ], dword 96
    ret 

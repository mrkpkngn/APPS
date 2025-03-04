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



;***************************************************************************

    section .text
    global sum_int
    global sum_long
    ; rdi, rsi, rdx, rcx, r8, r9
    ;  a    b
sum_long:
sum_int:
    mov rax, rdi    ; ret = a
    add rax, rsi    ; ret+= b
    ret

    global mystrlen
    ; rdi, rsi, rdx, rcx, r8, r9
    ;*str
mystrlen:
    mov rax, 0      ; i = 0
.back:
    cmp [ rdi + rax ], byte 0
    je .done

    inc rax         ; i++
    jmp .back

.done:
    ret


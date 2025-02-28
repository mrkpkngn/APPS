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

    ; variables

    extern g_int_numneg, g_int_sum, g_int_position
    extern g_long_array, g_int_array
    extern g_str
;g_some_asm_var dd ?

;***************************************************************************

    section .text

;***************************************************************************

    global countNegative
countNegative:
; for (int x = 0; x < 10; x++)

mov rcx, 0      ; x = 0
mov rax, 0      ; counter = 0

.back:
cmp rcx, 10
jge .done

mov rdx, [g_long_array + rcx * 8]
cmp rdx, 0
jge .skip
inc rax

.skip:
inc rcx
jmp .back

.done:
mov [ g_int_numneg ], rax
ret

;***************************************************************************

    global addArray
addArray:
mov rcx, 0      ; x = 0
mov rax, 0      ; sum = 0

.back:
cmp rcx, 10
jge .done

add rax, [ g_int_array + rcx * 4]

.skip:
inc rcx
jmp .back

.done:
mov [ g_int_sum ], rax
ret

;***************************************************************************

    global highestPos
highestPos:
mov rcx, 0      ; char indexer
mov rax, 0      ; pos of highest value
mov bl, [g_str]    ;assume first index is the highest

.back:
cmp [g_str + rcx], byte 0
je .done

cmp bl, [g_str + rcx]
jge .skip
mov bl, [g_str + rcx]
mov rax, rcx

.skip:
inc rcx
jmp .back

.done:
mov [g_int_position], rax
ret

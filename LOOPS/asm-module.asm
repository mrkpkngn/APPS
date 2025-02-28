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

    ;global g_some_asm_var
    extern g_int_a, g_int_b, g_int_max, g_int_min, g_int_spaces
    extern g_int_array
    extern g_str

;g_some_asm_var dd ?

;***************************************************************************

    section .text

    global asmNumSpaces
asmNumSpaces:
    ;while (str[i] != '\0')
    mov eax, 0          ; counter
    mov rcx, 0          ; i = 0

.back:
    cmp [g_str + rcx], byte 0   ; is 0
    je .done

    cmp [g_str + rcx], byte ' '
    jne .skip
    inc eax        ;conter++

.skip:
    inc rcx
    jmp .back

.done:
mov [g_int_spaces], eax
ret


    global asmArrayMin
asmArrayMin:
mov rcx, 0  ; i = 0
            ; for( int i = 0; i < 10; i++)
mov eax, [g_int_array + 0]

.back:
cmp rcx, 10
jge .done   ;ask if counter is greater or equal to limit

cmp eax, [g_int_array + rcx*4]
jl .skip
mov eax, [g_int_array + rcx*4]

.skip:
inc rcx     ;i++
jmp .back

.done:
mov [g_int_min], eax
ret

    global asmSelectMax
asmSelectMax:
mov eax, [ g_int_a ]
mov [ g_int_max ], eax  ; assume a is max
cmp eax, [ g_int_b ]    ; a ? b   compare is subtraction but doesnt store result
jg .iamdone             ; if a is indeed greater, jumps to .iamdone, if not it will execute code below
mov eax, [ g_int_b ]    ; take g_int_b to eax
mov [ g_int_max ], eax  ; b is max
.iamdone:
ret



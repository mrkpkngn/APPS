    bits 64

    section .data

    extern g_int_array, g_int_num, g_int_limit, g_text, g_int_left, g_int_right, g_int_odd, g_long_array, g_str, g_int_underscore

;***************************************************************************

    section .text

    global belowLimit
belowLimit:
    mov ecx, 0              ; index = 0
    mov eax, 0              ; numbers below the limit = 0
    mov ebx, [g_int_limit]  ; load the limit into rbx

.back:
    cmp ecx, 10
    jge .done

    cmp [g_int_array + ecx * 4], ebx 
    jge .skip               

    inc eax                 

.skip:
    inc ecx                 
    jmp .back               
.done:
    mov [g_int_num], eax    ; store the result in g_int_num
    ret

    global countParentheses
countParentheses:
mov rcx, 0               ; char indexer
mov eax, 0               ; left parentheses counter
mov ebx, 0               ; right parentheses counter

.back:
cmp [ g_text + rcx ], byte 0
je .done

cmp [ g_text + rcx ], byte '('
je .incLeft

cmp [ g_text + rcx ], byte ')'
je .incRight

jmp .skip

.incLeft:
inc eax
jmp .skip

.incRight:
inc ebx

.skip:
inc cl
jmp .back

.done:
mov [ g_int_left ], eax
mov [ g_int_right ], ebx
ret


    global countOdd
countOdd:
mov rcx, 0      ; i = 0
mov rbx, 0      ; oddCounter

.back:
cmp rcx, 10
jge .done

mov rax, [g_long_array + rcx * 8]
and rax, 1
je .skip

inc rbx

.skip:
inc rcx
jmp .back

.done:
mov [ g_int_odd ], rbx
ret

    global countUnderscore
countUnderscore:
mov rcx, 0      ; i = 0
mov rax, 0      ;underscoreCounter

.back:
cmp [g_str + rcx], byte 0
je .done

cmp [g_str + rcx], byte '_'
jne .skip
inc rax

.skip:
inc rcx
jmp .back

.done:
mov [g_int_underscore], rax
ret
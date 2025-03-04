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

    global str2up
    ; rdi, rsi, rdx,r cx, r8, r9
    ;*str
str2up:
    ;while(*str =! 0)
.back:
    cmp [ rdi ], byte 0
    je .done

    cmp [ rdi ],byte 'a'
    jl .skip
    cmp [ rdi ],byte 'z'
    jg .skip

    sub [ rdi ], byte ( 'a' - 'A' )
.skip:
    inc rdi     ;rdi++
    jmp .back
.done:
ret


    global minmax_int
    ; rdi, rsi, rdx, rcx, r8, r9
    ; arr   N  *min *max
minmax_int:

    movsx rsi, esi      ; N32 extend to N64
    mov r8d, [ rdi ]    ; min = array [0]
    mov r9d, [ rdi ]    ; max = array [0]
    mov rax, 1          ; counter

.back:

    cmp rax, rsi                  ; i < N
    jge .done

    cmp r8d, [ rdi + rax * 4 ]    ; new min?
    jle .skip1
    mov r8d, [ rdi + rax * 4 ]

.skip1:

    cmp r9d, [ rdi + rax * 4 ]    ; new max?
    jge .skip2
    mov r9d, [ rdi + rax * 4 ]
    
.skip2:

    inc rax
    jmp .back

.done:
    mov [ rdx ], r8d              ;*min = min
    mov [ rcx ], r9d              ;*max = max
ret
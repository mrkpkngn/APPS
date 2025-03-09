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

    ; functions

    global str2loup
    extern str2loup
    ;rdi rsi rdx rcx r8 r9
    ;str int
str2loup:
movsx rsi, esi

.back:
cmp [rdi], byte 0
je .done

cmp esi, 1
jne .toLow

cmp [rdi], byte 'z'
jg .skip

cmp [rdi], byte 'a'
jl .skip

sub [rdi], byte ('a' - 'A')
jmp .skip

.toLow:
cmp [rdi], byte 'Z'
jg .skip

cmp [rdi], byte 'A'
jl .skip

add [rdi], byte('a' - 'A')

.skip:
inc rdi
jmp .back

.done:
ret

    global bubble
    extern bubble
    ; rdi rsi rdx   rcx    r8d   r9d
    ; arr  N  fInd  sInd   tmp1  tmp2
bubble:
mov rdx, 0
mov rcx, 1

.back:
cmp rcx, rsi
jge .loopDone

mov r8d, [rdi + rdx * 4]
cmp r8d, [rdi + rcx * 4]
jl .skip

mov r9d, [rdi + rcx * 4]
mov [rdi + rdx * 4], r9d
mov [rdi + rcx * 4], r8d

.skip:
inc rdx
inc rcx
jmp .back

.loopDone:
dec rsi
cmp rsi, 1
jl .done

mov rdx, 0
mov rcx, 1
jmp .back

.done:
ret

    global most_often
    extern most_often
;rdi  rsi  rdx  rcx  r8  r9
;arr  

most_often:
mov dl, ' '     ; char with most often
mov r8d, 0      ; most often count
mov cl, [rdi]   ; current char 
mov r9d, 1      ; current count

.back:
cmp byte [rdi], 0
je .loopDone

cmp byte [rdi], cl
jne .newChar

inc r9d
jmp .nextChar

.newChar:
cmp r8d, r9d
jge .skipUpdate

mov dl, cl
mov r8d, r9d

.skipUpdate:
mov cl, [rdi]
mov r9d, 1

.nextChar:
inc rdi
jmp .back

.loopDone:
cmp r8d, r9d
jge .done

mov dl, cl
mov r8d, r9d

.done:
mov al, dl
ret

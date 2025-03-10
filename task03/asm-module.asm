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

;g_some_asm_var dd ?

;***************************************************************************

    section .text

    global switchChar
    extern switchChar
    ;   rdi   rsi   rdx   rcx   r8   r9
    ;   arr   
switchChar:
.back:
cmp [rdi], byte 0
je .done

cmp [rdi], byte 'A'
jl .skip
cmp [rdi], byte 'z'
jg .skip

cmp [rdi], byte 'a'
jge .toLower
add [rdi], byte('a' - 'A')
jmp .skip

.toLower:
sub [rdi], byte ('a' - 'A')

.skip:
inc rdi
jmp .back

.done:
ret

    global bubbleSort
    extern bubbleSort
    ; rdi rsi  rdx    rcx    r8     r9     rax
    ; arr  N   sort   ind1   ind2    tmp1    tmp2
bubbleSort:
mov rcx, 0
mov r8, 1



.ascBack:
cmp r8, rsi
jge .ascloopDone

mov r9d, [rdi + rcx * 4]

cmp rdx, 1
jne .desc
cmp r9d, [rdi + r8 * 4]
jl .ascSkip
jmp .switch

.desc:
cmp r9d, [rdi + r8 * 4]
jg .ascSkip


.switch:
mov eax, [rdi + r8 * 4]
mov [rdi + rcx * 4], eax
mov [rdi + r8 * 4], r9d
jmp .ascSkip

.ascSkip:
inc rcx
inc r8
jmp .ascBack

.ascloopDone:
dec rsi
cmp rsi, 1
jl .done

mov rcx, 0
mov r8, 1
jmp .ascBack

.done:
ret


    global numMostOften
    extern numMostOften
    ;    rdi    rsi    rdx      rcx       r8         r9         rax      r10
    ;    arr    N      ind   numMost    oftenN     currNum    currOften   skip
numMostOften:
mov rcx, 0              ; initialize highest num
mov r8, 0               ; how often was highest num?
mov r9, [rdi]           ; current number = arr[0]
mov rax, 1              ; current often = 1
mov rdx, 1              ; skip 1 since we already had it in current
mov r10, 1

.back:
cmp rdx, rsi            ; compare index with amount of array
jge .loopDone

cmp r9, [rdi + rdx * 4] ; cmp currentIndex to currentNum
jne .skip               ; not equal? skip
inc rax                 ; if equal increase current often

.skip:
inc rdx                 ;index++
jmp .back               ; reloop

.loopDone:
cmp rax, r8            ; cmp currOften to mostOften
jle .initLoop
mov rcx, r9            ; move currentNum to highestNum
mov r8, rax            ; mov currentOften to mostOften

.initLoop:
inc r10                ; skip++
cmp r10, rsi           ; compare skip and array size
jge .done              ; if grearter, skip

mov rdx, r10           ; if not mov skip to currImdex
mov r9, [rdi + rdx * 4] ; move currentNumber
mov rax, 1              ; mov currentOften
jmp .back               ; go back

.done:
mov rax, rcx            ;return mostOften
ret












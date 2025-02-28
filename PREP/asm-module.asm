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

    extern g_long_array
    extern g_int_number
    extern g_int_code
    extern g_str1
    extern g_str2


;***************************************************************************

    section .text

    global joinIntegers
joinIntegers:
mov eax, [ g_int_number ]
mov ecx, [ g_int_number + 4 ]
mov [g_long_array], eax
mov [g_long_array + 4], ecx
mov eax, [ g_int_number + 8]
mov ecx, [ g_int_number + 12]
mov [g_long_array + 8], eax
mov [g_long_array + 12], ecx
ret


    global reorderBytes
reorderBytes:
mov al, [g_int_code]
mov cl, [g_int_code+3]
mov [g_int_code + 3], al
mov [g_int_code], cl
mov al, [g_int_code+1]
mov cl, [g_int_code+2]
mov [g_int_code + 1], cl
mov [g_int_code+2], al
ret

    global concatStr
concatStr:
mov eax, [ g_str1 ]
mov [g_str2 + 5], eax
ret





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

    extern g_int_number
    extern g_char_n1, g_char_n2, g_char_n3, g_char_n4
    extern g_long_my_password
    extern g_long_lnum
    extern g_char_password

;***************************************************************************

    section .text
    global setChar
setChar:
mov al, [ g_int_number ]
mov [ g_char_n1 ], al
mov al, [ g_int_number + 1 ]
mov [ g_char_n2 ], al
mov al, [ g_int_number + 2 ]
mov [ g_char_n3 ], al
mov al, [ g_int_number + 3 ]
mov [ g_char_n4 ], al
ret


    global setByte0
setByte0:
mov al, 0
mov [ g_int_number ], al
mov [ g_int_number + 2 ], al
ret

    global switchPos
switchPos:
mov eax, [ g_long_lnum ]
mov ebx, [ g_long_lnum + 4 ]
mov [ g_long_lnum ], ebx
mov [ g_long_lnum + 4 ], eax
ret



    global longToString
longToString:
mov al, [ g_long_my_password ]
mov [ g_char_password ], al
mov al, [ g_long_my_password + 1 ]
mov [ g_char_password + 1 ], al
mov al, [ g_long_my_password + 2 ]
mov [ g_char_password + 2 ], al
mov al, [ g_long_my_password + 3 ]
mov [ g_char_password + 3 ], al
mov al, [ g_long_my_password + 4 ]
mov [ g_char_password + 4 ], al
mov al, [ g_long_my_password + 5 ]
mov [ g_char_password + 5 ], al
mov al, [ g_long_my_password + 6 ]
mov [ g_char_password + 6 ], al
mov al, [ g_long_my_password + 7 ]
mov [ g_char_password + 7 ], al
ret





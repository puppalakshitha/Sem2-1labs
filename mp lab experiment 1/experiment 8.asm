ASSUME CS: CODE, DS: DATA
DATA SEGMENT
LEN EGU 5
STR2 DB DUP(0)
MES1 DB 10,13,'WORD IS PALINDROME$'
MES2 DB 10,13,'WORD IS NOT PALINDROME$'
      DATA ENDS
      CODE SEGMENT
      START:
             MOV AX,DATA
             MOV DS,AX
             MOV ES,AX
             LEA SI,STR1
             LEA DI,STR2
             MOV CX,LEN
             DEC DI
     UP:CLD
             LOD SB
             STD
             STOSB
             LOOP UP
             LEA SI,STRI
             LEA DI,STR2
             CLD
             MOV CX,LEN
             REPE CMPSB
             JNZ NOTPALIN
             LEA DX,MESI
             MOV AH,09H
             INT 21H
             EXIT:MOV AH,4CH
             INT 21H
             
         

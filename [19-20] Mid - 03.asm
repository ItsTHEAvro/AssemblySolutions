.MODEL SMALL 

.DATA
FIRST_LINE DB '**********$'
REST DB 0AH, 0DH, '**********$'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    ;DISPLAY FIRST LINE
    ;IT IS DIFFERENT CAUSE WE DONT WANT TO
    ;PRINT A NEW LINE BEFORE THE FIRST LINE   
    LEA DX, FIRST_LINE
    MOV AH, 9
    INT 21H
               
    ;DISPLAY THE REST            
    LEA DX, REST
    MOV AH, 9
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H
   
    ;RETURN TO DOS
    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN

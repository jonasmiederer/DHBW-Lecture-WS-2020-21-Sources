ASSUME  CS:CODE, DS:DATA      
DATA    SEGMENT                
Meldung db  "Hello, World!"        
db  13, 10              
db  "$"                 
DATA    ENDS                   

CODE    SEGMENT                
Anfang:                         
    mov ax, DATA
    mov ds, ax
    mov dx, OFFSET Meldung  
    mov ah, 09h             
    int 21h                 
    mov ax, 4C00h 
    int 21h
CODE    ENDS
END     Anfang
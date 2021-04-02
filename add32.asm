data segment
num1 dw 1234h, 5678h    
 num2 dw 0ab12h, 0cdefh   
result dw 3 dup(?)   
data ends

code segment
        assume cs:code,ds:data    
        main:mov ax,data
        mov ds,ax
        mov dx,00h        
        mov ax, num1     
        mov bx, num2     
clc                     
        add ax, bx         
        mov result, ax   
mov ax, num1+2  
        mov bx, num2+2  
adc  ax, bx             
        mov result+2, ax  
        adc  dx, 00h          
        mov result+4, dx 
        mov ah, 4ch   
        int 21h                   
        code ends      
        end main                     


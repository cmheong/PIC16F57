
; PIC16F57 Configuration Bit Settings
; Assembly source line config statements
#include "P16F5X.INC"

; CONFIG
; __config 0xFFF9
; 2020-05-10 cmheong __CONFIG _OSC_XT & _WDT_OFF & _CP_OFF
__CONFIG _RC_OSC & _WDT_OFF & _CP_OFF
	
list	p=16F57

delay_ctr1 equ 18 ; 2021-05-11
delay_ctr2 equ 19 ; 2021-05-11


ORG 0X0
START
         ;RB0 RB1 RB5 RB6 RB7 :OUTPUT
         MOVLW B'00000000'
         TRIS PORTB
LOOPY
         clrwdt
         bcf PORTB,5 
         bcf PORTB,5 
         bcf PORTB,5 
         bcf PORTB,5 
         bcf PORTB,5 
         bcf PORTB,5 
         bcf PORTB,5 
         bcf PORTB,5 
         bcf PORTB,5 
         bcf PORTB,5 
         bcf PORTB,5 
         bcf PORTB,5 
         bcf PORTB,5 
         bcf PORTB,5 
         bcf PORTB,5 
         bcf PORTB,5 
         bcf PORTB,5 
         bcf PORTB,5 
         bcf PORTB,5 
         bcf PORTB,5 
         bcf PORTB,5 
         bcf PORTB,5 

         movlw 0x10
         movwf delay_ctr2
delayloop
         movlw 0xff
         movwf delay_ctr1
delayloop1
         CLRWDT
         movlw 0x00
         movwf PORTB  ; Red LED Off
         decfsz delay_ctr1
         goto delayloop1

         decfsz delay_ctr2
         goto delayloop

         movlw 0x10
         movwf delay_ctr2
delayloop3
         movlw 0xff
         movwf delay_ctr1
delayloop2
         clrwdt
         bsf PORTB, 5
         decfsz delay_ctr1
         goto delayloop2
         decfsz delay_ctr2
         goto delayloop3
         goto LOOPY

ORG 0x7ff
         goto START  ; Note defaults to page 0, address 0
 END


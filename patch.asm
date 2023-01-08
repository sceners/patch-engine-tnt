;-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.
;- TNT!Crack!Team Patcher Engine --- (c) 1999 by -= tHE EGOISTE =-       .
;-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.

;****************** Things for you to do: *********************

;1) Change filename of file to be patched (example for filenames with MORE than 8 letters: shitproggy.exe => "shitpr~1.exe" !) 
;2) Change patchlen. Just enter the No. of bytes to be patched
;3) Copy the code.asm file generated with CoGen into the field 'PATCHDATA' (->see example there)
;4) Change the intro-message-
 
;5) Assem. this source code using the batchfile makepatch.bat included in this package.
;6) Have fun.
;**************************************************************

filename	equ  "Firewo~1.exe"	  ;filename of file to be patched
patchlen	equ	56	;number of bytes to patch

;--- some messages :: ---
patchok  	equ	"    			## OK DUDE...!"	;display on success :)
fileerr  	equ	"    			    ## SORRY DUDE!"			;OOPS! :(
fopenerr 	equ	"    			  ## CANNOT OPEN FILE !maybe is read-only?!"
wrongfile  	equ	"    			 ## ERROR: the file is already cracked dude(or different version)!"
notfound   	equ	"    			  ## ERROR: i don't see the right file dude !"
eol 		equ	0dh,0ah					;End OF Line
eos 		equ	eol,"$"					;End OF Line + End Of String


.MODEL SMALL
.STACK 100h
.DATA
;_________________________________________________________________________________________
;------------------------------------->PATCHDATA<-----------------------------------------;*** PATCHED BYTES ***


;*** PATCHED BYTES ***
bpatch	db 090h,090h,090h,090h,090h,090h,090h,090h,090h,090h
	db 090h,090h,090h,090h,090h,090h,090h,090h,090h,090h
	db 090h,090h,090h,090h,090h,090h,090h,090h,090h,090h
	db 090h,090h,090h,090h,090h,090h,090h,090h,090h,090h
	db 090h,090h,090h,090h,090h,090h,090h,090h,090h,090h
	db 090h,090h,090h,090h,074h,074h
;*** ORIGINAL BYTES ***
borig	db 0c7h,000h,064h,000h,000h,000h,0c7h,000h,064h,000h
	db 000h,000h,0c7h,000h,064h,000h,000h,000h,0c7h,000h
	db 064h,000h,000h,000h,0c7h,000h,064h,000h,000h,000h
	db 0c7h,000h,064h,000h,000h,000h,0c7h,000h,064h,000h
	db 000h,000h,0c7h,000h,064h,000h,000h,000h,0c7h,000h
	db 064h,000h,000h,000h,075h,075h
;*** OFFSET - UPPER WORD ***
offhi	dw 00000h,00000h,00000h,00000h,00000h,00000h,00000h,00000h,00000h,00000h
	dw 00000h,00000h,00000h,00000h,00000h,00000h,00000h,00000h,00000h,00000h
	dw 00000h,00000h,00000h,00000h,00000h,00000h,00000h,00000h,00000h,00000h
	dw 00000h,00000h,00000h,00000h,00000h,00000h,00000h,00000h,00000h,00000h
	dw 00000h,00000h,00000h,00000h,00000h,00000h,00000h,00000h,00000h,00000h
	dw 00000h,00000h,00000h,00000h,00000h,00000h
;*** OFFSET - LOWER WORD ***
offlo	dw 01889h,0188ah,0188bh,0188ch,0188dh,0188eh,0216dh,0216eh,0216fh,02170h
	dw 02171h,02172h,02479h,0247ah,0247bh,0247ch,0247dh,0247eh,037bdh,037beh
	dw 037bfh,037c0h,037c1h,037c2h,03af9h,03afah,03afbh,03afch,03afdh,03afeh
	dw 03c59h,03c5ah,03c5bh,03c5ch,03c5dh,03c5eh,03db9h,03dbah,03dbbh,03dbch
	dw 03dbdh,03dbeh,03f33h,03f34h,03f35h,03f36h,03f37h,03f38h,04539h,0453ah
	dw 0453bh,0453ch,0453dh,0453eh,0801ah,08030h


;___________________________________________________________________________________________
;---------------------------------->END OF PATCHDATA<---------------------------------------

ccnt	dw 0
cbuf	db patchlen dup(?)	;comparebuffer
cptr	dw cbuf			;ptr -> cbuf

intro		db "		 ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤอออออออออออออออออฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ",eol
 		db "		 บ  SPT 99      ÛÛÛ ÛÛ  Û ÛÛÛ  TNT!CraCKTeam บ",eol
 		db "		 บ [>+DzAkRAker<]        Û  Û Û Û  Û                 บ",eol
 		db "		 บ                 Û  Û  ÛÛ  Û           (xLl) บ",eol
 		db "		 ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤอออออออออออออออออฤฤฤฤฤฤฤฤฤฤฤฤฤฤู",eol
 		db "		 ษออออออออออออปษอออออออออออออออออออออออออออออออป",eol
 		db "		 บ Program:   บบmacromedia fireworks v1.0  บ",eol
		db "		 ฬออออออออออออนฬอออออออออออออออออออออออออออออออน",eol
		db "		 บ Filename:  บบFireworks.exe   บ",eol
		db "		 ฬออออออออออออนฬอออออออออออออออออออออออออออออออน",eol
		db " 	 	 บ Size:      บบ254,464 BYTES              บ",eol
		db " 		 ฬออออออออออออนฬอออออออออออออออออออออออออออออออน",eol
		db " 		 บ Protection:บบ sn บ",eol
		db " 		 ศออออออออออออผศอออออออออออออออออออออออออออออออผ",eol
		db "		 þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ",eol
		db "		 þ     TNT!CraCK!TeAM  / -= +DzAkRAker =- [1999]     þ",eol
		db "		 þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ",eol,eol
		db "		  Run this patch in same dir with:Fireworks.exe  ",eol 		
		db " 		  press SPACE to crack , ESC to quit  ",eol
		db eos

;_______________________________________________________________________________________________
;############################### Nothing more to change for you :)##############################
;-----------------------------------------------------------------------------------------------
ferr      	db fileerr,eos
foerr     	db fopenerr,eos
wrofile        	db wrongfile,eos
allok      	db patchok,eos
fname         	db filename,0			
fnfound     	db notfound,eos
acount		dw 0				
bcount		dw 0				
readbuf        	db 0,0			 	
fhandle        	dw 0				
pofflow		dw 0
poffhi		dw 0

.CODE
Start:         	mov 	ax,@DATA			
              	mov 	ds,ax				
		mov	es,ax
              	lea 	dx,intro  			
              	call	print				
		mov 	ah,08h				
		int 	21h
		cmp 	al,27				
		jne 	weiter				
		jmp 	exitdos				
weiter:        	mov 	ax,3d02h                    	
              	lea 	dx,fname			
              	int 	21h				
              	jc	E_1                          	
              	mov	fhandle,ax	       		

mainloop:	
		mov	bx,ccnt	
	      	add	bx,bx				
              	mov 	cx,[offhi+bx]
              	mov 	dx,[offlo+bx]
              	mov 	bx,fhandle
        	mov 	ax,4200h     			
              	int 	21h
              	jc 	E_5				
	        
               	mov 	cx,1			   	
              	mov 	dx,cptr				
		mov 	ah,3fh	        		
              	int 	21h
              	jc 	E_5				

		inc	cptr				
		inc	ccnt				
		mov	cx,patchlen			
		sub	cx,ccnt				
		jnz	mainloop			
		
		
              	lea 	si,borig	             	
		lea	di,cbuf
		mov	cx,patchlen
		cld					
		repz	cmpsb				
		jne	notsame	

		xor	cx,cx
		mov	ccnt,cx
		jmp	bmatch				
		
notsame:    	lea 	dx,wrofile                  	
              	jmp 	E_3
	
E_1:          	cmp 	al,2			  	
              	jz 	E_2
              	lea 	dx,foerr		  	
              	call 	print
              	jmp 	exitdos
E_2:          	lea 	dx,fnfound		 	
		call 	print
		jmp 	exitdos
		
E_5:		lea 	dx,ferr			  	
E_3:	       	call 	print			  	
		jmp 	fertig
		
bmatch:
              	mov	bx,ccnt
              	add	bx,bx
              	mov 	cx,[offhi+bx]
               	mov 	dx,[offlo+bx]			
		mov	bx,fhandle
        	mov 	ax,4200h     			
              	int 	21h
		jc	E_5
		
              	mov	cx,1			   	
              	lea 	dx,bpatch	        	
		add	dx,ccnt
              	mov 	ah,40h                         	
              	int 	21h
              	jc 	E_5				
              
		inc	ccnt				
		mov	cx,patchlen			
		sub	cx,ccnt				
		jnz	bmatch				
              	
              	
allpatched:    	lea 	dx,allok	             	
              	call	print

fertig:	        mov 	bx,fhandle
       	        mov 	ah,3eh
       	        int 	21h

exitdos:       	mov 	ax,4c00h			
             	int 	21h

print PROC NEAR
	      	mov 	ah,09h              	
            	int	21h
            	ret
print ENDP
		END 	Start

.text
.align 2
.thumb
.thumb_func

main:
push { r0-r2,lr }
mov r0, #0x5
ldr r1, sav1_get_secure
bl linker
ldr r2 , var
strh r0, [ r2 , #0x0 ]
pop { r0-r2, pc }

linker:
bx r1


.align 2
sav1_get_secure:     .word 0x08054EC5
var:                 .word 0x020370c0

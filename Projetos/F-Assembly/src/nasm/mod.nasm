; Arquivo: Mod.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Divide o número posicionado na RAM[1] pelo número posicionado no RAM[2] 
;e armazena o resultado na RAM[0].

leaw $1,%A
movw (%A),%D
leaw $2,%A
movw (%A),%S
leaw $11,%A
jle %D
movw %S,%A
subw %D,%A,%D
leaw $4,%A
jmp
nop
leaw $15,%A
je %D
movw %S,%A
addw %D,%A,%D
leaw $0,%A
movw %D,(%A)


; Arquivo: Abs.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Multiplica o valor de RAM[1] com RAM[0] salvando em RAM[3]

leaw $0, %A
movw (%A),%D
leaw $1, %A
movw (%A),%S
decw %S

mult:
decw %S
leaw $0,%A
addw (%A),%D,%D

leaw $mult,%A
jg %S
nop

leaw $3,%A
movw %D,(%A)
























































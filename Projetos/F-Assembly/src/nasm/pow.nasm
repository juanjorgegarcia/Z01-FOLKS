leaw $1, %A
movw (%A), %D
movw %D, %S
decw %S

loop:
leaw $1, %A
addw (%A), %D, %D
leaw $loop, %A
decw %S

jg %S
nop

leaw $0, %A
movw %D, (%A)
leaw $0, %A
movw (%A),%D
leaw $1, %A
movw (%A),%S
decw %S
leaw $0,%A
addw (%A),%D,%D
decw %S
leaw $3,%A
movw %D,(%A)
leaw $4,%A
jg %S
nop

































































































































    ; S = pixel
leaw $1, %A
addw (%A), %S, %S  ; soma 20 em S
leaw $0, %A
movw %S, (%A)      ; 0 = soma - S = soma
leaw $0, %A
movw %A, %D
notw %D
movw %S, %A
movw %D, (%A)
leaw $2, %A
movw (%A), %D
leaw $loop, %A
jg %D
nop








































































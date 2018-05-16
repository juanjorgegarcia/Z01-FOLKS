; 0 - LT
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
subw (%A),%D,%D
leaw $LTSimpleLt0,%A
jl %D
nop
leaw $SP,%A
subw (%A),$1,%A
movw $0,(%A)
leaw $LT2SimpleLt0,%A
jmp
nop
LTSimpleLt0:
leaw $SP,%A
subw (%A),$1,%A
movw $-1,(%A)
LT2SimpleLt0:
; End

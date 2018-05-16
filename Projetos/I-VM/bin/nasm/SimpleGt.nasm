; 0 - GT
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
subw (%A),%D,%D
leaw $GTSimpleGt0,%A
jg %D
nop
leaw $SP,%A
subw (%A),$1,%A
movw $0,(%A)
leaw $GT2SimpleGt0,%A
jmp
nop
GTSimpleGt0:
leaw $SP,%A
subw (%A),$1,%A
movw $-1,(%A)
GT2SimpleGt0:
; End

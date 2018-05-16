; 0 - EQ
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
subw (%A),%D,%D
leaw $EQSimpleEq0,%A
je %D
nop
leaw $SP,%A
subw (%A),$1,%A
movw $0,(%A)
leaw $EQ2SimpleEq0,%A
jmp
nop
EQSimpleEq0:
leaw $SP,%A
subw (%A),$1,%A
movw $-1,(%A)
EQ2SimpleEq0:
; End

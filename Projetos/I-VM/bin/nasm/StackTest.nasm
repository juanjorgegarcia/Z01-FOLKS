; 0 - PUSH constant 17
leaw $17,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 1 - PUSH constant 17
leaw $17,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 2 - EQ
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
subw (%A),%D,%D
leaw $EQStackTest0,%A
je %D
nop
leaw $SP,%A
subw (%A),$1,%A
movw $0,(%A)
leaw $EQ2StackTest0,%A
jmp
nop
EQStackTest0:
leaw $SP,%A
subw (%A),$1,%A
movw $-1,(%A)
EQ2StackTest0:
; 3 - PUSH constant 17
leaw $17,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 4 - PUSH constant 16
leaw $16,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 5 - EQ
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
subw (%A),%D,%D
leaw $EQStackTest1,%A
je %D
nop
leaw $SP,%A
subw (%A),$1,%A
movw $0,(%A)
leaw $EQ2StackTest1,%A
jmp
nop
EQStackTest1:
leaw $SP,%A
subw (%A),$1,%A
movw $-1,(%A)
EQ2StackTest1:
; 6 - PUSH constant 16
leaw $16,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 7 - PUSH constant 17
leaw $17,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 8 - EQ
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
subw (%A),%D,%D
leaw $EQStackTest2,%A
je %D
nop
leaw $SP,%A
subw (%A),$1,%A
movw $0,(%A)
leaw $EQ2StackTest2,%A
jmp
nop
EQStackTest2:
leaw $SP,%A
subw (%A),$1,%A
movw $-1,(%A)
EQ2StackTest2:
; 9 - PUSH constant 892
leaw $892,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 10 - PUSH constant 891
leaw $891,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 11 - LT
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
subw (%A),%D,%D
leaw $LTStackTest3,%A
jl %D
nop
leaw $SP,%A
subw (%A),$1,%A
movw $0,(%A)
leaw $LT2StackTest3,%A
jmp
nop
LTStackTest3:
leaw $SP,%A
subw (%A),$1,%A
movw $-1,(%A)
LT2StackTest3:
; 12 - PUSH constant 891
leaw $891,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 13 - PUSH constant 892
leaw $892,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 14 - LT
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
subw (%A),%D,%D
leaw $LTStackTest4,%A
jl %D
nop
leaw $SP,%A
subw (%A),$1,%A
movw $0,(%A)
leaw $LT2StackTest4,%A
jmp
nop
LTStackTest4:
leaw $SP,%A
subw (%A),$1,%A
movw $-1,(%A)
LT2StackTest4:
; 15 - PUSH constant 891
leaw $891,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 16 - PUSH constant 891
leaw $891,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 17 - LT
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
subw (%A),%D,%D
leaw $LTStackTest5,%A
jl %D
nop
leaw $SP,%A
subw (%A),$1,%A
movw $0,(%A)
leaw $LT2StackTest5,%A
jmp
nop
LTStackTest5:
leaw $SP,%A
subw (%A),$1,%A
movw $-1,(%A)
LT2StackTest5:
; 18 - PUSH constant 32767
leaw $32767,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 19 - PUSH constant 32766
leaw $32766,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 20 - GT
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
subw (%A),%D,%D
leaw $GTStackTest6,%A
jg %D
nop
leaw $SP,%A
subw (%A),$1,%A
movw $0,(%A)
leaw $GT2StackTest6,%A
jmp
nop
GTStackTest6:
leaw $SP,%A
subw (%A),$1,%A
movw $-1,(%A)
GT2StackTest6:
; 21 - PUSH constant 32766
leaw $32766,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 22 - PUSH constant 32767
leaw $32767,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 23 - GT
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
subw (%A),%D,%D
leaw $GTStackTest7,%A
jg %D
nop
leaw $SP,%A
subw (%A),$1,%A
movw $0,(%A)
leaw $GT2StackTest7,%A
jmp
nop
GTStackTest7:
leaw $SP,%A
subw (%A),$1,%A
movw $-1,(%A)
GT2StackTest7:
; 24 - PUSH constant 32766
leaw $32766,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 25 - PUSH constant 32766
leaw $32766,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 26 - GT
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
subw (%A),%D,%D
leaw $GTStackTest8,%A
jg %D
nop
leaw $SP,%A
subw (%A),$1,%A
movw $0,(%A)
leaw $GT2StackTest8,%A
jmp
nop
GTStackTest8:
leaw $SP,%A
subw (%A),$1,%A
movw $-1,(%A)
GT2StackTest8:
; 27 - PUSH constant 57
leaw $57,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 28 - PUSH constant 31
leaw $31,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 29 - PUSH constant 53
leaw $53,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 30 - ADD
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
addw (%A),%D,%D
movw %D,(%A)
; 31 - PUSH constant 112
leaw $112,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 32 - SUB
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
subw (%A),%D,%D
movw %D,(%A)
; 33 - NEG
leaw $SP,%A
subw (%A),$1,%A
movw (%A),%D
negw %D
movw %D,(%A)
; 34 - AND
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
andw (%A),%D,%D
movw %D,(%A)
; 35 - PUSH constant 82
leaw $82,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 36 - OR
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
orw (%A),%D,%D
movw %D,(%A)
; 37 - NOT
leaw $SP,%A
subw (%A),$1,%A
movw (%A),%D
notw %D
movw %D,(%A)
; End

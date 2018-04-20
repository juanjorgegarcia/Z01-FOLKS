INICIO:
leaw $R0, %A
movw (%A), %S
leaw $R1, %A
subw %S, (%A), %D
leaw %PLUS, %A
jge %D
nop
MINUS:
leaw $R1, %A
movw (%A), %S
leaw $END, %A
jmp
nop
PLUS:
leaw %R0, %A
movw (%A), %S
leaw $END, %A
jmp
nop
END:
leaw $R2, %A
movw %S, (%A)














































































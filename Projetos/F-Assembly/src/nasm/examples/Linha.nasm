; carrega x"FF" em S (todos pxs em '1')
  leaw $0, %A
  movw %A, %S
  notw %S

  ; linha 1
  leaw $17389, %A  ;16384
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
	movw %S, (%A)
  incw %A
  movw %S, (%A)

  leaw $17409, %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
	movw %S, (%A)
  incw %A
  movw %S, (%A)


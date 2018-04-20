; carrega x"FF" em S (todos pxs em '1')
  leaw $0, %A
  movw %A, %S
  notw %S

  ; linha 
  leaw $18815, %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  
  

  ;; linha 
  leaw $18835, %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  
  

  ;;  linha 
  leaw $18855, %A
  movw %S, (%A)

  
  ;; linha 
  leaw $18875, %A
  movw %S, (%A)

  
  ;; linha 
  leaw $18895, %A
  movw %S, (%A)
  

  ;; linha 
  leaw $18915, %A
  movw %S, (%A)


  ; linha 
  leaw $18935, %A
  movw %S, (%A)
  

  ; linha 
  leaw $18955, %A
  movw %S, (%A)
  

  ; linha 
  leaw $18975, %A
  movw %S, (%A)
  

  ; linha 
  leaw $18995, %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  
  
  
  

	;; linha 
	leaw $19015, %A
	movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  
  
  

  
  
	;; linha 
	leaw $19035, %A
	movw %S, (%A)

  

	;; linha 
	leaw $19055, %A
	movw %S, (%A)

	
  
	;; linha 
	leaw $19075, %A
	movw %S, (%A)

	

	;; linha 
	leaw $19095, %A
	movw %S, (%A)

	

	;; linha 
	leaw $19115, %A
	movw %S, (%A)

	leaw $19135, %A
  movw %S, (%A)

  leaw $19155, %A
  movw %S, (%A)

  leaw $19175, %A
  movw %S, (%A)

  leaw $19195, %A
  movw %S, (%A)

  leaw $19215, %A
  movw %S, (%A)
  
  leaw $19235, %A
  movw %S, (%A)
  
  leaw $19255, %A
  movw %S, (%A)
  
  leaw $19275, %A
  movw %S, (%A)
  
  leaw $19295, %A
  movw %S, (%A)
  
  leaw $19315, %A
  movw %S, (%A)
  
  leaw $19335, %A
  movw %S, (%A)
  
  leaw $19355, %A
  movw %S, (%A)

  leaw $19375, %A
  movw %S, (%A)

  leaw $19395, %A
  movw %S, (%A)

  leaw $19415, %A
  movw %S, (%A)

  leaw $19435, %A
  movw %S, (%A)
  


  ;;LEDs
  ;; endereco 21184
  leaw $5, %A
  movw %A, %S
  leaw %21184, %A
  movw %S, (%A)

/**
 * Curso: Elementos de Sistemas
 * Arquivo: Code.java
 */

package assembler;


/**
 * Traduz mnemÃ´nicos da linguagem assembly para cÃ³digos binÃ¡rios da arquitetura Z0.
 */


public class Code {
	
	public String instruction = new String();
	
	
    /**
     * Retorna o cÃ³digo binÃ¡rio do(s) registrador(es) que vÃ£o receber o valor da instruÃ§Ã£o.
     * @param  mnemnonic vetor de mnemÃ´nicos "instruÃ§Ã£o" a ser analisada.
     * @return Opcode (String de 4 bits) com cÃ³digo em linguagem de mÃ¡quina para a instruÃ§Ã£o.
     */
    public static String dest(String[] mnemnonic) {
    	
    	int length = mnemnonic.length - 1;
    	StringBuilder myName = new StringBuilder("0000");
    	
    	boolean bool = false; // Para os casos de incw, negw, etc. q tem apenas 2 de .length
    	if (length == 1){
    		bool = true;
    	}
    	while (length >= 2 | bool == true) {
    	if (mnemnonic[length].equals( "%A")){
    		myName.setCharAt(0, '1');
    	} else if (mnemnonic[length].equals( "%S")){
    		myName.setCharAt(1, '1');
    	} else if (mnemnonic[length].equals( "%D")){
    		myName.setCharAt(2, '1');
    	} else if (mnemnonic[length].equals( "(%A)")){
    		myName.setCharAt(3, '1');
    	}
    	bool = false;
    	if (mnemnonic[0] != "movw"){
    		length = 1;
    	}
    	length -= 1;
    	}
    	return myName.toString(); 
    }
    
    /**
     * Retorna o cÃ³digo binÃ¡rio do mnemÃ´nico para realizar uma operaÃ§Ã£o de cÃ¡lculo.
     * @param  mnemnonic vetor de mnemÃ´nicos "instruÃ§Ã£o" a ser analisada.
     * @return Opcode (String de 8 bits) com cÃ³digo em linguagem de mÃ¡quina para a instruÃ§Ã£o.
     */
    public static String comp(String[] mnemnonic) {
    	StringBuilder binCalc = new StringBuilder("10000000");
 
    	
    	int length = mnemnonic.length - 1;

    	// A e B
    	if (length == 1) {
    		if (mnemnonic[1].equals( "%A") | mnemnonic[1].equals( "%D")){
        		binCalc.setCharAt(0, '0');
        	} else if(mnemnonic[1].equals( "%S")){
        		binCalc.setCharAt(0, '0');
        		binCalc.setCharAt(1, '1');
        	}
    	} else if(mnemnonic[0].equals( "movw")){
    		if ((mnemnonic[1].equals( "%A"))|(mnemnonic[1].equals( "%D"))){
    			binCalc.setCharAt(0, '0');
    		} else if(mnemnonic[1].equals( "%S")){
    			binCalc.setCharAt(0, '0');
    			binCalc.setCharAt(1, '1');
    		}
    	} else if(length >= 2) {
    		if ((mnemnonic[1].equals( "%A") & mnemnonic[2].equals( "%D"))|(mnemnonic[2].equals( "%A") & mnemnonic[1].equals( "%D"))){
    			binCalc.setCharAt(0, '0');
    		} else if ((mnemnonic[1].equals( "%A") & mnemnonic[2].equals( "%S"))|(mnemnonic[2].equals( "%A") & mnemnonic[1].equals( "%S"))){
    			binCalc.setCharAt(0, '0');
    			binCalc.setCharAt(1, '1');
    		} else if ((mnemnonic[1].equals( "(%A)") & mnemnonic[2].equals( "%S"))|(mnemnonic[2].equals("(%A)") & mnemnonic[1].equals( "%S"))){
    			binCalc.setCharAt(1, '1');
    		}
    	} else if(mnemnonic.length == 1){
    		if (mnemnonic[0].equals( "nop")){
    			binCalc.setCharAt(2, '1');
    			binCalc.setCharAt(4, '1');
    			binCalc.setCharAt(6, '1');
    		} else {
    			binCalc.setCharAt(0, '0');
        		binCalc.setCharAt(2, '1');
        		binCalc.setCharAt(3, '1');
    		}
    		
    	}
    	
    	
    	
    	
    	if ((mnemnonic[0].equals( "incw"))){
    		binCalc.setCharAt(3, '1');
    		if (mnemnonic[1].equals( "%A") | mnemnonic[1].equals( "(%A)")){
    			binCalc.setCharAt(2, '1');
    			binCalc.setCharAt(4, '1');
    		} else{
    			binCalc.setCharAt(2, '0');
    			binCalc.setCharAt(4, '1');
				binCalc.setCharAt(5, '1');
    		}

    		binCalc.setCharAt(6, '1');
    		binCalc.setCharAt(7, '1');
    	}
    	
    	if ((mnemnonic[0].charAt(0) == 'j') & (length > 0) ){
    		if (mnemnonic[1].equals( "%S")){
    			binCalc.setCharAt(1, '1');
    		}
    		binCalc.setCharAt(4, '1');
    		binCalc.setCharAt(5, '1');
    	}
    	
    	if ((mnemnonic[0].equals( "decw"))){
    		binCalc.setCharAt(6, '1');
    		if (mnemnonic[1].equals( "%A") | mnemnonic[1].equals( "(%A)")){
    			binCalc.setCharAt(2, '1');
    			binCalc.setCharAt(3, '1');
    		} else{
    			binCalc.setCharAt(4, '1');
    			binCalc.setCharAt(5, '1');
    		}
    	}
    	
    	if ((mnemnonic[0].equals( "notw"))){
    		binCalc.setCharAt(7, '1');
    		if (mnemnonic[1].equals( "%A") | mnemnonic[1].equals( "(%A)")){
    			binCalc.setCharAt(2, '1');
    			binCalc.setCharAt(3, '1');
    		} else{
    			binCalc.setCharAt(4, '1');
    			binCalc.setCharAt(5, '1');
    		}
    	}
    	
    	if ((mnemnonic[0].equals( "negw"))){
    		binCalc.setCharAt(7, '1');
    		binCalc.setCharAt(6, '1');
    		if (mnemnonic[1].equals( "%A") | mnemnonic[1].equals( "(%A)")){
    			binCalc.setCharAt(2, '1');
    			binCalc.setCharAt(3, '1');
    		} else{
    			binCalc.setCharAt(4, '1');
    			binCalc.setCharAt(5, '1');
    		}
    	}
    	
    	if ((mnemnonic[0].equals( "orw"))){
    		binCalc.setCharAt(3, '1');
    		binCalc.setCharAt(5, '1');
    		binCalc.setCharAt(7, '1');
    	}
    	
    	if ((mnemnonic[0].equals( "nop"))){
    		binCalc.setCharAt(2, '1');
    		binCalc.setCharAt(4, '1');
    		binCalc.setCharAt(6, '1');
    	}
    	
    	if ((mnemnonic[0].equals( "movw"))){
    		binCalc.setCharAt(5, '0');
    		binCalc.setCharAt(6, '0');
    		if (mnemnonic[1].equals( "%A") | mnemnonic[1].equals( "(%A)")){
    			binCalc.setCharAt(2, '1');
    			binCalc.setCharAt(3, '1');
    		} else {
    			binCalc.setCharAt(4, '1');
    			binCalc.setCharAt(5, '1');
    		}
    	}
    	
    	if ((mnemnonic[0].equals( "subw"))){
    		binCalc.setCharAt(6, '1');
			binCalc.setCharAt(7, '1'); //caso normal
			if (mnemnonic[1].equals( "%A")| mnemnonic[1].equals( "(%A)")){
				binCalc.setCharAt(5, '1');
			} else{
				binCalc.setCharAt(3, '1');
			}
			if(mnemnonic[2].equals( "$1")) {
				binCalc.setCharAt(2, '1');
				binCalc.setCharAt(3, '1');
				binCalc.setCharAt(5, '0');
				binCalc.setCharAt(7, '0');
			}
    	}
    	
    	if ((mnemnonic[0].equals( "rsubw"))){
    		binCalc.setCharAt(6, '1');
			binCalc.setCharAt(7, '1');
			if (mnemnonic[1].equals( "%S")| mnemnonic[1].equals( "%D")){
				binCalc.setCharAt(5, '1');
			} else{
				binCalc.setCharAt(3, '1');
			}
    	}
    	
    	if (mnemnonic[0].equals( "addw")){
    		binCalc.setCharAt(6, '1');
    	}
    	
    	System.out.println(mnemnonic[0]);
    	//System.out.println(mnemnonic[0].substring(0,1));
    	System.out.println(binCalc);
    	
    	return binCalc.toString();
    }

    /**
     * Retorna o cÃ³digo binÃ¡rio do mnemÃ´nico para realizar uma operaÃ§Ã£o de jump (salto).
     * @param  mnemnonic vetor de mnemÃ´nicos "instruÃ§Ã£o" a ser analisada.
     * @return Opcode (String de 3 bits) com cÃ³digo em linguagem de mÃ¡quina para a instruÃ§Ã£o.
     */
    public static String jump(String[] mnemnonic) {
    	int length = mnemnonic.length;
    	for (int i = 0; i < length ; i++){
    		   if (mnemnonic[i].equals( "jmp")){
    			   return "111";
    		   } else if(mnemnonic[i].equals( "je")) {
    			   return "010";
    		   } else if(mnemnonic[i].equals( "jne")) {
    			   return "101";
    		   } else if(mnemnonic[i].equals( "jg")) {
    			   return "001";
    		   } else if(mnemnonic[i].equals( "jge")) {
    			   return "011";
    		   } else if(mnemnonic[i].equals( "jl")) {
    			   return "100";
    		   } else if(mnemnonic[i].equals( "jle")) {
    			   return "110";
    		   }
    	
    		}
    	return "000";
    }

    /**
     * Retorna o cÃ³digo binÃ¡rio de um valor decimal armazenado numa String.
     * @param  symbol valor numÃ©rico decimal armazenado em uma String.
     * @return Valor em binÃ¡rio (String de 15 bits) representado com 0s e 1s.
     */
    public static String toBinary(String symbol) {
    	return String.format("%15s", Integer.toBinaryString(Integer.parseInt(symbol))).replace(' ', '0');
    }
    

    
    
    public static String encoder(String string){
    	//String 
    	
    	return null;
    }
}



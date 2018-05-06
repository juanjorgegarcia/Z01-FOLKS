/**
 * Curso: Elementos de Sistemas
 * Arquivo: SymbolTable.java
 */

package assembler;

import java.util.HashMap;

/**
 * Mantém uma tabela com a correspondência entre os rótulos simbólicos e endereços numéricos de memória.
 */
public class SymbolTable {
	
	HashMap<String, Integer> symbolT = new HashMap<String, Integer>();
    /**
     * Cria a tabela de símbolos.
     */
    public SymbolTable() {

    	symbolT.put("R0", 0);
    	symbolT.put("R1", 1);
    	symbolT.put("R2", 2);
    	symbolT.put("R3", 3);
    	symbolT.put("R4", 4);
    	symbolT.put("R5", 5);
    	symbolT.put("R6", 6);
    	symbolT.put("R7", 7);
    	symbolT.put("R8", 8);
    	symbolT.put("R9", 9);
    	symbolT.put("R10", 10);
    	symbolT.put("R11", 11);
    	symbolT.put("R12", 12);
    	symbolT.put("R13", 13);
    	symbolT.put("R14", 14);
    	symbolT.put("R15", 15);
    	symbolT.put("SP", 0);
    	symbolT.put("LCL", 1);
    	symbolT.put("ARG", 2);
    	symbolT.put("THIS", 3);
    	symbolT.put("THAT", 4);
    	symbolT.put("SCREEN", 16384);
    	symbolT.put("LED", 21184);
    	symbolT.put("SW", 21185);
    }

    /**
     * Insere uma entrada de um símbolo com seu endereço numérico na tabela de símbolos.
     * @param  symbol símbolo a ser armazenado na tabela de símbolos.
     * @param  address símbolo a ser armazenado na tabela de símbolos.
     */
    public void addEntry(String symbol, int address) {
    	symbolT.put(symbol, address);
    }

    /**
     * Confere se o símbolo informado já foi inserido na tabela de símbolos.
     * @param  symbol símbolo a ser procurado na tabela de símbolos.
     * @return Verdadeiro se símbolo está na tabela de símbolos, Falso se não está na tabela de símbolos.
     */
    public Boolean contains(String symbol) {
    	return symbolT.containsKey(symbol);
    }

    /**
     * Retorna o valor númerico associado a um símbolo já inserido na tabela de símbolos.
     * @param  symbol símbolo a ser procurado na tabela de símbolos.
     * @return valor numérico associado ao símbolo procurado.
     */
    public Integer getAddress(String symbol) {
    	return symbolT.get(symbol);
    	
    }

}

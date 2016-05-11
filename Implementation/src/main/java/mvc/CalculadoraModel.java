package mvc;

public class CalculadoraModel {

	public static int Calcular(int op1, int op2, String operacao){
		
		if(operacao.equals("+")){ return op1 + op2;}
		
		if(operacao.equals("-")) return op1 - op2;
		
		if(operacao.equals("*")) return op1 * op2;
		
		if(operacao.equals("/")) return op1 / op2;
		
		return 0;
		
	}
}

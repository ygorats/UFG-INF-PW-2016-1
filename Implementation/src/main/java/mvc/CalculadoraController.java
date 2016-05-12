package mvc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/calculadora")
public class CalculadoraController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int op2 =  Integer.parseInt(ObtemValor(req.getParameter("operador2"), "0"));
		
		int op1 = Integer.parseInt(ObtemValor(req.getParameter("operador1"), "0"));

		String operacao = ObtemValor(req.getParameter("operacao"), "+");
		
		int resultado = CalculadoraModel.Calcular(op1, op2, operacao);
		
		req.setAttribute("resultado", resultado);
		
		req.getRequestDispatcher("CalculadoraView.jsp").forward(req, resp);

	}

	
	public String ObtemValor(String parametro, String padrao){
		
		if((parametro == null) || (parametro == "")) return padrao;
		
		return parametro;
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}

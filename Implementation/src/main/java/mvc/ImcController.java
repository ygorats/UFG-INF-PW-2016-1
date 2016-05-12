package mvc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/imc")
public class ImcController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		double peso = ObtemValor(req.getParameter("peso"), 0);
		
		double altura = ObtemValor(req.getParameter("altura"), 1);
		
		
		double resultado = ImcModel.Calcular(peso,
						  					 altura);
				
		req.setAttribute("resultado", resultado);
		
		req.getRequestDispatcher("ImcView.jsp").forward(req, resp);
		
	
		
	}
	
	
	public double ObtemValor(String parametro, double padrao){
		
		if((parametro == null) || (parametro == "0")) return padrao;
		
		return Double.parseDouble(parametro);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
}

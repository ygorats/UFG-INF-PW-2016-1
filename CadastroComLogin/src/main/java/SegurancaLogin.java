import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebFilter("/*")
public class SegurancaLogin implements Filter{
	 
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws ServletException, IOException {
		//  ao request e ao response.
		
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;
		
		String requisicao = request.getRequestURI();

		
		
		// a  corrente. Caso  exista, retorna "null".
		HttpSession session = request.getSession(false);
		// de login.
		String loginUri = request.getContextPath() + "/login";
		
		
		boolean loggedIn = session != null && session.getAttribute("usuario") != null;

		boolean loginRequest = request.getRequestURI().equals(loginUri);
		
		
		boolean dbclient = request.getRequestURI().equals("/CadastroComLogin/dbclient");
		

		/*if (requisicao.equals("/CadastroComLogin/dbclient")){
			String dbReq = request.getContextPath() + "/dbclient";
			response.sendRedirect(dbReq);
		}*/
		
		//Se estiver logado ou se for a a de login.
		if (loggedIn || loginRequest || dbclient) {
			//Segue adiante.
			chain.doFilter(request, response);			
		} else {
			//Redireciona para o login.
			response.sendRedirect(loginUri);
		}
	}

	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}
	

}

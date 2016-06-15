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
		//Obtém referências ao request e ao response.
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;

		//Obtém a sessão corrente. Caso não exista, retorna "null".
		HttpSession session = request.getSession(false);
		//Endereço de login.
		String loginUri = request.getContextPath() + "/login";

		
		boolean loggedIn = session != null && session.getAttribute("usuario") != null;

		boolean loginRequest = request.getRequestURI().equals(loginUri);

		//Se estiver logado ou se for a página de login.
		if (loggedIn || loginRequest) {
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

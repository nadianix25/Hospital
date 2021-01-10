package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Account_manager
 */
@WebServlet("/site/home/security")
public class SecurityController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SecurityController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action= request.getParameter("action");
		action= action==null?"":action;
		
		
       	switch (action) {
    	case "login":
    		login(request, response);
    		break;
    	case "logout":
    		logout(request, response);
    		break;
    	case "updatePass":
    		updatePass(request, response);
    		break;
       	}
		
		
		
		
	
	}

	private void updatePass(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		// TODO Auto-generated method stub
		String oldpass= (String) request.getParameter("_oPass");
		String newpass= (String) request.getParameter("_nPass");
		String confpass= (String) request.getParameter("_cPass");
		/*temos de pesquisar primeiro, na bd, se a pass introduzida como antiga é a pass atual, se não for mandamos de vola para a mesma página
		 * com indicação de erro na introdução da pass atual, se não der erro aí é que fazemos o que está abaixo
		 */
		if(newpass.equals(confpass)) {
			response.sendRedirect("home");
		}else {
			request.setAttribute("erro", "A pass e a sua confirmação não são iguais");
			request.setAttribute("render", "views/Alterar_password.jsp");
			request.getRequestDispatcher("others/Index_others.jsp").forward(request, response);
		}
	}

	private void logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.getSession().removeAttribute("userName");
		response.sendRedirect("home");
		
	}

	private void login(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		// TODO Auto-generated method stub
		
		
		// validacao base de dados
		String username = request.getParameter("iptNomeUtilizador");
		String password = request.getParameter("iptPassword");
		if(username.equals("admin") && password.equals("123")) {/*provisorio*/
			request.setAttribute("userName", username);
			request.setAttribute("log", true);

			//request.setAttribute("render", "/views/consultas.jsp");
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		}else {
			
			request.setAttribute("erro", "Username ou password incorretos");
			request.setAttribute("render", "/site/home/views/Login.jsp");
			//request.getRequestDispatcher("account/Login.jsp").forward(request, response);
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}


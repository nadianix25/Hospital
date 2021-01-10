package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Account
 */
@WebServlet("/account")
public class AccountController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AccountController() {
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
    	case "Home":
    		home(request, response);
    		break;
    		
    	case "Consultas":
    		consultas(request, response);
    		break;
    		
       	case "Exames":
    		exames(request, response);
    		break;
    		
    	case "Historico":
    		historico(request, response);
    		break;
    		
    		
    	case "Receitas":
    		receitas(request, response);
    		break;

    	case "Definicoes":
    		definicoes(request, response);
    		break;
    		
    	case "Alterar_password":
    		Alterar_passPage(request, response);
    		break;

    		
     	case "Update_pass":
    		Update_pass(request, response);
    		break;

       	
       	}
		
	}
	
	
	private void Alterar_passPage(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		// TODO Auto-generated method stub
	
		request.setAttribute("render", "/site/account/views/Alterar_password.jsp");
		//request.getRequestDispatcher("account/Login.jsp").forward(request, response);
		
		request.getRequestDispatcher("/site/account/home.jsp").forward(request, response);
		
	}
	
	private void Update_pass(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		// TODO Auto-generated method stub
		
		request.setAttribute("render", "/site/home/views/Login.jsp");

		//request.getRequestDispatcher("account/Login.jsp").forward(request, response);
		
		request.getRequestDispatcher("/index.jsp").forward(request, response);
		
	}

	private void home(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setAttribute("render", "/site/account/views/index.jsp");
		//request.getRequestDispatcher("account/Login.jsp").forward(request, response);
		request.getRequestDispatcher("/site/account/home.jsp").forward(request, response);

	}
	private void consultas(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setAttribute("render", "/site/account/views/Consultas.jsp");
		//request.getRequestDispatcher("account/Login.jsp").forward(request, response);
		request.getRequestDispatcher("/site/account/home.jsp").forward(request, response);

	}
	
	private void exames(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setAttribute("render", "/site/account/views/Exames.jsp");
		//request.getRequestDispatcher("account/Login.jsp").forward(request, response);
		request.getRequestDispatcher("/site/account/home.jsp").forward(request, response);

	}
	
	private void historico(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setAttribute("render", "/site/account/views/Historico.jsp");
		//request.getRequestDispatcher("account/Login.jsp").forward(request, response);
		request.getRequestDispatcher("/site/account/home.jsp").forward(request, response);

	}
	
	private void receitas(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setAttribute("render", "/site/account/views/Receitas.jsp");
		//request.getRequestDispatcher("account/Login.jsp").forward(request, response);
		request.getRequestDispatcher("/site/account/home.jsp").forward(request, response);

	}
	
	private void definicoes(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setAttribute("render", "/site/account/views/Definicoes.jsp");
		//request.getRequestDispatcher("account/Login.jsp").forward(request, response);
		request.getRequestDispatcher("/site/account/home.jsp").forward(request, response);

	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

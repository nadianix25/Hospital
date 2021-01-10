package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Home
 */
@WebServlet("/Home")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		action= action==null?"":action;
		

     	switch (action) {
    	case "login":
    		loginPage(request, response);
    		break;
    	case "registos":
    		RegistoPage(request, response);
    		break;	
    		
     	case "registo":
    		Registo(request, response);
    		break;	
    		
       	}
		
	

	}

	private void goHome(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//request.setAttribute("render", "/views/Carrocel.jsp");
		//request.getRequestDispatcher("/index.jsp").forward(request, response);
	}
	
	private void loginPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//request.setAttribute("render", "/views/Carrocel.jsp");
		//request.getRequestDispatcher("/index.jsp").forward(request, response);
		
		request.setAttribute("render", "/site/home/views/Login.jsp");
		//request.getRequestDispatcher("account/Login.jsp").forward(request, response);
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}
	
	
	private void RegistoPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//request.setAttribute("render", "/views/Carrocel.jsp");
		//request.getRequestDispatcher("/index.jsp").forward(request, response);
		
		request.setAttribute("render", "/site/home/views/Registo.jsp");
		//request.getRequestDispatcher("account/Login.jsp").forward(request, response);
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}
	
	private void Registo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//request.setAttribute("render", "/views/Carrocel.jsp");
		//request.getRequestDispatcher("/index.jsp").forward(request, response);
		
		request.setAttribute("render", "/site/home/views/Login.jsp");
		//request.getRequestDispatcher("account/Login.jsp").forward(request, response);
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

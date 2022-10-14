package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;
import model.UserDao;

@WebServlet("/loginserv")
public class LoginServ extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String CRN= String.valueOf(request.getParameter("CRN"));
		String password=request.getParameter("password");
		
		if(new UserDao().checkUser(CRN, password))
		{
			  HttpSession session=request.getSession();  
		       session.setAttribute("CRN",CRN);  
		       session.setAttribute("password",password); 
		       		    		   
		       out.print(CRN + " "+ password);
		       
			response.sendRedirect("userDashBoard.jsp");
		}
		else
		{
			out.print("User not valid");
			request.getRequestDispatcher("index.jsp").include(request, response);
		}
		
		
		
	}
}

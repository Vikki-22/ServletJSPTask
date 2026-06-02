package Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import Entity.User;
import ModelDao.userDao;

@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
   
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	String name= request.getParameter("name");
	String email= request.getParameter("email");
	String password= request.getParameter("password");
	userDao dao= new userDao();
	User u=new User(name, email, password) ;
	int i=dao.usercreate( u);
	if (i != 0) {
		response.sendRedirect("login.jsp");
	}
	else {
		System.out.println("Something went wrong......");
	}
	}

}

package Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import org.mindrot.jbcrypt.BCrypt;

import ModelDao.userDao;


@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("login.jsp");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		userDao dao=new userDao();
	
	String dbpass=dao.login(email);
		if(BCrypt.checkpw(password, dbpass))
		{
			HttpSession session  = request.getSession();
			session.setAttribute("email", email);
			request.setAttribute("email", email);
			request.getRequestDispatcher("menu.jsp").forward(request, response);
		}
		
		else {
			response.sendRedirect("login.jsp");
		}
		
		
	}

}

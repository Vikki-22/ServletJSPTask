package Controller;


import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import Entity.student;
import ModelDao.Insertdata;


@WebServlet("/abc")
public class simpleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
 

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	     String name=request.getParameter("name");
	     int age =  Integer.parseInt(request.getParameter("age"));
	     String course=request.getParameter("course");
	    		 student s=new student(name, age, course);
	            Insertdata dao= new Insertdata();
	            PrintWriter out=response.getWriter();
	            int i=0;
	            i=dao.insert(s);
	        if (i != 0) {
				request.getRequestDispatcher("SecondServlet").forward(request, response);
			} else {
				out.println("<h1> something went wrong </h1>");
			}
	  
	}

}

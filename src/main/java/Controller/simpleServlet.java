package Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

import Entity.student;
import ModelDao.Insertdata;

@WebServlet("/abc")
public class simpleServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String name = request.getParameter("name");
			int age = Integer.parseInt(request.getParameter("age"));
			String course = request.getParameter("course");
			student s = new student(name, age, course);
			Insertdata dao = new Insertdata();
			int i = dao.insert(s);
			if (i > 0) {
				response.sendRedirect("SecondServlet");
			} else {
				response.getWriter().println("<h1>Data Not Inserted</h1>");
			}
		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().println("<h1>Error : " + e.getMessage() + "</h1>");
		}
	}
}
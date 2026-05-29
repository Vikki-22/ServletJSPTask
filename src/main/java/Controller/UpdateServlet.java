package Controller;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import Entity.student;
import ModelDao.Insertdata;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Insertdata dao = new Insertdata();
	protected void doGet(HttpServletRequest request,HttpServletResponse response)
			throws ServletException, IOException {
		int i =Integer.parseInt(request.getParameter("id"));
		student s =dao.getStudentById(i);
		request.setAttribute("student", s);
		request.getRequestDispatcher("update.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request,HttpServletResponse response)
			throws ServletException, IOException {
		int id =Integer.parseInt(request.getParameter("id"));
		String name =request.getParameter("name");
		int age =Integer.parseInt(request.getParameter("age"));
		String course =request.getParameter("course");
		student s =new student(id, name, age, course);
		dao.updateStudent(s);
		response.sendRedirect("SecondServlet");

	}

}
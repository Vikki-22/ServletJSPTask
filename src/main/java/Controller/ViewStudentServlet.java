package Controller;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import Entity.student;
import ModelDao.Insertdata;

@WebServlet("/ViewStudentServlet")
public class ViewStudentServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		
        int page = 1;
        int recordsPerPage = 10;
        String pageParam = request.getParameter("page");
        if (pageParam != null) {
            page = Integer.parseInt(pageParam);
        }
        int start = (page - 1) * recordsPerPage;
        Insertdata dao = new Insertdata();
        List<student> ls = dao.getStudentsByPage(start);
        request.setAttribute("page", page);
        request.setAttribute("List", ls);
		RequestDispatcher rd = request.getRequestDispatcher("read.jsp");
		rd.forward(request, response);

    }
}
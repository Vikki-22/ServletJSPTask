package Controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.LinkedList;

import Entity.student;
import ModelDao.Insertdata;

@WebServlet("/SecondServlet")
public class SecondServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    Insertdata dao = new Insertdata();

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        LinkedList<student> ls =
        dao.getAllStudents();

        request.setAttribute("List", ls);

        RequestDispatcher rd =
        request.getRequestDispatcher("read.jsp");

        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        doGet(request, response);
    }
}
package Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;

import Entity.student;
import ModelDao.Insertdata;

@WebServlet("/SecondServlet")
public class SecondServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private Insertdata dao = new Insertdata();

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");

        LinkedList<student> ls = dao.getAllStudents();

        PrintWriter out = response.getWriter();

        for (student a : ls) {

            out.println(
                    a.getId() + " " +
                    a.getName() + " " +
                    a.getAge() + " " +
                    a.getCourse()
                    +"<br><br>"                    
            );
         
        }
    }

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        doPost(request, response);
    }
}
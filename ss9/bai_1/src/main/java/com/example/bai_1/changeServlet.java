package com.example.bai_1;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "changeServlet", value = "/changeServlet")
public class changeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    double price = Double.parseDouble(request.getParameter("money")) ;
    double percent = Double.parseDouble(request.getParameter("Percent")) ;
    double amount = price * percent * 0.01;
    double total = price - amount;
   request.setAttribute("total", total);
   request.setAttribute("amount", amount);
   RequestDispatcher requestDispatcher = request.getRequestDispatcher("quyCute.jsp");
   requestDispatcher.forward(request, response);
    }
}

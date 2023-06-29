package com.example.demo2;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "changeServlet", value = "/changeServlet")
public class changeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    float rate = Float.parseFloat(request.getParameter("rate"));
    float usd = Float.parseFloat(request.getParameter("usd"));
    float vnd = rate * usd;
        PrintWriter writer = response.getWriter();
        writer.println("<html");
        writer.println("<h1>rate :" + rate + "</h1>");
        writer.println("<h1>usd :" + usd + "</h1>");
        writer.println("<h1>vnd :" + vnd + "</h1>");
        writer.println("</html");
    }
}

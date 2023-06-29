package com.example.bai1;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "changeServlet", value = "/changeServlet")
public class changeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, String> map = new HashMap<>();
        map.put("hello", "Xin chào");
        map.put("how", "Thế nào");
        map.put("book", "Quyển vở");
        map.put("computer", "Máy tính");
        String search = request.getParameter("txtSearch");
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        String result = map.get(search);
        if (result != null){
            writer.println("word" + search);
            writer.println("result" + result);
        } else {
                writer.println("not fond");
        }
        writer.println("</html>");

    }
}

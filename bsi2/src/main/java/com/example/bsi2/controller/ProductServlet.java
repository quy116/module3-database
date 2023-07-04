package com.example.bsi2.controller;

import com.example.bsi2.model.Product;
import com.example.bsi2.service.IProductService;
import com.example.bsi2.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;



@WebServlet(name = "ProductServlet", value = "/ProductServlet")
public class ProductServlet extends HttpServlet {
    IProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "showFormCreate":
                showFormCreate(request, response);
                break;
            case "edit":
                showFormEdit(request, response);
                break;
            case "delete":
                delete(request, response);
                showList(request, response);
                break;
            case "find":

                break;
            default:
                showList(request, response);
                break;
        }
    }



    private void showFormEdit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String quantity = request.getParameter("quantity");
        String price =request.getParameter("price");
        request.setAttribute("id", id);
        request.setAttribute("name", name);
        request.setAttribute("quantity", quantity);
        request.setAttribute("price", price);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/edit.jsp");
        requestDispatcher.forward(request, response);

    }

    private void showFormCreate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/add.jsp");
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                create(request, response);
//                showCreate();
                break;
            case "edit":
                editProduct(request, response);
//                showList(request,response);
                break;
            case "delete":

                break;
            case "find":
                findMyName(request,response);
                break;
            default:
                showList(request, response);
                break;
        }
    }
    private void findMyName(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException  {

        String name = request.getParameter("find");
        List<Product> productList = productService.getProductByName(name);
        request.setAttribute("productList", productList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/search.jsp");
        requestDispatcher.forward(request,response);
//        request.setAttribute("list", list);
//        String msg = request.getParameter("msg");
//        request.setAttribute("msg", msg);
//        RequestDispatcher requestDispatcher = request.getRequestDispatcher("list.jsp");
//        requestDispatcher.forward(request, response);
    }
    private void editProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String id = request.getParameter("id");
      String name = request.getParameter("name");
      String quanlity = request.getParameter("quanlity");
      String price = request.getParameter("price");
      productService.editService(id, name,quanlity,price);
      response.sendRedirect("/ProductServlet?msg=them%20moi%20thanh%20cong");
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
        String id = request.getParameter("id");
        productService.deleteService(id);

    }

    private void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String quanlity = request.getParameter("quanlity");
        String price = request.getParameter("price");
        Product product = new Product(id, name, quanlity, price);
        productService.addService(product);

        try {
            response.sendRedirect("/ProductServlet?msg=them%20moi%20thanh%20cong");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> list = productService.getAllService();
        request.setAttribute("list", list);
        String msg = request.getParameter("msg");
        request.setAttribute("msg", msg);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("list.jsp");
        requestDispatcher.forward(request, response);
    }


}

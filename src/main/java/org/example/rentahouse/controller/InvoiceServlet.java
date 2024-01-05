package org.example.rentahouse.controller;

import org.example.rentahouse.models.Invoice;
import org.example.rentahouse.services.InvoiceServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import static jdk.nashorn.internal.objects.NativeString.search;

@WebServlet (name= "InvoiceServlet",urlPatterns = "/customer")
public class InvoiceServlet extends HttpServlet {
    InvoiceService invoiceService = new InvoiceServiceImpl();
    @Override
    protected void doGet (HttpServletRequest request , HttpServletResponse response) throws ServletException,IOException{
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action) {
            case "showCreateGet":
                try {
                    showCreateGet(request, response):

                } catch (SQLException e) {
                    throw new RuntimeException(e);
        }
                break;
            case "deleteInvoice":
                try {
                    deleteInvoice(request,response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            case "editInvoice":
                try {
                    editInvoice(request,response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;

            default:
                try {
                    showListInvoice(request,response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
        }
        }
    }

    private void editInvoice(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Invoice invoice = invoiceService.finById("id");
        request.setAttribute("ctm", invoice);
        request.setAttribute("ctm", invoiceService.findAll());
        request.getRequestDispatcher("/home/edit.jsp").forward(request,response);
    }

    private void deleteInvoice(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        invoiceService.delete(id);
        response.sendRedirect("/home");
    }

    private void showCreateGet(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        List<Invoice> customers = invoiceService.findAll();
        request.setAttribute("ctm",Invoice);
        request.getRequestDispatcher("/WEB-INF/home/add.jsp").forward(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "search":
                search(request,response);
                break;
            case "showCreatePost":
                try {
                    showCreatePost(request,response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            case "editInvoicePost":
                try {
                    editInvoice(request,response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;

        }
    }

}

package org.example.rentahouse.controller;

import org.example.rentahouse.models.Customer;
import org.example.rentahouse.services.CustomerService;
import org.example.rentahouse.services.CustomerServiceImpl;
import org.example.rentahouse.services.GeneralService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


@WebServlet(name = "CustomerServlet", urlPatterns = "/customer")
public class CustomerServlet extends HttpServlet {
    CustomerService customerService = new CustomerServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "showCreateGet":
                try {
                    showCreateGet(request,response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            case "deleteCustomer":
                try {
                    deleteCustomer(request,response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            case "editCustomer":
                try {
                    editCustomer(request,response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;

            default:
                try {
                    showListCustomer(request,response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
        }
    }

    private void editCustomer(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Customer customer = customerService.findById(id);
        request.setAttribute("ctm", customer);
        request.setAttribute("ctm", customerService.findAll());
        request.getRequestDispatcher("/home/edit.jsp").forward(request,response);
    }

    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        customerService.delete(id);
        response.sendRedirect("/home");
    }

    private void showCreateGet(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        List<Customer> customers = customerService.findAll();
        request.setAttribute("ctm", customers);
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
            case "editCustomerPost":
                try {
                    editCustomerPost(request,response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;

        }
    }

    private void editCustomerPost(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        String name = request.getParameter("name");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String role = request.getParameter("role");
        String avt = request.getParameter("avt");
        Customer customer = new Customer(name,username,password,phone,role,avt);
        customerService.update(customer);
        response.sendRedirect("/home");
    }

    private void showCreatePost(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        String name = request.getParameter("name");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String role = request.getParameter("role");
        String avt = request.getParameter("avt");
        customerService.add(new Customer(name,username,password,phone,role,avt));
        response.sendRedirect("/home");

    }

    private void search(HttpServletRequest request, HttpServletResponse response) {
        List<Customer> customers = customerService.findByName("");
        request.setAttribute("ctm",customers);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/home/search.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void showListCustomer(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        List<Customer> customers = customerService.findAll();
        request.setAttribute("ctm", customers);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/customer/list.jsp");
        dispatcher.forward(request,response);
    }
}

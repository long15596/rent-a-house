package org.example.rentahouse.controllers;

import org.example.rentahouse.models.Customer;
import org.example.rentahouse.models.House;
import org.example.rentahouse.models.Invoice;
import org.example.rentahouse.services.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "customerServlet", value = "/customers")
public class CustomerServlet extends HttpServlet {
    private CustomerService customerService = new CustomerServiceImpl();
    private HouseService houseService = new HouseServiceImpl();
    public static Customer customer = null;
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        if (customer != null){
            String getAct = request.getParameter("action");
            if (getAct == null) getAct = "";
            switch (getAct) {
                case "editInfo":
                    showEditInfo(request, response);
                    break;
                case "rent":
                    showHouseInfo(request, response);
                    break;
                default: showEmptyHouse(request, response);
            }
        } else {
            response.sendRedirect("homepage/login.jsp");
        }
    }

    private void showHouseInfo(HttpServletRequest request, HttpServletResponse response) {
        try {
            int idHouse = Integer.parseInt(request.getParameter("id"));
            HouseServlet.house = houseService.findById(idHouse);
            HouseServlet.customer = customer;
            response.sendRedirect("/house");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showEditInfo(HttpServletRequest request, HttpServletResponse response) {
        try {
            for (Customer c: customerService.findAll()){
                if(customer.getId() == c.getId()) request.setAttribute("editCustomer", c);
            }
            request.getRequestDispatcher("admin/editUserInfo.jsp").forward(request, response);
        } catch (IOException | ServletException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String postAct = req.getParameter("action");
        if (postAct == null) postAct = "";
        switch (postAct){
            case "editInfo":
                editInfo(req, resp);
                break;
            default: showEmptyHouse(req, resp);
        }
    }


    private void editInfo(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String phone = req.getParameter("phone");
        String role = req.getParameter("role");
        String avt = req.getParameter("avt");
        customer = new Customer(id, name, username, password, phone, role, avt);
        try {
            customerService.update(customer);
            resp.sendRedirect("/customers");
        } catch (IOException | SQLException e) {
            e.printStackTrace();
        }
    }

    private void showEmptyHouse(HttpServletRequest req, HttpServletResponse resp) {
        List<House> emptyHouse = houseService.emptyHouseList();
        req.setAttribute("customer", customer);
        req.setAttribute("emptyHouse", emptyHouse);
        try {
            req.getRequestDispatcher("customer/customerPage.jsp").forward(req, resp);
        } catch (IOException | ServletException e) {
            e.printStackTrace();
        }
    }
}
package org.example.rentahouse.controllers;

import org.example.rentahouse.models.Customer;
import org.example.rentahouse.models.House;
import org.example.rentahouse.services.CustomerService;
import org.example.rentahouse.services.CustomerServiceImpl;
import org.example.rentahouse.services.HouseService;
import org.example.rentahouse.services.HouseServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ownerServlet", value = "/owners")
public class OwnerServlet extends HttpServlet {
    HouseService houseService = new HouseServiceImpl();
    CustomerService customerService = new CustomerServiceImpl();
    public static Customer owner = null;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String getAct = req.getParameter("action");
        if (getAct == null) getAct = "";
        switch (getAct) {
            case "create":
                showCreateForm(req, resp);
                break;
            case "edit":
                showEditForm(req, resp);
                break;
            case "deleteHouse":
                deleteHouse(req, resp);
                break;
            case "editInfo":
                showEditInfoForm(req, resp);
                break;
            default: showHouseList(req, resp);
        }
    }

    private void showEditInfoForm(HttpServletRequest req, HttpServletResponse resp) {
        try {
            for (Customer c: customerService.findAll()){
                if(owner.getId() == c.getId()) req.setAttribute("editCustomer", c);
            }
            req.getRequestDispatcher("admin/editUserInfo.jsp").forward(req,resp);
        } catch (IOException | ServletException e) {
            e.printStackTrace();
        }
    }

    private void deleteHouse(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        try {
            houseService.delete(id);
            resp.sendRedirect("/owners");
        } catch (IOException | SQLException e) {
            e.printStackTrace();
        }
    }

    private void showEditForm(HttpServletRequest req, HttpServletResponse resp) {
        int editId = Integer.parseInt(req.getParameter("idEdit"));
        House house = houseService.findById(editId);
        req.setAttribute("editHouse", house);
        try {
            req.getRequestDispatcher("admin/editUserInfo.jsp").forward(req,resp);
        } catch (IOException | ServletException e) {
            e.printStackTrace();
        }
    }

    private void showCreateForm(HttpServletRequest req, HttpServletResponse resp) {
        try {
            req.getRequestDispatcher("owner/createHouse.jsp").forward(req, resp);
        } catch (IOException | ServletException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String postAct = req.getParameter("action");
        if (postAct == null) postAct = "";
        switch (postAct) {
            case "create":
                create(req, resp);
                break;
            case "edit":
                edit(req, resp);
                break;
            case "editInfo":
                editInfo(req, resp);
                break;
            default: showHouseList(req, resp);
        }
    }

    private void editInfo(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("idEdit"));
        String name = req.getParameter("name");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String phone = req.getParameter("phone");
        String role = req.getParameter("role");
        String avt = req.getParameter("avt");
        owner = new Customer(id, name, username, password, phone, role, avt);
        try {
            customerService.update(owner);
            resp.sendRedirect("/owners");
        } catch (IOException | SQLException e) {
            e.printStackTrace();
        }
    }

    private void edit(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("idEdit"));
        String name = req.getParameter("name");
        String address = req.getParameter("address");
        double price = Double.parseDouble(req.getParameter("price"));
        int roomNum = Integer.parseInt(req.getParameter("roomNum"));
        int bathroomNum = Integer.parseInt(req.getParameter("bathroomNum"));
        String status = req.getParameter("status");
        String describe = req.getParameter("describe");
        Customer customer = owner;
        try {
            houseService.update(new House(id, name, address, price, roomNum, bathroomNum, status, describe, customer));
            resp.sendRedirect("/owners");
        } catch (IOException | SQLException e) {
            e.printStackTrace();
        }
    }

    private void create(HttpServletRequest req, HttpServletResponse resp) {
        String name = req.getParameter("name");
        String address = req.getParameter("address");
        double price = Double.parseDouble(req.getParameter("price"));
        int roomNum = Integer.parseInt(req.getParameter("roomNum"));
        int bathroomNum = Integer.parseInt(req.getParameter("bathroomNum"));
        String status = req.getParameter("status");
        String describe = req.getParameter("describe");
        Customer customer = customerService.findById(owner.getId());
        try {
            houseService.add(new House(name, address, price, roomNum, bathroomNum, status, describe, customer));
            resp.sendRedirect("/owners");
        } catch (IOException | SQLException e) {
            e.printStackTrace();
        }
    }

    private void showHouseList(HttpServletRequest req, HttpServletResponse resp) {
        List<House> houseList = houseService.showOwnerHouse(owner);
        req.setAttribute("owner", owner);
        req.setAttribute("ownerHouse", houseList);
        try {
            req.getRequestDispatcher("owner/ownerPage.jsp").forward(req, resp);
        } catch (IOException | ServletException e) {
            e.printStackTrace();
        }
    }
}
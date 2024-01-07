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
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "homeServlet", value = "/home")
public class HomePageServlet extends HttpServlet {
    CustomerService customerService = new CustomerServiceImpl();
    HouseService houseService = new HouseServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String getAct = req.getParameter("action");
        if (getAct == null) getAct = "";
        switch (getAct){
            case "login":
                showLoginForm(req, resp);
                break;
            case "signup":
                showSignUp(req, resp);
                break;
            default: showHouseList(req, resp);
        }
    }

    private void showSignUp(HttpServletRequest req, HttpServletResponse resp) {
        try {
            req.getRequestDispatcher("admin/createUser.jsp").forward(req, resp);
        } catch (IOException | ServletException e) {
            e.printStackTrace();
        }
    }

    private void showHouseList(HttpServletRequest req, HttpServletResponse resp) {
        List<House> houseList = houseService.emptyHouseList();
        req.setAttribute("emptyHouse", houseList);
        try {
            req.getRequestDispatcher("homepage/home.jsp").forward(req,resp);
        } catch (IOException | ServletException e) {
            e.printStackTrace();
        }
    }

    private void showLoginForm(HttpServletRequest req, HttpServletResponse resp) {
        try {
            req.getRequestDispatcher("homepage/login.jsp").forward(req,resp);
        } catch (IOException | ServletException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String postAct = req.getParameter("action");
        if (postAct == null) postAct = "";
        switch (postAct){
            case "login":
                login(req, resp);
                break;
            case "register":
                register(req,resp);
                break;

            default: showHouseList(req, resp);
        }
    }

    private void register(HttpServletRequest req, HttpServletResponse resp) {

    }

    private void login(HttpServletRequest req, HttpServletResponse resp) {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        if (customerService.checkLogin(username, password)){
            if (customerService.findById(customerService.findId(username, password)).getRole().equals("owner")){
                try {
                    resp.sendRedirect("/owners");
                    OwnerServlet.owner = customerService.findById(customerService.findId(username, password));
                } catch (IOException e) {
                    e.printStackTrace();
                }
            } else if (customerService.findById(customerService.findId(username, password)).getRole().equals("customer")){
                try {
                    CustomerServlet.customer = customerService.findById(customerService.findId(username, password));
                    resp.sendRedirect("/customers");
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
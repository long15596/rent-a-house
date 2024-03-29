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

@WebServlet(name = "houseServlet", value = "/house")
public class HouseServlet extends HttpServlet {
    private InvoiceService invoiceService = new InvoiceServiceImpl();
    private CustomerService customerService = new CustomerServiceImpl();
    private HouseService houseService = new HouseServiceImpl();
    public static House house = null;
    public static Customer customer = null;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String getAct = req.getParameter("action");
        if(getAct == null) getAct = "";
        switch (getAct){
            case "rent":
                showInvoice(req, resp);
                break;
            default: showHouse(req, resp);
        }
    }

    private void showInvoice(HttpServletRequest req, HttpServletResponse resp) {
        try {
            req.getRequestDispatcher("customer/invoice.jsp").forward(req,resp);
        } catch (IOException | ServletException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String postAct = req.getParameter("action");
        if (postAct == null) postAct = "";
        switch (postAct){
            case "rent":
                createInvoice(req,resp);
                break;
            default: showHouse(req, resp);
        }
    }

    private void createInvoice(HttpServletRequest req, HttpServletResponse resp) {
        int time = Integer.parseInt(req.getParameter("time"));
        Invoice invoice = new Invoice(customer, house, time, invoiceService.TotalAmount(house, time));
        req.setAttribute("invoice", invoice);
    }

    private void showHouse(HttpServletRequest req, HttpServletResponse resp) {
        req.setAttribute("customer", customer);
        req.setAttribute("rentHouse", house);
        try {
            req.getRequestDispatcher("customer/rentHouse.jsp").forward(req,resp);
        } catch (IOException | ServletException e) {
            e.printStackTrace();
        }
    }
}
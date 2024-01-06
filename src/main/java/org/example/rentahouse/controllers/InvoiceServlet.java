package org.example.rentahouse.controllers;

import org.example.rentahouse.services.InvoiceService;
import org.example.rentahouse.services.InvoiceServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "helloServlet", value = "/invoices")
public class InvoiceServlet extends HttpServlet {
    InvoiceService invoiceService = new InvoiceServiceImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
    }
}
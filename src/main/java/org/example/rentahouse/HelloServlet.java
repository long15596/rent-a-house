package org.example.rentahouse;

import org.example.rentahouse.models.Customer;
import org.example.rentahouse.services.CustomerService;
import org.example.rentahouse.services.CustomerServiceImpl;

import java.io.*;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "customerServlet", value = "/home")
public class HelloServlet extends HttpServlet {
}
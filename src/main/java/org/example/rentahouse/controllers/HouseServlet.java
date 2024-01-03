package org.example.rentahouse.controllers;

import org.example.rentahouse.models.House;
import org.example.rentahouse.services.HouseService;
import org.example.rentahouse.services.HouseServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "houseServlet", value = "/houses")
public class HouseServlet extends HttpServlet {
    HouseService houseService = new HouseServiceImpl();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String postAct = req.getParameter("action");
        if (postAct == null) postAct = "";
        switch (postAct){
            case "create":
                create(req, resp);
                break;
            default: showList(req, resp);
        }
    }

    private void create(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String address = req.getParameter("address");
        double price = Double.parseDouble(req.getParameter("price"));
        int roomNum = Integer.parseInt(req.getParameter("roomNum"));
        int bathroomNum = Integer.parseInt(req.getParameter("bathroomNum"));
        String status = req.getParameter("status");
        String describe = req.getParameter("describe");
        try {
            houseService.add(new House(id, name, address, price, roomNum, bathroomNum, status, describe));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            resp.sendRedirect("/houses");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String getAct = request.getParameter("action");
        if(getAct == null) getAct = "";
        switch (getAct) {
            case "create":
                showCreateForm(request, response);
                break;
            default: showList(request, response);
        }
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) {
        List<House> houseList = houseService.findAll();
        request.setAttribute("houseList", houseList);
        try {
            request.getRequestDispatcher("house/create.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showList(HttpServletRequest request, HttpServletResponse response) {
        List<House> houseList = houseService.findAll();
        request.setAttribute("houseList", houseList);
        try {
            request.getRequestDispatcher("house/list.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
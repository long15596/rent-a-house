package org.example.rentahouse.controller;

import org.example.rentahouse.services.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "UserServlet", value = "/UserServlet")
public class UserServlet extends HttpServlet {
  UserService userService = new UserService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null) {
            action = "";

        }
        switch (action){
            case "login":
                showLogin(request, response);
                break;
        }
    }

    private void showLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action != null){
            action = "";
        }
        try {
            switch (action){
                case "login":
                    loginUser(request, response);
                    break;
            }
        } catch (Exception e) {
            throw new RuntimeException(e);


        }
    }

    private void loginUser(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String userName = request.getParameter("name");
        String password = request.getParameter("password");
        if(userService.checkLogin(userName, password)){
            request.setAttribute("name", userName);
            HttpSession session = request.getSession();
            session.setAttribute("name", userName);
            response.sendRedirect("/LoginServlet");
        } else {
            response.sendRedirect("/UserServlet?action=login");
        }
    }
}

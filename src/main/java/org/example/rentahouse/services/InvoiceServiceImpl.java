package org.example.rentahouse.services;

import org.example.rentahouse.models.Invoice;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "InvoiceServiceImpl",urlPatterns = "/invoice")
public class InvoiceServiceImpl implements GeneralService {

    @Override
    public List findAll() {
        ArrayList<Invoice> invoice = new ArrayList<>();
        String sql = "select * from invoice";
        try (Connection connection = DatabaseConnection.getconnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int idOder = rs.getInt("idOder");
                int idCustomer = rs.getInt("Customer");
                int timeBegin = rs.getInt("timeBegin");
                String totalAmount = rs.getString("totalAmount");
                int idHouse = rs.getInt("idHouse");
                Invoice invoice1 = new Invoice(idOder, idCustomer, timeBegin, totalAmount, idHouse);
                invoice1.add(invoice1);
            }
        return invoice;

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    public void add(Object obj) throws SQLException {

    }

    @Override
    public Object findById(int id) {
        return null;
    }

    @Override
    public boolean update(Object obj) throws SQLException {
        return false;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        return false;
    }

    @Override
    public List findByName(String name) {
        return null;
    }
}


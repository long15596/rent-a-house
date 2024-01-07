package org.example.rentahouse.services;

import org.example.rentahouse.models.Customer;
import org.example.rentahouse.models.House;
import org.example.rentahouse.models.Invoice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class InvoiceServiceImpl implements InvoiceService{
    CustomerService customerService = new CustomerServiceImpl();
    HouseService houseService = new HouseServiceImpl();
    @Override
    public List<Invoice> findAll() {
        List<Invoice> invoiceList = new ArrayList<>();
        try(Connection connection = DatabaseConnection.getconnection()){
            PreparedStatement preparedStatement = connection.prepareStatement("select * from invoice");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                int idCustomer = resultSet.getInt("idCustomer");
                Customer customer = customerService.findById(idCustomer);
                int idHouse = resultSet.getInt("idHouse");
                House house = houseService.findById(idHouse);
                int time = resultSet.getInt("time");
                double totalAmount = resultSet.getDouble("totalAmount");
                invoiceList.add(new Invoice(id, customer, house, time, totalAmount));
            }
        } catch (SQLException e){
            e.printStackTrace();
        }
        return invoiceList;
    }

    @Override
    public void add(Invoice obj) throws SQLException {
        try(Connection connection = DatabaseConnection.getconnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement("insert into invoice(id, idCustomer, idHouse, time, totalAmount) values (?,?,?,?,?)");
            preparedStatement.setInt(1, obj.getId());
            preparedStatement.setInt(2, obj.getCustomer().getId());
            preparedStatement.setInt(3, obj.getHouse().getId());
            preparedStatement.setInt(4, obj.getTime());
            preparedStatement.setDouble(5, obj.getTotalAmount());
            preparedStatement.executeUpdate();
        } catch (SQLException e){
            e.printStackTrace();
        }
    }

    @Override
    public Invoice findById(int id) {
        Invoice invoice = new Invoice();
        try (Connection connection = DatabaseConnection.getconnection()){
            PreparedStatement preparedStatement = connection.prepareStatement("select * from invoice where id = ?");
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int idCustomer = resultSet.getInt("idCustomer");
                Customer customer = customerService.findById(idCustomer);
                int idHouse = resultSet.getInt("idHouse");
                House house = houseService.findById(idHouse);
                int time = resultSet.getInt("time");
                double totalAmount = resultSet.getDouble("totalAmount");
                invoice = new Invoice(id, customer, house, time, totalAmount);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return invoice;
    }

    @Override
    public boolean update(Invoice obj) throws SQLException {
        return false;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        try (Connection connection = DatabaseConnection.getconnection()){
            PreparedStatement preparedStatement = connection.prepareStatement("delete from invoice where id = ?");
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Invoice> findByName(String name) {
        return null;
    }

    @Override
    public double TotalAmount(House house, int time) {
        return house.getPrice() * time;
    }

    @Override
    public List<Invoice> findByIdCustomer(Customer obj) {
        List<Invoice> invoiceList = new ArrayList<>();
        for(Invoice i: findAll()){
            if (obj.getId() == i.getCustomer().getId()){
                invoiceList.add(i);
            }
        }
        return invoiceList;
    }
}

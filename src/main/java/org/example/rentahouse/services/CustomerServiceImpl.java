package org.example.rentahouse.services;

import org.example.rentahouse.models.Customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerServiceImpl implements CustomerService{

    @Override
    public ArrayList<Customer> findAll() throws SQLException {
        ArrayList<Customer> customers = new ArrayList<>();
        String sql = "select * from customer";
        try(Connection connection = DatabaseConnection.getConnection()){
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String username = rs.getString("username");
                String password = rs.getString("password");
                String phone = rs.getString("phone");
                String role = rs.getString("role");
                String avt = rs.getString("avt");
                Customer customer = new Customer(id,name,username,password,phone,role,avt);
                customers.add(customer);
            }
        }
        return customers;
    }
    @Override
    public void add(Customer obj) throws SQLException {
        String sql = "insert into customer(name, username, password, phone, role, avt)";
        try(Connection connection = DatabaseConnection.getConnection()){
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, obj.getName());
            preparedStatement.setString(2, obj.getUsername());
            preparedStatement.setString(3, obj.getPassword());
            preparedStatement.setString(4, obj.getPhone());
            preparedStatement.setString(5, obj.getRole());
            preparedStatement.setString(6, obj.getAvt());
            preparedStatement.executeUpdate();
            }
        }

    @Override
    public Customer findById(int id) {
        Customer customers = new Customer();
        String sql = "select * from customer where id = ?";
        try(Connection connection = DatabaseConnection.getConnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1,id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                String nameE = rs.getString("name");
                String username = rs.getString("username");
                String password = rs.getString("password");
                String phone = rs.getString("phone");
                String role = rs.getString("role");
                String avt = rs.getString("avt");
                customers = new Customer(nameE,username,password,phone,role,avt);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return customers;
    }

    @Override
    public boolean update(Customer obj) throws SQLException {
        String sql = "update customer set name = ?, username = ?, password = ?, phone = ?, role = ?, avt = ?";
        try (Connection connection = DatabaseConnection.getConnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, obj.getName());
            preparedStatement.setString(2, obj.getUsername());
            preparedStatement.setString(3, obj.getPassword());
            preparedStatement.setString(4, obj.getPhone());
            preparedStatement.setString(5, obj.getRole());
            preparedStatement.setString(6, obj.getAvt());

        }
        return false;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        String sql = "delete from customer where id = ?";
        try(Connection connection = DatabaseConnection.getConnection()){
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1,id);
            preparedStatement.executeUpdate();
        }
        return false;
    }

    @Override
    public List<Customer> findByName(String name) {
        ArrayList<Customer> customers = new ArrayList<>();
        String sql = "select * from customer where name like ?";
        try(Connection connection = DatabaseConnection.getConnection()){
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,"%" + name + "%");
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                int id = rs.getInt("id");
                String namee = rs.getString("name");
                String username = rs.getString("username");
                String password = rs.getString("password");
                String phone = rs.getString("phone");
                String role = rs.getString("role");
                String avt = rs.getString("avt");
                Customer customer = new Customer(id,namee,username,password,phone,role,avt);
                customers.add(customer);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return customers;
    }
}

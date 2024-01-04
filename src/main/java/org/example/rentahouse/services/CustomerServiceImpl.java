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
    public List<Customer> findAll() {
        List<Customer> customers = new ArrayList<>();
        try(Connection connection = DatabaseConnection.getconnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement("select * from customer");
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String username = rs.getString("username");
                String password = rs.getString("password");
                String phone = rs.getString("phone");
                String role = rs.getString("role");
                String avt = rs.getString("avt");
                customers.add(new Customer(id, name, username, password, phone, role, avt));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customers;
    }

    @Override
    public void add(Customer obj) throws SQLException {
        try(Connection connection = DatabaseConnection.getconnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement("insert into customer(id, name, username, password, phone, role, avt) values (?,?,?,?,?,?,?)");
            preparedStatement.setInt(1, obj.getId());
            preparedStatement.setString(2, obj.getName());
            preparedStatement.setString(3, obj.getUsername());
            preparedStatement.setString(4, obj.getPassword());
            preparedStatement.setString(5, obj.getPhone());
            preparedStatement.setString(6, obj.getRole());
            preparedStatement.setString(7, obj.getAvt());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Customer findById(int id) {
        Customer customer = new Customer();
        try(Connection connection = DatabaseConnection.getconnection()){
            PreparedStatement preparedStatement = connection.prepareStatement("select * from customer where id = ?");
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                String findName = resultSet.getString("name");
                String username = resultSet.getString("username");
                String password = resultSet.getString("password");
                String phone = resultSet.getString("phone");
                String role = resultSet.getString("role");
                String avt = resultSet.getString("avt");
                customer = new Customer(id, findName, username, password, phone, role, avt);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return customer;
    }

    @Override
    public boolean update(Customer obj) throws SQLException {
        try (Connection connection = DatabaseConnection.getconnection()){
            PreparedStatement preparedStatement = connection.prepareStatement("update customer set name = ?, username = ?, password = ?, phone = ?, role = ?, avt = ? where id = ?");
            preparedStatement.setInt(7, obj.getId());
            preparedStatement.setString(1, obj.getName());
            preparedStatement.setString(2, obj.getUsername());
            preparedStatement.setString(3, obj.getPassword());
            preparedStatement.setString(4, obj.getPhone());
            preparedStatement.setString(5,obj.getRole());
            preparedStatement.setString(6, obj.getAvt());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        try(Connection connection = DatabaseConnection.getconnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement("delete from customer where id = ?");
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e){
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Customer> findByName(String name) {
        List<Customer> customers = new ArrayList<>();
        try(Connection connection = DatabaseConnection.getconnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement("select * from customer where name like ?");
            preparedStatement.setString(1, "%" + name + "%");
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int findId = rs.getInt("id");
                String findName = rs.getString("name");
                String username = rs.getString("username");
                String password = rs.getString("password");
                String phone = rs.getString("phone");
                String role = rs.getString("role");
                String avt = rs.getString("avt");
                customers.add(new Customer(findId, findName, username, password, phone, role, avt));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customers;
    }

    @Override
    public boolean CheckLogin(String username, String password) {
        for (Customer c : findAll()) {
            if (c.getUsername().equals(username) && c.getPassword().equals(password)) {
                return true;
            }
        }
        return false;
    }

}


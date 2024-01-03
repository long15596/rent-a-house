package org.example.rentahouse.services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    public static Connection getConnection(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/rent-a-house?useSSL=false", "root", "123456");
        } catch (ClassNotFoundException e) {
            return null;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}

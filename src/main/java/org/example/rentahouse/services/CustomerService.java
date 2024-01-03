package org.example.rentahouse.services;

import org.example.rentahouse.models.Customer;

import java.sql.SQLException;
import java.util.List;

public interface CustomerService extends GeneralService<Customer>{

    List<Customer> findAll() throws SQLException;
}

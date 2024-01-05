package org.example.rentahouse.services;

import org.example.rentahouse.models.Customer;
import org.example.rentahouse.models.House;

import java.util.List;

public interface CustomerService extends GeneralService<Customer>{
    boolean checkLogin(String username, String password);
    int findId(String username, String password );
}

package org.example.rentahouse.services;

import org.example.rentahouse.models.Customer;
import org.example.rentahouse.models.House;
import org.example.rentahouse.models.Invoice;

import java.util.List;

public interface InvoiceService extends GeneralService<Invoice>{
    double TotalAmount(House house, int time);
    List<Invoice> findByIdCustomer(Customer obj);
}

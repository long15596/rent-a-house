package org.example.rentahouse.services;

import org.example.rentahouse.models.House;
import org.example.rentahouse.models.Invoice;

public interface InvoiceService extends GeneralService<Invoice>{
    double TotalAmount(House house, int time);
}

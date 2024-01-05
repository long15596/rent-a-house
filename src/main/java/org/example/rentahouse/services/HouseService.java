package org.example.rentahouse.services;

import org.example.rentahouse.models.Customer;
import org.example.rentahouse.models.House;

import java.util.List;

public interface HouseService extends GeneralService<House>{
    List<House> emptyHouseList();
    List<House> showOwnerHouse(Customer obj);
}

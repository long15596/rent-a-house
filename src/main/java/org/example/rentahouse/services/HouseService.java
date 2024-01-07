package org.example.rentahouse.services;

import org.example.rentahouse.models.Customer;
import org.example.rentahouse.models.House;

import java.util.List;
import java.util.Set;

public interface HouseService extends GeneralService<House>{
    List<House> emptyHouseList();
    List<House> showOwnerHouse(Customer obj);
    Set<Integer> roomType();
    Set<Integer> bathroomType();
    List<House> findByRoomType(int roomNum, List<House> houses);
    List<House> findByBatchRoomType(int bathroomNum, List<House> houses);
}

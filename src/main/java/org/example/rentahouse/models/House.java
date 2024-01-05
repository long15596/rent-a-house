package org.example.rentahouse.models;

public class House {
    private int id;
    private String name;
    private String address;
    private double price;
    private int roomNum;
    private int bathroomNum;
    private String status;
    private String describe;
    private Customer customer;
    public House(){}

    public House(int id, String name, String address, double price, int roomNum, int bathroomNum, String status, String describe, Customer customer) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.price = price;
        this.roomNum = roomNum;
        this.bathroomNum = bathroomNum;
        this.status = status;
        this.describe = describe;
        this.customer = customer;
    }

    public House(String name, String address, double price, int roomNum, int bathroomNum, String status, String describe, Customer customer) {
        this.name = name;
        this.address = address;
        this.price = price;
        this.roomNum = roomNum;
        this.bathroomNum = bathroomNum;
        this.status = status;
        this.describe = describe;
        this.customer = customer;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getRoomNum() {
        return roomNum;
    }

    public void setRoomNum(int roomNum) {
        this.roomNum = roomNum;
    }

    public int getBathroomNum() {
        return bathroomNum;
    }

    public void setBathroomNum(int bathroomNum) {
        this.bathroomNum = bathroomNum;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }
}

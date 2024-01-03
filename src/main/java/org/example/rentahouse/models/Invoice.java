package org.example.rentahouse.models;

public class Invoice {
    private int id;
    private Customer customer;
    private House house;
    private int time;
    private double totalAmount;
    public Invoice(){}

    public Invoice(int id, Customer customer, House house, int time, double totalAmount) {
        this.id = id;
        this.customer = customer;
        this.house = house;
        this.time = time;
        this.totalAmount = totalAmount;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public House getHouse() {
        return house;
    }

    public void setHouse(House house) {
        this.house = house;
    }

    public int getTime() {
        return time;
    }

    public void setTime(int time) {
        this.time = time;
    }

    public double getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(double totalAmount) {
        this.totalAmount = totalAmount;
    }
}
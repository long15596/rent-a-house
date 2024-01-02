package org.example.rentahouse.models;

public class Invoice {
    private int id;
    private int idCustomer;
    private int idHouse;
    private String time;
    private double totalAmount;
    public Invoice(){}

    public Invoice(int id, int idCustomer, int idHouse, String time, double totalAmount) {
        this.id = id;
        this.idCustomer = idCustomer;
        this.idHouse = idHouse;
        this.time = time;
        this.totalAmount = totalAmount;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdCustomer() {
        return idCustomer;
    }

    public void setIdCustomer(int idCustomer) {
        this.idCustomer = idCustomer;
    }

    public int getIdHouse() {
        return idHouse;
    }

    public void setIdHouse(int idHouse) {
        this.idHouse = idHouse;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public double getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(double totalAmount) {
        this.totalAmount = totalAmount;
    }
}
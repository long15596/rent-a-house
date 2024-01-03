package org.example.rentahouse.models;

public class Invoice {

    private int idOder;
    private int idCustomer;
    private int timeBegin;
    private String totalAmount;
    private int idHouse;

    public Invoice(int idOder, int idCustomer, int timeBegin, String totalAmount, int idHouse) {
        this.idOder = idOder;
        this.idCustomer = idCustomer;
        this.timeBegin = timeBegin;
        this.totalAmount = totalAmount;
        this.idHouse = idHouse;
    }

    public int getIdOder() {
        return idOder;
    }

    public void setIdOder(int idOder) {
        this.idOder = idOder;
    }

    public int getIdCustomer() {
        return idCustomer;
    }

    public void setIdCustomer(int idCustomer) {
        this.idCustomer = idCustomer;
    }

    public int getTimeBegin() {
        return timeBegin;
    }

    public void setTimeBegin(int timeBegin) {
        this.timeBegin = timeBegin;
    }

    public String getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(String totalAmount) {
        this.totalAmount = totalAmount;
    }

    public int getIdHouse() {
        return idHouse;
    }

    public void setIdHouse(int idHouse) {
        this.idHouse = idHouse;
    }

    public void add(Invoice invoice1) {
    }
}

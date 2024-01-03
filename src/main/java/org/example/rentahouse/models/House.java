package org.example.rentahouse.models;

public class House {
    private int id;
    private String name;
    private String address;
    private int image;
    private double NumberOfBedrooms;
    private double NumberOfbathrooms;
    private String status;
    private String describe;

    public House(int id, String name, String address, int image, double numberOfBedrooms, double numberOfbathrooms, String status, String describe) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.image = image;
        NumberOfBedrooms = numberOfBedrooms;
        NumberOfbathrooms = numberOfbathrooms;
        this.status = status;
        this.describe = describe;
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

    public int getImage() {
        return image;
    }

    public void setImage(int image) {
        this.image = image;
    }

    public double getNumberOfBedrooms() {
        return NumberOfBedrooms;
    }

    public void setNumberOfBedrooms(double numberOfBedrooms) {
        NumberOfBedrooms = numberOfBedrooms;
    }

    public double getNumberOfbathrooms() {
        return NumberOfbathrooms;
    }

    public void setNumberOfbathrooms(double numberOfbathrooms) {
        NumberOfbathrooms = numberOfbathrooms;
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
}
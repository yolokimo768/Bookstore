/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entites;

import java.sql.Date;

/**
 *
 * @author CM
 */
public class Order {

    int id;
    String trackingNumber;
    Date o_date;
    String shippingAddress;
    String billingAddress;
    String Location;
    String shippingService;
    Book[] Books;
    int[] Quantity;
    int userID;

    public Order(int id, String trackingNumber, Date o_date, String shippingAddress, String billingAddress, String Location, String shippingService, Book[] Books, int[] Quantity, int userID) {
        this.id = id;
        this.trackingNumber = trackingNumber;
        this.o_date = o_date;
        this.shippingAddress = shippingAddress;
        this.billingAddress = billingAddress;
        this.Location = Location;
        this.shippingService = shippingService;
        this.Books = Books;
        this.Quantity = Quantity;
        this.userID = userID;
    }

    public Order() {
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTrackingNumber() {
        return trackingNumber;
    }

    public void setTrackingNumber(String trackingNumber) {
        this.trackingNumber = trackingNumber;
    }

    public Date getO_date() {
        return o_date;
    }

    public void setO_date(Date o_date) {
        this.o_date = o_date;
    }

    public String getShippingAddress() {
        return shippingAddress;
    }

    public void setShippingAddress(String shippingAddress) {
        this.shippingAddress = shippingAddress;
    }

    public String getBillingAddress() {
        return billingAddress;
    }

    public void setBillingAddress(String billingAddress) {
        this.billingAddress = billingAddress;
    }

    public String getLocation() {
        return Location;
    }

    public void setLocation(String Location) {
        this.Location = Location;
    }

    public String getShippingService() {
        return shippingService;
    }

    public void setShippingService(String shippingService) {
        this.shippingService = shippingService;
    }

    public Book[] getBooks() {
        return Books;
    }

    public void setBooks(Book[] Books) {
        this.Books = Books;
    }

    public int[] getQuantity() {
        return Quantity;
    }

    public void setQuantity(int[] Quantity) {
        this.Quantity = Quantity;
    }

}

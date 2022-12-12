/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entites;

/**
 *
 * @author CM
 */
public class Book {

    String ISBN;
    String Title;
    int numberofPages;
    double price;
    String genre;
    int quantity;
    int publisherId;
    double publisherPercentage;
    Author[] Authors;

    public Book(String ISBN, String Title, int numberofPages, double price, String genre, int quantity, int publisherId, double publisherPercentage, Author[] Authors) {
        this.ISBN = ISBN;
        this.Title = Title;
        this.numberofPages = numberofPages;
        this.price = price;
        this.genre = genre;
        this.quantity = quantity;
        this.publisherId = publisherId;
        this.publisherPercentage = publisherPercentage;
        this.Authors = Authors;
    }

    public Book(String ISBN, String Title, String genre, double price) {
        this.ISBN = ISBN;
        this.Title = Title;
        this.price = price;
        this.genre = genre;

    }

public Book(String ISBN, String Title, int numberofPages, double price, String genre, int quantity, double publisherPercentage) {
        this.ISBN = ISBN;
        this.Title = Title;
        this.numberofPages = numberofPages;
        this.price = price;
        this.genre = genre;
        this.quantity = quantity;
        this.publisherPercentage = publisherPercentage;
    }

    public Book() {

    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Author[] getAuthors() {
        return Authors;
    }

    public void setAuthors(Author[] Authors) {
        this.Authors = Authors;
    }

    public String getISBN() {
        return ISBN;
    }

    public void setISBN(String ISBN) {
        this.ISBN = ISBN;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String Title) {
        this.Title = Title;
    }

    public int getNumberofPages() {
        return numberofPages;
    }

    public void setNumberofPages(int numberofPages) {
        this.numberofPages = numberofPages;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public int getPublisherId() {
        return publisherId;
    }

    public void setPublisherId(int publisherId) {
        this.publisherId = publisherId;
    }

    public double getPublisherPercentage() {
        return publisherPercentage;
    }

    public void setPublisherPercentage(double publisherPercentage) {
        this.publisherPercentage = publisherPercentage;
    }

}

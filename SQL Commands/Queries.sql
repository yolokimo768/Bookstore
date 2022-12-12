String Insert_Orders_Query = "INSERT INTO Orders (date, totalcost, shippingaddress, billingaddress, location, shippingservice, u_id) VALUES "
                            + "('" + date + "'," + totalcost + ",'" + shipaddressText.getText() + "','" + billaddressText.getText() + "','Arrived','DHL',1);";

String Insert_Order_User_Query = "INSERT INTO Order_Book (ISBN, O_id, Quantity) VALUES "
                                                        + "('" + bookselected.getISBN() + "'," + Order_ID + "," + (Integer.parseInt(quantitybookaddText.getText())) + ");";

String INSERT_Book_SQL = "INSERT INTO Book (isbn, title, numberofpages,price,genre,quantity,p_id,p_percentage) VALUES "
                                                                                + "('" + ISBN + "', '" + Title + "'," + pagesnumber_value + "," + price_value + ",'" + genre + "'," + quantity_value + "," + publisher_id_value + "," + publisher_per_value + ");";

String INSERT_Author_Book_SQL = "INSERT INTO Author_Book (a_id, isbn) VALUES (" + selected_auhtors.get(i) + ", '" + ISBN + "');";

String Delete_Author_Book_Query = "Delete from author_book where ISBN='" + ISBNtoRemove + "';";

String Delete_Book_Query = "Delete from book where ISBN='" + ISBNtoRemove + "';";

String Select_author_book_Query = "SELECT ISBN from Author_book where a_id =" + Select_a_id + ";";

String Select_orders_book_order_Query = "SELECT Totalcost from order_book INNER JOIN orders ON order_book.o_id=orders.o_id where order_book.ISBN ='" + SelectISBN_Autor.get(j) + "';";

String Select_Book_Query = "SELECT ISBN from Book where p_id =" + Select_p_id + ";";

String Select_orders_book_order_Query = "SELECT Totalcost from order_book INNER JOIN orders ON order_book.o_id=orders.o_id where order_book.ISBN ='" + SelectISBN_Publisher.get(j) + "';";

String SLECT_Publisher_SQL = "SELECT a_id, firstname, lastname from author;";

String SLECT_Publisher_SQL = "SELECT p_id, name from publisher;";

Select_Book_Query = "SELECT ISBN , Title, Genre, Price, quantity, numberofpages as Number_of_Pages,p_percentage as Publisher_Percentage, Name as Publisher from Book INNER JOIN Publisher ON Book.P_id=Publisher.P_id where UPPER(isbn) LIKE  UPPER('%" + bookinfo + "%');";

Select_Book_Query = "SELECT ISBN, Title, Genre, Price,quantity, numberofpages as Number_of_Pages,p_percentage as Publisher_Percentage ,Name as Publisher from Book INNER JOIN Publisher ON Book.P_id=Publisher.P_id where UPPER(title) LIKE  UPPER('%" + bookinfo + "%');";

Select_Book_Query = "SELECT ISBN, Title, Genre, Price,quantity, numberofpages as Number_of_Pages,p_percentage as Publisher_Percentage , Name as Publisher from Book INNER JOIN Publisher ON Book.P_id=Publisher.P_id where UPPER(genre) LIKE  UPPER('%" + bookinfo + "%');";

String SLECT_Publisher_SQL = "SELECT p_id, name from publisher;";

String SLECT_Publisher_SQL = "SELECT a_id, firstname, lastname from author;";

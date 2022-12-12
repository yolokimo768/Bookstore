/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BookStore;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DataBaseOperations {

    Connection con;
    Statement stmt;

    public DataBaseOperations() {
        try {
            Class.forName("org.postgresql.Driver");
            con = DriverManager
                    .getConnection("jdbc:postgresql://localhost:5432/Bookstore",
                            "postgres", "123456");
            stmt = con.createStatement();

        } catch (Exception e) {
            e.printStackTrace();
            System.err.println(e.getClass().getName() + ": " + e.getMessage());
            System.exit(0);
        }
        System.out.println("Opened database successfully");
    }

    public boolean Insert(String statment) throws SQLException {
        boolean executed = false;
        stmt.execute(statment);
        stmt.close();
        con.close();

        return executed;

    }

public boolean Delete(String statment) throws SQLException {
        boolean executed = false;
        stmt.execute(statment);
        stmt.close();
        con.close();

        return executed;

    }

    public ResultSet Select(String statment) throws SQLException {
        ResultSet result = stmt.executeQuery(statment);;
        
        return result;

    }

public void Closed(){
try{
con.close();
stmt.close();
}catch(Exception e){
e.printStackTrace();
}
}

}

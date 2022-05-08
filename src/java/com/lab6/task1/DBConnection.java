/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lab6.task1;

/**
 *
 * @author User
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBConnection implements java.io.Serializable{
    public static Connection connection;
    
    public String getConnection(){
        try{
            //step 1: load the JDBC driver
            Class.forName("com.mysql.jdbc.Driver");
            //Step 2: Establish a connection to mySql database
            String myURL ="jdbc:mysql://localhost:3306/universitystudent";
            connection = DriverManager.getConnection(myURL, "root", "admin");
            return "Connection successfully executed";
            
        }catch (ClassNotFoundException | SQLException e){
            return "Could not connect to the database" +e.getMessage();
        }
    }
    
    public String closeConnection(){
        try{
            connection.close();
            return "Connection successfuly closed";
        }catch (SQLException e){
            return "Could not close the connection" + e.getMessage();
        }
    }
}


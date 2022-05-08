/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lab6.task2;

/**
 *
 * @author User
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection implements java.io.Serializable{
    
    private static Connection connection;
     public static Connection getConnection(){
         try{
             Class.forName("com.mysql.jdbc.Driver");
             String myUrl="jdbc:mysql://localhost:3306/hajah-rosnani";
             connection = DriverManager.getConnection(myUrl, "root", "admin");
             
         }catch(ClassNotFoundException | SQLException e){
             e.getMessage();
         }
         return connection;
     }
     
     public void closeConnection(){
         try{
             connection.close();
         }catch(SQLException e){
             e.getMessage();
         }
     }
}
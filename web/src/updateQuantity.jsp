<%-- 
    Document   : processAdmin
    Created on : Jun 2, 2021, 11:10:43 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.File"%>

           <%
            int result;
            
             Class.forName("com.mysql.jdbc.Driver");
             System.out.println("Step 1: MySQL driver loaded...!");
            
             String myURL = "jdbc:mysql://localhost/hajah-rosnani";
             Connection myConnection = DriverManager.getConnection (myURL, "root", "admin");
             System.out.println("Step 2: Database is connected...!");
            
             System.out.println("Step 3: Prepared Statement created...!");
            
//            String sInsertQry = "Insert INTO supplier(product_id,name,supplier,price,image,quantity) VALUES(?, ?, ?, ?, ?, ?)";
//            System.out.println("(\tSQL Query: " + sInsertQry);
            
//            PreparedStatement myPS = myConnection.prepareStatement (sInsertQry);
             Statement myPS = myConnection.createStatement();
            
            String name=request.getParameter("updateCart");
            String supplier=request.getParameter("cartid");
 

            
            System.out.println("Step 4: Perform insertion of record...!");
    
             
            
           result = myPS.executeUpdate("update cart set product_id='"+supplier+"',quantity='"+name+"' where product_id='"+supplier+"'");
          
            
            %>
            
    
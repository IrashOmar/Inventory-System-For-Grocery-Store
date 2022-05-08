<%-- 
    Document   : processAdmin
    Created on : Jun 2, 2021, 11:10:43 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.File"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
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
            
            String name=request.getParameter("name");
            String supplier=request.getParameter("supplier");
            String price=request.getParameter("price");
            String quantity=request.getParameter("quantity");
            String image=request.getParameter("image");


            
            System.out.println("Step 4: Perform insertion of record...!");
//            myPS.setString(1, product_id);
//            myPS.setString(2, name);
//            myPS.setString(3, supplier);
//            myPS.setString(4, price);
             
            
           result = myPS.executeUpdate("Insert INTO supplier(name,supplier,price,quantity,image) VALUES('"+name+"','"+supplier+"','"+price+"','"+quantity+"','"+image+"')");
          
            
            %>
            
                
    </body>
</html>

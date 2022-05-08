<%-- 
    Document   : addToViewOrder
    Created on : Jul 9, 2021, 8:54:39 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*,java.util.*"%>

        
              <%
                   
                    String driverName = "com.mysql.jdbc.Driver";
                    String connectionUrl = "jdbc:mysql://localhost:3306/";
                    String dbName = "hajah-rosnani";
                    String userId = "root";
                    String password = "admin";

                    try {
                    Class.forName(driverName);
                    } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                    }
                    PreparedStatement ps = null;
                    Connection connection = null;
                    Statement statement = null;
                    Statement statement2 = null;
                    ResultSet resultSet = null;
                    Statement statement1 = null;
                    ResultSet resultSet1 = null;
                    ResultSet resultSet2 = null;
                    ResultSet resultSet4 = null;
                    Statement statement4 = null;
                     PreparedStatement stmt = null;
                    %>
                    <%
                    try{ 
                    connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
                    statement=connection.createStatement();
                    String sql ="SELECT * FROM cart ";

                    resultSet = statement.executeQuery(sql);
                    while(resultSet.next()){
                    String q = resultSet.getString("quantity");
                    String product_id=resultSet.getString("product_id");
                    statement1=connection.createStatement();  
                    String sql1 ="insert into cart2(product_id,quantity)values('"+product_id+"','"+q+"')";  
                    out.println("<script>console.log('mak')</script>");
                    int a = statement1.executeUpdate(sql1);
                    String sql4="Select * from product where product_id="+product_id;
                    statement4=connection.createStatement(); 
                    resultSet4 = statement4.executeQuery(sql4);
//                    while(resultSet4.next()) {
//                        
//                    }
                    resultSet4.next();
                    String quantityOri=resultSet4.getString("quantity");
                    int quantityOriginal=Integer.parseInt(quantityOri);
                    int qNew=Integer.parseInt(q);

                    int quantityNew=quantityOriginal - qNew;
                     String quantityNew1=String.valueOf(quantityNew);
                     String query = "update product set quantity='"+quantityNew1+"' where product_id='"+product_id+"'";
                    stmt = connection.prepareStatement(query);
                    stmt.executeUpdate();
                   
                    %>
                    
                        
    
                      <%;
                    
                   }
                     
                     statement2=connection.createStatement(); 
                     String sql2="Delete from cart";
                     int b = statement2.executeUpdate(sql2);
                     response.sendRedirect("cart.jsp");
                    } catch (Exception e) {
                    e.printStackTrace();
                    }
                    %>

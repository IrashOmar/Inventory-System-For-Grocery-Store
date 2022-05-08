<%-- 
    Document   : adminProcess
    Created on : May 31, 2021, 2:37:54 PM
    Author     : User
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
  
<%
String name=request.getParameter("name");
String supplier=request.getParameter("supplier");
String price=request.getParameter("price");
String quantity=request.getParameter("quantity");
String description=request.getParameter("description");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hajah-rosnani", "root", "admin");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into supplier(name,supplier,price,quantity,description)values('"+name+"','"+supplier+"','"+price+"','"+quantity+"','"+description+"')");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
response.sendRedirect("edit.jsp");
%>
<!--<script>window.open("edit.jsp");</script>-->
    </body>
</html>

<%-- 
    Document   : sub
    Created on : Jun 3, 2021, 3:54:06 PM
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
String id = request.getParameter("id");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hajah-rosnani", "root", "admin");
PreparedStatement ps=null;
String sql="update supplier set name=?,supplier=?,price=?,quantity=? where product_id="+id;
ps=conn.prepareStatement(sql);
ps.setString(1, name);
ps.setString(2, supplier);
ps.setString(3, price);
ps.setString(4, quantity);

int i = ps.executeUpdate();
response=false;
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
    </body>
</html>

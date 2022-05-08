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


int product_id ;
product_id = Integer.parseInt(request.getParameter("product_id"));

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hajah-rosnani", "root", "admin");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into cart(product_id,quantity)values('"+product_id+"','"+1+"')");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
response.sendRedirect("products.jsp?product_id="+product_id);
%>
<!--<script>window.open("edit.jsp");</script>-->
    </body>
</html>

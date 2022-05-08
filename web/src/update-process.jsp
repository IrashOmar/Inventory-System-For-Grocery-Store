<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/hajah-rosnani";%>
<%!String user = "root";%>
<%!String psw = "admin";%>
<%
String id = request.getParameter("id");
String Username=request.getParameter("Username");
String Name=request.getParameter("Name");
String Email=request.getParameter("Email");
String Phone_Number =request.getParameter("Phone Number");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update users set id=?,Username=?,Name=?,Email=?,Phone Number=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, Username);
ps.setString(3, Name);
ps.setString(4, Email);
ps.setString(5, Phone_Number);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
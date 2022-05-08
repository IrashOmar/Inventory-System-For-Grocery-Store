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
String Gender=request.getParameter("Gender");
String Email=request.getParameter("Email");
String Address=request.getParameter("Address");
String no=request.getParameter("no");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update owner_details set id=?,Username=?,Name=?,Gender=?,Email=?,Address=?,no=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, Username);
ps.setString(3, Name);
ps.setString(4, Gender);
ps.setString(5, Email);
ps.setString(6, Address);
ps.setString(7, no);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
response.sendRedirect("index1.jsp");  
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
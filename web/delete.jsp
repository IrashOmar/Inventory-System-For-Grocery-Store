<%-- 
    Document   : delete
    Created on : Jun 4, 2021, 9:47:47 PM
    Author     : User
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String id = request.getParameter("d");
            int no= Integer.parseInt(id);
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hajah-rosnani","root","admin");
            Statement stat = conn.createStatement();
            stat.executeUpdate("delete from product where product_id='"+no+"'");
            response.sendRedirect("admin.jsp");
            %>
            
    </body>
</html>

<%-- 
    Document   : delete
    Created on : Jun 4, 2021, 9:47:47 PM
    Author     : User
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*,java.util.*"%>
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
             Statement stat1 = conn.createStatement();
             Statement stat2 = conn.createStatement();
             Statement stat5 = conn.createStatement();
             ResultSet resultSet4 = null;
              ResultSet resultSet5 = null;
            stat1=conn.createStatement();  
            String sql1 ="select * from cart2 where product_id="+id;  
            out.println("<script>console.log('mak')</script>");
            resultSet4 = stat1.executeQuery(sql1);
            resultSet4.next();
            String q=resultSet4.getString("quantity");
             stat2=conn.createStatement();  
             
             String sql3 ="select * from stock where product_id="+id;  
            out.println("<script>console.log('mak')</script>");
            resultSet5 =stat5.executeQuery(sql3);
            resultSet5.next();
            String stockQuantity=resultSet5.getString("quantity");
             stat5=conn.createStatement();  
             
             int quantityBaru=Integer.parseInt(q);
             int stockQuantity1=Integer.parseInt(stockQuantity);
             int Total = quantityBaru + stockQuantity1;
             String Total1=String.valueOf(Total);
             String sql2 ="update stock set quantity='"+Total1+"' where product_id='"+id+"'"; 
              out.println("<script>console.log('mak')</script>");
               int a = stat2.executeUpdate(sql2);
//             stat1.execute("insert into stock(product_id,quantity)values('"+product_id+"','"+q+"')";  
            stat.executeUpdate("delete from cart2 where product_id='"+no+"'");
            
            response.sendRedirect("viewOrder.jsp");
            %>
            
    </body>
</html>

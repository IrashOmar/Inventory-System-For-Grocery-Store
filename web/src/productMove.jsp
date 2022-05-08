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
                <div id="content">

            <nav class="navbar navbar-expand-lg navbar-light bg-light">
              <div class="container-fluid">
        <%
        String host = "jdbc:mysql://localhost:3306/hajah-rosnani";
        Connection conn=null;
        Statement stat = null;
        ResultSet res = null;
        PreparedStatement stmt = null;
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        conn = DriverManager.getConnection(host, "root", "admin");
        
        %>
            <div class="container">
                <form method="post"  action="">
                    <%
                        stat = conn.createStatement();
                        String u = request.getParameter("u");
                        int num = Integer.parseInt(u);
                        String data ="select * from product where cat_id='"+num+"'";
                        res = stat.executeQuery(data);
                        while(res.next()){
                            
                        
                    %>
                    <div class=" mb-3">
                        <label class="col-auto">Product Name</label>
                        <input name="name" value='<%=res.getString("name")%>' type="text" class="form-control" style="border-radius: 5px 5px 5px 5px;" required>
                    </div>
                    <div class="mb-3">
                        <label class="col-auto">Supplier</label>
                        <input name="supplier" value='<%=res.getString("supplier")%>' type="text" class="form-control" style="border-radius: 5px 5px 5px 5px;" required>
                    </div>
                    <div class="mb-3">
                        <label class="col-auto">Product Price</label>
                        <input name="price" value='<%=res.getString("price")%>' type="text" class="form-control" style="border-radius: 5px 5px 5px 5px;" required>
                    </div>
                        <div class="mb-3">
                        <label class="col-auto">Product Quantity</label>
                        <input name="quantity" value='<%=res.getString("quantity")%>' type="text" class="form-control" style="border-radius: 5px 5px 5px 5px;" required>
                    </div>
                       <div class="mb-3">
                        <label class="col-auto">Product Description</label>
                        <input name="description" value='<%=res.getString("description")%>' type="text" class="form-control" style="border-radius: 5px 5px 5px 5px;" required>
                    </div>
                    
                    
                    <button type ="submit" class="btn btn-warning">Update</button>
                    <a href="edit.jsp" class="btn btn-default">Back</a>
                   
                </form>
            </div>
  
        </div>
                                            
                                            
    </body>
</html>

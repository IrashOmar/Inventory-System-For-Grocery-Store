<%-- 
    Document   : edit
    Created on : May 31, 2021, 11:43:12 PM
    Author     : User
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>


    <!DOCTYPE html>
    <html>

    <head>
        
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>View Order</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <!-- Bootstrap CSS CDN -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous"> -->
        <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
        <!-- Our Custom CSS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="admin.css">

        <!-- Font Awesome JS -->
        <!-- <script src="https://kit.fontawesome.com/1f0cb49d65.js" crossorigin="anonymous"></script> -->
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>

    </head>

    <body>
        


        <div class="wrapper">
            <!-- Sidebar Holder -->

            <nav id="sidebar">
                <div class="sidebar-header">
                    <img src="img/HajahRosnani_Logo.png" alt="logo" width="150" class="mx-2">
                </div>

                     <ul class="list-unstyled components">
                    <li>
                        <a href="admin.jsp" class="text">
                            <i class="fas fa-cart-plus"></i>&nbsp&nbspInsert Product</a>
                    </li>

                    <li>
                        <a href="edit.jsp">
                            <i class="fas fa-edit"></i>&nbsp&nbspManage Product</a>
                    </li>

                   <li class="active">
                        <a href="viewOrder.jsp"><i class="fas fa-eye"></i>&nbsp&nbspView Order</a>
                    </li>
                
                </ul>
            </nav>

            <!-- Page Content Holder -->
            <div id="content">

                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <div class="container-fluid">
                        <button type="button" id="sidebarCollapse" class="navbar-btn">
                            <i class="fas fa-times-circle"></i>
                        </button>
                        <h4 class="align-items-center">View Order</h4>
                    </div>
                </nav>



                <div class="container">
              
                    <div class="table-responsive mb-4">
                        <table class="table table-striped table-hover table-bordered ">
                            <thead class="table-dark">

                                <tr class="">
                                  
                                    <th>Product Name</th>
                                    <th>Supplier</th>
                                    <th>Price Per Unit</th>
                                    <th> Quantity</th>
                                    <th> Description</th>
                                    
                                    <th>Action</th>
                                </tr>

                            </thead>
                            <tbody>
                <%
                    String product_id = request.getParameter("product_id");
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

                    Connection connection = null;
                    Statement statement = null;
                    ResultSet resultSet = null;
                    Statement statement1 = null;
                    ResultSet resultSet1 = null;
                    %>
                    <%
                    try{ 
                    connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
                    statement=connection.createStatement();
                    String sql ="SELECT * FROM cart2 ";

                    resultSet = statement.executeQuery(sql);
                    while(resultSet.next()){
                    String cat_id1=resultSet.getString("product_id");
                    statement1=connection.createStatement();  
                    String sql1 ="SELECT * FROM product where product_id="+cat_id1 ;

                    resultSet1 = statement1.executeQuery(sql1);
                    while(resultSet1.next()){
                    %>
                               <tr class="table">
                                  
                                    <td><%=resultSet1.getString("name") %></td>
                                    <td><%=resultSet1.getString("supplier") %></td>
                                    <td><%=resultSet1.getString("price") %></td>
                                    <td><%=resultSet.getString("quantity") %></td>
                                    <td><%=resultSet1.getString("description")%></td>
                                     

                                  
                                    <td>
                                        <a href='deleteOrder.jsp?d=<%=resultSet1.getString("product_id")%>' class="btn btn-warning">Accept</a><!-- comment -->
                                        
                                    </td>
                                </tr>
             <%;
                    }
}

                    } catch (Exception e) {
                    e.printStackTrace();
                    }
                    %>>
                                </tbody>
                        </table>
                
                    </div>
                   
                </div>
            </div>




            </div>
          <script type="text/javascript">
        function handleSelect(elm)
        {
            window.location = "?cat_id="+elm.value;
        }

        </script>
       
      
</body>

</html>

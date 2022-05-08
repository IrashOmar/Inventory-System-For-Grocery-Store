<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link href='https://fonts.googleapis.com/css?family=Noto+Sans' rel='stylesheet'>
    <link rel="stylesheet" href="/nyumstyle.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="/hamburgers.css" rel="stylesheet">
    <link rel="icon" href="/img/nyumicon.ico">
</head>

<body>
    <header class="py-3" style="background-color: #92D050;">
        <div class="container gap-3">
            <div class="d-flex align-items-center flex-wrap flex-sm-nowrap justify-content-between">
                <!-- <button class="btn btn-warning d-sm-none order-1" type="button" data-bs-toggle="collapse"
                    data-bs-target="#categoriesToggle" aria-controls="categoriesToggle" aria-expanded="true"
                    aria-label="Toggle navigation">
                    <svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor"
                        class="bi bi-list" viewBox="0 0 16 16">
                        <path fill-rule="evenodd"
                            d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z" />
                    </svg>
                </button> -->
                <button class="hamburger hamburger--spring d-sm-none order-1" type="button" data-bs-toggle="collapse"
                    data-bs-target="#categoriesToggle" aria-controls="categoriesToggle" aria-expanded="true"
                    aria-label="Toggle navigation" onclick="burgerAnimate()">
                    <span class="hamburger-box">
                        <span class="hamburger-inner"></span>
                    </span>
                </button>

                 <a href="../index.jsp" class="navbar-brand order-2">
                    <img src="../img/HajahRosnani_Logo.png" alt="logo" width="150" class="mx-2">
                </a>

                <div class="input-group order-4 order-sm-3">
                    <input type="search" class="form-control" placeholder="Search" aria-label="search"
                        aria-describedby="button-addon2" style="border-radius: 20px 0 0 20px;">
                    <button class="btn btn-success" type="button" id="button-addon2"
                        style="border-radius: 0 20px 20px 0;"><span class="material-icons pt-1">
                            search
                        </span></button>
                </div>


                <ul class="navbar-nav order-3 order-sm-4 ms-3 mb-2 mb-md-0 d-flex flex-row">
                    <li class="nav-item mx-1">
                        <a href="user.jsp" class="nav-link text-dark"><svg xmlns="http://www.w3.org/2000/svg"
                                width="25" height="25" fill="currentColor" class="bi bi-person-fill"
                                viewBox="0 0 16 16">
                                <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                            </svg></a>
                    </li>
                    <li class="nav-item mx-1">
                        <a href="../salesExample.jsp" class="nav-link text-dark"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-cash" viewBox="0 0 16 16">
                            <path d="M8 10a2 2 0 1 0 0-4 2 2 0 0 0 0 4z"/>
                            <path d="M0 4a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V4zm3 0a2 2 0 0 1-2 2v4a2 2 0 0 1 2 2h10a2 2 0 0 1 2-2V6a2 2 0 0 1-2-2H3z"/>
                          </svg></a>
                    </li>
                    <li class="nav-item mx-1">
                        <a href="cart.jsp" class="nav-link text-dark"><svg xmlns="http://www.w3.org/2000/svg"
                                width="25" height="25" fill="currentColor" class="bi bi-basket2" viewBox="0 0 16 16">
                                <path
                                    d="M4 10a1 1 0 0 1 2 0v2a1 1 0 0 1-2 0v-2zm3 0a1 1 0 0 1 2 0v2a1 1 0 0 1-2 0v-2zm3 0a1 1 0 1 1 2 0v2a1 1 0 0 1-2 0v-2z" />
                                <path
                                    d="M5.757 1.071a.5.5 0 0 1 .172.686L3.383 6h9.234L10.07 1.757a.5.5 0 1 1 .858-.514L13.783 6H15.5a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-.623l-1.844 6.456a.75.75 0 0 1-.722.544H3.69a.75.75 0 0 1-.722-.544L1.123 8H.5a.5.5 0 0 1-.5-.5v-1A.5.5 0 0 1 .5 6h1.717L5.07 1.243a.5.5 0 0 1 .686-.172zM2.163 8l1.714 6h8.246l1.714-6H2.163z" />
                            </svg></a>
                    </li>
                </ul>
            </div>
        </div>
    </header>

 

    <main>
             <%
        String host = "jdbc:mysql://localhost:3306/hajah-rosnani";
        Connection conn=null;
        Statement stat = null;
        ResultSet res = null;
        PreparedStatement stmt = null;
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        conn = DriverManager.getConnection(host, "root", "admin");
        
        %>
        <div class="container-lg py-3" style="background-color:white;">
            <div class="row">
              
             <form method="post"  action="">
                  <%
                        stat = conn.createStatement();
                        String u = request.getParameter("u");
                        int num = Integer.parseInt(u);
                        String data ="select * from owner_details where id='"+num+"'";
                        res = stat.executeQuery(data);
                        while(res.next()){
                            
                        
                    %>
               <div class=" mb-3">
                        <label class="col-auto">Product Name</label>
                        <input name="name" value='<%=res.getString("Username")%>' type="text" class="form-control" style="border-radius: 5px 5px 5px 5px;" required>
                    </div>
                    <div class="mb-3">
                        <label class="col-auto">Supplier</label>
                        <input name="supplier" value='<%=res.getString("Name")%>' type="text" class="form-control" style="border-radius: 5px 5px 5px 5px;" required>
                    </div>
                    <div class="mb-3">
                        <label class="col-auto">Product Price</label>
                        <input name="price" value='<%=res.getString("Email")%>' type="text" class="form-control" style="border-radius: 5px 5px 5px 5px;" required>
                    </div>
                        <div class="mb-3">
                        <label class="col-auto">Product Quantity</label>
                        <input name="quantity" value='<%=res.getString("Phone Number")%>' type="text" class="form-control" style="border-radius: 5px 5px 5px 5px;" required>
                    </div>
                       <div class="mb-3">
                        <label class="col-auto">Product Description</label>
                        <input name="description" value='<%=res.getString("Gender")%>' type="text" class="form-control" style="border-radius: 5px 5px 5px 5px;" required>
                    </div>
                       <div class="mb-3">
                        <label class="col-auto">Product Description</label>
                        <input name="description" value='<%=res.getString("Date of Birth")%>' type="text" class="form-control" style="border-radius: 5px 5px 5px 5px;" required>
                    </div>
                       <div class="mb-3">
                        <label class="col-auto">Product Description</label>
                        <input name="description" value='<%=res.getString("Street")%>' type="text" class="form-control" style="border-radius: 5px 5px 5px 5px;" required>
                    </div>
                       <div class="mb-3">
                        <label class="col-auto">Product Description</label>
                        <input name="description" value='<%=res.getString("City")%>' type="text" class="form-control" style="border-radius: 5px 5px 5px 5px;" required>
                    </div>
                       <div class="mb-3">
                        <label class="col-auto">Product Description</label>
                        <input name="description" value='<%=res.getString("State")%>' type="text" class="form-control" style="border-radius: 5px 5px 5px 5px;" required>
                    </div>
                       <div class="mb-3">
                        <label class="col-auto">Product Description</label>
                        <input name="description" value='<%=res.getString("Zipcode")%>' type="text" class="form-control" style="border-radius: 5px 5px 5px 5px;" required>
                     </div>
                    
                    
                    
                    <button type ="submit" class="btn btn-warning">Update</button>
                    <a href="user.jsp" class="btn btn-default">Back</a>
                   
             </form>
            </div>
                        
                        
                    
                    </div>
              
         
       
    </main>
    <footer class="footer container-fluid mt-auto pt-3" style="background-color: #48ac33; color: whitesmoke;">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-6 pe-5">
                    <h3>Hajah Rosnani Mini Market</h4><br>

                        <h5>About Us</h5>
                        <p><strong>Hajah Rosnani Mini Market</strong> is a new online shopping website which allows you to
                            create your own
                            shopping list. We are thrilled to give you the best online shopping experience!</p>

                </div>
                <div class="col-6 col-md">
                    <h5>Contact Us</h5>
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                        class="bi bi-telephone me-2" viewBox="0 0 16 16">
                        <path
                            d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z" />
                    </svg> +60 333 555 777 <br>
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                        class="bi bi-envelope me-2" viewBox="0 0 16 16">
                        <path
                            d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2zm13 2.383-4.758 2.855L15 11.114v-5.73zm-.034 6.878L9.271 8.82 8 9.583 6.728 8.82l-5.694 3.44A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.739zM1 11.114l4.758-2.876L1 5.383v5.73z" />
                    </svg> abdulrahman@gmail.com<br>

                </div>
                <div class="col-6 col-md">
                <h5>Address</h5>
                    No 76, Felda Jerangau
                    Barat Ajil, 21820, 
                    Terengganu
                </div>
                <hr style="margin-top: 20px;">
                <div class="container text-center font-italic text-muted">
                    <p>&copy; 2021 Hajah Rosnani Mini Market</p>
                </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
        crossorigin="anonymous"></script>
    <script src="/nyumscript.js"></script>
</body>
</html>

<%
    String a = request.getParameter("u");
    String b = request.getParameter("Username");
    String c = request.getParameter("Name");
    String d = request.getParameter("Email");
    String e = request.getParameter("Phone Number");
    String f = request.getParameter("Gender");
    String g = request.getParameter("Date of Birth");
    String h = request.getParameter("Street");
    String i = request.getParameter("City");
    String j = request.getParameter("State");
    String k = request.getParameter("Zipcode");
    if (a!=null && b!=null && c!=null && d!=null && e!=null && f!=null && g!=null && h!=null && i!=null && j!=null && k!=null){
        String query = "update owner_details set Username='"+b+"',Name='"+c+"',Email='"+d+"', Phone Number='"+e+"', Gender='"+f+"' , Date of Birth='"+g+"', Street='"+h+"', City='"+i+"', State='"+j+"', Zipcode='"+k+"' where id='"+a+"'";
        stmt = conn.prepareStatement(query);
 
        stmt.executeUpdate();
      response.sendRedirect("user.jsp");  
    }else{
        
    }
    }
     %>


     
     
 
<!DOCTYPE html>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*,java.util.*"%>
<html lang="en">
    

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hajah Rosnani Mini Market</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link href='https://fonts.googleapis.com/css?family=Noto+Sans' rel='stylesheet'>
    <link rel="stylesheet" href="/nyumstyle.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">
    <link href="/hamburgers.css" rel="stylesheet">
    <link rel="icon" href="/img/nyumicon.ico">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</head>

<body>
    <header class="py-3" style="background-color: #92D050;">
        <div class="container gap-3">
            <div class="d-flex align-items-center flex-wrap flex-sm-nowrap justify-content-between">

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

             

                <ul class="navbar-nav order-3 order-sm-4 ms-3 mb-2 mb-md-0 d-flex flex-row">
                    <li class="nav-item mx-1">
                        <a href="../src/index1.jsp" class="nav-link text-dark"><svg xmlns="http://www.w3.org/2000/svg"
                                width="25" height="25" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
                                <path
                                    d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z" />
                            </svg></a>
                    </li>
                    <li class="nav-item mx-1">
                        <a href="../salesExample.jsp" class="nav-link text-dark"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-cash" viewBox="0 0 16 16">
                            <path d="M8 10a2 2 0 1 0 0-4 2 2 0 0 0 0 4z"/>
                            <path d="M0 4a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V4zm3 0a2 2 0 0 1-2 2v4a2 2 0 0 1 2 2h10a2 2 0 0 1 2-2V6a2 2 0 0 1-2-2H3z"/>
                          </svg></a>
                    </li>
                    <li class="nav-item mx-1">
                        <a href="../src/cart.jsp" class="nav-link text-dark"><svg xmlns="http://www.w3.org/2000/svg"
                                width="25" height="25" fill="currentColor" class="bi bi-basket2-fill"
                                viewBox="0 0 16 16">
                                <path
                                    d="M5.929 1.757a.5.5 0 1 0-.858-.514L2.217 6H.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h.623l1.844 6.456A.75.75 0 0 0 3.69 15h8.622a.75.75 0 0 0 .722-.544L14.877 8h.623a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1.717L10.93 1.243a.5.5 0 1 0-.858.514L12.617 6H3.383L5.93 1.757zM4 10a1 1 0 0 1 2 0v2a1 1 0 1 1-2 0v-2zm3 0a1 1 0 0 1 2 0v2a1 1 0 1 1-2 0v-2zm4-1a1 1 0 0 1 1 1v2a1 1 0 1 1-2 0v-2a1 1 0 0 1 1-1z" />
                            </svg></a>
                    </li>
                </ul>
            </div>
        </div>
    </header>

    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog signin_dialog">
            <div class="modal-content">
                
                    <img src="../img/HajahRosnani_Logo.png" alt="logo" width="200" class="mx-2">
                    <p><p>
                    <p>Payment is Sucessful.We will deliver it within 3 days</p>
                 <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
                </div>
                
            </div>
        </div>
   

    <nav class="navbar sticky-top navbar-expand-sm shadow py-2 justify-content-center"
        style="background-color: #FD6C5D;">
        <div class="collapse navbar-collapse" id="categoriesToggle">
            <div class="container">
                <ul class="navbar-nav mb-2 mb-md-0 w-100 justify-content-between next" style="font-weight: bold;">
                   <li class="nav-item"><a href="products.jsp?cat_id=1" class="nav-link text-dark">Fruits</a></li>
                    <li class="nav-item"><a href="products.jsp?cat_id=2" class="nav-link text-dark">Food Essentials</a></li>
                    <li class="nav-item"><a href="products.jsp?cat_id=3" class="nav-link text-dark">Personal Care</a></li>
                    <li class="nav-item"><a href="products.jsp?cat_id=4" class="nav-link text-dark">Beverages</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <main>
        <button type="button" class="btn rounded-circle" id="scrollUp" onclick="goUp()">
            <!-- Go Up Button -->
            <svg xmlns="http://www.w3.org/2000/svg" width="36" height="46" fill="currentColor"
                class="bi bi-caret-up-fill" viewBox="0 0 16 16">
                <path
                    d="m7.247 4.86-4.796 5.481c-.566.647-.106 1.659.753 1.659h9.592a1 1 0 0 0 .753-1.659l-4.796-5.48a1 1 0 0 0-1.506 0z" />
            </svg>
        </button>

        <div class="container">
            <div class="row my-4">
                <div class="col-sm-12 col-lg-8 rounded-3 bg-white mx-auto my-1">
                    <!-- Cart section -->
                    <div class="row">
                        <h3 style="text-align: center; background-color: #ffc000;" class="py-3 rounded-3">Cart</h3>
                    </div>
                    
                   
                  
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
                    String sql ="SELECT * FROM cart ";

                    resultSet = statement.executeQuery(sql);
                    while(resultSet.next()){
                    String cat_id1=resultSet.getString("product_id");
                    statement1=connection.createStatement();  
                    String sql1 ="SELECT * FROM product where product_id="+cat_id1 ;

                    resultSet1 = statement1.executeQuery(sql1);
                    while(resultSet1.next()){
                    %>
                    <div class="row py-xxl-3 py-sm-4 align-items-center" style="border-bottom: 1px #c7c7c7 solid;">
                        <div class="col-sm-auto align-self-center py-2 mx-sm-auto">
                             <a href='deleteCart.jsp?d=<%=resultSet1.getString("product_id")%>' class="btn btn-danger">Delete</a>
                        </div>
                        <div class="col-2">
                            <img src="/img/banana.jpg" class="img-thumbnail" alt="">
                        </div>
                        <div class="col align-self-center">
                            <div>
                                <h4><%=resultSet1.getString("name")%></h4>RM
                                <p class="text-success fw-bold" id="singlePrice<%=cat_id1%>"><%=resultSet1.getString("price")%></p>
                            </div>
                        </div>
                 
                        <div class="col-2">
                            <input type="number" class="form-control" id="inputQuantity<%=cat_id1%>" value="1"
                                onclick="cartTotalCal<%=cat_id1%>()" onkeyup="cartTotalCal<%=cat_id1%>()" min="0">
 
                        </div>
                                
                        <div class="col-2 align-self-center">
                            <div>
                                <h6 class="text-center">Sub Total (RM)</h6>
                                <p class="text-center text-success fw-bold" id="price<%=cat_id1%>"><%=resultSet1.getString("price")%></p>
                            </div>
                            
                        </div>
                            <div class="col-1 align-self-center">
                        <input type="checkbox" name="" id="checkItem<%=cat_id1%>" class="" onclick="cartTotalCal1<%=cat_id1%>()">
                    </div>
                        </div>  
                    
                 
 <script>
   function cartTotalCal<%=cat_id1%>() 
   
{console.log("abu");
  var singlePrice = document.getElementById("singlePrice<%=cat_id1%>").innerHTML;
  var inputQuantity = document.getElementById("inputQuantity<%=cat_id1%>").value;
   var cat_id1= <%=cat_id1%>;
    var price = singlePrice * inputQuantity;
  if (!isNaN(price)){
    document.getElementById("price<%=cat_id1%>").innerHTML = price;
 
}
 $.ajax({
                        type:"post",
                        cache:false,
                        url:"../src/updateQuantity.jsp",
                        data:{
                            updateCart:inputQuantity,
                            cartid:cat_id1
                        },
                        success:function(response){
                            if(response){
                                setTimeout(cartTotalCal<%=cat_id1%>, 5000);
                            } else{
                                alert('not succesfully');
                                window.open("_self");
                            }
                        },
                        error: function(jqXHR, textStatus, errorThrown){
                            console.log(textStatus, errorThrown);
                        }
                    });
}
</script>
<script>
 var total1=0;   
function cartTotalCal1<%=cat_id1%>(){
   
    var price = document.querySelectorAll("#price<%=cat_id1%>");
    var itemBox = document.querySelectorAll("#checkItem<%=cat_id1%>");
    var quantity = document.querySelectorAll("#inputQuantity<%=cat_id1%>");

    for (let index = 0; index < itemBox.length; index++) {
        if (itemBox[index].checked == true) {
            total1 += parseFloat(price[index].innerText.replace("RM ", ""));
            document.getElementById("cartTotal").innerHTML = "RM " + total1.toFixed(2);
        }else{
            total1 = total1 - parseFloat(price[index].innerText.replace("RM ", ""));                          
        };

    }
    document.getElementById("cartTotal").innerHTML = "RM " + total1.toFixed(2);
    }
     document.getElementById('checkItem<%=cat_id1%>').onchange = function() {
     document.getElementById('inputQuantity<%=cat_id1%>').disabled = this.checked;};
</script>
                    <%;
                    }
}

                    } catch (Exception e) {
                    e.printStackTrace();
                    }
                    %>
         

                </div>


                <div class="col-sm-12 col-lg-auto rounded-3 mx-auto my-1 bg-success align-self-start sticky-xl-topList">
                    <!-- Total section -->
                    <div class="row text-white align-items-center py-3">
                        <div class="col-sm-12 mx-auto">
                            <h3 class="text-center">Total</h3>
                        </div>
                        <div class="col-sm-12 mx-auto">
                            <h1 class="text-center" id="cartTotal">RM 0.00</h1>
                        </div>
                    </div>
                    <hr style="color: white;" class="hrList">
                    <div class="row align-items-center py-3">
                        <div class="col-12">
                            <select class="form-select" aria-label="Default select example">
                                <option selected>Select Address for Delivery</option>
                                <option value="1"> No 76,Felda Jerangau Barat Ajil,21820 Terengganu </option>
                                <option value="2">Address 2</option>
                                <option value="3">Address 3</option>
                            </select>
                        </div>
                    </div>
                    <hr style="color: white;" class="hrList">
                    <div class="row text-white align-items-center py-3">
                        <div class="col-sm-12">
                            <form action="addToViewOrder.jsp">
                                <button type="submit" name="submit5" class="btn btn-primary form-control">Checkout</button>  
                            </form>
      
                        </div>
                    </div>
                </div>
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
                <script src="/src/JS/cart.js"></script>
                <script>
                  function submitToViewOrder(){
                      console.log("abah");
                      $.ajax({
                        type:"post",
                        cache:false,
                        url:"../src/addToViewOrder.jsp",
                        data:{
                           
                        },
                        success:function(response){
                            if(response){
//                               location.reload();
                            } else{
                                alert('not succesfully');
                                window.open("_self");
                            }
                        },
                        error: function(jqXHR, textStatus, errorThrown){
                            console.log(textStatus, errorThrown);
                        }
                    });
} 
                      
                  
                </script>
            </body>

            </html>
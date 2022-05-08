<!Doctype html>
<html lang="en">
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*,java.util.*"%>
 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/libs/css/style.css">
    <link rel="stylesheet" href="assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" href="assets/vendor/vector-map/jqvmap.css">
    <link rel="stylesheet" href="assets/vendor/jvectormap/jquery-jvectormap-2.0.2.css">
    <link rel="stylesheet" href="assets/vendor/fonts/flag-icon-css/flag-icon.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link href='https://fonts.googleapis.com/css?family=Noto+Sans' rel='stylesheet'>
    <link rel="stylesheet" href="nyumstyle.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://unpkg.com/@pqina/flip/dist/flip.min.css" rel="stylesheet">
    <link rel="icon" href="img/nyumicon.ico">
    <link href="/hamburgers.css" rel="stylesheet">
    <title>Hajah Rosnani Sales Admin</title>

    
</head>

<body>
    <!-- ============================================================== -->
    <!-- main wrapper -->
    <header class="py-3" style="background-color: #92D050; ">
        <div class="container gap-3">
            <div class="d-flex align-items-center flex-wrap flex-sm-nowrap justify-content-between">
                <button class="hamburger hamburger--spring d-sm-none order-1" type="button" data-bs-toggle="collapse" data-bs-target="#categoriesToggle" aria-controls="categoriesToggle" aria-expanded="true" aria-label="Toggle navigation" onclick="burgerAnimate()">
                    <span class="hamburger-box">
                        <span class="hamburger-inner"></span>
                    </span>
                </button>

                <a href="index.jsp" class="navbar-brand order-2">
                    <img src="img/HajahRosnani_Logo.png" alt="logo" width="150" class="mx-2">
                </a>

           

                <ul class="navbar-nav order-3 order-sm-4 ms-3 mb-2 mb-md-0 d-flex flex-row">
                    <li class="nav-item mx-1">
                        <a href="src/index1.jsp" class="nav-link text-dark" ><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
                            <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
                          </svg></a>
                    </li>
                    <li class="nav-item mx-1">
                        <a href="salesExample.jsp" class="nav-link text-dark"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-cash" viewBox="0 0 16 16">
                            <path d="M8 10a2 2 0 1 0 0-4 2 2 0 0 0 0 4z"/>
                            <path d="M0 4a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V4zm3 0a2 2 0 0 1-2 2v4a2 2 0 0 1 2 2h10a2 2 0 0 1 2-2V6a2 2 0 0 1-2-2H3z"/>
                          </svg></a>
                    </li>
                    <li class="nav-item mx-1">
                        <a href="src/cart.jsp" class="nav-link text-dark"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-basket2" viewBox="0 0 16 16">
                            <path d="M4 10a1 1 0 0 1 2 0v2a1 1 0 0 1-2 0v-2zm3 0a1 1 0 0 1 2 0v2a1 1 0 0 1-2 0v-2zm3 0a1 1 0 1 1 2 0v2a1 1 0 0 1-2 0v-2z"/>
                            <path d="M5.757 1.071a.5.5 0 0 1 .172.686L3.383 6h9.234L10.07 1.757a.5.5 0 1 1 .858-.514L13.783 6H15.5a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-.623l-1.844 6.456a.75.75 0 0 1-.722.544H3.69a.75.75 0 0 1-.722-.544L1.123 8H.5a.5.5 0 0 1-.5-.5v-1A.5.5 0 0 1 .5 6h1.717L5.07 1.243a.5.5 0 0 1 .686-.172zM2.163 8l1.714 6h8.246l1.714-6H2.163z"/>
                          </svg></a>
                    </li>
                </ul>
            </div>
        </div>
        
    </header>
    <div class="row">
        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
            <div class="page-header">
                <br>
                <h3 class="mb-2">Sales Dashboard  </h3>
               
     
            </div>
        </div>
    </div>
  
            <!-- <div class="container-fluid  dashboard-content"> -->
                <!-- ============================================================== -->
                <!-- pagehader  -->
                <!-- ============================================================== -->
                <!-- <div class="row"> -->
                    <!-- <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12"> -->
                        <!-- <div class="page-header"> -->
                            <!-- <h3 class="mb-2">Sales Dashboard Template </h3> -->
                            <!-- <p class="pageheader-text">Lorem ipsum dolor sit ametllam fermentum ipsum eu porta consectetur adipiscing elit.Nullam vehicula nulla ut egestas rhoncus.</p> -->
                            <!-- <div class="page-breadcrumb"> -->
                                <!-- <nav aria-label="breadcrumb"> -->
                                    <!-- <ol class="breadcrumb"> -->
                                        <!-- <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li> -->
                                        <!-- <li class="breadcrumb-item active" aria-current="page">Sales Dashboard Template</li> -->
                                    <!-- </ol> -->
                                <!-- </nav> -->
                            <!-- </div> -->
                        <!-- </div> -->
                    <!-- </div> -->
                <!-- </div> -->
                <!-- ============================================================== -->
                <!-- pagehader  -->
                <!-- ============================================================== -->
                <div class="row">
                    <!-- metric -->
                    <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="text-muted">Customers</h5>
                                <div class="metric-value d-inline-block">
                                    <h1 class="mb-1 text-primary">32,100 </h1>
                                </div>
                                <div class="metric-label d-inline-block float-right text-success">
                                    <i class="fa fa-fw fa-caret-up"></i><span>5.27%</span>
                                </div>
                            </div>
                            <div id="sparkline-1"></div>
                        </div>
                    </div>
                    <!-- /. metric -->
                    <!-- metric -->
                    <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="text-muted">Product Purchased</h5>
                                <div class="metric-value d-inline-block">
                                    <h1 class="mb-1 text-primary">4,200 </h1>
                                </div>
                                <div class="metric-label d-inline-block float-right text-danger">
                                    <i class="fa fa-fw fa-caret-down"></i><span>1.08%</span>
                                </div>
                            </div>
                            <div id="sparkline-2"></div>
                        </div>
                    </div>
                    <!-- /. metric -->
                    <!-- metric -->
                    <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="text-muted">Revenue</h5>
                                <div class="metric-value d-inline-block">
                                    <h1 class="mb-1 text-primary">RM 5,656</h1>
                                </div>
                                <div class="metric-label d-inline-block float-right text-danger">
                                    <i class="fa fa-fw fa-caret-down"></i><span>7.00%</span>
                                </div>
                            </div>
                            <div id="sparkline-3">
                            </div>
                        </div>
                    </div>
                    <!-- /. metric -->
                    <!-- metric -->
                    <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="text-muted">Growth</h5>
                                <div class="metric-value d-inline-block">
                                    <h1 class="mb-1 text-primary">+28.45% </h1>
                                </div>
                                <div class="metric-label d-inline-block float-right text-success">
                                    <i class="fa fa-fw fa-caret-up"></i><span>4.87%</span>
                                </div>
                            </div>
                            <div id="sparkline-4"></div>
                        </div>
                    </div>
                    <!-- /. metric -->
                </div>
                <!-- ============================================================== -->
                <!-- revenue  -->
                <!-- ============================================================== -->
                <!-- <div class="row"> -->
                    <!-- <div class="col-xl-8 col-lg-12 col-md-8 col-sm-12 col-12" > -->
                    
                        <div class="card">
                            <h5 class="card-header">Revenue</h5>
                           
                            <div class="card-body border-top">
                                <div class="row">
                                    <div class="offset-xl-1 col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12 p-3">
                                        <h4> Today's Earning:RM 2,800.30</h4>
                                      
                                    </div>
                                    <div class="offset-xl-1 col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12 p-3">
                                        <h2 class="font-weight-normal mb-3"><span>RM 48,325</span> </h2>
                                        <div>
                                           
                                            <span class="legend-text">Current Week</span></div>
                                    </div>
                                    <div class="offset-xl-1 col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12 p-3">
                                        <h2 class="font-weight-normal mb-3">

                                                        <span>RM 59,567</span>
                                                    </h2>
                                        <div><span class="legend-text">Previous Week</span></div>
                                    </div>
                                </div>
                            </div>
                            






                        <!-- </div> -->
                    <!-- </div> -->
                    <!-- ============================================================== -->
                    <!-- end reveune  -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- total sale  -->
                    <!-- ============================================================== -->
                   
                    <!-- ============================================================== -->
                    <!-- end total sale  -->
                    <!-- ============================================================== -->
                </div>
                <!-- <div class="row"> -->
                    <!-- ============================================================== -->
                    <!-- top selling products  -->
                    <!-- ============================================================== -->
                    <!-- <div class="col-xl-7 col-lg-12 col-md-12 col-sm-12 col-12"> -->
                        <div class="card">
                            <h5 class="card-header">Products Sold</h5>
                            <div class="card-body p-0">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead class="bg-light">
                                            <tr class="border-0">
                                            <%
                                            String id = request.getParameter("userId");
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
                                            %>
                                            
                                                
                                               
                                                <th class="border-0">Product_Id</th>
                                                <th class="border-0">Product_Name</th>
                                                <th class="border-0">Quantity</th>
                                                <th class="border-0">Price</th>
                                                <th class="border-0">Order_Time</th>
                                            </tr>
                                            
                                        </thead>
                                        <tbody>
                                            
                                                <%
                                                try{ 
                                                connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
                                                statement=connection.createStatement();
                                                String sql ="SELECT * FROM customer";

                                                resultSet = statement.executeQuery(sql);
                                                while(resultSet.next()){
                                                %>
                                                <tr>
                                                
                                                
                                                <td><%=resultSet.getString("Customer_Id") %></td>
                                                 <td><%=resultSet.getString("Product_Name") %></td>
                                                 <td><%=resultSet.getString("Quantity") %></td><!-- comment -->
                                                 <td><%=resultSet.getString("Price") %></td><!-- comment -->
                                                 <td><%=resultSet.getString("Order_Time") %></td>
                                                 
                                                 
                                               
                                                
                                                </tr>
                                                <% 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                                %>
                                           
<!--                                            <tr>
                                                <td>2</td>
                                                <td>
                                                    <div class="m-r-10"><img src="assets/images/product-pic-2.jpg" alt="user" class="rounded" width="45"></div>
                                                </td>
                                                <td>Product #2 </td>
                                                <td>id000002 </td>
                                                <td>12</td>
                                                <td>$180.00</td>
                                                <td>25-08-2018 21:12:56</td>
                                                <td>Rachel J. Wicker </td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>
                                                    <div class="m-r-10"><img src="assets/images/product-pic-3.jpg" alt="user" class="rounded" width="45"></div>
                                                </td>
                                                <td>Product #3 </td>
                                                <td>id000003 </td>
                                                <td>23</td>
                                                <td>$820.00</td>
                                                <td>24-08-2018 14:12:77</td>
                                                <td>Michael K. Ledford </td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>
                                                    <div class="m-r-10"><img src="assets/images/product-pic-4.jpg" alt="user" class="rounded" width="45"></div>
                                                </td>
                                                <td>Product #4 </td>
                                                <td>id000004 </td>
                                                <td>34</td>
                                                <td>$340.00</td>
                                                <td>23-08-2018 09:12:35</td>
                                                <td>Michael K. Ledford </td>
                                            </tr>
                                            <tr>
                                                <td colspan="8"><a href="#" class="btn btn-outline-light float-right">View Details</a></td>
                                            </tr>-->
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    <!-- </div> -->
                    <!-- ============================================================== -->
                    <!-- end top selling products  -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- revenue locations  -->
                    <!-- ============================================================== -->
                   
                <footer class="footer container-fluid mt-auto pt-3" style="background-color: #48ac33; color: whitesmoke;">
                    <div class="container">
                        <div class="row">
                            <div class="col-12 col-md-6 pe-5">
                                <h3>Hajah Rosnani Mini Market</h4><br>
            
                                <h5>About Us</h5>
                                <p><strong>Hajah Rosnani Mini Market</strong> is a new online shopping website which allows you to create your own
                                shopping list. We are thrilled to give you the best online shopping experience!</p>
                                   
                            </div>
                            <div class="col-6 col-md">
                                <h5>Contact Us</h5>
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone me-2" viewBox="0 0 16 16">
                                    <path d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
                                  </svg>    +60 333 555 777 <br>
                                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope me-2" viewBox="0 0 16 16">
                                    <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2zm13 2.383-4.758 2.855L15 11.114v-5.73zm-.034 6.878L9.271 8.82 8 9.583 6.728 8.82l-5.694 3.44A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.739zM1 11.114l4.758-2.876L1 5.383v5.73z"/>
                                  </svg>    abdulrahman@gmail.com<br>
                                  
                            </div>
                            <div class="col-6 col-md">
                                 <h5>Address</h5>
                               No 76, Felda Jerangau
                               Barat Ajil, 21820, 
                               Terengganu 
                            </div>
                            <hr style="margin-top: 20px;">
                            <div class="container text-center font-italic text-muted">
                                <p>&copy; 2021 Hajah Rosnani</p>
                            </div>
                </footer>
         
            <!-- ============================================================== -->
            <!-- end footer -->
            <!-- ============================================================== -->
     
        <!-- ============================================================== -->
        <!-- end wrapper  -->
        <!-- ============================================================== -->
    =========================================================== -->
    <!-- end main wrapper  -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <!-- jquery 3.3.1 js-->
    <script src="assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <!-- bootstrap bundle js-->
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <!-- slimscroll js-->
    <script src="assets/vendor/slimscroll/jquery.slimscroll.js"></script>
    <!-- chartjs js-->
    <script src="assets/vendor/charts/charts-bundle/Chart.bundle.js"></script>
    <script src="assets/vendor/charts/charts-bundle/chartjs.js"></script>
   
    <!-- main js-->
    <script src="assets/libs/js/main-js.js"></script>
    <!-- jvactormap js-->
    <script src="assets/vendor/jvectormap/jquery-jvectormap-2.0.2.min.js"></script>
    <script src="assets/vendor/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <!-- sparkline js-->
    <script src="assets/vendor/charts/sparkline/jquery.sparkline.js"></script>
    <script src="assets/vendor/charts/sparkline/spark-js.js"></script>
     <!-- dashboard sales js-->
    <script src="assets/libs/js/dashboard-sales.js"></script>
</body>
 
</html>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hajah Rosnani Mini Market</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Noto+Sans' rel='stylesheet'>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="stylesheet" href="/nyumstyle.css">
    <link href="/hamburgers.css" rel="stylesheet">
    <link rel="icon" href="/img/nyumicon.ico">
</head>

<body>
    <header class="py-3" style="background-color: #92D050;">
        <div class="container gap-3">
            <div class="d-flex align-items-center flex-wrap flex-sm-nowrap justify-content-between">
                <!-- <button class="btn btn-warning d-sm-none order-1" type="button" data-bs-toggle="collapse" data-bs-target="#categoriesToggle" aria-controls="categoriesToggle" aria-expanded="true" aria-label="Toggle navigation">
                    <svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor"
                        class="bi bi-list" viewBox="0 0 16 16">
                        <path fill-rule="evenodd"
                            d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z" />
                    </svg>
                </button> -->
                <button class="hamburger hamburger--spring d-sm-none order-1" type="button"
                    data-bs-toggle="collapse" data-bs-target="#categoriesToggle" aria-controls="categoriesToggle"
                    aria-expanded="true" aria-label="Toggle navigation" onclick="burgerAnimate()">
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

    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog signin_dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <img src="/img/nyumnyumlogo.png" alt="">
                </div>
                <div class="modal-body signin_modal">
                    <ul class="nav nav-tabs tab" id="myTab" role="tablist">
                        <li class="nav-item1">
                            <a class="nav-link " id="home-tab" data-bs-toggle="tab" data-bs-target="#signin"
                                href="#signin" type="button" role="tab" aria-controls="home" aria-selected="true">Sign
                                In</a>
                        </li>
                        <li class="nav-item1" role="presentation">
                            <a class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#signup"
                                href="#signup" type="button" role="tab" aria-controls="profile"
                                aria-selected="false">Sign Up</a>
                        </li>

                    </ul>

                    <div class="social-login">
                        <ul class="social_log">
                            <li>
                                <a href="https://www.facebook.com/" class="fa fa-facebook"></a>
                                <a href="https://www.facebook.com/" class="fa fa-google"></a>
                            </li>

                        </ul>

                    </div>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="signin" role="tabpanel" aria-labelledby="home-tab">
                            <form>

                                <div class="mb-3">
                                    <input type="email" class="form-control" id="exampleInputEmail1"
                                        aria-describedby="emailHelp" placeholder="Email">
                                </div>
                                <div class="mb-3">
                                    <input type="password" class="form-control" id="exampleInputPassword1"
                                        placeholder="Password">
                                </div>
                                <button type="submit" class="btn btn-primary btn-block">Login</button>
                            </form>
                            <p class="forgot_link">
                                <a href="#">Forgot your password ?</a>
                            </p>
                            <p class="signin_link">Don't have an Account ?
                                <a id="profile-tab" data-bs-toggle="tab" data-bs-target="#signup" href="#signup"
                                    type="button" role="tab" aria-controls="profile" aria-selected="false">Sign Up</a>
                            </p>


                        </div>
                        <div class="tab-pane fade" id="signup" role="tabpanel" aria-labelledby="profile-tab">
                            <form>
                                <div class="mb-3">
                                    <input type="text" class="form-control" id="exampleInputText1"
                                        aria-describedby="textHelp" placeholder="Username">
                                </div>
                                <div class="mb-3">
                                    <input type="email" class="form-control" id="exampleInputEmail1"
                                        aria-describedby="emailHelp" placeholder="Email">
                                </div>
                                <div class="mb-3">
                                    <input type="password" class="form-control" id="exampleInputPassword1"
                                        placeholder="Password">
                                </div>
                                <button type="submit" class="btn btn-primary btn-block">Create An Account</button>
                            </form>
                            <p class="signin_link">Already have an Account ?
                                <a id="home-tab" data-bs-toggle="tab" data-bs-target="#signin" href="#signin"
                                    type="button" role="tab" aria-controls="home" aria-selected="true">Sign In</a>
                            </p>

                        </div>
                        <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">

                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    </header>

    <nav class="navbar sticky-top navbar-expand-sm shadow py-2 justify-content-center"
        style="background-color: #FD6C5D;">
        <div class="collapse navbar-collapse" id="categoriesToggle">
            <div class="container">
                <ul class="navbar-nav mb-2 mb-md-0 w-100 justify-content-between next" style="font-weight: bold;">
                    <li class="nav-item"><a href="products.jsp" class="nav-link text-dark">Fruits</a></li>
                    <li class="nav-item"><a href="FoodEssentials.jsp" class="nav-link text-dark">Food Essentials</a></li>
                    <li class="nav-item"><a href="PersonalCare.jsp" class="nav-link text-dark">Personal Care</a></li>
                    <li class="nav-item"><a href="Beverages.jsp" class="nav-link text-dark">Beverages</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container pt-5">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
            <ol class="breadcrumb fw-bold">
                <li class="breadcrumb-item"><a href="../index.jsp" class="text-dark text-decoration-none">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Category</li>
            </ol>
        </nav>
    </div>

    <main class="container pb-5">
        <button type="button" class="btn rounded-circle" id="scrollUp" onclick="goUp()">
            <svg xmlns="http://www.w3.org/2000/svg" width="36" height="46" fill="currentColor"
                class="bi bi-caret-up-fill" viewBox="0 0 16 16">
                <path
                    d="m7.247 4.86-4.796 5.481c-.566.647-.106 1.659.753 1.659h9.592a1 1 0 0 0 .753-1.659l-4.796-5.48a1 1 0 0 0-1.506 0z" />
            </svg>
        </button>

        <div class="card">
            <div class="card-body m-3 mt-2">
                <h1>Beverages</h1>
                <p class="fs-5">Back to the Jungle!</p>
                <hr>
                <div class="container d-flex flex-row justify-content-between align-item-center p-0">
                    <p>Showing <strong>1 - 20</strong> of <strong>20</strong> products</p>
                    <div class="dropdown pb-3">
                        <button class="btn bg-transparent dropdown-toggle" type="button" id="dropdownSort"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            Sort by:
                        </button>
                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownSort">
                            <li><button class="dropdown-item" type="button">Alphabetically, A-Z</button></li>
                            <li><button class="dropdown-item" type="button">Alphabetically, Z-A</button></li>
                            <li><button class="dropdown-item" type="button">Price, low to high</button></li>
                            <li><button class="dropdown-item" type="button">Price, high to low</button></li>
                        </ul>
                    </div>
                </div>

                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-5 g-3">
                    <div class="col">
                        <div class="card shadow-sm sshighlight">
                            <a href="../products-closeup.jsp">
                                <img src="../imgfood/Beverages/ribena.JPG" alt="pise" class="card-img-top">
                            </a>
                            <div class="card-body">
                                <h5 class="card-title">Ribena</h5>
                                <p class="card-text">RM 9999.99</p>
                                <div class="d-flex flex-sm-column justify-content-around">
                                    <a href="../src/products-closeup.jsp" class="btn btn-success rounded-pill mb-sm-2">View Details</a>
                                    <a href="#" class="btn btn-warning rounded-pill">Add to Cart</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card shadow-sm sshighlight">
                            <a href="../products-closeup.jsp">
                                <img src="../imgfood/Beverages/coke.JPG" alt="pise" class="card-img-top">
                            </a>
                            <div class="card-body">
                                <h5 class="card-title">Coke</h5>
                                <p class="card-text">RM 9999.99</p>
                                <div class="d-flex flex-sm-column justify-content-around">
                                    <a href="#" class="btn btn-success rounded-pill mb-sm-2">View Details</a>
                                    <a href="#" class="btn btn-warning rounded-pill">Add to Cart</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card shadow-sm sshighlight">
                            <a href="./products-closeup.jsp">
                                <img src="../imgfood/Beverages/juice.JPG" alt="pise" class="card-img-top">
                            </a>
                            <div class="card-body">
                                <h5 class="card-title">Tropicana Twister</h5>
                                <p class="card-text">RM 9999.99</p>
                                <div class="d-flex flex-sm-column justify-content-around">
                                    <a href="#" class="btn btn-success rounded-pill mb-sm-2">View Details</a>
                                    <a href="#" class="btn btn-warning rounded-pill">Add to Cart</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card shadow-sm sshighlight">
                            <a href="./products-closeup.jsp">
                                <img src="../imgfood/Beverages/milk.JPG" alt="pise" class="card-img-top">
                            </a>
                            <div class="card-body">
                                <h5 class="card-title">Dutch Lady</h5>
                                <p class="card-text">RM 9999.99</p>
                                <div class="d-flex flex-sm-column justify-content-around">
                                    <a href="#" class="btn btn-success rounded-pill mb-sm-2">View Details</a>
                                    <a href="#" class="btn btn-warning rounded-pill">Add to Cart</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card shadow-sm sshighlight">
                            <a href="./products-closeup.jsp">
                                <img src="../imgfood/Beverages/soda.JPG" alt="pise" class="card-img-top">
                            </a>
                            <div class="card-body">
                                <h5 class="card-title">Soda</h5>
                                <p class="card-text">RM 9999.99</p>
                                <div class="d-flex flex-sm-column justify-content-around">
                                    <a href="#" class="btn btn-success rounded-pill mb-sm-2">View Details</a>
                                    <a href="#" class="btn btn-warning rounded-pill">Add to Cart</a>
                                </div>
                            </div>
                        </div>
                    </div>
                   

                </div>
                <nav aria-label="Product page navigation">
                    <ul class="pagination justify-content-end mb-0 mt-4">
                        <li class="page-item disabled">
                            <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                        </li>
                        <li class="page-item active" aria-current="page"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#">Next</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </main>

    <footer class="footer container-fluid mt-auto pt-3" style="background-color: #48ac33; color: whitesmoke;">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-6 pe-5">
                    <h3>NyumNyum Grocery Store</h4><br>

                    <h5>About Us</h5>
                    <p><strong>Nyum Nyum Grocery Store</strong> is a new online shopping website which allows you to create your own
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
                    <p>&copy; 2021 NyumNyum Yummy Menjilat Jari</p>
                </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
        crossorigin="anonymous"></script>
    <script src="/nyumscript.js"></script>
</body>

</html>
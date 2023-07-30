<%-- 
    Document   : userProfile
    Created on : Jun 23, 2023, 10:10:24 AM
    Author     : Giang Hoang
--%>
<%@page import="User.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="Ogani Template">
        <meta name="keywords" content="Ogani, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Profile</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

        <!-- Css Styles -->
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
        <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
                 if (loginUser == null || !"3".equals(loginUser.getRole_id())) {
                     response.sendRedirect("login-page.jsp");
                     return;
                 }
        %>

        <style type="text/css">
            body {
                background: #f7f7ff;
                /*margin-top: 20px;*/
            }
            .card {
                position: relative;
                display: flex;
                flex-direction: column;
                min-width: 0;
                word-wrap: break-word;
                background-color: #fff;
                background-clip: border-box;
                border: 0 solid transparent;
                border-radius: 0.25rem;
                margin-bottom: 1.5rem;
                box-shadow: 0 2px 6px 0 rgb(218 218 253 / 65%),
                    0 2px 6px 0 rgb(206 206 238 / 54%);
            }
            .me-2 {
                margin-right: 0.5rem !important;
            }
        </style>
    </head>
    <body>

        <!-- Humberger Begin -->
        <div class="humberger__menu__overlay"></div>
        <div class="humberger__menu__wrapper">
            <div class="humberger__menu__logo">
                <a href="#"><img src="img/Bird-logo.png" alt=""></a>
            </div>
            <div class="humberger__menu__cart">
                <ul>
                    <li><a href="shoping-cart.jsp"><i class="fa fa-shopping-bag"></i> <span>${size}</span></a></li>
                </ul>
            </div>
            <div class="header__top__right__language">
                <c:if test="${sessionScope.LOGIN_USER != null}">
                    <a style="color: #1c1c1c"><i class="fa fa-user"></i>Hello, ${sessionScope.LOGIN_USER.fullname}</a>
                    <span class="arrow_carrot-down"></span>
                    <ul>
                        <li><a href="userProfile.jsp">View profile</a></li>
                        <li><a href="OrderHistoryCustomerController?userID=${sessionScope.LOGIN_USER.userID}">History order</a></li>
                        <li><a href="LogoutController">Log out</a></li>
                    </ul>
                </c:if>
                <c:if test="${sessionScope.LOGIN_USER == null}">
                    <a style="color: #1c1c1c"href="LoginController"><i class="fa fa-user"></i> Login</a>
                </c:if>   
            </div>            <nav class="humberger__menu__nav mobile-menu">
                <ul>
                    <li><a href="ViewController">Home</a></li>
                    <li><a href="ViewShopPageController">Products</a></li>
                    <li><a href="ViewMealPackageController">Meal</a></li>
                    <li><a href="ViewBlogController">Blog</a></li>
                    <li><a href="./contact.jsp">Contact</a></li>
                </ul>
            </nav>
            <div id="mobile-menu-wrap"></div>
            
            <div class="humberger__menu__contact">
                <ul>
                    <li><i class="fa fa-envelope"></i> bmos@gmail.com</li>
                    
                </ul>
            </div>
        </div>
        <!-- Humberger End -->

        <!-- Header Section Begin -->
        <header class="header">
            <div class="header__top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-6">
                            <div class="header__top__left">
                                <ul>
                                    <li><i class="fa fa-envelope"></i> bmos@gmail.com</li>
                                    
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="header__top__right">
                                
                                <div class="header__top__right__language">
                                    <c:if test="${sessionScope.LOGIN_USER != null}">
                                        <a style="color: #1c1c1c"><i class="fa fa-user"></i>Hello, ${sessionScope.LOGIN_USER.fullname}</a>
                                        <span class="arrow_carrot-down"></span>
                                        <ul>
                                            <li><a href="userProfile.jsp">View profile</a></li>
                                            <li><a href="OrderHistoryCustomerController?userID=${sessionScope.LOGIN_USER.userID}">History order</a></li>
                                            <li><a href="LogoutController">Log out</a></li>
                                        </ul>
                                    </c:if>
                                     
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="header__logo">
                            <a href="ViewController"><img src="img/Bird-logo.png" alt=""></a>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <nav class="header__menu">
                            <ul>
                                <li><a href="ViewController">Home</a></li>
                                <li><a href="ViewShopPageController">Products</a></li>
                                <li><a href="ViewMealPackageController">Meal</a></li>
                                <li><a href="ViewBlogController">Blog</a></li>
                                <li><a href="./contact.jsp">Contact</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="col-lg-3">
                        <div class="header__cart">
                            <c:set var="size" value="${sessionScope.size}"/>
                            <ul>
                                <li><a href="shoping-cart.jsp"><i class="fa fa-shopping-bag"></i> <span>${size}</span></a></li>
                            </ul>

                        </div>
                    </div>
                </div>
                <div class="humberger__open">
                    <i class="fa fa-bars"></i>
                </div>
            </div>
        </header>
        <!-- Header Section End -->


        <div class="container">
            <div class="main-body">
                <div class="row">
                    <div class="col-lg-4 col-md-4">
                        <div class="card">
                            <div class="card-body">
                                <div class="sub-menu-wrap" id="subMenu">
                                    <div class="sub-menu">
                                        <div class="user-info">
                                            <%= loginUser.getFullname()%>
                                        </div>
                                        <hr/>
                                        <a href="userProfile.jsp" class="sub-menu-link">
                                            <img
                                                src="https://down-vn.img.susercontent.com/file/ba61750a46794d8847c3f463c5e71cc4"
                                                />
                                            <p>My Account</p>
                                        </a>
                                        <a href="OrderHistoryCustomerController?userID=${sessionScope.LOGIN_USER.userID}" class="sub-menu-link">
                                            <img
                                                src="https://down-vn.img.susercontent.com/file/f0049e9df4e536bc3e7f140d071e9078"
                                                />
                                            <p>My Purchase</p>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8 col-lg-8">
                        <form action="DispatchServlet" method="POST" >

                            <div class="card">
                                <div class="card-body">
                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Full Name</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="text" class="form-control" name="fullname" value="<%= loginUser.getFullname()%>" />
                                            ${requestScope.fullNameError}
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Email</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input
                                                type="text"
                                                class="form-control"
                                                name="email"
                                                value="<%= loginUser.getEmail()%>"
                                                />
                                            ${requestScope.emailError}
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Phone</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input
                                                type="text"
                                                class="form-control"
                                                name="phone"
                                                value="<%= loginUser.getPhone()%>"
                                                />
                                            ${requestScope.phoneError}
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Password</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input
                                                type="password"
                                                class="form-control"
                                                name="password"
                                                value="<%= loginUser.getPassword()%>"
                                                id="myInput"
                                                />
                                            ${requestScope.passwordError}
                                            <input type="checkbox" onclick="myFunction()">
                                            <small>Show password</small>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Address</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input
                                                type="text"
                                                class="form-control"
                                                name="address"
                                                value="<%= loginUser.getAddress()%>"
                                                />
                                            ${requestScope.addressError}
                                        </div>
                                    </div>
                                    <input type="hidden" name="roleID" value="<%= loginUser.getRole_id()%>" readonly=""/>
                                    <div class="row">
                                        <div class="col-sm-3"></div>
                                        <div class="col-sm-9 text-secondary">
                                            <input
                                                type="submit"
                                                class="btn btn-primary px-4"
                                                value="Back"
                                                name ="action"
                                                />
                                            <input type="hidden" name="userID" value="<%= loginUser.getUserID()%>"/>
                                            <input class="btn btn-primary px-4"
                                                   type="submit" 
                                                   name="action"
                                                   value="Update Profile"
                                                   />          
                                        </div>                  
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="card">
                                    </div>
                                </div>
                            </div> 
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>
        <script type="text/javascript"></script>

        <!-- Footer Section Begin -->
        <footer class="footer spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="footer__about">
                            <div class="footer__about__logo">
                                <a href="ViewController"><img src="img/Bird-logo.png" alt=""></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="footer__about">
                            <div>Address: Lô E2a-7, Đường D1, Khu Công nghệ cao, P.Long Thạnh Mỹ, Tp. Thủ Đức, TP.HCM.</div>    
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="footer__about">
                            <div class="footer__about__logo text-lg-right">
                                <div>Phone: +84 773 840 946</div>
                                <div>Email: bmos@gmail.com</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="footer__copyright">
                            <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> BMOS | Bird Order Meal System <i class="fa fa-heart" aria-hidden="true"></i> by <a href="#" target="_blank">BMOS</a></div>
                            
                        </div>
                    </div>
                </div>
            </div>
            <div id="window-display"></div>

        </footer>
        <!-- Footer Section End -->
    </body>

    <script>
        function myFunction() {
            var x = document.getElementById("myInput");
            if (x.type === "password") {
                x.type = "text";
            } else {
                x.type = "password";
            }
        }
    </script>
</html>

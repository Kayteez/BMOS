<%-- 
    Document   : checkout-page
    Created on : Jul 3, 2023, 10:36:36 PM
    Author     : 09047
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <meta charset="UTF-8">
        <meta name="description" content="Ogani Template">
        <meta name="keywords" content="Ogani, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>BMOS-Food for Bird</title>

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
    </head>

    <body>
        <!-- Page Preloder -->
        <div id="preloder">
            <div class="loader"></div>
        </div>

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
                                    <c:if test="${sessionScope.LOGIN_USER == null}">
                                        <a style="color: #1c1c1c"href="LoginController"><i class="fa fa-user"></i> Login</a>
                                        <a style="color: #1c1c1c"href="sign-up-page.jsp"><i class="fa fa-user"></i> Sign up</a>
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

        <!-- Hero Section Begin -->
        <section class="hero hero-normal">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="hero__categories">
                            <div class="hero__categories__all">
                                <i class="fa fa-bars"></i>
                                <span>Categories</span>
                            </div>
                            <ul>
                                <c:forEach items="${Category}" var="o">
                                    <li><a href="SearchByCategoryController?category_id=${o.category_id}">${o.category_name}</a></li>
                                    </c:forEach>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="hero__search">
                            <div class="hero__search__form">
                                <form action="#">
                                    <input type="text" placeholder="What do you need?">
                                    <button type="submit" class="site-btn">SEARCH</button>
                                </form>
                            </div>
                            <div class="hero__search__phone">
                                <div class="hero__search__phone__icon">
                                    <i class="fa fa-phone"></i>
                                </div>
                                <div class="hero__search__phone__text">
                                    <h5>+84 773 840 946</h5>
                                    <span>support 24/7 time</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Hero Section End -->

        <!-- Breadcrumb Section Begin -->
        <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="breadcrumb__text">
                            <h2>Checkout</h2>
                            <div class="breadcrumb__option">
                                <a href="./home.jsp">Home</a>
                                <span>Checkout</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb Section End -->

        <!-- Checkout Section Begin -->
        <section class="checkout spad">
            <div class="container">
                <div class="checkout__form">
                    <h4>Billing Details</h4>
                    <div class="row">
                        <div class="col-lg-8 col-md-6">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Fist Name<span>*</span></p>
                                        <input type="text">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Last Name<span>*</span></p>
                                        <input type="text">
                                    </div>
                                </div>
                            </div>
                            <div class="checkout__input">
                                <p>Country<span>*</span></p>
                                <input type="text">
                            </div>
                            <div class="checkout__input">
                                <p>Address<span>*</span></p>
                                <input type="text" placeholder="Street Address" class="checkout__input__add">
                                <input type="text" placeholder="Apartment, suite, unite ect (optinal)">
                            </div>
                            <div class="checkout__input">
                                <p>Town/City<span>*</span></p>
                                <input type="text">
                            </div>
                            <div class="checkout__input">
                                <p>Country/State<span>*</span></p>
                                <input type="text">
                            </div>
                            <div class="checkout__input">
                                <p>Postcode / ZIP<span>*</span></p>
                                <input type="text">
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Phone<span>*</span></p>
                                        <input type="text">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Email<span>*</span></p>
                                        <input type="text">
                                    </div>
                                </div>
                            </div>
                            <div class="checkout__input__checkbox">
                                <label for="acc">
                                    Create an account?
                                    <input type="checkbox" id="acc">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <p>Create an account by entering the information below. If you are a returning customer
                                please login at the top of the page</p>
                            <div class="checkout__input">
                                <p>Account Password<span>*</span></p>
                                <input type="text">
                            </div>
                            <div class="checkout__input__checkbox">
                                <label for="diff-acc">
                                    Ship to a different address?
                                    <input type="checkbox" id="diff-acc">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <div class="checkout__input">
                                <p>Order notes<span>*</span></p>
                                <input type="text"
                                       placeholder="Notes about your order, e.g. special notes for delivery.">
                            </div>
                        </div>
                        <c:set var="o" value="${sessionScope.cart}"/>
                         <c:set var="x" value="${sessionScope.cartmeal}"/>
                        <div class="col-lg-4 col-md-6">
                            <div class="checkout__order">
                                <h4>Your Order</h4>
                                <div class="checkout__order__products">Products<span>Total</span></div>
                                <ul>
                                    <c:forEach items="${o.listCartItem}" var="i">
                                        <c:set var="total1" value="${total1 + i.product.price*i.quantity}"/>
                                        <li>${i.product.title}   x${i.quantity} <span><fmt:formatNumber pattern="#,### VND" value="${i.quantity*i.price}"/></span></li>
                                        </c:forEach>
                                </ul>
                                <ul>
                                    <c:forEach items="${x.listCartItem}" var="i">
                                        <c:set var="total2" value="${total2 + i.mealpackagedto.price*i.quantity}"/>
                                        <li>${i.mealpackagedto.title}   x${i.quantity} <span><fmt:formatNumber pattern="#,### VND" value="${i.quantity*i.price}"/></span></li>
                                        </c:forEach>
                                </ul>
                                <div class="checkout__order__total">Total<span><fmt:formatNumber pattern="#,### VND" value="${total1 +total2}"/></span></div>
                                <div class="checkout__input__checkbox">
                                    <!--                                      <input type="radio" id="html" name="fav_language" value="HTML">
                                                                          <label for="html">COD</label><br>-->
                                    <!--                                      <input type="radio" id="css" name="fav_language" value="CSS">
                                                                          <label for="css">PayPal</label><br>-->
                                </div>
                                 <div id="paypal-payment-button"></div>
                                <form action="DispatchServlet" method="POST">                                
                                    <button type="submit" name="action" value="Checkout" class="site-btn">ORDER</button>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Checkout Section End -->

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
        </footer>
        <!-- Footer Section End -->

        <!-- Js Plugins -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <!--<script src="js/mixitup.min.js"></script>-->
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>

        <!--Paypal-->

        <style type="text/css">
            table {
                border: 0;
            }
            table td {
                padding: 10px;
            }
        </style>

        <script src="https://www.paypal.com/sdk/js?client-id=Ab4F_6knoyZuMmVdop9bpl9hnaHYlWoBYT1TK0Dx9rHX8A1FYnchX1-zLs6HEQqsIVsdDLxLvaRA6jKF&disable-funding=credit,card"></script>
        <script>
                                        paypal.Buttons({
                                            style: {
                                                color: 'blue',
                                                shape: 'pill'
                                            },
                                            createOrder: function (data, actions) {
                                                return actions.order.create({
                                                    purchase_units: [{
                                                            amount: {
                                                                value: '${total}'
                                                            }
                                                        }]
                                                });
                                            },
                                            onApprove: function (data, actions) {
                                                return actions.order.capture().then(function (details) {
                                                    console.log(details)
                                                    window.location.replace("http://localhost:6789/BMOS_template_v4/success.jsp")
                                                })
                                            },
                                            onCancel: function (data) {
                                                window.location.replace("http://localhost:6789/BMOS_template_v4/oncancel.html")
                                            }
                                        }).render('#paypal-payment-button');
        </script>
    </body>
</html>

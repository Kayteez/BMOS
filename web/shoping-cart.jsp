<%-- 
    Document   : shoping-cart
    Created on : Jun 9, 2023, 10:14:58 PM
    Author     : 09047
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.text.DecimalFormat" %>
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
                            <h2>Shopping Cart</h2>
                            <div class="breadcrumb__option">
                                <a href="./home.jsp">Home</a>
                                <span>Shopping Cart</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb Section End -->

        <!-- Shoping Cart Section Begin -->
        <section class="shoping-cart spad">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="shoping__cart__table">
                            <table>
                                <thead>
                                    <tr>
                                        <th class="shoping__product">Products</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th>Total</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:set var="o" value="${sessionScope.cart}"/>     
                                    <c:forEach items="${o.listCartItem}" var="i">
                                        <c:set var="total1" value="${total1 + i.product.price*i.quantity}"/>
                                        <tr>
                                            <td class="shoping__cart__item">
                                                <img style="width: 100px;" src="img/food/${i.product.thumbnail}" alt="">
                                                <h5>${i.product.title}</h5>
                                            </td>
                                            <td class="shoping__cart__price">
                                                <fmt:formatNumber pattern="#,### VND" value="${i.product.price}"/>
                                            </td>
                                            <td class="shoping__cart__quantity">
                                                <div class="quantity">
                                                    <div class="pro-qty-1">
                                                        <button class="inc qtybtn border-0" style="background: #f5f5f5"><a style="color: #6f6f6f; background: #f5f5f5" href="ViewCartController?num=-1&id=${i.product.product_id}">-</a></button>
                                                        <input type="number" value="${i.quantity}" readonly="">
                                                        <button class="inc qtybtn border-0" style="background: #f5f5f5"><a style="color: #6f6f6f; background: #f5f5f5" href="ViewCartController?num=1&id=${i.product.product_id}">+</a></button>
                                                    </div>
                                                </div>                                                
                                            </td>
                                            <td class="shoping__cart__total">
                                                <fmt:formatNumber pattern="#,### VND" value="${i.quantity*i.product.price}"/>                                     
                                            </td>
                                            <td class="shoping__cart__item__close">
                                                <form action="ViewCartController" method="post">
                                                    <button class="icon_close border-0" name="id" value="${i.product.product_id}" style="font-size: 24px; color: #b2b2b2; cursor: pointer; background-color: white">
                                                </form>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                         <c:set var="o" value="${sessionScope.cartmeal}"/>     
                                    <c:forEach items="${o.listCartItem}" var="i">
                                        <c:set var="total2" value="${total2 + i.mealpackagedto.price*i.quantity}"/>
                                        <tr>
                                            <td class="shoping__cart__item">
                                                <img style="width: 100px;" src="${i.mealpackagedto.thumbnail}" alt="">
                                                <h5>${i.mealpackagedto.title}</h5>
                                            </td>
                                            <td class="shoping__cart__price">
                                                <fmt:formatNumber pattern="#,### VND" value="${i.mealpackagedto.price}"/>
                                            </td>
                                            <td class="shoping__cart__quantity">
                                                <div class="quantity">
                                                    <div class="pro-qty-1">
                                                        <button class="inc qtybtn border-0" style="background: #f5f5f5"><a style="color: #6f6f6f; background: #f5f5f5" href="ViewMealController?num=-1&id=${i.mealpackagedto.meal_package_id}">-</a></button>
                                                        <input type="number" value="${i.quantity}" readonly="">
                                                        <button class="inc qtybtn border-0" style="background: #f5f5f5"><a style="color: #6f6f6f; background: #f5f5f5" href="ViewMealController?num=1&id=${i.mealpackagedto.meal_package_id}">+</a></button>
                                                    </div>
                                                </div>                                                
                                            </td>
                                            <td class="shoping__cart__total">
                                                <fmt:formatNumber pattern="#,### VND" value="${i.quantity*i.mealpackagedto.price}"/>                                     
                                            </td>
                                            <td class="shoping__cart__item__close">
                                                <form action="ViewMealController" method="post">
                                                    <button class="icon_close border-0" name="id" value="${i.mealpackagedto.meal_package_id}" style="font-size: 24px; color: #b2b2b2; cursor: pointer; background-color: white">
                                                </form>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="shoping__checkout">
                            <h5>Cart Total</h5>
                            <ul>
                                <li>Total <span> <fmt:formatNumber pattern="#,### VND" value="${total1 + total2}"/></span></li>
                            </ul>
                            <a href="checkout-page.jsp" class="primary-btn">PROCEED TO CHECKOUT</a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="shoping__cart__btns">
                            <a href="ViewController" class="primary-btn cart-btn">CONTINUE SHOPPING</a>                           
                        </div>
                    </div>                   
                </div>
            </div>
        </section>
        <!-- Shoping Cart Section End -->

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
        <script src="js/mixitup.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>


    </body>

</html>

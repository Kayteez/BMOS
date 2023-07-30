<%-- 
    Document   : blog
    Created on : Jun 8, 2023, 12:20:10 PM
    Author     : 09047
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                    <li class="active"><a href="ViewBlogController">Blog</a></li>
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
                                <li class="active"><a href="ViewBlogController">Blog</a></li>
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
                                <form action="search">
                                    <input type="text" placeholder="What do you need?" name="searchProduct">
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
        <section class="breadcrumb-section set-bg" data-setbg="img/blog/2_1.png">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="breadcrumb__text">
                            <h2>Blog</h2>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb Section End -->

        <!-- Blog Section Begin -->
        <section class="blog spad" style="padding-bottom: 30px;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-5">
                        <div class="blog__sidebar">
                            <div class="blog__sidebar__search">
                                <form action="SearchBlogController">
                                    <input type="text" placeholder="Search..." name="searchBlog">
                                    <button type="submit"><span class="icon_search"></span></button>
                                </form>
                            </div>
                            <div class="blog__sidebar__item">
                                <h4>Birds</h4>
                                <ul>
                                    <c:forEach items="${Bird}" var="o">
                                        <li><a href="SearchBlogByBirdController?bird_id=${o.bird_id}">${o.name}</a></li>
                                        </c:forEach>
                                </ul>
                            </div>
                            <div class="blog__sidebar__item">
                                <h4>Foods</h4>
                                <ul>
                                <c:forEach items="${Category}" var="o">
                                    <li><a href="SearchBlogController?category_id=${o.category_id}">${o.category_name}</a></li>
                                    </c:forEach>
                            </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8 col-md-7">
                        <div class="row">
                            <c:forEach items="${list_blog}" var="o">
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="blog__item">
                                        <div class="blog__item__pic">
                                            <img src="img/blog/${o.thumbnail}" alt="">
                                        </div>
                                        <div class="blog__item__text">
                                            
                                            <h5><a href="DetailBlogController?blog_id=${o.blog_id}">${o.title}</a></h5>
                                            <p>${o.content}</p>
                                            <a href="DetailBlogController?blog_id=${o.blog_id}" class="blog__btn">READ MORE <span class="arrow_right"></span></a>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                            <div class="col-lg-12">                            
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <c:set var="page" value="${sessionScope.page}"/>
        <div class="product__pagination" align="center" style="
             padding-bottom: 50px;
             margin-bottom: 50px;
             ">
            <c:forEach begin="${1}" end="${sessionScope.num}" var="i">
                <a href="ViewBlogController?ppage=${i}">${i}</a>                  
            </c:forEach>
            <a href="#"><i class="fa fa-long-arrow-right"></i></a>
        </div>
        <!-- Blog Section End -->

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

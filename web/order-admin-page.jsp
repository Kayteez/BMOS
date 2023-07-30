<%-- 
    Document   : order-admin-page
    Created on : Jul 4, 2023, 10:25:53 PM
    Author     : 09047
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="User.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <!-- theme meta -->
        <meta name="theme-name" content="focus" />
        <title>BMOS: Bird Order Meal System</title>
        <!-- ================= Favicon ================== -->
        <!-- Standard -->
        <link rel="shortcut icon" href="http://placehold.it/64.png/000/fff" />
        <!-- Retina iPad Touch Icon-->
        <link
            rel="apple-touch-icon"
            sizes="144x144"
            href="http://placehold.it/144.png/000/fff"
            />
        <!-- Retina iPhone Touch Icon-->
        <link
            rel="apple-touch-icon"
            sizes="114x114"
            href="http://placehold.it/114.png/000/fff"
            />
        <!-- Standard iPad Touch Icon-->
        <link
            rel="apple-touch-icon"
            sizes="72x72"
            href="http://placehold.it/72.png/000/fff"
            />
        <!-- Standard iPhone Touch Icon-->
        <link
            rel="apple-touch-icon"
            sizes="57x57"
            href="http://placehold.it/57.png/000/fff"
            />
        <!-- Styles -->
        <link href="admin/css/lib/calendar2/pignose.calendar.min.css" rel="stylesheet" />
        <link href="admin/css/lib/chartist/chartist.min.css" rel="stylesheet" />
        <link href="admin/css/lib/font-awesome.min.css" rel="stylesheet" />
        <link href="admin/css/lib/themify-icons.css" rel="stylesheet" />
        <link href="admin/css/lib/owl.carousel.min.css" rel="stylesheet" />
        <link href="admin/css/lib/owl.theme.default.min.css" rel="stylesheet" />
        <link href="admin/css/lib/weather-icons.css" rel="stylesheet" />
        <link href="admin/css/lib/menubar/sidebar.css" rel="stylesheet" />
        <link href="admin/css/lib/bootstrap.min.css" rel="stylesheet" />
        <link href="admin/css/lib/helper.css" rel="stylesheet" />
        <link href="admin/css/style.css" rel="stylesheet" />
    </head>

    <body>
        <%
          UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
               if (loginUser == null || !"1".equals(loginUser.getRole_id())) {
                   response.sendRedirect("login-page.jsp");
                   return;
               }
               
        %>
        <div class="sidebar sidebar-hide-to-small sidebar-shrink sidebar-gestures">
            <div class="nano">
                <div class="nano-content">
                    <ul>
                        <div class="logo">
                            <a href="admin-page.jsp">
                                <!-- <img src="images/logo.png" alt="" /> --><span
                                    >Focus</span
                                ></a
                            >
                        </div>
                        <li class="label">Main</li>
                        <li>
                            <a href="admin-page.jsp"><i class="ti-home"></i> Dashboard</a>
                        </li>
                        <li>
                            <a class="sidebar-sub-toggle"
                               ><i class="ti-layout-grid4-alt"></i> Management
                                <span class="sidebar-collapse-icon ti-angle-down"></span
                                ></a>
                            <ul>
                                <li><a href="product-admin-page.jsp">Products</a></li>

                                <li><a href="ViewMealPackageAdController">Meals</a></li>
                                <li>
                                    <a href="blog-admin-page.jsp">Blogs</a>
                                </li>
                                <li><a href="ViewUserAdminPage">User</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="order-admin-page.jsp"><i class="ti-shopping-cart"></i> Order</a>
                        </li>
                        <li>
                            <a href="LogoutController"><i class="ti-close"></i> Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- /# sidebar -->

        <div class="header">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="float-left">
                            <div class="hamburger sidebar-toggle">
                                <span class="line"></span>
                                <span class="line"></span>
                                <span class="line"></span>
                            </div>
                        </div>
                        <div class="float-right">
                            <div class="dropdown dib">
                                <div class="header-icon" data-toggle="dropdown">
                                    <i class="ti-bell"></i>
                                    <div class="drop-down dropdown-menu dropdown-menu-right">
                                        <div class="dropdown-content-heading">
                                            <span class="text-left">Recent Notifications</span>
                                        </div>
                                        <div class="dropdown-content-body">
                                            <ul>
                                                <li>
                                                    <a href="#">
                                                        <img
                                                            class="pull-left m-r-10 avatar-img"
                                                            src="images/avatar/3.jpg"
                                                            alt=""
                                                            />
                                                        <div class="notification-content">
                                                            <small class="notification-timestamp pull-right"
                                                                   >02:34 PM</small
                                                            >
                                                            <div class="notification-heading">Mr. John</div>
                                                            <div class="notification-text">
                                                                5 members joined today
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <img
                                                            class="pull-left m-r-10 avatar-img"
                                                            src="images/avatar/3.jpg"
                                                            alt=""
                                                            />
                                                        <div class="notification-content">
                                                            <small class="notification-timestamp pull-right"
                                                                   >02:34 PM</small
                                                            >
                                                            <div class="notification-heading">Mariam</div>
                                                            <div class="notification-text">
                                                                likes a photo of you
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <img
                                                            class="pull-left m-r-10 avatar-img"
                                                            src="images/avatar/3.jpg"
                                                            alt=""
                                                            />
                                                        <div class="notification-content">
                                                            <small class="notification-timestamp pull-right"
                                                                   >02:34 PM</small
                                                            >
                                                            <div class="notification-heading">Tasnim</div>
                                                            <div class="notification-text">
                                                                Hi Teddy, Just wanted to let you ...
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <img
                                                            class="pull-left m-r-10 avatar-img"
                                                            src="images/avatar/3.jpg"
                                                            alt=""
                                                            />
                                                        <div class="notification-content">
                                                            <small class="notification-timestamp pull-right"
                                                                   >02:34 PM</small
                                                            >
                                                            <div class="notification-heading">Mr. John</div>
                                                            <div class="notification-text">
                                                                Hi Teddy, Just wanted to let you ...
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="text-center">
                                                    <a href="#" class="more-link">See All</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="dropdown dib">
                                <div class="header-icon" data-toggle="dropdown">
                                    <i class="ti-email"></i>
                                    <div class="drop-down dropdown-menu dropdown-menu-right">
                                        <div class="dropdown-content-heading">
                                            <span class="text-left">2 New Messages</span>
                                            <a href="email.html">
                                                <i class="ti-pencil-alt pull-right"></i>
                                            </a>
                                        </div>
                                        <div class="dropdown-content-body">
                                            <ul>
                                                <li class="notification-unread">
                                                    <a href="#">
                                                        <img
                                                            class="pull-left m-r-10 avatar-img"
                                                            src="images/avatar/1.jpg"
                                                            alt=""
                                                            />
                                                        <div class="notification-content">
                                                            <small class="notification-timestamp pull-right"
                                                                   >02:34 PM</small
                                                            >
                                                            <div class="notification-heading">
                                                                Michael Qin
                                                            </div>
                                                            <div class="notification-text">
                                                                Hi Teddy, Just wanted to let you ...
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="notification-unread">
                                                    <a href="#">
                                                        <img
                                                            class="pull-left m-r-10 avatar-img"
                                                            src="images/avatar/2.jpg"
                                                            alt=""
                                                            />
                                                        <div class="notification-content">
                                                            <small class="notification-timestamp pull-right"
                                                                   >02:34 PM</small
                                                            >
                                                            <div class="notification-heading">Mr. John</div>
                                                            <div class="notification-text">
                                                                Hi Teddy, Just wanted to let you ...
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <img
                                                            class="pull-left m-r-10 avatar-img"
                                                            src="images/avatar/3.jpg"
                                                            alt=""
                                                            />
                                                        <div class="notification-content">
                                                            <small class="notification-timestamp pull-right"
                                                                   >02:34 PM</small
                                                            >
                                                            <div class="notification-heading">
                                                                Michael Qin
                                                            </div>
                                                            <div class="notification-text">
                                                                Hi Teddy, Just wanted to let you ...
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <img
                                                            class="pull-left m-r-10 avatar-img"
                                                            src="images/avatar/2.jpg"
                                                            alt=""
                                                            />
                                                        <div class="notification-content">
                                                            <small class="notification-timestamp pull-right"
                                                                   >02:34 PM</small
                                                            >
                                                            <div class="notification-heading">Mr. John</div>
                                                            <div class="notification-text">
                                                                Hi Teddy, Just wanted to let you ...
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="text-center">
                                                    <a href="#" class="more-link">See All</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="dropdown dib">
                                <div class="header-icon" data-toggle="dropdown">
                                    <span class="user-avatar"
                                          >John
                                        <i class="ti-angle-down f-s-10"></i>
                                    </span>
                                    <div
                                        class="drop-down dropdown-profile dropdown-menu dropdown-menu-right"
                                        >
                                        <div class="dropdown-content-heading">
                                            <span class="text-left">Upgrade Now</span>
                                            <p class="trial-day">30 Days Trail</p>
                                        </div>
                                        <div class="dropdown-content-body">
                                            <ul>
                                                <li>
                                                    <a href="#">
                                                        <i class="ti-user"></i>
                                                        <span>Profile</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#">
                                                        <i class="ti-email"></i>
                                                        <span>Inbox</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="ti-settings"></i>
                                                        <span>Setting</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#">
                                                        <i class="ti-lock"></i>
                                                        <span>Lock Screen</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="ti-power-off"></i>
                                                        <span>Logout</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="content-wrap">
            <div class="main">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-8 p-r-0 title-margin-right">
                            <div class="page-header">
                                <div class="page-title">
                                    <h1>Hello, <span>Welcome Admin</span></h1>
                                </div>
                            </div>
                        </div>
                        <!-- /# column -->
                        <div class="col-lg-4 p-l-0 title-margin-left">
                            <div class="page-header">
                                <div class="page-title">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
                                        <li class="breadcrumb-item active">Home</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                        <!-- /# column -->
                    </div>
                    <!-- /# row -->
                    <section id="main-content">
                        <div class="table-responsive-lg">
                            <table class="table table-bordered">
                                <thead class="aX">

                                    <tr>
                                        <th>Order ID</th>
                                        <th>Order DATE</th>
                                        <th>Total MONEY</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <c:forEach items="${Order1}" var="x">
                                        <tr>

                                            <td style="text-align: left;">${x.order_id}</td>
                                            <td style="text-align: left;">${x.order_date}</td>
                                            <td style="text-align: left;">${x.totalmoney}</td>
                                            <td style="text-align: left;">
                                                <span style="background-color: yellow; padding: 2px 4px;">
                                                    confirmed
                                                </span>
                                                <span style="display: none;">${x.status}</span>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <c:set var="page" value="${sessionScope.page}"/>
                        <div class="product__pagination" align="center">
                            <c:forEach begin="${1}" end="${sessionScope.num}" var="i">
                                <a href="ViewOrderAdminPageController?ppage=${i}">${i}</a>                  
                            </c:forEach>
                            <a href="#"><i class="fa fa-long-arrow-right"></i></a>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="footer">
                                    <p>2018 © Admin Board. - <a href="#">example.com</a></p>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>

        <!-- jquery vendor -->
        <script src="admin/js/lib/jquery.min.js"></script>
        <script src="admin/js/lib/jquery.nanoscroller.min.js"></script>
        <!-- nano scroller -->
        <script src="admin/js/lib/menubar/sidebar.js"></script>
        <script src="admin/js/lib/preloader/pace.min.js"></script>
        <!-- sidebar -->

        <script src="admin/js/lib/bootstrap.min.js"></script>
        <script src="admin/js/scripts.js"></script>
        <!-- bootstrap -->

        <script src="admin/js/lib/calendar-2/moment.latest.min.js"></script>
        <script src="admin/js/lib/calendar-2/pignose.calendar.min.js"></script>
        <script src="admin/js/lib/calendar-2/pignose.init.js"></script>

        <script src="admin/js/lib/weather/jquery.simpleWeather.min.js"></script>
        <script src="admin/js/lib/weather/weather-init.js"></script>
        <script src="admin/js/lib/circle-progress/circle-progress.min.js"></script>
        <script src="admin/js/lib/circle-progress/circle-progress-init.js"></script>
        <script src="admin/js/lib/chartist/chartist.min.js"></script>
        <script src="admin/js/lib/sparklinechart/jquery.sparkline.min.js"></script>
        <script src="admin/js/lib/sparklinechart/sparkline.init.js"></script>
        <script src="admin/js/lib/owl-carousel/owl.carousel.min.js"></script>
        <script src="admin/js/lib/owl-carousel/owl.carousel-init.js"></script>
        <!-- scripit init-->
        <script src="admin/js/dashboard2.js"></script>
    </body>
</html>

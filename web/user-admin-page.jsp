<%-- 
    Document   : user-admin-page
    Created on : Jul 4, 2023, 10:22:39 PM
    Author     : 09047
--%>
<%@page import="User.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                <li><a href="user-admin-page.jsp">User</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="ViewOrderAdminPageController"><i class="ti-shopping-cart"></i> Order</a>
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
                                        <th colspan="7" class="text-right">
                                            <a href="#" class="btn btn-success btn-sm" title="Create User" data-toggle="modal" data-target="#createProductModal"><i class="fa fa-plus"></i> Create User</a>
                                        </th>
                                    </tr>
                                    <tr>

                                        <th>User Name</th>
                                        <th>Password</th>
                                        <th>Full Name</th>
                                        <th>Email</th>
                                        <th>Phone Number</th>       
                                        <th>Address</th>

                                        <th style="text-align: center;">Actions</th>
                                    </tr>
                                </thead>
                                <style>
                                    .password-hidden {
                                        display: none;
                                    }

                                    .show-password-btn {
                                        background-color: #4CAF50;
                                        color: white;
                                        padding: 8px 12px;
                                        border: none;
                                        cursor: pointer;
                                        margin: 4px;
                                    }

                                    .show-password-btn:hover {
                                        background-color: #45a049;
                                    }
                                </style>
                                <script>
                                    function showPassword(button) {
                                        const passwordHidden = button.parentNode.querySelector('.password-hidden');

                                        if (passwordHidden.style.display === 'inline') {
                                            passwordHidden.style.display = 'none';
                                            button.textContent = 'Show';
                                        } else {
                                            passwordHidden.style.display = 'inline';
                                            button.textContent = 'Hide';
                                        }
                                    }
                                </script>
                                <tbody>
                                    <c:forEach items="${User}" var="x">
                                        <tr>

                                            <td style="text-align: left;">${x.userName}</td>
<!--                                            <td style="text-align: left;">${x.password}</td>-->
                                            <td style="text-align: left;">
                                                <span class="password-hidden">${x.password}</span>
                                                <button class="show-password-btn" onclick="showPassword(this)">Show</button>
                                            </td>
                                            <td style="text-align: left;">${x.fullname}</td>
                                            <td style="text-align: left;">${x.email}</td>
                                            <td style="text-align: left;">${x.phone}</td>
                                            <td style="text-align: left;">${x.address}</td>

                                            <td class="text-center">


                                                <form action="DispatchServlet">
                                                    <c:url var="Delete_User" value="DispatchServlet">
                                                        <c:param name="action" value="Delete_User"/>
                                                        <c:param name="user_id" value="${x.userID}"/>
                                                    </c:url>
                                                    <a href="${Delete_User}" class="btn btn-danger btn-sm" title="Delete User"><i class="fa fa-trash"></i></a>
                                                </form>
<!--                                                <a href="UpdateController?sid=${x.userID}" class="btn btn-primary btn-sm" title="Update" 
                                                   data-toggle="modal" data-target="#createProductModal1"><i class="fa fa-pencil"></i></a>-->
                                                <a href="#" class="btn btn-primary btn-sm" title="Update" 
                                                   data-toggle="modal" data-target="#createProductModal1"
                                                   onclick="navigateToUpdateController(event, '${x.userID}')">
                                                    <i class="fa fa-pencil"></i>
                                                </a>

                                                <script>
                                                    function navigateToUpdateController(event, userId) {
                                                        event.preventDefault();


                                                        window.location.href = 'UpdateUserController?user_id=' + userId;


                                                    }

                                                </script>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                <script>
                                    window.onload = function () {

                                        const urlParams = new URLSearchParams(window.location.search);
                                        const userId = urlParams.get('user_id');


                                        if (userId) {
                                            $('#createProductModal1').modal('show');
                                            document.getElementById('createProductModal1').setAttribute('data-target', '#createProductModal1');
                                        }
                                    };
                                </script>
                                </tbody>
                            </table>
                        </div>
                        <c:set var="page" value="${sessionScope.page}"/>
                        <div class="product__pagination" align="center">
                            <c:forEach begin="${1}" end="${sessionScope.num}" var="i">
                                <a href="ViewUserAdminPage?ppage=${i}">${i}</a>                  
                            </c:forEach>
                            <a href="#"><i class="fa fa-long-arrow-right"></i></a>
                        </div>
                        <!-- Modal Create -->
                        <div class="modal fade" id="createProductModal" tabindex="-1" role="dialog" aria-labelledby="createProductModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="createProductModalLabel">Create User</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <!-- Your form content goes here -->
                                        <form action="DispatchServlet" method="POST">

                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;">
                                                <label for="userUsername">User Name</label>
                                                <input type="text" class="form-control" id="userUsername" placeholder="Enter User Name" name="username" >
                                            </div>
                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;">
                                                <label for="userPassword">Password</label>
                                                <input type="text" class="form-control" id="userPassword" placeholder="Enter Password" name="password">
                                            </div>
                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;">
                                                <label for="userFullname">Full Name</label>
                                                <input type="text" class="form-control" id="userFullname" placeholder="Enter Full Name" name="fullname">
                                            </div>
                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;">
                                                <label for="userEmail">Email</label>
                                                <input type="text" class="form-control" id="userEmail" placeholder="Enter Email" name="email">
                                            </div>
                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;">
                                                <label for="userPhone_number">Phone Number</label>
                                                <input type="text" class="form-control" id="userPhone_number" placeholder="Enter Phone Number" name="phone_number">
                                            </div>
                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;">
                                                <label for="userAddress">Address</label>
                                                <input type="text" class="form-control" id="userAddress" placeholder="Enter Address" name="address">
                                            </div>

                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;"> 
                                                <label for="userStatus">Status</label>
                                                <input type="text"  id="userStatus" placeholder="Enter Status" name="status">
                                            </div>
                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;"> 
                                                <label for="userRole_id">Role Id</label>
                                                <input type="text" class="form-control" id="userRole_id" placeholder="Enter Role Id" name="role_id">
                                            </div>

                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                <button type="submit" class="btn btn-primary" name="action" value="Create User">Create User </button>
                                            </div>


                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--   Model Update    -->
                        <div class="modal fade" id="createProductModal1" tabindex="-1" role="dialog" aria-labelledby="createProductModalLabel1" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="createProductModalLabel">Update User</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">

                                        <form action="DispatchServlet" method="POST">
                                            <input type="hidden" name="user_id" value="${uid.userID}";
                                                   <div class="form-group" style="font-weight: bold; text-align: left; display: block;">
                                            <label for="userUsername">User Name</label>
                                            <input type="text" class="form-control" id="userUsername" placeholder="Enter User Name" name="username" value="${uid.userName}">
                                            </div>
                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;">
                                                <label for="userPassword">Password</label>
                                                <input type="text" class="form-control" id="userPassword" placeholder="Enter Password" name="password" value="${uid.password}">
                                            </div>
                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;">
                                                <label for="userFullname">Full Name</label>
                                                <input type="text" class="form-control" id="userFullname" placeholder="Enter Full Name" name="fullname" value="${uid.fullname}">
                                            </div>
                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;">
                                                <label for="userEmail">Email</label>
                                                <input type="text" class="form-control" id="userEmail" placeholder="Enter Email" name="email" value="${uid.email}">
                                            </div>
                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;">
                                                <label for="userPhone_number">Phone Number</label>
                                                <input type="text" class="form-control" id="userPhone_number" placeholder="Enter Phone Number" name="phone_number" value="${uid.phone}">
                                            </div>
                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;">
                                                <label for="userAddress">Address</label>
                                                <input type="text" class="form-control" id="userAddress" placeholder="Enter Address" name="address" value="${uid.address}">
                                            </div>

                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;"> 
                                                <label for="userStatus">Status</label>
                                                <input type="text"  class="form-control" id="userStatus" placeholder="Enter Status" name="status" value="${uid.status}">
                                            </div>
                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;"> 
                                                <label for="userRole_id">Role Id</label>
                                                <input type="text" class="form-control" id="userRole_id" placeholder="Enter Role Id" name="role_id" value="${uid.role_id}">
                                            </div>

                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                <button type="submit" class="btn btn-primary" name="action" value="Update User">Update User</button>
                                            </div>


                                        </form>
                                    </div>

                                </div>
                            </div>
                        </div>
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

<%-- 
    Document   : admin-page
    Created on : Jun 28, 2023, 5:48:15 AM
    Author     : 09047
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
        <link rel="stylesheet" type="text/css" href="css/tinymce/tinymce.min.js">
        <script src="css/tinymce/tinymce.min.js"></script>
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
        <link rel="stylesheet" type="text/css" href="styles.css">
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

                                <li><a href="meals-admin-page.jsp">Meals</a></li>
                                <li>
                                    <a href="blog-admin-page.jsp">Blogs</a>
                                </li>
                                <li><a href="ViewUserAdminPage">User</a></li>
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
                                            <a href="#" class="btn btn-success btn-sm" title="Create Meal Package" data-toggle="modal" data-target="#createProductModal"><i class="fa fa-plus"></i> Create Meal Package</a>
                                        </th>
                                    </tr>
                                    <tr>
                                      
                                        <th>Title</th>

<!--                                        <th>Quantity</th>-->
<!--                                        <th>Price</th>-->
<!--                                        <th>discount_price</th>       -->
                                        <th>Thumbnail</th>
                                        <!--                                            <th>description</th>-->
                                        <!--                                            <th>create_at</th>
                                                                                    <th>update_at</th>
                                                                                    <th>status</th>-->
                                     

                                        <th style="text-align: center;">Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${MealPackage}" var="x">
                                        <tr>
                                         <td style="text-align: left;">${x.title}</td>
<!--                                            <td style="text-align: left;">${x.quantity}</td>-->
<!--                                            <td style="text-align: left;">${x.price}</td>
                                            <td style="text-align: left;">${x.discount_price}</td>-->
                                            <td style="text-align: left;"><img style="width: 250px;" src="${x.thumbnail}"></td>
<!--                                                <td style="text-align: left;">${x.description}</td>-->
<!--                                                <td style="text-align: left;">${x.create_at}</td>
                                            <td style="text-align: left;">${x.update_at}</td>
                                            <td style="text-align: left;">${x.status}</td>-->
                                          
                                            <td class="text-center">


                                                <form action="DispatchServlet">
                                                    <c:url var="Delete" value="DispatchServlet">
                                                        <c:param name="action" value="Delete Meal"/>
                                                        <c:param name="mid" value="${x.meal_package_id}"/>
                                                    </c:url>
                                                    <a href="${Delete}" class="btn btn-danger btn-sm" title="Delete"><i class="fa fa-trash"></i></a>
                                                </form>
                                                 <a href="#" class="btn btn-primary btn-sm" title="Update" 
                                                   data-toggle="modal" data-target="#createProductModal1"
                                                   onclick="navigateToUpdateController(event, '${x.meal_package_id}')">
                                                    <i class="fa fa-pencil"></i>
                                                </a>
                                                <script>
                                                    function navigateToUpdateController(event, mealId) {
                                                        event.preventDefault();


                                                        window.location.href = 'UpdateMealController?meal_id=' + mealId;


                                                    }

                                                </script>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                <script>
                                    window.onload = function () {

                                        const urlParams = new URLSearchParams(window.location.search);
                                        const mealId = urlParams.get('meal_id');


                                        if (mealId) {
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
                                <a href="ViewMealPackageAdController?ppage=${i}">${i}</a>                  
                            </c:forEach>
                            <a href="#"><i class="fa fa-long-arrow-right"></i></a>
                        </div>

                        <!-- Modal Create -->
                        <div class="modal fade" id="createProductModal" tabindex="-1" role="dialog" aria-labelledby="createProductModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="createProductModalLabel">Create Meal Package</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <!-- Your form content goes here -->
                                        <form action="DispatchServlet" method="POST">

<!--                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;">
                                                <label for="mealCode">Meal Code</label>
                                                <input type="text" class="form-control" id="mealCode" placeholder="Enter meal_code" name="meal_code">
                                            </div>-->
                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;">
                                                <label for="mealTitle">Title Mealpackage</label>
                                                <input type="text" class="form-control" id="mealTitle" placeholder="Enter title_mealpackage" name="title_mealpackage">
                                            </div>
<!--                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;">
                                                <label for="mealQuantity">Quantity</label>
                                                <input type="text" class="form-control" id="mealQuantity" placeholder="Enter quantity" name="quantity">
                                            </div>-->
<!--                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;">
                                                <label for="mealPrice">Price </label>
                                                <input type="text" class="form-control" id="mealPrice" placeholder="Enter  price" name="price">
                                            </div>-->
<!--                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;">
                                                <label for="mealDiscount">discount_price</label>
                                                <input type="text" class="form-control" id="mealDiscount" placeholder="Enter Discount Price" name="discount_price">
                                            </div>-->
                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;"> 
                                                <label for="mealThumbnail">Thumbnail</label>
                                                <input type="text" class="form-control" id="mealThumbnail" placeholder="Enter Thumbnail" name="thumbnail">
                                            </div>
                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;"> 
                                                <label for="myTextArea">Description</label>
                                                <input type="text" class="form-control" id="myTextArea" placeholder="Enter Desc" name="description">
                                                <!--                                                <textarea id="myTextArea"></textarea>-->
                                                <script>
                                                    tinymce.init({
                                                        selector: '#myTextArea'

                                                    });
                                                </script>
                                            </div>
                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;"> 
                                                <label for="mealRecipe">Recipe</label>
                                                <input type="text" class="form-control" id="mealRecipe" placeholder="Enter recipe" name="recipe">
                                            </div>
                                            
<!--                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;"> 
                                                <label for="mealCreate">create_at</label>
                                                <input type="date" class="form-control" id="mealCreate" placeholder="Enter create_at" name="create_at">
                                            </div>
                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;"> 
                                                <label for="mealProduct">update_at</label>
                                                <input type="date" class="form-control" id="mealProduct" placeholder="Enter update_at" name="update_at">
                                            </div>
                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;">
                                                <label for="mealStatus">Status</label>
                                                <input type="text" class="form-control" id="mealStatus" placeholder="Enter Status" name="status">
                                            </div>-->
                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;"> 
                                                <label for="mealBird_id">bird_id</label>
                                                <input type="text" class="form-control" id="mealBird_id" placeholder="Enter BirdID" name="bird_id">
                                            </div>
<!--                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;">
                                                <label for="mealLifecycle_id">lifecycle_id</label>
                                                <input type="text" class="form-control" id="mealLifecycle_id" placeholder="Enter lifecycle_id" name="lifecycle_id">
                                            </div>-->
                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;">
                                                <label for="mealImg">Image</label>
                                                <input type="text" class="form-control" id="mealImg" placeholder="Enter img" name="img">
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                <button type="submit" class="btn btn-primary" name="action" value="Create Meal">Create Meal</button>
                                            </div>
                                            <!-- Add more form fields as needed -->
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
                                        <h5 class="modal-title" id="createProductModalLabel">Update Meal</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
<!--                                        Your form content goes here                                      -->
                                        <form action="DispatchServlet" method="POST">
                                            <input type="hidden" name="meal_package_id" value="${mid.meal_package_id}";
                                                   <div class="form-group" style="font-weight: bold; text-align: left; display: block;">
<!--                                            <label for="mealMeal_code">Meal Code</label>
                                            <input type="text" class="form-control" id="mealMeal_code" placeholder="Enter meal_code" name="meal_code" value="${mid.meal_code}">
                                            -->
                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;">
                                                <label for="mealTitle">Title</label>
                                                <input type="text" class="form-control" id="mealTitle" placeholder="Enter Title" name="title" value="${mid.title}">
                                            </div>
<!--                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;">
                                                <label for="mealQuantity">Quantity</label>
                                                <input type="text" class="form-control" id="mealQuantity" placeholder="Enter Quantity" name="quantity" value="${mid.quantity}">
                                            </div>-->
<!--                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;">
                                                <label for="mealPrice">Price</label>
                                                <input type="text" class="form-control" id="mealPrice" placeholder="Enter Price" name="price" value="${mid.price}">
                                            </div>-->
<!--                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;">
                                                <label for="mealDiscountPrice">Discount Price</label>
                                                <input type="text" class="form-control" id="mealDiscountPrice" placeholder="Enter Discount Price" name="discount_price" value="${mid.discount_price}">
                                            </div>-->
                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;">
                                                <label for="mealThumbnail">Thumbnail</label>
                                                <input type="text" class="form-control" id="mealThumbnail" placeholder="Enter Thumbnail" name="thumbnail" value="${mid.thumbnail}">
                                            </div>
                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;"> 
                                                <label for="mealDescription">Description</label>
                                                <input type="text" class="form-control" id="myTextArea" placeholder="Enter Desc" name="description" value="${mid.description}">
                                                <!--                                                <textarea id="myTextArea"></textarea>-->
                                                <script>
                                                    tinymce.init({
                                                        selector: '#myTextArea'

                                                    });
                                                </script>
                                            </div>
                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;"> 
                                                <label for="mealRecipe">Recipe</label>
                                                <input type="text" class="form-control" id="mealRecipe" placeholder="Enter Recipe" name="recipe" value="${mid.recipe}">
                                            </div>
                                             <script>
                                                    tinymce.init({
                                                        selector: '#mealRecipe'

                                                    });
                                                </script>
<!--                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;"> 
                                                <label for="productCreate_at">Create_at</label>
                                                <input type="text" class="form-control" id="productCreate_at" placeholder="Enter Date Create" name="create_at" value="${mid.create_at}">
                                            </div>
                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;"> 
                                                <label for="mealUpdate_at">Update_at</label>
                                                <input type="text" class="form-control" id="mealUpdate_at" placeholder="Enter Date Update" name="update_at" value="${mid.update_at}">
                                            </div>
                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;"> 
                                                <label for="mealStatus">Status</label>
                                                <input type="text"  class="form-control" id="mealStatus" placeholder="Enter Status" name="status" value="${mid.status}">
                                            </div>-->
                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;"> 
                                                <label for="mealBird_id">Bird_id</label>
                                                <input type="text" class="form-control" id="mealBird_id" placeholder="Enter Bird_id" name="bird_id" value="${mid.bird_id}">
                                            </div>
<!--                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;"> 
                                                <label for="mealLifecycle_id">Lifecycle_id</label>
                                                <input type="text" class="form-control" id="mealLifecycle_id" placeholder="Enter Lifecycle_id" name="lifecycle_id" value="${mid.lifecycle_id}">
                                            </div>-->
                                            <div class="form-group" style="font-weight: bold; text-align: left; display: block;"> 
                                                <label for="mealImg">Image</label>
                                                <input type="text" class="form-control" id="mealImg" placeholder="Enter Img" name="img" value="${mid.img}">
                                            </div>

                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                <button type="submit" class="btn btn-primary" name="action" value="Update Meal">Update Meal </button>
                                            </div>
                                        </form>
                                    </div>
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


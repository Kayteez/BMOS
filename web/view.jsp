<%-- 
    Document   : view
    Created on : May 25, 2023, 10:23:17 AM
    Author     : Thắng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--        <form action="DispatchServlet" >
                    <input type="submit" value="Search all" name="action" />
                </form>-->
        <% String search = request.getParameter("search");
                if (search == null) {
                    search = "";
                }%>

        <form action="DispatchServlet">
            Search: <input type="text" name="search"/>
            <input type="submit" name="action" value="Search"/>
        </form>

      <c:if test="${LIST_PRODUCT != null}">
            <c:if test="${not empty LIST_PRODUCT}">
        <table border="1">
            <thead>
                <tr>
                    <th>Product_ID</th>
                    <th>Title</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Discount_Price</th>
                    <th>Weight</th>
                    <th>Thumbnail</th>
                    <th>Description</th>
                    <th>Create_At</th>
                    <th>Update_At</th>
                    <th>Status</th>
                    <th>Categori_ID</th>

                </tr>
            </thead>
            <tbody>


               <c:forEach var="x" varStatus="counter" items="${LIST_PRODUCT}">

                    <tr>

                        <td>${x.product_id}</td>


                        <td>
                            <input value="${x.title}" type="text" name="title">
                        </td>

                        <td>
                            <input value="${x.quantity}" type="text" name="quantity">
                        </td>
                        <td>
                            <input value="${x.price}" type="text" name="price">
                        </td>

                        <td>
                            <input value="${x.discount_price}" type="text" name="discount_price">
                        </td>

                        <td>
                            <input value="${x.weight}" type="text" name="weight">
                        </td>

                        <td>
                            <input value="${x.thumbnail}" type="text" name="thumbnail">
                        </td>
                        
                        <td>
                            <input value="${x.img}" type="text" name="img">
                        </td>

                        <td>
                            <input value="${x.description}" type="text" name="description">
                        </td>

                        <td>
                            <input value="${x.create_at}" type="text" name="create_at">
                        </td>

                        <td>
                            <input value="${x.update_at}" type="text" name="update_at">
                        </td>

                        <td>    
                            <input value="${x.status}" type="text" name="status">
                        </td>

                        <td>
                            <input value="${x.category_id}" type="text" name="category_id">
                        </td>
                        <td> 
                            <c:url var="Delete" value="DispatchServlet">
                                <c:param name="action" value="Delete"/>
                                <c:param name="id" value="${x.product_id}"/>
                               
                            </c:url>
                             <input type="hidden" name="search" value="<%= search%>"/>
                            <a href="${Delete}">Delete</a>
                        </td>
                        <td>
                            <%--<c:url var="Update" value="DispatchServlet">
                                <c:param name="action" value="Update"/>
                                <c:param name="product_id" value="${x.getProduct_id()}"/>
</c:url>
                              <a href="${Update}">Update</a>--%>
                            <%--                            <input type="submit" value="Update" name="action" />
                                                         <input type="hidden" name="product_id" value="${x.getProduct_id()}">--%>
                            <a href="UpdateController?sid=${x.product_id}">Update</a>
                        </td>
                    </tr>
                </c:forEach>
            <a href="Add.jsp">Create Product</a><br>
            <a href="ShoppingController">Shopping Page</a><br>
            <!--            </form>-->
            <a href="ViewBlogController">Blog</a><br>
            </tbody>
        </table>
        ${ERROR} 
        </c:if>
    </c:if>
    </body>
</html>



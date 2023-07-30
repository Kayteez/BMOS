<%-- 
    Document   : error
    Created on : Jul 25, 2023, 5:31:56 PM
    Author     : HP
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Payment Fail</title>
  <style>
body {
  font-family: Arial, sans-serif;
  background-color: #f2f2f2;
  margin: 0;
  padding: 0;
}

.container {
  background-color: #fff;
  max-width: 500px;
  margin: 100px auto;
  padding: 20px;
  text-align: center;
  border-radius: 5px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

h1 {
  color: #333;
}

p {
  color: #666;
  margin-bottom: 10px;
}

.btn {
  display: inline-block;
  background-color: #007bff;
  color: #fff;
  padding: 10px 20px;
  text-decoration: none;
  border-radius: 5px;
}

.btn:hover {
  background-color: #0056b3;
}

</style>
</head>
<body>
  <div class="container">
    <h1>Payment Fail!</h1>
    <p>The number of products is not enough to pay</p>
<!--    <p>Payment amount: $50.00</p>
    <p>Transaction ID: ABC123XYZ</p>-->
    <a href="ViewController" class="btn">Return to Homepage</a>
  </div>
</body>
</html>

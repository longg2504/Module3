<%--
  Created by IntelliJ IDEA.
  User: TechCare
  Date: 07/06/2023
  Time: 10:49
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create new product</title>
  <style>
    .message{
      color:green;
    }
  </style>
</head>
<body>
<h1>Create new product</h1>
<p>
  <c:if test='${requestScope["message"]!=null}'>
    <span class="message">${requestScope["message"]}</span>
  </c:if>
</p>
<p>
  <a href="/products">Back to customer list</a>
</p>
<form method="post">
  <fieldset>
    <legend>Prodcut information</legend>
    <table>
      <tr>
        <td>Name :</td>
        <td><input type="text" name="name" id ='name'></td>
      </tr>
      <tr>
        <td>Quantity: </td>
        <td><input type="number" name="quantity" id="quantity"></td>
      </tr>
      <tr>
        <td>Price: </td>
        <td><input type="number" name="price" id="price"></td>
      </tr>
      <tr>
        <td>Description: </td>
        <td><input type="text" name="description" id="description"></td>
      </tr>
      <tr>
        <td>Producer: </td>
        <td><input type="text" name="producer" id="producer"></td>
      </tr>
      <tr>
        <td></td>
        <td><input type="submit" value="Create product"></td>
      </tr>
    </table>
  </fieldset>
</form>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: TechCare
  Date: 07/06/2023
  Time: 14:07
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Edit customer</h1>
<p>
  <c:if test='${requestScope["message"] != null}'>
    <span class="message">${requestScope["message"]}</span>
  </c:if>
</p>
<p>
  <a href="/products">Back to customer list</a>
</p>
<form method="post">
  <fieldset>
    <legend>Product information</legend>
    <table>
      <tr>
        <td>Name: </td>
        <td><input type="text" name="name" id="name" value="${requestScope["product"].getName()}"></td>
      </tr>
      <tr>
        <td>Quantity: </td>
        <td><input type="number" name="quantity" id="quantity" value="${requestScope["product"].getQuantity()}"></td>
      </tr>
      <tr>
        <td>Price: </td>
        <td><input type="number" name="price" id="price" value="${requestScope["product"].getPrice()}"></td>
      </tr>
      <tr>
        <td>Description: </td>
        <td><input type="text" name="desciption" id="description" value="${requestScope["product"].getDescription()}"></td>
      </tr>
      <tr>
        <td>Producer: </td>
        <td><input type="text" name="producer" id="producer" value="${requestScope["product"].getProducer()}"></td>
      </tr>
      <tr>
        <td></td>
        <td><input type="submit" value="Update customer"></td>
      </tr>
    </table>
  </fieldset>
</form>
</body>
</html>

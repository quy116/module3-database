<%--
  Created by IntelliJ IDEA.
  User: gaugaune
  Date: 03/07/2023
  Time: 22:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>
    <table border="1" width="1000px">
        <tr>
            <td>id</td>
            <td>name</td>
            <td>quantity</td>
            <td>price</td>
            <td>delete</td>
        </tr>
        <c:forEach var="product" items="${productList}" varStatus="loop">
            <tr>
                <td><c:out value="${product.id}"/></td>
                <td><c:out value="${product.name}"/></td>
                <td><c:out value="${product.quantity}"/></td>
                <td><c:out value="${product.price}"/></td
                <td><a style="display: none">dddd</a></td>
            </tr>
        </c:forEach>
    </table>

</div>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: gaugaune
  Date: 03/07/2023
  Time: 12:51
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
        <c:forEach var="product" items="${list}" varStatus="loop">
            <tr>
                <td><c:out value="${product.id}"/></td>
                <td><c:out value="${product.name}"/></td>
                <td><c:out value="${product.quantity}"/></td>
                <td><c:out value="${product.price}"/></td
                    <td ><a style="display: none">dddd</a></td>
<%--                <td><c:out value="${product.price}"/></td--%>

                <td><a href="/ProductServlet?action=delete&id=${product.id}">delete </a></td>
                <td><a href="/ProductServlet?action=edit&id=${product.id}&name=${product.name}&quantity=${product.quantity}&price=${product.price}">edit </a></td>
            </tr>
        </c:forEach>
    </table>

</div>
<a href="/ProductServlet?action=showFormCreate">create product</a>
</body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: gaugaune
  Date: 04/07/2023
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1"width="500" align="center">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Country</th>
        <th>Delete</th>
        <th>Edit</th>
    </tr>
    <c:forEach var="user" items="${userList}">
        <tr>
            <td><c:out value="${user.getId()}"/></td>
            <td><c:out value="${user.getName()}"/></td>
            <td><c:out value="${user.getEmail()}"/></td>
            <td><c:out value="${user.getCountry()}"/></td>
            <td><a href="UserServlet?action=delete&id=${user.getId()}">Delete</a></td>
            <td><a href="UserServlet?action=edit&id=${user.getId()}&name=${user.getName()}&email=${user.getEmail()}&country=${user.getCountry()}">Edit</a></td>
        </tr>
    </c:forEach>
    <a href="UserServlet?action=create">them moi o day ne!!!</a>
    <a href="UserServlet?action=sapXep">sap xep ne</a>

</table>
<form method="post" action="UserServlet?action=findId">
    <label for="id">find id</label>
    <input name="id" type="number" id="id" >
    <input type="submit">
</form>
<form method="post" action="UserServlet?action=findByCountry">
    <label for="country">find Country</label>
    <input name="country" type="text" id="country" >
    <input type="submit">
</form>

</body>
</html>

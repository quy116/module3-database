<%--
  Created by IntelliJ IDEA.
  User: gaugaune
  Date: 04/07/2023
  Time: 21:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1" width="500" align="center">
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
            <td>
                <a href="UserServlet?action=edit&id=${user.getId()}&name=${user.getName()}&email=${user.getEmail()}&country=${user.getCountry()}">Edit</a>
            </td>
        </tr>
    </c:forEach>
    <a href="UserServlet">back to menu o dau ne!!!</a>

</table>
</body>
</html>

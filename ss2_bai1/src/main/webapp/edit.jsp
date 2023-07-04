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
<form action="UserServlet?action=edit" method="post">
    <input type="text"  name="id" id="id" value="${id}" readonly>
    <label for="name">nhap name</label>
    <input type="text"  name="name" id="name" value="${name}">
    <label for="email">nhap email</label>
    <input type="text"  name="email" id="email" value="${email}">
    <label for="Country">nhap Country</label>
    <input type="text"  name="country" id="Country" value="${country}">
    <input type="submit" value="nhan vao day de sua~ ne">
</form>
<a href="UserServlet"> back to menu</a>

</body>
</html>

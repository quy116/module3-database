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
<h1>create</h1>
<form action="UserServlet?action=create" method="post">
    <label for="name">nhap name</label>
    <input type="text"  name="name" id="name">
    <label for="email">nhap email</label>
    <input type="text"  name="email" id="email">
    <label for="Country">nhap Country</label>
    <input type="text"  name="country" id="Country">
    <input type="submit" value="nhan vao day de tao ne">
</form>
<a href="UserServlet"> back to menu</a>
</body>
</html>

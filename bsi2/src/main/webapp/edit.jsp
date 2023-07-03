<%--
  Created by IntelliJ IDEA.
  User: gaugaune
  Date: 03/07/2023
  Time: 17:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <form action="/ProductServlet?action=edit" method="post">
        <label for="id">nhap id</label>
        <input type="number" id="id" name="id" value="${id}" readonly>
        <label for="name">nhap name</label>
        <input type="text" id="name" name="name"  value="${name}">
        <label for="quanlity">nhap so luong</label>
        <input type="number" id="quanlity" name="quanlity"  value="${quantity}">
        <label for="price">nhap gia tien</label>
        <input type="number" id="price" name="price"  value="${price}">
        <input type="submit" value="submit">

    </form>

</body>
</html>

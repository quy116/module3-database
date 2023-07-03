<%--
  Created by IntelliJ IDEA.
  User: gaugaune
  Date: 03/07/2023
  Time: 13:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/ProductServlet?action=create" method="post">
    <label for="id">nhap id</label>
    <input type="number" id="id" name="id">
    <label for="name">nhap name</label>
    <input type="text" id="name" name="name">
    <label for="quanlity">nhap so luong</label>
    <input type="number" id="quanlity" name="quanlity">
    <label for="price">nhap gia tien</label>
    <input type="number" id="price" name="price">
    <input type="submit" value="submit">
</form>
<a href="ProductServlet.jsp" >back menu</a>
<c:if test="${msg != null}">
    <c:out value="${msg}"/>
</c:if>
</body>
</html>

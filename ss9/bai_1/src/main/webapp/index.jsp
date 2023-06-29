<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<form action="changeServlet" method="post">
    <input type="text" value=" Mô tả của sản phẩm">
    <input type="number" name="money" value="gia">
    <input type="number" name="Percent" value="chiet khau %">
    <input type="submit" id="submit" value="submit de">
<%--    <div>${amount}</div>--%>
<%--    <div>${total}</div>--%>

</form>
</body>
</html>
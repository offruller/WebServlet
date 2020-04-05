<%@ page import="java.util.Calendar" %><%--
  Created by IntelliJ IDEA.
  User: Alexander
  Date: 14.03.2020
  Time: 12:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p><font color="red">${errorMessage}</font></p>
    <form action="LoginServlet" method="POST">
        <p>Name : <input name="name" type="text" /></p>
        <p>Password : <input name="password" type="password" /></p>
        <input type="submit" />
    </form>
</body>
</html>
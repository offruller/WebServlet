<%--
  Created by IntelliJ IDEA.
  User: Alexander
  Date: 14.03.2020
  Time: 12:15
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome</title>
    <!-- Bootstrap core CSS -->
    <link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css"
          rel="stylesheet">
    <style>
        .footer {
            position: absolute;
            bottom: 0;
            width: 100%;
            height: 60px;
            background-color: #f5f5f5;
        }
        .footer .container {
            width: auto;
            max-width: 680px;
            padding: 0 15px;
        }
    </style>
</head>
<body>
<nav role="navigation" class="navbar navbar-default">
    <div class="">
        <img src =
                     "https://upload.wikimedia.org/wikipedia/commons/f/fa/Logo_IBA_Group.jpg" width="200"
             height="100">
    </div>
    <div class="navbar-collapse">
        <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="LoginServlet">Login</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="LogoutServlet">Logout</a></li>
        </ul>
    </div>
</nav>
<div class="container">
    <H2>Welcome ${name}</H2>
    <table border="1">
        <caption>Список вашей группы</caption>
        <tr>
            <th>Имя</th>
            <th>Телефон</th>
            <th>email</th>
        </tr>
        <c:forEach items="${group}" var="person">
            <tr><td>${person.name}</td>
                <td>${person.phone}</td>
                <td>${person.email}</td>
            </tr>
        </c:forEach>
    </table>
    <p><font color="red">${errorMessage}</font></p>
    <form method="POST" action="GroupServlet">
        Новый :
        <p> Введите имя <input name="nname" type="text" /> </p>
        <p> Введите телефон <input name="nphone" type="text" /> </p>
        <p> Введите email <input name="nemail" type="text" /> </p>
        <input name="add" type="submit" />
    </form>
</div>
<footer class="footer">
    <div class="container">
        <p>© 2020 Alexander Grigorjev. All rights reserved.</p>
    </div>
</footer>
<script src="webjars/jquery/3.4.1/jquery.min.js"></script>
<script src="webjars/bootstrap/4.4.1-1/js/bootstrap.min.js"></script>
</body>
</html>

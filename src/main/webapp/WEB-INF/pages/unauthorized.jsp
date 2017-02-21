<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ru">
<head>
    <title>Unauthorized</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="/resources/css/style.css">
</head>
<body id="errorPage">
<div align="center" id="errImg"><img src="/resources/images/my/djedai.png" height="400" width="350"></div>
<div align="center" id="type">
    <h1>Доступ запрещен для ${login}!</h1>
    <p>Вернитуться на <a href="/main">Главную</a></p>
    <c:url value="/logout" var="logoutUrl" />
    <p><a href="${logoutUrl}">LOGOUT</a></p>
</div>
</body>
</html>
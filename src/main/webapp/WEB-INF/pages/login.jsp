<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8">
  <title>Вход</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css'>

      <link rel="stylesheet" href="/resources/css/login.css">
</head>

<body>
    <c:url value="/j_spring_security_check" var="loginUrl" />
  <div class="form">
    <a style="text-decoration: none" href="/main"> <h1 class="thin text-center" style="color: yellow;font-weight: bold">Book's House</h1></a>

  <form role="form" action="${loginUrl}" method="post" name="login" accept-charset="UTF-8" enctype="application/x-www-form-urlencoded" >
    <div class="field-wrap">
      <div class="form-group input-group"><span id="basic-addon1" class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
        <input type="text" name="j_login" placeholder="<spring:message code="username"/>" aria-describedby="basic-addon1" class="form-control" />
      </div>
    </div>

    <div class="field-wrap">
      <div class="form-group input-group"><span id="basic-addon2" class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
        <input type="password" name="j_password" placeholder="<spring:message code="pass"/> " aria-describedby="basic-addon2" autocomplete="off" class="form-control" />
      </div>
    </div>
    <c:if test="${param.error ne null}">
      <p class="error" style="color: white"><spring:message code="errorinlogin"/></p>
    </c:if>
    <p style="color: white"><spring:message code="goregistr"/><a href="/register"> <spring:message code="registr"/> </a></p>
    <button type="submit" class="btn btn-danger button button-block"><spring:message code="loginM"/> </button>
  </form>
</div>


  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/underscore.string/3.2.3/underscore.string.min.js'></script>

    <script src="/resources/js/login.js"></script>

</body>
</html>

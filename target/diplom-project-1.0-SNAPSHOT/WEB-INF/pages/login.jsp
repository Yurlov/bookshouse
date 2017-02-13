<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>MangoDB: Forms</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css'>

      <link rel="stylesheet" href="/resources/css/login.css">
</head>

<body>

  <div class="form">
  <h1>Welcome Back!</h1>
  <form role="form" action="/login" method="POST" name="login" accept-charset="UTF-8" enctype="application/x-www-form-urlencoded" autocomplete="off">
    <div class="field-wrap">
      <div class="form-group input-group"><span id="basic-addon1" class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
        <input type="text" name="username" placeholder="Username" aria-describedby="basic-addon1" class="form-control" />
      </div>
    </div>

    <div class="field-wrap">
      <div class="form-group input-group"><span id="basic-addon2" class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
        <input type="password" name="password" placeholder="Password" aria-describedby="basic-addon2" autocomplete="off" class="form-control" />
      </div>
    </div>
    <c:if test="${param.error ne null}">
      <p class="error"><spring:message code="errorinlogin"/></p>
    </c:if>
    <c:if test="${param.logout ne null}">
      <p>See you soon!</p>
    </c:if>
    <p class="forgot"><a href="/forgot">Forgot Password?</a></p>
    <button type="submit" class="btn btn-danger button button-block">Log In</button>
  </form>
</div>

<section class="mangas" id="manga-area"></section>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/underscore.string/3.2.3/underscore.string.min.js'></script>

    <script src="/resources/js/login.js"></script>

</body>
</html>

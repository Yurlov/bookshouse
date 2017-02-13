<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Registration</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css'>

      <link rel="stylesheet" href="/resources/css/login.css">


  
</head>

<body>


<div class="form">
  <form role="form" action="/newuser" , method='POST' , name='signup' , accept-charset='UTF-8' , enctype='application/x-www-form-urlencoded' , autocomplete='off'>

    <div class="field-wrap">
      <div class="form-group input-group">
        <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-tags"></span></span>
        <input type="text" name="name" class="form-control" placeholder="Name *" aria-describedby="basic-addon1">
      </div>
    </div>

    <div class="field-wrap">
      <div class="form-group input-group">
        <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-user"></span></span>
        <input type="text" name="login" class="form-control" placeholder="Login *" aria-describedby="basic-addon1">

        <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-envelope"></span></span>
        <input type="text" name="email" class="form-control" placeholder="E-Mail *" aria-describedby="basic-addon1">
      </div>
    </div>

    <div class="field-wrap">
      <div class="form-group input-group">
        <span class="input-group-addon" id="basic-addon2"><span class="glyphicon glyphicon-lock"></span></span>
        <input type="password" name="password" class="form-control" placeholder="Password *" aria-describedby="basic-addon2" , autocomplete='off'>

        <span class="input-group-addon" id="basic-addon2"><span class="glyphicon glyphicon-lock"></span></span>
        <input type="password" name="confirm" class="form-control" placeholder="Comfirm Password *" aria-describedby="basic-addon2" , autocomplete='off'>
      </div>
    </div>

    <button type="submit" class="button button-block btn btn-danger">Register</button>
    <c:if test="${param.error ne null}">
      <p class="error"><spring:message code="errorinlogin"/></p>
    </c:if>
  </form>
</div>

    <script src="/resources/js/login.js"></script>

</body>
</html>

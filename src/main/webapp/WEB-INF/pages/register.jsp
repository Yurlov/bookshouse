<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru">
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
    <a style="text-decoration: none" href="/main"> <h1 class="thin text-center" style="color: yellow;font-weight: bold">Book's House</h1></a>

    <div class="field-wrap">
      <div class="form-group input-group">
        <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-tags"></span></span>
        <input type="text" name="name" class="form-control" placeholder="<spring:message code="nameR"/>" aria-describedby="basic-addon1">
      </div>
    </div>

    <div class="field-wrap">
      <div class="form-group input-group">
        <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-user"></span></span>
        <input type="text" name="login" class="form-control" placeholder="<spring:message code="loginR"/> " aria-describedby="basic-addon1">

        <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-envelope"></span></span>
        <input type="email" name="email" class="form-control" placeholder="<spring:message code="emailR"/> " aria-describedby="basic-addon1">
      </div>
    </div>

    <div class="field-wrap">
      <div class="form-group input-group">
        <span class="input-group-addon" id="basic-addon2"><span class="glyphicon glyphicon-lock"></span></span>
        <input type="password" name="password" class="form-control" placeholder="<spring:message code="passR"/>" aria-describedby="basic-addon2" , autocomplete='off'>

        <span class="input-group-addon" id="basic-addon2"><span class="glyphicon glyphicon-lock"></span></span>
        <input type="password" name="confirm" class="form-control" placeholder="<spring:message code="confirmPass"/>" aria-describedby="basic-addon2" , autocomplete='off'>
      </div>
      <div style="color: #fdfdfd;;">
        <c:choose>
          <c:when test="${exists ne null}">
            <spring:message code="regerror"></spring:message>
          </c:when>
          <c:when test="${wrongPass ne null}">
            <spring:message code="wrongPass"></spring:message>
          </c:when>
       <c:when test="${emptyPass ne null}">
         <spring:message code="emptyPass"></spring:message>
       </c:when>
        </c:choose>
    </div>
    </div>

    <p style="color: white"><spring:message code="haveacc"/> <a href="/login"> <spring:message code="enter"/> </a> </p>
    <button type="submit" class="button button-block btn btn-danger"><spring:message code="registr"/> </button>


  </form>
</div>

    <script src="/resources/js/login.js"></script>

</body>
</html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/resources/css/style.css">

</head>

<body>
<div class="container">
<div class="row col-lg-12">
<div id="page" >
    <form  id="searchForm" action="/searchByName" method="get">
                <div class="form-group" style="display:inline;">
                   <div class="input-group col-lg-12 col-md-4 col-sm-4 col-xs-4">
                        <input class="col-lg-12 col-md-4 col-sm-2 col-xs-3 form-control" id="input" name="book" placeholder="<spring:message code="search"/> " type="text" />
                        <button type="submit" id="button" class="col-lg-12 col-md-2 col-sm-2 col-xs-3 btn control-btn"><spring:message code="search2"/></button>
                   </div>
                </div>
    </form>
</div>
</div>
</div>
</body>
</html>

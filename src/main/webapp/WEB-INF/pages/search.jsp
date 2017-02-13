<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <style>

    #page{

        width:1300px;
        height: 20%;
        margin-top: 50px;

    }

    #searchForm{

        background-color: #ffd916;
        padding:20px 20px 20px 20px;
        margin:50px  0;
        position:relative;
        -moz-border-radius:5px;
        -webkit-border-radius:5px;
        border-radius:5px;
    }



    #input{
        border: #eeac39;
        float:left;
        font-size:20px;
        color: #000011;
        height:43px;
        line-height:36px;
        margin-right:30px;
        outline:medium none;
        padding:0 0 0 10px;

        width:1000px;
        -moz-border-radius:5px;
        -webkit-border-radius:5px;
        border-radius:5px;
    }

 #button{
    height: 45px;
     width: 170px;
     font-size: 17px;
     text-align: center;
     background: white;
     color: black;
}
        #button:hover{
            background: #000000;
            color: yellow;
        }

</style>

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

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link href="/resources/styles/raiting.css" rel="stylesheet" type="text/css"/>
    <link href="/resources/styles/jquery.rating.css" rel="stylesheet" type="text/css"/>


</head>

<body>
<div class="raite">

    <div id="rating_1">
        <input type="hidden" class="val" value="${viewBook.rating}"/>
        <input type="hidden" class="votes" value="${viewBook.voteCount}"/>

    </div>
</div>
</div>
<script type="text/javascript">
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-3866000-4']);
    _gaq.push(['_trackPageview']);

    (function () {
        var ga = document.createElement('script');
        ga.type = 'text/javascript';
        ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'https://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ga, s);
    })();
</script>
</body>
</html>

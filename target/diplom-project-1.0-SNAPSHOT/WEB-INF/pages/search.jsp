<!DOCTYPE html>
<html>
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
        text-shadow:1px 1px 1px #000000;
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
}

</style>

</head>

<body>
<div class="container">
<div class="row">
<div id="page" class="col-lg-12 col-md-4 col-sm-2">
    <form id="searchForm" action="/searchByName" method="get">
                <div class="form-group" style="display:inline;">
                   <div class="input-group">
                        <input class="form-control" id="input" name="bookName" placeholder="Search" type="text" />
                        <button type="submit" id="button" class="btn control-btn">Find a Book</button>
                   </div>
                </div>
    </form>
</div>
</div>
</div>
</body>
</html>

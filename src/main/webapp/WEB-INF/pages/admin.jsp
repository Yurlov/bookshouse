<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Online Library">
    <meta name="author" content="Viktor Yurlov">

    <title>Admin</title>

    <!-- Bootstrap Core CSS -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/resources/css/sb-admin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/main">Book's House</a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <c:out value="${login}"/> <b class="caret"></b></a>
                    <ul class="dropdown-menu">

                        <li>
                        <a href="/main"><i class="fa fa-fw fa-home"></i>Book's House</a>
                    </li>
                        <li class="divider"></li>
                        <li>
                            <a href="/logout"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>

        </nav>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Tables
                        </h1>
                    </div>
                </div>
                <!-- /.row -->
                <div class="row">

                    <div class="col-lg-12 col-xs-12" style="overflow: auto; height: 400px ">
                        <h2>Users</h2>
                        <div class="table-responsive">
                            <table class="table table-hover table-striped">
                                <thead>
                                <tr>
                                    <th colspan="7">
                                        <form action="/addUser" method="post">
                                            <div class="form-group">
                                                <button style="float: right;;" class="btn btn-lg btn-warning" >Add</button>
                                                <input class="form-control-static" placeholder="Enter login" type="text" name="login">
                                                <input class="form-control-static" placeholder="Enter name" type="text" name="name">
                                                <input class="form-control-static" placeholder="Enter email" type="email" name="email">
                                                <input class="form-control-static" placeholder="Enter password" type="text" name="password">
                                                <input class="form-control-static" placeholder="Enter role" type="text" name="role">
                                            </div>
                                        </form>
                                    </th>

                                </tr>
                                <tr>
                                    <th colspan="7">
                                        <form action="/updateUser" method="post">
                                            <div class="form-group">
                                                <button style="float: right;" class="btn btn-lg btn-warning" >Update</button>
                                                <input class="form-control-static" placeholder="Enter login" type="text" name="login">
                                                <input class="form-control-static" placeholder="Enter name" type="text" name="name">
                                                <input class="form-control-static" placeholder="Enter email" type="email" name="email">
                                                <input class="form-control-static" placeholder="Enter password" type="text" name="password">
                                                <input class="form-control-static" placeholder="Enter role" type="text" name="role">
                                            </div>
                                        </form>
                                    </th>
                                </tr>
                                <tr>
                                    <th>Chose:</th>
                                    <th>Id</th>
                                    <th>Name</th>
                                    <th>Login</th>
                                    <th>Email</th>
                                    <th>Password</th>
                                    <th>Role</th>
                                </tr>
                                </thead>
                                <tbody>
                                <form action="/deleteUser" method="post">
                                <c:forEach items="${users}" var="u">
                                <tr>
                                    <td><div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="id" value="${u.id}"/><input class="btn btn-success" style="float: right" type="submit" value="Delete">
                                        </label>
                                    </div>
                                    </td>
                                    <td><c:out value="${u.id}"/></td>
                                    <td><c:out value="${u.name}"/></td>
                                    <td><c:out value="${u.login}"/></td>
                                    <td><c:out value="${u.email}"/></td>
                                    <td><c:out value="${u.password}"/></td>
                                    <td><c:out value="${u.role}"/></td>

                                </tr>
                                </c:forEach>

                                </form>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
                <hr/>
                <div
                ">
                <div class="col-lg-12 col-xs-12 col-md-3">
                        <h2>Genre Table</h2>

                    <div class="table-responsive" style="overflow: auto; height: 400px;">

                            <table class="table table-bordered table-hover">
                                <thead class="fixed" >
                                <tr>
                                    <th colspan="4">
                                        <form action="/addGenre" method="post">
                                     <div class="form-group">
                                        <input class="form-control" placeholder="Жанр: " type="text" name="name_ru">
                                         <input class="form-control" placeholder="Genre: " type="text" name="name_en">
                                         <button style="float: right" class="btn btn-primary" >Add</button>

                                    </div>
                                    </form>
                                    </th>
                                </tr>
                                    <tr>
                                        <th>Chose:</th>
                                        <th>Id</th>
                                        <th>Name_ru</th>
                                        <th>Name_en</th>
                                    </tr>
                                </thead>
                                <tbody >
                                <c:forEach items="${genres}" var="g">
                                <form action="/deleteGenre" method="post">
                                    <tr>
                                        <td>
                                            <div class="checkbox">
                                            <label>
                                                <input type="checkbox" name="genre" value="${g.id}"/><input class="btn btn-success" style="float: left" type="submit" value="Delete">
                                            </label>
                                        </div>

                                        </td>
                                        <td><c:out value="${g.id}"/> </td>
                                        <td><c:out value="${g.name_ru}"/></td>
                                        <td><c:out value="${g.name_en}"/> </td>
                                    </tr>
                                </c:forEach>

                                </form>
                                </tbody>

                            </table>
                        </div>
                    </div>
                <div class="col-lg-12 col-xs-12 col-md-12">
                        <h2>Author Table</h2>
                    <div class="table-responsive" style="overflow: auto; height: 400px; ">
                            <table class="table table-bordered table-hover table-striped" >
                                <thead>
                                <tr>
                                    <th colspan="4">
                                        <form action="/addAuthor" method="post">
                                            <div class="form-group">
                                                <input class="form-control" placeholder="Enter name" type="text" name="auth">
                                                <button style="float: right" class="btn btn-primary" >Add</button>
                                            </div>
                                        </form>
                                    </th>
                                </tr>
                                    <tr>
                                        <th>Chose:</th>
                                        <th>Id</th>
                                        <th>Name</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <form action="/deleteAuthor" method="post">
                                <c:forEach items="${auth}" var="a">
                                    <tr>
                                        <td >
                                            <div class="checkbox">
                                            <label>
                                                <input type="checkbox" name="id" value="a.id"/> <input class="btn btn-success" style="float: left" type="submit" value="Delete">
                                            </label>
                                        </div>
                                        </td>
                                        <td><c:out value="${a.id}"/> </td>
                                        <td><c:out value="${a.fio}"/></td>

                                    </tr>
                                </c:forEach>

                                </form>
                                </tbody>
                            </table>
                        </div>
                    </div>
                <div class="col-lg-12 col-xs-12 col-md-3 "
                ">
                        <h2>Publisher Table</h2>

                <div class="table-responsive" style="overflow: auto; height: 400px;">

                            <table class="table table-bordered table-hover" >
                                <thead class="fixed" >
                                <tr>
                                    <th colspan="3">
                                        <form action="/addPublisher" method="post">
                                            <div class="form-group">
                                                <input class="form-control" placeholder="Enter name" type="text" name="name">
                                                <button style="float: right" class="btn btn-primary" >Add</button>
                                            </div>
                                        </form>
                                    </th>
                                </tr>
                                <tr>
                                    <th>Chose:</th>
                                    <th>Id</th>
                                    <th>Name</th>

                                </tr>
                                </thead>
                                <tbody >
                                <form action="/deletePublisher" method="post">
                                <c:forEach items="${publishers}" var="p">
                                    <tr>
                                        <td> <div class="checkbox">
                                            <label>
                                                <input type="checkbox" name="id" value="${p.id}"/><input class="btn btn-success" style="float: left" type="submit" value="Delete">
                                            </label>
                                        </div>
                                        </td>
                                        <td><c:out value="${p.id}"/> </td>
                                        <td><c:out value="${p.name}"/></td>
                                    </tr>
                                </c:forEach>

                                </form>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <hr/>
                <div class="row">
                    <div class="col-lg-12 col-md-12" style="height: 500px; width: 100%; overflow: auto">
                        <h2>Books</h2>
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover table-striped">
                                <thead>
                                    <tr>
                                        <th>Chose:</th>
                                        <th>Id</th>
                                        <th>Name</th>
                                        <th>ISBN</th>
                                        <th>Genre</th>
                                        <th>Image</th>
                                        <th>Description</th>
                                        <th>Page Count</th>
                                        <th>Publisher Year</th>
                                        <th>Author</th>
                                        <th>Publisher</th>
                                        <th>Rating</th>
                                        <th>Vote</th>
                                        <th>Content</th>

                                    </tr>
                                </thead>
                                <tbody>
                                <form action="/deleteBook" method="post">
                                <c:forEach items="${books}" var="b">
                                    <tr class="active">

                                        <td>
                                            <div class="checkbox">
                                            <label>
                                                <input type="checkbox" name="id" value="${b.id}"/><input class="btn btn-success"  type="submit" value="Delete">
                                            </label>
                                        </div>
                                        </td>

                                        <td><c:out value="${b.id}"/></td>
                                        <td><c:out value="${b.name}"/></td>
                                        <td><c:out value="${b.isbn}"/></td>
                                        <td><c:out value="${b.genre.name_ru}"/></td>
                                        <td><c:out value="${b.image}"/></td>
                                        <td><c:out value="${b.descr}"/></td>
                                        <td><c:out value="${b.pageCount}"/></td>
                                        <td><c:out value="${b.publishYear}"/></td>
                                        <td><c:out value="${b.author.fio}"/></td>
                                        <td><c:out value="${b.publisher.name}"/></td>
                                        <td><c:out value="${b.rating}"/></td>
                                        <td><c:out value="${b.voteCount}"/></td>
                                        <td><c:out value="${b.content}"/></td>

                                    </tr>
                                </c:forEach>

                                </form>
                                </tbody>
                            </table>

                        </div>
                    </div>

                </div>
                <div style="background: #a8b6bf;">
                    <form class="form-group-lg" enctype="multipart/form-data" method="post" action="/addBook" >
                        <h1>New Book</h1>
                        <h4>Name <input type="text" name="bookName"/> </h4>
                        <h4>ISBN <input type="text" name="isbn"></h4>
                        <h4>Genre <select name="genre">
                            <option>Choose:</option>
                            <c:forEach items="${genres}" var="g">
                                <option value="${g.name_ru}">${g.name_ru}</option>
                            </c:forEach>
                        </select>
                        </h4>
                        <h4>Image:  <input type="file" name="image" multiple accept="image/*,image/jpeg"></h4>
                        <h4>Description <input type="text" name="descript"></h4>
                        <h4>Page Count <input type="text" name="pageCount"></h4>
                        <h4>Publisher Year <input type="text" name="year"></h4>
                        <h4>Author:
                            <select name="author">
                                <option>Choose:</option>
                                <c:forEach items="${auth}" var="a">
                                    <option value="${a.id}">${a.fio}</option>
                                </c:forEach>
                            </select>
                        </h4>
                        <h4>Publisher
                            <select name="publisher">
                                <option>Choose:</option>
                                <c:forEach items="${publishers}" var="p">
                                    <option value="${p.id}">${p.name}</option>
                                </c:forEach>
                            </select>
                        </h4>
                        <h4>Rating <input type="text" name="rating"></h4>
                        <h4>Content:  <input type="file" name="content" multiple></h4>
                        <h4>Vote <input type="text" name="voteCount"></h4>
                        <input class="btn btn-lg btn-success" type="submit" value="Добавить">

                    </form>
                </div>
            </div>


        </div>


    </div>



    <script src="/resources/js/jquery.js"></script>

    <script src="/resources/js/bootstrap.min.js"></script>

</body>

</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

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
                <a class="navbar-brand" href="index.html"> Admin</a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> <b class="caret"></b></a>
                    <ul class="dropdown-menu message-dropdown">
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading"><strong>John Smith</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading"><strong>John Smith</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading"><strong>John Smith</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-footer">
                            <a href="#">Read All New Messages</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
                    <ul class="dropdown-menu alert-dropdown">
                        <li>
                            <a href="#">Alert Name <span class="label label-default">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-primary">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-success">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-info">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-warning">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-danger">Alert Badge</span></a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">View All</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> John Smith <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="/logout"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li class="active">
                        <a href="/adminka"><i class="fa fa-fw fa-table"></i> Tables</a>
                    </li>
                    <li>
                        <a href="/forms"><i class="fa fa-fw fa-edit"></i> Forms</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
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

                    <div class="col-lg-12" style="overflow: auto; height: 400px " >
                        <h2>Users</h2>
                        <div class="table-responsive">
                            <table class="table table-hover table-striped">
                                <thead>
                                <tr>
                                    <th colspan="7">
                                        <form action="/addUser">
                                            <div class="form-group">
                                                <button class="btn btn-lg btn-warning" >Add</button>
                                                <input class="form-control-static" placeholder="Enter login" type="text" name="login">
                                                <input class="form-control-static" placeholder="Enter name" type="text" name="name">
                                                <input class="form-control-static" placeholder="Enter email" type="text" name="email">
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
                                <c:forEach items="${users}" var="u">
                                <tr>
                                    <td><div class="checkbox">
                                        <label>
                                            <input type="checkbox" value=""/>
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
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
                <hr/>
                <div class="row" style="margin-left: 70px">
                    <div class="col-lg-3">
                        <h2>Genre Table</h2>

                        <div class="table-responsive" style="overflow: auto;width: 420px; height: 400px;" >

                            <table class="table table-bordered table-hover">
                                <thead class="fixed" >
                                <tr>
                                    <th colspan="3">
                                        <form action="/addGenre">
                                     <div class="form-group">
                                        <input class="form-control" placeholder="Enter Genre" type="text" name="genre">
                                         <button class="btn btn-primary" >Add</button>
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
                                <tbody style="text-align: center">
                                <c:forEach items="${genres}" var="g">
                                    <tr>
                                        <td><div class="checkbox">
                                            <label>
                                                <input type="checkbox" value=""/>
                                            </label>
                                        </div></td>
                                        <td><c:out value="${g.id}"/> </td>
                                        <td><c:out value="${g.name}"/></td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-lg-3" style="margin-left: 70px;">
                        <h2>Author Table</h2>
                        <div class="table-responsive" style="overflow: auto;width: 420px; height: 400px; ">
                            <table class="table table-bordered table-hover table-striped" >
                                <thead>
                                <tr>
                                    <th colspan="4">
                                        <form action="/addAuthor">
                                            <div class="form-group">
                                                <input class="form-control" placeholder="Enter name" type="text" name="auth">
                                                <input class="form-control" placeholder="Enter birthday" type="text" name="birthday">
                                                <button class="btn btn-primary" >Add</button>
                                            </div>
                                        </form>
                                    </th>
                                </tr>
                                    <tr>
                                        <th>Chose:</th>
                                        <th>Id</th>
                                        <th>Name</th>
                                        <th>Birthday</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${auth}" var="a">
                                    <tr>
                                        <td >
                                            <div class="checkbox">
                                            <label>
                                                <input type="checkbox" value=""/>
                                            </label>
                                        </div>
                                        </td>
                                        <td><c:out value="${a.id}"/> </td>
                                        <td><c:out value="${a.fio}"/></td>
                                        <td><c:out value="${a.birthday}"/></td>

                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-lg-3" style="margin-left: 70px; ">
                        <h2>Publisher Table</h2>

                        <div class="table-responsive" style="overflow: auto;width: 420px; height: 400px;" >

                            <table class="table table-bordered table-hover" >
                                <thead class="fixed" >
                                <tr>
                                    <th colspan="3">
                                        <form action="/addPublisher">
                                            <div class="form-group">
                                                <input class="form-control" placeholder="Enter name" type="text" name="name">
                                                <button class="btn btn-primary" >Add</button>
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
                                <tbody style="text-align: center">
                                <c:forEach items="${publishers}" var="p">
                                    <tr>
                                        <td> <div class="checkbox">
                                            <label>
                                                <input type="checkbox" value=""/>
                                            </label>
                                        </div>
                                        </td>
                                        <td><c:out value="${p.id}"/> </td>
                                        <td><c:out value="${p.name}"/></td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <hr/>
                <div class="row">
                    <div class="col-lg-12" style="height: 500px; overflow: auto">
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

                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${books}" var="b">
                                    <tr class="active">
                                        <td>
                                            <div class="checkbox">
                                            <label>
                                                <input type="checkbox" value=""/>
                                            </label>
                                        </div>
                                        </td>
                                        <td><c:out value="${b.id}"/></td>
                                        <td><c:out value="${b.name}"/></td>
                                        <td><c:out value="${b.isbn}"/></td>
                                        <td><c:out value="${b.genre.name}"/></td>
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
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="/resources/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/resources/js/bootstrap.min.js"></script>

</body>

</html>

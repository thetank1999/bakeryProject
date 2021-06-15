<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>My Profile - SWP Bakery</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <!--        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>

        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    </head>
    <body>

        <jsp:include page="Menu.jsp"></jsp:include>
            <section class="jumbotron text-center">
                <div class="container">
                    <h1 class="jumbotron-heading"><b>SWP</b> Bakery </h1>
                    <p class="lead text-muted mb-0">High Quality Products Only</p>
                </div>
            </section>
            <div class="container">
                <div class="row">
                    <div class="col">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        <c:if test="${sessionScope.user.roleID > -1}">
            <div class="container">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-6">
                                <h2>Manage <b>My Profile</b></h2>
                            </div>
                            <div class="col-sm-6">
                                <a href="manageProduct"><button type="button" class="btn btn-success">Back</button></a>
                            </div>
                        </div>
                    </div>
                    <div id="editProduct" class="">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <form action="edit" method="post">
                                    <div class="modal-header">						
                                        <h4 class="modal-title">My Information</h4>

                                    </div>
                                    <div class="modal-body">	
                                        <div class="form-group">
                                            <label>Email Address</label>
                                            <input value="" name="email" type="text" class="form-control" readonly>
                                        </div>
                                        <div class="form-group">
                                            <label>Password</label>
                                            <input value="" name="password" type="password" class="form-control" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Avatar Link</label>
                                            <input value="" name="avatarLnk" type="text" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label>Address</label>
                                            <input value="" name="address" type="text" class="form-control" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Phone Number</label>
                                            <input value="" name="phoneNumber" type="number" class="form-control" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Gender</label>
                                            <select name="gender" class="form-select" aria-label="Default select example">
                                                <option value="male">Male</option>
                                                <option value="female">Female</option>
                                                <option value="notSay">Don't want to say</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <a href="home"><input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel"></a>
                                        <input type="submit" class="btn btn-info" value="Save">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </c:if>
        <div class="container">
            <div class="row">
                <div class="col">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
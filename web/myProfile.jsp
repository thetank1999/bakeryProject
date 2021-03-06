<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        

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

                                <a href="home"><button type="button" class="btn btn-success">Back to home</button></a>
                            </div>
                            <div class="modal-body">
                                <a href="#changePasswordModal" class="btn btn-success" data-toggle="modal"><span>Change Password</span></a>
                            </div>
                        </div>
                    </div>
                    <div id="editProduct" class="">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <form action="editMyProfile" method="post">
                                    <div class="modal-header">						
                                        <h4 class="modal-title">My Information</h4>

                                    </div>
                                    <div class="modal-body">	
                                        <div class="form-group"> 
                                            <label>Avatar</label> 
                                            <br>
                                            <img src="${uDTO.avatarLink}" alt="Card image cap">
                                            <textarea name="avatarLink" class="form-control">${uDTO.avatarLink}</textarea>

                                        </div>
                                        <div class="form-group">
                                            <label>Full Name</label> 
                                            <input value="${uDTO.fullName}" name="fullName" type="text" class="form-control" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Email Address</label>
                                            <input value="${uDTO.email}" name="email" type="text" class="form-control" readonly>
                                        </div>
                                        <div class="form-group">
                                            <label>Password</label>
                                            <input value="${uDTO.password}" name="password" type="password" class="form-control" readonly>
                                        </div>

                                        <div class="form-group">
                                            <label>Address</label>
                                            <input value="${uDTO.address}" name="address" type="text" class="form-control" required>
                                        </div>

                                        <div class="form-group">
                                            <label>Phone Number</label>
                                            <input value="${uDTO.phoneNumber}" name="phoneNumber" type="text" class="form-control" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Date of Creation</label>
                                            <input value="${uDTO.creationDate}" name="creationDate" type="date" class="form-control" readonly>
                                        </div>
                                        <div class="form-group">
                                            <label>Gender</label>
                                            <select name="gender" class="form-select" aria-label="Default select example">
                                                <option value="male" ${uDTO.gender.equalsIgoreCase("male") ? "selected" : ""}>Male</option>
                                                <option value="female" ${uDTO.gender.equalsIgoreCase("female") ? "selected" : ""}>Female</option>
                                                <option value="notSay">Don't want to say</option>
                                            </select>

                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="submit"class="btn btn-info" value="Save Changes" readonly>
                                        <a href="home"><input type="button" class="btn btn-default" value="Cancel" readonly></a>
                                        <br>
                                    </div>
                                </c:if>
                            </form>

                            <br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- changePassword Modal HTML -->
        <div id="changePasswordModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="changePassword" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Change Password</h4>
                            <p class="text-danger">${mess}</p>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Current Password</label>
                                <input name="currentPassword" type="password" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>New Password</label>
                                <input name="newPassword" type="password" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Repeat New Password</label>
                                <input name="re_newPassword" type="password" class="form-control" required>
                            </div>					
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-info" value="Save">
                        </div>
                    </form>
                </div>
            </div>
        </div>
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
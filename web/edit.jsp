<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Manage Product</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <title>Edit Product</title>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    </head>
    <body>
        <c:if test="${sessionScope.user.roleID == 3}">
            <div class="container">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-6">
                                <h2>Manage <b>Product</b></h2>
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
                                        <h4 class="modal-title">Edit Product</h4>

                                    </div>
                                    <div class="modal-body">	
                                        <div class="form-group">
                                            <label>Product ID</label>
                                            <input value="${p.id}" name="name" type="text" class="form-control" required readonly>
                                        </div>
                                        <div class="form-group">
                                            <label>Name</label>
                                            <input value="${p.name}" name="name" type="text" class="form-control" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Image/ Thumbnail Link</label>
                                            <input value="${p.thumbNailLink}" name="thumbnail" type="text" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label>Sale Price (VND)</label>
                                            <input value="${p.originalSalePrice}" name="originSalePrice" type="number" class="form-control" >
                                        </div>
                                        <div class="form-group">
                                            <label>Original Price (VND)</label>
                                            <input value="${p.salePrice}" name="salePrice" type="number" class="form-control" required>
                                        </div>
                                        <div class="form-group">
                                            <label>No. in Stock</label>
                                            <input value="${p.stock}" name="stock" class="form-control" type="number" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Description</label>
                                            <textarea name="description" class="form-control" required>${p.details}</textarea>
                                        </div>
                                        <div class="form-group">
                                            <label>Category</label>
                                            <select name="cateID" class="form-select" aria-label="Default select example">
                                                <c:forEach items="${listCate}" var="o">
                                                    <option  ${p.categoryID ==o.id ? "selected":""} value="${o.id}">${o.name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            
                                            <label>Status </label>
                                            <select name="status" class="form-select" aria-label="Default select example">
                                                <option ${p.status == true ? "selected": ""} value="true">True</option>
                                                <option ${p.status == false ? "selected": ""} value="fase">False</option>
                                                <option ${p.status == null ? "selected": ""} value="null">NULL</option>
                                            </select>
                                        </div>

                                        <div class="form-group">
                                            <label>Sale Status </label>
                                            <select name="saleStatus" class="form-select" aria-label="Default select example">
                                                <option ${p.saleStatus == true ? "selected": ""} value="true">True</option>
                                                <option ${p.saleStatus == false ? "selected": ""} value="fase">False</option>
                                                <option ${p.saleStatus == null ? "selected": ""} value="null">NULL</option>
                                            </select>
                                        </div>


                                    </div>
                                    <div class="modal-footer">
                                        <a href="manageProduct"><input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel"></a>
                                        <input type="submit" class="btn btn-info" value="Save">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </c:if>
                </body>
                </html>

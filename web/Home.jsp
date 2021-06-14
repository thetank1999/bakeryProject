

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>


        <jsp:include page="Menu.jsp"></jsp:include>
        <jsp:include page="slider.html"></jsp:include>


            <div class="container">

            </div>
            <div class="container">
                <div class="row">
                <jsp:include page="Left.jsp"></jsp:include>

                    <div class="col-sm-9">
                        <div class="row">
                        <c:forEach items="${listP}" var="o">
                            <div class="col-12 col-md-6 col-lg-4">
                                <div class="card">
                                    <img class="card-img-top" src="${o.thumbNailLink}" alt="Card image cap">
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="detail?pID=${o.id}" title="View Product">${o.name}</a></h4>
                                        <p class="card-text show_txt">${o.details}
                                        </p>
                                        <div class="row">
                                            <c:if test="${o.originalSalePrice < o.salePrice}">
                                                <div class="col">
                                                    <p class="btn btn-danger btn-block">${o.originalSalePrice} VND</p> 
                                                    <p class="btn  btn-block"><del>${o.salePrice}</del> VND</p>
                                                </div>
                                            </c:if>

                                            <c:if test="${o.originalSalePrice >= o.salePrice}">
                                                <div class="col">
                                                    <p class="btn btn-danger btn-block">${o.salePrice} VND</p>
                                                    <p > </p> 
                                                </div>
                                            </c:if>
                                            <div class="col">
                                                <a href="#" class="btn btn-success btn-block">Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>

                    </div>
                        <div class="clearfix">
                    <div class="hint-text">Showing <b>6</b> out of <b>${productQuantity}</b> entries</div>
                    <ul class="pagination">
                        <c:forEach begin="1" end="${maxPages}" var="i">
                            <li class="page-item"><a class="page-link" href="paging?index=${i}">${i}</a></li>
                            </c:forEach>

                    </ul>
                </div>
                </div>
                
            </div>
        </div>
        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>


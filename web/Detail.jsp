<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Detail</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <style>
            .gallery-wrap .img-big-wrap img {
                height: 450px;
                width: auto;
                display: inline-block;
                cursor: zoom-in;
            }


            .gallery-wrap .img-small-wrap .item-gallery {
                width: 60px;
                height: 60px;
                border: 1px solid #ddd;
                margin: 7px 2px;
                display: inline-block;
                overflow: hidden;
            }

            .gallery-wrap .img-small-wrap {
                text-align: center;
            }
            .gallery-wrap .img-small-wrap img {
                max-width: 100%;
                max-height: 100%;
                object-fit: cover;
                border-radius: 4px;
                cursor: zoom-in;
            }
            .img-big-wrap img{
                width: 100% !important;
                height: auto !important;
            }
        </style>
    </head>
    <body>
        <jsp:include page="Menu.jsp"></jsp:include>
            <div class="container">
                <div class="row">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-3">
                                <div class="card bg-light mb-3">
                                    <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-list"></i> Categories </div>
                                    <ul class="list-group category_block">
                                    <c:forEach items="${listCate}" var="c">
                                        <li class="list-group-item text-white ${act == c.id ? "active":""}"><a href="category?cateID=${c.id}">${c.name}</a></li>
                                        </c:forEach>

                                </ul>
                            </div>
                            <div class="card bg-light mb-3">
                                <div class="card-header bg-success text-white text-uppercase">Latest Product</div>
                                <div class="card-body">
                                    <!--            <img class="img-fluid" src="" />-->
                                    <h5 class="card-title">${latestProduct.name}</h5>
                                    <p class="card-text">${latestProduct.details}</p>
                                    <p class="bloc_left_price">${latestProduct.salePrice}</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-9">
                            <div class="container">
                                <div class="card">
                                    <div class="row">
                                        <aside class="col-sm-5 border-right">
                                            <article class="gallery-wrap"> 
                                                <div class="img-big-wrap">
<!--                                                    <div> <a href="#"><img src="https://canary.contestimg.wish.com/api/webimage/5c4a05a08b26e56dcf17a643-normal.jpg?cache_buster=6d01b751858e14e68932bb234cdc44c1"></a></div>-->
                                                </div> <!-- slider-product.// -->
                                                <div class="img-small-wrap">
                                                </div> <!-- slider-nav.// -->
                                            </article> <!-- gallery-wrap .end// -->
                                        </aside>
                                        <aside class="col-sm-7">
                                            <article class="card-body p-5">
                                                <h3 class="title mb-3">${p.name}</h3>

                                                <p class="price-detail-wrap"> 
                                                    <span class="price h3 text-warning"> 
                                                        <span class="currency">VND</span><span class="num">${p.originalSalePrice}</span>
                                                    </span> 
                                                </p> <!-- price-detail-wrap .// -->
                                                <dl class="item-property">
                                                    <dt>Description</dt>
                                                    <dd><p>
                                                            ${p.details}
                                                        </p></dd>
                                                </dl>

                                                <hr>
                                                <div class="row">
                                                    <div class="col-sm-5">
                                                        <dl class="param param-inline">
                                                            <dt>Quantity: ${p.stock} </dt>
                                                            <dd>
                                                                <select class="form-control form-control-sm" style="width:70px;">
                                                                    <option> 1 </option>
                                                                    <option> 2 </option>
                                                                    <option> 3 </option>
                                                                </select>
                                                            </dd>
                                                        </dl>  <!-- item-property .// -->
                                                    </div> <!-- col.// -->

                                                </div> <!-- row.// -->
                                                <hr>
                                                <a href="#" class="btn btn-lg btn-primary text-uppercase"> Buy now </a>
                                                <a href="#" class="btn btn-lg btn-outline-primary text-uppercase"> <i class="fas fa-shopping-cart"></i> Add to cart </a>
                                            </article> <!-- card-body.// -->
                                        </aside> <!-- col.// -->
                                    </div> <!-- row.// -->
                                </div> <!-- card.// -->


                            </div>
                        </div>
                    </div>
                </div>
                <jsp:include page="Footer.jsp"></jsp:include>
                </body>
                </html>

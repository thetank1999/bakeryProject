<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Post Details</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <style>
            element.style {
            }
            #PageContainer {
                overflow: hidden;
            }
            .is-moved-by-drawer {
                -webkit-transform: translateZ(0);
                will-change: transform;
                transition: all 0.4s cubic-bezier(0.46, 0.01, 0.32, 1);
                margin-left: auto;
                margin-right: auto;
            }
            *, input, :before, :after {
                box-sizing: border-box;
            }
            user agent stylesheet
            div {
                display: block;
            }
            body {
                position: relative;
                line-height: normal !important;

            }
            body, input, textarea, button, select {
                font-size: 14px;
                line-height: 1.6;
                font-family: "UTMAvo", "HelveticaNeue", "Helvetica Neue", Helvetica, Arial, sans-serif;
                color: #333333;
                font-weight: 300;
                -webkit-font-smoothing: antialiased;
                -webkit-text-size-adjust: 100%;
            }
            *, input, :before, :after {
                box-sizing: border-box;
            }
            *, input, :before, :after {
                box-sizing: border-box;
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

            <div class="container">

                <div class="row">

                    <div id="PageContainer" class="is-moved-by-drawer">

                        <main class="main-content" role="main">
                            <section id="blog-wrapper">
                                <div class="wrapper">
                                    <div class="inner">
                                        <div class="grid">
                                            <div class="grid__item large--eight-twelfths push--large--two-twelfths medium--one-whole small--one-whole">
                                                <article class="" itemscope="" itemtype="http://schema.org/Article">
                                                    <div class="article-content">
                                                        <div class="article-head">
                                                            <h1 class="text-center">${p.title}</h1>							
                                                            <div class="grid mg-left-15">
                                                                <div class="grid__item large--one-half medium--one-half small--one-half pd-left15">
                                                                    <div class="article-date-comment">
                                                                        <div class="date"><i class="fa fa-calendar" aria-hidden="true"></i> ${p.updateDate}</div>
                                                                        <div class="comment"><i class="fa fa-commenting-o" aria-hidden="true"></i> <span class="fb-comments-count fb_comments_count_zero_fluid_desktop" data-href="https://anhhoabakery.vn/blogs/news/default-handle-6" fb-xfbml-state="parsed" fb-iframe-plugin-query="app_id=&amp;container_width=0&amp;count=true&amp;height=100&amp;href=https%3A%2F%2Fanhhoabakery.vn%2Fblogs%2Fnews%2Fdefault-handle-6&amp;locale=en_US&amp;sdk=joey&amp;version=v2.10&amp;width=550"><span class="fb_comments_count">0</span></span></div>
                                                                        <div class="author">
                                                                            <i class="fa fa-user" aria-hidden="true"></i> ${p.posterEmail} 
                                                                        </div>									
                                                                    </div>
                                                                </div>
                                                                <div class="grid__item large--one-half medium--one-half small--one-half pd-left15">
                                                                    <div class="social-network-actions text-right">
                                                                        <div class="fb-send" data-href="https://anhhoabakery.vn/blogs/news/default-handle-6"></div>
                                                                        <div class="fb-like fb_iframe_widget" data-href="https://anhhoabakery.vn/blogs/news/default-handle-6" data-layout="button" data-action="like" data-size="small" data-show-faces="true" data-share="true" fb-xfbml-state="rendered" fb-iframe-plugin-query="action=like&amp;app_id=&amp;container_width=346&amp;href=https%3A%2F%2Fanhhoabakery.vn%2Fblogs%2Fnews%2Fdefault-handle-6&amp;layout=button&amp;locale=en_US&amp;sdk=joey&amp;share=true&amp;show_faces=true&amp;size=small"><span style="vertical-align: bottom; width: 120px; height: 28px;"><iframe name="f3396f8405df81c" width="1000px" height="1000px" data-testid="fb:like Facebook Social Plugin" title="fb:like Facebook Social Plugin" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="https://www.facebook.com/v2.10/plugins/like.php?action=like&amp;app_id=&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fx%2Fconnect%2Fxd_arbiter%2F%3Fversion%3D46%23cb%3Df789602ee47e48%26domain%3Danhhoabakery.vn%26origin%3Dhttps%253A%252F%252Fanhhoabakery.vn%252Ff30d5e9040ded74%26relation%3Dparent.parent&amp;container_width=346&amp;href=https%3A%2F%2Fanhhoabakery.vn%2Fblogs%2Fnews%2Fdefault-handle-6&amp;layout=button&amp;locale=en_US&amp;sdk=joey&amp;share=true&amp;show_faces=true&amp;size=small" style="border: none; visibility: visible; width: 120px; height: 28px;" class=""></iframe></span></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="article-tldr clearfix">

                                                        </div>

                                                        <div class="article-body">
                                                            <p>${p.detail}</p>
                                                        </div>

                                                    </div>
                                                    <div class="social-network-actions-outside text-right">
                                                        <div class="fb-send" data-href="https://anhhoabakery.vn/blogs/news/default-handle-6"></div>
                                                        <div class="fb-like fb_iframe_widget" data-href="https://anhhoabakery.vn/blogs/news/default-handle-6" data-layout="button" data-action="like" data-size="small" data-show-faces="true" data-share="true" fb-xfbml-state="rendered" fb-iframe-plugin-query="action=like&amp;app_id=&amp;container_width=691&amp;href=https%3A%2F%2Fanhhoabakery.vn%2Fblogs%2Fnews%2Fdefault-handle-6&amp;layout=button&amp;locale=en_US&amp;sdk=joey&amp;share=true&amp;show_faces=true&amp;size=small"><span style="vertical-align: bottom; width: 120px; height: 28px;"><iframe name="f151d4a0cef7db" width="1000px" height="1000px" data-testid="fb:like Facebook Social Plugin" title="fb:like Facebook Social Plugin" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="https://www.facebook.com/v2.10/plugins/like.php?action=like&amp;app_id=&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fx%2Fconnect%2Fxd_arbiter%2F%3Fversion%3D46%23cb%3Df20fc0529c70e88%26domain%3Danhhoabakery.vn%26origin%3Dhttps%253A%252F%252Fanhhoabakery.vn%252Ff30d5e9040ded74%26relation%3Dparent.parent&amp;container_width=691&amp;href=https%3A%2F%2Fanhhoabakery.vn%2Fblogs%2Fnews%2Fdefault-handle-6&amp;layout=button&amp;locale=en_US&amp;sdk=joey&amp;share=true&amp;show_faces=true&amp;size=small" style="border: none; visibility: visible; width: 120px; height: 28px;" class=""></iframe></span></div>
                                                    </div>
                                                    <div id="section-fbcomment" class="fb-comments-wrapper">
                                                        <div class="fb-comments fb_iframe_widget fb_iframe_widget_fluid_desktop" data-href="https://anhhoabakery.vn/blogs/news/default-handle-6" data-numposts="5" fb-xfbml-state="rendered" fb-iframe-plugin-query="app_id=&amp;container_width=707&amp;height=100&amp;href=https%3A%2F%2Fanhhoabakery.vn%2Fblogs%2Fnews%2Fdefault-handle-6&amp;locale=en_US&amp;numposts=5&amp;sdk=joey&amp;version=v2.10&amp;width=550"><span style="vertical-align: bottom; width: 550px; height: 203px;"><iframe name="f13cf8b5a27be1c" width="550px" height="100px" data-testid="fb:comments Facebook Social Plugin" title="fb:comments Facebook Social Plugin" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="https://www.facebook.com/v2.10/plugins/comments.php?app_id=&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fx%2Fconnect%2Fxd_arbiter%2F%3Fversion%3D46%23cb%3Df2bc1013c40a9d8%26domain%3Danhhoabakery.vn%26origin%3Dhttps%253A%252F%252Fanhhoabakery.vn%252Ff30d5e9040ded74%26relation%3Dparent.parent&amp;container_width=707&amp;height=100&amp;href=https%3A%2F%2Fanhhoabakery.vn%2Fblogs%2Fnews%2Fdefault-handle-6&amp;locale=en_US&amp;numposts=5&amp;sdk=joey&amp;version=v2.10&amp;width=550" style="border: none; visibility: visible; width: 550px; height: 203px;" class=""></iframe></span></div>
                                                    </div>

                                                    <div class="related-articles">
                                                        <div class="related-articles-head">
                                                            <h3>
                                                                Các bài viết liên quan
                                                            </h3>
                                                        </div>
                                                        <div class="related-articles-body">
                                                            <ul class="no-bullets">
                                                                <li>
                                                                    <a href="/getPostDetail?id=1">BÁNH KEM TƯƠI TẠI ANH HÒA BAKERY CÓ GÌ ĐẶC BIỆT ?</a>
                                                                </li>
                                                                <li>
                                                                    <a href="/getPostDetail?id=1">𝐘́ 𝐧𝐠𝐡𝐢̃𝐚 đ𝐚̣̆𝐜 𝐛𝐢𝐞̣̂𝐭 𝐜𝐮̉𝐚 𝐦𝐨̂̃𝐢 𝐜𝐡𝐢𝐞̂́𝐜 𝐛𝐚́𝐧𝐡 𝐆𝐚𝐭𝐨 - 𝐁𝐚̣𝐧 𝐜𝐨́ 𝐛𝐢𝐞̂́𝐭 ?</a>
                                                                </li>
                                                                <li>
                                                                    <a href="/getPostDetail?id=1">5 LOẠI BÁNH SINH NHẬT NGON NHẤT PHẢI NGHI NHỚ NGAY LẬP TỨC</a>
                                                                </li>
                                                                <li>
                                                                    <a href="/getPostDetail?id=1">Gateaux Mousse - Mang cả thế giới trong miệng bạn</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </article>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>

                        </main>
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
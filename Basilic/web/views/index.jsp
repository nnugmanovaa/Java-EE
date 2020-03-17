
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/style/basketStyle.css">
    <%@include file="link.jsp"%>
</head>
<body>
    <%@include file="navbar.jsp"%>
    <section class="main__news">
        <div class="container">
            <div class="spring_menu">
                <img src="/img/bez-imeni-1.jpg" alt="">
            </div>
            <div class="active__menu"><a href="/?page=menu" style="text-decoration: none">Menu</a></div>
            <section class='gallery'>
                <div class='gallery-row'>
                    <figure class='img-container'><img src="https://ala.basilic.kz/wp-content/uploads/2019/02/113.jpg" alt=""></figure>
                    <figure class='img-container'><img src="https://ala.basilic.kz/wp-content/uploads/2019/11/shokoladnoe-nastroenie-min.jpg" alt=""></figure>
                    <figure class='img-container'><img src="https://ala.basilic.kz/wp-content/uploads/2019/07/Arbuznyj-fresh-min.jpg" alt=""width="200px" height="100px"></figure>
                </div>
                <div class="gallery-row">

                    <figure class='img-container'><img src="https://ala.basilic.kz/wp-content/uploads/2019/03/adriatika-min-1000x750.jpg" alt=""></figure>
                    <figure class='img-container'><img src="https://ala.basilic.kz/wp-content/uploads/2019/01/maxresdefault.jpg" alt=""></figure>
                    <figure class='img-container'><img src="https://ala.basilic.kz/wp-content/uploads/2019/01/klab-sendvich-1-kopiya-1000x750.jpg" alt=""></figure>
                </div>
            </section>
            <div class="main_name">
                <h1>News</h1>
            </div>
            <div class="main__news__inner">
                <div class="news__card">
                    <div class="news__image"><img src="/img/heart.jpeg"></div>
                    <h3>Holidays</h3>
                    <p>Lorem Ipsum is slechts een proeftekst uit het drukkerij- en zetterijwezen. Lorem stand</p>
                </div>
                <div class="news__card">
                    <div class="news__image"><img src="/img/kawa.jpeg" alt=""></div>
                    <h3>Clean Code</h3>
                    <p>Lorem Ipsum is slechts een proeftekst uit het drukkerij- en zetterijwezen. Lorem stand</p>
                </div>
                <div class="news__card">
                    <div class="news__image"><img src="/img/parkovka-besplatno.png" alt=""></div>
                    <h3>Parks</h3>
                    <p>Lorem Ipsum is slechts een proeftekst uit het drukkerij- en zetterijwezen. Lorem stand</p>
                </div>
            </div>
        </div>
    </section>
</body>
</html>

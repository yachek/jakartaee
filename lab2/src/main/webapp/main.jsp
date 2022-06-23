<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KPI ShopBest</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@400;700&family=Playfair+Display&display=swap" rel="stylesheet">
    <style>
        *, *::before, *::after {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: 'Noto Sans', sans-serif;
        }

        .container {
            max-width: 1200px;
          padding-left: 15px;
          padding-right: 15px;
            margin: 0 auto;
        }

        .none {
        display: none;
        }

        /* Section*/

        .section-button-wrapper {
            text-align: center;
        }

        /* Featured products*/

        .section-new {
            padding-top: 60px;
            padding-bottom: 70px;
        }
        .section-featured {
            padding-top: 70px;
            padding-bottom: 70px; 
        }
        .section-blog {
            padding-top: 70px;
            padding-bottom: 45px;
        }
        .section-subscribe {
            padding-top: 45px;
            padding-bottom: 100px;
        }
        .button {
            display: inline-block;
            padding: 11px 33px 14px;
            background-color: #f72464;
            box-shadow: 0px 4px 15px rgba(123, 12, 46, 0.35);
            border-radius: 4px ;

            font-family: 'Playfair Display', serif;
            font-style: normal;
            font-weight: normal;
            font-size: 26px;
            line-height: 1;
            text-align: center;
            text-decoration: none;
            color: #FFFFFF;
            transition: box-shadow 0.2s ease-in, background-color 0.2s ease-in;
        }

        .button:hover {
            box-shadow: 0px 4px 25px rgba(184, 13, 64, 0.671);
            background-color: #ff3874 ;
        }

        /* Section outline*/

        .button-outline {
            display: inline-block;
            padding: 10px 40px 11px;
            background: #FFFFFF;
            border: 1px solid #F72464;
            border-radius: 4px;

            font-family: 'Playfair Display', serif;
            font-style: normal;
            font-weight: normal;
            font-size: 16px;
            line-height: 1px;
            text-align: center;
            text-transform: uppercase;
            text-decoration: none;
            color: #777777;
            transition: background-color 0.2s ease-in, color 0.2s ease-in ;
        }
        .button-outline:hover { 
            background-color:#F72464 ;
            color: #fff;
        }
        .footer {
            padding: 30px 0;
            color: #fff;
            background-color: black;
        }
        .footer a {
            color: #fff;
        }

        .footer__column {
            display: flex;
            flex-direction: column;
            align-items: center ;
        }
        .footer__nav {
           margin-bottom: 25px;
            font-size: 14px;
            line-height: 19px;
            text-transform: uppercase;
            color: #FFFFFF;

        }
        .footer__nav a {
            text-decoration: none;
            transition: opacity 0.2s ease-in;
        }
        .footer__nav a:hover {
            opacity: 0.8;
        }
        .footer__nav > a + a {
            margin-left: 30px;
        }
        .footer__socials {
           margin-bottom: 25px;
           display: flex;
           align-items: center;
        }
        .footer__socials-link {
            text-decoration: none;
        }

        .footer__socials-link + .footer__socials-link {
            margin-left: 31px;
        }
        .footer__socials-icon:hover path {
            fill: #f72464;
        }
        .footer__socials-icon path {
            transition: fill 0.2s ease-in;
        }
        .footer__copyright {
            font-size: 14px;
            text-align: center;
            color: #999999;

        }
        .footer__copyright p {
            margin: 0;
        }
        /*Header*/

        .header__row {
            position: relative;
            display: flex;
            justify-content: flex-end;
        }
        .header__content {
            position: absolute;
            left: 0;
            top: 50%;
            transform: translateY(-50%);
            width: 670px;
        }
        .header__title {
            margin: 0;
            margin-bottom: 20px;
            font-family: 'Playfair Display', serif;
            font-style: normal;
            font-weight: normal;
            font-size: 72px;
            line-height: 96px;
        }
        .header__text {
            margin-bottom: 60px;
            font-size: 22px;
            line-height: 1.5;
        }
        .info-section {
            padding: 68px 0;
            position: relative;
            background: url('./../../img/info-blocks/bg1.jpg.jpg');
            background-size: cover;
            background-position: center;

        }
        .info-section::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgb(0 0 0 / 0.75);
        }

        .info-section__row {
            z-index: 1;
            position: relative;
            display: flex;
            justify-content: space-between;
        }
        .info-section__title {
        margin: 0;
        font-family: 'Playfair Display', serif;
        font-style: normal;
        font-weight: normal;
        font-size: 52px;
        line-height: 1;
        color: #FFFFFF;
        }

        /* Navigation*/
        .nav {
            padding: 40px 0;
        }

        .nav__row {
            display: flex;
            justify-content: flex-start;
            align-items: center;
        }
        .nav__logo, a.nav__logo {
            margin-right: 83px;
            text-decoration: none;
            font-family: 'Noto Sans', sans-serif;
            font-style: normal;
            font-weight: normal;
            font-size: 28px;
            line-height: 38px;
            color: #000000;
        }

        a.nav__logo:hover {
            color: #f72464;
        }

        .nav__list {
            display: flex;
            margin: 0;
            padding: 0;
            list-style-type: none;
        }

        .nav__item {
            margin-right: 30px;
            font-size: 18px;
        }

        .nav__item:last-child() {
            margin-right: 0;
        }

        .nav__link {
            text-decoration: none;
            color: #000000;
        }
        .nav__link:hover {
            color: #f72464;
        }
    
        .nav__cart {
            margin-left: auto;
        }

        .nav__cart-link {
            position: relative;
            top: 5px;
            display: inline-block;
            padding: 5px;
        }

        .nav__cart-number {
            position: absolute;
            top: -5px;
            right: -5px;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            color: #fff;
            font-weight: bold;
            font-size: 12px;
            line-height: 20px;
            background: #F72464;
            text-align: center;

        }
        .post-wrapper {
            margin-bottom: 75px;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            row-gap: 40px;
        }
        .post {
            max-width: 570px;
            display: flex;
            justify-content: space-between;
            flex-grow: 1;
            }

        .post__content {
            max-width: 370px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .post__title {
            margin: 0;
            margin-bottom: 10px;
            font-family: 'Playfair Display', serif;
            font-style: normal;
            font-weight: normal;
            font-size: 20px;
            color: #000000;
        }
        .post__text {
            margin: 0 0 10px;
            font-family: 'Noto Sans', sans-serif;
            font-style: normal;
            font-weight: normal;
            font-size: 14px;
            line-height: 1.3;
            color: #777777;

        }
        .post__reade-more {
            font-family: 'Playfair Display', serif;
            font-style: normal;
            font-weight: normal;
            font-size: 16px;
            color: #000000;
            text-decoration: none;
            }

        .post__reade-more::after {
            content: "" ;
            display: inline-block;
            margin-left: 2px;
            width: 24px;
            height: 24px;
            vertical-align: text-top;

            /*background-color: aquamarine;*/
            background-image: url(./../../icons/Shape.svg);
            background-position: center;
            background-size: auto;
            background-repeat: no-repeat;
            transition: margin 0.2s ease-in;
        }

        .post__reade-more:hover {
            text-decoration: underline;

        }
        .post__reade-more::after:hover {
            margin-left: 10px;
        }
        /* Product */
        .products-wrapper {
            margin-bottom: 40px;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            row-gap: 40px;
        }
        .product-link {
            display: inline-block;
            text-decoration: none;
            transition: opacity 0.2s ease-in;
            width: 250px;
            height: 300px;
        }
        .product-link:hover {
            opacity: 0.8;
        }

        .product {
            text-align: center;
            max-width: 270px;
            width: 250px;
            height: 300px;
        }
        .product__img {
            display: block;
            margin-bottom: 12px;
            width: 250px;
            height: 250px;
        }
        .product__title {
            margin: 0;
            margin-bottom: 12px;
            font-family: 'Playfair Display', serif;
            font-style: normal;
            font-weight: normal;
            font-size: 20px;
            line-height: 27px;
            color: #000000;
        }

        .product__price {
            font-size: 14px;
            line-height: 19px;
            text-transform: uppercase;
        }
        .product__price-old {
            margin-right: 10px;
            color: #999999;
        }
        .product__price-new {
            font-weight: bold;
            color: #F72464;
        }
        /* Section Header */

        .section-header {
            margin-bottom: 40px;
            }
        .section-header__title {
            margin: 0;
            margin-bottom: 10px;
            font-family: 'Playfair Display', serif;
            font-style: normal;
            font-weight: normal;
            font-size: 42px;
            line-height: 56px;
            text-align: center;
            color: #000000;
        }
        .section-header__description {
            margin: 0 auto;
            max-width: 630px;
            font-style: normal;
            font-weight: normal;
            font-size: 14px;
            text-align: center;
           /* text-transform: uppercase;*/
            color: #999999;
        }

        .section-header__description--uppercase {
            text-transform: uppercase;
        }
        .section-header__description--16px {
           font-size: 16px;
        }

        .section-header__description p {
            margin-top: 0;
        }
        .subscribe-form {
            display: flex;
            justify-content: center;

        }
        .subscribe-form > * + * {
            margin-left: 10px;
        }
        .subscribe-form__input {
            padding-left: 10px;
            padding-right: 10px;
            height: 42px;
            width: 230px;
            background: #FFFFFF;
            border: 1px solid #F72464;
            border-radius: 4px;

            font-family: 'Noto Sans', sans-serif;
            font-style: normal;
            font-weight: normal;
            font-size: 16px;
            line-height: 1;
            color: #999999;
        }
        .subscribe-form__button {
            display: inline-block;
            padding: 13px 30px;
            background:#F72464;
            border-radius: 4px;
            border: none;

           font-family:'Noto Sans', sans-serif;
            font-style: normal;
            font-weight: normal;
            font-size: 16px;
            line-height:  1px;
            color: #FFFFFF;

            cursor: pointer;
            transition: box-shadow 0.2s ease-in, background-color 0.2s ease-in;
        }
        .subscribe-form__button:hover {
            box-shadow: 0px 2px 15px rgba(184, 13, 64, 0.671);
            background-color: #ff3874;
        }
    </style>
</head>
<body>
  <nav class="nav">
      <div class="container">
          <!--nav__row-->
          <div class="nav__row">

             <a href="/lab2" class="nav__logo">
                KPI ShopBest!
             </a>

                 <ul class="nav__list">
                     <li class="nav__item">
                         <a href="/lab2/categories" class="nav__link">Categories</a>
                     </li>
                     <li class="nav__item">
                        <a href="/lab2/goods" class="nav__link">Goods</a>
                    </li>
                    <li class="nav__item">
                        <a href="/lab2/login" class="nav__link">Login</a>
                    </li>                         
                 </ul>


                    <div class="menu-icon-wrappeer">
                        <div class="menu-icon"></div>
                    </div>

                    
            </div>
            <!--nav__row-->
          </div>
  </nav>
    <header class="header">
          <div class="container">
              <div class="header__row">
                  <div class="header__content">
                      <h1 class="header__title">KPI Tech</h1>
                      <div class="header__text">
                          <p>Our technique is the best! </p>
                      </div>
                      <c:if test="${page == 'main'}">
                        <div class="header__btn">
                            <a href="/lab2/goods" class="button">Shop now</a>
                         </div>
                      </c:if>
                  </div>
                  <div class="header__photo">
                      <img src="https://www.ferra.ru/thumb/660x0/filters:quality(75)/imgs/2018/11/24/04/2462780/2eae959dcfb16252e5788e2744179db747eda6c6.jpg" alt="Header photo">
                  </div>
              </div>
      </div>
    </header>
     <main>

        <section class="section-new">
            <div class="container">
                <div class="section-header">
                    <c:choose>
                        <c:when test="${page == 'main'}">
                            <h2 class="section-header__title">New Products</h2>
                        </c:when >
                        <c:when test="${page == 'categories'}">
                            <h2 class="section-header__title">Categories</h2>
                        </c:when>
                        <c:when test="${param.categorie != null}">
                            <h2 class="section-header__title"><c:out value="${param.categorie}"/></h2>
                        </c:when>
                        <c:otherwise>
                            <h2 class="section-header__title">Goods</h2>
                        </c:otherwise>
                    </c:choose>
                    
                </div>
                <!--products wrapper-->
                <div class="products-wrapper">
                    <c:choose>
                        <c:when test="${page.equals('categories')}">
                            <c:forEach var = "categorie" items = "${categories}">
                                <a href="/lab2/categories?categorie=${categorie.name}" class="product-link">
                                    <div class="product">
                                        <img src="${categorie.imageURL}" alt="Product photo" class="product__img">
                                        <h4 class="product__title"><c:out value="${categorie.name}"/></h4>
                                    </div>
                                </a>
                            </c:forEach>
                        </c:when>
                        <c:when test="${page.equals('goods') || page.equals('main')}">
                            <c:forEach var="good" items="${goods}">
                                <a href="#" class="product-link">
                                    <div class="product">
                                        <img src="${good.imageURL}" alt="Product photo" class="product__img">
                                        <h4 class="product__title"><c:out value="${good.name}"/></h4>
                                        <h4 class="product__title"><c:out value="${good.categorie}"/></h4>
                                        <div class="product__price">
                                            <span class="product__price-old">₴<c:out value="${good.cost}"/></span>
                                            <span class="product__price-new">₴<c:out value="${good.newCost}"/></span>
                                        </div>
                                    </div>
                                </a>
                            </c:forEach>
                        </c:when>
                    </c:choose>

                    <!--//product-->
                </div>
            </div>
        </section>

     </main>
     <footer class="footer">
         <div class="container">
        <div class="footer__column">
             <nav class="footer__nav">
                <a href="#">Your account</a>
                <a href="#">Contact us</a>
                <a href="#">Terms of use</a>               
             </nav>
             <div class="footer__socials">
                <a href="#" class="footer__socials-link">
                    <svg class="footer__socials-icon" width="16" height="30" viewBox="0 0 16 30" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M10.1124 29.9999V16.3154H14.7057L15.3934 10.9824H10.1124V7.57736C10.1124 6.03335 10.5412 4.98102 12.7555 4.98102L15.5796 4.97972V0.209915C15.0909 0.145158 13.4146 0 11.4644 0C7.39277 0 4.60522 2.48522 4.60522 7.04946V10.9825H0V16.3156H4.60507V30L10.1124 29.9999Z" fill="white"/>
                        </svg>
                </a>
                <a href="#" class="footer__socials-link">
                    <svg  class="footer__socials-icon" width="29" height="24" viewBox="0 0 29 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M25.7625 5.8125C25.7625 6.075 25.7625 6.3375 25.7625 6.5625C25.7625 14.325 19.8375 23.2875 9.0375 23.2875C5.7 23.2875 2.625 22.3125 0 20.6625C0.45 20.7 0.9375 20.7375 1.3875 20.7375C4.125 20.7375 6.675 19.8 8.7 18.225C6.1125 18.1875 3.9375 16.4625 3.225 14.1375C3.6 14.2125 3.9375 14.25 4.35 14.25C4.875 14.25 5.4 14.175 5.8875 14.025C3.1875 13.5 1.1625 11.1375 1.1625 8.2875C1.1625 8.25 1.1625 8.25 1.1625 8.2125C1.95 8.6625 2.85 8.925 3.825 8.9625C2.25 7.9125 1.2 6.1125 1.2 4.05C1.2 2.9625 1.5 1.95 1.9875 1.0875C4.875 4.65 9.225 6.975 14.1 7.2375C13.9875 6.825 13.95 6.3375 13.95 5.8875C13.95 2.625 16.575 0 19.8375 0C21.525 0 23.0625 0.7125 24.1125 1.8375C25.4625 1.575 26.7 1.0875 27.8625 0.4125C27.4125 1.8 26.475 2.925 25.275 3.675C26.475 3.525 27.6 3.225 28.65 2.7375C27.9 3.9375 26.925 4.9875 25.7625 5.8125Z" fill="white"/>
                        </svg>
                        </a>
                        <a href="#" class="footer__socials-link">
                    <svg class="footer__socials-icon" width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M10.0008 15C10.0008 12.2387 12.2387 9.9996 15 9.9996C17.7613 9.9996 20.0004 12.2387 20.0004 15C20.0004 17.7613 17.7613 20.0004 15 20.0004C12.2387 20.0004 10.0008 17.7613 10.0008 15ZM7.29768 15C7.29768 19.254 10.746 22.7023 15 22.7023C19.254 22.7023 22.7023 19.254 22.7023 15C22.7023 10.746 19.254 7.29768 15 7.29768C10.746 7.29768 7.29768 10.746 7.29768 15ZM21.2072 6.99228C21.2071 7.34829 21.3125 7.69634 21.5102 7.99243C21.7079 8.28852 21.9889 8.51934 22.3177 8.65571C22.6466 8.79208 23.0085 8.82787 23.3577 8.75855C23.7069 8.68924 24.0277 8.51793 24.2795 8.2663C24.5314 8.01467 24.7029 7.69401 24.7725 7.34487C24.8421 6.99573 24.8066 6.6338 24.6705 6.30483C24.5344 5.97587 24.3038 5.69466 24.0079 5.49675C23.7119 5.29885 23.364 5.19314 23.008 5.193H23.0072C22.53 5.19322 22.0724 5.38284 21.7349 5.7202C21.3974 6.05756 21.2077 6.51508 21.2072 6.99228ZM8.94 27.2096C7.47756 27.143 6.68268 26.8994 6.15444 26.6936C5.45412 26.421 4.95444 26.0963 4.42908 25.5716C3.90372 25.047 3.57852 24.5478 3.30708 23.8475C3.10116 23.3195 2.85756 22.5244 2.79108 21.0619C2.71836 19.4808 2.70384 19.0058 2.70384 15.0001C2.70384 10.9944 2.71956 10.5208 2.79108 8.93832C2.85768 7.47588 3.10308 6.68232 3.30708 6.15276C3.57972 5.45244 3.90444 4.95276 4.42908 4.4274C4.95372 3.90204 5.45292 3.57684 6.15444 3.3054C6.68244 3.09948 7.47756 2.85588 8.94 2.7894C10.5211 2.71668 10.9961 2.70216 15 2.70216C19.0039 2.70216 19.4794 2.71788 21.0618 2.7894C22.5242 2.856 23.3178 3.1014 23.8474 3.3054C24.5477 3.57684 25.0474 3.90276 25.5727 4.4274C26.0981 4.95204 26.4221 5.45244 26.6947 6.15276C26.9006 6.68076 27.1442 7.47588 27.2107 8.93832C27.2834 10.5208 27.298 10.9944 27.298 15.0001C27.298 19.0058 27.2834 19.4795 27.2107 21.0619C27.1441 22.5244 26.8993 23.3192 26.6947 23.8475C26.4221 24.5478 26.0974 25.0475 25.5727 25.5716C25.0481 26.0958 24.5477 26.421 23.8474 26.6936C23.3194 26.8996 22.5242 27.1432 21.0618 27.2096C19.4807 27.2824 19.0057 27.2969 15 27.2969C10.9943 27.2969 10.5206 27.2824 8.94 27.2096ZM8.8158 0.09084C7.21896 0.16356 6.1278 0.41676 5.17488 0.78756C4.188 1.17048 3.35256 1.6842 2.51772 2.51772C1.68288 3.35124 1.17048 4.188 0.78756 5.17488C0.41676 6.1284 0.16356 7.21896 0.09084 8.8158C0.01692 10.4152 0 10.9265 0 15C0 19.0735 0.01692 19.5848 0.09084 21.1842C0.16356 22.7812 0.41676 23.8716 0.78756 24.8251C1.17048 25.8114 1.683 26.6491 2.51772 27.4823C3.35244 28.3154 4.188 28.8284 5.17488 29.2124C6.1296 29.5832 7.21896 29.8364 8.8158 29.9092C10.416 29.9819 10.9265 30 15 30C19.0735 30 19.5848 29.9831 21.1842 29.9092C22.7812 29.8364 23.8716 29.5832 24.8251 29.2124C25.8114 28.8284 26.6474 28.3158 27.4823 27.4823C28.3171 26.6488 28.8284 25.8114 29.2124 24.8251C29.5832 23.8716 29.8376 22.781 29.9092 21.1842C29.9819 19.5836 29.9988 19.0735 29.9988 15C29.9988 10.9265 29.9819 10.4152 29.9092 8.8158C29.8364 7.21884 29.5832 6.1278 29.2124 5.17488C28.8284 4.1886 28.3158 3.35256 27.4823 2.51772C26.6488 1.68288 25.8114 1.17048 24.8263 0.78756C23.8716 0.41676 22.781 0.16236 21.1854 0.09084C19.586 0.01812 19.0747 0 15.0012 0C10.9277 0 10.416 0.01692 8.8158 0.09084Z" fill="white"/>
                             </svg>
                         </a>
            </div>
             </div>
            </div>
     </footer>

</body>
</html>
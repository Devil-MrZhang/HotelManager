<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <title>食品订单信息</title>
     <link rel="stylesheet" type="text/css" href="css/rest.css" />
    <link rel="stylesheet" type="text/css" href="css/base.css" />
    <link rel="stylesheet" type="text/css" href="css/shopping-cart_two.css" />
</head>
<body style="background:#fafafa;">
<!-- header -->
<div id="header">
    <div class="container">
        <a href="index.html">
            <div class="m-logo">
                <img src="images/logo.png" alt="" />
            </div>
        </a>
        <div class="bigBox00"></div>
        <div class="wapBtn">
            <span class="one"></span>
            <span class="two"></span>
            <span class="three"></span>
        </div>
         <ul class="nav">
            <div class="navTop"></div>
           <a href="index.html">
            <div class="m-logo">
                <img src="images/logo.png" alt="" />
            </div>
        </a>
        <div class="bigBox00"></div>
        <div class="wapBtn">
            <span class="one"></span>
            <span class="two"></span>
            <span class="three"></span>
        </div>
        <ul class="nav">
            <div class="navTop"></div>
            <a href="index.jsp">
                <li><span>首页</span><em>首页</em></li>
            </a>
            <a href="food">
                <li class="on"><span>订餐</span><em>订餐</em></li>
            </a>
            <a href="room">
                <li><span>酒店预订</span><em>酒店预订</em></li>
            </a>
            <a href="index.jsp">
                <li class="logo">
                    <img src="images/logo.png" alt="" />
                </li>
            </a>
            <a href="hotel-culture.jsp">
                <li><span>酒店文化</span><em>酒店文化</em></li>
            </a>
            <a href="contact.jsp">
                <li><span>联系我们</span><em>联系我们</em></li>
            </a>
            <div class="login">
                <a href="login.jsp" class="login-c">
                </a>
                <a href="food" class="shoppin">
                </a>
            </div>
        </ul>
    </div>
</div>
<div class="kong"></div>
<!-- header over-->
<div class="cart">
    <div class="container">
        <div class="search_parent">
            <h2>食品订单信息</h2>
            <div class="search"><input type="text" /><img src="images/search01.png" alt="" /></div>
        </div>
        <div class="shopping-nav">
            <div class="child on">1.我的购物车</div>
            <div class="child on">2.填写订单信息</div>
            <div class="child nor">3.提交订单</div>
        </div>
        <c:forEach items="${foodCart}" var="foodCart">
        <div class="product">
            <ul>
                <li>
                    <div class="imgs">
                        <img src="images/shopping/imgs01.png" alt="" />
                    </div>
                    <div class="infos">
                        <h6>${foodCart.key.name}</h6>
                        <p>
                            <span>价格：￥<em>${foodCart.key.price} </em> </span>
                            <span>数量：<i>${foodCart.value}</i></span>
                        </p>
                    </div>
                </li>
            </ul>
        </div> 
         <c:set var="sum" value="${sum+foodCart.value*foodCart.key.price }"></c:set>
        </c:forEach>
       
        <div class="recharge">
            <div class="choice red">
                <span></span>
                <div class="choice-r">
                    <div class="child">
                        <img src="images/reservation/cz01.jpg" alt="" />
                    </div>                    
                    <div class="child">
                        <img src="images/reservation/cz02.jpg" alt="" />
                    </div>
                    <p>无手续费</p>
                </div>
            </div>                
            <div class="choice">
                <span></span>
                <div class="choice-r">
                    <div class="child">
                        <img src="images/reservation/cz03.jpg" alt="" />
                    </div>                    
                    <div class="child">
                        <img src="images/reservation/cz04.jpg" alt="" />
                    </div>                    
                    <div class="child">
                        <img src="images/reservation/cz03.jpg" alt="" />
                    </div>                    
                    <div class="child">
                        <img src="images/reservation/cz04.jpg" alt="" />
                    </div>                    
                    <div class="child">
                        <img src="images/reservation/cz03.jpg" alt="" />
                    </div>                    
                    <div class="child">
                        <img src="images/reservation/cz04.jpg" alt="" />
                    </div>
                </div>
            </div>
        </div>
        <div class="jiesuan">
            <p>合计：<span>${sum }元</span></p>
            <a href="shopping-cart_three.jsp"><button>提交订单</button></a>
        </div>
    </div>
</div>
</body>
<script src="js/jquery.js"></script>
<script src="js/base.js"></script>

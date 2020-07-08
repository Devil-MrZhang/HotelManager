<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <title>毕氏--酒店预订</title>
    <link rel="stylesheet" type="text/css" href="css/rest.css" />
    <link rel="stylesheet" type="text/css" href="css/base.css" />
    <link rel="stylesheet" type="text/css" href="css/lq.datetimepick.css"/>
    <link rel="stylesheet" type="text/css" href="css/hotel-reservation.css" />
    <style type="text/css">
    	.bg{
    		
    		margin: 0px auto;
    	}
    </style>
</head>
<body style="background:#fafafa url(images/index/h.png) no-repeat 90%  80%;">
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
                <li><span>HOTEL</span><em>首页</em></li>
            </a>
            <a href="goods-online.html">
                <li><span>GOODS ONLINE</span><em>精品在线</em></li>
            </a>
            <a href="hotel-environment.html">
                <li class="on"><span>HOTEL ENVIRONMENT</span><em>酒店环境</em></li>
            </a>
            <a href="index.html">
                <li class="logo">
                    <img src="images/logo.png" alt="" />
                </li>
            </a>
            <a href="hotel-culture.html">
                <li><span>HOTEL CULTURE</span><em>酒店文化</em></li>
            </a>
            <a href="contact.html">
                <li><span>CONTACT US</span><em>联系我们</em></li>
            </a>
            <div class="login">
                <a href="login.html" class="login-c">
                </a>
                <a href="shopping-cart.html" class="shoppin">
                </a>
            </div>
        </ul>
    </div>
</div>
<div class="kong"></div>
<!-- header over-->
<!-- banner -->
<div class="banner" style="background-image:url(images/environment/banner.jpg);">
</div>
<!-- banner over -->

<!-- reservation -->
<div class="reservation">
    <div class="container">
        <div class="search_parent">
<h2>Hotel reservation</h2></div></div></div>
       <table class="bg"  border="1">
        	<tr>
        		<td>食品名称</td>
        		<td>食品类型</td>
        		<td>食品价格</td>
        		<td>食品描述</td>
        		<td>食品图片</td>
        		<td>&nbsp;</td>
        	</tr>
        	<c:forEach items="${food}" var="f">
        		<tr>
        			<td>${f.name}</td>
        			<td>${f.type}</td>
        			<td>${f.price}</td>
        			<td>${f.describe}</td>
        			<td>${f.img_url}</td>
        			<td>加入购物车</td>
        		</tr>
        	</c:forEach>
      
        </table>   
<script src="js/jquery.js"></script>
<script src="js/base.js"></script>
<script src="js/reserve.js"></script>
<script src='js/selectUi.js'></script>
<script src='js/lq.datetimepick.js'></script>
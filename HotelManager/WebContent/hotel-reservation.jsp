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
<div class="reserve">
    <div class="container">
        <div class="info">
            <div class="box">
                <div class="area">
                    <input type="text" placeholder="酒店位置"/>
                    <img src="images/index/area.png" class="icon" alt="" />
                    <div class="area_cont">
                        <p>天河区</p>
                        <p>白云区</p>
                        <p>越秀区</p>
                    </div>
                </div>
                <div class="child">
                    <div class="form-group float-left w140">
                    <input type="text" name="datepicker" id="datetimepicker3" class="form-control" value="" placeholder="入住时间"/>
                    </div>
              </div>
                <div class="child">
                    <div class="form-group float-left w140">
                    <input type="text" name="datepicker" id="datetimepicker4" class="form-control" value="" placeholder="退房时间"/>
                    </div>
                </div>
                <dl class="child">
                    <dt>1人客房<span></span></dt>

                    <div class="person">
                        <dd>2人客房</dd>
                        <dd>3人客房</dd>
                        <dd>4人客房</dd>
                        <dd>5人客房</dd>
                        <dd>6人客房</dd>
                    </div>  
                </dl>
                <div class="child btn">搜索</div>
            </div>
        </div>
    </div>
</div>
<!-- reservation -->
<div class="reservation">
    <div class="container">
        <div class="search_parent">
            <h2>酒店预订</h2>
           
        </div>
        <ul>
            <a href="goods-online-detail.html">
                <li>
                    <div class="imgs">
                        <img src="images/reservation/1.jpg" alt="" />
                    </div>
                    <div class="info">
                        <div class="name">
                            <h5>室内空间</h5>
                            <p>
                                <span>艺术套间｜</span>
                                <span>1居｜</span>
                                <span>宜居4人</span>
                            </p>
                        </div>
                        <div class="money">
                            ¥<em>348</em>/晚
                        </div>
                    </div>
                </li>
            </a>
        </ul>
    </div>
</div>
<!-- reservation over -->

<script src="js/jquery.js"></script>
<script src="js/base.js"></script>
<script src="js/reserve.js"></script>
<script src='js/selectUi.js'></script>
<script src='js/lq.datetimepick.js'></script>
<script type="text/javascript">
$(function (){
    $(".reservation ul li").each(function(i,n){
        var dtime=i*0.4;
        
        base.anClasAdd($(n),"scaleIn",".6s",dtime+"s","ease-in-out","both");
    }); 
    $("#datetimepicker3").on("click",function(e){
        e.stopPropagation();
        $(this).lqdatetimepicker({
            css : 'datetime-day',
            dateType : 'D',
            selectback : function(){

            }
        });

    });    
    $("#datetimepicker4").on("click",function(e){
        e.stopPropagation();
        $(this).lqdatetimepicker({
            css : 'datetime-day',
            dateType : 'D',
            selectback : function(){

            }
        });

    });
});
</script>
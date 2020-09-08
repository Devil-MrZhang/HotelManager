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
    <link rel="stylesheet" type="text/css" href="css/hotel-reservation-detali01.css" />
</head>
<body style="background:#fafafa;">
<!-- header -->
<div id="header">
    <div class="container">
        <a href="index.jsp">
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
                <li><span>订餐</span><em>订餐</em></li>
            </a>
            <a href="room">
                <li class="on"><span>酒店预订</span><em>酒店预订</em></li>
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
<!-- reservation -->
<div class="reservation">
    <div class="container">
        <div class="search_parent">
            <h2>酒店预订</h2>
        </div>
        <div class="content">
            <div class="top">
                <div class="imgs">
                   <c:if test="${room.type=='1'}"><img src="images/reservation/1.jpg" alt="" /></c:if>
                   <c:if test="${room.type=='2'}"><img src="images/reservation/2.jpg" alt="" /></c:if>
                   <c:if test="${room.type=='3'}"><img src="images/reservation/3.jpg" alt="" /></c:if>
                   <c:if test="${room.type=='4'}"><img src="images/reservation/4.jpg" alt="" /></c:if>
                </div>
                <div class="infos">
                    <div class="info">
                        <h6>毕氏集装箱酒店（<c:if test="${room.type=='1'}">豪华套房&nbsp;</c:if>
                    <c:if test="${room.type=='2'}">标准间&nbsp;</c:if>
                    <c:if test="${room.type=='3'}">双人间&nbsp;</c:if>
                    <c:if test="${room.type=='4'}">三人间&nbsp;</c:if>）</h6>
                        <p>
                            <span><c:if test="${room.type=='1'}">豪华套房&nbsp;</c:if>
                    <c:if test="${room.type=='2'}">标准间&nbsp;</c:if>
                    <c:if test="${room.type=='3'}">双人间&nbsp;</c:if>
                    <c:if test="${room.type=='4'}">三人间&nbsp;</c:if></span>
                            <span>|${room.bednumber}居|</span>
                            <span>宜住${room.bednumber}人</span>
                        </p>
                        <p class="jiage">
                            <i>价格</i>
                            <span>¥<em>${room.price}</em>/晚</span>
                        </p>
                        <p class="all">
                            <i>总额</i>
                            <span>¥<em>${room.price}</em></span>
                        </p>
                        <p>入住时间：2017-10-01</p>
                        <p>离店时间：2017-10-06</p>
                        <p>房型：${room.bednumber}人客房</p>
                    </div>
                </div>
            </div>
            <ul class="person">
                <li>
                    <span>联系人：Rose</span>
                    <span>联系电话：1504551859</span>
                </li>
            </ul>
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
                <p>合计：<span>￥${room.price}</span></p>
                <form action="shopping-cart_three.jsp" method="post">
               		<button type="submit">结算</button>
                </form>
                
            </div>
        </div>
    </div>
</div>
<!-- reservation over -->
<!-- footer -->
<div class="footer">
    <div class="container">
        <div class="top">
            <a href="index.jsp" class="f-logo">
                <img src="images/f-logo.png" alt="" />
            </a>
            <dl>
                <dt>ABOUT</dt>
                <a href=""><dd>酒店预订</dd></a>
                <a href=""><dd>Environmental</dd></a>
                <a href=""><dd>Hotel culture</dd></a>
            </dl>
            <dl>
                <dt>INTERIOR SPACE</dt>
                <a href=""><dd>Art&space</dd></a>
                <a href=""><dd>Kids&space</dd></a>
                <a href=""><dd>Smart home</dd></a>
                <a href=""><dd>Restaurant</dd></a>
            </dl>
            <dl>
                <dt>GOODS ONLINE</dt>
                <a href=""><dd>Furniture</dd></a>
                <a href=""><dd>Bed</dd></a>
                <a href=""><dd>Decorations</dd></a>
            </dl>
            <dl class="nor">
                <dt>CONTACT US</dt>
                <a href=""><dd>酒店预订热线Hotel reservation hotline</dd></a>
                <a href="tel:400-8888-8888"><dd class="tel">400-8888-8888</dd></a>
            </dl>
        </div>
        <div class="copy">
            <p>Email  sdfsdfs@sdfsdfsdfsf.com      ADD  sdfasdfsfw8eteigj;sdfkgdfigsng;asdgh;sd<a href="http://www.pidcn.com/" target="_blank">POWERED BY PID INTERRACTIVE</a></p>
        </div>
    </div>
</div>
<!-- footer over -->
<script src="js/jquery.js"></script>
<script src="js/base.js"></script>
<script src="js/reserve.js"></script>
<script src='js/selectUi.js'></script>
<script src='js/lq.datetimepick.js'></script>

<script>
$(function(){
    $('.recharge .choice .choice-r .child').removeClass('on')
    $('.recharge .choice span').click(function(){
        $(this).parent().addClass('red').siblings().removeClass('red');
        if($(this).hasClass('red')){
            $(this).children().children('child').addClass('on').siblings().removeClass('on');
        }else{
            $('.recharge .choice .choice-r .child').removeClass('on');
        }
    });
     $('.recharge .choice .choice-r .child').click(function(){
        if($(this).parents('.choice').hasClass('red')){
            $(this).addClass('on').siblings().removeClass('on');
        }else{
            $('.recharge .choice .choice-r .child').removeClass('on');
        }
        
     });
     function current(el){
        $(el).addClass('current').siblings().removeClass('current')
     };
     $(' .recharge .money ul li').click(function(){
        var s = $(this);
        current(s)
     });
})
</script>
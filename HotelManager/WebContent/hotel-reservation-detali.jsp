<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <title>毕氏--酒店订单</title>
    <link rel="stylesheet" type="text/css" href="css/rest.css" />
    <link rel="stylesheet" type="text/css" href="css/base.css" />
    <link rel="stylesheet" type="text/css" href="css/lq.datetimepick.css"/>
    <link rel="stylesheet" type="text/css" href="css/hotel-reservation-detali.css" />
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
                <li class="on"><span>酒店预定</span><em>酒店预定</em></li>
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
<!-- banner -->
<div class="banner02" style="background-image:url(images/environment/banner.jpg);">
</div>
<!-- banner over -->
<!-- reservation -->
<div class="reservation">
    <div class="container">
        <div class="search_parent">
            <h2>酒店订单</h2>
        </div>
        <div class="head">
                <div class="box">
                    
                    <div class="box_big">
                        <span class="anniu prev">
                            <img src="images/reservation/left.png" alt="" />
                        </span>
                        <span class="anniu next">
                            <img src="images/reservation/right.png" alt="" />
                        </span>
                        <ul class="pic_box">
                            <li>
                              <c:if test="${room.type=='1'}"><img src="images/reservation/1.jpg" alt="" /></c:if>
                              <c:if test="${room.type=='2'}"><img src="images/reservation/2.jpg" alt="" /></c:if>
                              <c:if test="${room.type=='3'}"><img src="images/reservation/3.jpg" alt="" /></c:if>
                              <c:if test="${room.type=='4'}"><img src="images/reservation/4.jpg" alt="" /></c:if>
                              
                            </li>
                            <li>
                              <c:if test="${room.type=='1'}"><img src="images/reservation/1.jpg" alt="" /></c:if>
                              <c:if test="${room.type=='2'}"><img src="images/reservation/2.jpg" alt="" /></c:if>
                              <c:if test="${room.type=='3'}"><img src="images/reservation/3.jpg" alt="" /></c:if>
                              <c:if test="${room.type=='4'}"><img src="images/reservation/4.jpg" alt="" /></c:if>
                              
                            </li>
                            <li>
                               <c:if test="${room.type=='1'}"><img src="images/reservation/1.jpg" alt="" /></c:if>
                              <c:if test="${room.type=='2'}"><img src="images/reservation/2.jpg" alt="" /></c:if>
                              <c:if test="${room.type=='3'}"><img src="images/reservation/3.jpg" alt="" /></c:if>
                              <c:if test="${room.type=='4'}"><img src="images/reservation/4.jpg" alt="" /></c:if>
                                
                            </li>
                              <li>
                              <c:if test="${room.type=='1'}"><img src="images/reservation/1.jpg" alt="" /></c:if>
                              <c:if test="${room.type=='2'}"><img src="images/reservation/2.jpg" alt="" /></c:if>
                              <c:if test="${room.type=='3'}"><img src="images/reservation/3.jpg" alt="" /></c:if>
                              <c:if test="${room.type=='4'}"><img src="images/reservation/4.jpg" alt="" /></c:if>
                              
                              </li>
                              <li>
                             <c:if test="${room.type=='1'}"><img src="images/reservation/1.jpg" alt="" /></c:if>
                              <c:if test="${room.type=='2'}"><img src="images/reservation/2.jpg" alt="" /></c:if>
                              <c:if test="${room.type=='3'}"><img src="images/reservation/3.jpg" alt="" /></c:if>
                              <c:if test="${room.type=='4'}"><img src="images/reservation/4.jpg" alt="" /></c:if>
                              
                            </li>
                            <li>
                              <c:if test="${room.type=='1'}"><img src="images/reservation/1.jpg" alt="" /></c:if>
                              <c:if test="${room.type=='2'}"><img src="images/reservation/2.jpg" alt="" /></c:if>
                              <c:if test="${room.type=='3'}"><img src="images/reservation/3.jpg" alt="" /></c:if>
                              <c:if test="${room.type=='4'}"><img src="images/reservation/4.jpg" alt="" /></c:if>
                            </li>
                            <li>
                                <c:if test="${room.type=='1'}"><img src="images/reservation/1.jpg" alt="" /></c:if>
                              <c:if test="${room.type=='2'}"><img src="images/reservation/2.jpg" alt="" /></c:if>
                              <c:if test="${room.type=='3'}"><img src="images/reservation/3.jpg" alt="" /></c:if>
                              <c:if test="${room.type=='4'}"><img src="images/reservation/4.jpg" alt="" /></c:if>
                            </li>
                        </ul>
                    </div>
                    <div class="box_litle">
                    </div>   
                </div>
            </div> 
        <div class="info">
            <div class="txt">
            
                <h6>毕氏集装箱酒店（<c:if test="${room.type=='1'}">豪华套房&nbsp;</c:if>
                    <c:if test="${room.type=='2'}">标准间&nbsp;</c:if>
                    <c:if test="${room.type=='3'}">双人间&nbsp;</c:if>
                    <c:if test="${room.type=='4'}">三人间&nbsp;</c:if>）</h6>
                    
                <p> <c:if test="${room.type=='1'}">豪华套房&nbsp;</c:if>
                    <c:if test="${room.type=='2'}">标准间&nbsp;</c:if>
                    <c:if test="${room.type=='3'}">双人间&nbsp;</c:if>
                    <c:if test="${room.type=='4'}">三人间&nbsp;</c:if>| ${room.bednumber}床| 宜住${room.bednumber}人</p>
                <p>
                <span>价格</span><em>¥<i>${room.price}</i>/晚</em></p>
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
              
               <form action="roomOrder" method="post">
               		<input type="hidden" id="roomType" name="roomType" value="${room.type}" />
               		<button class="button" type="submit">结算</button>
               </form>
            </div>
        </div>
    </div>
</div>
<!-- reservation over -->
<!-- Introduce -->
<div class="introduce">
    <div class="container">
        <div class="infos">
            <h5>Introduce</h5>
            <p>毕氏集装箱酒店  构建质朴美感的艺屋，有着简单大方之美。多为选用绿色，泥褐色来铺设，映入眼帘的厚实质感的皮质沙发，组合充斥着大气原始风味的仿旧式家具，再加上精品艺术挂画，让你舒适自然，如临乡间。我们为崇尚自由的旅客营造其自在、随意的不羁生活方式，没有太多造作的修饰与约束，不经意中也成就了另外一种休闲式的浪漫。</p>
            <br />
            <br />
            <p>主打的低碳环保建筑理念，内部环境以木质的新中式室内和家具设计为主，宽敞明亮，柔和的色调和原色的木制家具营造出温馨的环境。进口床垫，高等级纯棉精纺用品和布件，确保优质睡眠，为住客提供了一种独特的空间和视觉体验。 </p>
            <br />
            <br />
            <p>房型设施详情：</p>
            <p>高精棉织床上用品、液晶网络电视、免费无线上网、茶具、冰箱、行政办公桌和办公用品、分隔式淋浴间和浴缸可供选择、4种房型满足不同需求。</p>
            <br />
            <br />
            <p>预订说明：</p>
            <p>入住时间：14:00以后   离店时间：12:00以前</p>
            <p>膳食安排：客房含双早，中午晚餐人均消费158元/位，单点茶水38元/位。</p>
            <p>宠物说明：根据客人要求可携带宠物，不收取额外费用。</p>
            <br />
            <br />
            <p>客服电话：<a href="tel:020-8888888">020-8888888</a></p>
            <p>具体地址：广东省广州市天河区州市天河区州市天河区州市天河区<a href="" class="area">查看酒店位置</a></p>
        </div>
        <p class="imgs"><img src="images/reservation/bg.png" alt="" /></p>
    </div>
</div>
    
<!-- Introduce over -->
<!-- footer -->
<div class="footer">
    <div class="container">
        <div class="top">
            <a href="index.jsp" class="f-logo">
                <img src="images/f-logo.png" alt="" />
            </a>
            <dl>
                <dt>ABOUT</dt>
                <a href="room"><dd>酒店预订</dd></a>
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
<script src='js/selectUi.js'></script>
<script src='js/lq.datetimepick.js'></script>
<script src="js/animate.js"></script>
<script type="text/javascript">
$(function (){
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
    $('.reservation .info .txt dt').click(function(event) {
        $(this).siblings().slideToggle()
    });

    $('.reservation .info .txt dd').each(function(index, el) {
        $(this).click(function(event) {
            var h = $(this).html();
            $(this).parent().hide();
            //alert(h)
            $('.reservation .info .txt dt em').html(h)
        });
    });

});
</script>
<script type="text/javascript">
datas({'time':'20000'});//第一个轮播的时间 2000可设置其他数字 1000 = 1秒

</script>

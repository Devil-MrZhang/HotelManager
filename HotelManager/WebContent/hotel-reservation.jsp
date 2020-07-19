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
    
    $("roomType").text(function(){
    	var roomType = document.getElementById("roomType").value;
    	if(roomType==1){
    	    document.getElementById("ctellist").innerHTML = "豪华套房";
    	}
    	if(roomType==2){
        	    document.getElementById("ctellist").innerHTML = "标准大床房";
        	}
    	if(roomType==3){
        	    document.getElementById("ctellist").innerHTML = "标准双人间";
        	}
    	if(roomType==4){
        	    document.getElementById("ctellist").innerHTML = "钟点房";
        	}
    	
    });
});
</script>
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
        <c:forEach items="${room}" var="room">
        <ul>
        	
                <li>
                <div class="imgs">
               
			 <a href="roomCart?roomType=1"><c:if test="${room.type=='1'}">
			 <img src="images/reservation/1.jpg" alt="" /></c:if></a>
             <a href="roomCart?roomType=2"><c:if test="${room.type=='2'}">
			 <img src="images/reservation/2.jpg" alt="" /></c:if></a>
             <a href="roomCart?roomType=3"><c:if test="${room.type=='3'}">
			 <img src="images/reservation/3.jpg" alt="" /></c:if></a>
			  <a href="roomCart?roomType=4"><c:if test="${room.type=='4'}">
			 <img src="images/reservation/4.jpg" alt="" /></c:if></a>
                    </div>
                    <div class="info">
                        <div class="name">
                            <h5>室内空间</h5>
                            <p>
                            	
                                <span>
                                <c:if test="${room.type=='1'}">豪华套房&nbsp;|</c:if>
                                <c:if test="${room.type=='2'}">标准间&nbsp;|</c:if>
                                <c:if test="${room.type=='3'}">双人间&nbsp;|</c:if>
                                 <c:if test="${room.type=='4'}">三人间&nbsp;|</c:if>
                                </span>
                                <span>${room.bednumber}个床位｜</span>
                                <span>宜居${room.bednumber}人</span>
                            </p>
                        </div>
                        <div class="money">
                            ¥<em>${room.price}</em>/晚
                        </div>
                    </div>
                </li>
        </ul>
        </c:forEach>
    </div>
</div>
<!-- reservation over -->

<script src="js/jquery.js"></script>
<script src="js/base.js"></script>
<script src="js/reserve.js"></script>
<script src='js/selectUi.js'></script>
<script src='js/lq.datetimepick.js'></script>

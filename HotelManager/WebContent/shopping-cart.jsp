<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <title>毕氏--酒店</title>
    <link rel="stylesheet" type="text/css" href="css/rest.css" />
    <link rel="stylesheet" type="text/css" href="css/base.css" />
    <link rel="stylesheet" type="text/css" href="css/shopping-cart.css" />
    <style type="text/css">
    	.bg{
    		margin: 0px auto;
    		text-align:center;
    	}
    	.bg tr,td{
    		padding:4px;
    		border:1px solid;
    	}
    	.btn{
    		background-color:#D3DCDD;
    		border-radius:5px;
    	}
    </style>
    <script type="text/javascript">
    function changeNum(id,num){
		num = parseInt(num);
		
		
		if(num<1){
			if(confirm("是否确认要删除此商品？")){
				num = 0;
				location.href="deleteFood?id="+id;
			}else{
				num=1;
			}
		}
		location.href="changeNum?id="+id+"&num="+num;
	}
    </script>
</head>
<body style="background:#fafafa;"  onselectstart="return false">
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
                <li class="on"><span>订餐</span><em>订餐</em></li>
            </a>
            <a href="hotel-environment.jsp">
                <li><span>酒店预订</span><em>酒店预订</em></li>
            </a>
            <a href="index.jsp">
                <li class="logo">
                    <img src="images/logo.png" alt="" />
                </li>
            </a>
            <a href="hotel-culture.jsp">
                <li><span>反馈建议</span><em>反馈建议</em></li>
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
            <h2>菜品购物车</h2>
            <div class="search"><input type="text" /><img src="images/search01.png" alt="" /></div>
        </div>
        <div class="shopping-nav">
            <div class="child on">1.我的购物车</div>
            <div class="child">2.填写订单信息</div>
            <div class="child nor">3.提交订单</div>
        </div>
        <div class="content">
             <table class="bg">
        	<tr>
        		<td>食品名称</td>
        		<td>食品类型</td>
        		<td>食品价格</td>
        		<td>食品描述</td>
        		<td>食品图片</td>
        		<td>食品数量</td>
        		<td>&nbsp;</td>
        	</tr>
        	<c:set var="sum" value="0" > </c:set>
        	<c:forEach items="${foodCart}" var="f">
        		<tr>
        			<td>${f.key.name}</td>
        			<td>${f.key.type}</td>
        			<td>${f.key.price}</td>
        			<td>${f.key.describ}</td>
        			<td>${f.key.img_url}</td>
        			
        			<td width="20%">
        				<input type="button" value='-' style="width:20px"
						onclick="changeNum('${f.key.id}','${f.value-1 }')">

						<input name="text" type="text" value="${f.value }"
						style="width:40px;text-align:center" />
						
						<input type="button" value='+' style="width:20px"
						onclick="changeNum('${f.key.id}','${f.value+1 }')">

					</td>
        			
        			<td>
						<form action="deleteFood" method="post">
							<input type="hidden" name="id" value="${f.key.id}" />
							<input value="删除" class="btn" type="submit"/>
						</form>
					</td>
        		</tr>
        		<c:set var="sum" value="${sum+f.value*f.key.price }"> </c:set>
        	</c:forEach>
      
        </table>
            <div class="all">
                <p>已选 <span class="zongsu1">3</span>商品合计（不含运费）：<em>￥<i>${sum}元</i></em></p>
                <a href="foodOrder"><button>结算</button></a>
            </div>
        </div>
    </div>
</div>
<script src="js/jquery.js"></script>
<script src="js/base.js"></script>
<script>
// 数量加
function jia(id){
    var name='.num'+id;//数字 1 
    var namejia=".m-c"+id;//价格
    var dan = ".wqeq"+id;//单价
    var ss=$(name).html();//获取数字里面的内容
    var sum = 0;//总数里面的值位零
    var mdan = 0
    var money =parseInt($(namejia).html());//获取价格里面的内容
    var val = parseInt($(dan).val());//单价的value()值
    var money_c = money+val;//每次加一价格乘以数量
    ss++;
    $(name).html(ss);//
    $(namejia).html(money_c);
      // 遍历所有数字相加
    $(".cart .content ul li .number .num ").each(function(i){  
      sum = sum + parseInt($(this).html());  
    });
    // 总数
    $('.cart .content .all p span').html(sum);
    // 金额总数遍历
    $(".cart .content ul li .money .m-c").each(function(i){  
      mdan = mdan + parseInt($(this).html());  
    });
    // 金额总数的值
    $('.cart .content .all p i').html(mdan);
};

// 数量减
function jian (num){
    var name='.num'+num;//数字 1
    var namejia=".m-c"+num;//价格
    var dan = ".wqeq"+num;//单价
    var ss=$(name).html();//获取数字里面的内容
    var money =$(namejia).html();//获取价格里面的内容
    var val = $(dan).val();//单价的value()值
    var money_c = money-val;//每次减一总价减与单价
    var sum = 0;
    var mdan = 0;
    // 如果小于等于一的时候就不执行这个方法
    if(ss == 1){
        return;
    }
    ss--;
    $(name).html(ss);//
    $(namejia).html(money_c);//
    // 遍历所有数字相加
    $(".cart .content ul li .number .num ").each(function(i){  
      sum = sum + parseInt($(this).html());  
    });
    // 总数
    $('.cart .content .all p span').html(sum);
    // 金额总数遍历
    $(".cart .content ul li .money .m-c").each(function(i){  
      mdan = mdan + parseInt($(this).html());  
    });
        // 金额总数的值
    $('.cart .content .all p i').html(mdan);
} ;
$(function(){
    $('.cart .content ul li').each(function(index, el) {
       $(this).find('.delete').click(function(event) {
           $(this).parents('li').stop().hide(500);
       }); 
    });
})
</script>
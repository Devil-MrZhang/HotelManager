<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"> 
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <title>毕氏--首页</title>
    <link rel="stylesheet" type="text/css" href="css/rest.css" />
    <link rel="stylesheet" type="text/css" href="css/lq.datetimepick.css"/>

    <link rel="stylesheet" type="text/css" href="css/base.css" />
    <link rel="stylesheet" type="text/css" href="css/index.css" />
</head>
<body>
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
                <li class="on"><span>首页</span><em>首页</em></li>
            </a>
            <a href="food">
                <li><span>订餐</span><em>订餐</em></li>
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
<!-- banner -->
<div class="bigBanner">
    <div class="banner01">
        <div class="content01" style="background-image:url(images/index/banner01.jpg)"></div>
        <div class="content01" style="background-image:url(images/index/banner.jpg)"></div>
        <div class="max-container01">
            <div class="btn01 prev" onclick="banner01.todo({'direc':'-'})"></div>
            <div class="btn01 next" onclick="banner01.todo({'direc':'+'})"></div>
        </div>
    </div>
    <div class="xiala"></div>
    <div class="reserve">
        <div class="bg"></div>
        <div class="container">
            <div class="info">
                <h5><em>在线预订</em></h5>
                <span><img src="images/index/line.png" alt="" /></span>
                <div class="box">
                    <div class="area">
                        <input type="text" placeholder="酒店位置" value="" />
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
                        <dt><em>1人客房</em><span></span></dt>

                        <div class="person">
                            <dd>2人客房</dd>
                            <dd>3人客房</dd>
                            <dd>4人客房</dd>
                            <dd>5人客房</dd>
                            <dd>6人客房</dd>
                        </div>  
                    </dl>
                    <div class="child btn">SEARCH</div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- banner over -->
<!-- Environmental -->
<div class="environmental">
    <div class="container">
        <div class="search_parent">
            <h2>环境</h2>
            <div class="search"><input type="text" /><img src="images/search01.png" alt="" /></div>
        </div>
        <div class="e">
            <div class="imgs" style="background-image:url(images/index/e-bg.jpg)"></div>
            <div class="infos">
                <div class="info">
                    <h6>环境</h6>
                    <h5>毕氏集装箱酒店</h5>
                    <p><span>集装箱 </span>建材作为建筑组件，标准程度非常高，运输与吊装十分方便快捷，可灵活组合内部空间，同时也有非常高的回收率。通过货运集装箱材料以模块化的方式按空间设计进行有序组装，然后把定制好的门窗进行二次装嵌，后续环节实施内部空间的模块化施工和软装设置，从设计到建造过程都能从分体现出集装箱建筑的高效、灵活等优异特性</p>
                    <a href="hotel-environment.html" class="more"><img src="images/index/more.png" alt="" /></a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Environmental over -->
<!-- product -->
<div class="product">
    <div class="container">
        <h2>产品</h2>
        <div class="banner">
            <div class="content">
                <div class="cont">
                    <div class="child">
                        <div class="imgs">
                            <img src="images/index/li01.png" alt="" />
                        </div>
                        <div class="txt">
                            <h5>B322-2功能椅</h5>
                            <p>￥2800.00</p>
                        </div>
                        <div class="hover">
                            <div class="bg"></div>
                            <a href="" class="more"><img src="images/index/banner-more.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="child">
                        <div class="imgs">
                            <img src="images/index/li01.png" alt="" />
                        </div>
                        <div class="txt">
                            <h5>B322-2功能椅</h5>
                            <p>￥2800.00</p>
                        </div>
                        <div class="hover">
                            <div class="bg"></div>
                            <a href="" class="more"><img src="images/index/banner-more.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="child">
                        <div class="imgs">
                            <img src="images/index/li01.png" alt="" />
                        </div>
                        <div class="txt">
                            <h5>B322-2功能椅</h5>
                            <p>￥2800.00</p>
                        </div>
                        <div class="hover">
                            <div class="bg"></div>
                            <a href="" class="more"><img src="images/index/banner-more.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="child">
                        <div class="imgs">
                            <img src="images/index/li01.png" alt="" />
                        </div>
                        <div class="txt">
                            <h5>B322-2功能椅</h5>
                            <p>￥2800.00</p>
                        </div>
                        <div class="hover">
                            <div class="bg"></div>
                            <a href="" class="more"><img src="images/index/banner-more.png" alt="" /></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content">
                <div class="cont">
                    <div class="child">
                        <div class="imgs">
                            <img src="images/index/li01.png" alt="" />
                        </div>
                        <div class="txt">
                            <h5>B322-2功能椅</h5>
                            <p>￥2800.00</p>
                        </div>
                        <div class="hover">
                            <div class="bg"></div>
                            <a href="" class="more"><img src="images/index/banner-more.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="child">
                        <div class="imgs">
                            <img src="images/index/li01.png" alt="" />
                        </div>
                        <div class="txt">
                            <h5>B322-2功能椅</h5>
                            <p>￥2800.00</p>
                        </div>
                        <div class="hover">
                            <div class="bg"></div>
                            <a href="" class="more"><img src="images/index/banner-more.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="child">
                        <div class="imgs">
                            <img src="images/index/li01.png" alt="" />
                        </div>
                        <div class="txt">
                            <h5>B322-2功能椅</h5>
                            <p>￥2800.00</p>
                        </div>
                        <div class="hover">
                            <div class="bg"></div>
                            <a href="" class="more"><img src="images/index/banner-more.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="child">
                        <div class="imgs">
                            <img src="images/index/li01.png" alt="" />
                        </div>
                        <div class="txt">
                            <h5>B322-2功能椅</h5>
                            <p>￥2800.00</p>
                        </div>
                        <div class="hover">
                            <div class="bg"></div>
                            <a href="" class="more"><img src="images/index/banner-more.png" alt="" /></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="max-container">
                <div class="btn left" onclick="banner.todo({'direc':'-'})"></div>
                <div class="btn right" onclick="banner.todo({'direc':'+'})"></div>
            </div>
        </div>
    </div>
</div>
<!-- product over-->
<!--space -->
<div class="space">
    <div class="container">
        <h2>室内空间</h2>
        <ul>
            <div class="one">
                <a href="">
                    <li>
                        <img src="images/index/li01.jpg" alt="" />
                        <div class="hover">
                            <div class="bg"></div>
                            <div class="txt">
                                <h5>Art&SPACE</h5>
                                <p>艺术套房| 1居| 宜住4人</p>
                                <a href="" class="money">¥<span>348</span>/晚</a>
                            </div>
                        </div>
                    </li>
                </a>  
            </div>          
            <div class="two">
                <a href="">
                    <li class="mb">
                        <img src="images/index/li02.jpg" alt="" />
                        <div class="hover">
                            <div class="bg"></div>
                            <div class="txt">
                                <h5>Art&SPACE</h5>
                                <p>艺术套房| 1居| 宜住4人</p>
                                <a href="" class="money">¥<span>348</span>/晚</a>
                            </div>
                        </div>
                    </li>
                </a>            
                <a href="">
                    <li>
                        <img src="images/index/li03.jpg" alt="" />
                        <div class="hover">
                            <div class="bg"></div>
                            <div class="txt">
                                <h5>Art&SPACE</h5>
                                <p>艺术套房| 1居| 宜住4人</p>
                                <a href="" class="money">¥<span>348</span>/晚</a>
                            </div>
                        </div>
                    </li>
                </a>
            </div>            
            <div class="two">
                <a href="">
                    <li class="mb">
                        <img src="images/index/li04.jpg" alt="" />
                        <div class="hover">
                            <div class="bg"></div>
                            <div class="txt">
                                <h5>Art&SPACE</h5>
                                <p>艺术套房| 1居| 宜住4人</p>
                                <a href="" class="money">¥<span>348</span>/晚</a>
                            </div>
                        </div>
                    </li>
                </a>            
                <a href="">
                    <li>
                        <img src="images/index/li05.jpg" alt="" />
                        <div class="hover">
                            <div class="bg"></div>
                            <div class="txt">
                                <h5>Art&SPACE</h5>
                                <p>艺术套房| 1居| 宜住4人</p>
                                <a href="" class="money">¥<span>348</span>/晚</a>
                            </div>
                        </div>
                    </li>
                </a>
            </div>
        </ul>
    </div>
</div>
<!-- space -->
<!-- Smart  -->
<div class="smart">
    <div class="container">
        <h2>智能家居</h2>
        <div class="cont" style="background-image:url(images/index/smart.jpg);">
            <div class="info">
                <div class="txt">
                    <h6>将生活美学融于家居的智能家居系统</h6>
                    <p>智能家居系统，将工业化外观与信息化体验和谐统一，跨界资源置换，产品延伸开发 顾客消费升级，为商旅客提供可信赖、有保障的品质住宿体验。无线覆盖，创意插座、红外监控、空气清新设备、智能音响……</p>
                    <a href="" class="more">Details more&gt;&gt;</a>
                </div>
            </div>
        </div>
    </div>
</div> 
<!-- Smart  -->
<!-- footer -->
<div class="footer">
    <div class="container">
        <div class="top">
            <a href="index.html" class="f-logo">
                <img src="images/f-logo.png" alt="" />
            </a>
            <dl>
                <dt>关于</dt>
                <a href="hotel-reservation.html"><dd>酒店预订</dd></a>
                <a href="hotel-environment.html"><dd>环境</dd></a>
                <a href="hotel-culture.html"><dd>酒店文化</dd></a>
            </dl>
            <dl>
                <dt>室内空间</dt>
                <a href=""><dd>艺术&空间</dd></a>
                <a href=""><dd>Kids&空间</dd></a>
                <a href=""><dd>智能家居</dd></a>
                <a href=""><dd>餐厅</dd></a>
            </dl>
            <dl>
                <dt>商品在线</dt>
                <a href=""><dd>家具</dd></a>
                <a href=""><dd>床</dd></a>
                <a href=""><dd>装饰</dd></a>
            </dl>
            <dl class="nor">
                <dt>联系我们</dt>
                <a href=""><dd>酒店预订热线</dd></a>
                <a href="tel:400-8888-8888"><dd class="tel">400-8888-8888</dd></a>
            </dl>
        </div>
        <div class="copy">
            <p>Email  3216888426@qq.com      ADD  3216888426;sd<a href="#" target="_blank">合作</a></p>
        </div>
    </div>
</div>
<!-- footer over -->
</body>
</html>
<script src="js/jquery.js"></script>
<script src="js/base.js"></script>
<script src="js/dydong.change.js"></script>
<script src="js/index.js"></script>
<script src="js/reserve.js"></script>
<script src="js/show.js"></script>
<script src='js/selectUi.js'></script>
<script src='js/lq.datetimepick.js'></script>
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
})
</script>
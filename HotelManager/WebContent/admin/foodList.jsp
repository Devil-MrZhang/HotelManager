<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link href="css/reset.css" rel="stylesheet" />
    <link href="css/iconfont.css" rel="stylesheet" />
    <link href="css/index.css" rel="stylesheet" />
    <script src="jquery/jquery-1.9.1.min.js"></script>
    <script src="js/f.js"></script>
    
    <script language="javascript"
	src="${pageContext.request.contextPath}/admin/js/public.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/jquery/jquery-1.11.0.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/jquery/jquery-migrate-1.2.1.js"></script>
<script type="text/javascript">
	

/** 删除员工绑定点击事件 */
$(document).ready(function(){
	  $("#deletes").click(function(){
		   alert("111111111");
		   var chk_value =[];//定义一个数组    
           $('input[type="checkbox"][id^="boxx"]:checked').each(function(){//遍历每一个名字为interest的复选框，其中选中的执行函数    
           chk_value.push($(this).val());//将选中的值添加到数组chk_value中    
          alert(chk_value);
           
           });	
           if(confirm("是否要删除所选中的s?")){
				   
					  console.log("删除："+chk_value);
					   // 发送请求
					   window.location = "${pageContext.request.contextPath }/admin/fooddelete?idd=" + chk_value;
				   
			   }; 
	  
	  });
 })
 

</script>
    <title>订单管理</title>
</head>
<body>
<button id="xxx">0000000000</button>
    <div class="PublicHead clearfix">
        <div class="leftBox clearfix">
            <div class="companyLogo">
                <img src="images/logo.jpg" />
            </div>
            <!--<i class="iconfont icon-caidan"></i>-->

            <div class="companyText">
                上海央谷管理系统
            </div>
        </div>
        <div class="RightBox clearfix">
            <div class="UserPhotoBox">
                <div class="UserPic">
                    <img src="images/user.jpg" />
                </div>
                <div class="UserName">
                    管理员
                </div>
            </div>
            <a href="index.html">
                <div class="dropOutBox">
                    <i class="iconfont icon-app_icons--">
                    </i>
                    <span>退出</span>
                </div>
            </a>
        </div>
    </div>

    <div class="PublicDownWhole clearfix">
        <!--左侧-->
        <div class="leftBox">
            <ul>
            
                <a href="${pageContext.request.contextPath}/admin/showRoomOrders">
                    <li><i class="iconfont icon-tubiao_dingdan"></i><span>订单管理</span></li>
                </a>
             
                <a href="ProductManagement.html">      <li><i class="iconfont icon-weibiaoti1"></i><span>产品管理</span></li></a>
          <a href="${pageContext.request.contextPath}/admin/showRoomList">       <li ><i class="iconfont icon-tubiao_dingdan"></i><span>房间管理</span></li></a>
           
              <a href="${pageContext.request.contextPath}/admin/showfoodList">
                    <li class="Select"><i class="iconfont icon-tubiao_dingdan"></i><span>全部餐品</span></li>
                </a>
            </ul>
        </div>
        <!--右侧-->
        <div class="RightBox">
            <div class="PublicContentBox">
                <!--公用指向页面名字-->
                <div class="PublicPointToAgeText">
                    <span class="span1">订单管理 </span> <span class="span2">后台订单管理列表</span>
                </div>
                <!--查询-->
                <form action="${pageContext.request.contextPath}/admin/selectfood" method="post">
                 <div class="InquireBox clearfix">
                    <div class="InquireleftBox">
                        <div class="Text">订单号：</div>
                        <div class="InputDiv">   <input name="id" class="phoneInput" placeholder="请输入你需要查询的订单号" /></div>
                    </div>
                    <div class="PublicBtnIcon Color1Btn fr">
                        <i class="iconfont icon-icon-chaxun"></i>
                        <input type="submit" value="查询"/>
                    </div>
                </div>
                
                </form>
               
                <!--表修改-->
                <div class="InquireTableBox">
                    <div class="headbox">
                        <div class="headboxtext">
                            <span class="span1">后台订单管理列表</span>
                        </div>
                        <!--批量删除-->
                        <div class="PublicBtnIcon Color5Btn">
                            <i class="iconfont  icon-shanchu"></i>
                            <span id="deletes"   >批量删除</span>
                             <span><a href="${pageContext.request.contextPath }/admin/foodadd.jsp">添加菜</a></span>
                        </div>

                    
                    </div>

                    <!--查询到的表格-->

                    <div class="InquireSelectTable">
                        <table class="PublicTableCss">
                            <thead>
                                <tr>
                                    <td>
                                        <input onclick="checkAll()" id="ckAll" class="inputcheck" type="checkbox" name="inputcheck" />
                                        <label for="inputcheck"></label>
                                        <span >全选</span>
                                    </td>
                                    <td>ID</td>
                                    <td>菜品名称</td>
                                    <td>菜品类型</td>
                                    <td>菜品价格</td>
                                    <td>菜品描述</td>
                                    <td>图片</td>
                                    <td>操作</td>
                                </tr>

                            </thead>
                            <tbody>
                            	<c:forEach var="item" items="${foods }">
                            	
                            	    <tr>
                                    <td>
                                    <input type="checkbox" id="boxx" value="${item.id}">
                                       <%--  <input class="inputcheck" type="checkbox" name="ids" value="${item.id }" /> --%>
                                        <label for="aa"></label>
                                    </td>
                                      <td>${item.id }</td>
                                    <td>${item.name }</td>
                                    <td>${item.type }</td>
                                    <td>${item.price }</td>
                                    <td>${item.describ }</td>
                                    <td>${item.img_url}</td>
                               

                                    <td>

                                        <div class="PublicTableBtnIcon Color3Btn Js_edit">
                                            <i class="iconfont icon-tubiaozhizuomobanyihuifu-"></i>
                                            <span><a href="${pageContext.request.contextPath }/admin/foodupup?id=${item.id}">编辑</a></span>
                                        </div>

                                        <div class="PublicTableBtnIcon Color4Btn Js_delete">
                                            <i class="iconfont icon-shanchu"></i>
                                            <span><a href="${pageContext.request.contextPath }/admin/fooddelete?idd=${item.id}">删除</span>
                                        </div>
                                    </td>
                                </tr>
                            	
                            	
                            	</c:forEach>

                              


                            </tbody>
                        </table>

                    </div>
            


  
</body>
</html>
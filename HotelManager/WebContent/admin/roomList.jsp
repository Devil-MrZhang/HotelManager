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
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/jquery/jquery.js"></script>
<script type="text/javascript">
	
	function checkAll() {
		
		var flag=document.getElementById("ckAll").checked;
	
		var ids=document.getElementsByName("ids");
		for (var i = 0; i < ids.length; i++) {
			ids[i].checked=flag;
		}
	}
	
	function delAllBooks(){
		var ids=document.getElementsByName("ids");
		var str="";
		for (var i = 0; i < ids.length; i++) {
			if (ids[i].checked) {
				str+="ids="+ids[i].value+"&";
			}
		}
		if(str!=""){
			
			if(confirm("是否要删除所选中的书籍?")){
				str=str.substring(0,str.length-1);
				location.href="${pageContext.request.contextPath}/admin/delAll?"+str;
			}
			
		}else{
			alert("请选择要删除的书籍")
		}
		
		
		
		
	}
</script>
    <title>订单管理</title>
</head>
<body>
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
          <a href="${pageContext.request.contextPath}/admin/showRoomList">       <li class="Select"><i class="iconfont icon-tubiao_dingdan"></i><span>房间管理</span></li></a>
           
              <a href="${pageContext.request.contextPath}/admin/showfoodList">
                    <li><i class="iconfont icon-tubiao_dingdan"></i><span>全部餐品</span></li>
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
                <form action="${pageContext.request.contextPath}/admin/selectRoom" method="post">
                 <div class="InquireBox clearfix">
                    <div class="InquireleftBox">
                        <div class="Text">订单号：</div>
                        <div class="InputDiv">   <input name="roomnum" class="phoneInput" placeholder="请输入你需要查询的订单号" /></div>
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
                            <span  onclick="delAllBooks()">批量删除</span>
                             <span><a href="${pageContext.request.contextPath }/admin/add.jsp">添加房间</a></span>
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
                                    <td>房间数量</td>
                                    <td>房间价格</td>
                                    <td>床数</td>
                                    <td>类型</td>
                                    <td>图片</td>
                                    <td>操作</td>
                                </tr>

                            </thead>
                            <tbody>
                            	<c:forEach var="item" items="${rooms }">
                            	
                            	    <tr>
                                    <td>
                                        <input class="inputcheck" type="checkbox" name="ids" value="${item.id }" />
                                        <label for="aa"></label>
                                    </td>
                                    <td>${item.id }</td>
                                    <td>${item.roomnum }</td>
                                    <td>${item.price }</td>
                                    <td>${item.bednumber }</td>
                                    <td>${item.type }</td>
                                    <td>${item.img_url}</td>
                               

                                    <td>

                                        <div class="PublicTableBtnIcon Color3Btn Js_edit">
                                            <i class="iconfont icon-tubiaozhizuomobanyihuifu-"></i>
                                            <span><a href="${pageContext.request.contextPath }/admin/update?id=${item.id}">编辑</a></span>
                                        </div>

                                        <div class="PublicTableBtnIcon Color4Btn Js_delete">
                                            <i class="iconfont icon-shanchu"></i>
                                            <span><a href="${pageContext.request.contextPath }/admin/delete?id=${item.id}">删除</span>
                                        </div>
                                    </td>
                                </tr>
                            	
                            	
                            	</c:forEach>

                              


                            </tbody>
                        </table>

                    </div>
            


  
</body>
</html>
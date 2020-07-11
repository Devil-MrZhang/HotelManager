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
               
               
                <!--表修改-->
                <div class="InquireTableBox">
                    <div class="headbox">
                        <div class="headboxtext">
                            <span class="span1">后台订单管理列表</span>
                        </div>
                        

                    
                    </div>

                    <!--查询到的表格-->

                    <div class="InquireSelectTable">
                        <table class="PublicTableCss">
                            <thead>
                                <tr>
                                    <td>
                                        <input onclick="checkAll()" id="ckAll" class="inputcheck" type="checkbox" name="inputcheck" />
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
                            <form action="foodupup">
                            	<input type="hidden" name="i" value="1">
                            	  <input type="hidden" name="id" value="${foodup.id }"></input>
                            	
                            	    <tr>
                                    <td>
                                    <input type="checkbox" id="boxx" value="${foodup.id}">
                                    </td>
                                      <td>${foodup.id }</td>
                                      
                                       <td><input type="text" name="name" value="${foodup.name }"/></td>
                                        <td><input type="text" name="type" value="${foodup.type }"/></td>
										<td><input type="text" name="price" value="${foodup.price }"/></td>
										<td><input type="text" name="describ" value="${foodup.describ }"/></td>
										<td><input type="text" name="img_url" value="${foodup.img_url }"/></td>
                                  
                                
                               

                                    <td>

                                        <div class="PublicTableBtnIcon Color3Btn Js_edit">
                                            <i class="iconfont icon-tubiaozhizuomobanyihuifu-"></i>
                                            <span><button type="submit">编辑</button></span>
                                        </div>

                                        
                                    </td>
                                </tr>
                            	
                           

                              </form>


                            </tbody>
                        </table>

                    </div>
            


  
</body>
</html>
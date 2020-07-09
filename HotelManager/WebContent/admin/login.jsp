<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link href="css/reset.css" rel="stylesheet" />
    <link href="css/index.css" rel="stylesheet" />
    <title>登录页</title>
</head>
<body>
    <div class="LoginBox">
        <div class="VerticalCenteredBox">
            <div class="LoginHead">
                	酒店后台管理系统
            </div>
            <div class="LoginUserBoxOut ">
                <div class="LoginUserBox mar_top30">
                    <input class="LoginUserInput" placeholder="请输入账号" />
                    <span>请输入账号</span>
                </div>
            </div>
            <div class="LoginUserBoxOut">
                <div class="LoginUserBox">
                    <input class="LoginUserInput" placeholder="请输入密码" type="password" />
                    <span>请输入密码</span>
                </div>
            </div>

            <div class="LoginUserBoxOut">

                <div class="LoginLastBox clearfix">
                    <div class="leftBox">
                        <input id="inputcheck" class="inputcheck" type="checkbox" name="inputcheck" />
                        <label for="inputcheck"></label>
                        <span>下次自动登录</span>
                    </div>
                    <a href="UserManagement.html">
                        <div class="RightBox">
                            登录
                        </div>
                    </a>
                </div>
            </div>

        </div>
    </div>
</body>
</html>
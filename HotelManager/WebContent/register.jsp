<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <title>注册页面</title>
    <link rel="stylesheet" type="text/css" href="css/rest.css" />
    <link rel="stylesheet" type="text/css" href="css/register.css" />
    <style type="text/css">
    	.xb{
    		height: 50px;
    		font-size: 20px;
    		text-align: left;
    		padding-top: 12px;
    	}
    </style>
</head>
<body>
<div class="kong">
    <div class="login">
        <a href="index.html" class="logo">
            <img src="images/login/logo.png" alt="" />
        </a>
        <h5>波波酒店登录</h5>
        <div class="box">
            <form action="" method="post">
            <div class="baseW">
                <input type="text" id="username" name="username" placeholder="请输入用户名" />  
            </div>
             <div class="xb">
             	 性别：<input id="man" type="radio" checked="checked" name="1" />男&nbsp;
                <input id="woman" type="radio"  name="1"/>女 
            </div>
           
           
            <div class="baseW">
                <input type="password" id="password" placeholder="密码" />
            </div>            
            <div class="baseW">
                <input type="password" placeholder="确认密码" />
            </div>
             
            <div class="baseW">
                <input type="text"  name="email" placeholder="请输入邮箱" />  
            </div>
            
            <div class="baseW">
                <input type="text"  name="telephone" placeholder="请输入电话" />  
            </div>
            
           <div class="baseW">
                <input type="text"  name="telephone" placeholder="请输入身份证号" />  
            </div>
            
             <div class="ma">
                <input type="text" placeholder="请输入图片验证码"/>
                <img src="images/login/ma.png" alt="" class="icon" />
            </div>
            <button type="submit">立即注册</button>
            <p>点击“立即注册”，即表示您同意并愿意遵守波波酒店<a href="">用户协议</a>和<a href="">隐私政策</a></p>
        	</form>
        </div>
    </div>
    <div class="copy">
        <p>Email  sdfsdfs@sdfsdfsdfsf.com      ADD  sdfasdfsfw8eteigj;sdfkgdfigsng;asdgh;sd     <a href="http://www.pidcn.com/" target="_blank">POWERED BY PID INTERRACTIVE</a></p>
    </div>
</div>
</body>
</html>
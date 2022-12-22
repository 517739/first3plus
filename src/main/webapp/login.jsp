<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
 
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>登陆界面</title>
  <style>
    #login_box {
      width: 20%;
      height: 400px;
      background-color: #262d2a60;
      margin: auto;
      margin-top: 10%;
      text-align: center;
      border-radius: 10px;
      padding: 50px 50px;
    }
 
    h2 {
      color: #ffffff90;
      margin-top: 5%;
    }
 
    #input-box {
      margin-top: 5%;
    }
 
    span {
      color: #fff;
    }
 	
 	
 	 #sup {
      border: 0;
      width: 60%;
      font-size: 15px;
      color: #fff;
      background: transparent;
      border-bottom: 3px solid #fff;
      margin-top: 40px;
      margin-bottom: 40px;  
      padding: 5px 10px;
      outline: none;
      margin-top: 10px;
    }
 
  #sup2 {
      border: 0;
      width: 60%;
      font-size: 15px;
      color: #fff;
      background: transparent;
	  magin : 0 auto;
      padding: 5px 10px;
      margin-top: 5px;
    }
    
    .submitbtn {
      margin-top: 50px;
      width: 60%;
      height: 40px;
      border-radius: 10px;
      border: 0;
      margin-top: 50px;
      margin-bottom: 50px;  
      margin: 0 auto;
      color: #fff;
      text-align: center;
      line-height: 40px;
      font-size: 15px;
      background-image: linear-gradient(to right, #224b8f, #224b8f);
    }
 
    a {
      color: #ffffff;
      text-decoration: none;
    }
    
    b {
    	color: #fff;
    }
    
    div{
        size : 75px;
    	color :  #fff;
    	family : sans-serif;
    }
    #sup {
      border: 0;
      width: 60%;
      font-size: 15px;
      color: #fff;
      background: transparent;
      border-bottom: 3px solid #fff;
      margin-top: 40px;
      margin-bottom: 40px;  
      padding: 5px 10px;
      outline: none;
      margin-top: 10px;
    }
 
  #sup2 {
      border: 0;
      width: 60%;
      font-size: 15px;
      color: #fff;
      background: transparent;
	  magin : 0 auto;
      padding: 5px 10px;
      margin-top: 10px;
    }
    
    #submitbtn {
      margin-top: 50px;
      width: 60%;
      height: 40px;
      border-radius: 10px;
      border: 0;
      margin-top: 50px;
      margin-bottom: 50px;  
      margin: 0 auto;
      color: #fff;
      text-align: center;
      line-height: 30px;
      font-size: 15px;
      background-image: linear-gradient(to right, #224b8f, #224b8f);
    }
 

 
    a {
      color: #2f6d84;
      text-decoration: none;
    }
    
    div{
        size : 75px;
    	color :  #fff;
    	family : sans-serif;
    }
    
     body {
        background-size:cover;
        background-image: url("./image/back.jpg");
      }
      
    #bottom{
      margin-top: 50px; 
    }
    #signup{
      margin-top: 30px;
      margin-left: 200px;
    }
 
    
  </style> 
  
</head> 
<body >
  <div id="login_box">
    <h2>登录橙雨银行账户</h2> 
    <form action="${pageContext.request.contextPath}/LoginServlet" method="post">
    <div id="input_box"><b>用户名&nbsp&nbsp</b><input id="sup" type="text" name="username"></div>
    <div id="input_box"><b>密码&nbsp&nbsp</b><input id="sup" type="password" name="password"></div>
    <div id="submitbtn"><input id="sup2" type="submit" value="登录"></div>
    <div id="signup"><a href="register.jsp"><b>注册</b></a></div>
</form>
</div>
</body>
</html>


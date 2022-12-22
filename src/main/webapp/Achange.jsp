<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
 
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>管理用户</title>
  <style>
    body {
       background: url("https://c-ssl.duitang.com/uploads/blog/202206/02/20220602011830_9e608.jpg") no-repeat center center fixed;
                -webkit-background-size: cover;
                -o-background-size: cover;                
                background-size: cover;
    }
 
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
      margin-top: 5px;
    }
 
  #sup2 {
      border: 0;
      width: 60%;
      font-size: 15px;
      color: #fff;
      background: transparent;;
	  magin : 0 auto;
      padding: 5px 10px;
      outline: none;
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
        background-image: url("./image/backre.jpeg");
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
    <h2>注册橙雨银行账户</h2> 
    <form action="${pageContext.request.contextPath}/ChangeServlet" method="post">
    <div id="input_box"><b>用户名&nbsp&nbsp</b><input id="sup" type="text" name="username"></div>
    <div id="input_box"><b>密码&nbsp&nbsp</b><input id="sup" type="password" name="password"></div>
    <div id="input_box"><b>姓名&nbsp&nbsp</b><input id="sup" type="text" name="sname"></div>
    <div id="input_box"><b>年龄&nbsp&nbsp</b><input id="sup" type="text" name="age"></div>
    <div id="input_box"><b>身份证号&nbsp&nbsp</b><input id="sup" type="text" name="iden"></div>
    <div id="submitbtn"><input id="sup2" type="submit" value="修改" onclick="alert('修改成功')"></div>
</form>
</div>
</body>
</html>
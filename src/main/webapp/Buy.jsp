<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<title>
	购买
</title>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <title>产品购买</title>
  
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
    
     
      
    #bottom{
      margin-top: 50px; 
    }
    #signup{
      margin-top: 30px;
      margin-left: 200px;
    }
    
    body {
        background-size:cover;
        background-image: url("./image/psc.jpg");
      }
 
    
  </style> 
  
</head>
 
<body>
  <div id="login_box">
    <h2>购买产品</h2> 
    <form action="${pageContext.request.contextPath}/TradeServlet" method="post">
    <div>当前产品：${sessionScope.Pname}</div>
    <div id="input_box"><b>购买数量&nbsp&nbsp</b><input id="sup" type="text" name="quantity"></div>
    <div id="input_box"><b>支付密码&nbsp&nbsp</b><input id="sup" type="password" name="password"></div>
    <div class="submitbtn"><input id="sup2" type="submit" value="购买"></div>
    <br>
    <div class="submitbtn"><a href="product.jsp">返回</a></div>
    </form>
  </div>
</body>
</html>


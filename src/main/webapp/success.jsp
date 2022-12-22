<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录成功</title>
</head>
<style>
	h1 {
	  Text-align:center;
      margin-top: 5%;
      magin : auto;
    }
    
    p{
      Text-align:center;
      margin-top: 5%;
      magin : auto;
    }
    a {
     text-decoration: none;
      Text-align:center;
      magin : auto;
      size : 100px;
    }
 


</style>
<body>
<h1>登录成功，欢迎您：${sessionScope.username}</h1>
<p><a href="well.jsp">进入首页</a></p>
<div style="border:0; position:absolute; padding:0px;bottom:60; right:20; z-index: 9999; ">
                   <img src="./image/chuhuoba.png" alt="success" >   
                 </div>
</body>
</html>
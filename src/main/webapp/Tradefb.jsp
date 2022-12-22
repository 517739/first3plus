<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>转账失败</title>
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
    body {
        background-size:cover;
        background-image: url("./image/psc.jpg");
      }


</style>
<body>
<h1>余额不足，购买失败！</h1>
<p><a href="product.jsp">重新选择</a>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="Buy.jsp">重新购买</a>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="well.jsp">返回主页</a></p>
<div style="border:0; position:absolute; padding:0px;bottom:60; right:20; z-index: 9999; ">
                   <img src="./image/hutaohit.gif" alt="failure" >   
                 </div>
</body>
</html>
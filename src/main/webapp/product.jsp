<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
</head>
<style>


h1 {
	  Text-align:center;
      margin-top: 5%;
      magin : auto;
      color: #fff;
    }
    
     a {
     text-decoration: none;
      Text-align:center;
      magin : auto;
      color: #fff;
      size : 100px;
    }
    
    b {
    	type = "submit"
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
      width: 200px;
      height: 50px;
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
    
    button{

		width:50px;
		height: 30px;
		background-color: #c0c0c0;

}

body {
        background-size:cover;
        background-image: url("./image/psc.jpg");
      }
</style>

<body>
<br><br><br>
<h1>P&nbsp&nbspR&nbsp&nbspO&nbsp&nbspD&nbsp&nbspU&nbsp&nbspC&nbsp&nbspT</h1>
<br>
  <table  align = "center" width="450" border="1" cellpadding="0" >

  		<tr>
  			<th colspan="2">基金购买</th>
	  		<th colspan="2">股票购买</th>
	  		<th colspan="2">重金属购买</th>
  		</tr>

    <tbody>
      <form action="${pageContext.request.contextPath}/BuyServlet" method="post">
       <tr>
	       <td align = "center">中银基金</td>
	       <td align = "center">农信基金</td>
	       <td align = "center">橙雨企业股票</td>
	       <td align = "center">淄博城市股票</td>
	       <td align = "center">黄金（盎司）</td>
	       <td align = "center">白银（盎司）</td>
	   </tr>
	   <tr>
	   		<td align = "center"><img src="./image/zhongyin.png" height=120px width=140px></td>
	   		<td align = "center"><img src="./image/nongxin.png" height=120px width=140px></td>
	   		<td align = "center"><img src="./image/icon.png" height=120px width=140px></td>
	   		<td align = "center"><img src="./image/zibo.png" height=120px width=140px></td>
	   		<td align = "center"><img src="./image/huangjin.png" height=120px width=140px></td>
	   		<td align = "center"><img src="./image/baiyin.png" height=120px width=140px></td>
	   </tr>
	   <tr>
	   		<td align = "center">基金代码：<br>A类030217</td>
	   		<td align = "center">基金代码：<br>A类030219</td>
	   		<td align = "center">股票编号：<br>B类020502</td>
	   		<td align = "center">股票编号：<br>B类020516</td>
	   		<td align = "center">重金属凭证：<br>C类011224</td>
	   		<td align = "center">重金属凭证：<br>C类011110</td>
	   </tr>
	   <tr>
	   		<td align = "center">净值（人民币）：<br>1.2906</td>
	   		<td align = "center">净值（人民币）：<br>1.1872</td>
	   		<td align = "center">净值（人民币）：<br>2.52</td>
	   		<td align = "center">净值（人民币）：<br>3.33</td>
	   		<td align = "center">卖出价（美元）：<br>8568.07</td>
	   		<td align = "center">卖出价（美元）：<br>165.23</td>
	   </tr>
	   <tr>
	   		<td align = "center">涨跌幅：+7.98%</td>
	   		<td align = "center">涨跌幅：-0.32%</td>
	   		<td align = "center">涨跌幅：+1.17%</td>
	   		<td align = "center">涨跌幅：+2.33%</td>
	   		<td align = "center">涨跌幅：+0.323%</td>
	   		<td align = "center">涨跌幅：+0.177%</td>
	   </tr>
	   <tr>
	       <td align = "center">
	       	<button type="submit" value="中银基金" name="Pname">购买</button>
	       </td>
	       <td align = "center">
	       	<button type="submit" value="农信基金" name="Pname">购买</button>
	       </td>
	       <td align = "center">
	       	<button type="submit" value="橙雨企业股票" name="Pname">购买</button>
	       	</td>
	       	<td align = "center">
	       	<button type="submit" value="淄博城市股票" name="Pname">购买</button>
	       	</td>
	       <td align = "center">
	       	<button type="submit" value="黄金（盎司）" name="Pname">购买</button>
	       	</td>
	       	<td align = "center">
	       	<button type="submit" value="白银（盎司）" name="Pname">购买</button>
	       	</td>
	   </tr>
     </form>  
    </tbody>
  </table>

</body>
</html>
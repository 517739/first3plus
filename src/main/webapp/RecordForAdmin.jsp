<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<link rel="stylesheet" href="css/record.css">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  
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

    #input-box {
      margin-top: 5%;
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
 

    
    div{
        size : 75px;
    	family : sans-serif;
    }
    

  
 
    
  </style> 
  
</head> 

<body >
 <div >
    <h1>交易记录</h1> 

    		<%
			try {
				Class.forName("com.mysql.jdbc.Driver"); 
				String url = "jdbc:mysql://120.46.220.20:3306/first?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";
				String username = "lingdu"; //数据库用户名
				String password = "123456"; //数据库用户密码
				Connection conn = DriverManager.getConnection(url, username, password); //连接状态
		%>
		<table border="2">
			<tr>
				<th>流水单号</th>
				<th>交易时间</th>
				<th>付款方</th>
				<th>收款方</th>
				<th>交易金额</th>
			</tr>
			<%
				    Statement stmt = null;
					ResultSet rs = null;
					String sql = "SELECT * FROM records;"; //查询语句
					stmt = conn.createStatement();
					rs = stmt.executeQuery(sql);
					out.print("<br/>");
					while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getString("流水单号")%></td>
				<td><%=rs.getString("交易时间")%></td>
				<td><%=rs.getString("付款方")%></td>
				<td><%=rs.getString("收款方")%></td>
				<td><%=rs.getString("交易金额")%></td>
			</tr>
			<%
				}
				} catch (Exception e) {
					e.printStackTrace();
					System.out.println("数据库连接失败");
				}
			%>
			</table>
</div>
</body>
</html>

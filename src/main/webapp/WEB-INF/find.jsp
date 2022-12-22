<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cn.bank.hpu.model.user"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
user u = (user)request.getAttribute("user");
%>
 
usersname:<%=u.getName() %>
sname:<%=u.getsname() %>
password:<%=u.getPassword() %>
 

</body>
</html>
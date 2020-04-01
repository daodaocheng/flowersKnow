<%@page import="java.sql.ResultSet"%>
<%@page import="com.sql.Dbtools"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String username = request.getParameter("username");
String password = request.getParameter("password");

Dbtools dbt = new Dbtools();

String sql = "select * from userlistinfo where name='" + username
			+ "' and pswd='" + password + "'";
	
ResultSet rs=dbt.executeQuery(sql);
	
if(rs.next()){
		//用户名和密码正确，可以登录
		
		//session
		session.setAttribute("username", username);
		session.setAttribute("role", rs.getString("role"));
		session.setAttribute("id", rs.getString("id"));
		
		
		
		request.setAttribute("info", "登录成功！");
		request.setAttribute("url", "index.jsp");
		request.getRequestDispatcher("jumper.jsp").forward(request,
				response);
	}else{
		//有错误，不可以登录
		request.setAttribute("info", "登录失败！");
		request.setAttribute("url", "login.jsp");
		request.getRequestDispatcher("jumper.jsp").forward(request,
				response);
	}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'dologin.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    This is my JSP page. <br>
  </body>
</html>

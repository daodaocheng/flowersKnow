<%@page import="java.sql.ResultSet"%>
<%@page import="com.sql.Dbtools"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String username=request.getParameter("username");
String password=request.getParameter("password");
String password2=request.getParameter("password2");
Dbtools dbt=new Dbtools();
if(!password.equals(password2)){
		request.setAttribute("info", "两次输入的密码不一样！");
		request.setAttribute("url", "register.jsp");
		request.getRequestDispatcher("jumper.jsp").forward(request,
				response);
	}else{
		String sql="select * from userlistinfo where name = '"+username+"'";
		ResultSet rs=dbt.executeQuery(sql);
		if(rs.next()){
			request.setAttribute("info", "已有此用户名，请输入新的用户名！");
			request.setAttribute("url", "register.jsp");
			request.getRequestDispatcher("jumper.jsp").forward(request, 
				response);
		}else{
			String sinsert="insert into userlistinfo(name,pswd,role,mobile)values('"
								+username+"','"+password+"','','')";
			dbt.executeUpdate(sinsert);
			request.setAttribute("info", "注册成功！");
			request.setAttribute("url", "index.jsp");
			request.getRequestDispatcher("jumper.jsp").forward(request, 
					response);
		}
	}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'doreg.jsp' starting page</title>
    
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

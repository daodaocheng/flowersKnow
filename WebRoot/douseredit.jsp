<%@page import="java.sql.ResultSet"%>
<%@page import="com.sql.Dbtools"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	//id=1&password1=123456&role=admin&mobile=110
	String id = request.getParameter("id");
	String password1 = request.getParameter("password1");
	String role = request.getParameter("role");
	String mobile = request.getParameter("mobile");
	int pagenumber=Integer.parseInt(request.getParameter("pagenumber"));
	System.out.println("password1=" + password1);

	Dbtools dbt = new Dbtools();
	String sql = "";
	ResultSet rs = null;
	//1.密码是否为空
	if (password1.equals("")) {
		//密码为空
		request.setAttribute("info", "密码为空，请重新输入！");
		request.setAttribute("url", "useredit.jsp?id=" + id);
		request.getRequestDispatcher("jumper.jsp").forward(request,
				response);
	} else {
		//
		sql = "UPDATE `userlistinfo` SET  `pswd` = '" + password1
				+ "',`role` = '" + role + "',`mobile` = '" + mobile
				+ "' WHERE `id` = " + id;
		dbt.executeUpdate(sql);
		request.setAttribute("info", "修改成功！");
		request.setAttribute("url", "userlist.jsp?pagenumber="+pagenumber);
		request.getRequestDispatcher("jumper.jsp").forward(request,
				response);
	}
%>

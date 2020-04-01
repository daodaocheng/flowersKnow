<%@page import="com.sql.Dbtools"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String ftype=request.getParameter("ftype");
	String id=request.getParameter("id");
	Dbtools dbt=new Dbtools();
	String sql="";
	if (ftype.equals("familyflower")) {
		sql="DELETE FROM `familyflower` WHERE id="+id;
	} else if (ftype.equals("flowertec")) {
		sql="DELETE FROM `flowertec` WHERE id="+id;
	} else if (ftype.equals("waterflower")) {
		sql="DELETE FROM `waterflower` WHERE id="+id;
	} else if (ftype.equals("pjflower")) {
		sql="DELETE FROM `pjflower` WHERE id="+id;
	}
	dbt.executeUpdate(sql);
	
	if (ftype.equals("familyflower")) {
		request.setAttribute("info", "教程修改成功！");
		request.setAttribute("url", "editfamilyflower.jsp");
		request.getRequestDispatcher("jumper.jsp").forward(request,
				response);
	} else if (ftype.equals("flowertec")) {
		request.setAttribute("info", "教程修改成功！");
		request.setAttribute("url", "editflowertec.jsp");
		request.getRequestDispatcher("jumper.jsp").forward(request,
				response);
	} else if (ftype.equals("waterflower")) {
		request.setAttribute("info", "教程修改成功！");
		request.setAttribute("url", "editwaterflower.jsp");
		request.getRequestDispatcher("jumper.jsp").forward(request,
				response);
	} else if (ftype.equals("pjflower")) {
		request.setAttribute("info", "教程修改成功！");
		request.setAttribute("url", "editpjflower.jsp");
		request.getRequestDispatcher("jumper.jsp").forward(request,
				response);
	}
%>

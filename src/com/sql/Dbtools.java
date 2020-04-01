package com.sql;

import java.sql.*;
import java.util.ArrayList;

public class Dbtools {
	
	/***
	 * 增加、删除�?修改
	 * insert/delete/update
	 * @param sql
	 * @return
	 */
	public int executeUpdate(String sql) {
		//连接字符�?

		int rtv = 0;//returnValue

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager
					.getConnection("jdbc:mysql://127.0.0.1/usermanage?user=root&password=root");
			Statement stmt = null;//状�?、语�?
			// 建立连接
			stmt = conn.createStatement();

			rtv = stmt.executeUpdate(sql);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return rtv;
	}
	/***
	 * 查询信息
	 * @param sql
	 * @return
	 */
	public ResultSet executeQuery(String sql) {
		//连接字符�?

		ResultSet rs = null;//结果�?

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager
					.getConnection("jdbc:mysql://localhost/usermanage?user=root&password=root");
			Statement stmt = null;//状�?、语�?
			// 建立连接
			stmt = conn.createStatement();

			//结果�?
			rs = stmt.executeQuery(sql);//已经完成查询

		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	

	
	
	
}

<%@page import="com.sql.Dbtools"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>

<%!/**
	 * 得到文件的短路径, 不包括目录.
	 * @date 2005-10-18
	 *
	 * @param fileName
	 *            需要处理的文件的名字.
	 * @return the short version of the file's name.
	 */
	public static String getShortFileName(String fileName) {
		if (fileName != null) {
			String oldFileName = new String(fileName);

			fileName = fileName.replace('\\', '/');

			// Handle dir
			if (fileName.endsWith("/")) {
				int idx = fileName.indexOf('/');
				if (idx == -1 || idx == fileName.length() - 1) {
					return oldFileName;
				} else {
					return oldFileName
							.substring(idx + 1, fileName.length() - 1);
				}

			}
			if (fileName.lastIndexOf("/") > 0) {
				fileName = fileName.substring(fileName.lastIndexOf("/") + 1,
						fileName.length());
			}

			return fileName;
		}
		return "";
	}%>
<%
	String fname = "";
	String ftype = "";
	String fbrief = "";
	String finfo = "";
	String fimage = "";
	String sql = "";
	// Check that we have a file upload request
	boolean isMultipart = ServletFileUpload.isMultipartContent(request);

	if (isMultipart) {
		// Create a factory for disk-based file items
		org.apache.commons.fileupload.FileItemFactory factory = new DiskFileItemFactory();

		// Create a new file upload handler
		ServletFileUpload upload = new ServletFileUpload(factory);
		upload.setHeaderEncoding("utf-8");
		// Parse the request
		List /* FileItem */items = upload.parseRequest(request);

		// Process the uploaded items
		Iterator iter = items.iterator();
		while (iter.hasNext()) {
			org.apache.commons.fileupload.FileItem item = (org.apache.commons.fileupload.FileItem) iter
					.next();
			String name = item.getFieldName();
			String value = item.getString("utf-8");
			//判断表单的类型
			if (item.isFormField()) {
				out.println("name=" + name + ";value=" + value
						+ "<br/>");
				//id,fname,fbrief,fmaterial,fmethod,fhit,fimg
				if (name.equals("fname")) {
					fname = value;
				}
				if (name.equals("fbrief")) {
					fbrief = value;
				}
				if (name.equals("ftype")) {
					ftype = value;
				}
				if (name.equals("finfo")) {
					finfo = value;
				}

				//System.out.println("一次循环开始");
				//System.out.println("fname="+fname);
				//System.out.println("fbrief="+fbrief);
				//System.out.println("fmaterial="+fmaterial);
				//System.out.println("fmethod="+fmethod);			
				//System.out.println("一次循环结束");

			} else {
				String fieldName = item.getFieldName();//file
				String fileName = item.getName();
				String contentType = item.getContentType();
				boolean isInMemory = item.isInMemory();
				long sizeInBytes = item.getSize();

				out.println("上传的文件名是:" + fileName);
				fimage = fileName;

				if (fileName == null || fileName.length() == 0) {
					out.println("请选择一个文件来上传");
				} else {

					java.io.FileOutputStream fout = new java.io.FileOutputStream(
							application.getRealPath("images/"
									+ getShortFileName(fileName)));
					fout.write(item.get());
					fout.close();
				}
			}
		}
	} else {
		out.println("请用文件上传表单来访问这个页面");
	}
	//数据收集完成
	//id,fname,fbrief,fmaterial,fmethod,fhit,fimg
	if (ftype.equals("家庭养花")) {
		sql = "insert into familyflower (ftitle,fbrief,finfo,fimage) values('"
				+ fname
				+ "','"
				+ fbrief
				+ "','"
				+ finfo
				+ "','"
				+ fimage + "')";
	} else if (ftype.equals("养花技巧")) {
		sql = "insert into flowertec (ftitle,fbrief,finfo,fimage) values('"
				+ fname
				+ "','"
				+ fbrief
				+ "','"
				+ finfo
				+ "','"
				+ fimage + "')";
	} else if (ftype.equals("水培花卉")) {
		sql = "insert into waterflower (ftitle,fbrief,finfo,fimage) values('"
				+ fname
				+ "','"
				+ fbrief
				+ "','"
				+ finfo
				+ "','"
				+ fimage + "')";
	} else if (ftype.equals("盆景制作")) {
		sql = "insert into pjflower (ftitle,fbrief,finfo,fimage) values('"
				+ fname
				+ "','"
				+ fbrief
				+ "','"
				+ finfo
				+ "','"
				+ fimage + "')";
	}

	Dbtools dbt = new Dbtools();
	dbt.executeUpdate(sql);

	if (ftype.equals("家庭养花")) {
		request.setAttribute("info", "添加教程成功！");
		request.setAttribute("url", "familyflower.jsp");
		request.getRequestDispatcher("jumper.jsp").forward(request,
				response);
	} else if (ftype.equals("养花技巧")) {
		request.setAttribute("info", "添加教程成功！");
		request.setAttribute("url", "flowertec.jsp");
		request.getRequestDispatcher("jumper.jsp").forward(request,
				response);
	} else if (ftype.equals("水培花卉")) {
		request.setAttribute("info", "添加教程成功！");
		request.setAttribute("url", "waterflower.jsp");
		request.getRequestDispatcher("jumper.jsp").forward(request,
				response);
	} else if (ftype.equals("盆景制作")) {
		request.setAttribute("info", "添加教程成功！");
		request.setAttribute("url", "pjflower.jsp");
		request.getRequestDispatcher("jumper.jsp").forward(request,
				response);
	}
%>
/*

 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.68
 * Generated at: 2016-06-07 05:29:33 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.sql.Dbtools;
import java.util.*;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;

public final class dofloweredit_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

/**
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
	}
  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write('\r');
      out.write('\n');

	String id = "";
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
				if (name.equals("id")) {
					id = value;
				}
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
	Dbtools dbt = new Dbtools();
	if (ftype.equals("家庭养花")) {
		sql = "UPDATE `usermanage`.`familyflower` SET `ftitle` = '"
				+ fname + "',`fbrief` ='" + fbrief + "',finfo='"
				+ finfo + ",fimage='" + fimage + "' WHERE `id` =" + id;
	} else if (ftype.equals("养花技巧")) {
		sql = "UPDATE `usermanage`.`flowertec` SET `ftitle` = '"
				+ fname + "',`fbrief` ='" + fbrief + "',finfo='"
				+ finfo + ",fimage='" + fimage + "' WHERE `id` =" + id;
	} else if (ftype.equals("水培花卉")) {
		sql = "UPDATE `usermanage`.`waterflower` SET `ftitle` = '"
				+ fname + "',`fbrief` ='" + fbrief + "',finfo='"
				+ finfo + ",fimage='" + fimage + "' WHERE `id` =" + id;
	} else if (ftype.equals("盆景制作")) {
		sql = "UPDATE `usermanage`.`pjflower` SET `ftitle` = '" 
				+ fname	+ "',`fbrief` ='" + fbrief + "',finfo='" 
				+ finfo + ",fimage='" + fimage + "' WHERE `id` =" + id;
	}
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

      out.write('\r');
      out.write('\n');
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

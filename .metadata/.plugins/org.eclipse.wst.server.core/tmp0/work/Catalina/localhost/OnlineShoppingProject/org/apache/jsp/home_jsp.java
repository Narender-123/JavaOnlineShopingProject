/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.31
 * Generated at: 2021-05-31 22:11:03 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import project.ConnectionProvider;
import java.sql.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/footer.jsp", Long.valueOf(1622468521904L));
    _jspx_dependants.put("/header.jsp", Long.valueOf(1622497133592L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("project.ConnectionProvider");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
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

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			"error.jsp", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<!--All the Utility CDN-->\r\n");
      out.write("<link\r\n");
      out.write("\thref=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css\"\r\n");
      out.write("\trel=\"stylesheet\"\r\n");
      out.write("\tintegrity=\"sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6\"\r\n");
      out.write("\tcrossorigin=\"anonymous\">\r\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\"\r\n");
      out.write("\tintegrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\"\r\n");
      out.write("\tcrossorigin=\"anonymous\"></script>\r\n");
      out.write("<script\r\n");
      out.write("\tsrc=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\"\r\n");
      out.write("\tintegrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\"\r\n");
      out.write("\tcrossorigin=\"anonymous\"></script>\r\n");
      out.write("<script\r\n");
      out.write("\tsrc=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js\"\r\n");
      out.write("\tintegrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\"\r\n");
      out.write("\tcrossorigin=\"anonymous\"></script>\r\n");
      out.write("<!--All the Utility CDN-->\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("\thref=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\"\r\n");
      out.write("\tintegrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\"\r\n");
      out.write("\tcrossorigin=\"anonymous\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/home-style.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/Catalog.css\">\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("\thref=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("<script src='https://kit.fontawesome.com/a076d05399.js'></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<!--Header-->\r\n");
      out.write("<br>\r\n");
      out.write("<div >\r\n");
      out.write("\r\n");
      out.write("\t");

		String email = session.getAttribute("email").toString();
	
      out.write("\r\n");
      out.write("\t<nav class=\"navbar navbar-expand-lg navbar-dark bg-dark\">\r\n");
      out.write("\t\t<img src=\"images/logo.png\" style=\"height: 80px; width: 120px\" />\r\n");
      out.write("\t\t<h4 >\r\n");
      out.write("\t\t\t<a href=\"\" style=\"color: yellow\">");
      out.print(email);
      out.write(" <i class='fas fa-user-alt'></i></a>\r\n");
      out.write("\t\t</h4>\r\n");
      out.write("\t\t<div class=\"collapse navbar-collapse\" id=\"navbarNav\">\r\n");
      out.write("\t\t\t<ul class=\"navbar-nav\">\r\n");
      out.write("\t\t\t\t<li class=\"nav-item active\"><a href=\"home.jsp\" class=\"nav-link\">Home<i\r\n");
      out.write("\t\t\t\t\t\tclass=\"fa fa-institution\"></i></a></li>\r\n");
      out.write("\t\t\t\t<li class=\"nav-item\"><a href=\"myCart.jsp\" class=\"nav-link\">My\r\n");
      out.write("\t\t\t\t\t\tCart<i class='fas fa-cart-arrow-down'></i>\r\n");
      out.write("\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t<li class=\"nav-item\"><a href=\"myOrders.jsp\" class=\"nav-link\">My\r\n");
      out.write("\t\t\t\t\t\tOrders <i class='fab fa-elementor'></i>\r\n");
      out.write("\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t<li class=\"nav-item\"><a href=\"changeDetails.jsp\"\r\n");
      out.write("\t\t\t\t\tclass=\"nav-link\">Change Details <i\r\n");
      out.write("\t\t\t\t\t\tclass=\"fa fa-edit\"></i></a></li>\r\n");
      out.write("\t\t\t\t<li class=\"nav-item\"><a href=\"messageUs.jsp\" class=\"nav-link\">Message\r\n");
      out.write("\t\t\t\t\t\tUs <i class='fas fa-comment-alt'></i>\r\n");
      out.write("\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t<li class=\"nav-item\"><a href=\"about.jsp\" class=\"nav-link\">About\r\n");
      out.write("\t\t\t\t\t\t<i class=\"fa fa-address-book\"></i>\r\n");
      out.write("\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t<li class=\"nav-item\"><a href=\"logout.jsp\" class=\"nav-link\">Logout\r\n");
      out.write("\t\t\t\t\t\t<i class='fas fa-share-square'></i>\r\n");
      out.write("\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t<div class=\"search-container\">\r\n");
      out.write("\t\t\t<form action=\"searchHome.jsp\" method=\"post\">\r\n");
      out.write("\t\t\t\t<input type=\"text\" name=\"search\" placeholder=\"search\">\r\n");
      out.write("\t\t\t\t<button type=\"submit\">\r\n");
      out.write("\t\t\t\t\t<i class=\"fa fa-search\"></i>\r\n");
      out.write("\t\t\t\t</button>\r\n");
      out.write("\t\t\t</form>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</nav>\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("<br>\r\n");
      out.write("<!--table-->\r\n");
      out.write("\r\n");
      out.write("<!-- <a href=\"home.jsp\">Home<i class=\"fa fa-institution\"></i></a>\r\n");
      out.write("            <a href=\"myCart.jsp\">My Cart<i class='fas fa-cart-arrow-down'></i></a>\r\n");
      out.write("            <a href=\"myOrders.jsp\">My Orders  <i class='fab fa-elementor'></i></a>\r\n");
      out.write("            <a href=\"changeDetails.jsp\">Change Details <i class=\"fa fa-edit\"></i></a>\r\n");
      out.write("            <a href=\"messageUs.jsp\">Message Us <i class='fas fa-comment-alt'></i></a>\r\n");
      out.write("            <a href=\"about.jsp\">About <i class=\"fa fa-address-book\"></i></a>\r\n");
      out.write("            <a href=\"logout.jsp\">Logout <i class='fas fa-share-square'></i></a> -->");
      out.write('\r');
      out.write('\n');
      out.write(" <div class=\"footer\">\r\n");
      out.write(" \t<p>Ecommerce Website @2021</p>\r\n");
      out.write(" </div>");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Home</title>\r\n");
      out.write("<style>\r\n");
      out.write("h3 {\r\n");
      out.write("\tcolor: yellow;\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div style=\"color: white; text-align: center; font-size: 30px;\">\r\n");
      out.write("\t\tHome <i class=\"fa fa-institution\"></i>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t");

		String msg = request.getParameter("msg");
		if ("added".equals(msg)) {
	
      out.write("\r\n");
      out.write("\t<h3 class=\"alert\">Product added successfully!</h3>\r\n");
      out.write("\t");

		}
	
      out.write('\r');
      out.write('\n');
      out.write('	');

		if ("exist".equals(msg)) {
	
      out.write("\r\n");
      out.write("\t<h3 class=\"alert\">Product already exist in you cart! Quantity\r\n");
      out.write("\t\tincreased!</h3>\r\n");
      out.write("\t");

		}
	
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t");

		if ("invalid".equals(msg)) {
	
      out.write("\r\n");
      out.write("\t<h3 class=\"alert\">Something Went Wrong Try again!</h3>\r\n");
      out.write("\t");

		}
	
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"container bg-light rounded\">\r\n");
      out.write("\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t<div class=\"col-lg-12\">\r\n");
      out.write("\t\t\t\t<div class=\"h4 font-weight-bold text-center py-3\">Product\r\n");
      out.write("\t\t\t\t\tCatalog</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t");

				try {
					Connection con = ConnectionProvider.getCon();
					Statement smt = con.createStatement();
					ResultSet rs = smt.executeQuery("Select * From Product where active = 'Yes'");
					while (rs.next()) {
			
      out.write("\r\n");
      out.write("\t\t\t<div class=\"col-lg-3 col-md-6 my-lg-0 my-3\">\r\n");
      out.write("\t\t\t\t<div class=\"box bg-white\">\r\n");
      out.write("\t\t\t\t\t<div class=\"d-flex align-items-center\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"rounded-circle mx-3 text-center d-flex align-items-center justify-content-center blue\">\r\n");
      out.write("\t\t\t\t\t\t\t<a href=\"images/");
      out.print(rs.getString(6));
      out.write("\" class=\"thumbnail\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<p>");
      out.print(rs.getString(2));
      out.write("</p> <img\r\n");
      out.write("\t\t\t\t\t\t\t\tsrc=\"images/");
      out.print(rs.getString(6));
      out.write("\"\r\n");
      out.write("\t\t\t\t\t\t\t\tstyle=\"height: 200px; width: 150px;\" />\r\n");
      out.write("\t\t\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<i class=\"fa fa-inr\"> </i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
      out.print(rs.getString(4));
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\t\t<a href=\"addToCartAction.jsp?id=");
      out.print(rs.getString(1));
      out.write("\" class=\"d-flex\">Add to\r\n");
      out.write("\t\t\t\t\t\t\t\tcart <i class='fas fa-cart-plus'></i>\r\n");
      out.write("\t\t\t\t\t\t\t</a> \r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<br>\r\n");
      out.write("\t\t\t<br>\r\n");
      out.write("\t\t\t<br>\r\n");
      out.write("\t\t\t");

				}
				} catch (Exception ae) {
					ae.printStackTrace();
				}
			
      out.write("\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<br>\r\n");
      out.write("\t<br>\r\n");
      out.write("\t<br>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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

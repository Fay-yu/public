/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.85
 * Generated at: 2018-11-29 02:53:14 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.lava.lavafaq.bean.Person;
import java.util.*;

public final class checkUser_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"zh-cn\">\r\n");
      out.write("  <head>\r\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("\t  <meta charset=\"utf-8\">\r\n");
      out.write("\t  <!-- Title and other stuffs -->\r\n");
      out.write("\t  <title>查看用户</title> \r\n");
      out.write("\t  <meta name=\"keywords\" content=\"Bootstrap后台管理系统\" />\r\n");
      out.write("\t  <meta name=\"description\" content=\"Bootstrap后台管理系统\" />\r\n");
      out.write("\t  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("\t  <meta name=\"author\" content=\"\">\r\n");
      out.write("\t   <link href=\"");
      out.print(path);
      out.write("/pages/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("\t  <!-- Stylesheets -->\r\n");
      out.write("\t  <link href=\"");
      out.print(path);
      out.write("/pages/style/bootstrap.css\" rel=\"stylesheet\">\r\n");
      out.write("\t  <!-- Font awesome icon -->\r\n");
      out.write("\t  <link rel=\"stylesheet\" href=\"");
      out.print(path);
      out.write("/pages/style/font-awesome.css\"> \r\n");
      out.write("\t  <!-- jQuery UI -->\r\n");
      out.write("\t  <link rel=\"stylesheet\" href=\"");
      out.print(path);
      out.write("/pages/style/jquery-ui.css\"> \r\n");
      out.write("\t  <!-- Calendar -->\r\n");
      out.write("\t  <link rel=\"stylesheet\" href=\"");
      out.print(path);
      out.write("/pages/style/fullcalendar.css\">\r\n");
      out.write("\t  <!-- prettyPhoto -->\r\n");
      out.write("\t  <link rel=\"stylesheet\" href=\"");
      out.print(path);
      out.write("/pages/style/prettyPhoto.css\">  \r\n");
      out.write("\t  <!-- Star rating -->\r\n");
      out.write("\t  <link rel=\"stylesheet\" href=\"");
      out.print(path);
      out.write("/pages/style/rateit.css\">\r\n");
      out.write("\t  <!-- Date picker -->\r\n");
      out.write("\t  <link rel=\"stylesheet\" href=\"");
      out.print(path);
      out.write("/pages/style/bootstrap-datetimepicker.min.css\">\r\n");
      out.write("\t  <!-- CLEditor -->\r\n");
      out.write("\t  <link rel=\"stylesheet\" href=\"");
      out.print(path);
      out.write("/pages/style/jquery.cleditor.css\"> \r\n");
      out.write("\t  <!-- Uniform -->\r\n");
      out.write("\t  <link rel=\"stylesheet\" href=\"");
      out.print(path);
      out.write("/pages/style/uniform.default.css\"> \r\n");
      out.write("\t  <!-- Bootstrap toggle -->\r\n");
      out.write("\t  <link rel=\"stylesheet\" href=\"");
      out.print(path);
      out.write("/pages/style/bootstrap-switch.css\">\r\n");
      out.write("\t  <!-- Main stylesheet -->\r\n");
      out.write("\t  <link href=\"");
      out.print(path);
      out.write("/pages/style/style2.css\" rel=\"stylesheet\">\r\n");
      out.write("\t  <!-- Widgets stylesheet -->\r\n");
      out.write("\t  <link href=\"");
      out.print(path);
      out.write("/pages/style/widgets.css\" rel=\"stylesheet\">   \r\n");
      out.write("\t  \r\n");
      out.write("\t  \r\n");
      out.write("\t  <!-- HTML5 Support for IE -->\r\n");
      out.write("\t  <!--[if lt IE 9]>\r\n");
      out.write("\t  <script src=\"js/html5shim.js\"></script>\r\n");
      out.write("\t  <![endif]-->\r\n");
      out.write("\t\r\n");
      out.write("\t  <!-- Favicon -->\r\n");
      out.write("\t  <link rel=\"shortcut icon\" href=\"");
      out.print(path);
      out.write("/pages/img/favicon/favicon.png\">\r\n");
      out.write("\r\n");
      out.write("  </head>\r\n");
      out.write("  \r\n");
      out.write("  <body>\r\n");
      out.write("  \t\t");

		ArrayList<Person> list = (ArrayList) request.getSession().getAttribute("list");
	
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"content\">\r\n");
      out.write("\t  \t<!-- Main bar -->\r\n");
      out.write("\t  \t<div class=\"mainbar\">\r\n");
      out.write("\t\r\n");
      out.write("\t      <!-- Page heading -->\r\n");
      out.write("\t      <div class=\"page-head\">\r\n");
      out.write("\t        <h2 class=\"pull-left\"><i class=\"icon-table\"></i> 查看用户</h2>\r\n");
      out.write("\t\r\n");
      out.write("\t        <!-- Breadcrumb -->\r\n");
      out.write("\t        <div class=\"bread-crumb pull-right\">\r\n");
      out.write("\t          <a href=\"index.html\"><i class=\"icon-home\"></i> Home</a> \r\n");
      out.write("\t          <!-- Divider -->\r\n");
      out.write("\t          <span class=\"divider\">/</span> \r\n");
      out.write("\t        </div>\r\n");
      out.write("\t\r\n");
      out.write("\t        <div class=\"clearfix\"></div>\r\n");
      out.write("\t\r\n");
      out.write("\t      </div>\r\n");
      out.write("\t      <!-- Page heading ends -->\r\n");
      out.write("\t\r\n");
      out.write("\t\t    <!-- Matter -->\r\n");
      out.write("\t\r\n");
      out.write("\t\t    <div class=\"matter\">\r\n");
      out.write("\t        <div class=\"container\">\r\n");
      out.write("\t\r\n");
      out.write("\t          <!-- Table -->\r\n");
      out.write("\t\r\n");
      out.write("\t            <div class=\"row\">\r\n");
      out.write("\t\r\n");
      out.write("\t              <div class=\"col-md-12\">\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t                <div class=\"widget\">\r\n");
      out.write("\t\r\n");
      out.write("\t                <div class=\"widget-head\">\r\n");
      out.write("\t                  <div class=\"pull-left\">Tables</div>\r\n");
      out.write("\t                  <div class=\"widget-icons pull-right\">\r\n");
      out.write("\t                    <a href=\"#\" class=\"wminimize\"><i class=\"icon-chevron-up\"></i></a> \r\n");
      out.write("\t                    <a href=\"#\" class=\"wclose\"><i class=\"icon-remove\"></i></a>\r\n");
      out.write("\t                  </div>  \r\n");
      out.write("\t                  <div class=\"clearfix\"></div>\r\n");
      out.write("\t                </div>\r\n");
      out.write("\t\r\n");
      out.write("\t                  <div class=\"widget-content\">\r\n");
      out.write("\t\r\n");
      out.write("\t                    <table class=\"table table-striped table-bordered table-hover\">\r\n");
      out.write("\t                      <thead>\r\n");
      out.write("\t                        <tr>\r\n");
      out.write("\t                          <th>id</th>\r\n");
      out.write("\t                          <th>用户名</th>\r\n");
      out.write("\t                          <th>邮箱</th>\r\n");
      out.write("\t                          <th>状态</th>\r\n");
      out.write("\t                          <th>联系地址</th>\r\n");
      out.write("\t                          <th>联系电话</th>\r\n");
      out.write("\t                          <th>权限</th>\r\n");
      out.write("\t                        </tr>\r\n");
      out.write("\t                      </thead>\r\n");
      out.write("\t                      <tbody id=\"all\">\r\n");
      out.write("\t\t\t\t\t\t\t");
 
								for(Person person:list){
									
									
							 
      out.write("\r\n");
      out.write("\t                        <tr>\r\n");
      out.write("\t                          <td>");
      out.print(person.getId() );
      out.write("</td>\r\n");
      out.write("\t                          <td>");
      out.print(person.getUsername() );
      out.write("</td>\r\n");
      out.write("\t                          <td>");
      out.print(person.getMail() );
      out.write("</td>\r\n");
      out.write("\t                          ");
if(person.getState()==1){ 
      out.write("\r\n");
      out.write("\t                          <td>邮箱已激活</td>\r\n");
      out.write("\t                          ");
}else{ 
      out.write("\r\n");
      out.write("\t                          <td>邮箱未激活</td>\r\n");
      out.write("\t                          ");
} 
      out.write("\r\n");
      out.write("\t                          <td>");
      out.print(person.getAddress() );
      out.write("</td>\r\n");
      out.write("\t                          <td>");
      out.print(person.getTelPhone() );
      out.write("</td>\r\n");
      out.write("\t                         \r\n");
      out.write("\t                          ");
if(person.getPower()==1){ 
      out.write("\r\n");
      out.write("\t                          <td>管理员</td>\r\n");
      out.write("\t                          ");
}else{ 
      out.write("\r\n");
      out.write("\t                          <td>普通用户</td>\r\n");
      out.write("\t                          ");
} 
      out.write("\r\n");
      out.write("\t                        </tr>\r\n");
      out.write("\t                        ");
} 
      out.write("\r\n");
      out.write("\t                      </tbody>\r\n");
      out.write("\t                    </table>\r\n");
      out.write("\t\r\n");
      out.write("\t                    <div class=\"widget-foot\">\r\n");
      out.write("\t\r\n");
      out.write("\t                     \r\n");
      out.write("\t                        <ul id=\"pagination-demo\" class=\"pagination-sm\"></ul>\r\n");
      out.write("\t                     \r\n");
      out.write("\t                      <div class=\"clearfix\"></div> \r\n");
      out.write("\t\r\n");
      out.write("\t                    </div>\r\n");
      out.write("\t\r\n");
      out.write("\t                  </div>\r\n");
      out.write("\t\r\n");
      out.write("\t                </div>\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t              </div>\r\n");
      out.write("\t\r\n");
      out.write("\t            </div>\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t            </div>\r\n");
      out.write("\t\r\n");
      out.write("\t        </div>\r\n");
      out.write("\t\t\t  </div>\r\n");
      out.write("\t\r\n");
      out.write("\t\t\t<!-- Matter ends -->\r\n");
      out.write("\t\r\n");
      out.write("\t    </div>\r\n");
      out.write("\t\r\n");
      out.write("\t   <!-- Mainbar ends -->\t    \t\r\n");
      out.write("\t   <div class=\"clearfix\"></div>\r\n");
      out.write("\t\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<!-- Content ends -->\r\n");
      out.write("\t\r\n");
      out.write("\t<!-- Footer starts -->\r\n");
      out.write("\t<footer>\r\n");
      out.write("\t  <div class=\"container\">\r\n");
      out.write("\t    <div class=\"row\">\r\n");
      out.write("\t      <div class=\"col-md-12\">\r\n");
      out.write("\t            <!-- Copyright info -->\r\n");
      out.write("\t            <p class=\"copy\">Copyright &copy; 2012 | <a href=\"#\">Your Site</a> </p>\r\n");
      out.write("\t      </div>\r\n");
      out.write("\t    </div>\r\n");
      out.write("\t  </div>\r\n");
      out.write("\t</footer> \t\r\n");
      out.write("\t\r\n");
      out.write("\t<!-- Footer ends -->\r\n");
      out.write("\t\r\n");
      out.write("\t<!-- Scroll to top -->\r\n");
      out.write("\t<span class=\"totop\"><a href=\"#\"><i class=\"icon-chevron-up\"></i></a></span> \r\n");
      out.write("\t\r\n");
      out.write("\t<!-- JS -->\r\n");
      out.write("\t<script src=\"");
      out.print(path);
      out.write("/pages/js/jquery.js\"></script> <!-- jQuery -->\r\n");
      out.write("\t<script src=\"");
      out.print(path);
      out.write("/pages/js/bootstrap.js\"></script> <!-- Bootstrap -->\r\n");
      out.write("\t<script src=\"");
      out.print(path);
      out.write("/pages/js/jquery-ui-1.9.2.custom.min.js\"></script> <!-- jQuery UI -->\r\n");
      out.write("\t<script src=\"");
      out.print(path);
      out.write("/pages/js/fullcalendar.min.js\"></script> <!-- Full Google Calendar - Calendar -->\r\n");
      out.write("\t<script src=\"");
      out.print(path);
      out.write("/pages/js/jquery.rateit.min.js\"></script> <!-- RateIt - Star rating -->\r\n");
      out.write("\t<script src=\"");
      out.print(path);
      out.write("/pages/js/jquery.prettyPhoto.js\"></script> <!-- prettyPhoto -->\r\n");
      out.write("\t\r\n");
      out.write("\t<!-- jQuery Flot -->\r\n");
      out.write("\t<script src=\"");
      out.print(path);
      out.write("/pages/js/excanvas.min.js\"></script>\r\n");
      out.write("\t<script src=\"");
      out.print(path);
      out.write("/pages/js/jquery.flot.js\"></script>\r\n");
      out.write("\t<script src=\"");
      out.print(path);
      out.write("/pages/js/jquery.flot.resize.js\"></script>\r\n");
      out.write("\t<script src=\"");
      out.print(path);
      out.write("/pages/js/jquery.flot.pie.js\"></script>\r\n");
      out.write("\t<script src=\"");
      out.print(path);
      out.write("/pages/js/jquery.flot.stack.js\"></script>\r\n");
      out.write("\t\r\n");
      out.write("\t<!-- jQuery Notification - Noty -->\r\n");
      out.write("\t<script src=\"");
      out.print(path);
      out.write("/pages/js/jquery.noty.js\"></script> <!-- jQuery Notify -->\r\n");
      out.write("\t<script src=\"");
      out.print(path);
      out.write("/pages/js/themes/default.js\"></script> <!-- jQuery Notify -->\r\n");
      out.write("\t<script src=\"");
      out.print(path);
      out.write("/pages/js/layouts/bottom.js\"></script> <!-- jQuery Notify -->\r\n");
      out.write("\t<script src=\"");
      out.print(path);
      out.write("/pages/js/layouts/topRight.js\"></script> <!-- jQuery Notify -->\r\n");
      out.write("\t<script src=\"");
      out.print(path);
      out.write("/pages/js/layouts/top.js\"></script> <!-- jQuery Notify -->\r\n");
      out.write("\t<!-- jQuery Notification ends -->\r\n");
      out.write("\t\r\n");
      out.write("\t<script src=\"");
      out.print(path);
      out.write("/pages/js/sparklines.js\"></script> <!-- Sparklines -->\r\n");
      out.write("\t<script src=\"");
      out.print(path);
      out.write("/pages/js/jquery.cleditor.min.js\"></script> <!-- CLEditor -->\r\n");
      out.write("\t<script src=\"");
      out.print(path);
      out.write("/pages/js/bootstrap-datetimepicker.min.js\"></script> <!-- Date picker -->\r\n");
      out.write("\t<script src=\"");
      out.print(path);
      out.write("/pages/js/jquery.uniform.min.js\"></script> <!-- jQuery Uniform -->\r\n");
      out.write("\t<script src=\"");
      out.print(path);
      out.write("/pages/js/bootstrap-switch.min.js\"></script> <!-- Bootstrap Toggle -->\r\n");
      out.write("\t<script src=\"");
      out.print(path);
      out.write("/pages/js/filter.js\"></script> <!-- Filter for support page -->\r\n");
      out.write("\t<script src=\"");
      out.print(path);
      out.write("/pages/js/custom.js\"></script> <!-- Custom codes -->\r\n");
      out.write("\t<script src=\"");
      out.print(path);
      out.write("/pages/js/charts.js\"></script> <!-- Charts & Graphs -->\r\n");
      out.write("    <script src=\"");
      out.print(path);
      out.write("/pages/js/jquery.twbsPagination.js\" type=\"text/javascript\"></script>\r\n");
      out.write("    <script src=\"");
      out.print(path);
      out.write("/pages/js/zzsc.js\" type=\"text/javascript\"></script>\r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
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

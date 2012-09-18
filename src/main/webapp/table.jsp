<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>table</h1>
<%
ApplicationContext ac = 
	WebApplicationContextUtils.getWebApplicationContext(request.getSession().getServletContext());
DataSource ds = ac.getBean(DataSource.class);
Connection c = ds.getConnection();

try {
	ResultSet rs = c.getMetaData().getTables(null, null, request.getParameter("name"), null);
	if (rs.next()) {
		response.getWriter().println("Yes");
	}
	else {
		response.getWriter().println("No");
	}
}
catch(Exception e) {
	response.getWriter().println(e.getMessage());
}

%>

</body>
</html>
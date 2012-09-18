<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.Properties"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Cloud Properties</title>
</head>
<body>
<h1>properties</h1>
<%
	ApplicationContext ac = WebApplicationContextUtils.getWebApplicationContext(request.getSession().getServletContext());
	Properties ps = ac.getBean("cloudProperties", Properties.class);
	for(Entry e : ps.entrySet()) {
		response.getWriter().println(e.getKey() + " - " + e.getValue() + "<br/>");
	}
%>

</body>
</html>
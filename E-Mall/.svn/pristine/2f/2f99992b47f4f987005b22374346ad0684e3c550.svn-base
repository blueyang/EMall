<%@page import="ustc.sse.water.constants.CommonConstant"%>
<%@page import="ustc.sse.water.pojo.Buyer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>welcome</title>
</head>
<body>
Hello<%Buyer buyer = (Buyer)request.getSession().getAttribute(CommonConstant.WWW_SESSION_NAME);
		out.print(buyer.getUsername());%>
</body>
</html>
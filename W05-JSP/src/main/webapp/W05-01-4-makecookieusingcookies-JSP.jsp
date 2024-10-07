<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "util.Cookies" %>
<!DOCTYPE html>

<%
	response.addCookie(Cookies.createCookie("name", "홍길동"));
	response.addCookie(
		Cookies.createCookie("id", "madvirus", "webapp", -1));
%>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Cookies 사용 예</title>
	</head>
	
	<body>
		Cookies를 사용하여 쿠키 생성
	</body>
</html>
<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head><title>include 디렉티브</title></head>
<body>

<%
	int number = 10;
%>

<%@ include file="W04-03-2-JSP.jspf" %>

공통변수 DATAFOLDER = "<%= dataFolder %>"

</body>
</html>

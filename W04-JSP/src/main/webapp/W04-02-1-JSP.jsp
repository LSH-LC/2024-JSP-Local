<%@ page contentType = "text/html; charset=utf-8" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<html>
<head><title>INFO</title></head>
<body>

include 전 name 파라미터 값: <%= request.getParameter("name") %>

<hr>

<jsp:include page="W04-02-2-JSP.jsp" flush="false">
	<jsp:param name="name" value="홍길동" />
</jsp:include>

<hr/>

include 후 name 파라미터 값: <%= request.getParameter("name") %>

</body>
</html>

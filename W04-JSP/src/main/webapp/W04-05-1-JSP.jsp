<%@ page contentType = "text/html; charset=utf-8" %>
<%
	String code = request.getParameter("code");
	String viewPageURI = null;
	
	if (code.equals("A")) {
		viewPageURI = "W04-05-A-JSP.jsp";
	} else if (code.equals("B")) {
		viewPageURI = "W04-05-B-JSP.jsp";
	} else if (code.equals("C")) {
		viewPageURI = "W04-05-C-JSP.jsp";
	}
%>
<jsp:forward page="<%= viewPageURI %>" />

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<% request.setCharacterEncoding("utf-8");%>

<% 
   String id = request.getParameter("id");
   String passwd= request.getParameter("passwd");
   String passwdcheck= request.getParameter("passwdcheck");
   String name = request.getParameter("name");
   String telephone = request.getParameter("telephone");
   String email = request.getParameter("email");
   Timestamp register=new Timestamp(System.currentTimeMillis());

   Connection conn=null;
   PreparedStatement pstmt=null;
   String str="";
 
  String jdbcUrl="jdbc:mysql://localhost:3306/register";
  String dbId="jspid";
  String dbPass="jsppass";
 	 
 Class.forName("com.mysql.jdbc.Driver");
  conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
 	
  String sql= "insert into register values (?,?,?,?,?,?,?)";
  pstmt=conn.prepareStatement(sql);
  pstmt.setString(1,id);
  pstmt.setString(2,passwd);
  pstmt.setString(3,passwdcheck);
  pstmt.setString(4,name);
  pstmt.setString(5,telephone);
  pstmt.setString(6,email);
  pstmt.setTimestamp(7,register);
  pstmt.executeUpdate();
 	 
  str= "register 테이블에 새로운 레코드를 추가했습니다.";
 %>

<html>
<head>
<title>레코드 추가</title>
</head>
<body>
  <%=str %>
</body>
</html>

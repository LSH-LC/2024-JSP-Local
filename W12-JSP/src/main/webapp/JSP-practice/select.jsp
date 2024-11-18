<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<html>
<head>
<title>레코드  표시</title>
</head>
<body>
  <h2>register 테이블의 레코드 표시</h2>
  <table border="1">
  <tr>
  	<td width="100">아이디</td>
  	<td width="100">패스워드</td>
  	<td width="100">이름</td>
  	<td width="100">전화번호</td>
  	<td width="100">이메일</td>
  	<td width="250">가입일자</td>
  </tr>
<%
  Connection conn=null;
  PreparedStatement pstmt=null;
  ResultSet rs=null;

  try
  {
	  String jdbcUrl="jdbc:mysql://localhost:3306/register";
	  String dbId="jspid";
	  String dbPass="jsppass";
	 
	  Class.forName("com.mysql.jdbc.Driver");
	  conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );

	 String sql= "select * from register";
	 pstmt=conn.prepareStatement(sql);
	 rs=pstmt.executeQuery();

	 while(rs.next())
	 {
	   String id= rs.getString("id");
       String pass= rs.getString("pass");
       String name= rs.getString("name");
       String telephone= rs.getString("telephone");
       String email= rs.getString("email");
       Timestamp register=rs.getTimestamp("reg_date");

%>
	   <tr>
	    <td width="100"><%=id%></td>
	    <td width="100"><%=pass%></td>
	    <td width="100"><%=name%></td>
	    <td width="100"><%=telephone%></td>
	    <td width="100"><%=email%></td>
	    <td width="250"><%=register.toString()%></td>
	   </tr>
<%    }  
  }
  catch(Exception e)
  { 
	 e.printStackTrace();
  }
  finally
  {
	 if(rs != null) 
	    try{rs.close();}catch(SQLException sqle){}
	 if(pstmt != null) 
		try{pstmt.close();}catch(SQLException sqle){}
	 if(conn != null) 
		try{conn.close();}catch(SQLException sqle){}
   }
%>
  </table>
</body>
</html>
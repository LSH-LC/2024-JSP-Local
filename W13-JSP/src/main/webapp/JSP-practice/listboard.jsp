<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<HTML>
<HEAD>
<TITLE> 게시판 </TITLE>

<META http-equiv="Content-Type" content="text/html; charset=euc-kr">
<style type='text/css'>
<!--
    a:link {font-family:"";color:black;text-decoration:none;}
    a:visited {font-family:"";color:black;text-decoration:none;}
    a:hover {font-family:"";color:black;text-decoration:underline;}
-->
</style>

</HEAD>
<BODY>

<center><font size='3'><b> 게시판 </b></font></center>
                                 
<TABLE border='0' width='600' cellpadding='0' cellspacing='0'>
    <TR>
        <TD><hr size='1' noshade></TD>
    </TR>
</TABLE>              
    
<TABLE border='0' cellspacing=1 cellpadding=2 width='600'>      
    <TR bgcolor='cccccc'>      
        <TD><font size=2><center><b>번호</b></center></font></TD>      
        <TD><font size=2><center><b>글 제목</b></center></font></TD>      
        <TD><font size=2><center><b>작성자</b></center></font></TD>      
        <TD><font size=2><center><b>작성일</b></center></font></TD>      
        <TD><font size=2><center><b>조회</b></center></font></TD>      
    </TR> 

<%
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    String jdbcUrl = "jdbc:mysql://localhost:3306/board";
    String dbId = "jspid";
    String dbPass = "jsppass";
    
    try {
        // MySQL JDBC 드라이버 로드
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);

        // 쿼리 실행
        String sql = "SELECT title, name, writedate, readcount FROM list";
        pstmt = conn.prepareStatement(sql);
        rs = pstmt.executeQuery();

        // 게시글 번호를 1번부터 시작하도록 하기 위한 변수
        int index = 1;

        // 결과를 테이블에 출력
        while (rs.next()) {
            String title = rs.getString("title"); // 글 제목
            String writer = rs.getString("name"); // 작성자
            String writeDate = rs.getString("writedate"); // 작성일
            int readCount = rs.getInt("readcount"); // 조회수
%>

    <TR>
        <TD><font size=2><center><%= index++ %></center></font></TD> <!-- 번호를 1번부터 출력 -->
        <TD><font size=2><center><%= title %></center></font></TD>
        <TD><font size=2><center><%= writer %></center></font></TD>
        <TD><font size=2><center><%= writeDate %></center></font></TD>
        <TD><font size=2><center><%= readCount %></center></font></TD>
    </TR>

<%
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
</TABLE>   

<TABLE border='0' width='600' cellpadding='0' cellspacing='0'>
    <TR>
        <TD><hr size='1' noshade></TD>
    </TR>
</TABLE>                    

<TABLE border=0 width=600>
    <TR>
        <TD align=left>        
        </TD>

        <TD align='right'>        
        <a href='write.jsp'>[등록]</a>                
        </TD>
    </TR>
</TABLE>

</BODY>                     
</HTML>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<title>레코드 추가</title>
</head>
<body>
  <h2>회원가입</h2>
  <h4>회원이 되어 다양한 혜택을 경험해 보세요!</h4>
    
  <form method="post" action="registerpro.jsp">
      아이디: <br><input type="text" name="id" maxlength="50"><br>
      비밀번호: <br><input type="password" name="passwd" maxlength="16"><br>
      비밀번호 확인: <br><input type="password" name="passwdcheck" maxlength="16"><br>
      이름: <br><input type="text" name="name" maxlength="10"><br>
      전화번호: <br><input type="text" name="telephone" maxlength="20"><br>
      이메일: <br><input type="text" name="email" maxlength="50"><br>
      생년월일: <br><input type="datetime-local" name="datetime"><br>
      <input type="submit" value="가입하기">
  </form>
</body>
</html>

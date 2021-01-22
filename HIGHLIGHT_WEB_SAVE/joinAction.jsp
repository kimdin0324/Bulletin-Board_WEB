<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %> 
<%@ page import="java.io.PrintWriter" %> 
<% request.setCharacterEncoding("UTF-8"); %>


<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" /> 
<jsp:setProperty name="user" property="userName" />
<jsp:setProperty name="user" property="userGender" />
<jsp:setProperty name="user" property="userEmail" />

<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>신흥고 HIGHLIGHT</title>
</head>
<body>
	<%
	String Code = request.getParameter("code");
    if(Code.equals("0324")){
		if (user.getUserID() == null || user.getUserPassword() == null || user.getUserName() == null || user.getUserGender() == null || user.getUserEmail() == null){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('입력이 안 된 사항이 있습니다.')");
				script.println("history.back()");
				script.println("</script>");
			} else{
				UserDAO userDAO = new UserDAO(); 
				int result = userDAO.join(user);				

				if(result == -1){ 
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('이미 존재하는 아이디 입니다.')");
					script.println("history.back()");
					script.println("</script>");
				}

				//가입성공
				else {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('회원가입이 완료되었습니다 재로그인 해주세요')");
					script.println("location.href = 'index.jsp'");
					script.println("</script>");
				}
			}
    }else{
    	PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('가입코드가 틀립니다 코드 발급후에 다시 시도해주세요')");
		script.println("history.back()");
		script.println("</script>"); 
    }
			%>
</body>
</body>
</html>

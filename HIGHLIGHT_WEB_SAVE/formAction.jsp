<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="form.FormDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="form" class="form.Form" scope="page" />
<jsp:setProperty name="form" property="formTitle" />  
<jsp:setProperty name="form" property="formContent" />  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>신흥고 HIGHLIGHT</title>
</head>
<body>
	<%
		String userID = request.getParameter("code");
		if (form.getFormTitle() == null || form.getFormContent() == null) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('입력이 안 된 사항이 있습니다.')");
				script.println("history.back()");
				script.println("</script>");
			} else {
				FormDAO formDAO = new FormDAO();
				int result = formDAO.write(form.getFormTitle(), userID, form.getFormContent());
				if (result == -1) {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('가입신청에 실패했습니다.')");
					script.println("history.back()");
					script.println("</script>");
				} else {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('가입신청이 완료되었습니다.')");
					script.println("history.back()");
					script.println("location.href = 'main.jsp'");
					script.println("</script>");
					}
					
					
				 
		}
		
		
		
	%>
</body>
</html>
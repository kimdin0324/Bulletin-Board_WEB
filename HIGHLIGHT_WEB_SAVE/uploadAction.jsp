<%@ page import="java.io.File" %>
<%@ page import="file.FileDAO" %>
<%@ page import="file.FileDTO" %>
<%@ page import="file.downloadAction" %>

<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %> 
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:setProperty name="file" property="fileName" />  
<jsp:setProperty name="file" property="fileRealName" />  
<!DOCTYPE html>
 <html>
 <head>
 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>신흥고 HIGHLIGHT</title>
<style >

</style>
</head>
<body>
 
<%
    String directory = application.getRealPath("/upload/");
    int maxSize =1024 *1024 *100;// 한번에 올릴 수 있는 파일 용량 : 100M로 제한
    String encoding = "UTF-8";
     
    MultipartRequest multipartRequest
    = new MultipartRequest(request, directory, maxSize, encoding,
    		new DefaultFileRenamePolicy());
    
    String fileName = multipartRequest.getOriginalFileName("file");
    String fileRealName = multipartRequest.getFilesystemName("file");
    
    new FileDAO().upload(fileName, fileRealName);
    

%>
<div class="container">
		<%
	
    	PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('업로드가 완료되었습니다.')");
		script.println("history.back()");
		script.println("</script>"); 
       %>
	</div>
</body>
</html>

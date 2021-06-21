<%@ page import="java.io.File" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="viewtable.Uploadfile"%>
<%@page import="viewtable.UploadfileDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="viewtable.ViewtableDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="viewtable" class="viewtable.Uploadfile" scope="page" />
<jsp:setProperty name="viewtable" property="loadtourismTitle" />  
<jsp:setProperty name="viewtable" property="loadtourismContent" />
<!DOCTYPE html>
<html>
<head>
<title>부산 어때?</title>
</head>
<body>
   <%
   String directory = application.getRealPath("/upload/");
   int maxSize = 1024 * 1024 * 100;
   String encoding = "UTF-8";
   
   MultipartRequest multipartRequest
   = new MultipartRequest(request, directory, maxSize, encoding, 
         new DefaultFileRenamePolicy());
   
   Enumeration fileNames = multipartRequest.getFileNames();
   String parameter = (String) fileNames.nextElement();
   String fileName = multipartRequest.getOriginalFileName(parameter);
      String userID = null;
         if (session.getAttribute("userID") != null) {
      userID = (String)session.getAttribute("userID");
         }
      if ( userID == null) {
         PrintWriter script = response.getWriter();
         script.println("<script>");
         script.println("alert('로그인을 하세요.')");
         script.println("location.href = 'login.jsp'");
         script.println("</script>");
      } else {
         if (viewtable.getLoadtourismTitle() == null || viewtable.getLoadtourismContent() == null || fileName == null) {
               PrintWriter script = response.getWriter();
               script.println("<script>");
               script.println("alert('입력이 안 된 사항이 있습니다.')");
               script.println("history.back()");
               script.println("</script>");
            } else {
            	UploadfileDAO uploadDAO = new UploadfileDAO();
               int result = uploadDAO.write(viewtable.getLoadtourismTitle(), userID, viewtable.getLoadtourismContent(), viewtable.getFileName());
               if(result == -1 ) {
                  PrintWriter script = response.getWriter();
                  script.println("<script>");
                  script.println("alert('글쓰기에 실패했습니다.')");            
                  script.println("history.back()");
                  script.println("</script>");
               } else {
                  PrintWriter script = response.getWriter();
                  script.println("<script>");
                  script.println("location.href = 'uploadBusan.jsp'");
                  script.println("</script>");
               } 
         }
   }
%>

   
</body>
</html>
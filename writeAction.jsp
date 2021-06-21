<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="viewtable.ViewtableDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="viewtable" class="viewtable.Viewtable" scope="page" />
<jsp:setProperty name="viewtable" property="tourismTitle" />  
<jsp:setProperty name="viewtable" property="tourismContent" />
<!DOCTYPE html>
<html>
<head>
<title>부산 어때?</title>
</head>
<body>
   <%
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
         if (viewtable.getTourismTitle() == null || viewtable.getTourismContent() == null) {
               PrintWriter script = response.getWriter();
               script.println("<script>");
               script.println("alert('입력이 안 된 사항이 있습니다.')");
               script.println("history.back()");
               script.println("</script>");
            } else {
               ViewtableDAO viewtableDAO = new ViewtableDAO();
               int result = viewtableDAO.write(viewtable.getTourismTitle(), userID, viewtable.getTourismContent());
               if(result == -1 ) {
                  PrintWriter script = response.getWriter();
                  script.println("<script>");
                  script.println("alert('글쓰기에 실패했습니다.')");            
                  script.println("history.back()");
                  script.println("</script>");
               } else {
                  PrintWriter script = response.getWriter();
                  script.println("<script>");
                  script.println("location.href = 'busan.jsp'");
                  script.println("</script>");
               } 
         }
   }
%>
   
</body>
</html>
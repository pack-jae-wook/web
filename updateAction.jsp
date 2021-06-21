<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="viewtable.ViewtableDAO" %>
<%@ page import="viewtable.Viewtable" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
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
      } 
      int tourismID = 0;
      if(request.getParameter("tourismID") != null) {
         tourismID = Integer.parseInt(request.getParameter("tourismID"));
      }
      if (tourismID == 0) {
         PrintWriter script = response.getWriter();
         script.println("<script>");
         script.println("alert('유효하지 않는 글입니다.')");
         script.println("location.href = 'busan.jsp'");
         script.println("</script>");
      }
      Viewtable viewtable = new ViewtableDAO().getViewtable(tourismID);
      if (!userID.equals(viewtable.getUserID())) {
         PrintWriter script = response.getWriter();
         script.println("<script>");
         script.println("alert('권한이 없습니다.')");
         script.println("location.href = 'busan.jsp'");
         script.println("</script>");
      }else {
         if (request.getParameter("tourismTitle") == null ||request.getParameter("tourismContent") == null
               || request.getParameter("tourismTitle").equals("")||request.getParameter("tourismContent").equals("")) {
               PrintWriter script = response.getWriter();
               script.println("<script>");
               script.println("alert('입력이 안 된 사항이 있습니다.')");
               script.println("history.back()");
               script.println("</script>");
            } else {
               ViewtableDAO viewtableDAO = new ViewtableDAO();
               int result = viewtableDAO.update(tourismID, request.getParameter("tourismTitle"),request.getParameter("tourismContent"));
               if(result == -1 ) {
                  PrintWriter script = response.getWriter();
                  script.println("<script>");
                  script.println("alert('글 수정에 실패했습니다.')");            
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
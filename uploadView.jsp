<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="viewtable.Uploadfile"%>
<%@ page import="viewtable.UploadfileDAO"%>
<%@ page import="viewtable.Viewtable"%>
<%@ page import="viewtable.ViewtableDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1"> 
<link rel="stylesheet" href="css/bootstrap.css"> 
<link rel="stylesheet" href="css/custom.css"> 
<title>부산 어때?</title>
</head>
<body>
   <%
      String userID = null;
      if (session.getAttribute("userID") != null) {
         userID = (String) session.getAttribute("userID");
      }
      int loadtourismID = 0;
      if(request.getParameter("loadtourismID") != null) {
    	  loadtourismID = Integer.parseInt(request.getParameter("loadtourismID"));
      }
      if (loadtourismID == 0) {
         PrintWriter script = response.getWriter();
         script.println("<script>");
         script.println("alert('유효하지 않는 글입니다.')");
         script.println("location.href = 'busan.jsp'");
         script.println("</script>");
      }
      Uploadfile uploadfile = new UploadfileDAO().getViewtable(loadtourismID);
   %>
   <nav class="navbar navbar-default">
      <div class="navbar-hedder">
         <button type="button" class="navbar-toggle collapsed"
            data-toggle="collapse" data-terget="#bs-example-navbar-collapse-1"
            aria-expanded="false">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="main.jsp">부산 어때?</a>
      </div>
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
         <ul class="nav navbar-nav">
            <li class="dropdown">
               <a href="#" class="dropdown-toggle"
                  data-toggle="dropdown" role="button" aria-haspopup="ture"
                  aria-expanded="false">부산은 지금<span class="caret"></span></a>
               <ul class="dropdown-menu">
                  <li class="active"><a href="login.jsp">광안리</a></li>
                  <li><a href="join.jsp">해운대</a></li>
                  <li><a href="join.jsp">서면</a></li>
                  <li><a href="join.jsp">남포동</a></li>
                  <li><a href="join.jsp">사직</a></li>
               </ul>
            </li>
            <li class="dropdown">
               <a href="#" class="dropdown-toggle"
                  data-toggle="dropdown" role="button" aria-haspopup="ture"
                  aria-expanded="false">유용한 정보<span class="caret"></span></a>
               <ul class="dropdown-menu">
                  <li class="active"><a href="login.jsp">음식</a></li>
                  <li><a href="join.jsp">축제&행사</a></li>
               </ul>
            </li>
        		 <li class="dropdown">
               <a href="#" class="dropdown-toggle"
                  data-toggle="dropdown" role="button" aria-haspopup="ture"
                  aria-expanded="false">여행 준비<span class="caret"></span></a>
               <ul class="dropdown-menu">
                  <li class="active"><a href="information.jsp">관광 안내소</a></li>
                  <li><a href="busan.jsp">코스 후기 게시판</a></li>
                  <li><a href="uploadBusan.jsp">부산을 담다</a></li>
               </ul>
            </li>
        
         </ul> 
         <%
            if(userID == null) {
         %>
         <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
                  <li class="active"><a href="login.jsp">로그인</a></li>
                  <li><a href="join.jsp">회원가입</a></li>
               </ul>
            </li>
         </ul>
         <%
            }else {
         %>
         <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
               <a href="#" class="dropdown-toggle"
                  data-toggle="dropdown" role="button" aria-haspopup="ture"
                  aria-expanded="false">화원관리<span class="caret"></span></a>
               <ul class="dropdown-menu">
                  <li class="active"><a href="logoutAction.jsp">로그아웃</a></li>
               </ul>
            </li>
         </ul>
         <%
            }
         %>
      </div>
   </nav>
   <div class="container">
   <div class="row">
      <table class="table table-striped" style="text-align: center; border:1px sloid #dddddd">
         <thead>
            <tr>
               <th colspan="3" style="background-color: #eeeeee; text-align: center;">게시판 글보기 양식</th>
            </tr>
         </thead>   
         <tbody>
            <tr>
               <td style="width:20%;">글 제목</td>
               <td colspan="2"><%= uploadfile.getLoadtourismID() %></td>
            </tr>
            <tr>
               <td>작성자</td>
               <td colspan="2"><%= uploadfile.getuserID() %></td>
            </tr>
            <tr>
               <td>작성일자</td>
               <td colspan="2"><%= uploadfile.getLoadtourismDate().substring(0,11)+uploadfile.getLoadtourismDate().substring(11,13)+"시"+uploadfile.getLoadtourismDate().substring(14,16)+"분" %></td>
            </tr>
            <tr>
               <td>내용</td>
               <td colspan="2" style="min-height:200px; text-align:left;"><%= uploadfile.getLoadtourismContent().replaceAll(" ","&nbsp;").replaceAll("<", "&lt;").replaceAll(">","&gt").replaceAll("\n","<br>") %></td>
            </tr>
             <tr>
               <td>이미지</td>
               <td colspan="2"><%= uploadfile.getFileName() %></td>
            </tr>
         </tbody>
      </table>
      <a href="uploadBusan.jsp" class="btn btn-primary">목록</a>
      <%
         if(userID !=null && userID.equals(uploadfile.getuserID())) {
      %>
         <a href="update.jsp?tourismID=<%= loadtourismID %>" class="btn btn-primary">수정</a>
         <a onclick="return confirm('정말로 삭제하시겠습니까?')" href="deleteAction.jsp?tourismID=<%= loadtourismID %>" class="btn btn-primary">삭제</a>
         <%
            }
         %>
      </div>
   </div>
      
   <script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>  
   <script src="js/bootstrap.js"></script>
</body>
</html>
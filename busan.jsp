jk<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="viewtable.Viewtable"%>
<%@ page import="viewtable.ViewtableDAO"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1"> 
<link rel="stylesheet" href="css/bootstrap.css"> 
<link rel="stylesheet" href="css/custom.css"> 
<title>부산 어때?</title>
<style type="text/css">
   a,a:hover {
   color : #000000;
   text-decoration: none;
   }
</style>
</head>
<body>
   <%
      String userID = null;
      if (session.getAttribute("userID") != null) {
         userID = (String) session.getAttribute("userID");
      }
      int pageNumber = 1;
      if(request.getParameter("pageNumber") != null) {
         pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
      }
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
                   <li class="active"><a href="courseO.jsp">광안리</a></li>
                  <li><a href="courseH.jsp">해운대</a></li>
                  <li><a href="courseN.jsp">남포동</a></li>
                  <li><a href="courseG.jsp">기장</a></li>
               </ul>
            </li>
              <li class="dropdown">
               <a href="#" class="dropdown-toggle"
                  data-toggle="dropdown" role="button" aria-haspopup="ture"
                  aria-expanded="false">유용한 정보<span class="caret"></span></a>
               <ul class="dropdown-menu">
                  <li class="active"><a href="food.jsp">음식</a></li>
                  <li><a href="festival.jsp">축제&행사</a></li>
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
      <table class="table table-striped" style="text-align: center; border:1px sloid #dddddd">
         <thead>
            <tr>
               <th style="background-color: #eeeeee; text-align: center;">번호</th>
               <th style="background-color: #eeeeee; text-align: center;">제목</th>
               <th style="background-color: #eeeeee; text-align: center;">작성자</th>
               <th style="background-color: #eeeeee; text-align: center;">작성일</th>
            </tr>
         </thead>   
         <tbody>
         <%
            ViewtableDAO viewtableDAO = new ViewtableDAO();
            ArrayList<Viewtable> list = viewtableDAO.getList(pageNumber);
            for(int i = 0; i < list.size(); i++){
         %>
            <tr>
               <td><%= list.get(i).getTourismID() %></td>
               <td><a href="view.jsp?tourismID=<%= list.get(i).getTourismID()%>"><%= list.get(i).getTourismTitle() %></td>
               <td><%= list.get(i).getUserID() %></td>
               <td><%= list.get(i).getTourismDate().substring(0,11)+list.get(i).getTourismDate().substring(11,13)+"시"+list.get(i).getTourismDate().substring(14,16)+"분" %></td>
            </tr>
         <%
            }
         %>
         </tbody>
      </table>
      <%
         if(pageNumber !=1){
      %>
      <a href="busan.jsp?pageNumber=<%=pageNumber - 1%>" class="btn btn-success btn-arraw-left">이전</a>
      <%
         }if(viewtableDAO.nextPage(pageNumber+1)) {
      %>
      <a href="busan.jsp?pageNumber=<%=pageNumber + 1%>" class="btn btn-success btn-arraw-left">다음</a>
      <%
         }
      %>

      <a href="write.jsp" class="btn btn-primary pull-right">글쓰기 </a>
   </div>
   <script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>  
   <script src="js/bootstrap.js"></script>
</body>
</html>
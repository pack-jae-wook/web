<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%--해상도 조절기능 --%>
<meta name="viewport" content="width=device-width", initial-scale="1"> 

<%--css참조/디자인으로 사용 --%>
<link rel="stylesheet" href="css/bootstrap.css">
<%--css참조/폰트 사용 --%>
<link rel="stylesheet" href="css/custom.css"> 

<title>부산 어때?</title>
</head>
<body>

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
         <form class="form-inline navbar-right">
            <input class="form-control mr-sm-2" type="search"
               placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
         </form>
         <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
                  <li class="active"><a href="login.jsp">로그인</a></li>
                  <li><a href="join.jsp">회원가입</a></li>
               </ul>
            </li>
         </ul>
      </div>
   </nav>
   <div class="container">
      <div class="col-lg-4"></div>
      <div class="col-lg-4"><%--로그인 양식 --%>
         <div class="jumbotron" style="padding-top: 20px;">
            <form method="post" action="loginAction.jsp">
               <h3 style="text-align: center;">로그인 화면</h3>
               <div class="form=gruop">
                  <input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20"> 
                  <%--placeholder="아이디" 입력젼 희미하게 보이는 글씨 ,name="userID"은 서버프로그램작성할 때 사용됨으로 중요 maxlength="20"아이디 길이 한정 --%>
                  <input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20"> 
               </div>
               <input type="submit" class="btn btn-primary form-control" value="로그인">
            </form>
         </div>
      </div>
      <div class="col-lg-4"></div>
   </div>
   <%--자바스트립트 참조 --%>
   <script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>  
   <script src="js/bootstrap.js"></script>
</body>
</html>
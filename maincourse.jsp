<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1"> 
<link rel="stylesheet" href="css/bootstrap.css"> 
<link rel="stylesheet" href="css/test01.css"> 
<link rel="stylesheet" href="css/test02.css"> 
<link rel="stylesheet" href="css/test03.css"> 
<title>코스 화면</title>
</head>
<body>
   <%
   
      String userID = null;
      if (session.getAttribute("userID") != null) {
         userID = (String) session.getAttribute("userID");
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
         <form class="form-inline navbar-right">
            <input class="form-control mr-sm-2" type="search"
               placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
         </form>
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
   
   
<div id="svisual_layout">
   <div class="svisual_wrap sub05_02_01">
      <div class="title_wrap">
         <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;한눈에 부산</strong>
      </div>
   </div>
</div>

<div class="container text-center">    
 <br>
    <div class="row">
      <div class="col-sm-4">
        <div class="thumbnail">
          <a href="courseO_2.jsp"><img src="images/광안리3.PNG" class="img-responsive" style="width:400px; height:250px;" alt="Image">
          <b>당일치기 광안리코스</b></a>
          
          <p>랑데자뷰 -> 광안리해수욕장 -> 황금조개구이</p>
        </div>
      </div> 
      <div class="col-sm-4">
        <div class="thumbnail">
          <a href="courseH_1.jsp"><img src="images/해운대빛축제.png" class="img-responsive" style="width:400px; height:250px;" alt="Image">
          <b>해운대가 처음이신가요?</b></a>
          <p>해운대해수욕장 -> 아쿠아리움 -> 더베이101</p>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <a href="courseN_3.jsp"><img src="images/먹자골목2.PNG" class="img-responsive" style="width:400px; height:250px;" alt="Image">
          <b>먹거리가 다양한 남포동</b></a>
          
          <p>자갈치시장 -> 삼진어묵체험역사관 -> 창선동 먹자골목</p>
        </div>
      </div>
      </div>
      
    <div class="row">
      <div class="col-sm-4">
        <div class="thumbnail">
          <a href="courseG.jsp"><img src="images/아홉산숲3.PNG" class="img-responsive" style="width:400px; height:250px;" alt="Image">
          <b>자연과 함께하는 기장</b></a>
          <p>아홉산숲 -> 죽성드림세트장 -> 일광해수욕장</p>
        </div>
      </div> 
      <div class="col-sm-4">
        <div class="thumbnail">
          <a href="courseO_4.jsp"><img src="images/광안리1.PNG" class="img-responsive" style="width:400px; height:250px;" alt="Image">
          <b>가족들과 함께하기 좋은 광안리</b></a>
          <p>오륙도 스카이워크 -> 이기대해안산책로 -> 광안리해수욕장</p>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <a href="courseH_2.jsp"><img src="images/동백2.PNG" class="img-responsive" style="width:400px; height:250px;" alt="Image">
          <b>색다른 해운대</b></a>
          <p>동백섬 -> BEXCO -> 해운대해수욕장</p>
        </div>
      </div>
      </div>
</div>

    <div id="footer">
     <div class="foot_menu">
        <div class="inner">
           <ul>
           <li class="dep">
              <a href class="dep01">부산은 지금</a>
              
              <ul class="dep02">
                 <li>
                 <a href="courseO.jsp" target="_self">광안리</a>
                 </li>
                 <li>
                 <a href="courseH.jsp" target="_self">해운대</a>
                 </li>
                 <li>
                 <a href="courseN.jsp" target="_self">남포동</a>
                 </li>
                 <li>
                 <a href="courseG.jsp" target="_self">기장</a>
                 </li>             
              </ul>
           </li>
           
              <li class="dep">
              <a href class="dep01">유용한 정보</a>
              
              <ul class="dep02">
                 <li>
                 <a href="food.jsp" target="_self">음식</a>
                 </li>
                 <li>
                 <a href="festival.jsp" target="_self">축제&행사</a>
                 </li>         
              </ul>
           </li>
           
              <li class="dep">
              <a href class="dep01">여행 준비</a>
              
              <ul class="dep02">
                 <li>
                 <a href="information.jsp" target="_self">관광 안내소</a>
                 </li>            
              </ul>
           </li>
           
              <li class="dep">
              <a href class="dep01">내 정보</a>
              
              <ul class="dep02">
                 <li>
                 <a href="" target="_self">회원 정보</a>
                 </li>
                 <li>
                 <a href="" target="_self">나의 찜목록</a>
                 </li>   
              </ul>
           </li>
       
           </ul>       
        </div>
     </div>
  </div>  
    <script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>  
   <script src="js/bootstrap.js"></script>
</body>
</html>
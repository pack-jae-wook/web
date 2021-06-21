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
	<div class="svisual_wrap sub07_02_01">
		<div class="title_wrap">
			<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;축제&행사</strong>
		</div>
	</div>
</div>

<div class="container text-center">    
 <br>
    <div class="row">
      <div class="col-sm-4">
        <div class="thumbnail">
          <a href="festivalresult.jsp"><img src="images/해운대빛축제.png" class="img-responsive" style="width:400px; height:250px;" alt="Image">
          <b>해운대빛축제</b></a>
          <p>부산광역시 해운대구 해운대해변로 264</p>
          <p>051-749-4061~4</p>
        </div>
      </div> 
      <div class="col-sm-4">
        <div class="thumbnail">
          <a href="festivalresult_2.jsp"><img src="images/부산불꽃축제.png" class="img-responsive" style="width:400px; height:250px;" alt="Image">
          <b>부산불꽃축제</b></a>
          <p>부산 수영구 광안해변로 219</p>
          <p>051-501-6051</p>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <a href="festivalresult_3.jsp"><img src="images/부산국제록페스티벌.png" class="img-responsive" style="width:400px; height:250px;" alt="Image">
          <b>부산국제록페스티벌</b></a>
          <p>부산광역시 사상구 삼락동 686</p>
          <p>051-507-9716</p>
        </div>
      </div>
      </div>
      
    <div class="row">
      <div class="col-sm-4">
        <div class="thumbnail">
          <a href="festivalresult_4.jsp"><img src="images/부산국제영화제.png" class="img-responsive" style="width:400px; height:250px;" alt="Image">
          <b>부산국제영화제</b></a>
          <p>부산광역시 해운대구 수영강변대로 120(영화의 전당)</p>
          <p>1688-3010</p>
        </div>
      </div> 
      <div class="col-sm-4">
        <div class="thumbnail">
          <a href="festivalresult_5.jsp"><img src="images/부산크리스마스트리문화축제.png" class="img-responsive" style="width:400px; height:250px;" alt="Image">
          <b>부산크리스마스트리문화축제</b></a>
          <p>부산광역시 중구 광복로 58-2</p>
          <p>051-243-3927</p>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <a href="festivalresult_6.jsp"><img src="images/삼락벚꽃축제.png" class="img-responsive" style="width:400px; height:250px;" alt="Image">
          <b>삼락벚꽃축제</b></a>
          <p>부산광역시 사상구 삼락생태공원 일원</p>
          <p>051-310-3002</p>
        </div>
      </div>
      </div>
      
      <div class="container text-center">               
  <ul class="pagination">
    <li><a href="festival.jsp">1</a></li>
  </ul>
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
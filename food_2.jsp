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
	<div class="svisual_wrap sub06_02_01">
		<div class="title_wrap">
			<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;음식</strong>
		</div>
	</div>
</div>

<div class="container text-center">    
 <br>
    <div class="row">
      <div class="col-sm-4">
        <div class="thumbnail">
          <a href="foodresult_7.jsp"><img src="images/규.png" class="img-responsive" style="width:400px; height:250px;" alt="Image">
          <b>규</b></a>
          <p>부산 중구 남포길 39</p>
          <p>051-247-8990</p>
        </div>
      </div> 
      <div class="col-sm-4">
        <div class="thumbnail">
          <a href="foodresult_8.jsp"><img src="images/부산꼼장어.png" class="img-responsive" style="width:400px; height:250px;" alt="Image">
          <b>부산꼼장어</b></a>
          <p>부산 중구 구덕로22번길 8</p>
          <p>051-245-3576</p>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <a href="foodresult_9.jsp"><img src="images/옹헤야.png" class="img-responsive" style="width:400px; height:250px;" alt="Image">
          <b>옹헤야불백</b></a>
          <p>부산 중구 구덕로34번길 4 뉴남포빌딩</p>
          <p>070-4216-0484</p>
        </div>
      </div>
      </div>
      
    <div class="row">
      <div class="col-sm-4">
        <div class="thumbnail">
          <a href="foodresult_10.jsp"><img src="images/어느멋진날.png" class="img-responsive" style="width:400px; height:250px;" alt="Image">
          <b>어느멋진날</b></a>
          <p>부산 기장군 일광면 기장해안로 1286</p>
          <p>051-724-1711</p>
        </div>
      </div> 
      <div class="col-sm-4">
        <div class="thumbnail">
          <a href="foodresult_11.jsp"><img src="images/탐복.png" class="img-responsive" style="width:400px; height:250px;" alt="Image">
          <b>탐복</b></a>
          <p>부산 기장군 일광면 문오성길 31</p>
          <p>051-727-4213</p>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <a href="foodresult_12.jsp"><img src="images/리바타.png" class="img-responsive" style="width:400px; height:250px;" alt="Image">
          <b>리바타</b></a>
          <p>부산 기장군 일광면 일광로 466 리바타</p>
          <p>0507-1397-3536</p>
        </div>
      </div>
      </div>
      
      <div class="container text-center">               
  <ul class="pagination">
    <li><a href="food.jsp">1</a></li>
    <li><a href="food_2.jsp">2</a></li>
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
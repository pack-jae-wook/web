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
  
  <hr class="line_3">
  
  <div id="container">
  	<div class="innerwrapb">
  		<h1 class="h1_headb">축제&행사</h1>
  			<div class="introduceb boxing">		
  				<div class="leftb box">
  					<div class="imgWrapb">
  						<img src="images/부산불꽃축제.png">
  					</div>
  				</div>
  				<div class="rightb box">
  					<h3 class="tit">- 부산불꽃축제 -</h3>
  					<ul class="contb">
  						<li>
  						<span>주&nbsp;&nbsp;&nbsp;소</span>
  						부산 수영구 광안해변로 219
  						</li>
  						<li>
  						<span>연 락 처</span>
  						051-501-6051
  						</li>
  						<li>
  						<span>축제기간</span>
  						매년 11월 불꽃쇼 20:00 ~ 21:00
  						</li>
  						<li>
  						<span>이용요금</span>
  						무료 (유료좌석 구매별도)
  						</li>
  					</ul>
  				</div>
  				 <div class="bothb">
  				 	<p> 부산불꽃축제는 광안리 해수욕장에서만 즐길 수 있는 것은 아니다. 부산의 다양한 곳에서 또 다른 느낌으로 즐길 수 있다. 
  				 	대표적인 장소로는 마린시티, 황령산 봉수대, 달맞이고개, 청사포 등이 있다. 사실 워낙 불꽃의 규모가 크다 보니 부산의 어지간한 높은 곳에서는 다 보이긴 하지만, 
  				 	거리가 멀어질수록 당연히 불꽃의 일부만 보이고 펑펑 터지는 소리와 불꽃의 시간차가 길어지기 때문에 다소 역동감은 떨어질 수 있으니 기호와 상황에 따라 적절한 장소를 선택하도록 하자.
  				 	밤바다와 밤하늘, 음악과 불꽃 그리고 사람들의 함성과 부산의 야경이 함께 만들어내는 아름다운 부산 가을밤의 하모니. 바로 부산불꽃축제다.
  				 </p>	 
  				</div>
  				
  				
  				
  				 <div class="img_wrap">
            <div class="imgs">
               <ul>
                   <li>
                  <img alt="사진1" src="images/부산불꽃축제1.png" style="width:330px; height:250px;">
                  </li>
                  <li>
                  <img alt="사진2" src="images/부산불꽃축제2.png" style="width:330px; height:250px;">
                  </li>
                  <li>
                  <img alt="사진3" src="images/부산불꽃축제3.png" style="width:330px; height:250px;">
                  </li>
               </ul>
            </div>
      </div> 
      <br>
      <br>
      <br>
  				
  				
  				<h5 class="h5">지도</h5>
  				<div id="map" style="width:1400px;height:500px;"></div>
					<script type="text/javascript" 
		 			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1bf8c7a554e4292a8d91e516c42787f4"></script>
		 			<script>
							var container = document.getElementById('map');
							var options = {
									center: new kakao.maps.LatLng(35.15278839583177, 129.11848777870546),
									level: 3
							};

							var map = new kakao.maps.Map(container, options);
							
							var markerPosition  = new kakao.maps.LatLng(35.15278839583177, 129.11848777870546);
								
							// 마커를 생성합니다
							var marker = new kakao.maps.Marker({
							    position: markerPosition
							});

							// 마커가 지도 위에 표시되도록 설정합니다
							marker.setMap(map);
							
							var iwContent = '<div style="padding:5px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;부산불꽃축제</div>',
						    	iwPosition = new kakao.maps.LatLng(35.15278839583177, 129.11848777870546); //인포윈도우 표시 위치입니다
						    	
						  // 인포윈도우를 생성합니다
						  var infowindow = new kakao.maps.InfoWindow({
						    	 position : iwPosition, 
						    	 content : iwContent 
						  });
						    	
							// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
						  infowindow.open(map, marker); 
					</script>		
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
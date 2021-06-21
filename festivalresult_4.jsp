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
  						<img src="images/부산국제영화제.png">
  					</div>
  				</div>
  				<div class="rightb box">
  					<h3 class="tit">- 부산국제영화제 -</h3>
  					<ul class="contb">
  						<li>
  						<span>주&nbsp;&nbsp;&nbsp;소</span>
  						부산광역시 해운대구 수영강변대로 120(영화의 전당)
  						</li>
  						<li>
  						<span>연 락 처</span>
  						1688-3010
  						</li>
  						<li>
  						<span>축제기간</span>
  						매년 10월 프로그램 별 상이
  						</li>
  						<li>
  						<span>이용요금</span>
  						일반상영작 7,000원, 행사 및 체험 무료(일부 체험 유료)
  						</li>
  					</ul>
  				</div>
  				 <div class="bothb">
  				 	<p> 10월이 되면 부산은 또 하나의 바다에 빠져들게 된다. 바로 영화의 바다, 아시아 최고의 국제영화제 부산국제영화제가 바로 그것이다.
								아시아를 대표하는 영화제로 자리 잡은 부산국제영화제는 센텀시티 영화의 전당과 남포동 BIFF광장을 중심으로 치러진다. 
								센텀시티의 메인행사는 전 세계에서 출품된 다양한 영화, 
								부산국제영화제를 위해 태어난 전용상영관 영화의 전당, 편리한 교통 등의 이점을 살려 ‘깔끔하고 화려한’ 느낌을 준다. 
								남포동의 BIFF광장에서는 시민과 영화인이 함께 만들어가는 ‘커뮤니티 비프’ 프로그램을 운영한다. 커뮤니티 비프는 영화제 초기, 
								영화 상영이 끝난 후 영화인과 관객이 소주 한 잔 나누며 어울리던 ‘친근하고 끈끈한’ 느낌을 살려냈다.
  				 </p>	 
  				</div>
  				
  				
  				
  				 <div class="img_wrap">
            <div class="imgs">
               <ul>
                   <li>
                  <img alt="사진1" src="images/부산국제영화제1.png" style="width:330px; height:250px;">
                  </li>
                  <li>
                  <img alt="사진2" src="images/부산국제영화제2.png" style="width:330px; height:250px;">
                  </li>
                  <li>
                  <img alt="사진3" src="images/부산국제영화제3.png" style="width:330px; height:250px;">
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
									center: new kakao.maps.LatLng(35.17117752205594, 129.12718563135238),
									level: 3
							};

							var map = new kakao.maps.Map(container, options);
							
							var markerPosition  = new kakao.maps.LatLng(35.17117752205594, 129.12718563135238);
								
							// 마커를 생성합니다
							var marker = new kakao.maps.Marker({
							    position: markerPosition
							});

							// 마커가 지도 위에 표시되도록 설정합니다
							marker.setMap(map);
							
							var iwContent = '<div style="padding:5px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;부산국제영화제</div>',
						    	iwPosition = new kakao.maps.LatLng(35.17117752205594, 129.12718563135238); //인포윈도우 표시 위치입니다
						    	
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
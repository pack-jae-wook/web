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
	<div class="svisual_wrap sub08_02_01">
		<div class="title_wrap">
			<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;여행 준비</strong>
		</div>
	</div>
</div>
  
  <hr class="line">
  
  <div id="container">
  	<div class="innerwrap">
  		<h1 class="h1_head">관광안내소</h1>
  			<div class="introduce boxing">		
  				<div class="left box">
  					<div class="imgWrap">
  						<img src="https://www.visitbusan.net/uploadImgs/files/infofc/20210405112630850_thumbL">
  					</div>
  				</div>
  				<div class="right box">
  					<h3 class="tit">- 해운대관광안내소 -</h3>
  					<ul class="cont">
  						<li>
  						<span>주&nbsp;&nbsp;&nbsp;소</span>
  						부산광역시 동구 중앙대로 206
  						</li>
  						<li>
  						<span>연 락 처</span>
  						051-749-5700
  						</li>
  						<li>
  						<span>문의시간</span>
  						08:30 ~ 19:00
  						</li>
  					</ul>
  				</div>
  				 <div class="both">
  				 	<p> 해운대 지역에 관한 다양한 관광 정보를 제공하는 곳 해운대관광안내소. 
  				 	해운대의 명소와 맛집, 숙박 관련 정보는 물론이고 다양한 축제와 유람선, 시티투어, 영화 관련 정보 까지 제공하고 있다. 
  				 	그리고 외국관광객들을 위해 이 모든 정보를 영어, 일본어, 중국어, 러시아어로 안내하고 있다. 
  				 	또한 이 곳에는 바다를 바라보며 책을 읽을 수 있는 '해변 도서관'도 마련되어 있어 언제나 유익하고 편안한 시간을 만끽할 수 있다. 
  				 	해운대의 주요 관광명소인 해운대해수욕장, 아쿠아리움, 화랑가 추리문학관, 달맞이길, 동백섬, 요트.윈드서핑, 시립미술관, 올림픽공원, 자동차 야외극장 등 주변의 아름다운 자연환경과 다양한 문화해양체험시설을 즐길 수 있다. 
  				 	또한 해운대에는 해맞이.달맞이 축제, 대보름축제, 부산바다축제 등이 연중 펼쳐지며 해운대온천과 회센터 등을 갖춘 해양휴양 관광지로서 손색이 없다
  				 </p>	 
  				</div>
  				<h5 class="h5">지도</h5>
  				<div id="map" style="width:1400px;height:500px;"></div>
					<script type="text/javascript" 
		 			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1bf8c7a554e4292a8d91e516c42787f4"></script>
		 			<script>
							var container = document.getElementById('map');
							var options = {
									center: new kakao.maps.LatLng(35.15903500398244, 129.1602105448238),
									level: 1
							};

							var map = new kakao.maps.Map(container, options);
							
							var markerPosition  = new kakao.maps.LatLng(35.15903500398244, 129.1602105448238); 

							// 마커를 생성합니다
							var marker = new kakao.maps.Marker({
							    position: markerPosition
							});

							// 마커가 지도 위에 표시되도록 설정합니다
							marker.setMap(map);
							
							var iwContent = '<div style="padding:5px;">해운대관광안내소</div>',
						     iwPosition = new kakao.maps.LatLng(35.15903500398244, 129.1602105448238); //인포윈도우 표시 위치입니다
						    	
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
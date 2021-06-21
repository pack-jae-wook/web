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
                   <li><a href="courseO.jsp">광안리</a></li>
                  <li><a href="courseH.jsp">해운대</a></li>
                  <li><a href="courseN.jsp">남포동</a></li>
                  <li class="active"><a href="courseG.jsp">기장</a></li>
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
	<div class="svisual_wrap sub02_02_01">
		<div class="title_wrap">
			<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;기장</strong>
		</div>
	</div>
</div>

<div id="body_layout" class	="sub01_01_02_01">
	<div class="body_wrap">
		<div id="location">
			<div id="navigate">
				<h2>커피향과 함께하는 부산 여행</h2>
				<ul class="dir">
					<li class="icon home">HOME</li>
					<li>기장</li>
					<li>커피향과 함께하는 부산 여행</li>
				</ul>
			</div>
		</div>
		
	<div id="txt" class="contents_wrap">
	<ul class="tab-ul deth-4st tab-col-4" style="margin-bottom:80px;">
		<li>
			<!-- 주소 링크는 그 코스 페이지 (아직 안넣음) -->
			<a href="courseG.jsp" target="_self">
					<span>자연과 함께하는 기장</span>
				</a>
		</li>
		
		<li class="on">
			<a href="courseG_2.jsp" target="_self">
					<span>힐링 기장</span>
				</a>
		</li>
		
			<li>
			<a href="courseG_3.jsp" target="_self">
					<span>체험하기 좋은 기장</span>
				</a>
		</li>
		
			<li>
			<a href="courseG_4.jsp" target="_self">
					<span>걷기 좋은 기장코스</span>
				</a>
		</li>
	 </ul>
	</div>
</div>
   
   
<!-- 여기 밑으로 복사 부분 -->

<div id="body_layout" class="sub01_01_02_01">
   <div class="body_wrap">
         <h2 class="num_title" id="anchor1">
            <i>01</i>
             이케아
         </h2>
   <div class="course_wrap">
      <div class="txt_box">
         <p>
       신세대 감각에 맞는 디자인과 저렴한 가격으로 젊은이들이 열광하는 브랜드. 
       35개국에 260여 개 매장을 가지고 있는 스웨덴의 DIY 인테리어 전문점이다. 
       침대·소파 등 가구부터 패브릭, 커튼, 조명, 그릇, 욕실용품, 문구류까지 생활용품에 관한 모든 것이 있다. 
       코즈웨이 베이의 이케아 매장은 워낙 물건이 많고, 동선에 따라 이동해야 하므로 한 번 들어가면 쉽게 나올 수 없으니 넉넉한 시간을 가지고 쇼핑하는 것이 좋다. 관광객이 구입할 만한 독특한 소품과 아이디어 상품이 다양하다. 쇼핑 후에는 지하 1층 스낵코너에서 판매하는 HK$6짜리 핫도그를 맛보자.

         </p>
         <div class="tag_box">
            <span>#부산기장이케아</span>
    				<span>#인테리어소품쇼핑</span>
    				<span>#가구쇼핑</span>
         </div>
         <ul class="c_list">
            <li class="one">
               <em>주소</em>
               <p>부산광역시 기장군 기장읍 당사리 532</p>
            </li>
            
            <li class="two">
               <em>전화번호</em>
               <p>1670-4532</p>
            </li>
            
            
         </ul>
      </div>
      <div class="map_box">
         <div class="map" id="map" style="overflow: hidden background: url("https://t1.daumcdn.net/mapjsapi/images/bg_tile.png");">
         <script type="text/javascript" 
                src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1bf8c7a554e4292a8d91e516c42787f4"></script>
           <script>
                     var container = document.getElementById('map');
                     var options = {
                           center: new kakao.maps.LatLng(35.19080218605755, 129.2104984720056),
                           level: 3
                     };

                     var map = new kakao.maps.Map(container, options);
                     
                     var markerPosition  = new kakao.maps.LatLng(35.19080218605755, 129.2104984720056); 

                     // 마커를 생성합니다
                     var marker = new kakao.maps.Marker({
                         position: markerPosition
                     });

                     // 마커가 지도 위에 표시되도록 설정합니다
                     marker.setMap(map);
                     
                 		 var iwContent = '<div style="padding:5px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;이케아</div>',
								     iwPosition = new kakao.maps.LatLng(35.19080218605755, 129.2104984720056); //인포윈도우 표시 위치입니다
								    	
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
      <div class="img_wrap">
            <div class="imgs">
               <ul>
                   <li>
                  <img alt="사진1" src="images/이케아1.png" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진2" src="images/이케아2.png" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진3" src="images/이케아3.png" style="width:490px; height:350px;">
                  </li>
               </ul>
            </div>
      </div>   
   </div>
</div> 
<br>
<br>


<!-- 여기 밑으로 복사 부분 -->

<div id="body_layout" class="sub01_01_02_01">
   <div class="body_wrap">
         <h2 class="num_title" id="anchor2">
            <i>02</i>
              아울렛(신세계)
         </h2>
   <div class="course_wrap">
      <div class="txt_box">
         <p>
        부산 프리미엄 아울렛은 부산 울산 고속 도로 장안 IC에서 승용차로 4분 거리에 있으며, 
        핵심 상권인 부산광역시 해운대구에서는 약 23㎞ 거리에 있다. 또 울산광역시에서 45㎞, 대구광역시에서 90㎞ 정도의 위치에 자리하고 있다. 
        1,000만 인구가 밀집해 있는 부산광역시, 울산광역시, 대구광역시 등 주요 상권을 확보하고 있는 셈이다. 
        또 베이징, 상하이, 도쿄, 후쿠오카, 블라디보스토크 등의 해외 관광객도 유치할 수 있을 것으로 기대하고 있다. 
        2012년 2월 3일 착공식을 하였고, 2013년 8월 29일 개장하였다.
         </p>
         <div class="tag_box">
            <span>#기장</span>
            <span>#신세계아울렛</span>
            <span>#쇼핑</span>
         </div>
         <ul class="c_list">
            <li class="one">
               <em>주소</em>
                <p>부산 기장군 장안읍 정관로 1133</p>
            </li>
            
            <li class="two">
               <em>전화번호</em>
              <p>031-1644-4001</p>
            </li>
            
                
         </ul>
      </div>
      <div class="map_box">
         <div class="map" id="map2" style="overflow: hidden background: url("https://t1.daumcdn.net/mapjsapi/images/bg_tile.png");">
         <script type="text/javascript" 
                src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1bf8c7a554e4292a8d91e516c42787f4"></script>
             <script>
                     var container = document.getElementById('map2');
                     var options = {
                           center: new kakao.maps.LatLng(35.323542322457335, 129.23569212866389),
                           level: 1
                     };

                     var map = new kakao.maps.Map(container, options);
                     
                     var markerPosition  = new kakao.maps.LatLng(35.323542322457335, 129.23569212866389); 

                     // 마커를 생성합니다
                     var marker = new kakao.maps.Marker({
                         position: markerPosition
                     });

                     // 마커가 지도 위에 표시되도록 설정합니다
                     marker.setMap(map);
                     
                     var iwContent = '<div style="padding:5px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;아울렛(신세계)</div>',
				     iwPosition = new kakao.maps.LatLng(35.323542322457335, 129.23569212866389); //인포윈도우 표시 위치입니다
				    	
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
      <div class="img_wrap">
            <div class="imgs">
               <ul>
                   <li>
                  <img alt="사진1" src="images/아울렛1.png" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진2" src="images/아울렛2.png" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진3" src="images/아울렛3.png" style="width:490px; height:350px;">
                  </li>
               </ul>
            </div>
      </div>   
   </div>
</div>
<br>
<br>
   

<!-- 여기 밑으로 복사 부분 -->

<div id="body_layout" class="sub01_01_02_01">
   <div class="body_wrap">
         <h2 class="num_title" id="anchor3">
            <i>03</i>
            오랑대공원
         </h2>
   <div class="course_wrap">
      <div class="txt_box">
         <p>
          오랑대 공원은 기장읍 연화리 서암 마을과 시랑리 동암 마을 경계 지점에 있는 오랑대 일대에 조성되어 있다. 
          오랑대는 ‘미랑대’라고도 부르는데, 
          지명과 관련해 정확히 알려진 설화는 없으나 옛날 기장으로 유배 온 친구를 만나러 
          시랑 벼슬을 한 다섯 명의 선비들이 이곳에 왔다가 술을 마시고 즐겼다 것에서 유래되었다는 설이 있다.
           그 밖에도 이곳에 오랑캐가 쳐들어와서 오랑대라고 불렀다는 설 등이 전하고 있다. 
           오랑대는 일출 명소로 알려져 있어 사진 동호인들이 자주 찾는 곳이다. 공원은 24시간 이용 가능하며, 
           해동용궁사에서 시랑대로 가는 암반 산책로를 따라가면 오랑대와 연결된다. 주변에는 대변항, 오랑대, 송정 해수욕장 등이 있다.

         </p>
         <div class="tag_box">
            <span>#공원</span>
            <span>#경치좋은</span>
            <span>#관광</span>
         </div>
         <ul class="c_list">
            <li class="one">
               <em>주소</em>
              <p>부산 기장군 기장읍 연화리</p>
            </li>
            
            <li class="two">
               <em>전화번호</em>
               <p>없음</p>
            </li>
            
            
         </ul>
      </div>
      <div class="map_box">
         <div class="map" id="map3" style="overflow: hidden background: url("https://t1.daumcdn.net/mapjsapi/images/bg_tile.png");">
         <script type="text/javascript" 
                src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1bf8c7a554e4292a8d91e516c42787f4"></script>
           <script>
                     var container = document.getElementById('map3');
                     var options = {
                           center: new kakao.maps.LatLng(35.20590328571837, 129.2277931731317),
                           level: 1
                     };

                     var map = new kakao.maps.Map(container, options);
                     
                     var markerPosition  = new kakao.maps.LatLng(35.20590328571837, 129.2277931731317); 

                     // 마커를 생성합니다
                     var marker = new kakao.maps.Marker({
                         position: markerPosition
                     });

                     // 마커가 지도 위에 표시되도록 설정합니다
                     marker.setMap(map);
                     
                     var iwContent = '<div style="padding:5px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;오랑대공원</div>',
				     iwPosition = new kakao.maps.LatLng(35.20590328571837, 129.2277931731317); //인포윈도우 표시 위치입니다
				    	
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
      <div class="img_wrap">
            <div class="imgs">
               <ul>
                  <li>
                  <img alt="사진1" src="images/오랑대공원1.png" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진2" src="images/오랑대공원2.png" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진3"src="images/오랑대공원3.png" style="width:490px; height:350px;">
                  </li>
               </ul>
            </div>
      </div>   
   </div>
</div>  
<br>
<br>
</div>
 
<div class="container1">
   <div class="row">
   <form method="post" action="writeAction.jsp">
      <table class="table table-striped" style="text-align: center; border-right-width: 0px">
         <thead>
            <tr>
               <th colspan="2" style="background-color: #acebff; text-align: center;">게시판 글쓰기</th>
            </tr>
         </thead">   
         <tbody>
            <tr>
               <td><input type="text" class="form-control" placeholder="글 제목" name="tourismTitle" maxlength="50"></td>
            </tr>
            <tr>
               <td><textarea class="form-control" placeholder="글 내용" name="tourismContent" maxlength="2048" style="height: 350px;"></textarea></td>   
            </tr>
         </tbody>
      </table>
      <input type="submit" class="btn btn-primary pull-right" value="글쓰기" >
   </form>
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
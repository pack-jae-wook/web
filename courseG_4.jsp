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
		
		<li>
			<a href="courseG_2.jsp" target="_self">
					<span>힐링 기장</span>
				</a>
		</li>
		
			<li>
			<a href="courseG_3.jsp" target="_self">
					<span>체험하기 좋은 기장</span>
				</a>
		</li>
		
			<li class="on">
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
            소두방공원산책로
         </h2>
   <div class="course_wrap">
      <div class="txt_box">
         <p>
          소두방 공원은 부산광역시 기장군 정관읍 용수리와 방곡리 일대에 있다. 
          소두방은 예전부터 정관읍과 철마면 일대를 부르던 명칭으로 산지 지형이 솥뚜껑을 엎어둔 모양과 같아 이름 지어졌다고 한다. 
          1914년에 행정 구역을 개편하면서 소두방을 한자로 표기하면서 정관읍이라고 하였다고 전해진다. 
          소두방 공원은 정관읍에 들어선 13개의 근린공원 중에서 가장 면적이 큰 공원으로 아이들의 쉼터와 놀이터도 많아서 가족 단위의 시민들도 자주 찾고 있다.
         </p>
         <div class="tag_box">
            <span>#산책</span>
            <span>#공기좋은곳</span>
            <span>#기장 공원</span>
         </div>
         <ul class="c_list">
            <li class="one">
               <em>주소</em>
               <p>부산 기장군 정관읍 정관중앙로 100</p>
            </li>
            
            <li class="two">
               <em>전화번호</em>
               <p>없음</p>
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
                           center: new kakao.maps.LatLng(35.32898340304873, 129.18456017556167),
                           level: 1
                     };

                     var map = new kakao.maps.Map(container, options);
                     
                     var markerPosition  = new kakao.maps.LatLng(35.32898340304873, 129.18456017556167); 

                     // 마커를 생성합니다
                     var marker = new kakao.maps.Marker({
                         position: markerPosition
                     });

                     // 마커가 지도 위에 표시되도록 설정합니다
                     marker.setMap(map);
                     
                     var iwContent = '<div style="padding:5px;">&nbsp;&nbsp;&nbsp;&nbsp;소두방공원산책로</div>',
				     iwPosition = new kakao.maps.LatLng(35.32898340304873, 129.18456017556167); //인포윈도우 표시 위치입니다
				    	
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
                  <img alt="사진1" src="images/소두방공원1.png" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진2" src="images/소두방공원2.png" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진3" src="images/소두방공원3.png" style="width:490px; height:350px;">
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
              일광해수욕장-학리방파제 
         </h2>
   <div class="course_wrap">
      <div class="txt_box">
         <p>
       부산시내와 인접해 있지만 크게 알려지지 않아 현지꾼들 위주로 낚시가 이뤄지다 근년 
       학리방파제에서 손바닥 씨알의 감성돔이 마리수 조황을 보이면서 외부에 알려지기 시작했다. 
       수심이 얕긴 하지만 족보 있는 감성돔·벵에돔·농어·학공치·망상어·갈치 등이 잘 낚이고, 
       방파제가 안전해 가족을 동반한 나들이 코스로도 권할만하다.
         </p>
         <div class="tag_box">
            <span>#가족나들이</span>
            <span>#낚시코스</span>
            <span>#기장일광해수욕</span>
         </div>
         <ul class="c_list">
            <li class="one">
               <em>주소</em>
                <p>부산 기장군 일광면 삼성리- 부산 기장군 일광면 학리</p>
            </li>
            
            <li class="two">
               <em>전화번호</em>
              <p>없음</p>
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
                           center: new kakao.maps.LatLng(35.26030240601573, 129.24746797520194),
                           level: 3
                     };

                     var map = new kakao.maps.Map(container, options);
                     
                     var markerPosition  = new kakao.maps.LatLng(35.26030240601573, 129.24746797520194); 

                     // 마커를 생성합니다
                     var marker = new kakao.maps.Marker({
                         position: markerPosition
                     });

                     // 마커가 지도 위에 표시되도록 설정합니다
                     marker.setMap(map);
                     
                     var iwContent = '<div style="padding:5px;">&nbsp;&nbsp;&nbsp;&nbsp;일광-학리방파제</div>',
				     iwPosition = new kakao.maps.LatLng(35.26030240601573, 129.24746797520194); //인포윈도우 표시 위치입니다
				    	
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
                  <img alt="사진1" src="images/일광해수욕장학리방파제1.png" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진2" src="images/일광해수욕장학리방파제2.png" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진3" src="images/일광해수욕장학리방파제3.png" style="width:490px; height:350px;">
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
            좌광천효자길
         </h2>
   <div class="course_wrap">
      <div class="txt_box">
         <p>
          하천이 좌천리를 흐른다고 하여 좌광천이라 이름 붙여졌으며, 
          정관읍과 병산리를 지난다고 하여 정관천 혹은 병산천으로도 불린다. 
          하천을 따라 병산과 함박산, 갈미산, 달음산 등의 산지가 있다. 
          중류지역에는 정관 신도시가 형성되어 주거단지가 밀집해 있으며, 
          유역을 따라 기장정관 농공단지와 정관 일반산업단지, 코리 일반산업단지, 한국장애인고용공단 
          부산직업능력개발원 등의 시설이 분포해 있다. 하천 하류지역에는 부산 프리미엄 아울렛과 퀸비아울렛이 있다. 
          하천을 따라 60번 지방도로가 있으며, 하천 하류부에는 65번 부산-울산 동해고속도로, 14번 및 31번 국도가 하천을 가로지르며 지난다. 
         </p>
         <div class="tag_box">
            <span>#걷기좋은</span>
            <span>#효자길</span>
            <span>#건강한운동</span>
         </div>
         <ul class="c_list">
            <li class="one">
               <em>주소</em>
              <p>부산 기장군 정관읍 달산리</p>
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
                           center: new kakao.maps.LatLng(35.324388015174236, 129.17507797845323),
                           level: 1
                     };

                     var map = new kakao.maps.Map(container, options);
                     
                     var markerPosition  = new kakao.maps.LatLng(35.324388015174236, 129.17507797845323); 

                     // 마커를 생성합니다
                     var marker = new kakao.maps.Marker({
                         position: markerPosition
                     });

                     // 마커가 지도 위에 표시되도록 설정합니다
                     marker.setMap(map);
                     
                     var iwContent = '<div style="padding:5px;">&nbsp;&nbsp;&nbsp;&nbsp;좌광천효자길</div>',
				     iwPosition = new kakao.maps.LatLng(35.324388015174236, 129.17507797845323); //인포윈도우 표시 위치입니다
				    	
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
                  <img alt="사진1" src="images/좌광천1.png" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진2" src="images/좌광천2.png" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진3"src="images/좌광천3.png" style="width:490px; height:350px;">
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
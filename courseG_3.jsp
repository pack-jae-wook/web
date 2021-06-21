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
		
			<li class="on">
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
             해동용궁사
         </h2>
   <div class="course_wrap">
      <div class="txt_box">
         <p>
         해동용궁사(海東龍宮寺)는 부산 기장군 기장읍 시랑리에 있는 절이다. 바다와 가장 가까운 사찰로 대한민국의 관음성지(觀音聖地)의 하나다.
				절측에서는 1376년 나옹화상 혜근이 창건한 사찰이라 주장하지만 실상 1970년대 신축된 현대사찰에 불과하다.
				원래 절이 있던 곳은 깨를 심거나 소를 먹이던 빈터였다. 나옹 혜근이 세웠다는 둥의 소리는 절측에서 신도 확보를 위해 지어낸 것으로 보인다.
         </p>
         <div class="tag_box">
            <span>#절</span>
            <span>#용궁사</span>
            <span>#기장 역사</span>
         </div>
         <ul class="c_list">
            <li class="one">
               <em>주소</em>
               <p>부산 기장군 기장읍 용궁길 86 해동용궁사</p>
            </li>
            
            <li class="two">
               <em>전화번호</em>
               <p>051-722-7744</p>
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
                           center: new kakao.maps.LatLng(35.188420415620065, 129.22314338720577),
                           level: 1
                     };

                     var map = new kakao.maps.Map(container, options);
                     
                     var markerPosition  = new kakao.maps.LatLng(35.188420415620065, 129.22314338720577); 

                     // 마커를 생성합니다
                     var marker = new kakao.maps.Marker({
                         position: markerPosition
                     });

                     // 마커가 지도 위에 표시되도록 설정합니다
                     marker.setMap(map);
                     
                     var iwContent = '<div style="padding:5px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;해동용궁사</div>',
				     iwPosition = new kakao.maps.LatLng(35.188420415620065, 129.22314338720577); //인포윈도우 표시 위치입니다
				    	
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
                  <img alt="사진1" src="images/해동용궁사1.png" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진2" src="images/해동용궁사2.png" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진3" src="images/해동용궁사3.png" style="width:490px; height:350px;">
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
              안데르센공원
         </h2>
   <div class="course_wrap">
      <div class="txt_box">
         <p>
		        안데르센 동화동산(테마숲)은 안데르센 동화를 모티브로 하여 어린이뿐만 아니라 전세대를 아우르는 숲 건강 체험공간이다.
						자연공간을 적극 활용하여 건강하고 여유로운 힐링공간으로서, 성냥팔이 소녀 엄지공주 등의 테마로 이루어진 동화속 공간, 동
						심자극 흥미유발 트리하우스, 미운오리새끼가 있는 수변공원과 산책로는 아이들과 함께 아름다운 자연속에서 휴식과 
						여유를 즐기고 상상속의 동화를 체험 할 수 있다.
         </p>
         <div class="tag_box">
            <span>#아이들이좋아하는</span>
            <span>#테마숲</span>
            <span>#산책하기좋은</span>
         </div>
         <ul class="c_list">
            <li class="one">
               <em>주소</em>
                <p>부산 기장군 장안읍 기룡리 산120</p>
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
                           center: new kakao.maps.LatLng(35.36012011393532, 129.24004701638776),
                           level: 1
                     };

                     var map = new kakao.maps.Map(container, options);
                     
                     var markerPosition  = new kakao.maps.LatLng(35.36012011393532, 129.24004701638776); 

                     // 마커를 생성합니다
                     var marker = new kakao.maps.Marker({
                         position: markerPosition
                     });

                     // 마커가 지도 위에 표시되도록 설정합니다
                     marker.setMap(map);
                     
                     var iwContent = '<div style="padding:5px;">&nbsp;&nbsp;&nbsp;&nbsp;안데르센공원</div>',
				     iwPosition = new kakao.maps.LatLng(35.36012011393532, 129.24004701638776); //인포윈도우 표시 위치입니다
				    	
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
                  <img alt="사진1" src="images/안데르센공원1.png" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진2" src="images/안데르센공원2.png" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진3" src="images/안데르센공원3.png" style="width:490px; height:350px;">
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
            송도 해상 케이블카
         </h2>
   <div class="course_wrap">
      <div class="txt_box">
         <p>
          송도해수욕장은 1913년에 개장했다. 우리나라 최초의 공설해수욕장이라는 타이틀을 거머쥐고 있다. 
          송도해수욕장이 한창 이름을 날리던 시절에 네 가지 명물이 있었다. 케이블카, 구름다리, 다이빙대 그리고 유람선이다. 
          전국 최고의 명성은 1970년대 들어서면서 환경오염으로 몰락하기 시작했다. 
          결정적으로 1987년 태풍 셀마가 덮쳐 출렁다리와 다이빙대가 완전히 무너지고, 
          케이블카도 이듬해 운행을 중단하면서 송도해수욕장의 영광은 막을 내리게 되었다. 
          이제 송도가 그 영광을 되찾아가고 있다. 케이블카가 하늘을 다시 날기 시작했고, 
          구름다리 보다 근사한 구름산책로가 바다 위에 놓였다. 바다 한가운데 거북 모양의 커다란 
          다이빙대가 등장한 건 물론 그 시절에는 없던 바다 곁 산책로가 만들어져 송도의 하루를 더 알차게 해준다.
         </p>
         <div class="tag_box">
            <span>#케이블카</span>
            <span>#송도</span>
            <span>#관광</span>
         </div>
         <ul class="c_list">
            <li class="one">
               <em>주소</em>
              <p>부산광역시 서구 송도해변로 171</p>
            </li>
            
            <li class="two">
               <em>전화번호</em>
               <p>051-247-9900</p>
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
                           center: new kakao.maps.LatLng(35.0763166599843, 129.02363235545553),
                           level: 1
                     };

                     var map = new kakao.maps.Map(container, options);
                     
                     var markerPosition  = new kakao.maps.LatLng(35.0763166599843, 129.02363235545553); 

                     // 마커를 생성합니다
                     var marker = new kakao.maps.Marker({
                         position: markerPosition
                     });

                     // 마커가 지도 위에 표시되도록 설정합니다
                     marker.setMap(map);
                     
                     var iwContent = '<div style="padding:5px;">&nbsp;&nbsp;&nbsp;&nbsp;송도 해상 케이블카</div>',
				     iwPosition = new kakao.maps.LatLng(35.0763166599843, 129.02363235545553); //인포윈도우 표시 위치입니다
				    	
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
                  <img alt="사진1" src="images/송도케이블카1.png" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진2" src="images/송도케이블카2.png" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진3"src="images/송도케이블카3.png" style="width:490px; height:350px;">
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
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
		<li class="on">
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
             아홉산숲
         </h2>
   <div class="course_wrap">
      <div class="txt_box">
         <p>
          아홉산은 골짜기 아홉을 품고 있다고해서 아홉산이라고 합니다.
      기장 아홉산숲은 유원지나 놀이장소가 아니니 한바퀴 산책하듯이 돌아서 나오면 되는 곳입니다.
      등산객들에게는 평지 같은 코스이고, 등산 초보들에게는 좀 힘들 수도 있습니다.
      말미에 오르막이 있어서 좀 버거울 수 있는데 14번 만평대숲을 생략하면
       큰 무리는 없을 듯 하지만 생략하지말고 한번 돌아보기를 권합니다.
         </p>
         <div class="tag_box">
            <span>#대나무숲</span>
            <span>#공기좋은곳</span>
            <span>#편백나무숲</span>
         </div>
         <ul class="c_list">
            <li class="one">
               <em>주소</em>
               <p>부산 기장군 철마면 미동길 37-1</p>
            </li>
            
            <li class="two">
               <em>전화번호</em>
               <p>051-721-9183</p>
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
                           center: new kakao.maps.LatLng(35.28705460684224, 129.17141305509222),
                           level: 1
                     };

                     var map = new kakao.maps.Map(container, options);
                     
                     var markerPosition  = new kakao.maps.LatLng(35.28705460684224, 129.17141305509222); 

                     // 마커를 생성합니다
                     var marker = new kakao.maps.Marker({
                         position: markerPosition
                     });

                     // 마커가 지도 위에 표시되도록 설정합니다
                     marker.setMap(map);
                     
                     var iwContent = '<div style="padding:5px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;아홉산숲</div>',
				     iwPosition = new kakao.maps.LatLng(35.28705460684224, 129.17141305509222); //인포윈도우 표시 위치입니다
				    	
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
                  <img alt="사진1" src="images/아홉산숲1.PNG" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진2" src="images/아홉산숲2.PNG" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진3" src="images/아홉산숲3.PNG" style="width:490px; height:350px;">
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
              죽성드림세트장
         </h2>
   <div class="course_wrap">
      <div class="txt_box">
         <p>
        부산 기장군 죽성리에 위치한 죽성성당은 2009년 SBS 드라마 ‘드림’을 촬영하기 위해 지어진 드라마 세트장이다. 오래 전 방영된 드라마는 잊혀졌지만
         잘 만들어진 이 공간만큼은 기장을 찾는 여행객의 필수 코스라고 할 정도로 명소가 되었다. 
         성당 내부는 갤러리로 운영되고 있어서 운 좋게 전시일정과 겹친다면 뜻하지 않은 볼거리를 경험할 수 있다.

         </p>
         <div class="tag_box">
            <span>#죽성드림세트장</span>
            <span>#드라마촬영장</span>
            <span>#성당</span>
         </div>
         <ul class="c_list">
            <li class="one">
               <em>주소</em>
                <p>부산 기장군 기장읍 죽성리 134-7</p>
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
                           center: new kakao.maps.LatLng(35.24121231216949, 129.2478737582915),
                           level: 1
                     };

                     var map = new kakao.maps.Map(container, options);
                     
                     var markerPosition  = new kakao.maps.LatLng(35.24121231216949, 129.2478737582915); 

                     // 마커를 생성합니다
                     var marker = new kakao.maps.Marker({
                         position: markerPosition
                     });

                     // 마커가 지도 위에 표시되도록 설정합니다
                     marker.setMap(map);
                     
                     var iwContent = '<div style="padding:5px;">&nbsp;&nbsp;&nbsp;&nbsp;죽성드림세트장</div>',
				     iwPosition = new kakao.maps.LatLng(35.24121231216949, 129.2478737582915); //인포윈도우 표시 위치입니다
				    	
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
                  <img alt="사진1" src="images/성당1.PNG" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진2" src="images/성당2.PNG" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진3" src="images/성당3.PNG" style="width:490px; height:350px;">
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
            일광해수욕장
         </h2>
   <div class="course_wrap">
      <div class="txt_box">
         <p>
          일광해수욕장의 수심은 얕고 해안선이 강송정에서 학리 어구까지 원을 이루며 펼쳐져 있어 해변이 한눈에 들어온다. 
       휴양지로서 기능을 할 수 있는 민박과 야영 등 숙박과 편의시설이 잘 갖추어져 있다. 
       해안에서 바다낚시를 즐길 수 있고 인근 칠암에서는 어항이 있어 생선횟집이 늘어서 있다. 
       매년 8월 1일부터 4일간 수상무대에서 갯마을 마당극 축제가 열린다.
         </p>
         <div class="tag_box">
            <span>#일광해수욕장</span>
            <span>#노송숲</span>
            <span>#관광</span>
         </div>
         <ul class="c_list">
            <li class="one">
               <em>주소</em>
              <p>부산 기장군 일광면 삼성리</p>
            </li>
            
            <li class="two">
               <em>전화번호</em>
               <p>051-709-5446</p>
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
                           center: new kakao.maps.LatLng(35.26092720000000, 129.23367443953000),
                           level: 1
                     };

                     var map = new kakao.maps.Map(container, options);
                     
                     var markerPosition  = new kakao.maps.LatLng(35.26092720000000, 129.23367443953000); 

                     // 마커를 생성합니다
                     var marker = new kakao.maps.Marker({
                         position: markerPosition
                     });

                     // 마커가 지도 위에 표시되도록 설정합니다
                     marker.setMap(map);
                     
                     var iwContent = '<div style="padding:5px;">&nbsp;&nbsp;&nbsp;&nbsp;일광해수욕장</div>',
				     iwPosition = new kakao.maps.LatLng(35.26092720000000, 129.23367443953000); //인포윈도우 표시 위치입니다
				    	
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
                  <img alt="사진1" src="images/일광1.PNG" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진2" src="images/일광2.PNG" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진3"src="images/일광3.PNG" style="width:490px; height:350px;">
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
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
                  <li class="active"><a href="courseH.jsp">해운대</a></li>
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
   <div class="svisual_wrap sub01_02_01">
      <div class="title_wrap">
         <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;해운대</strong>
      </div>
   </div>
</div>

<div id="body_layout" class   ="sub01_01_02_01">
   <div class="body_wrap">
      <div id="location">
         <div id="navigate">
            <h2>바다향과 함께하는 부산 여행</h2>
            <ul class="dir">
               <li class="icon home">HOME</li>
               <li>해운대</li>
               <li>바다향과 함께하는 부산 여행</li>
            </ul>
         </div>
      </div>
      
   <div id="txt" class="contents_wrap">
   <ul class="tab-ul deth-4st tab-col-4" style="margin-bottom:80px;">
      <li>
         <!-- 주소 링크는 그 코스 페이지 (아직 안넣음) -->
         <a href="courseH.jsp" target="_self">
               <span>해운대가 처음이신가요?</span>
            </a>
      </li>
      
      <li class="on">
         <a href="courseH_2.jsp" target="_self">
               <span>색다른 해운대</span>
            </a>
      </li>
      
         <li>
         <a href="courseH_3.jsp" target="_self">
               <span>연인과 함께하기 좋은 해운대</span>
            </a>
      </li>
      
         <li >
         <a href="courseH_4.jsp" target="_self">
               <span>가족과 함께하기 좋은 해운대</span>
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
            동백섬
         </h2>
   <div class="course_wrap">
      <div class="txt_box">
         <p>
         사스레피나무는 동백섬 해안가에 자생하며 3~4월에 꽃을 피운다.동백꽃이 만발하여 도심의 소음과 파도 소리를 차단해준다. 
         전망 데크에는 망원경도 설치되어 있다. "부산과 쓰시마 간의 거리가 65km인데 해안선 전부가 다 보인다는 것은 아무리 날씨가 맑다
         해도 인간 시력의 한계를 넘는 것이며 신기루일 가능성이 높다"
         </p>
         <div class="tag_box">
            <span>#동백꽃</span>
            <span>#부산 오륙도</span>
            <span>#걷기 좋은</span>
         </div>
         <ul class="c_list">
            <li class="one">
               <em>주소</em>
               <p>부산 해운대구 우동 710-1</p>
            </li>
            
            <li class="two">
               <em>전화번호</em>
               <p>051-749-7621</p>
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
                           center: new kakao.maps.LatLng(35.154168530053475, 129.1521190385518),
                           level: 1
                     };

                     var map = new kakao.maps.Map(container, options);
                     
                     var markerPosition  = new kakao.maps.LatLng(35.154168530053475, 129.1521190385518); 

                     // 마커를 생성합니다
                     var marker = new kakao.maps.Marker({
                         position: markerPosition
                     });

                     // 마커가 지도 위에 표시되도록 설정합니다
                     marker.setMap(map);
                     
                     var iwContent = '<div style="padding:5px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;동백섬</div>',
				     iwPosition = new kakao.maps.LatLng(35.154168530053475, 129.1521190385518); //인포윈도우 표시 위치입니다
				    	
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
                  <img alt="사진1" src="images/동백1.PNG" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진2" src="images/동백2.PNG" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진3" src="images/동백3.PNG" style="width:490px; height:350px;">
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
            <i>02</i>
            BEXCO
         </h2>
   <div class="course_wrap">
      <div class="txt_box">
         <p>
           지난 2001년 5월 해운대라는 대한민국 최고의 관광명소에서 개관한 벡스코는해마다 행사개최 기록을 갱신해가며 매머드급 국제전시회와 국제회의는
           물론 중소 규모 회의와 기업행사 등 이벤트에 이르기까지 다양한 규모와 성격의 전시컨벤션 행사를 성공적으로 개최하고 있으며,
           이를 기반으로 '아시아 최고의 전시, 컨벤션 허브'로 자리매김해 나가고 있습니다.
         </p>
         <div class="tag_box">
            <span>#부산 벡스코</span>
            <span>#다양한 행사</span>
            <span>#전시</span>
         </div>
         <ul class="c_list">
            <li class="one">
               <em>주소</em>
               <p>부산 해운대구 APEC로 55</p>
            </li>
            
            <li class="two">
               <em>전화번호</em>
               <p>051-740-7300</p>
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
                           center: new kakao.maps.LatLng(35.16925953790563, 129.13578633373436),
                           level: 1
                     };

                     var map = new kakao.maps.Map(container, options);
                     
                     var markerPosition  = new kakao.maps.LatLng(35.16925953790563, 129.13578633373436); 

                     // 마커를 생성합니다
                     var marker = new kakao.maps.Marker({
                         position: markerPosition
                     });

                     // 마커가 지도 위에 표시되도록 설정합니다
                     marker.setMap(map);
                     
                     var iwContent = '<div style="padding:5px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BEXCO</div>',
				     iwPosition = new kakao.maps.LatLng(35.16925953790563, 129.13578633373436); //인포윈도우 표시 위치입니다
				    	
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
                  <img alt="사진1" src="images/벡1.PNG" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진2" src="images/벡2.PNG" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진3" src="images/벡3.PNG" style="width:490px; height:350px;">
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
            <i>03</i>
             해운대해수욕장
         </h2>
   <div class="course_wrap">
      <div class="txt_box">
         <p>
         백사장 길이 1.8km, 너비 35~50m, 면적 7만 2000㎡이다. 수심이 얕고 조수의 변화도 심하지 않아 해수욕장으로서의 조건이 좋다. 
         숙박·오락시설이 잘 정비된 국내 1급의 해수욕장으로, 국내 유수의 온천장까지 끼고 있어 해마다 여름철에는 50~60만의 인파로 붐빈다.
         </p>
         <div class="tag_box">
            <span>#해운대해수욕장</span>
            <span>#해운대부산바다축제</span>
            <span>#해맞이부산축제</span>
         </div>
         <ul class="c_list">
            <li class="one">
               <em>주소</em>
               <p>부산 해운대구 우동</p>
            </li>
            
            <li class="two">
               <em>전화번호</em>
               <p>051-749-7601</p>
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
                           center: new kakao.maps.LatLng(35.15867298759479, 129.15972491191897),
                           level: 1
                     };

                     var map = new kakao.maps.Map(container, options);
                     
                     var markerPosition  = new kakao.maps.LatLng(35.15867298759479, 129.15972491191897); 

                     // 마커를 생성합니다
                     var marker = new kakao.maps.Marker({
                         position: markerPosition
                     });

                     // 마커가 지도 위에 표시되도록 설정합니다
                     marker.setMap(map);
                     
                     var iwContent = '<div style="padding:5px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;해운대해수욕장</div>',
				     iwPosition = new kakao.maps.LatLng(35.15867298759479, 129.15972491191897); //인포윈도우 표시 위치입니다
				    	
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
                  <img alt="사진1" src="images/해운대1.PNG" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진2" src="images/해운대2.PNG" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진3" src="images/해운대3.PNG" style="width:490px; height:350px;">
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
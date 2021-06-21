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
                  <li class="active"><a href="courseN.jsp">남포동</a></li>
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
   <div class="svisual_wrap sub03_02_01">
      <div class="title_wrap">
         <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;남포동</strong>
      </div>
   </div>
</div>

<div id="body_layout" class   ="sub01_01_02_01">
   <div class="body_wrap">
      <div id="location">
         <div id="navigate">
            <h2>자갈치와 함께하는 부산 여행</h2>
            <ul class="dir">
               <li class="icon home">HOME</li>
               <li>남포동</li>
               <li>자갈치과 함께하는 부산 여행</li>
            </ul>
         </div>
      </div>
      
   <div id="txt" class="contents_wrap">
   <ul class="tab-ul deth-4st tab-col-4" style="margin-bottom:80px;">
      <li>
         <!-- 주소 링크는 그 코스 페이지 (아직 안넣음) -->
         <a href="courseN.jsp" target="_self">
               <span>제 2의 국제시장 남포동</span>
            </a>
      </li>
      
      <li>
         <a href="courseN_2.jsp" target="_self">
               <span>역사가 살아있는 남포동</span>
            </a>
      </li>
      
         <li class="on">
         <a href="courseN_3.jsp" target="_self">
               <span>먹거리가 다양한 남포동</span>
            </a>
      </li>
      
         <li>
         <a href="courseN_4.jsp" target="_self">
               <span>가족들과 함께하기 좋은 남포동</span>
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
            자갈치시장
         </h2>
   <div class="course_wrap">
      <div class="txt_box">
         <p>
          오늘날 자갈치시장이 있는 곳은 남쪽의 물가라는 뜻인 남빈으로 불렸다. 
         바닷가에는 주먹만 한 자갈들이 있어 자갈치시장이라는 이름이 생겼으며, 일제강점기 때 매립과 매축 공사를 통해 남항이 건설되었다. 
         남항은 부산의 어업 기지가 되었고, 일제는 수산물 도매시장을 세워 경남에서 생산되는 수산물을 장악하고 통제했다.
         </p>
         <div class="tag_box">
            <span>#자갈치시장</span>
            <span>#먹을거리</span>
            <span>#역사가있는</span>
         </div>
         <ul class="c_list">
            <li class="one">
               <em>주소</em>
               <p>부산 중구 자갈치해안로 52 자갈치시장</p>
            </li>
            
            <li class="two">
               <em>전화번호</em>
               <p>051-245-2594</p>
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
                           center: new kakao.maps.LatLng(35.0965534847698, 129.03058570697607),
                           level: 1
                     };

                     var map = new kakao.maps.Map(container, options);
                     
                     var markerPosition  = new kakao.maps.LatLng(35.0965534847698, 129.03058570697607); 

                     // 마커를 생성합니다
                     var marker = new kakao.maps.Marker({
                         position: markerPosition
                     });

                     // 마커가 지도 위에 표시되도록 설정합니다
                     marker.setMap(map);
                     
                     var iwContent = '<div style="padding:5px;">&nbsp;&nbsp;&nbsp;&nbsp; 자갈치시장</div>',
				     iwPosition = new kakao.maps.LatLng(35.0965534847698, 129.03058570697607); //인포윈도우 표시 위치입니다
				    	
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
                  <img alt="사진1" src="images/자갈치시장1.PNG" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진2" src="images/자갈치시장2.PNG" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진3" src="images/자갈치시장3.PNG" style="width:490px; height:350px;">
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
            삼진어묵체험역사관
         </h2>
   <div class="course_wrap">
      <div class="txt_box">
         <p>
         삼진어묵은 1953년부터 3대 째 가업을 잇고 있는 대한민국 대표 어묵 브랜드입니다.
       삼진어묵은 반찬용이라는 기존 인식을 깨고, 간식용으로의 인식 전환을 위해 2013년 12월, 
       어묵베이커리 사업을 시작하였습니다. 다양한 종류의 어묵을 진열해 놓은 베이커리 형 매장과
       '어묵고로케'와 같은 간식용 어묵 제품 개발을 통해 지금까지 많은 사랑을 받아오고 있습니다.
       삼진어묵 영도본점은 제품 구입과 함께 1953년부터 시작된 삼진어묵의 역사를 한눈에 볼 수 있는
       역사관을 겸비한 차별화된 공간인 '마켓&뮤지엄'으로 새단장해 2020년 8월 7일에 재오픈 하였다.
         </p>
         <div class="tag_box">
            <span>#어묵</span>
            <span>#부산여행</span>
            <span>#부산어묵</span>
         </div>
         <ul class="c_list">
            <li class="one">
               <em>주소</em>
               <p>부산 영도구 태종로99번길 36</p>
            </li>
            
            <li class="two">
               <em>전화번호</em>
               <p>051-412-5468</p>
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
                           center: new kakao.maps.LatLng(35.093005115597954, 129.0427790095042),
                           level: 1
                     };

                     var map = new kakao.maps.Map(container, options);
                     
                     var markerPosition  = new kakao.maps.LatLng(35.093005115597954, 129.0427790095042); 

                     // 마커를 생성합니다
                     var marker = new kakao.maps.Marker({
                         position: markerPosition
                     });

                     // 마커가 지도 위에 표시되도록 설정합니다
                     marker.setMap(map);
                     
                     var iwContent = '<div style="padding:5px;">&nbsp;&nbsp;&nbsp;&nbsp; 삼진어묵체험역사관</div>',
				     iwPosition = new kakao.maps.LatLng(35.093005115597954, 129.0427790095042); //인포윈도우 표시 위치입니다
				    	
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
                  <img alt="사진1" src="images/어묵1.PNG" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진2" src="images/어묵2.PNG" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진3" src="images/어묵3.PNG" style="width:490px; height:350px;">
                  </li>
               </ul>
            </div>
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
             창선동 먹자골목
         </h2>
   <div class="course_wrap">
      <div class="txt_box">
         <p>
         창선동 먹자골목은 새콤한 오징어무침을 곁들인 충무김밥과 달달하면서도 매콤한 맛이 매력인 떡볶이, 몰국수와 순대, 부산의 명물인 비빔당면과
         팥빙수까지 다양한 길거리 음식을 맛볼 수 있는 곳입니다.
         40여년의 역사를 자랑하는 곳으로 기무라 타쿠야 주연의 영화'히어로'에서 배경이 되어 외국 관광객도 많이 찾는 곳입니다.
         </p>
         <div class="tag_box">
            <span>#먹자골목</span>
            <span>#부산맛집</span>
            <span>#씨앗 호떡</span>
         </div>
         <ul class="c_list">
            <li class="one">
               <em>주소</em>
               <p>부산 중구 남포동5가</p>
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
                           center: new kakao.maps.LatLng(35.09761051593446, 129.02942311003105),
                           level: 1
                     };

                     var map = new kakao.maps.Map(container, options);
                     
                     var markerPosition  = new kakao.maps.LatLng(35.09761051593446, 129.02942311003105); 

                     // 마커를 생성합니다
                     var marker = new kakao.maps.Marker({
                         position: markerPosition
                     });

                     // 마커가 지도 위에 표시되도록 설정합니다
                     marker.setMap(map);
                     
                     var iwContent = '<div style="padding:5px;">&nbsp;&nbsp;&nbsp;&nbsp;  창선동 먹자골목</div>',
				     iwPosition = new kakao.maps.LatLng(35.09761051593446, 129.02942311003105); //인포윈도우 표시 위치입니다
				    	
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
                  <img alt="사진1" src="images/먹자골목1.PNG" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진2" src="images/먹자골목2.PNG" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진3" src="images/먹자골목3.PNG" style="width:490px; height:350px;">
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
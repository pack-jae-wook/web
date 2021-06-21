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
      
      <li  class="on">
         <a href="courseN_2.jsp" target="_self">
               <span>역사가 살아있는 남포동</span>
            </a>
      </li>
      
         <li>
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
            부산근대역사관
         </h2>
   <div class="course_wrap">
      <div class="txt_box">
         <p>
          일제 강점기인 1929년 지어진 이 건물은 최초에는 식민지 수탈기구인 동양척식주식 회사 부산지점으로 사용되었고, 
          해봉후인 1949년부터는 미국 해외공보처 부산문화원이 되었다.
          이후 부산 시민들의 끊임없는 반환요구로 미문화원이 철수하고, 1999년 대한민국정부로 반환된 것을 그 해 6월 부산시가 인수하였다.
          이 건물이 침략의 상징 이었던 만큼 부산시는 시민들에게 우리의 아픈 역사를 알릴 수 있는 교육의 공간으로 활용하기 위해 근대역사관으로 조성하였다.
          
         </p>
         <div class="tag_box">
            <span>#부산근대역사관</span>
            <span>#일제 강점기</span>
            <span>#역사가있는</span>
         </div>
         <ul class="c_list">
            <li class="one">
               <em>주소</em>
               <p>부산 중구 대청로 104</p>
            </li>
            
            <li class="two">
               <em>전화번호</em>
               <p>051-253-3845</p>
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
                           center: new kakao.maps.LatLng(35.103446702288096, 129.03118155657438),
                           level: 1
                     };

                     var map = new kakao.maps.Map(container, options);
                     
                     var markerPosition  = new kakao.maps.LatLng(35.103446702288096, 129.03118155657438); 

                     // 마커를 생성합니다
                     var marker = new kakao.maps.Marker({
                         position: markerPosition
                     });

                     // 마커가 지도 위에 표시되도록 설정합니다
                     marker.setMap(map);
                     
                     var iwContent = '<div style="padding:5px;">&nbsp;&nbsp;&nbsp;&nbsp; 부산근대역사관</div>',
				     iwPosition = new kakao.maps.LatLng(35.103446702288096, 129.03118155657438); //인포윈도우 표시 위치입니다
				    	
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
                  <img alt="사진1" src="images/근대1.PNG" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진2" src="images/근대2.PNG" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진3" src="images/근대3.PNG" style="width:490px; height:350px;">
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
            용두산공원
         </h2>
   <div class="course_wrap">
      <div class="txt_box">
         <p>
         용두산(49m)은 부산시내에 있는 구릉으로서 부산 2명산의 하나이다.
         옛날에는 울창한 소나무 사이로 바다가 보였다 하여 송현산이라 하였다가 그후 산세가 흡사 용 모양이어서
         일본에서 건너오는 왜구들을 삼켜버릴 기상이라 하여 용두산이라고 부리게 되었다.
         부산항과 영도가 내려다보이는 경승지이며, 특히 부산탑에서 내려다보는 야경이 아름답다.
         </p>
         <div class="tag_box">
            <span>#용두산공원</span>
            <span>#전망대</span>
            <span>#경치좋은곳</span>
         </div>
         <ul class="c_list">
            <li class="one">
               <em>주소</em>
               <p>부산 중구 용두산길 37-55</p>
            </li>
            
            <li class="two">
               <em>전화번호</em>
               <p>051-860-7820</p>
            </li>
            
            <li class="three">
               <em>홈페이지</em>
               <a href="http://yongdusanpark.bisco.or.kr/" target="_blank" rel="noopener noreferrer" title="새창">
                  <p>http://yongdusanpark.bisco.or.kr/</p>
                  <span class="file_icon home"></span>
               </a>
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
                           center: new kakao.maps.LatLng(35.100466489410564, 129.03281688080844),
                           level: 1
                     };

                     var map = new kakao.maps.Map(container, options);
                     
                     var markerPosition  = new kakao.maps.LatLng(35.100466489410564, 129.03281688080844); 

                     // 마커를 생성합니다
                     var marker = new kakao.maps.Marker({
                         position: markerPosition
                     });

                     // 마커가 지도 위에 표시되도록 설정합니다
                     marker.setMap(map);
                     
                     var iwContent = '<div style="padding:5px;">&nbsp;&nbsp;&nbsp;&nbsp; 용두산공원</div>',
				     iwPosition = new kakao.maps.LatLng(35.100466489410564, 129.03281688080844); //인포윈도우 표시 위치입니다
				    	
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
                  <img alt="사진1" src="images/용두산1.PNG" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진2" src="images/용두산2.PNG" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진3" src="images/용두산3.PNG" style="width:490px; height:350px;">
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
             부산민주공원
         </h2>
   <div class="course_wrap">
      <div class="txt_box">
         <p>
         민주공원 상징물인 민주횃불이 민주항쟁기념관 가운데 있으며, 전망대에서는 부산 원도심과 부산항을 한눈에 볼 수 있다.
         수목원에는 약 4백 종의 수목이 자라고 있고, 일주도로에는 고난의 장, 추념의 장, 정의의 장 등 테마별로 휴식공간이 마련되어 있다.
         인근에 중앙도서관과 광복회관, 부산대첩 승전기념전적비 등이 있다.
          </p>
         <div class="tag_box">
            <span>#부산민주공원</span>
            <span>#민주항쟁기념관</span>
            <span>#민주주의</span>
         </div>
         <ul class="c_list">
            <li class="one">
               <em>주소</em>
               <p>부산 중구 민주공원길 19</p>
            </li>
            
            <li class="two">
               <em>전화번호</em>
               <p>051-790-7400</p>
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
                           center: new kakao.maps.LatLng(35.11027513429027, 129.02802360256624),
                           level: 1
                     };

                     var map = new kakao.maps.Map(container, options);
                     
                     var markerPosition  = new kakao.maps.LatLng(35.11027513429027, 129.02802360256624); 

                     // 마커를 생성합니다
                     var marker = new kakao.maps.Marker({
                         position: markerPosition
                     });

                     // 마커가 지도 위에 표시되도록 설정합니다
                     marker.setMap(map);
                     
                     var iwContent = '<div style="padding:5px;">&nbsp;&nbsp;&nbsp;&nbsp; 부산민주공원</div>',
				     iwPosition = new kakao.maps.LatLng(35.11027513429027, 129.02802360256624); //인포윈도우 표시 위치입니다
				    	
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
                  <img alt="사진1" src="images/민주1.PNG" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진2" src="images/민주2.PNG" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진3" src="images/민주3.PNG" style="width:490px; height:350px;">
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
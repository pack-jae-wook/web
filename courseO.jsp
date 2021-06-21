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
                  <li ><a href="courseG.jsp">기장</a></li>
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
   <div class="svisual_wrap sub04_02_01">
      <div class="title_wrap">
         <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;광안리</strong>
      </div>
   </div>
</div>

<div id="body_layout" class   ="sub01_01_02_01">
   <div class="body_wrap">
      <div id="location">
         <div id="navigate">
            <h2>불꽃놀이와 함께하는 부산 여행</h2>
            <ul class="dir">
               <li class="icon home">HOME</li>
               <li>광안리</li>
               <li>불꽃놀이와 함께하는 부산 여행</li>
            </ul>
         </div>
      </div>
      
   <div id="txt" class="contents_wrap">
   <ul class="tab-ul deth-4st tab-col-4" style="margin-bottom:80px;">
      <li  class="on" >
         <!-- 주소 링크는 그 코스 페이지 (아직 안넣음) -->
         <a href="courseO.jsp" target="_self">
               <span>친구들과 함께하기 좋은 광안리</span>
            </a>
      </li>
      
      <li>
         <a href="courseO_2.jsp" target="_self">
               <span>당일치기 광안리코스</span>
            </a>
      </li>
      
         <li>
         <a href="courseO_3.jsp" target="_self">
               <span>자연과 함께하는 광안리</span>
            </a>
      </li>
      
         <li>
         <a href="courseO_4.jsp" target="_self">
               <span>가족과 함께하기 좋은 광안리</span>
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
           민락수변공원
         </h2>
   <div class="course_wrap">
      <div class="txt_box">
         <p>
         이곳은 원래 바다였으나 지역개발 촉진과 지역주민의 편의를 위해 공원으로 조성되었다. 1992년 공사를 시작하여 1997년 완공되었다. 
         4만 명을 수용할 수 있으며, 화단과 그늘집 벤치 등의 편의 시설이 갖추어져 있다.
         바다를 바라보며 행사를 관람할 수 있는 넓이 3,040m의 스탠드는 만조 때면 바닷물이 들어와 발을 담글 수 있다.
         </p>
         <div class="tag_box">
             <span>#민락수변공원</span>
            <span>#분위기 좋은</span>
            <span>#밤바다 야외 횟집</span>
         </div>
         <ul class="c_list">
            <li class="one">
               <em>주소</em>
              <p>부산 수영구 민락수변로 129 수변공원</p>
            </li>
            
            <li class="two">
               <em>전화번호</em>
               <p>051-610-4742</p>
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
                           center: new kakao.maps.LatLng(35.156080726787884, 129.13432059587993),
                           level: 1
                     };

                     var map = new kakao.maps.Map(container, options);
                     
                     var markerPosition  = new kakao.maps.LatLng(35.156080726787884, 129.13432059587993); 

                     // 마커를 생성합니다
                     var marker = new kakao.maps.Marker({
                         position: markerPosition
                     });

                     // 마커가 지도 위에 표시되도록 설정합니다
                     marker.setMap(map);
                     
                     var iwContent = '<div style="padding:5px;">&nbsp;&nbsp;민락수변공원</div>',
				     iwPosition = new kakao.maps.LatLng(35.156080726787884, 129.13432059587993); //인포윈도우 표시 위치입니다
				    	
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
                  <img alt="사진1" src="images/수변1.PNG" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진2" src="images/수변2.PNG" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진3" src="images/수변3.PNG" style="width:490px; height:350px;">
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
             광안리해수욕장
         </h2>
   <div class="course_wrap">
      <div class="txt_box">
         <p>
          광안리해수욕장은 부산광역시 수영구 광안2동에 있으며 해운대 해수욕장의 서쪽에 위치하고 있다. 총면적 82,000㎡, 길이 1.4km, 사장폭은 25~110m의 질 좋은 모래사장이 있고,
          지속적인 수질 정화를 실시하여 인근의 수영강에 다시 고기가 살 수 있을 정도로 깨끗한 수질을 자랑하며, 특히 젊은이들이 즐겨 찾는 명소이다. 
          광안리에서는 해수욕뿐 아니라 독특한 분위기를 자아내는 레스토랑, 카페 등과 시내 중심가 못지않은 유명 패션상가들이 즐비하며, 
          다양한 먹을거리, 볼거리가 있어서 피서의 즐거움을 더해준다. 특히 밤이 되면 광안대교의 아름다운 야경이 장관이다.
         </p>
         <div class="tag_box">
            <span>#광안리해수욕장</span>
            <span>#드라이브</span>
            <span>#광안리불꽃축제</span>
         </div>
         <ul class="c_list">
            <li class="one">
               <em>주소</em>
                <p>부산 수영구 광안해변로 219</p>
            </li>
            
            <li class="two">
               <em>전화번호</em>
               <p>051-622-4251</p>
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
                           center: new kakao.maps.LatLng(35.153174996361074, 129.11910819675717),
                           level: 1
                     };

                     var map = new kakao.maps.Map(container, options);
                     
                     var markerPosition  = new kakao.maps.LatLng(35.153174996361074, 129.11910819675717); 

                     // 마커를 생성합니다
                     var marker = new kakao.maps.Marker({
                         position: markerPosition
                     });

                     // 마커가 지도 위에 표시되도록 설정합니다
                     marker.setMap(map);
                     
                     var iwContent = '<div style="padding:5px;">&nbsp;&nbsp;광안리해수욕장</div>',
				     iwPosition = new kakao.maps.LatLng(35.153174996361074, 129.11910819675717); //인포윈도우 표시 위치입니다
				    	
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
                  <img alt="사진1" src="images/광안리1.PNG" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진2" src="images/광안리2.PNG" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진3" src="images/광안리3.PNG" style="width:490px; height:350px;">
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
          고은사진미술관
         </h2>
   <div class="course_wrap">
      <div class="txt_box">
         <p>
          〈사회주의 모더니즘〉은 대형카메라의 장점을 극대화한 작업으로 평가됩니다. 적절한 시간과 장소, 모든 흐름이 적합하게 배치되는 순간을 기다려 촬영하는 순간은 고도의 정밀성을 요구하는데요.
          그는 일관된 눈높이에서 실제와 유사한 비율과 거리, 그리고 비슷한 빛과 파스텔 톤의 부드러운 색채 등 절제된 관점을 적용하면서도 개별 이미지의 다양성과 고유한 특징을 보여주며, 
          이를 통해 동유럽의 모더니즘은 새로운 방식으로 전유됩니다.

         </p>
         <div class="tag_box">
            <span>#부산미술관</span>
            <span>#부산전시</span>
            <span>#고은사진미술관</span>
         </div>
         <ul class="c_list">
            <li class="one">
               <em>주소</em>
               <p>부산 해운대구 해운대로452번길 16</p>
            </li>
            
            <li class="two">
               <em>전화번호</em>
                <p>051-746-0055</p>
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
                           center: new kakao.maps.LatLng(35.16334857085072, 129.14104056866722),
                           level: 1
                     };

                     var map = new kakao.maps.Map(container, options);
                     
                     var markerPosition  = new kakao.maps.LatLng(35.16334857085072, 129.14104056866722); 

                     // 마커를 생성합니다
                     var marker = new kakao.maps.Marker({
                         position: markerPosition
                     });

                     // 마커가 지도 위에 표시되도록 설정합니다
                     marker.setMap(map);
                     
                     var iwContent = '<div style="padding:5px;">&nbsp;&nbsp;고은사진미술관</div>',
				     iwPosition = new kakao.maps.LatLng(35.16334857085072, 129.14104056866722); //인포윈도우 표시 위치입니다
				    	
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
                  <img alt="사진1" src="images/미술관1.PNG" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진2" src="images/미술관2.PNG" style="width:490px; height:350px;">
                  </li>
                  <li>
                  <img alt="사진3"src="images/미술관3.PNG" style="width:490px; height:350px;">
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
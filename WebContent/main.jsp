<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>치킨의 민족</title>
    <meta name="author" content="Matthew Howell" />
    <meta name="description" content="fullPage continuous scrolling demo." />
    <meta name="keywords"  content="fullpage,jquery,demo,scroll,loop,continuous" />
    <meta name="Resource-type" content="Document" />


    <link rel="stylesheet" type="text/css" href="jquery.fullPage.css" />
    <link rel="stylesheet" type="text/css" href="examples.css" />


    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>

    <script type="text/javascript" src="jquery.fullPage.js"></script>
    <script type="text/javascript" src="examples.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#fullpage').fullpage({
              sectionsColor: ['#2ac1bc', '#2ac1bc', '#2ac1bc', '#2ac1bc', '#fff'],
              anchors: ['firstPage', 'secondPage', '3rdPage', '4thpage', 'lastPage'],
              menu: '#menu',
            });
        });
    </script>

</head>

<body>


<div id="fullpage">
    <div class="section " id="section0">
    	<div class="minjok">
    		<img src="img/minjok2.png" alt="fullPage" width="250" height="50"/>
    	<div class="button">
    		
    	<%
			String login = (String)session.getAttribute("login");
		%>
    	<%
    		if(login==null){
    	%>
    		<input type="button" onclick="location.href='loginForm.jsp'" value="로그인">
    		<input type="button" onclick="location.href='joinForm.html'" value="회원가입">
    	<%} else{ %>
    		<input type="button" onclick="location.href='logout.jsp'" value="로그아웃">
    		<input type="button" onclick="location.href='updateForm.jsp?id=<%=login %>'" value="마이페이지">
    		
    	<%} %>
    	</div></div>
    	<div class="baemin">
    	<div class="message">
    		<img src="img/msg1.png" width=650 height=420/>
    		<p><br>지금 치킨 한 마리 보내주고 싶은 사람에게 선물해보세요.<br>
    		선물 받은 상품권으로 치민에서 자유롭게 주문할 수 있습니다.<br><br>
    		* 단, 전국별미, 사전예약 제외</p>
    	</div>
        <img class="picture" src="img/present.png" alt="fullPage" width=500 height=600/>
    	</div>
    </div>
    <div class="section" id="section1">
		<div class="minjok">
    		<img src="img/minjok2.png" alt="fullPage" width="250" height="50"/>
    	<div class="button">
    	<%
    		if(login==null){
    	%>
    		<input type="button" onclick="location.href='loginForm.jsp'" value="로그인">
    		<input type="button" onclick="location.href='joinForm.html'" value="회원가입">
    	<%} else{ %>
    		<input type="button" onclick="location.href='logout.jsp'" value="로그아웃">
    		<input type="button" onclick="location.href='updateForm.jsp?id=<%=login %>'" value="마이페이지">
    	<%} %>
    	</div></div>
		<div class="message">
    		<img src="img/msg2.png" width=500 height=450/>
    		<p><br>3천만 이상이 선택한 치킨의 민족<br>
    		업계 최다 배달가능 업소 보유 중!</p>
    	</div>
        <img class="picture1" src="img/road.png" alt="fullPage" width=250 height=650/>
        <img class="picture" src="img/bike.png" alt="fullPage" width=250 height=400/>
    </div>
    <div class="section" id="section2">
        <div class="minjok">
    		<img src="img/minjok2.png" alt="fullPage" width="250" height="50"/>
    	<div class="button">
    	<%
    		if(login==null){
    	%>
    		<input type="button" onclick="location.href='loginForm.jsp'" value="로그인">
    		<input type="button" onclick="location.href='joinForm.html'" value="회원가입">
    	<%} else{ %>
    		<input type="button" onclick="location.href='logout.jsp'" value="로그아웃">
			<input type="button" onclick="location.href='updateForm.jsp?id=<%=login %>'" value="마이페이지">    	
		<%} %>
    	</div></div>
		<div class="message">
    		<img src="img/msg3.png" width=600 height=450/>
    		<p><br>배달이 안되면 동네 맛집까지~<br>
    		치민라이더스가 직접 배달해드립니다.<br><br>
    		서울 전지역, 경기 및 광역시 일부 지역에서 서비스 이용 가능!</p>
    	</div>
        <img class="picture" src="img/saram.png" alt="fullPage" width="800" height="500" />
    </div>
    <div class="section" id="section3">
    	<div class="brand">
			<div class="chicken" onclick="location.href='category.jsp'">
			<p>교촌치킨</p>
			<img src="img/kyochon.jpg">
			</div>
			<div class="chicken">
			<p>BBQ</p>
			<img src="img/bbq.jpg">
			</div>
			<div class="chicken">
			<p>BHC</p>
			<img src="img/bhc.jpg">
			</div>
			<div class="chicken">
			<p>네네치킨</p>
			<img src="img/NN.jpg">
			</div>
			<div class="chicken">
			<p>굽네치킨</p>
			<img src="img/GN.jpg">
			</div>
			<div class="chicken">
			<p>푸라닭치킨</p>
			<img src="img/PD.jpg">
			</div>
			<div class="chicken">
			<p>60계</p>
			<img src="img/60K.png">
			</div>
			<div class="chicken">
			<p>멕시카나</p>
			<img src="img/MK.png">
			</div>
			<div class="chicken">
			<p>페리카나</p>
			<img src="img/PK.jpg">
			</div>
	   </div>
    </div>
    <div class="section" id="section4">
        <div class="woohaha">
        	<div class="woohaha_img">
        	<img class="picture" src="img/font.png" width="700" height="100">
        	<img class="picture1" src="img/woohaha.png" width="250" height="300">
        	</div>
        	<p>
        	(주)우하하남매들<br>
        	서울특별시 강남구 테헤란로1길 10 세경빌딩 3층<br><br>
        	사업자번호:123-45-67890<br>
        	통신판매업: 서울 강남-1111<br><br>
        	전자금융분쟁처리<br>
        	대표전화 : 1600-9870 | 팩스 : 050-5050-0500<br>
        	대표메일 : master@woohaha.com<br>
        	</p>
        </div>
    </div>
</div>

</body>
</html>
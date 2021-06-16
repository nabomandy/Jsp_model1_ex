<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>ġŲ�� ����</title>
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
    		<input type="button" onclick="location.href='loginForm.jsp'" value="�α���">
    		<input type="button" onclick="location.href='joinForm.html'" value="ȸ������">
    	<%} else{ %>
    		<input type="button" onclick="location.href='logout.jsp'" value="�α׾ƿ�">
    		<input type="button" onclick="location.href='updateForm.jsp?id=<%=login %>'" value="����������">
    		
    	<%} %>
    	</div></div>
    	<div class="baemin">
    	<div class="message">
    		<img src="img/msg1.png" width=650 height=420/>
    		<p><br>���� ġŲ �� ���� �����ְ� ���� ������� �����غ�����.<br>
    		���� ���� ��ǰ������ ġ�ο��� �����Ӱ� �ֹ��� �� �ֽ��ϴ�.<br><br>
    		* ��, ��������, �������� ����</p>
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
    		<input type="button" onclick="location.href='loginForm.jsp'" value="�α���">
    		<input type="button" onclick="location.href='joinForm.html'" value="ȸ������">
    	<%} else{ %>
    		<input type="button" onclick="location.href='logout.jsp'" value="�α׾ƿ�">
    		<input type="button" onclick="location.href='updateForm.jsp?id=<%=login %>'" value="����������">
    	<%} %>
    	</div></div>
		<div class="message">
    		<img src="img/msg2.png" width=500 height=450/>
    		<p><br>3õ�� �̻��� ������ ġŲ�� ����<br>
    		���� �ִ� ��ް��� ���� ���� ��!</p>
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
    		<input type="button" onclick="location.href='loginForm.jsp'" value="�α���">
    		<input type="button" onclick="location.href='joinForm.html'" value="ȸ������">
    	<%} else{ %>
    		<input type="button" onclick="location.href='logout.jsp'" value="�α׾ƿ�">
			<input type="button" onclick="location.href='updateForm.jsp?id=<%=login %>'" value="����������">    	
		<%} %>
    	</div></div>
		<div class="message">
    		<img src="img/msg3.png" width=600 height=450/>
    		<p><br>����� �ȵǸ� ���� ��������~<br>
    		ġ�ζ��̴����� ���� ����ص帳�ϴ�.<br><br>
    		���� ������, ��� �� ������ �Ϻ� �������� ���� �̿� ����!</p>
    	</div>
        <img class="picture" src="img/saram.png" alt="fullPage" width="800" height="500" />
    </div>
    <div class="section" id="section3">
    	<div class="brand">
			<div class="chicken" onclick="location.href='category.jsp'">
			<p>����ġŲ</p>
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
			<p>�׳�ġŲ</p>
			<img src="img/NN.jpg">
			</div>
			<div class="chicken">
			<p>����ġŲ</p>
			<img src="img/GN.jpg">
			</div>
			<div class="chicken">
			<p>Ǫ���ġŲ</p>
			<img src="img/PD.jpg">
			</div>
			<div class="chicken">
			<p>60��</p>
			<img src="img/60K.png">
			</div>
			<div class="chicken">
			<p>�߽�ī��</p>
			<img src="img/MK.png">
			</div>
			<div class="chicken">
			<p>�丮ī��</p>
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
        	(��)�����ϳ��ŵ�<br>
        	����Ư���� ������ �������1�� 10 ������� 3��<br><br>
        	����ڹ�ȣ:123-45-67890<br>
        	����Ǹž�: ���� ����-1111<br><br>
        	���ڱ�������ó��<br>
        	��ǥ��ȭ : 1600-9870 | �ѽ� : 050-5050-0500<br>
        	��ǥ���� : master@woohaha.com<br>
        	</p>
        </div>
    </div>
</div>

</body>
</html>
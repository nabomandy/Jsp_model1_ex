<%@page import="dao.MemberDao"%>
<%@page import="model.Member"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String login = (String)session.getAttribute("login");
	String id = request.getParameter("id");
	if(login == null || login.trim().equals("")){
%>
	<script type="text/javascript">
		alert("로그인이 필요합니다.");
		location.href="loginForm.jsp";
	</script>
<%
	}else{
		Member mem = new MemberDao().selectOne(id);
%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8" />
    <title>치킨의민족 계정</title>

<link rel="stylesheet" href="update.css">

<script type="text/javascript">
   function inchk(f) {
	   if(f.chgpass.value != f.chgpass2.value) {
		   alert("새 비밀번호가 일치하지 않습니다.");
		   f.chgpass2.value="";
		   f.chgpass.focus();
		   return false;
	   }	   return true;  }</script>
</head>

<body>
<div class="header">
        <img src="img/logo.png" onclick="location.href='main.jsp'" id="logo" /></a>
</div>
    <div class="update">
    	<form class="content" action="update.jsp" name="f" method="post"
		onsubmit="return inchk(this)">
    		<div>
    			<h3>아이디</h3>
    			<span class="box">
    			<input type="text" class="int" maxlength="20" name="id" value="<%=mem.getId()%>" readonly/>
    			</span>
    		</div>
    		<div> 
    			<h3>현재비밀번호</h3>
    			<span class="box">
    			<input type="password" class="int" maxlength="20" name="pass" />
    			</span>
    		</div>
    		<div>
    			<h3>새비밀번호</h3>
				<span class="box">
    			<input type="password" class="int" maxlength="20" name="chgpass"/>
    			</span>
    		</div>
    		<div>
    			<h3>새비밀번호확인</h3>
				<span class="box">
    			<input type="password" class="int" maxlength="20" name="chgpass2"/>
    			</span>
    		</div>
    		<div>
    			<h3>이름</h3>
				<span class="box">
    			<input type="text" class="int" maxlength="20" name="name" value="<%=mem.getName()%>"/>
    			</span>    		
    		</div>
    		<div>
    			<h3>이메일</h3>
				<span class="box">
    			<input type="text" class="int" maxlength="20" name="email" value="<%=mem.getEmail()%>"/>
    			</span>
    		</div>
    		<div>
    			<h3>전화번호</h3>
				<span class="box">
    			<input type="text" class="int" maxlength="20" name="tel" value="<%=mem.getTel()%>"/>
    			</span>
    		</div>
    		<div class="btn_area">
                <button type="submit" id="btnJoin">
            <span>수정하기</span>
          	</button>
            </div>
            <div class="btn_area">
                <button type="button" id="btnJoin">
            <span>주문내역</span>
          	</button>
            </div>
    	</form>
    </div>
</body>

</html>
<% }%>
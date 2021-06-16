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
		alert("�α����� �ʿ��մϴ�.");
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
    <title>ġŲ�ǹ��� ����</title>

<link rel="stylesheet" href="update.css">

<script type="text/javascript">
   function inchk(f) {
	   if(f.chgpass.value != f.chgpass2.value) {
		   alert("�� ��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
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
    			<h3>���̵�</h3>
    			<span class="box">
    			<input type="text" class="int" maxlength="20" name="id" value="<%=mem.getId()%>" readonly/>
    			</span>
    		</div>
    		<div> 
    			<h3>�����й�ȣ</h3>
    			<span class="box">
    			<input type="password" class="int" maxlength="20" name="pass" />
    			</span>
    		</div>
    		<div>
    			<h3>����й�ȣ</h3>
				<span class="box">
    			<input type="password" class="int" maxlength="20" name="chgpass"/>
    			</span>
    		</div>
    		<div>
    			<h3>����й�ȣȮ��</h3>
				<span class="box">
    			<input type="password" class="int" maxlength="20" name="chgpass2"/>
    			</span>
    		</div>
    		<div>
    			<h3>�̸�</h3>
				<span class="box">
    			<input type="text" class="int" maxlength="20" name="name" value="<%=mem.getName()%>"/>
    			</span>    		
    		</div>
    		<div>
    			<h3>�̸���</h3>
				<span class="box">
    			<input type="text" class="int" maxlength="20" name="email" value="<%=mem.getEmail()%>"/>
    			</span>
    		</div>
    		<div>
    			<h3>��ȭ��ȣ</h3>
				<span class="box">
    			<input type="text" class="int" maxlength="20" name="tel" value="<%=mem.getTel()%>"/>
    			</span>
    		</div>
    		<div class="btn_area">
                <button type="submit" id="btnJoin">
            <span>�����ϱ�</span>
          	</button>
            </div>
            <div class="btn_area">
                <button type="button" id="btnJoin">
            <span>�ֹ�����</span>
          	</button>
            </div>
    	</form>
    </div>
</body>

</html>
<% }%>
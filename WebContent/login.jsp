<%@page import="dao.MemberDao"%>
<%@page import="model.Member"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	Member mem = new MemberDao().selectOne(id);
	String msg = "아이디를 확인하세요";
	String url = "loginForm.jsp";
	if(mem != null){
		if(pass.equals(mem.getPass())){
	session.setAttribute("login",id);
	msg = mem.getName() + "님이 로그인 하셨습니다.";
	url = "main.jsp";
		} else{
	msg = "비밀번호를 확인 하세요";
		}
	}
%>
<script>
	alert("<%=msg%>");
	location.href="<%=url%>";
</script>
<%@page import="dao.MemberDao"%>
<%@page import="model.Member"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	Member mem = new MemberDao().selectOne(id);
	String msg = "���̵� Ȯ���ϼ���";
	String url = "loginForm.jsp";
	if(mem != null){
		if(pass.equals(mem.getPass())){
	session.setAttribute("login",id);
	msg = mem.getName() + "���� �α��� �ϼ̽��ϴ�.";
	url = "main.jsp";
		} else{
	msg = "��й�ȣ�� Ȯ�� �ϼ���";
		}
	}
%>
<script>
	alert("<%=msg%>");
	location.href="<%=url%>";
</script>
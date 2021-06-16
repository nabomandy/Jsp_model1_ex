<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%	String login = (String)session.getAttribute("login");
	session.invalidate();
%>
<script>
	alert("<%=login%>´Ô ·Î±×¾Æ¿ôµÇ¾ú½À´Ï´Ù.");
	location.href="main.jsp";
</script>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%	String login = (String)session.getAttribute("login");
	session.invalidate();
%>
<script>
	alert("<%=login%>�� �α׾ƿ��Ǿ����ϴ�.");
	location.href="main.jsp";
</script>
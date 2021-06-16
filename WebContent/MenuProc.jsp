<%@page import="model.MenuBean"%>
<%@page import="model.MenuDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>

	<%
	  request.setCharacterEncoding("UTF-8"); //한글처리

	%>

	<!--useBean을 이용하여 한꺼번에 데이터를 받아옴  -->
	<jsp:useBean id="mbean" class="model.MenuBean">
		<jsp:setProperty property="*" name="mbean" />
		<!--*는 전체를 맵핑시키시오  -->
	</jsp:useBean>

	<%

		//데이터베이스 클래스 객체 생성, -> 객체생성을 해야지 그 안에 메소드 사용가능해서 만드는 거. 그외 이유 없음
		MenuDAO mdao = new MenuDAO();
		mdao.insertMenu(mbean);
		
		//회원가입이 되었다면 회워정보를 보여주는 페이지로 이동시킴
		response.sendRedirect("Menu_list.jsp");
	%>







</body>
</html>
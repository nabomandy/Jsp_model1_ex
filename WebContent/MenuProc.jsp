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
	  request.setCharacterEncoding("UTF-8"); //�ѱ�ó��

	%>

	<!--useBean�� �̿��Ͽ� �Ѳ����� �����͸� �޾ƿ�  -->
	<jsp:useBean id="mbean" class="model.MenuBean">
		<jsp:setProperty property="*" name="mbean" />
		<!--*�� ��ü�� ���ν�Ű�ÿ�  -->
	</jsp:useBean>

	<%

		//�����ͺ��̽� Ŭ���� ��ü ����, -> ��ü������ �ؾ��� �� �ȿ� �޼ҵ� ��밡���ؼ� ����� ��. �׿� ���� ����
		MenuDAO mdao = new MenuDAO();
		mdao.insertMenu(mbean);
		
		//ȸ�������� �Ǿ��ٸ� ȸ�������� �����ִ� �������� �̵���Ŵ
		response.sendRedirect("Menu_list.jsp");
	%>







</body>
</html>
<%@page import="model.MenuBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="Member.MemberBeanDAO"%>
<%@ page import="Member.MemberBean"%>
<%@ page import="java.util.Vector"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- 1. ������ ���̽����� ��� ȸ���� ������ ������  2.table ��ũ�� �̿��Ͽ� ȭ�鿡 ȸ������ ������ ��� -->	
	<% 
		MenuBean mbao = new MenuBean();
		mbao.allSelectMenu();
		//ȸ������ ������ �󸶳� ���� �Ǿ��ִ��� �𸣱⿡ ���������� Vector�� �̿��Ͽ� �����͸� ��������
		//���� ������ ������ Ʈ�� ���� �������� �θ� �ڽ� ���� 
	    String<MenuBean> vec = mbao.allSelectMenu(); 
	%>


	<center>
	<h2> ��� ȸ�� ���� </h2>
	
		<table width ="800" border="1">
			<tr height="50">
				<td align = "center" width = "150">���̵� </td>
				<td align = "center" width = "250">�̸��� </td>
				<td align = "center" width = "200">��ȭ��ȣ </td>
				<td align = "center" width = "200">��� </td>
			</tr>
			<% 
				for(int i = 0 ; i<str.size();i++){
				MenuBean bean = str.get(i);//���Ϳ� ��� �� Ŭ������ �ϳ��� ����
			%>
			<tr height="50">
				<td align = "center" width = "150">
					<a href = "MemberInfo.jsp?id=<%=bean.getId()%>">
						<%=bean.getId()%></a>
					</td>
				<td align = "center" width = "250"><%=bean.getEmail()%></td>
				<td align = "center" width = "200"><%=bean.getTel()%></td>
				<td align = "center" width = "200"><%=bean.getHobby()%></td>
			</tr>
			<% 
			}
			%>
		</table>
	</center>
</body>
</html>
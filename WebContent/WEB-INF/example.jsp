<%@page import="dao.BrandDao"%>
<%@page import="java.util.List"%>

<%@page import="model.Brand"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
  
   BrandDao dao = new BrandDao();
   
   List<Brand> list = dao.list(); 
   
%>
<!DOCTYPE html>
<html>
<head>
<title>�Խù� ��� ����</title>
</head>
<body>




	<tr>
		<th width="8%">�귣��</th>
		<th width="50%">�޴�</th>
		<th width="14%">����</th>
	</tr>

	<% for(Brand c : list){%>

	<% if(c.getBrand_Name().equals("BHC")){ %>
	<div class="a" style="border: 2px solid">
		<table class="dsf">
			<tr>
				<td><%=c.getBrand_Name()%></td>
				<td style="text-align: left"><%=c.getMenu() %></td>
				<td><%=c.getPrice() %></td>

			</tr>
		</table>
	</div>

	<% } %>
	<% } %>
	<tr>
		<td colspan="5" style="text-align: right"><a href="writeForm.jsp">[�۾���]</a></td>
	</tr>




</body>
</html>
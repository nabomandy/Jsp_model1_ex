<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	  request.setCharacterEncoding("euc-kr"); //�ѱ�ó��

	String id = request.getParameter("c"); //request��ü�� ����� ����� ���� �� "id"�� ����

	//response.sendRedirect("ResponseRedirect.jsp"); //�帧����
	//-> �����̷�Ʈ �������� �Ѿ �� id���� �����
	//response.sendRedirect("ResponseRedirect.jsp?id="+id); //�帧����
	%>

	<jsp:forward page="ResponseRedirect.jsp">
		<jsp:param value="kkkk" name="id" />
		<jsp:param value="1234" name="phone" />
	</jsp:forward>
	<!-- �帧���� -->
	<!--id �� �ִ� �״�� �Ѿ. ������� �ʰ� �Ѿ  -->


	<h3>
		���̵� =
		<%=id%></h3>

</body>
</html>
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
	  request.setCharacterEncoding("euc-kr"); //한글처리

	String id = request.getParameter("c"); //request객체에 담겨진 사용자 정보 중 "id"만 추출

	//response.sendRedirect("ResponseRedirect.jsp"); //흐름제어
	//-> 리다이렉트 페이지로 넘어갈 때 id값이 사라짐
	//response.sendRedirect("ResponseRedirect.jsp?id="+id); //흐름제어
	%>

	<jsp:forward page="ResponseRedirect.jsp">
		<jsp:param value="kkkk" name="id" />
		<jsp:param value="1234" name="phone" />
	</jsp:forward>
	<!-- 흐름제어 -->
	<!--id 값 있는 그대로 넘어감. 사라지지 않고 넘어감  -->


	<h3>
		아이디 =
		<%=id%></h3>

</body>
</html>
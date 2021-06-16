<%@page import="dao.OrderDao"%>
<%@page import="model.Order"%>
<%@page import="java.util.List"%>
<%@page import="dao.StoreDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<%
  StoreDao dao = new StoreDao();
List<Order> list = dao.listOrder();
String login= (String)session.getAttribute("login");
request.setCharacterEncoding("euc-kr");
String desc=request.getParameter("garbage");
OrderDao od = new OrderDao();

/* od.insertCart(desc, mem); */
od.insertCart(login, desc);

%>
<style>
.orderform{
	border : solid 2px black;
}

.order{
	border : solid 4px red;
}
.content{
	font-size : 20px;
}
</style>
</head>
<body>
<div class="orderform">
<%
for (Order o : list) {
%>
	<%
	if (o.getId().equals(login)) {
	%>
		<div class="order">
		<div class="content">
			<p style="text-align: left"><%=o.getId()%><br>
			<%=o.getContent()%></p>
		</div>
		</div>
	<%
	}
	%>
<%
}
%>
</div>



</body>
</html>
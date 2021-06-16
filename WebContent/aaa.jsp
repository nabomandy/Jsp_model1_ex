<%@page import="dao.OrderDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%  
request.setCharacterEncoding("euc-kr");
String desc=request.getParameter("garbage");
OrderDao od = new OrderDao();
String login= (String)session.getAttribute("login");
/* od.insertCart(desc, mem); */
od.insertCart(login, desc);

String msg="주문이 완료되었습니다.";
String url="category.jsp";

%>
<script>
alert("<%=msg%>");
location.href="<%=url%>";
</script>
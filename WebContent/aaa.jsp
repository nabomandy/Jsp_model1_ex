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

String msg="�ֹ��� �Ϸ�Ǿ����ϴ�.";
String url="category.jsp";

%>
<script>
alert("<%=msg%>");
location.href="<%=url%>";
</script>
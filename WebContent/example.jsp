<%@page import="model.Store"%>
<%@page import="java.util.*"%>
<%@page import="dao.BrandDao"%>
<%@page import="dao.StoreDao"%>

<%@page import="model.Brand"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
   /* int pageNum = 1;
   try{
      pageNum = Integer.parseInt(request.getParameter("pageNum"));
   } catch(NumberFormatException e){   }
   int limit = 3; */
   StoreDao dao = new StoreDao();
   
   /* int boardcount = dao.boardCount(); */
   List<Store> list = dao.list();
   /* int boardnum = boardcount - (pageNum -1)*limit; */
%>
<!DOCTYPE html>
<html>
<head>
<title>�Խù� ��� ����</title>
<link rel="stylesheet" href = "<%=request.getContextPath() %>/chap07_jdbc/css/main.css">
</head>
<body>
<table>
   <caption>MODEL1 �Խ��� ���   </caption>
   <%-- <% if(boardcount == 0){%>
      <tr><td colspan="5">��ϵ� �Խñ��� �����ϴ�.</td></tr>
      
   <% } else {%> --%>
<%--       <tr><td colspan="5" style="text-align:right">�۰���:<%=boardcount %></td></tr>
 --%>      <tr><th width="20%">�귣��</th>
         <th width="20%">���Ը�</th> 
         <th width="20%">����</th>
         <th width="20%">�ּ�</th>
         <th width="20%">��ȣ</th>
         </tr>
         
      <% for(Store c : list){%>
         <div class="div">
         <% if(c.getBrand_name().equals("BBQ")){ %>
         <tr><td><%=c.getBrand_name()%></td><td style="text-align: left">
            
            <%=c.getStore_name() %>
            </td>
            <td><%=c.getArea() %></td>
            <td><%=c.getAddress() %></td>
            <td><%=c.getStore_tel() %></td>
            </tr>
         <% } %>
         </div>
      <% } %>
<%--    <% } %> --%>
   <tr><td colspan="5" style="text-align:right">
      <a href="writeForm.jsp">[�۾���]</a></td></tr>

      
</table>

</body>
</html>
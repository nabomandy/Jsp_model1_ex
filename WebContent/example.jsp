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
<title>게시물 목록 보기</title>
<link rel="stylesheet" href = "<%=request.getContextPath() %>/chap07_jdbc/css/main.css">
</head>
<body>
<table>
   <caption>MODEL1 게시판 목록   </caption>
   <%-- <% if(boardcount == 0){%>
      <tr><td colspan="5">등록된 게시글이 없습니다.</td></tr>
      
   <% } else {%> --%>
<%--       <tr><td colspan="5" style="text-align:right">글개수:<%=boardcount %></td></tr>
 --%>      <tr><th width="20%">브랜드</th>
         <th width="20%">가게명</th> 
         <th width="20%">지역</th>
         <th width="20%">주소</th>
         <th width="20%">번호</th>
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
      <a href="writeForm.jsp">[글쓰기]</a></td></tr>

      
</table>

</body>
</html>
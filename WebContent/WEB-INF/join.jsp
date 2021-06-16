<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%-- /WebContent/chap08_member/join.jsp
   1. 파라미터 정보를 Member 객체 저장
   2. Member 객체에 저장된 내용을 db 저장하기 => model 부분
   3. 성공 : loginForm.jsp 페이지 이동
            실패 : joinForm.jsp 페이지 이동 
--%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="mem" class="model.Member"/>
<jsp:setProperty property="*" name="mem"/>
<%
MemberDao dao = new MemberDao();
int num = dao.insert(mem);
String msg = "";
String url = "";
if(num > 0){
	msg = mem.getName()+"님의 가입이 완료 되었습니다";
	url = "loginForm.jsp";
} else{
	msg = "회원 가입이 실패 되었습니다";
	url = "joinForm.html";
}
%>
<script>
	alert("<%=msg%>")
	location.href="<%=url%>";
</script>
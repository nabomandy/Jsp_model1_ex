<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- /WenContent/chap08_member/join.jsp 
	1. �Ķ���� ������ Member ��ü ����
	2. Member ��ü�� ����� ������ db �����ϱ� => model �κ�
	3. ���� : loginForm.jsp ������ �̵�
	   ���� : joinForm.jsp ������ �̵�

--%>
<!DOCTYPE html>
<% request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="mem" class="model.Member"/>
<jsp:setProperty property="*" name="mem"/>
<%-- <%=mem %> --%>
<%
MemberDao dao = new MemberDao();
int num = dao.insert(mem);


String msg = "";
String url = "";
if (num > 0) { //���Լ���
	msg=mem.getName() + "���� ������ �Ϸ� �Ǿ����ϴ�.";
	url="loginForm.jsp";
	} else {
	msg="ȸ�������� �����Ͽ����ϴ�.";
	url="joinForm.jsp";
}
%>
<script>
  alert("<%=msg%>")
  location.href="<%=url%>";

</script>
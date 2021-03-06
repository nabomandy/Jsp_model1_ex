<%@page import="model.Member"%>
<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- /WebContent/model1/member/update.jsp
   1. 모든 파라미터를 Member 객체에 저장하기
   2. 입력된 비밀번호와 db의 비밀번호가 같으면 3번으로 실행.
           다르면 비밀번호 오류 메세지 출력. updateForm.jsp 페이지 이동
   3. 1번의 객체를 db에 수정하기. int update(Member)
           결과가 1이상이면 : 수정 성공 메세지 출력. main.jsp 페이지 이동
           0이하면 : 수정 실패 메세지 출력. updateForm.jsp 페이지 이동   
--%>    <% request.setCharacterEncoding("euc-kr");
   String login = (String)session.getAttribute("login");%>
<jsp:useBean id="mem" class="model.Member"/>
<jsp:setProperty property="*" name="mem"/>
<%-- <%   String msg = null;   String url = null;
	 boolean opener = false;
  	 MemberDao dao = new MemberDao();
  	 Member dbMem =  dao.selectOne(mem.getId());
   if(!login.equals("admin") && !mem.getPass().equals(dbMem.getPass())) {
	   msg = "비밀번호가 틀립니다. 확인 후 다시 거래 하세요.";
	   url = "updateForm.jsp?id=" + mem.getId();
   } else {
	 if(dao.update(mem) > 0) {
		 msg = mem.getId() + "님의 회원 정보가 수정되었습니다.";
		 url = "main.jsp";
	 } else {
		 msg = mem.getId() + "님 회원 정보 수정 실패.";
		 url = "updateForm.jsp?id=" + mem.getId();
	 }   }
%>
 --%><%   String msg = null;   String url = null;
	 boolean opener = false;
  	 MemberDao dao = new MemberDao();
  	 Member dbMem =  dao.selectOne(mem.getId());
  	 if(!login.equals("admin") && !mem.getPass().equals(dbMem.getPass())){
		msg="비밀번호가 틀립니다. 확인 후 다시 거래 하세요.";
		url="updateForm.jsp?id=" + mem.getId();
	}else{
		String pass = request.getParameter("pass");
	   	String chgpass = request.getParameter("chgpass");
	  	Member mem2 = dao.selectOne(login);
	  	if(chgpass == null || chgpass.trim().equals("")){
	  		if(dao.update(mem)>0){
	  			msg = mem.getId() + "님의 회원 정보가 수정되었습니다.";
	  			url = "main.jsp";
	  		}else {
	  			 msg = mem.getId() + "님 회원 정보 수정 실패.";
	  			 url = "updateForm.jsp?id=" + mem.getId();
	  		}
	  	}else{
	  		if(pass.equals(mem2.getPass())) {//입력된 비밀번호와 db에 저장된 비밀번호가 같은 경우
	  		  if(dao.updatePass(login,chgpass) > 0) {
	  		 	  msg="비밀번호가 변경되었습니다.";
	  			  url = "main.jsp";		  opener = true;
	  		  } else {
	  			  msg="비밀번호가 변경시 오류가 발생 되었습니다.";	  url = "updateForm.jsp";
	  		  }
			} else {  //입력된 비밀번호와 db에 저장된 비밀번호가 다른 경우
				msg="비밀번호 오류 입니다. 확인하세요.";
				url = "passwordForm.jsp";	  
			}	
	  	}
	}

%>

<script type="text/javascript">	
alert("<%=msg%>");
	location.href="<%=url%>";
</script>
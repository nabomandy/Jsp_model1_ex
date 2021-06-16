
<%@page import="model.Store"%>
<%@page import="dao.BrandnameDao"%>
<%@page import="dao.StoreDao"%>

<%@page import="dao.OrderDao"%>
<%@page import="model.Brand"%>
<%@page import="java.util.List"%>

<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
  /* String name[]={"황금올리브","정승훈","최광복"};
String price[]={"150000","140000","1311"}; */
%>
<%
String login = (String)session.getAttribute("login");
String store_name =request.getParameter("name");
StoreDao dao = new StoreDao();
Store st = dao.listOne(store_name); 
OrderDao odao = new OrderDao();
List<Brand> list = dao.listBrand();
BrandnameDao bdao = new BrandnameDao();
List<Store> slist = dao.list();
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR" />
<title>치킨의민족</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="11.css" />


<script type="text/javascript">
    function fnCart(name, price) {
        //alert("Name : " + name + "\nPrice : " + price);

        if (confirm("장바구니에 담으시겠습니까?")) {

            var cart = document.getElementById("cart01");
            var tot = document.getElementById("total");
            tot.innerHTML = Number(tot.innerHTML) + Number(price);

            var line = name + " " + price;
            alert(line);
            cart.innerHTML += (name + " " + price + "<br>");
            /*     location.href = "CartProcess.jsp?name=" + name + "&price=" + price; */
        }

    }

    function fnView() {
        if (confirm("장바구니를 보시겠습니까?")) {
            location.href = "CartView.jsp";
        }
    }
    function order001() {
        var cart = document.getElementById("cart01");
        var desc = document.getElementById("garbage");
        desc001.value = cart.innerHTML;
        document.ord001.submit()
    }
</script>

</head>

<body>







	<!-- <form action="9.jsp" method="post" 
       enctype="multipart/form-data" name="f"/ -->
	>


	<nav id="navbar">
      <div class="navbar__logo">
         <i class="fab fa-diaspora"></i>치킨의 민족
      </div>
      <ul class="navbar__menu">
         <li class="navbar__menu__item active" onclick="location.href='main.jsp'">Home</li>
         <li class="navbar__menu__item" onclick="location.href='logout.jsp'">로그아웃</li>
         <li class="navbar__menu__item" onclick="location.href='orderck.jsp'">주문표</li>
         <li class="navbar__menu__item" onclick="location.href='updateForm.jsp?id=<%=login %>'">마이페이지</li>
      </ul>
      <!-- Toggle button -->
      <button class="navbar__toggle-btn">
         <i class="fas fa-bars"></i>
      </button>
   </nav>
	<div class="container1">

		<div class="category">bbq</div>
		<div class="category">kyochon</div>
		<div class="category">네네치킨</div>
		<div class="category">멕시카나</div>
		<div class="category">페리카나</div>
		<div class="category">60계치킨</div>
		<div class="category">푸라닭</div>
		<div class="category">bhc</div>
		<div class="category">굽네치킨</div>

	</div>
	<div class="wrap">
		<div class="inner_wrap">
			<div class="main">
				<div class="store">
					<img src="img/<%=st.getImg_name()%>"
						class="store_img" />
					<div class="store_description">
					<input type="hidden" name="store_name">
						<%=st.getStore_name()%><br /> <br /> 운영시간 :
						<%=st.getRun_time()%>
						<br /> <br /> 결제방법 : 만나서 할인받고 결제!
					</div>
				</div>

				<div class="container">
					<!-- Nav tabs -->
					<ul class="nav nav-tabs" role="tablist">
						<li class="nav-item"><a class="nav-link active"
							data-toggle="tab" href="#home">메뉴</a></li>

						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#menu1">정보</a></li>

						

					    <!-- Tab panes -->
               <div class="tab-content">
                  <div id="home" class="container tab-pane active">

                     <div class="cardbox">
                        <div id="menu_card"> 
                           <img src="img/<%=st.getImg_rep1()%>" class="menu_card_img" />
                           <%=st.getPop_menu1()%>
                        </div>
                        <div id="menu_card">
                           <img src="img/<%=st.getImg_rep2()%>" class="menu_card_img" />
                           <%=st.getPop_menu2()%>
                        </div>
                        <div id="menu_card">
                            <img src="img/<%=st.getImg_rep3()%>" class="menu_card_img" />
                           <%=st.getPop_menu3()%>
                        </div>
                        <div id="menu_card">
                           <img src="img/<%=st.getImg_rep4()%>" class="menu_card_img" />
                           <%=st.getPop_menu4()%>
                        </div>
                        <div id="menu_card">
                           <img src="img/<%=st.getImg_rep5()%>" class="menu_card_img" />
                           <%=st.getPop_menu5()%>
                        </div>
                        <div id="menu_card">
                           <img src="img/<%=st.getImg_rep6()%>" class="menu_card_img" />
                           <%=st.getPop_menu6()%>
                        </div>

                     </div>
                     <div class="menu_card_one">
                        <div class="scroll">
                           <div class="fa">상세메뉴</div>
                           <%-- <%
     for(int i=0; i<name.length ;i++){
        out.print("<div class='store1'>");
         out.print("<img src='img/kyochon.jpg' alt='samsung' class='store__logo' />");
         out.print("<div class='store__description' id='menu'>");
         out.print("<div class='store__period' name='menu_name'>|황금올리브치킨</div>");
         out.print("<div class='store__period' name='price'>|18,000</div>");   
         out.print("</div>");
     }

									<%-- <%
     for(int i=0; i<name.length ;i++){
        out.print("<div class='store1'>");
         out.print("<img src='img/kyochon.jpg' alt='samsung' class='store__logo' />");
         out.print("<div class='store__description' id='menu'>");
         out.print("<div class='store__period' name='menu_name'>|황금올리브치킨</div>");
         out.print("<div class='store__period' name='price'>|18,000</div>");   
         out.print("</div>");
     }
     %> --%>
									<%--  <%
     for(int i = 0; i < name.length; i++) {
         out.println("<table>");
               
               out.println("<tr align='center'>");
                  out.println("<td  id=''>");
                     out.println("<b>" + name[i] + "</b>");
                  out.println("</td>");
               out.println("</tr>");
               
               out.println("<tr align='center'>");
                  out.println("<td    id=''>");
                     out.println("<b>￦" + price[i] + "원</b>");
                  out.println("</td>");
               out.println("</tr>");
               
               out.println("<tr align='center'>");
                  out.println("<td>");
                     //한 줄로 쓰기
                     //out.println("<input type='button' value='장바구니 담기' onclick='fnCart(\"" + name[i] + "\", \"" + price[i] + "\")' />");
                     //두 줄로 쓰기, 닫는 큰 따옴표와 괄호 옆의 띄어쓰기 필수
                     out.println("<input type='button' value='장바구니 담기' ");
                     out.println("onclick='fnCart()'/>");
                  out.println("</td>");
               out.println("</tr>");
            out.println("</table>");
         if(i % 3 == 2) {
            out.println("</tr>");
         }
      }
     %> --%>


									<%
									  int i;
									for (i = 0; i < list.size(); i++) { 
									  Brand c = list.get(i);
									%>

									<%
									  if (c.getBrand_Name().equals(st.getBrand_name())) {
									%>
									<div class="a" style="border: 2px solid">
										<table class="dsf">

											<tr>
												<td><%=c.getBrand_Name()%></td>
												<td style="text-align: left" id="na01"><%=c.getMenu()%>
												</td>
												<td id="na02"><%=c.getPrice()%></td>


												<input type='button' value='장바구니 담기'
													onclick='fnCart("<%=c.getMenu()%>","<%=c.getPrice()%>")' />
											</tr>

										</table>

									</div>

									<%
									  }
									%>
									<%
									  }
									%>

								</div>
								<!-- scroll -->
							</div>
						</div>

						
						<div id="menu1" class="container tab-pane fade">
							<br>

							<table>
								<div class="info">
									<h3>사장님 알림</h3>
									<div class="info_1">
										정상영업중<br>
									</div>
									<h3>업체정보</h3>
									<div class="info_2">
										영업시간&emsp;&emsp;&emsp;&nbsp;12:00 - 00:00<br>
										전화번호&emsp;&emsp;&emsp;&nbsp;1234-1234 <br>
										주소&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;서울특별시<br>
									</div>
									<h3>결제정보</h3>
									<div class="info_3">
										최소주문금액&emsp;&nbsp;14,000원<br>
										결제수단&emsp;&emsp;&emsp;&nbsp;신용카드,현금,요기서결제<br>
									</div>
									<h3>사업자정보</h3>
									<div class="info_4">
										상호명&emsp;&emsp;&emsp;&emsp;&nbsp;호식이두마리치킨강남1호점<br>
										사업자등록번호&nbsp;123-12-12345<br>
									</div>
									<h3>원산지정보</h3>
									<div class="info_5">
										*불짬뽕치킨:국내산<br> *후라이드치킨:국내산<br> *양념소스치킨:국내산<br>
										*간장소스치킨:국내산<br> *땡초불꽃치킨:국내산<br> *스윗츠갈릭치킨:국내산<br>
									</div>
								</div>
							</table>
						</div>

					</div>
				</div>
			</div>
			<!-- main -->
		</div>
		<!-- inner_wrap --> 

		<form name="ord001" action="aaa.jsp" method="post">
			<input type="hidden" name="garbage" id="desc001">
			<div class="order">
				<div class="order1">주문표</div>
				<div class="order2" class="scroll">
					<div id="cart01"></div>
				</div>
  
				<div id="total" style="font-size: 25px; text-align: center;">0</div>
				<div class="order3">
					<input type="button" value="주문버튼"
						style="width: 100%; height: 100%; cursor: pointer;"
						onclick="order001()">
		</form>
	</div>

	</div>
	</div>
	<!-- wrap -->

	<!-- Contact -->
	<section id="contact" class="section">
		<div class="company">
			<img src="img/kyochon.jpg" alt="samsung" class="store__logo" />
			<h2 class="contact__title">Contact us</h2>
			<h2 class="contact__email">blahblahblah</h2>
			<div class="contact__links">
				<a href="  " target="_blank"> <i class="fab fa-github"></i>
				</a> <a href="#" target="_blank"> <i class="fa fa-linkedin-square"></i>
				</a>
			</div>
		</div>
		<p class="contact__rights">(유)딜리버리치킨 코리아는 통신판매중개자이며 통신판매의 당사자가
			아닙니다. 따라서 상품/ 거래정보 및 거래와 관련하여 요기요에 등록된 판매자의 고의 또는 과실로 소비자에게 발생하는 손해에
			대해 (유)딜리버리히어로 코리아는 책임을 지지 않습니다. 상품 및 거래에 관하여 보다 정확한 정보는 해당 판매자에게 직접
			확인하여 주시기 바랍니다. Copyright YOGIYO. All Rights Reserved.</p>
	</section>

	<!-- Arrow up -->
	<button class="arrow-up">
		<i class="fas fa-arrow-up"></i>
	</button>
</body>

</html>
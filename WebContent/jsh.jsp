<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
  
   BrandDao dao = new BrandDao();
   
   List<Brand> list = dao.list(); 
%>

<%@page import="dao.BrandDao"%>
<%@page import="java.util.List"%>
<%@page import="model.Brand"%>
<%
String name[]={"황금올리브","정승훈","최광복"};
String price[]={"150000","140000","1311"};

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR" />
<title>치킨의민족</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="10.css" />


<script type="text/javascript">
function fnCart(name, price) {
   //alert("Name : " + name + "\nPrice : " + price);
   if(confirm("장바구니에 담으시겠습니까?")) {
      location.href = "CartProcess.jsp?name=" + name + "&price=" + price;
   }
}

function fnView() {
   if(confirm("장바구니를 보시겠습니까?")){
      location.href = "CartView.jsp";
   }
}
</script>

</head>

<body>
<form action="9.jsp" method="post" 
       enctype="multipart/form-data" name="f">


   <header>치킨의 민족</header>
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
               <img src="img/kyochon.jpg" class="store_img" />
               <div class="store_description">
                  교촌치킨안양점<br /> <br /> 최소주문금액 <br /> <br /> 결제방법
               </div>
            </div>
             
          <div class="container">
  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li class="nav-item">
      <a class="nav-link active" data-toggle="tab" href="#home">메뉴</a>
    </li>
    
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu1">리뷰</a>
    </li>
    
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu2">
      정보
      </a>
    </li>
    
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div id="home" class="container tab-pane active">
     
      <div class="cardbox">
                     <div id="menu_card">
                        <img src="img/kyochon.jpg" class="menu_card_img" />11111
                     </div>
                     <div id="menu_card">
                        <img src="img/kyochon.jpg" class="menu_card_img" />11111
                     </div>
                     <div id="menu_card">
                        <img src="img/kyochon.jpg" class="menu_card_img" />11111
                     </div>
                     <div id="menu_card">
                        <img src="img/kyochon.jpg" class="menu_card_img" />11111
                     </div>
                     <div id="menu_card">
                        <img src="img/kyochon.jpg" class="menu_card_img" />11111
                     </div>
                     <div id="menu_card">
                        <img src="img/kyochon.jpg" class="menu_card_img" />11111
                     </div>
                     <div id="menu_card">
                        <img src="img/kyochon.jpg" class="menu_card_img" />11111
                     </div>
                  </div>
                  <div class="menu_card_one">
             <div class="scroll">
     <div class="fa">인기메뉴</div>
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
                  out.println("<td>");
                     out.println("<b>" + name[i] + "</b>");
                  out.println("</td>");
               out.println("</tr>");
               
               out.println("<tr align='center'>");
                  out.println("<td>");
                     out.println("<b>￦" + price[i] + "원</b>");
                  out.println("</td>");
               out.println("</tr>");
               
               out.println("<tr align='center'>");
                  out.println("<td>");
                     
                     out.println("<input type='button' value='장바구니 담기' ");
                     out.println("onclick='fnCart(\"" + name[i] + "\", \"" + price[i] + "\")' />");
                  out.println("</td>");
               out.println("</tr>");
            out.println("</table>");
      }
      
     %> --%>

<form action="ResponseProc.jsp" method="post">
<% for(Brand c : list){%>


   <% if(c.getBrand_Name().equals("BHC")){ %>
   <div class="a" style="border: 2px solid">
      <table class="dsf">
         <tr>
            <td><%=c.getBrand_Name()%></td>
            <td style="text-align: left"><%=c.getMenu() %></td>
            <td><%=c.getPrice() %></td>
            <td><input type='button' value='장바구니 담기' ></td>
         </tr>
      </table>
   </div>
   <% } %>
   <% } %>
   </form>

           </div><!-- scroll -->
           </div>
   </div>
    
    <div id="menu1" class="container tab-pane fade"><br>
      <h3>Menu 1</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    
     <div id="menu2" class="container tab-pane fade"><br>
            
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
   *불짬뽕치킨:국내산<br>
   *후라이드치킨:국내산<br>
   *양념소스치킨:국내산<br>
   *간장소스치킨:국내산<br>
   *땡초불꽃치킨:국내산<br>
   *스윗츠갈릭치킨:국내산<br>
   </div>
   </div>
      </table>
    </div>
   
  </div>
</div>
         </div><!-- main -->
      </div> <!-- inner_wrap -->
      <div class="order">
<div class="order1">주문표</div>
<div class="order2">주문</div>
<div class="order3">
<input type="button" value="주문버튼" style="width:100%; height:100%; cursor:pointer;">
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
                <a href="  " target="_blank">
                    <i class="fab fa-github"></i>
                </a>
                <a href="#" target="_blank">
                    <i class="fa fa-linkedin-square"></i>
                </a>
            </div>
        </div>
        <p class="contact__rights">
            (유)딜리버리치킨 코리아는 통신판매중개자이며 통신판매의 당사자가 아닙니다. 따라서 상품/ 거래정보 및 거래와 관련하여 요기요에 등록된 판매자의 고의 또는 과실로 소비자에게 발생하는 손해에 대해 (유)딜리버리히어로 코리아는 책임을 지지 않습니다. 상품 및 거래에 관하여 보다 정확한 정보는 해당 판매자에게 직접 확인하여 주시기 바랍니다. Copyright YOGIYO. All Rights Reserved.
        </p>
    </section>

    <!-- Arrow up -->
    <button class="arrow-up">
      <i class="fas fa-arrow-up"></i>
    </button>
</body>

</html>
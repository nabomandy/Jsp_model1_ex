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
String name[]={"Ȳ�ݿø���","������","�ֱ���"};
String price[]={"150000","140000","1311"};

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR" />
<title>ġŲ�ǹ���</title>
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
   if(confirm("��ٱ��Ͽ� �����ðڽ��ϱ�?")) {
      location.href = "CartProcess.jsp?name=" + name + "&price=" + price;
   }
}

function fnView() {
   if(confirm("��ٱ��ϸ� ���ðڽ��ϱ�?")){
      location.href = "CartView.jsp";
   }
}
</script>

</head>

<body>
<form action="9.jsp" method="post" 
       enctype="multipart/form-data" name="f">


   <header>ġŲ�� ����</header>
   <div class="container1">
   
      <div class="category">bbq</div>
      <div class="category">kyochon</div>
      <div class="category">�׳�ġŲ</div>
      <div class="category">�߽�ī��</div>
      <div class="category">�丮ī��</div>
      <div class="category">60��ġŲ</div>
      <div class="category">Ǫ���</div>
      <div class="category">bhc</div>
      <div class="category">����ġŲ</div>
      
   </div>
   <div class="wrap"> 
      <div class="inner_wrap">
         <div class="main">
            <div class="store">
               <img src="img/kyochon.jpg" class="store_img" />
               <div class="store_description">
                  ����ġŲ�Ⱦ���<br /> <br /> �ּ��ֹ��ݾ� <br /> <br /> �������
               </div>
            </div>
             
          <div class="container">
  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li class="nav-item">
      <a class="nav-link active" data-toggle="tab" href="#home">�޴�</a>
    </li>
    
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu1">����</a>
    </li>
    
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu2">
      ����
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
     <div class="fa">�α�޴�</div>
     <%-- <%
     
     for(int i=0; i<name.length ;i++){
        out.print("<div class='store1'>");
         out.print("<img src='img/kyochon.jpg' alt='samsung' class='store__logo' />");
         out.print("<div class='store__description' id='menu'>");
         out.print("<div class='store__period' name='menu_name'>|Ȳ�ݿø���ġŲ</div>");
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
                     out.println("<b>��" + price[i] + "��</b>");
                  out.println("</td>");
               out.println("</tr>");
               
               out.println("<tr align='center'>");
                  out.println("<td>");
                     
                     out.println("<input type='button' value='��ٱ��� ���' ");
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
            <td><input type='button' value='��ٱ��� ���' ></td>
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
     <h3>����� �˸�</h3>
     <div class="info_1">
      ���󿵾���<br>
      </div>	
      <h3>��ü����</h3>
      <div class="info_2">
      �����ð�&emsp;&emsp;&emsp;&nbsp;12:00 - 00:00<br>
      ��ȭ��ȣ&emsp;&emsp;&emsp;&nbsp;1234-1234 <br>
      �ּ�&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;����Ư����<br>
      </div>
      <h3>��������</h3>
      <div class="info_3">
      �ּ��ֹ��ݾ�&emsp;&nbsp;14,000��<br>
      ��������&emsp;&emsp;&emsp;&nbsp;�ſ�ī��,����,��⼭����<br>
      </div>
      <h3>���������</h3>
      <div class="info_4">
      ��ȣ��&emsp;&emsp;&emsp;&emsp;&nbsp;ȣ���̵θ���ġŲ����1ȣ��<br>
      ����ڵ�Ϲ�ȣ&nbsp;123-12-12345<br>
      </div>
      <h3>����������</h3>
      <div class="info_5">
   *��«��ġŲ:������<br>
   *�Ķ��̵�ġŲ:������<br>
   *���ҽ�ġŲ:������<br>
   *����ҽ�ġŲ:������<br>
   *���ʺҲ�ġŲ:������<br>
   *����������ġŲ:������<br>
   </div>
   </div>
      </table>
    </div>
   
  </div>
</div>
         </div><!-- main -->
      </div> <!-- inner_wrap -->
      <div class="order">
<div class="order1">�ֹ�ǥ</div>
<div class="order2">�ֹ�</div>
<div class="order3">
<input type="button" value="�ֹ���ư" style="width:100%; height:100%; cursor:pointer;">
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
            (��)��������ġŲ �ڸ��ƴ� ����Ǹ��߰����̸� ����Ǹ��� ����ڰ� �ƴմϴ�. ���� ��ǰ/ �ŷ����� �� �ŷ��� �����Ͽ� ���信 ��ϵ� �Ǹ����� ���� �Ǵ� ���Ƿ� �Һ��ڿ��� �߻��ϴ� ���ؿ� ���� (��)������������� �ڸ��ƴ� å���� ���� �ʽ��ϴ�. ��ǰ �� �ŷ��� ���Ͽ� ���� ��Ȯ�� ������ �ش� �Ǹ��ڿ��� ���� Ȯ���Ͽ� �ֽñ� �ٶ��ϴ�. Copyright YOGIYO. All Rights Reserved.
        </p>
    </section>

    <!-- Arrow up -->
    <button class="arrow-up">
      <i class="fas fa-arrow-up"></i>
    </button>
</body>

</html>
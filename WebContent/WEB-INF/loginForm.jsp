<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="login.css">
    <script src="https://kit.fontawesome.com/51db22a717.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Alata&display=swap" rel="stylesheet">
</head>
<body>
    <div class="page-container">
        <div class="login-form-container shadow">
            <div class="login-form-right-side">
            <img alt="left search" src="img/banner.PNG" class="picture">                
           </div>
		</div>
	</div>
  
    <form action="login.jsp" method="post" class="loginForm">
      <h2>Login</h2>
      <div class="idForm">
        <input type="text" class="id" placeholder="ID" name="id">
      </div>
      <div class="passForm">
        <input type="password" class="pw" placeholder="PW" name="pass">
      </div>
      <button type="submit" class="btn" onclick="button()">
        LOG IN
      </button>
      <div class="bottomText">
        Don't you have ID? <a href="joinForm.html">sign up</a>
      </div>
    </form>
  </body>
</html>
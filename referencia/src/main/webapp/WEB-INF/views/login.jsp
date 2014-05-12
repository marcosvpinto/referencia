<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet" media="screen">
<style type="text/css">
   body {
     padding-top: 40px;
     padding-bottom: 40px;
     background-color: #f5f5f5;
   }

   .form-signin {
     max-width: 300px;
     padding: 19px 29px 29px;
     margin: 0 auto 20px;
     background-color: #fff;
     border: 1px solid #e5e5e5;
     -webkit-border-radius: 5px;
        -moz-border-radius: 5px;
             border-radius: 5px;
     -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
        -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
             box-shadow: 0 1px 2px rgba(0,0,0,.05);
   }
   .form-signin .form-signin-heading,
   .form-signin .checkbox {
     margin-bottom: 10px;
   }
   .form-signin input[type="text"],
   .form-signin input[type="password"] {
     font-size: 16px;
     height: auto;
     margin-bottom: 15px;
     padding: 7px 9px;
   }

 </style>

</head>
<body>
	<div class="container">
		<form action="login" method="post" class="form-signin">
			<h2 class="form-signin-heading">Login</h2>
			<!-- <label for="nome">Nome: </label> -->
			<input type="text" id="nome" name="nome" class="input-block-level" placeholder="Login" />
			<br />
			<!-- <label for="senha">Senha: </label>  -->
			<input type="password" id="senha" name="senha" class="input-block-level" placeholder="Senha" />
			<br />
			<input type="submit" id="btnLogin" value="Entrar" class="btn btn-large btn-primary" />
		</form>
	</div>
	<script src="resources/js/jquery.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
</body>
</html>
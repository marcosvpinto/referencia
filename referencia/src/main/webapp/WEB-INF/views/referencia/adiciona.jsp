<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adiciona Referência</title>
<link href="../resources/css/bootstrap.min.css" rel="stylesheet" media="screen">
<style type="text/css">
   body {
     padding-top: 60px;
     padding-bottom: 40px;
     background-color: #f5f5f5;
   }

   .form-signin {
     max-width: 350px;
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

	<div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href="#">Referências</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li><a href="../autor/lista">Autores</a></li>
              <li><a href="../referencia/lista">Referências</a></li>
              <li><a href="logout">Sair</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

	<div class="container">
		
		<form action="adiciona" method="post" class="form-signin">
			<h2>Adiciona Referência</h2>
			<input type="text" id="titulo" name="titulo" class="input-block-level" placeholder="Título" />
			<br />
			<input type="text" id="isbn" name="isbn" class="input-block-level" placeholder="ISBN" />
			<br />
			<input type="date" id="dtPublicacao" name="dtPublicacao" class="input-block-level" placeholder="Data de Publicação" />
			<br />
			<!-- Um select recebe um objeto, mas um multiselect passa um Array, de qualquer forma, precisaríamos de uma List, ou seja, sem um "converter" não vai "rolar" -->
			<select name="autores">
				<c:forEach items="${autores}" var="autor">
					<option value="${autor}">${autor.nome}</option>
				</c:forEach>
			</select>
			<input type="submit" value="Salvar" id="btnSalvar" class="btn btn-large btn-primary" />
		
		</form>
	</div>
	
	<script src="../resources/js/jquery.js"></script>
	<script src="../resources/js/bootstrap.min.js"></script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Editar Autor</title>
<link href="../resources/css/bootstrap.min.css" rel="stylesheet" media="screen">
<style type="text/css">
   body {
     padding-top: 60px;
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
		
		<form action="altera" method="post" class="form-signin">
			<h2>Alterar Autor</h2>	
			<input type="hidden" name="id" value="${autor.id}" />
			
			<label for="nome">Nome: </label>
			<input type="text" id="nome" name="nome" value="${autor.nome}" class="input-block-level" placeholder="Nome" />
			<br />
			<label for="sobrenome">Sobrenome: </label>
			<input type="text" id="sobrenome" name="sobrenome" value="${autor.sobrenome}" class="input-block-level" placeholder="Sobrenome" />
			<br />
			<label for="instituicao">Instituição: </label>
			<input type="text" id="instituicao" name="instituicao" value="${autor.instituicao}" class="input-block-level" placeholder="Instituição" />
			<br />
			<input type="submit" value="Altera" id="btnAltera" class="btn btn-large btn-primary" />
		
		</form>
	</div>
	
	<script src="../resources/js/jquery.js"></script>
	<script src="../resources/js/bootstrap.min.js"></script>
	
</body>
</html>
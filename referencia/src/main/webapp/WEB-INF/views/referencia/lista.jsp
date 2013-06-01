<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Lista de Referências</title>
	<link href="../resources/css/bootstrap.min.css" rel="stylesheet" media="screen" />
	<style>
      body {
        padding-top: 60px;
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
	
	<a href="novo"><input type="button" value="Adicionar nova Referência"></a>
	<br /><br />
	
	<div class="container">
		<table class="table table-striped table-bordered">
			<tr>
				<th>Título</th>
				<th>ISBN</th>
				<th>Data de publicação</th>
				<th>Autores</th>
				<th></th>
				<th></th>
			</tr>
			<c:forEach items="${referencias}" var="referencia">
			<tr>
				<td>${referencia.titulo}</td>
				<td>${referencia.isbn}</td>
				<td>${referencia.dtPublicacao}</td>
				<td>
					<c:forEach items="${referencia.autores}" var="autor">
						${autor.nome}
					</c:forEach>
				</td>
				<td><a href="visualiza?id=${referencia.id}">Alterar</a>
				<td><a href="remove?id=${referencia.id}">Remover</a></td>
			</tr>
			</c:forEach>
		</table>
	</div>
	
	<script src="../resources/js/jquery.js"></script>
	<script src="../resources/js/bootstrap.min.js"></script>
</body>
</html>
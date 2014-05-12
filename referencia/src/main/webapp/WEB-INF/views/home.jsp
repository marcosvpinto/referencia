<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>Home</title>
	<link href="resources/css/bootstrap.min.css" rel="stylesheet" media="screen" />
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
              <li><a href="autor/lista">Autores</a></li>
              <li><a href="referencia/lista">Referências</a></li>
              <li><a href="logout">Sair</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

	<script src="resources/js/jquery.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
</body>
</html>

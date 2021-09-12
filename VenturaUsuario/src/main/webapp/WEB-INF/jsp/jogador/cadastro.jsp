<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>App Times - Cadastro de Jogador!!!</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp"/>

	<div class="container">
	  <h2>Cadastro de Jogador</h2>
	  <form action="/jogador/incluir" method="post">

	    <div class="form-group">
	      <label>Nome:</label>
	      <input type="text" class="form-control"  name="nome">
	    </div>

	    <div class="form-group">
	      <label>Score:</label>
	      <input type="text" class="form-control" name="score">
	    </div>
	    
	    <div class="form-group">
	      <label>Idade:</label>
	      <input type="text" class="form-control"  name="idade">
	    </div>
	    
	    <div class="form-group">
	      <label>Camisa número::</label>
	      <input type="text" class="form-control"  name="camisa">
	    </div>
	    
	    <div class="form-group">
	      <label>Pontos por jogo:</label>
	      <input type="text" class="form-control"  name="pontosPorJogo">
	    </div>
	    
	    <div class="form-group">
	      <label>Posição:</label>
	      <input type="text" class="form-control"  name="posicao">
	    </div>
		
	    <button type="submit" class="btn btn-default">Cadastrar</button>
	  </form>
	</div>

</body>
</html>
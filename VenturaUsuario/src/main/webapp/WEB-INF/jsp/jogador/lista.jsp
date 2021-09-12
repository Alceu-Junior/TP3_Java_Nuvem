<%@page import="br.edu.infnet.VenturaUsuario.model.domain.Aluno"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>App Times - Confirma!!!</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp"/>

	<div class="container">

		<form action="/jogador" method="get">
			<button type="submit" class="btn btn-link">Incluir</button>
		</form>
		
		<hr>
		
		<c:if test="${not empty jogadores}">
			<c:if test="${not empty msg}">
				<div class="alert alert-success">
				  <strong>Sucesso!</strong> ${msg}
				</div>
			</c:if>
	
			<h4>Quantidade de jogadores existentes: ${jogadores.size()}!!!</h4>
			
			<hr>
	
			<table class="table table-striped">
		    <thead>
		      <tr>
		      	<th>Id</th>
		        <th>Nome</th>
		        <th>Score</th>
		        <th>Idade</th>
		        <th>Camisa</th>
		        <th>Pontos Por Jogo</th>
		        <th>Posição</th>
		        <th></th>
		      </tr>
		    </thead>
		    <tbody>		    
		    	<c:forEach var="j" items="${jogadores}">
			      <tr>
			        <td>${j.id}</td>
			        <td>${j.nome}</td>
			        <td>${j.score}</td>
			        <td>${j.idade}</td>
			        <td>${j.camisa}</td>
			        <td>${j.pontosPorJogo}</td>
			        <td>${j.posicao}</td>
			        <td><a href="/jogador/${j.id}/excluir">Excluir</a></td>
			      </tr>
		    	</c:forEach>
		    </tbody>
		  	</table>
	  	</c:if>
	  	
	  	<c:if test="${empty jogadores}">
			<h4>Não existem jogadores cadastrados!!!</h4>	  	
	  	</c:if>
	</div>
</body>
</html>
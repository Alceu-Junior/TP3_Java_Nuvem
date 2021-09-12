<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>APP2021 - Cadastra!!!</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp"/>

	<div class="container">
	  <h2>Cadastro de Dirigente</h2>
	  <form action="/dirigente/incluir" method="post">

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
	      <label>Time Responsável:</label>
	      <input type="text" class="form-control"  name="timeResponsavel">
	    </div>
	    
	    <div class="form-group">
	      <label>Co-Dirigente:</label>
	      <input type="text" class="form-control"  name="coDirigente">
	    </div>
	    
	    <div class="form-group">
	      <label>Investimento Aplicado:</label>
	      <input type="text" class="form-control"  name="investimentoAplicado">
	    </div>
		
	    <button type="submit" class="btn btn-default">Cadastrar</button>
	  </form>
	</div>

</body>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adiciona Contatos</title>
<link href="css/jquery-ui.css" rel="stylesheet">
<link href="/resources/demos/style.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-ui.js"></script>
<script>
  $( function() {
    $( "#datepicker" ).datepicker({
      changeMonth: true,
      changeYear: true
    });
  } );
  </script>
</head>
<body>
	<c:import url="cabecalho.jsp" />
	
	<h2>Adicionar Contatos</h2>
	
	<hr />
	
	<form action="mvc?logica=AdicionaContatoLogic" method="post">
		Nome: <input type="text" name="nome"><br />
		E-mail: <input type="text" name="email"><br />
		Endereço: <input type="text" name="endereco"><br />
		Data Nascimento: <caelum:campoData id="dataNascimento" /><br />
		<input type="submit" value="Gravar">
	</form>
	
	<c:import url="rodape.jsp" />
</body>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Altera Contatos</title>
<link href="css/jquery-ui.css" rel="stylesheet">
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
	<h1>Altera Contatos-------------</h1>
	<form action="mvc?logica=AlteraContatoLogic" method="post">
		Id: <input type="text" name="id"><br/>
		Nome: <input type="text" name="nome"><br />
		E-mail: <input type="text" name="email"><br />
		Endereço: <input type="text" name="endereco"><br />
		Data Nascimento:  <caelum:campoData id="dataNascimento" /><br />
		<input type="submit" value="Alterar">
	</form>
</body>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de Contatos</title>

<style>
a{
text-decoration: none;
}

</style>
</head>
<body>
	<c:import url="cabecalho.jsp" />

<table border="2">
	<th>Nome</th>
	<th>Email</th>
	<th>Endereço</th>
	<th>Data de Nascimento</th>
	<th>Remover</th>
	<th>Alterar</th>
	
<c:forEach var="contato" items="${contatos}">
	<tr>
		<td>${contato.nome}</td>
		
		<td>
			<c:choose>
				<c:when test="${not empty contato.email}">
				<a href="mailto:${contato.email}">${contato.email}</a>
				</c:when>
				<c:otherwise>
					E-mail não informado
				</c:otherwise>
			</c:choose>
		</td>
				
		<td>${contato.endereco}</td>
		
		<td><fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy"/></td>
		
		<td>
			<a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a>
		</td>
		
		<td>
			<a href="alterar-contato.jsp">Alterar</a>
		</td>
	</tr>
</c:forEach>

</table>
<h3><a href="adiciona-contato.jsp"> >>Adicionar Contato<< </a></h3>	
	<c:import url="rodape.jsp" />
</body>
</html>
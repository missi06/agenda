package br.com.caelum.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.servlet.dao.ContatoDao;
import br.com.caelum.servlet.modelo.Contato;
import br.com.caelum.util.FormataData;

@SuppressWarnings("serial")
@WebServlet("/adicionaContato")
public class AdicionaContato extends HttpServlet{


	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		// buscando os parâmetros no request
		String nome = request.getParameter("nome");
		String endereco = request.getParameter("endereco");
		String email = request.getParameter("email");		
		String dataNascimento = request.getParameter("dataNascimento");
		
		
		Contato contato = new Contato();
		contato.setNome(nome);
		contato.setEndereco(endereco);
		contato.setEmail(email);
		contato.setDataNascimento(FormataData.formataDataDDMMYYYY(dataNascimento));

		Connection connection = (Connection) request.getAttribute("conexao");
		ContatoDao dao = null;
		try {
			dao = new ContatoDao(connection);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		dao.adiciona(contato);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/contato-adicionado.jsp");
		rd.forward(request,response);

	}
}

package br.com.caelum.mvc.logica;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.servlet.dao.ContatoDao;
import br.com.caelum.servlet.modelo.Contato;
import br.com.caelum.util.FormataData;

public class AdicionaContatoLogic implements Logica{

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String nome = req.getParameter("nome");
		String endereco = req.getParameter("endereco");
		String email = req.getParameter("email");		
		String data = req.getParameter("dataNascimento");
		
		Contato contato = new Contato();
		contato.setNome(nome);
		contato.setEndereco(endereco);
		contato.setEmail(email);
		contato.setDataNascimento(FormataData.formataDataDDMMYYYY(data));
		
		Connection connection = (Connection)req.getAttribute("conexao");
		ContatoDao dao = new ContatoDao(connection);
		dao.adiciona(contato);
		
		System.out.println("Adicionando contato... ");
		System.out.println("Contato Adicionado... ");
		
		return "mvc?logica=ListaContatosLogic";
	}
}

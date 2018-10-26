package br.com.apoioaosfundos.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.apoioaosfundos.dao.ProjetoDAO;
import br.com.apoioaosfundos.entity.Conselho;
import br.com.apoioaosfundos.entity.Entidade;
import br.com.apoioaosfundos.entity.Projeto;
import br.com.apoioaosfundos.entity.Usuario;

@Service
public class ProjetoService {

	@Autowired
	private ProjetoDAO dao;

	public Projeto adicionar(Projeto projeto, Entidade entidade, Conselho conselho, Usuario usuario) {
		projeto.setDataCadastro(new Date());
		projeto.setEntidade(entidade);
		projeto.setConselho(conselho);
		projeto.setUsuario(usuario);
		return dao.adicionar(projeto);
	}

	public Projeto carregar(Long id) {
		return dao.carregar(id);
	}

	public Projeto carregar(String nomeProjeto) {
		return dao.carregar(nomeProjeto);
	}

	public List<Projeto> listar(Entidade entidade) {
		return dao.listar(entidade);
	}

	public List<Projeto> listar(Usuario usuario) {
		return dao.listar(usuario);
	}

}

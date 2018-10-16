package br.com.apoioaosfundos.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.apoioaosfundos.dao.EntidadeDAO;
import br.com.apoioaosfundos.entity.Entidade;
import br.com.apoioaosfundos.entity.Usuario;
import br.com.apoioaosfundos.enumerated.TipoPessoa;

@Service
public class EntidadeService {

	@Autowired
	private EntidadeDAO dao;

	public Entidade adicionar(Entidade entidade, Usuario usuario) {
		entidade.setDataCadastro(new Date());
		entidade.getPresidente().setTipoPessoa(TipoPessoa.PRESIDENTE);
		entidade.setUsuario(usuario);
		return dao.adicionar(entidade);
	}

	public Entidade carregar(Long id) {
		return dao.carregar(id);
	}

	public Entidade carregar(String cnpj) {
		return dao.carregar(cnpj);
	}
	
	public Entidade atualizar(Entidade entidade) {
		return dao.atualizar(entidade);
	}

	public List<Entidade> listar(Usuario usuario) {
		return dao.listar(usuario);
	}

}

package br.com.apoioaosfundos.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.apoioaosfundos.dao.EntidadeDAO;
import br.com.apoioaosfundos.entity.Entidade;

@Service
public class EntidadeService {

	@Autowired
	private EntidadeDAO dao;

	public Entidade adicionar(Entidade entidade) {
		entidade.setDataCadastro(new Date());
		return dao.adicionar(entidade);
	}

	public Entidade carregar(Long id) {
		return dao.carregar(id);
	}

	public Entidade carregar(String cnpj) {
		return dao.carregar(cnpj);
	}

	public List<Entidade> listar() {
		return (ArrayList<Entidade>) dao.listar();
	}

}

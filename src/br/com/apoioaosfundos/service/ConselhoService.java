package br.com.apoioaosfundos.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.apoioaosfundos.dao.ConselhoDAO;
import br.com.apoioaosfundos.entity.Conselho;

@Service
public class ConselhoService {

	@Autowired
	private ConselhoDAO dao;

	public Conselho adicionar(Conselho conselho) {
		return dao.adicionar(conselho);
	}

	public Conselho carregar(Long id) {
		return dao.carregar(id);
	}

	public Conselho carregar(String cnpj) {
		return dao.carregar(cnpj);
	}

}

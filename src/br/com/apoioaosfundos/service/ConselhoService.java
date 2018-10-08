package br.com.apoioaosfundos.service;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.apoioaosfundos.dao.ConselhoDAO;
import br.com.apoioaosfundos.entity.Conselho;
import br.com.apoioaosfundos.entity.Usuario;
import br.com.apoioaosfundos.enumerated.TipoPessoa;
import br.com.apoioaosfundos.utility.FileUpload;

@Service
public class ConselhoService {

	@Autowired
	private ConselhoDAO dao;

	public Conselho adicionar(Conselho conselho, Usuario usuario) {
		conselho.setDataCadastro(new Date());
		
		conselho.getPresidente().setTipoPessoa(TipoPessoa.PRESIDENTE);
		conselho.getSecretario().setTipoPessoa(TipoPessoa.SECRETARIO);
		
		conselho.setUsuario(usuario);
		
		return dao.adicionar(conselho);
	}

	public Conselho carregar(Long id) {
		return dao.carregar(id);
	}

	public Conselho carregar(String cnpj) {
		return dao.carregar(cnpj);
	}

}

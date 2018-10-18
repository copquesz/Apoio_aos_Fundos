package br.com.apoioaosfundos.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.apoioaosfundos.dao.ConselhoDAO;
import br.com.apoioaosfundos.entity.Conselho;
import br.com.apoioaosfundos.entity.Usuario;
import br.com.apoioaosfundos.enumerated.TipoFundo;
import br.com.apoioaosfundos.enumerated.TipoPessoa;

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
	
	public Conselho atualizar(Conselho conselho) {
		return dao.atualizar(conselho);
	}
	
	public boolean isCadastrado(String cnpj) {
		return dao.isCadastrado(cnpj);
	}

	public List<Conselho> listar(Usuario usuario) {
		return dao.listar(usuario);
	}

	public List<Conselho> listar(TipoFundo tipoFundo) {
		return dao.listar(tipoFundo);
	}

	public List<Conselho> listarFundos() {
		List fundos = new ArrayList<>();
		fundos.add(listar(TipoFundo.FUNDO_MUNICIPAL_DA_CRIANÇA_E_DO_ADOLESCENTE));
		fundos.add(listar(TipoFundo.FUNDO_MUNICIPAL_DO_IDOSO));
		fundos.add(listar(TipoFundo.FUNDO_ESTADUAL_DA_CRIANÇA_E_DO_ADOLESCENTE));
		fundos.add(listar(TipoFundo.FUNDO_ESTADUAL_DO_IDOSO));
		return fundos;
	}

}

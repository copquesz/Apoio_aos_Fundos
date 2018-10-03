package br.com.apoioaosfundos.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.apoioaosfundos.dao.UsuarioDAO;
import br.com.apoioaosfundos.entity.Usuario;
import br.com.apoioaosfundos.enumerated.TipoUsuario;

@Service
public class UsuarioService {
	
	@Autowired
	private UsuarioDAO dao;
	
	public Usuario adicionar(Usuario usuario) {
		usuario.setDataCadastro(new Date());
		usuario.setTipoUsuario(TipoUsuario.NORMAL);
		return dao.adicionar(usuario);
	}
	
	public Usuario carregar(Long id) {
		return dao.carregar(id);
	}
	
	public Usuario carregar(String cpf) {
		return dao.carregar(cpf);
	}
	
	public boolean isCadastrado(String cpf) {
		return dao.isCadastrado(cpf);
	}
	
	public boolean login(String cpf, String senha) {
		return dao.login(cpf, senha);
	}

}

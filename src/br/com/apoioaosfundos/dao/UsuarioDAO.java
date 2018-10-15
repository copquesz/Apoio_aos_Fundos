package br.com.apoioaosfundos.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import br.com.apoioaosfundos.entity.Usuario;

@Repository
public class UsuarioDAO {

	@PersistenceContext
	EntityManager em;

	// Persiste um Usuário no Banco de Dados
	public Usuario adicionar(Usuario usuario) {
		em.persist(usuario);
		return carregar(usuario.getCpf());
	}

	// Busca um Usuário no Banco de Dados, passando seu ID como parâmetro
	public Usuario carregar(Long id) {
		Query query = em.createQuery("SELECT us FROM Usuario us WHERE us.id = :id", Usuario.class);
		query.setParameter("id", id);
		return (Usuario) query.getSingleResult();
	}

	// Busca um Usuário no Banco de Dados, passando seu CPF como parâmetro
	public Usuario carregar(String cpf) {
		Query query = em.createQuery("SELECT us FROM Usuario us WHERE us.cpf = :cpf", Usuario.class);
		query.setParameter("cpf", cpf);
		return (Usuario) query.getSingleResult();
	}

	// Atualiza as informações do Usuário no Banco de Dados
	public Usuario atualizar(Usuario usuario) {
		return em.merge(usuario);
	}

	// Verifica se o CPF informado ja possui cadastro no Banco de Dados
	public boolean isCadastrado(String cpf) {
		Query query = em.createQuery("SELECT us FROM Usuario us WHERE us.cpf = :cpf", Usuario.class);
		query.setParameter("cpf", cpf);
		if (query.getResultList().isEmpty()) {
			return false;
		} else {
			return true;
		}
	}

	// Verifica se o CPF e SENHA informados está registrado no Banco de Dados
	public boolean login(String cpf, String senha) {
		Query query = em.createQuery("SELECT us FROM Usuario us WHERE us.cpf = :cpf AND us.senha = :senha",
				Usuario.class);
		query.setParameter("cpf", cpf);
		query.setParameter("senha", senha);

		if (query.getResultList().isEmpty()) {
			return false;
		} else {
			return true;
		}
	}

}

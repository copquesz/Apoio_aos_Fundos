package br.com.apoioaosfundos.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import br.com.apoioaosfundos.entity.Entidade;
import br.com.apoioaosfundos.entity.Projeto;
import br.com.apoioaosfundos.entity.Usuario;

@Repository
public class ProjetoDAO {

	@PersistenceContext
	EntityManager em;

	// Persiste um Projeto no Banco de Dados
	public Projeto adicionar(Projeto projeto) {
		em.persist(projeto);
		return carregar(projeto.getNomeProjeto());
	}

	// Busca um Projeto no Banco de Dados, passando seu ID como parâmetro
	public Projeto carregar(Long id) {
		Query query = em.createQuery("SELECT pj FROM Projeto pj WHERE pj.id = :id", Projeto.class);
		query.setParameter("id", id);
		return (Projeto) query.getSingleResult();
	}

	// Busca um Projeto no Banco de Dados, passando seu NOME DO PROJETO como parâmetro
	public Projeto carregar(String nomeProjeto) {
		Query query = em.createQuery("SELECT pj FROM Projeto pj WHERE pj.nomeProjeto = :nomeProjeto", Projeto.class);
		query.setParameter("nomeProjeto", nomeProjeto);
		return (Projeto) query.getSingleResult();
	}

	// Busca todas as Entidades no Banco de Dados, passando a ENTIDADE que cadastrou como parâmetro
	public List<Projeto> listar(Entidade entidade) {
		Query query = em.createQuery("SELECT pj FROM Projeto pj WHERE pj.entidade = :entidade", Projeto.class);
		query.setParameter("entidade", entidade);
		return query.getResultList();
	}

	// Busca todas as Entidades no Banco de Dados, passando o USUARIO que cadastrou como parâmetro
	public List<Projeto> listar(Usuario usuario) {
		Query query = em.createQuery("SELECT pj FROM Projeto pj WHERE pj.usuario = :usuario", Projeto.class);
		query.setParameter("usuario", usuario);
		return query.getResultList();
	}

}

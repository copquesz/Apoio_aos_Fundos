package br.com.apoioaosfundos.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Service;

import br.com.apoioaosfundos.entity.Entidade;
import br.com.apoioaosfundos.entity.Usuario;

@Service
public class EntidadeDAO {

	@PersistenceContext
	EntityManager em;

	// Persiste uma Entidade no Banco de Dados
	public Entidade adicionar(Entidade entidade) {
		em.persist(entidade);
		return carregar(entidade.getCnpj());
	}

	// Busca uma Entidade no Banco de Dados, passando seu ID como parâmetro
	public Entidade carregar(Long id) {
		Query query = em.createQuery("SELECT ent FROM Entidade ent WHERE ent.id = :id", Entidade.class);
		query.setParameter("id", id);
		return (Entidade) query.getSingleResult();
	}

	// Busca uma Entidade no Banco de Dados, passando seu CNPJ como parâmetro
	public Entidade carregar(String cnpj) {
		Query query = em.createQuery("SELECT ent FROM Entidade ent WHERE ent.cnpj = :cnpj", Entidade.class);
		query.setParameter("cnpj", cnpj);
		return (Entidade) query.getSingleResult();
	}

	// Atualiza o objeto no Banco de Dados
	public Entidade atualizar(Entidade entidade) {
		return em.merge(entidade);
	}

	// Busca todas as Entidades no Banco de Dados, passando o USUARIO que cadastrou
	// como parâmetro
	public List<Entidade> listar(Usuario usuario) {
		Query query = em.createQuery("SELECT ent FROM Entidade ent WHERE ent.usuario = :usuario", Entidade.class);
		query.setParameter("usuario", usuario);
		return query.getResultList();
	}

}

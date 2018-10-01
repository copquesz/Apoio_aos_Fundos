package br.com.apoioaosfundos.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Service;

import br.com.apoioaosfundos.entity.Entidade;

@Service
public class EntidadeDAO {

	@PersistenceContext
	EntityManager em;

	public Entidade adicionar(Entidade entidade) {
		em.persist(entidade);
		return carregar(entidade.getCnpj());
	}

	public Entidade carregar(Long id) {
		Query query = em.createQuery("SELECT ent FROM Entidade ent WHERE ent.id = :id", Entidade.class);
		query.setParameter("id", id);
		return (Entidade) query.getSingleResult();
	}

	public Entidade carregar(String cnpj) {
		Query query = em.createQuery("SELECT ent FROM Entidade ent WHERE ent.cnpj = :cnpj", Entidade.class);
		query.setParameter("cnpj", cnpj);
		return (Entidade) query.getSingleResult();
	}
	
	public List<Entidade> listar(){
		Query query = em.createQuery("SELECT ent FROM Entidade ORDER BY ent.id", Entidade.class);
		return (ArrayList<Entidade>) query.getResultList();
	}

}

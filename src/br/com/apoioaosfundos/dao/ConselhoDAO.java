package br.com.apoioaosfundos.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Service;

import br.com.apoioaosfundos.entity.Conselho;

@Service
public class ConselhoDAO {

	@PersistenceContext
	EntityManager em;

	public Conselho adicionar(Conselho conselho) {
		em.persist(conselho);
		return carregar(conselho.getCnpj());
	}

	public Conselho carregar(Long id) {
		Query query = em.createQuery("SELECT cs FROM Conselho cs WHERE cs.id = :id", Conselho.class);
		query.setParameter("id", id);
		return (Conselho) query.getSingleResult();
	}

	public Conselho carregar(String cnpj) {
		Query query = em.createQuery("SELECT cs FROM Conselho cs WHERE cs.cnpj = :cnpj", Conselho.class);
		query.setParameter("cnpj", cnpj);
		return (Conselho) query.getSingleResult();
	}

}

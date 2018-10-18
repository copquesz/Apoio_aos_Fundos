package br.com.apoioaosfundos.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Service;

import br.com.apoioaosfundos.entity.Conselho;
import br.com.apoioaosfundos.entity.Entidade;
import br.com.apoioaosfundos.entity.Usuario;
import br.com.apoioaosfundos.enumerated.TipoFundo;

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

	public Conselho atualizar(Conselho conselho) {
		return em.merge(conselho);
	}

	// Verifica se o CPF informado ja possui cadastro no Banco de Dados
	public boolean isCadastrado(String cnpj) {
		Query query = em.createQuery("SELECT cs FROM Conselho cs WHERE cs.cnpj = :cnpj", Conselho.class);
		query.setParameter("cnpj", cnpj);
		if (query.getResultList().isEmpty()) {
			return false;
		} else {
			return true;
		}
	}

	public List<Conselho> listar(Usuario usuario) {
		Query query = em.createQuery("SELECT cs FROM Conselho cs WHERE cs.usuario = :usuario", Conselho.class);
		query.setParameter("usuario", usuario);
		return query.getResultList();
	}

	public List<Conselho> listar(TipoFundo tipoFundo) {
		Query query = em.createQuery("SELECT cs FROM Conselho cs WHERE cs.tipoFundo = :tipoFundo", Conselho.class);
		query.setParameter("tipoFundo", tipoFundo);
		return query.getResultList();
	}

}

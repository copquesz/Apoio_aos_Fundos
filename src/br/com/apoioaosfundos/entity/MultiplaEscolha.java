package br.com.apoioaosfundos.entity;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Entity
@Table(name = "multipla_escolha")
public class MultiplaEscolha implements Serializable {

	private static final long serialVersionUID = 7385760290267992195L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	
	@ElementCollection(fetch = FetchType.EAGER, targetClass = Projeto.class)
	@CollectionTable(name = "violacao_projeto", joinColumns = @JoinColumn(name = "multipla_escolha"))
	@Column(name = "violacao")
	private Set<String> violacao;
	
	@ElementCollection(fetch = FetchType.EAGER, targetClass = Projeto.class)
	@CollectionTable(name = "beneficio_projeto", joinColumns = @JoinColumn(name = "multipla_escolha"))
	@Column(name = "beneficio")
	private Set<String> beneficio;
	
	@ElementCollection(fetch = FetchType.EAGER, targetClass = Projeto.class)
	@CollectionTable(name = "meta_projeto", joinColumns = @JoinColumn(name = "multipla_escolha"))
	@Column(name = "meta")
	private Set<String> meta;
	
	@ElementCollection(fetch = FetchType.EAGER, targetClass = Projeto.class)
	@CollectionTable(name = "indicador_projeto", joinColumns = @JoinColumn(name = "multipla_escolha"))
	@Column(name = "indicador")
	private Set<String> indicador;
	
	@ElementCollection(fetch = FetchType.EAGER, targetClass = Projeto.class)
	@CollectionTable(name = "meio_verificacao_projeto", joinColumns = @JoinColumn(name = "multipla_escolha"))
	@Column(name = "meio_verificacao")
	private Set<String> meioVerificacao;
	
	@ElementCollection(fetch = FetchType.EAGER, targetClass = Projeto.class)
	@CollectionTable(name = "periodo_verificacao_projeto", joinColumns = @JoinColumn(name = "multipla_escolha"))
	@Column(name = "periodo_verificacao")
	private Set<String> periodoVerificacao;
	
	@ElementCollection(fetch = FetchType.EAGER, targetClass = Projeto.class)
	@CollectionTable(name = "estrategia_entidade_projeto", joinColumns = @JoinColumn(name = "multipla_escolha"))
	@Column(name = "estrategia_entidade")
	private Set<String> estrategiaEntidade;
	
	@ElementCollection(fetch = FetchType.EAGER, targetClass = Projeto.class)
	@CollectionTable(name = "estrategia_conselho_projeto", joinColumns = @JoinColumn(name = "multipla_escolha"))
	@Column(name = "estrategia_conselho")
	private Set<String> estrategiaConselho;

}

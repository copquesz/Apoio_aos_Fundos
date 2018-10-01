package br.com.apoioaosfundos.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Entity
@Table(name = "entidade")
public class Entidade implements Serializable {

	private static final long serialVersionUID = -1150197407478255942L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;

	// Data de Cadastro.
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "data_cadastro")
	private Date dataCadastro;

	// Data de Cadastro.
	@Temporal(TemporalType.DATE)
	@Column(name = "data_fundacao")
	private Date dataFundacao;

	// Data de Cadastro.
	@Temporal(TemporalType.DATE)
	@Column(name = "data_mandato")
	private Date dataMandato;

	@Column(name = "razao_social")
	private String razaoSocial;

	@Column(name = "cnpj")
	private String cnpj;

	@Column(name = "website")
	private String website;

	// Chave estrangeira que relaciona o Endereço com a Entidade.
	@JoinColumn(name = "presidente_id")
	@ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private Pessoa presidente;

	// Chave estrangeira que relaciona o Endereço com a Entidade.
	@JoinColumn(name = "endereco_id")
	@ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private Endereco endereco;

	// Chave estrangeira que relaciona o Endereço com a Entidade.
	@JoinColumn(name = "documentos_entidade_id")
	@ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private DocumentosEntidade documentosEntidade;

}

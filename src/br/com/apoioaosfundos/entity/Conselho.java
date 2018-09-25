package br.com.apoioaosfundos.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import br.com.apoioaosfundos.utility.DocumentosConselho;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Entity
@Table(name = "conselho")
public class Conselho implements Serializable {

	private static final long serialVersionUID = 8280321906292659775L;

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
	@JoinColumn(name = "documentos_conselho_id")
	@ManyToOne
	private DocumentosConselho documentosConselho;

}

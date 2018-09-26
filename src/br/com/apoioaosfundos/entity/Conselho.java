package br.com.apoioaosfundos.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import br.com.apoioaosfundos.enumerated.TipoFundo;
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

	@Column(name = "razao_social")
	private String razaoSocial;

	@Column(name = "cnpj")
	private String cnpj;

	@Enumerated(EnumType.ORDINAL)
	@Column(name = "type_fund")
	private TipoFundo tipoFundo;

	// Chave estrangeira que relaciona o Endereço com a Entidade.
	@JoinColumn(name = "endereco_id")
	@ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private Endereco endereco;

	// Chave estrangeira que relaciona o Endereço com a Entidade.
	@JoinColumn(name = "conta_bancaria_id")
	@ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private ContaBancaria contaBancaria;

	// Chave estrangeira que relaciona o Endereço com a Entidade.
	@JoinColumn(name = "documentos_conselho_id")
	@ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private DocumentosConselho documentosConselho;

}

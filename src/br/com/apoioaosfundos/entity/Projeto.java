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
@Table(name = "projeto")
public class Projeto implements Serializable {

	private static final long serialVersionUID = -2791879101735653556L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;

	// Data de Cadastro.
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "data_cadastro")
	private Date dataCadastro;

	@Column(name = "nome_projeto")
	private String nomeProjeto;

	@Column(name = "valor_projeto")
	private String valorProjeto;

	@Column(name = "valor_solicitado")
	private String valorSolicitado;

	@Column(name = "beneficiarios_direto")
	private Integer beneficiariosDireto;

	@Column(name = "beneficiarios_indireto")
	private Integer beneficiariosIndireto;

	@Column(name = "profissionais_envolvidos")
	private Integer profissionaisEnvolvidos;

	// Chave estrangeira que relaciona o Endereço com a Entidade.
	@JoinColumn(name = "documentos_projeto_id")
	@ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private DocumentosProjeto documentosProjeto;

	// Chave estrangeira que relaciona o Endereço com a Entidade.
	@JoinColumn(name = "conselho_id")
	@ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private Conselho conselho;

}

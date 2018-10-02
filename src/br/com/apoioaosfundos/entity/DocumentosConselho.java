package br.com.apoioaosfundos.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Entity
@Table(name = "documentos_conselho")
public class DocumentosConselho implements Serializable {

	private static final long serialVersionUID = -3268759742443433996L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;

	// Arquivo referente ao Estatuto Social.
	@Transient
	private MultipartFile cartaoCnpj;

	// URL do Estatuto Social.
	@Column(name = "url_cartao_cnpj", columnDefinition = "TEXT")
	private String urlCartaoCnpj;

	// Arquivo referente ao Cartão CNPJ.
	@Transient
	private MultipartFile declaracaoBancaria;

	// URL do Cartão CNPJ
	@Column(name = "url_declaracao_bancaria", columnDefinition = "TEXT")
	private String urlDeclaracaoBancaria;

}

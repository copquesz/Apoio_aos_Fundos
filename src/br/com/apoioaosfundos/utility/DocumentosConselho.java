package br.com.apoioaosfundos.utility;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
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
@Table(name = "documentos_fundo")
public class DocumentosConselho implements Serializable {

	private static final long serialVersionUID = -3268759742443433996L;

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

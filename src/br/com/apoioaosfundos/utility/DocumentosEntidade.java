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
@Table(name = "documentos_entidade")
public class DocumentosEntidade implements Serializable {

	private static final long serialVersionUID = -3268759742443433996L;

	// Arquivo referente ao Estatuto Social.
	@Transient
	private MultipartFile estatutoSocial;

	// URL do Estatuto Social.
	@Column(name = "url_estatuto_social", columnDefinition = "TEXT")
	private String urlEstatutoSocial;

	// Arquivo referente ao Cartão CNPJ.
	@Transient
	private MultipartFile cartaoCnpj;

	// URL do Cartão CNPJ
	@Column(name = "url_cartao_cnpj", columnDefinition = "TEXT")
	private String urlCartaoCnpj;

	// Arquivo referente a Ata de Eleição.
	@Transient
	private MultipartFile ataEleicao;

	// URL da Ata de Eleição
	@Column(name = "url_ata_eleicao", columnDefinition = "TEXT")
	private String urlAtaEleicao;

	// Arquivo referente ao Documento do Presidente.
	@Transient
	private MultipartFile documentoPresidente;

	// URL do Documento do Presidente
	@Column(name = "url_documento_presidente", columnDefinition = "TEXT")
	private String urlDocumentoPresidente;

	// Arquivo referente ao Documento do Presidente.
	@Transient
	private MultipartFile diagnosticoSocial;

	// URL do Documento do Presidente
	@Column(name = "url_diagnostico_social", columnDefinition = "TEXT")
	private String urlDiagnosticoSocial;

}

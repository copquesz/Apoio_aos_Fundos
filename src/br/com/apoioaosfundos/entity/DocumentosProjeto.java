package br.com.apoioaosfundos.entity;

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
@Table(name = "documentos_projeto")
public class DocumentosProjeto implements Serializable {

	private static final long serialVersionUID = 6501581024312869953L;

	// Arquivo da imagem da Proposta.
	@Transient
	private MultipartFile imagem;

	// URL da imagem da Proposta.
	@Column(name = "url_image", columnDefinition = "TEXT")
	private String urlImage;

	// Arquivo da imagem da Proposta.
	@Transient
	private MultipartFile proposta;

	// URL da imagem da Proposta.
	@Column(name = "url_proposta", columnDefinition = "TEXT")
	private String urlProposta;

	// Arquivo da imagem da Proposta.
	@Transient
	private MultipartFile certificado;

	// URL da imagem da Proposta.
	@Column(name = "url_certificado", columnDefinition = "TEXT")
	private String urlCertificado;

}

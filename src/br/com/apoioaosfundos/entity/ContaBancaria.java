package br.com.apoioaosfundos.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Entity
@Table(name = "conta_bancaria")
public class ContaBancaria implements Serializable {

	private static final long serialVersionUID = -8570780666048789820L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;

	@Column(name = "banco")
	private String banco;

	@Column(name = "agencia")
	private String agencia;

	@Column(name = "conta")
	private String conta;

	@Column(name = "digito")
	private String digito;

}

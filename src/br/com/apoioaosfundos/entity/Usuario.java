package br.com.apoioaosfundos.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import br.com.apoioaosfundos.enumerated.TipoUsuario;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Entity
@Table(name = "usuario")
public class Usuario {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;

	// Data de Cadastro.
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "data_cadastro")
	private Date dataCadastro;

	// Data de Cadastro.
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "ultimo_acesso")
	private Date ultimoAcesso;

	@Column(name = "email")
	private String email;

	@Column(name = "senha")
	private String senha;

	@Column(name = "cpf")
	private String cpf;

	@Column(name = "telefone_residencial")
	private String telefoneResidencial;

	@Column(name = "telefone_celular")
	private String telefoneCelular;
	
	@Enumerated(EnumType.ORDINAL)
	@Column(name = "tipo_usuario")
	private TipoUsuario userType;

}

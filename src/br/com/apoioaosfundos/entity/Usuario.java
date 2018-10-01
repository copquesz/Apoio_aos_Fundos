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

import br.com.apoioaosfundos.enumerated.TipoUsuario;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * @author Lucas Copque
 * @category entity
 *
 */

@Getter
@Setter
@ToString
@Entity
@Table(name = "usuario")
public class Usuario implements Serializable {

	private static final long serialVersionUID = 8567483040749149143L;

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

	// Chave estrangeira que relaciona o Endereço com a Entidade.
	@JoinColumn(name = "endereco_id")
	@ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private Endereco endereco;

	@Enumerated(EnumType.ORDINAL)
	@Column(name = "tipo_usuario")
	private TipoUsuario tipoUsuario;

}

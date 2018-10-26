package br.com.apoioaosfundos.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import br.com.apoioaosfundos.enumerated.TipoFundo;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Entity
@Table(name = "metas_indicadores")
public class MetasIndicadores implements Serializable {

	private static final long serialVersionUID = 59744606021240418L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;

	@Column(name = "meta", columnDefinition = "TEXT")
	private String meta;

	@Column(name = "indicador", columnDefinition = "TEXT")
	private String indicador;

	@Column(name = "meio_verificacao", columnDefinition = "TEXT")
	private String meioVerificacao;

	@Column(name = "periodicidade", columnDefinition = "TEXT")
	private String periodicidade;

}

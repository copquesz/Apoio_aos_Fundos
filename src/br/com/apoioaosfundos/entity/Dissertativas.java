package br.com.apoioaosfundos.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Entity
@Table(name = "dissertativas")
public class Dissertativas implements Serializable{
	
	private static final long serialVersionUID = -7721247363689813251L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	
	@Column(name = "contexto_social", columnDefinition = "TEXT")
	private String contextoSocial;
	
	@Column(name = "justificativa", columnDefinition = "TEXT")
	private String justificativa;
	
	@Column(name = "objetivo_geral", columnDefinition = "TEXT")
	private String objetivoGeral;
	
	@Column(name = "objetivo_especifico", columnDefinition = "TEXT")
	private String objetivoEspecifico;
	
	@Column(name = "resultados_esperados", columnDefinition = "TEXT")
	private String resultadosEsperados;
	
	@Column(name = "comentario_finais", columnDefinition = "TEXT")
	private String comentariosFinais;

}

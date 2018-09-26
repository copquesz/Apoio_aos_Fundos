package br.com.apoioaosfundos.enumerated;

import lombok.Getter;

@Getter
public enum TipoFundo {
	
	FUNDO_MUNICIPAL_DA_CRIANÇA_E_DO_ADOLESCENTE(0 ,"Fundo Municipal da Criança e do Adolescente"),
	FUNDO_MUNICIPAL_DO_IDOSO(1, "Fundo Municipal do Idoso"),
	FUNDO_ESTADUAL_DA_CRIANÇA_E_DO_ADOLESCENTE(2, "Fundo Estadual da Criança e do Adolescente"),
	FUNDO_ESTADUAL_DO_IDOSO(3, "Fundo Estadual do Idoso");
	
	private int id;
	private String descricao;
	
	TipoFundo(int id, String descricao) {
		this.id = id;
		this.descricao = descricao;
	}

}

package br.com.apoioaosfundos.enumerated;

import lombok.Getter;

@Getter
public enum TipoPessoa {
	
	PRESIDENTE(0, "Presidente"),
	SECRETARIO(1, "Secretário");
	
	private int id;
	private String descricao;
	
	TipoPessoa(int id, String descrição) {
		this.id = id;
		this.descricao = descrição;
	}

}

package br.com.apoioaosfundos.enumerated;

import lombok.Getter;

@Getter
public enum TipoPessoa {
	
	PRESIDENTE(0, "Presidente"),
	SECRETARIO(1, "Secret�rio");
	
	private int id;
	private String descricao;
	
	TipoPessoa(int id, String descri��o) {
		this.id = id;
		this.descricao = descri��o;
	}

}

package br.com.apoioaosfundos.enumerated;

import lombok.Getter;

@Getter
public enum TipoUsuario {
	
	NORMAL(0, "Normal"),
	EMPRESA(1, "Empresa"),
	TECNICO(2, "Técnico");
	
	private int id;
	private String descricao;
	
	TipoUsuario(int id, String descrição) {
		this.id = id;
		this.descricao = descrição;
	}

}

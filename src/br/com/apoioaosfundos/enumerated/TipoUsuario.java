package br.com.apoioaosfundos.enumerated;

import lombok.Getter;

@Getter
public enum TipoUsuario {
	
	NORMAL(0, "Normal"),
	EMPRESA(1, "Empresa"),
	TECNICO(2, "T�cnico");
	
	private int id;
	private String descricao;
	
	TipoUsuario(int id, String descri��o) {
		this.id = id;
		this.descricao = descri��o;
	}

}

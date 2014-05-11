package br.com.voluntarionarede.testes;

import br.com.voluntarionarede.jdbc.FabricaDeConexoes;

public class Main {

	public static void main(String[] args) {
		FabricaDeConexoes.getConnection();
	}

}

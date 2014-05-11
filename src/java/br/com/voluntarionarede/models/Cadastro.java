package br.com.voluntarionarede.models;

import java.util.Date;

public class Cadastro {
	int id;
	boolean isCancelado;
	StatusCadastro status;
	Date dataCancelamento;
	Date dataCadastro;
	Projeto projeto;
	Voluntario voluntario;
	
}

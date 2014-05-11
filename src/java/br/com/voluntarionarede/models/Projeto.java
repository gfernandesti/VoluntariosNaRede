package br.com.voluntarionarede.models;

import java.util.ArrayList;
import java.util.Date;

public class Projeto {
	int id;
	ONG ong;
	String nome;
	String email;
	String detalhes;
	String responsavel;
	String telefone;
	byte[] imagemProjeto;
	ArrayList<Causa>causas;
	Endereco endereco;
	boolean isFechado;
	Date dataFechamento;
	boolean isCancelado;
	Date dataCancelamento;
	boolean isPublicado;
	Date dataPublicacao;
	Date dataCriacao;
	Date dataModificacao;
	ArrayList<Cargo>cargos;
	ArrayList<Habilidade>habilidades;
	
}

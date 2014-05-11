package br.com.voluntarionarede.models;

import java.util.ArrayList;
import java.util.Date;

public class ONG {
	private int id;
	private String email;
	private String senha;
	private String nome;
	private String descricao;
	private String detalhe;
	private byte[] Capa;
	private byte[] imagemONG;
	private String webSite;
	private ArrayList<Causa>causas;
	private ArrayList<Voluntario>voluntarios;
	private boolean isPublicado;
	private Date publicacao;
	private boolean isCancelado;
	private Date cancelacao;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public String getDetalhe() {
		return detalhe;
	}
	public void setDetalhe(String detalhe) {
		this.detalhe = detalhe;
	}
	public byte[] getImagemONG() {
		return imagemONG;
	}
	public void setImagemONG(byte[] imagemONG) {
		this.imagemONG = imagemONG;
	}
	public String getWebSite() {
		return webSite;
	}
	public void setWebSite(String webSite) {
		this.webSite = webSite;
	}
	public ArrayList<Causa> getCausas() {
		return causas;
	}
	public void setCausas(ArrayList<Causa> causas) {
		this.causas = causas;
	}
	public ArrayList<Voluntario> getVoluntarios() {
		return voluntarios;
	}
	public void setVoluntarios(ArrayList<Voluntario> voluntarios) {
		this.voluntarios = voluntarios;
	}
	public boolean isPublicado() {
		return isPublicado;
	}
	public void setPublicado(boolean isPublicado) {
		this.isPublicado = isPublicado;
	}
	public Date getPublicacao() {
		return publicacao;
	}
	public void setPublicacao(Date publicacao) {
		this.publicacao = publicacao;
	}
	public boolean isCancelado() {
		return isCancelado;
	}
	public void setCancelado(boolean isCancelado) {
		this.isCancelado = isCancelado;
	}
	public Date getCancelacao() {
		return cancelacao;
	}
	public void setCancelacao(Date cancelacao) {
		this.cancelacao = cancelacao;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public byte[] getCapa() {
		return Capa;
	}
	public void setCapa(byte[] capa) {
		Capa = capa;
	}
	
          
	

}

package br.com.voluntarionarede.models;


import java.util.Date;

public class Usuario {
	private int id;
	private String primeiroNome;
	private String ultimoNome;
	private String email;
	private String senha;
	private String telefone;
	private Endereco endereco;
	private boolean isAtivo;
	private boolean isFuncionario;
	//private Calendar cadastroNoSite;
	private Date ultimoAcesso;
	private Date modificacaoPerfil;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPrimeiroNome() {
		return primeiroNome;
	}
	public void setPrimeiroNome(String primeiroNome) {
		this.primeiroNome = primeiroNome;
	}
	public String getUltimoNome() {
		return ultimoNome;
	}
	public void setUltimoNome(String ultimoNome) {
		this.ultimoNome = ultimoNome;
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
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	public Endereco getEndereco() {
		return endereco;
	}
	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}
	public boolean isAtivo() {
		return isAtivo;
	}
	public void setAtivo(boolean isAtivo) {
		this.isAtivo = isAtivo;
	}
	public boolean isFuncionario() {
		return isFuncionario;
	}
	public void setFuncionario(boolean isFuncionario) {
		this.isFuncionario = isFuncionario;
	}
	/*public Date getCadastroNoSite() {
		return cadastroNoSite;
	}
	public void setCadastroNoSite(Date cadastroNoSite) {
		this.cadastroNoSite = cadastroNoSite;
	}*/
	public Date getUltimoAcesso() {
		return ultimoAcesso;
	}
	public void setUltimoAcesso(Date ultimoAcesso) {
		this.ultimoAcesso = ultimoAcesso;
	}
	public Date getModificacaoPerfil() {
		return modificacaoPerfil;
	}
	public void setModificacaoPerfil(Date modificacaoPerfil) {
		this.modificacaoPerfil = modificacaoPerfil;
	}
	
}

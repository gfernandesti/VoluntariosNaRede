package br.com.voluntarionarede.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.voluntarionarede.models.Usuario;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UsuarioDao {
	Connection conexao;

	 Connection connection;

	public UsuarioDao(Connection connection) {
		this.connection = connection;
	}

	// Construtor: sempre que Contato Dao for instanciado é construído uma
	// conexão com o Banco
	// E atribuido a váriavel "conexao", que deve ser do tipo Connection
	public UsuarioDao() {
		this.conexao = FabricaDeConexoes.getConnection();
	}

	// metodos que vão interagir com o banco
	// Passo como parametro o objeto que desejo add no Banco
	public void adiciona(Usuario usuario){
		// comando sql
		String sql = "insert into Usuario"
				+ "(Usuario_email,Usuario_senha)" + "values(?,?)";
		// crio um objeto do tipo PreparedStatement para receber o comando sql
		// desejado
		// e setar os valores passados no formulário
		
		        
			PreparedStatement stmt;
            try {
                stmt = conexao.prepareStatement(sql);
           
			// método set exige como parameto(indice,atributo do objeto)
			stmt.setString(1, usuario.getEmail());
			stmt.setString(2, usuario.getSenha());
			//stmt.setObject(3, usuario.getEndereco());
			//stmt.setDate(4, new Date(usuario.getCadastroNoSite().getTime()));

			// executa ação no Banco
			stmt.execute();
			stmt.close();
                         } catch (SQLException ex) {
                System.out.println(ex);
            }
		
	}

	public List<Usuario> getLista() {
		try {
			//cria um list do tipo Contato
			List<Usuario> listadeusuarios = new ArrayList<Usuario>();
			//cria objeto para injetar comando tipo select no banco
			PreparedStatement stmt = this.conexao
					.prepareStatement("select * from Usuario");
			//objeto resultset consegue guardar valor encontrado
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				// Criando o objeto contato
				Usuario usuario = new Usuario();
				//Seta no objeto contato o q "rs" pegou no banco
				usuario.setId(rs.getInt("Usuario_id"));
				usuario.setEmail(rs.getString("Usuario_email"));
				usuario.setSenha(rs.getString("Usuario_senha"));
				/*usuario.setEndereco(rs.getObject(""));
				// montando a data através do Calendar
				Calendar data = Calendar.getInstance();
				data.setTime(rs.getDate("dataNascimento"));
				//seta o valor em tipo date
				contato.setDataNascimento(data);*/

				// adicionando objeto a lista
				listadeusuarios.add(usuario);
			}
			rs.close();
			stmt.close();
                        System.out.println("listar ok");
			return listadeusuarios;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void altera(Usuario usuario) {

		String sql = "update Usuario set email=?,senha=?,"
				+ "where id=?";
		PreparedStatement stmt;
		try {
			stmt = conexao.prepareStatement(sql);

			stmt.setString(1, usuario.getEmail());
			stmt.setString(2, usuario.getSenha());
			/*stmt.setString(3, contato.getEndereco());
			stmt.setDate(4, new Date(contato.getDataNascimento()
					.getTimeInMillis()));*/
			stmt.setLong(5, usuario.getId());
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void remove(Usuario usuario) {
		PreparedStatement stmt;
		try {
			stmt = conexao.prepareStatement("delete from Usuario where id=?");
			stmt.setLong(1, usuario.getId());
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

}

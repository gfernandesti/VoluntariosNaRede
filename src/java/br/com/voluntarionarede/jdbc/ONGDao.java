package br.com.voluntarionarede.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.voluntarionarede.models.ONG;
import br.com.voluntarionarede.models.Usuario;

public class ONGDao {
		Connection conexao;

		 Connection connection;

		public ONGDao(Connection connection) {
			this.connection = connection;
		}

		// Construtor: sempre que Contato Dao for instanciado é construído uma
		// conexão com o Banco
		// E atribuido a váriavel "conexao", que deve ser do tipo Connection
		public ONGDao() {
			new FabricaDeConexoes();
			this.conexao = FabricaDeConexoes.getConnection();
			System.out.println("passou");
		}

		// metodos que vão interagir com o banco
		// Passo como parametro o objeto que desejo add no Banco
		public void adiciona(ONG ong) {
			// comando sql
			String sql = "insert into Usuario"
					+ "(ONG_nome,ONG_website,ONG_descricao,ONG_capa)" + "values(?,?,?,?)";
			// crio um objeto do tipo PreparedStatement para receber o comando sql
			// desejado
			// e setar os valores passados no formulário
			try {
			
				PreparedStatement stmt = conexao.prepareStatement(sql);
				// método set exige como parameto(indice,atributo do objeto)
				stmt.setString(1, ong.getNome());
				stmt.setString(2, ong.getWebSite());
				stmt.setString(3, ong.getDescricao());
				
					// fetches input stream of the upload file for the blob column
					//stmt.setBlob(4, ong.getCapa());
				
				int row = stmt.executeUpdate();
				if (row > 0) {
					System.out.println("Image is uploaded successfully into the Database");
				}
				// executa ação no Banco
				stmt.execute();
				// fecha conexão com Banco
				stmt.close();
			} catch (SQLException e) {
				throw new RuntimeException(e);
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
					usuario.setPrimeiroNome(rs.getString("Usuario_primeiroNome"));
					usuario.setEmail(rs.getString("Usuario_email"));
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
				return listadeusuarios;
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
		}

		public void altera(Usuario usuario) {

			String sql = "update contatos set nome=?,email=?,"
					+ "where id=?";
			PreparedStatement stmt;
			try {
				stmt = conexao.prepareStatement(sql);

				stmt.setString(1, usuario.getPrimeiroNome());
				stmt.setString(2, usuario.getEmail());
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
				stmt = conexao.prepareStatement("delete from contatos where id=?");
				stmt.setLong(1, usuario.getId());
				stmt.execute();
				stmt.close();
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}

		}
	}


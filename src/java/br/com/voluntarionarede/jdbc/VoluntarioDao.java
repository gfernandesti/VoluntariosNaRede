package br.com.voluntarionarede.jdbc;

import br.com.voluntarionarede.models.Voluntario;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class VoluntarioDao {
	Connection conexao;

	 Connection connection;

	public VoluntarioDao(Connection connection) {
		this.connection = connection;
	}

	// Construtor: sempre que Contato Dao for instanciado é construído uma
	// conexão com o Banco
	// E atribuido a váriavel "conexao", que deve ser do tipo Connection
	public VoluntarioDao() {
		this.conexao = FabricaDeConexoes.getConnection();
	}

	// metodos que vão interagir com o banco
	// Passo como parametro o objeto que desejo add no Banco
	public void adiciona(Voluntario voluntario){
		// comando sql
		String sql = "insert into Voluntario"
				+ "(Voluntario_email,Voluntario_senha)" + "values(?,?)";
		// crio um objeto do tipo PreparedStatement para receber o comando sql
		// desejado
		// e setar os valores passados no formulário
		
		        
			PreparedStatement stmt;
            try {
                stmt = conexao.prepareStatement(sql);
           
			// método set exige como parameto(indice,atributo do objeto)
			stmt.setString(1, voluntario.getEmail());
			stmt.setString(2, voluntario.getSenha());
			//stmt.setObject(3, voluntario.getEndereco());
			//stmt.setDate(4, new Date(voluntario.getCadastroNoSite().getTime()));

			// executa ação no Banco
			stmt.execute();
			stmt.close();
                        System.out.println("passou pelo Dao");
                         } catch (SQLException ex) {
                System.out.println(ex);
            }
		
	}

	public List<Voluntario> getLista() {
		try {
			//cria um list do tipo Contato
			List<Voluntario> listadeusuarios = new ArrayList<>();
			//cria objeto para injetar comando tipo select no banco
			PreparedStatement stmt = this.conexao
					.prepareStatement("select * from Voluntario");
			//objeto resultset consegue guardar valor encontrado
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				// Criando o objeto contato
				Voluntario voluntario = new Voluntario();
				//Seta no objeto contato o q "rs" pegou no banco
				voluntario.setId(rs.getInt("Voluntario_id"));
				voluntario.setEmail(rs.getString("Voluntario_email"));
				voluntario.setSenha(rs.getString("Voluntario_senha"));
				/*voluntario.setEndereco(rs.getObject(""));
				// montando a data através do Calendar
				Calendar data = Calendar.getInstance();
				data.setTime(rs.getDate("dataNascimento"));
				//seta o valor em tipo date
				contato.setDataNascimento(data);*/

				// adicionando objeto a lista
				listadeusuarios.add(voluntario);
			}
			rs.close();
			stmt.close();
                        System.out.println("listar ok");
			return listadeusuarios;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void altera(Voluntario voluntario) throws FileNotFoundException {

		String sql = "update Voluntario set Voluntario_imagem=?,"
				+ "where id=1";
		PreparedStatement stmt;
		try {
			stmt = conexao.prepareStatement(sql);

			FileInputStream fis = new FileInputStream(voluntario.getImage());
                        stmt.setBinaryStream(1, (InputStream) fis, (int) (voluntario.getImage().length()));
			stmt.setString(2, voluntario.getSenha());
			/*stmt.setString(3, contato.getEndereco());
			stmt.setDate(4, new Date(contato.getDataNascimento()
					.getTimeInMillis()));*/
			stmt.setLong(5, voluntario.getId());
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void remove(Voluntario voluntario) {
		PreparedStatement stmt;
		try {
			stmt = conexao.prepareStatement("delete from Voluntario where id=?");
			stmt.setLong(1, voluntario.getId());
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

}

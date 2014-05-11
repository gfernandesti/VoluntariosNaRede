package br.com.voluntarionarede.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.voluntarionarede.jdbc.UsuarioDao;
import br.com.voluntarionarede.models.Usuario;

/**
 * Servlet implementation class UsuarioController
 */
@WebServlet("/cadastrarUsu.do")
public class UsuarioController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public UsuarioController() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//PrintWriter out = response.getWriter();
		          System.out.println("passou aqui");
		// buscando os parâmetros no request
		String nome = request.getParameter("nome");
		//String endereco = request.getParameter("endereco");
		String email = request.getParameter("email");
		/*String dataEmTexto = request
		.getParameter("dataNascimento");
		Calendar cadastronosite = null;*/
		
		/* fazendo a conversão da data
		try {
		Date date =
		new SimpleDateFormat("dd/MM/yyyy")
		.parse(dataEmTexto);
		cadastronosite = Calendar.getInstance();
		cadastronosite.setTime(date);
		} catch (ParseException e) {
		out.println("Erro de conversão da data");
		return; //para a execução do método
		}*/
		// monta um objeto contato
	    Usuario usuario = new Usuario();
		usuario.setPrimeiroNome(nome);
		//usuario.setEndereco(endereco);
		usuario.setEmail(email);
		//usuario.setCadastroNoSite(cadastronosite);
		   System.out.println("passou..");
		// salva o contato
		UsuarioDao dao = null;
		try {
			dao = new UsuarioDao();
		} catch (Exception e) {
		}
		dao.adiciona(usuario);
		
		// imprime o nome do contato que foi adicionado
		/*out.println("<html>");
		out.println("<body>");
		out.println("Contato " + contato.getNome() +
				" adicionado com sucesso!");
		out.println("</body>");
		out.println("</html>");*/
		
		//Capítulo-9 Mcv
		//RequestDispatcher retira todo o código html dessa página
		
		 //PrintWriter saida=response.getWriter();
		 //saida.println("<script>alert('Gravado Com Sucesso!')</script>");
                System.out.println("passou..");
		request.setAttribute("usuario", usuario);
		 RequestDispatcher rd = request
					.getRequestDispatcher("AdicionadoComSucesso.jsp");//direciona p/pagina q contem a resposta html
					rd.forward(request,response);
		
		 
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}
}

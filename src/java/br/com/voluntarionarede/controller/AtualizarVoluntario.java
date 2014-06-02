/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.com.voluntarionarede.controller;

import br.com.voluntarionarede.jdbc.VoluntarioDao;
import br.com.voluntarionarede.models.Voluntario;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author gabriel
 */
@WebServlet("/atualizarUsu.do")
public class AtualizarVoluntario extends HttpServlet {

    public AtualizarVoluntario() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
        
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//PrintWriter out = response.getWriter();
		
		// buscando os parâmetros no request
		//String email = request.getParameter("Uemail");
		//String endereco = request.getParameter("endereco");
		//String senha = request.getParameter("Usenha");
                File image = new File(request.getParameter("Ufoto"));
                
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
	    Voluntario voluntario = new Voluntario();
		//voluntario.setEmail(email);
		//usuario.setEndereco(endereco);
		//voluntario.setSenha(senha);
                voluntario.setImage(image);
		//usuario.setCadastroNoSite(cadastronosite);
		   System.out.println("email: "+voluntario.getEmail()+"senha:"+voluntario.getSenha());
		// salva o contato
		VoluntarioDao dao = new VoluntarioDao();
		dao.altera(voluntario);
		          System.out.println("passou pelo controller");
		// imprime o nome do contato que foi adicionado
		/*out.println("<html>");
		out.println("<body>");
		out.println("Contato " + contato.getNome() +
				" adicionado com sucesso!");
		out.println("</body>");
		out.println("</html>");*/
		
		//Capítulo-9 Mcv
		//RequestDispatcher retira todo o código html dessa página
		
		 PrintWriter saida=response.getWriter();
		 saida.println("<script>alert('Atualizado Com Sucesso!')</script>");
		 request.setAttribute("usuario", voluntario);
		
		
		 
	}
}

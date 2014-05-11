package br.com.voluntarionarede.controller;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import br.com.voluntarionarede.jdbc.ONGDao;
import br.com.voluntarionarede.jdbc.UsuarioDao;
import br.com.voluntarionarede.models.ONG;
import br.com.voluntarionarede.models.Usuario;

public class ONGController extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public ONGController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
				// buscando os parâmetros no request
				String nome = request.getParameter("nome");
				//String endereco = request.getParameter("endereco");
				String email = request.getParameter("email");
				String senha = request.getParameter("senha");
				InputStream inputStream = null;

				// obtains the upload file part in this multipart request
				/*Part filePart = request.getPart("imagem");
				System.out.println("1 parte");
				if (filePart != null) {
					// debug messages
					System.out.println(filePart.getName());
					System.out.println(filePart.getSize());
					System.out.println(filePart.getContentType());

					// obtains input stream of the upload file
					inputStream = filePart.getInputStream();
					System.out.println("2 parte");
				}*/
		        ONG ong  = new ONG();
		        ong.setNome(nome);
		        ong.setWebSite(email);
		        ong.setDescricao(senha);
				//ong.setCapa(inputStream);
				System.out.println("3 parte");
				// salva o contato
				ONGDao dao = new ONGDao();
			    dao.adiciona(ong);
			    System.out.println("4 parte");
				request.setAttribute("ong", ong);
				 RequestDispatcher rd = request
							.getRequestDispatcher("AdicionadoComSucesso.jsp");//direciona p/pagina q contem a resposta html
							rd.forward(request,response);
				
				 
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="Head.jsp" %>
<%@ page import="br.com.voluntarionarede.models.*"%>
<%@ page import="br.com.voluntarionarede.jdbc.UsuarioDao"%>
<%
	UsuarioDao dao = new UsuarioDao();
	if (request.getParameter("login") != null) {

		for (Usuario usuario : dao.getLista()) {
			if (usuario.getEmail().equals(
					request.getParameter("Uemail"))
					&& usuario.getSenha().equals(
							request.getParameter("Usenha"))) {
				System.out.println(usuario.getEmail());
				session.setAttribute("userName",
						request.getParameter("Uemail"));
				session.setAttribute("userPass",
						request.getParameter("Usenha"));
			}
		}
	} else if (request.getParameter("logoff") != null) {
		session.removeAttribute("userName");
		session.removeAttribute("userPass");
		response.sendRedirect("Home.jsp");
	}
%>
<body>
	<div class="container">
		<div class="row clearfix">
			<%@include file="Cabecalho.jsp" %>
			<h4>Procure por Ações ou ONG's</h4>
			<div class="row clearfix">
				<div class="col-md-12 column">
					<form>
					<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
								<button type="button" class="btn btn-primary">Ação</button>

								<!-- Indicates a successful or positive action -->
								<button type="button" class="btn btn-success">ONG</button>
						<table>
							<tr>
								<td><select class="form-control" style="width: 200px">
										<option value="" disabled="disabled" selected="selected">Causa</option>

								</select></td>
								<td><select class="form-control" style="width: 200px;">
										<option>Habilidade</option>

								</select></td>
								<td><select class="form-control" style="width: 200px;">
										<option>Cidade</option>

								</select></td>
							</tr>
						</table>
						
					</form>
				</div>
			</div>

			<div class="row">
				<div class="col-md-4">
					<div class="thumbnail">
						<img alt="300x200" src="http://lorempixel.com/600/200/people">
						<div class="caption">
							<h3>Thumbnail label</h3>
							<p>Cras justo odio, dapibus ac facilisis in, egestas eget
								quam. Donec id elit non mi porta gravida at eget metus. Nullam
								id dolor id nibh ultricies vehicula ut id elit.</p>
							<p>
								<a class="btn btn-primary" href="#">Conferir</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="thumbnail">
						<img alt="300x200" src="http://lorempixel.com/600/200/city">
						<div class="caption">
							<h3>Thumbnail label</h3>
							<p>Cras justo odio, dapibus ac facilisis in, egestas eget
								quam. Donec id elit non mi porta gravida at eget metus. Nullam
								id dolor id nibh ultricies vehicula ut id elit.</p>
							<p>
								<a class="btn btn-primary" href="#">Conferir</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="thumbnail">
						<img alt="300x200" src="http://lorempixel.com/600/200/sports">
						<div class="caption">
							<h3>Thumbnail label</h3>
							<p>Cras justo odio, dapibus ac facilisis in, egestas eget
								quam. Donec id elit non mi porta gravida at eget metus. Nullam
								id dolor id nibh ultricies vehicula ut id elit.</p>
							<p>
								<a class="btn btn-primary" href="#">Conferir</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<%
		if (session.getAttribute("userName") == null) {%>
			<%@ include file="ModalLogin.jsp" %>	
	<%
		} else {
			RequestDispatcher rd = request
					.getRequestDispatcher("HomeUsuario.jsp");
			rd.forward(request, response);

		}
	%>
<%@ include file="rodape.jsp" %>
<%@ include file="ModalCadastrarONG.jsp" %>
<%@ include file="ModalCadastrarUsuario.jsp" %>
		
</body>
</html>

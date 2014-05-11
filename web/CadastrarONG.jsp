<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Cadastar ONG</h1>
	<form method="POST" action="cadastrarONG.do"
		enctype="multipart/form-data">
		<table>
			<tr>
				<td>Nome:</td>
				<td><input type="text" name="nome" size="30"
					required="required" /></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="text" name="email" size="30"
					required="required" /></td>
			</tr>
			<tr>
				<td>Senha:</td>
				<td><input type="text" name="senha" size="30"
					required="required" /></td>
			</tr>
			<tr>
				<td>Escolha uma imagem:</td>
				<td><input type="file" name="imagem" size="10"
					required="required" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Enviar"></td>
				<td><input type="reset" value="Limpar" /></td>
			</tr>
		</table>
	</form>
</body>
</html>
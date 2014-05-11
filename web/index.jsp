<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html lang="pt">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Voluntário na Rede!</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/teste.css" rel="stylesheet">


<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="img/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="img/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="img/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="img/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="img/favicon.png">

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/scripts.js"></script>
<script src="angular.js"></script>
<script type="text/javascript" src="lightbox.js"></script>

</head>
<body>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#UsuarioModal').modal('show');
		});
	</script>

	<!-- Modal -->
	<div class="modal fade" id="UsuarioModal" tabindex="-1" role="dialog"
		aria-labelledby="UsuarioModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				
				<div class="modal-body">
					<div class="alert alert-success">${param.nome}Salvo com Sucesso!</div>

				</div>

			</div>
			<!-- /.modal-content -->
	</div>
	<!-- /.modal -->
	</div>
</body>
</html>

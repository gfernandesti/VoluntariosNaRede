<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">Cadastrar ONG</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<fieldset>

							<!-- Text input-->
							<div class="form-group">
								<label class="col-md-4 control-label" for="textinput"></label>
								<div class="col-md-4">
									<input id="textinput" name="textinput" type="text"
										placeholder="Nome da ONG" class="form-control input-md"
										required="">

								</div>
							</div>

							<!-- Text input-->
							<div class="form-group">
								<label class="col-md-4 control-label" for="Uemail"></label>
								<div class="col-md-4">
									<input id="Uemail" name="Uemail" type="text"
										placeholder="Email" class="form-control input-md" required="">

								</div>
							</div>

							<!-- Password input-->
							<div class="form-group">
								<label class="col-md-4 control-label" for="passwordinput"></label>
								<div class="col-md-4">
									<input id="passwordinput" name="passwordinput" type="password"
										placeholder="Senha" class="form-control input-md" required="">

								</div>
							</div>

							<!-- Password input-->
							<div class="form-group">
								<label class="col-md-4 control-label" for="passwordinput"></label>
								<div class="col-md-4">
									<input id="passwordinput" name="passwordinput" type="password"
										placeholder="Confirmar Senha" class="form-control input-md"
										required="">

								</div>
							</div>

							<!-- Button -->
							<div class="form-group">
								<label class="col-md-4 control-label" for="singlebutton"></label>
								<div class="col-md-4">
									<button id="singlebutton" name="singlebutton"
										class="btn btn-primary">Criar Conta</button>
								</div>
							</div>

						</fieldset>
					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
					<button type="button" class="btn btn-primary">Salvar</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
</body>
</html>
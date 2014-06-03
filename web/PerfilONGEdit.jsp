<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar ONG</title>
    </head>
    <body>
        <form class="form-horizontal">
            <fieldset>
                <!-- Text input-->
                <div class="control-group">
                    <label class="control-label" for="textinput">Nome</label>
                    <div class="controls">
                        <input id="textinput" name="textinput" type="text" placeholder="Nome da ONG" class="input-medium" required="">

                    </div>
                </div>

                <!-- Password input-->
                <div class="control-group">
                    <label class="control-label" for="passwordinput">Senha</label>
                    <div class="controls">
                        <input id="passwordinput" name="passwordinput" type="password" placeholder="Digite uma senha de no mínimo 6 caracteres." class="input-small" required="">

                    </div>
                </div>

                <!-- Password input-->
                <div class="control-group">
                    <label class="control-label" for="passwordinput">Confirmar senha</label>
                    <div class="controls">
                        <input id="passwordinput" name="passwordinput" type="password" placeholder="Confirme a senha" class="input-small" required="">

                    </div>
                </div>

                <!-- Text input-->
                <div class="control-group">
                    <label class="control-label" for="textinput">CEP</label>
                    <div class="controls">
                        <input id="textinput" name="textinput" type="text" placeholder="Digite o CEP" class="input-small">
                        <p class="help-block">00000-000</p>
                    </div>
                </div>

                <!-- Text input-->
                <div class="control-group">
                    <label class="control-label" for="textinput">Endereço</label>
                    <div class="controls">
                        <input id="textinput" name="textinput" type="text" placeholder="Rua, numero" class="input-medium">

                    </div>
                </div>

                <!-- Text input-->
                <div class="control-group">
                    <label class="control-label" for="textinput">Bairro</label>
                    <div class="controls">
                        <input id="textinput" name="textinput" type="text" placeholder="Bairro" class="input-medium">

                    </div>
                </div>

                <!-- Text input-->
                <div class="control-group">
                    <label class="control-label" for="textinput">Cidade</label>
                    <div class="controls">
                        <input id="textinput" name="textinput" type="text" placeholder="Cidade" class="input-medium">

                    </div>
                </div>

                <!-- Text input-->
                <div class="control-group">
                    <label class="control-label" for="textinput">Estado</label>
                    <div class="controls">
                        <input id="textinput" name="textinput" type="text" placeholder="Estado" class="input-mini">

                    </div>
                </div>

                <!-- Text input-->
                <div class="control-group">
                    <label class="control-label" for="textinput">Telefone</label>
                    <div class="controls">
                        <input id="textinput" name="textinput" type="text" placeholder="(XX)0000-0000" class="input-small">
                        <p class="help-block">(XX)0000-0000</p>
                    </div>
                </div>

                <!-- Textarea -->
                <div class="control-group">
                    <label class="control-label" for="textarea">Descrição</label>
                    <div class="controls">                     
                        <textarea id="textarea" name="textarea">Descreva com detalhes qual o tipo de atendimento e projetos.</textarea>
                    </div>
                </div>

                <!-- Multiple Radios -->
                <div class="control-group">
                    <label class="control-label" for="radios">Causas (selecione uma ou mais)</label>
                    <div class="controls">
                        <label class="radio" for="radios-0">
                            <input type="radio" name="radios" id="radios-0" value="Capacitação Profissional" checked="checked">
                            Capacitação Profissional
                        </label>
                        <label class="radio" for="radios-1">
                            <input type="radio" name="radios" id="radios-1" value="Combate a Pobreza">
                            Combate a Pobreza
                        </label>
                        <label class="radio" for="radios-2">
                            <input type="radio" name="radios" id="radios-2" value="Consumo Consciente">
                            Consumo Consciente
                        </label>
                        <label class="radio" for="radios-3">
                            <input type="radio" name="radios" id="radios-3" value="Crianças e Jovens">
                            Crianças e Jovens
                        </label>
                        <label class="radio" for="radios-4">
                            <input type="radio" name="radios" id="radios-4" value="Cultura, Espore e Arte">
                            Cultura, Espore e Arte
                        </label>
                        <label class="radio" for="radios-5">
                            <input type="radio" name="radios" id="radios-5" value="Defesa dos Direitos">
                            Defesa dos Direitos
                        </label>
                        <label class="radio" for="radios-6">
                            <input type="radio" name="radios" id="radios-6" value="Educação">
                            Educação
                        </label>
                        <label class="radio" for="radios-7">
                            <input type="radio" name="radios" id="radios-7" value="Idosos">
                            Idosos
                        </label>
                        <label class="radio" for="radios-8">
                            <input type="radio" name="radios" id="radios-8" value="Meio Ambiente">
                            Meio Ambiente
                        </label>
                        <label class="radio" for="radios-9">
                            <input type="radio" name="radios" id="radios-9" value="Participação Cidadã">
                            Participação Cidadã
                        </label>
                        <label class="radio" for="radios-10">
                            <input type="radio" name="radios" id="radios-10" value="Proteção Animal">
                            Proteção Animal
                        </label>
                        <label class="radio" for="radios-11">
                            <input type="radio" name="radios" id="radios-11" value="Saúde">
                            Saúde
                        </label>
                        <label class="radio" for="radios-12">
                            <input type="radio" name="radios" id="radios-12" value="Pessoas com Deficiência">
                            Pessoas com Deficiência
                        </label>
                    </div>
                </div>

                <!-- Text input-->
                <div class="control-group">
                    <label class="control-label" for="textinput">Website</label>
                    <div class="controls">
                        <input id="textinput" name="textinput" type="text" placeholder="www.org.com.br" class="input-medium">

                    </div>
                </div>

                <!-- Prepended text-->
                <div class="control-group">
                    <label class="control-label" for="prependedtext">Facebook</label>
                    <div class="controls">
                        <div class="input-prepend">
                            <span class="add-on">facebook.com/</span>
                            <input id="prependedtext" name="prependedtext" class="input-small" placeholder="ong" type="text">
                        </div>

                    </div>
                </div>

                <!-- Text input-->
                <div class="control-group">
                    <label class="control-label" for="textinput">Nome Responsável da ONG</label>
                    <div class="controls">
                        <input id="textinput" name="textinput" type="text" placeholder="Nome" class="input-medium">

                    </div>
                </div>

                <!-- File Button --> 
                <div class="control-group">
                    <label class="control-label" for="filebutton">Logo da ONG</label>
                    <div class="controls">
                        <input id="filebutton" name="filebutton" class="input-file" type="file">
                    </div>
                </div>

            </fieldset>
        </form>
    </body>
</html>

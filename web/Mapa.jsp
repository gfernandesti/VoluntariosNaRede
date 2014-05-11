<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="Head.jsp" %>
        <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
        <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDRlimL0AqioJwVq8vQDpOgniIq2OS1Mag&amp;sensor=false"></script>
        <script type="text/javascript" src="mapa.js"></script>
    
    <body>
        <%@include file="Cabecalho.jsp" %>
        <form action="index.html">
            <fieldset>
                <legend>Google Maps</legend>   

                <div>
                    <label for="txtEndereco">Endereço:</label>
                    <input type="text" id="txtEndereco" name="txtEndereco" />
                </div>
                <div>
                    <input type="button" id="btnEndereco" name="btnEndereco" value="Mostrar no mapa" />
                </div>

                <div id="mapa" style="height: 500px; width: 500px">

                </div>

                <div>
                    <input type="submit" value="Enviar" name="btnEnviar" />
                </div>

                <input type="hidden" id="txtLatitude" name="txtLatitude" />
                <input type="hidden" id="txtLongitude" name="txtLongitude" />
            </fieldset>
        </form>
<%@ include file="rodape.jsp" %>
<%@ include file="ModalCadastrarONG.jsp" %>
<%@ include file="ModalCadastrarUsuario.jsp" %>
<%@ include file="ModalLogin.jsp" %>	
</body>
</html>
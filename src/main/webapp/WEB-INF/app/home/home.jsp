<%-- 
    Document   : home
    Created on : 14/12/2013, 06:36:18 PM
    Author     : SparKLes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenida a SparkClub</title>
        
        <!-- Incluye styles -->
        <%@include file="/public/header.jsp" %>
    </head>
    <body>
        <!-- Encabezado -->
        <%@include file="/public/encabezado.jsp" %>

        <div class="container">
            <h1>Hello World!</h1>
            <p>${mensaje}</p> <!-- Estoy imprimiendo un mensaje q m enviaron de algun lugar -->

            <hr/>

            <div class="container">
                <div class="row">
                    <form action="guardarDos" method="post">
                        <label>Nombres</label>
                        <input type="text" name="nombres"/>

                        <label>Apellidos</label>
                        <input type="text" name="apellidos"/>

                        <input type="submit"/>
                    </form>
                </div>
            </div>

        </div>

        <!-- pie de Pagina -->
        <%@include file="/public/pieDePagina.jsp" %>
        
        <%@include file="/public/footer.jsp" %>
    </body>
</html>

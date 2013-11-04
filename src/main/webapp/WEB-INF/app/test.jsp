<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SPRING MVC</title>
         <%@include file="/public/header.jsp" %>
    </head>
    <body>
        <h1>FIRST DAY SPRING MVC</h1>
         <p>${mensaje}</p>
         
         <hr/>
         
         <form  action="guardar" method="post">
             <label> Nombres </label>
             <input type="text" name="nombres"/>
             
             <label> Apellidos </label>
             <input type="text" name="apellidos"/>
             
             <input type="submit"/>
         </form>
    </body>
</html>

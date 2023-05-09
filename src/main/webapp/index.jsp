<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Libro"%>
<%
    List<Libro> lista = (List<Libro>)request.getAttribute("lista");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="stilo.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
        
    </head>
    <body>
       
    </div>
        
       <h1 style="text-align: center; color: white;">Listado de libros</h1>
        <div class="container">
        <div class="buttons">
            <a href="MainController?op=nuevo" class="btn btn-1">Nuevo</a>
        </div>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>ISBN</th>
                <th>Titulo</th>
                <th>Categoria</th>
                <th>Eliminar</th>
                <th>Editar</th>
            </tr>
            <c:forEach var="item" items="${lista}">
            <tr>
                <td>${item.id}</td>
                <td>${item.isbn}</td>
                <td>${item.titulo}</td>
                <td>${item.categoria}</td>
                <td><a href="MainController?op=eliminar&id=${item.id}" onclick="return(confirm('Estas seguro?'))">Eliminar</a></td>
                <td><a href="MainController?op=editar&id=${item.id}" onclick="return(confirm('Estas seguro?'))">Editar</a></td>
            </tr>
            </c:forEach>
        </table>
    </body>
</html>

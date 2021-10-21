<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : Iindex
    Created on : 21 oct. de 2021, 17:12:40
    Author     : Jhonny
--%>
<%@page import="com.emergentes.modelo.Producto" %>
<%@page import="java.util.ArrayList" %>
<%
    ArrayList<Producto> lista = (ArrayList<Producto>) request.getAttribute("lista");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de Productos</h1>
        <p><a>Nuevo Producto</a></p>
        <table border="1">
            
                <tr>
                    <th>Id</th>
                    <th>Descripcion</th>
                    <th>Precio</th><!-- comment -->
                    <th>Tipo</th><!-- comment -->

                </tr>
           

                <c:forEach var="item" items="${lista}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.descripcion}</td>
                        <td>${item.precio}</td><!-- comment -->
                        <td>${item.tipo}</td>
                        
                    </tr>
                </c:forEach>

          
        </table>

    </body>
</html>

<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.mvc_persona.Persona"%>
<%
    ArrayList<Persona> lista = (ArrayList<Persona>)session.getAttribute("listaper");
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro Olimpiada de programacion</h1>
        <a href="MainController?op=nuevo">Nuevo Registro</a>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Nombres</th>
                <th>Apellidos</th>
                <th>Categoria</th>
                <th>Confirmado</th>
                <th>Fecha</th>

                <th></th>    
                
            </tr>
            <%
                if (lista != null){
                    for (Persona item : lista){
                       
            %>
              <tr>
                <td><%= item.getId()%></th>
                <td><%= item.getNombre()%></th>
                <td><%= item.getApellidos()%></th>
                <td><%= item.getCategoria()%></th>
                <td><%= item.getEdad()%></th>
                <td><%= item.getFecha()%></th>

                <td> <a href="MainController?op=editar&id=<%= item.getId()%>">Editar</a></th>  
                <td> <a href="MainControler?op=eliminar&id<%= item.getId()%>"
                    onclick="return confirm ('esta seguro de elimnar?')">Eliminar</a></th>
                        <td></th> 
                
            </tr>
            <%
                }
                }
            
            %>
        </table>
    </body>
</html>

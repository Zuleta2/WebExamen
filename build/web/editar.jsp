<%@page import="com.emergentes.mvc_persona.Persona"%>
<%
Persona item = (Persona)request.getAttribute("miPersona");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%= (item.getId()==0)? "Nuevo registro":"Editar registro"%></h1>
        <form action="MainController" method="post">
            <input type="hidden" name="id" value="<%= item.getId()%>"/>
            <table>
                <tr>
                    <td> Nombre </td>
                    <td><input type="text" name="nombre" value="<%= item.getNombre()%>" /> </td>
                </tr>
                <tr>
                    <td> Apellidos </td>
                    <td><input type="text" name="apellidos" value="<%= item.getApellidos()%>" /> </td>
                </tr>
                <tr>
                <tr>
                    <td>categoria</td>
                    <td>
                        <select class="form-control" name="categoria" value="<%= item.getCategoria()%>" >
                                <option value="Junior">Junior</option>
                                <option value="Senior">Senior</option>
                        </select>
                    </td>
                </tr>
                <tr>
                   
                    <td>Confirmado</td>
                    <td>
                        <input type="checkbox" name="confirmado" value="<%= item.getEdad()%>" />
                    </td>
                </tr>
                   <tr>
                   
                    <td>Fecha Incripcion</td>
                    <td>
                        <input type="date" name="fecha" value="<%= item.getFecha()%>" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="Enviar" />
                    </td>
                </tr>
                
                
                
            </table>
            
            
            
        </form>
    </body>
</html>

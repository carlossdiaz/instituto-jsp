<%@ page language='java' contentType="text/html" %>

<%@page import="com.cdiapua1107.instituto.model.Estudiante"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%

    String dni = request.getParameter("dni");
    
    List<Estudiante> estudiantes = (List) session.getAttribute("estudiantes");

    Estudiante estudiante = new Estudiante();
    estudiante.setDni(dni);

    int index = estudiantes.indexOf(estudiante);

    estudiante = estudiantes.get(index);

%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>estudiante</title>
</head>
<body>

    <form action="modificarestudiante.jsp" method="post">
        <label for="dni">dni</label>
        <input type="text" name="dni" id="dni" value="<%= estudiante.getDni()%>">
        <label for="nombre">nombre</label>
        <input type="text" name="nombre" id="nombre" value="<%= estudiante.getNombre()%>">
        <label for="apellidos">apellidos</label>
        <input type="text" name="apellidos" id="apellidos" value="<%= estudiante.getApellidos()%>">
        <label for="direccion">direccion</label>
        <input type="text" name="direccion" id="direccion" value="<%= estudiante.getDireccion()%>">
        <label for="email">email</label>
        <input type="text" name="email" id="email" value="<%= estudiante.getEmail()%>">
        <input type="submit" value="Modificar">
    </form>
    
</body>
</html>
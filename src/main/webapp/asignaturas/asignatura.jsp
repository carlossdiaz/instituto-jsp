<%@ page language='java' contentType="text/html" %>

<%@page import="com.cdiapua1107.instituto.model.Asignatura"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%

    String codigo = request.getParameter("codigo");
    
    List<Asignatura> asignaturas = (List) session.getAttribute("asignaturas");

    Asignatura asignatura = new Asignatura();
    asignatura.setCodigo(codigo);

    int index = asignaturas.indexOf(asignatura);

    asignatura = asignaturas.get(index);

%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>asignatura</title>
</head>
<body>

    <form action="modificarasignatura.jsp" method="post">
        <label for="codigo">codigo</label>
        <input type="text" name="codigo" id="codigo" value="<%= asignatura.getCodigo()%>">
        <label for="descripcion">descripcion</label>
        <input type="text" name="descripcion" id="descripcion" value="<%= asignatura.getDescripcion()%>">
        <input type="submit" value="Modificar">
    </form>
    
</body>
</html>
<%@ page language='java' contentType="text/html" %>

<%@page import="com.cdiapua1107.instituto.model.Estudiante"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%
    String dni = request.getParameter("dni");
    String nombre = request.getParameter("nombre");
    String apellidos = request.getParameter("apellidos");
    String direccion = request.getParameter("direccion");
    String email = request.getParameter("email");

    Estudiante estudiante = new estudiante();
    estudiante.setDni(dni);
    estudiante.setNombre(nombre);
    estudiante.setApellidos(apellidos);
    estudiante.setDireccion(direccion);
    estudiante.setEmail(email);

    List<Estudiante> estudiantes = (List) session.getAttribute("estudiantes");

    estudiantes.add(estudiante);

    session.setAttribute("estudiantes", estudiantes);

    response.sendRedirect("estudiantes.jsp");

%>
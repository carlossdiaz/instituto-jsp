<%@ page language='java' contentType="text/html" %>

<%@page import="com.cdiapua1107.instituto.model.Estudiante"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%
    String dni = request.getParameter("dni");

    Estudiante estudiante = new Estudiante();
    estudiante.setDni(dni);


    List<estudiante> estudiantes = (List) session.getAttribute("estudiantes");

    estudiantes.remove(estudiante);

    session.setAttribute("estudiantes", estudiantes);

    response.sendRedirect("estudiantes.jsp");

%>

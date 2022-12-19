<%@ page language='java' contentType="text/html" %>

<%@page import="com.cdiapua1107.instituto.model.Asignatura"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%
    String codigo = request.getParameter("codigo");
    String descripcion = request.getParameter("descripcion");
    

    Asignatura asignatura = new Asignatura();
    asignatura.setCodigo(codigo);
    asignatura.setDescripcion(descripcion);
   

    List<Asignatura> asignaturas = (List) session.getAttribute("asignaturas");

    asignaturas.add(asignatura);

    session.setAttribute("asignaturas", asignaturas);

    response.sendRedirect("asignaturas.jsp");

%>
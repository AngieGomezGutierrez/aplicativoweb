<%-- 
    Document   : listComputers
    Created on : 06-sep-2024, 19:17:04
    Author     : angie
--%>

<%@ page import="java.util.List" %>
<%@ page import="mantenimientoEquipos.Computer" %>
<%@ page import="mantenimientoEquipos.ComputerService" %>

<link rel="stylesheet" type="text/css" href="css/styles.css">

<html>
<head>
    <title>Lista de Equipos</title>
</head>
<body>
    <h1>Lista de Equipos</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Acciones</th>
        </tr>
        <%
            ComputerService service = new ComputerService();
            List<Computer> computers = service.getAllComputers();
            for (Computer computer : computers) {
        %>
        <tr>
            <td><%= computer.getId() %></td>
            <td><%= computer.getName() %></td>
            <td>
                <a href="deleteComputer?id=<%= computer.getId() %>">Eliminar</a>
            </td>
        </tr>
        <% } %>
    </table>
    <a href="createComputer.jsp">Agregar Nuevo Equipo</a>
</body>
</html>

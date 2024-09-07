<%-- 
    Document   : createComputer
    Created on : 06-sep-2024, 19:18:48
    Author     : angie
--%>

<link rel="stylesheet" type="text/css" href="css/styles.css">


<html>
<head>
    <title>Agregar Nuevo Equipo</title>
</head>
<body>
    <h1>Agregar Nuevo Equipo</h1>
    <form action="createComputerServlet" method="post">
        <label for="name">Nombre:</label>
        <input type="text" id="name" name="name" required>
        <input type="submit" value="Agregar">
    </form>
</body>
</html>

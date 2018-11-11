<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
        <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
            <title>Registracion</title>
        </head>
        <body>
            <form:form id="regForm" modelAttribute="user" action="registerProcess" method="post">
                <table align="center">
                     <tr>
                        <td>
                            <form:label path="id">id</form:label>
                        </td>
                        <td>
                            <form:input path="id" name="id" id="id" />
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <form:label path="nombre">nombre</form:label>
                        </td>
                        <td>
                            <form:input path="nombre" name="nombre" id="nombre" />
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <form:label path="apellido">apellido</form:label>
                        </td>
                        <td>
                            <form:input path="apellido" name="apellido" id="apellido" />
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <form:label path="cargo">cargo</form:label>
                        </td>
                        <td>
                            <form:input path="cargo" name="cargo" id="cargo" />
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <form:label path="telefono">telefono</form:label>
                        </td>
                        <td>
                            <form:input path="telefono" name="telefono" id="telefono" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="username">username</form:label>
                        </td>
                        <td>
                            <form:input path="username" name="username" id="username" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="password">password</form:label>
                        </td>
                        <td>
                            <form:password path="password" name="password" id="password" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="rol">rol</form:label>
                        </td>
                        <td>
                            <form:input path="rol" name="rol" id="rol" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="direccion">direccion</form:label>
                        </td>
                        <td>
                            <form:input path="direccion" name="direccion" id="direccion" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="departamento">departamento</form:label>
                        </td>
                        <td>
                            <form:input path="departamento" name="departamento" id="departamento" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="estado">estado</form:label>
                        </td>
                        <td>
                            <form:input path="estado" name="estado" id="estado" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="nacimiento">nacimiento</form:label>
                        </td>
                        <td>
                            <form:input path="nacimiento" name="nacimiento" id="nacimiento" />
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <form:button id="registrar" name="registrar">Registrar</form:button>
                        </td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td></td>
                        <td><a href="home.jsp">Home</a>
                        </td>
                    </tr>
                </table>
            </form:form>
        </body>
        </html>
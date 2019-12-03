<%--
  Created by IntelliJ IDEA.
  User: Zhenming
  Date: 2019-11-29
  Time: 14:03
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Form</title>
    <p>Crear usuario</p>
</head>
<body>
<g:form controller="App" action="guardarUsuario">
    <label>Username</label><br/>
    <g:textField name="username"/><br/>
    <label>Password </label><br/>
    <g:passwordField name="password"/><br/>
    <label>Email: </label><br/>
    <g:textField name="email"/><br/>
    <g:actionSubmit value="guardarUsuario"/>
</g:form>
</body>
</html>
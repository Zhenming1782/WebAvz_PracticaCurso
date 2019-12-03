<%--
  Created by IntelliJ IDEA.
  User: Zhenming
  Date: 2019-11-29
  Time: 13:43
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Form</title>
    <p>Valoración del 1 al 5, donde 5 es el maximo:</p>
</head>
<body>
<g:form controller="App" action="save">
    <label>Las charlas donde usted participó cumplieron con sus expectativas? </label><br/>
    <g:textField name="resp1"/><br/>
    <label>Los expositores mostraron tener dominio del tema? </label><br/>
    <g:textField name="resp2"/><br/>
    <label>Las instalaciones del evento fueron confortables para usted?. </label><br/>
    <g:textField name="resp3"/><br/>
    <label>Tiene algún comentario para los organizadores?</label><br/>
    <g:textField name="resp4"/><br/>
    <g:actionSubmit value="Save"/>
</g:form>
</body>
</html>
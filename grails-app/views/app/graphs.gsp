<%--
  Created by IntelliJ IDEA.
  User: Zhenming
  Date: 2019-12-02
  Time: 20:21
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>

    <!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        // Load the Visualization API and the corechart package.
        google.charts.load('current', {'packages':['corechart']});
        // Set a callback to run when the Google Visualization API is loaded.
        google.charts.setOnLoadCallback(drawChart);
        // Callback that creates and populates a data table,
        // instantiates the pie chart, passes in the data and
        // draws it.
        function drawChart() {
            <g:each in="${forms}" var="todo" status="i">
            // Create the data table.
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Calificacion');
            data.addColumn('number', 'Calificacion');
            data.addRows([
                ['Las charlas donde usted participó cumplieron con sus expectativas?', ${forms.resp1.sum()}],
                ['Los expositores mostraron tener dominio del tema?', ${forms.resp2.sum()}],
                ['Las instalaciones del evento fueron confortables para usted?', ${forms.resp3.sum()}],
            ]);
            </g:each>
            // Set chart options
            var options = {'title':'Mayor porcentaje de la encuesta para el Barcamp',
                'width':1200,
                'height':600};
            // Instantiate and draw our chart, passing in some options.
            var chart = new google.visualization.ColumnChart(document.getElementById('chart_pregunta1'));
            chart.draw(data, options);
        }
    </script>
    <title>Graficos</title>
</head>

<body>
<!--Div that will hold the pie chart-->
<div id="chart_pregunta1"></div>
</body>
</html>
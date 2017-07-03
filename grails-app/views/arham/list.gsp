<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
    <table>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
        </tr>
        <g:each in="${userdata}">
            <tr>
                <td>${it.firstName}</td>
                <td>${it.lastName}</td>
            </tr>
        </g:each>
    </table>

</body>
</html>
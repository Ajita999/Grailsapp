<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
    <g:each in="userdata">
        <p>First name : ${it.firstName}</p>
        <p>Last name : ${it.lastName}</p>
    </g:each>
</body>
</html>
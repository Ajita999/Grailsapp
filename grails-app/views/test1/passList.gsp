<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
<h2>Personal Information</h2>
    <ol>
        <g:each in="${usernames}" var="name">
            <li>${name}</li>
        </g:each>
    </ol>
</body>
</html>
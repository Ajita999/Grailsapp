<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
    <g:form action="save">
        <label>First name:</label>
        <g:textField name="firstName"/>
        <label>Last name:</label>
        <g:textField name="lastName"/>
        <g:submitButton name="save" value="save"/>
        <g:link action="list">View Details</g:link>
    </g:form>
</body>
</html>
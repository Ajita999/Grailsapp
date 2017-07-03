<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
<h2>Personal Information</h2>
<g:form name="f1" action="save">
    <label>First name:</label>
    <g:textField name="firstName"/>
    <label>Last name:</label>
    <g:textField name="lastName"/>
    <label>Age:</label>
    <g:textField name="age"/>

</g:form>

</body>
</html>
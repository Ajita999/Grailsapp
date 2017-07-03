<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
    <h3>Form 1</h3>
    <g:form name="f1" controller="user" action="save">
        <label>First Name:</label>
        <g:textField name="firstName"/><br/><br/>
        <label>Last Name:</label>
        <g:textField name="lastName"/><br/><br/>
        <g:submitButton name="" value="Submit"/>
    </g:form>
</body>
</html>
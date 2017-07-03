<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
<h2>Personal Information</h2>
<table>
    <tr>
        <th>First name</th>
        <th>Last name</th>
        <th>Age</th>
    </tr>
    <tr>
        <th>${user.firstName}</th>
        <th>${user.lastName}</th>
        <th>${user.age}</th>
    </tr>
</table>

</body>
</html>
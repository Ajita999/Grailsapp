<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
<h2>Personal Information</h2>
<g:if test="${age>18}">
    <label>First name:</label>${firstName}<br/>
    <label>Last name:</label>${lastName}<br/>
    <label>Age:</label>${age}
</g:if>
<g:else>
    Under Age!!
</g:else>

</body>
</html>
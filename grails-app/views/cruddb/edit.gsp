<%--
  Created by IntelliJ IDEA.
  User: ajita
  Date: 30/6/17
  Time: 2:34 PM
--%>

<html>
<head>
    <meta name="layout" content="mylayout"/>
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-md-4">
            <h2>Edit</h2>
            <div class="form-group">
                <g:form action="update">
                    <g:each in="${list}">
                        <g:if test="${it.id == temp}">
                            <label>First name:</label>
                            <input type="text" class="form-control" name="firstName" value="${it.firstName}" autofocus required/>
                            <label>Last name:</label>
                            <input type="text" class="form-control" name="lastName" value="${it.lastName}" autofocus required/>
                            <label>Phone Number:</label>
                            <input type="text" class="form-control" name="phoneNumber" value="${it.phoneNumber}"autofocus required/>
                        </g:if>
                    </g:each><br>
                    <g:submitButton class="btn btn-primary" name="save" value="Update Contact"/>&nbsp;&nbsp;&nbsp;
                    <g:link class="btn btn-danger btn-default" action="index">Cancel</g:link>
                </g:form>
            </div>
        </div>
    </div>
</body>
</html>
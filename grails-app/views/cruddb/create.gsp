<%--
  Created by IntelliJ IDEA.
  User: ajita
  Date: 30/6/17
  Time: 1:52 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
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
                <h2>Create</h2>
                <div class="form-group">
                    <g:form action="save">
                        <label>First name:</label>
                        <input type="text" class="form-control" name="firstName" autofocus required/>
                        <label>Last name:</label>
                        <input type="text" class="form-control" name="lastName" autofocus required/>
                        <label>Phone Number:</label>
                        <input type="text" class="form-control" name="phoneNumber" autofocus required/><br>
                        <g:submitButton class="btn btn-primary" name="save" value="Save Contact"/>&nbsp;&nbsp;&nbsp;
                        <g:link class="btn btn-danger btn-default" action="index">Back</g:link>
                    </g:form>
            </div>
        </div>
    </div>
</body>
</html>
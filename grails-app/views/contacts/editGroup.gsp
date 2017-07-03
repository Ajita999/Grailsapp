<%--
  Created by IntelliJ IDEA.
  User: ajita
  Date: 30/6/17
  Time: 11:02 AM
--%>

<!doctype html>
<html>
<head>
    <title>Edit Group</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
    <style>
    .contact {
        height: 700px;
        width: 700px;
        position: absolute;
        top: 0px;
        left: 300px;
    }
    .align {
        position: absolute;
        left: 560px;
        top: 220px;
    }
    </style>
</head>
<body>
<div class="contact">
    <asset:image src="editgroup.png"/>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-2 align">
            <div class="form-group">
                <g:form action="updateGroup">
                    <g:each in="${group}">
                            <g:if test="${it.id == userid}">
                                <label>Group name:</label>
                                <input type="text" class="form-control" name="groupName" value="${it.name}" autofocus required/><br/>
                                <g:submitButton class="btn btn-primary" name="save" value="Save Group"/>
                                <g:link class="btn btn-danger btn-default" action="printGroups">Cancel</g:link>
                            </g:if>
                    </g:each>
                </g:form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
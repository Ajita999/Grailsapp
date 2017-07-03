<%--
  Created by IntelliJ IDEA.
  User: ajita
  Date: 28/6/17
  Time: 12:52 AM
--%>

<html>
<head>
    <title>Create Group</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
    <style>
    .group {
        height: 700px;
        width: 700px;
        position: absolute;
        top: 0px;
        left: 300px;
    }
    .align {
        position: absolute;
        left: 560px;
        top: 270px;
    }
    </style>
</head>

<body>
<div class="group">
    <asset:image src="Group.png"/>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-2 align">
            <div class="form-group">
                <g:form action= "saveGroup">
                    <label>Group name:</label>
                    <input type="text" class="form-control" name="groupName" autofocus required/><br>
                    <g:submitButton class="btn btn-primary" name="save" value="Create Group"/>&nbsp;&nbsp;&nbsp;
                    <g:link class="btn btn-danger btn-default" action="show">Back</g:link>
                </g:form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
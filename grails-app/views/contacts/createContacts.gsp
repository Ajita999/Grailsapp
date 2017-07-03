<!doctype html>
<html>
<head>
    <title>Create a Contact</title>
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
    <asset:image src="contacts.png"/>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-2 align">
            <div class="form-group">
                <g:form action="saveContact">
                    <label>First name:</label>
                    <input type="text" class="form-control" name="firstName" autofocus required/>
                    <label>Last name:</label>
                    <input type="text" class="form-control" name="lastName" autofocus required/>
                    <label>Phone Number:</label>
                    <input type="text" class="form-control" name="phoneNumber" autofocus required/>
                    <label for="sel1">Group name:</label>
                    <select class="form-control required" id="sel1" name="groupName">
                        <g:each in="${group}">
                            <option>${it.name}</option>
                        </g:each>
                    </select><br>
                    <g:submitButton class="btn btn-primary" name="save" value="Save Contact"/>&nbsp;&nbsp;&nbsp;
                    <g:link class="btn btn-danger btn-default" action="show">Back</g:link>
                </g:form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
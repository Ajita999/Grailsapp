<%--
  Created by IntelliJ IDEA.
  User: ajita
  Date: 30/6/17
  Time: 1:41 PM
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
        <div class="col-md-12">
            <h2>Contacts</h2>
            <g:if test="${flash.create}">
                <div class="alert alert-success">${flash.create}</div>
            </g:if>
            <g:if test="${flash.update}">
                <div class="alert alert-success">${flash.update}</div>
            </g:if>
            <table class="table table-hover">
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Phone Number</th>
                    <th>Action</th>
                </tr>
                <g:each in="${list}">
                    <tr>
                        <td>${it.firstName}</td>
                        <td>${it.lastName}</td>
                        <td>${it.phoneNumber}</td>
                        <td><g:link action="edit" params="[eyed: it.id]"><button class="btn btn-primary">Edit</button> </g:link>
                            <g:link action="delete" params="[eyed: it.id]"><button class="btn btn-danger">Delete</button> </g:link>
                        </td>
                    </tr>
                </g:each>
            </table>
        </div>
    </div>
</div>

</body>
</html>
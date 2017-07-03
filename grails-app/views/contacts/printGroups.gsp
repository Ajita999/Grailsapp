<%--
  Created by IntelliJ IDEA.
  User: ajita
  Date: 28/6/17
  Time: 1:08 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Display Groups</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>
        var layer = 2;
        function display(id) {
            document.getElementById(id).style.visibility = "visible";
            layer++;
            document.getElementById(id).style.zIndex = layer;
        }
    </script>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
    <style>
    .phonebook-backGround {
        height: 700px;
        width: 700px;
        position: absolute;
        left: 180px;
    }
    .align {
        position: absolute;
        left: 470px;
        top: 170px;
    }
    .contact {
        visibility: hidden;
        z-index: 0;
        position: absolute;
        background-color: #E8FFF6;
        height: 400px;
        width: 350px;
    }
    .table {
        padding: 1px;
    }
    th {
        font-size: 12px;
    }
    td {
        font-size: 11px;
    }
    .groupCarousel {
        width: 300px;
        z-index: 999;
        position: absolute;
        top: 250px;
        left: 740px;
        transform: rotate(90deg);
    }
    .groupmark {
        width: 50px;
        height: 36px;
        background-color: #B97A8C;
        display: inline-block;
        padding-top: 10px;
        color: white;
        font: Ubuntu;
        cursor: pointer;
        font-weight: bold;
    }
    .groupmark:hover {
        background-color: #74D39B;
        color: #122b40;
    }
    .back {
        position: absolute;
        top: 500px;
        left: 872px;
        height: 40px;
        width: 80px;
        background-color: #74D39B;
        color: #122b40;
        padding-top: 10px;
        text-align: center;
        font-weight: bold;
    }
    .back:hover {
        background-color: #B97A8C;
    }
    .carousel-control.left, .carousel-control.right {
        background-image:none !important;
        filter:none !important;
    }

</style>
</head>

<body>
  <div class="phonebook-backGround">
    <asset:image src="my-phonebook.png"/>
    </div>
<div class="container">
    <div class="row">
        <div class="col-md-4 align">
            <g:each in="${group}">
                    <div id="${it.id}" class="contact" style="visibility: visible">

                        <table class="table">
                            <tr>
                                <th colspan="3">${it.name}</th>
                                <th colspan="2">
                                    <g:link action="editGroupname" params="[idd: it.id]"> <asset:image src="edit.png"/></g:link>&nbsp;
                                    <g:link action="deleteGroup" params="[idd: it.id]"><asset:image src="remove.png"/></g:link>
                                </th>
                            </tr>
                            <tr style="background-color: #afd9ee">
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Phone Number</th>
                                <th colspan="2">Action</th>
                            </tr>
                            <g:each in="${it.Contacts}" >
                                <tr>
                                    <td>${it.firstName}</td>
                                    <td>${it.lastName}</td>
                                    <td>${it.phoneNumber}</td>
                                    <td><g:link action="changeContact" params="[idy: it.id]"> <asset:image src="edit.png"/></g:link> </td>
                                    <td><g:link action="deleteContact" params="[idy: it.id]"><asset:image src="remove.png"/></g:link> </td>
                                </tr>
                            </g:each>
                        </table>
                    </div>
            </g:each>
        </div>
    </div>
</div>
<div>

</div>
<div class="groupCarousel container"><center>
    <g:if test="${size<4}">
        <g:each in="${group}">
           <div class="groupmark" onclick="display(${it.id})">${it.name}</div>
        </g:each>
    </g:if>
    <g:else>
        <div id="groupCarousel" class="carousel slide">
            <div class="carousel-inner">
                <g:each in="${broken}">
                    <g:if test="${it == first}">
                        <div class="item active">
                            <div class="row">
                                <g:each in="${it}">
                                    <div class="groupmark" onclick="display(${it.id})">${it.name}</div>
                                </g:each>
                            </div>
                        </div>
                    </g:if>
                    <g:else>
                        <div class="item">
                            <div class="row">
                                <g:each in="${it}">
                                    <div class="groupmark" onclick="display(${it.id})">${it.name}</div>
                                </g:each>
                            </div>
                        </div>
                    </g:else>
                </g:each>
            </div>
            <a class="left carousel-control" href="#groupCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#groupCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a></center>
        </div>
    </g:else>
</div>
<g:link action="show">
    <div class="back">
        Back
    </div>
</g:link>
</body>
</html>
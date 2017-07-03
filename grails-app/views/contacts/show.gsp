<!doctype html>
<html>
<head>

    <title>My Phonebook</title>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
    <style>
        .phonebook-background{
            height: 700px;
            width: 700px;
            position: relative;
            margin: 0 auto;
        }
        .phonebook {
            height: 407px;
            width: 326px;
            position: absolute;
            top: 135px;
            left: 475px;
            z-index: 3;
        }
        .createContact {
            height: 50px;
            width: 200px;
            position: absolute;
            top: 180px;
            left: 640px;
            background-color: #B97A8C;
            text-align: center;
            vertical-align: middle;
            transition: left 1.5s;
            padding-top: 5px;
            padding-right: 5px;
        }
        .createContact:hover {
            left: 760px;
        }
        .createGroup {
            height: 50px;
            width: 200px;
            position: absolute;
            top: 250px;
            left: 640px;
            background-color: #74D39B;
            text-align: center;
            transition: left 1.5s;
            padding-top: 5px;
            padding-right: 5px;
        }
        .createGroup:hover {
            left: 760px;
        }
        .printGroups {
            height: 50px;
            width: 200px;
            position: absolute;
            top: 320px;
            left: 640px;
            background-color: #6EBDFF;
            text-align: center;
            transition: left 1.5s;
            padding-top: 5px;
            padding-right: 5px;
        }
        .printGroups:hover {
            left: 760px;
        }
        a {
            text-decoration: none;
            color: #E8FFF6;
            font-family: Ubuntu;
        }
        .contactIcon {
            position: absolute;
            left: 165px;
            top: 4px;
        }
        .groupIcon {
            position: absolute;
            left: 163px;
            top: 4px;
        }
        .printIcon {
            position: absolute;
            left: 164px;
            top: 4px;
        }
    </style>
</head>
<body>
<div class="phonebook-background">
    <asset:image src="phonebook-background.png"/>
</div>
<div class="phonebook">
    <asset:image src="phonebook-background1.png"/>
</div>
<g:link action="createContacts">
    <div class="createContact">
        <div style="position: relative; margin-top: 13px">
            &nbsp; Create Contacts
        </div>
        <div class="contactIcon">
            <asset:image src="create-contact.png"/>
        </div>
    </div>
</g:link>
<g:link action="createGroup">
    <div class="createGroup">
        <div style="position: relative; margin-top: 13px">
            &nbsp;&nbsp;&nbsp; Create Groups
        </div>
        <div class="groupIcon">
            <asset:image src="create-group.png"/>
        </div>
    </div>
</g:link>
<g:link action="printGroups">
    <div class="printGroups">
        <div style="position: relative; margin-top: 13px">
            &nbsp;&nbsp; Display Groups
        </div>
        <div class="printIcon">
            <asset:image src="print.png"/>
        </div>
    </div>
</g:link>
</body>
</html>
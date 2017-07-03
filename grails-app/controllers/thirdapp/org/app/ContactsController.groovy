package thirdapp.org.app

class ContactsController {
    static defaultAction = "show"
    def user = new SaveDetails()
    def userGroups = new UserGroups()
    def tempforcontact
    def tempforgroup
    def groupId = 0
    def contactId = 0
    def show() { }

    def createContacts() {
        user.save()
        [group: user.Groups]
    }

    def saveContact() {
        user.Groups.each {
            if(it.name == params.groupName) {
                Map userdata = [:]
                userdata.firstName = params.firstName
                userdata.lastName = params.lastName
                userdata.phoneNumber = params.phoneNumber
                Contact contactInstance = new  Contact(userdata)
                contactId++
                contactInstance.id = contactId
                println contactInstance.id
                it.Contacts << contactInstance
                redirect(action: "createContacts")
            }
        }
    }

    def createGroup() { }

    def saveGroup() {
        Group groupInstance = new Group()
        groupInstance.name = params.groupName
        groupId++
        groupInstance.id = groupId
        user.Groups << groupInstance
        user.save()
        redirect (action: "show")
    }

    def groupAlreadyCreated() { }

    def printGroups() {
        def size = user.Groups.size()
        List broken = user.Groups.collate(3)
        List first = broken.first()
        [group: user.Groups, first: first, size: size, broken: broken]
    }
    def deleteContact() {
        def id
        user.Groups.each {
            it.Contacts.each {
                if (it.id == params.idy){
                    id = it
                }
            }
            it.Contacts = it.Contacts.minus(id)
            user.save()
        }
        redirect(action: "printGroups")
    }
    def changeContact() {
        tempforcontact = params.idy
        redirect( action: "editContact")
    }
    def editContact() {
        [group: user.Groups, userid: tempforcontact]
    }
    def updateContact() {
        user.Groups.each {
            it.Contacts.each {
                if(it.id == tempforcontact) {
                    it.firstName = params.firstName
                    it.lastName = params.lastName
                    it.phoneNumber = params.phoneNumber
                    user.save()
                    redirect(action: "printGroups")
                }
            }
        }
    }
    def deleteGroup() {
        def id
        user.Groups.each {
            tempforgroup = it.id.toString()
            if (tempforgroup == params.idd) {
                id = it
            }
        }
        user.Groups = user.Groups.minus(id)
        user.save()
        redirect (action: "printGroups")
    }
    def editGroupname() {
        tempforgroup = params.idd
        redirect (action: "editGroup")
    }
    def editGroup() {
        def id = tempforgroup.toInteger()
        [group: user.Groups, userid: id]
    }
    def updateGroup() {
        user.Groups.each {
            tempforgroup = tempforgroup.toInteger()
            if (it.id == tempforgroup) {
                it.name = params.groupName
                user.save()
                redirect (action: "printGroups")
            }
        }
    }
}

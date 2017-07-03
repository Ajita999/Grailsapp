package thirdapp.org

import thirdapp.org.app.Contact

class CruddbController {
    def contact = new ContactDetails()
    def id = 0
    def index() {
        [list: contact.contactInstances]
    }
    def create() {

    }
    def save() {
        Map userdata = [:]
        userdata.firstName = params.firstName
        userdata.lastName = params.lastName
        userdata.phoneNumber= params.phoneNumber
        Contact contactObject = new Contact(userdata)
        id++
        contactObject.id = id
        println contactObject.id
        contact.contactInstances << contactObject
        contact.save()
        flash.create = "Contact Created!!"
        redirect(action: "index")
    }
    def temp
    def edit() {
        temp = params.eyed

        [list: contact.contactInstances, temp: temp]

    }
    def update() {
        contact.contactInstances.each {
            if (it.id == temp) {
                it.firstName = params.firstName
                it.lastName = params.lastName
                it.phoneNumber = params.phoneNumber
            }
        }
        contact.save()
        redirect(action: "index")
    }
    def delete() {
        def idy
        contact.contactInstances.each {
            if (it.id == params.eyed) {
              idy = it
            }
        }
        contact.contactInstances = contact.contactInstances.minus(idy)
        contact.save()
        redirect(action: "index")
    }
}

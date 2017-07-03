package thirdapp.org.app2

class ArhamController {

    List users = []
    def create() {
    }
    def save() {
        Map userdata = [:]
        userdata.firstName = params.firstName
        userdata.lastName = params.lastName
        Userdetails user = new Userdetails(userdata)
        users << user
        println users.firstName
        redirect (action: "create")
    }
    def list() {
        [userdata: users]
    }
}

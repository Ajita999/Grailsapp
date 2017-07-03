package thirdapp.org.app

class UserController {

    def index() {
        render( view: "active.gsp")
    }
    def active() {

    }
    def save() {
        println params
        Userdata userdata = new Userdata(params)
        userdata.display()
    }
}

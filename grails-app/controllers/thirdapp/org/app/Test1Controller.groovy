package thirdapp.org.app

class Test1Controller {

    def index() {
        String myFirstName = "Richie"
        String myLastName = "Rich"

        [firstName: myFirstName, lastName: myLastName]
    }

    def condition() {

        String myFirstName = "Richie"
        String myLastName = "Rich"
        int age = 20
        [firstName: myFirstName, lastName: myLastName, age: age]
    }

    def passMap() {

        Map userdata = [firstName: "Richie", lastName: "Rich", age: 20]
        [user: userdata]
    }

    def passList() {
        List names = ["johnny", "Bunny", "Whatever", "Bla bla"]
        [usernames: names]
    }
}

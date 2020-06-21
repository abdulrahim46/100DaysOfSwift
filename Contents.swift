import UIKit

var str = "Hello, playground"



//closures
//One of the most common reasons for closures in Swift is to store functionality

//Running some code after a delay.
//Running some code after an animation has finished.
//Running some code when a download has finished.
//Running some code when a user has selected an option from your menu.


var fun = {
    print("closuresss!!")
}
fun()


var fund = { (po:String) in
    print("closuresss!!\(po)")
}
fund("okokok then")

var funDriving = { (pk: String) -> String in
    return "i'm going to london \(pk)"
}

funDriving("In Sha' Allah")

func done(action: () -> Void){
    print("i'm getting better at this")
    action()
    print("i'm here")
}

done{
    print("okokokokokokokokokokokokokokokokok")
}


func goOnVacation(to destination: String, _ activities: () -> Void) {
    print("Packing bags...")
    print("Getting on plane to \(destination)...")
    activities()
    print("Time to go home!")
}
goOnVacation(to: "Mexico") {
    print("Go sightseeing")
    print("Relax in sun")
    print("Go hiking")
}


func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel {
    "I'm going to \($0) in my car"
}

func travel2(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel2{
    "im goinf \($0) in \($1)"
}


func trc() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}
trc()("starbucks")
trc()("starbucks")
trc()("starbucks")
trc()("starbucks")

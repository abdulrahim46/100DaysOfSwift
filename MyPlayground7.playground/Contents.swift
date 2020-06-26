import UIKit

var str = "Hello, playground"


//Structs


struct Sport {
    var name: String
    var isOlmpicStrot: Bool
    
    var isOlympicStatus: String {
        if isOlmpicStrot {
            return "\(name) is valid sport"
        } else {
            return "\(name) not valid sportz"
        }
    }
    
}

let chess = Sport(name: "chess", isOlmpicStrot: true)
print(chess.isOlympicStatus)
//var tenis = Sport(name: "okay")

//print(tenis.name)

//tenis.name = "list it down "

//tenis.name


//Property Observers
//Property observers let you run code before or after any property changes.

struct Progress {
    var task: String
    var amount: Int {
         didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var prog = Progress(task: "Loading", amount: 0)
prog.amount = 30
prog.amount = 50
prog.amount = 80
prog.amount = 100

struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()

//When you want to change a property inside a method, you need to mark it using the mutating keyword

struct Person {
    var name:String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}
var per = Person(name: "me")
per.makeAnonymous()
print(per.name)

//Strings are struct!!!!
//We’ve used lots of strings so far, and it turns out they are structs – they have their own methods and properties we can use to query and manipulate the string.



let string = "Do or do not, there is no try."

print(string.count)
print(string.hasPrefix("Do"))
print(string.hasSuffix("try"))
print(string.endIndex)
print(string.uppercased())
print(string.sorted())


//Arrays properties

//Arrays are also structs, which means they too have their own methods and properties we can use to query and manipulate the array.

var toys = ["woody","buzz"]
toys.count
toys.capacity
toys.append("hello")
toys.append(contentsOf: ["abc","def"])
toys.sorted()
toys.remove(at: 1)

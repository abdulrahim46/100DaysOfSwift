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
//In many other languages, strings aren’t structs – they are just a sequence of letters, and nothing more. Swift takes a different approach: strings are structs, and in fact come packed with functionality.

//Almost all of Swift’s core types are implemented as structs, including strings, integers, arrays, dictionaries, and even Booleans. This isn’t an accident: structs are simple, fast, and efficient in Swift, which means we can create and destroy them as much as we need without worrying too much about performance.



let string = "Do or do not, there is no try."

print(string.count)
print(string.hasPrefix("Do"))
print(string.hasSuffix("try"))
print(string.endIndex)
print(string.uppercased())
print(string.sorted())


//Arrays properties

//Arrays are also structs, which means they too have their own methods and properties we can use to query and manipulate the array.
// you can't remove items from constant array e.g :- let arr = []

var toys = ["woody","buzz"]
var to = [1,2,3,4]
toys.count
toys.capacity
toys.append("hello")
toys.append(contentsOf: ["abc","def"])
toys.sorted()
toys.remove(at: 1)
toys.insert("bye", at: 4)
to.insert(2, at: 0)

//US flag is made up of the characters “Regional indicator symbol letter U” and “Regional indicator symbol letter BS, which, when put together, are interpreted as the United States flag.
var myString = ""
if myString.isEmpty {
    // code
    print("YEs")
}


//Marking methods as mutating will stop the method from being called on constant structs, even if the method itself doesn’t actually change any properties. If you say it changes stuff, Swift believes you!
//A method that is not marked as mutating cannot call a mutating function – you must mark them both as mutating.


//Honestly, the only real difference is that methods belong to a type, such as structs, enums, and classes, whereas functions do not.

// struct part 2

//Initializers

struct User {
    var userName:String
    
    init() {
        userName = "ARC"
        print("here i'm")
    }
}
var u = User()
u.userName = "SHEFA"

struct Employee {
    var name: String
    var yearsActive = 0
}

extension Employee {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
}

// creating a named employee now works
let roslin = Employee(name: "Laura Roslin")

// as does creating an anonymous employee
let anon = Employee()



//Lazy properties
//Swift’s lazy properties let us delay the creation of a property until it’s actually used, which makes them like a computed property.
struct FamilyTree {
    init() {
        print("creating a tree...")
    }
}

struct person {
    var name:String
   lazy var family = FamilyTree()
    init(name:String) {
        self.name = name
    }
    
}
var ed = person(name: "ED")
ed.family

struct Student {
   private var name: String
    static var classSize = 0
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let er = Student(name: "Ed")
let taylor = Student(name: "Taylor")
print(Student.classSize)

//
//You can create your own types using structures, which can have their own properties and methods.
//You can use stored properties or use computed properties to calculate values on the fly.
//If you want to change a property inside a method, you must mark it as mutating.
//Initializers are special methods that create structs. You get a memberwise initializer by default, but if you create your own you must give all properties a value.
//Use the self constant to refer to the current instance of a struct inside a method.
//The lazy keyword tells Swift to create properties only when they are first used.
//You can share properties and methods across all instances of a struct using the static keyword.
//Access control lets you restrict what code can use properties and methods.








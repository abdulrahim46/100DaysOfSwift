import UIKit

var str = "Hello, playground"


// Protocols
//Protocols are a way of describing what properties and methods something must have.

protocol Identical {
    var id: String { get set }
}

struct User:Identical {
    var id: String
}

func displayId(thing: Identical) {
    print("My id is \(thing.id)")
}

//protocol inheritence
//One protocol can inherit from another in a process known as protocol inheritance. Unlike with classes, you can inherit from multiple protocols at the same time before you add your own customizations on top.


protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}
protocol employee: Payable, NeedsTraining, HasVacation {
}

//Extensions

//Extensions allow you to add methods to existing types, to make them do things they weren’t originally designed to do.

extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 9
number.squared()

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

number.isEven
//protocol extension

//Protocols let you describe what methods something should have, but don’t provide the code inside. Extensions let you provide the code inside your methods, but only affect one data type – you can’t add the method to lots of types at the same time.
//
//Protocol extensions solve both those problems: they are like regular extensions, except rather than extending a specific type like Int you extend a whole protocol so that all conforming types get your changes.

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summmarize() {
        print("there are \(count) of us:")
        
        for name in self {
            print(name)
        }
    }
}
pythons.summmarize()
beatles.summmarize()

// protocol oritented programming

protocol Identifiable {
    var id: String { get set }
    func identify()
}
//Protocol extensions can provide default implementations for our own protocol methods. This makes it easy for types to conform to a protocol, and allows a technique called “protocol-oriented programming” – crafting your code around protocols and protocol extensions.

extension Identifiable {
    func identify() {
        print("my id is \(id)")
    }
}

struct User1:Identifiable {
    var id: String
}

let tred = User1(id: "ARC")
tred.identify()


//
//Protocols describe what methods and properties a conforming type must have, but don’t provide the implementations of those methods.
//You can build protocols on top of other protocols, similar to classes.
//Extensions let you add methods and computed properties to specific types such as Int.
//Protocol extensions let you add methods and computed properties to protocols.
//Protocol-oriented programming is the practice of designing your app architecture as a series of protocols, then using protocol extensions to provide default method implementations.


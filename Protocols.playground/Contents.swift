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


//Why does swift need protocols??

//Protocols let us define how structs, classes, and enums ought to work: what methods they should have, and what properties they should have. Swift will enforce these rules for us, so that when we say a type conforms to a protocol Swift will make sure it has all the methods and properties required by that protocol.
//In practice, what protocols allow us to do is treat our data in more general terms.
protocol Purchaseable {
    var name: String { get set }
}

struct Book: Purchaseable {
    var name: String
    var author: String
}

struct Movie: Purchaseable {
    var name: String
    var actors: [String]
}

struct Car: Purchaseable {
    var name: String
    var manufacturer: String
}

struct Coffee: Purchaseable {
    var name: String
    var strength: Int
}

func buy(_ item: Purchaseable) {
    print("I'm buying \(item.name)")
}

//So, protocols let us create blueprints of how our types share functionality, then use those blueprints in our functions to let them work on a wider variety of data.

//One common reason for using protocol inheritance is to combine functionality for common work.

//Extensions let us add functionality to classes, structs, and more, which is helpful for modifying types we don’t own – types that were written by Apple or someone else, for example. Methods added using extensions are indistinguishable from methods that were originally part of the type, but there is a difference for properties: extensions may not add new stored properties, only computed properties.

//Extensions are also useful for organizing our own code, and although there are several ways of doing this I want to focus on two here: conformance grouping and purpose grouping.

//Conformance grouping means adding a protocol conformance to a type as an extension, adding all the required methods inside that extension. This makes it easier to understand how much code a developer needs to keep in their head while reading an extension – if the current extension adds support for Printable, they won’t find printing methods mixed in with methods from other, unrelated protocols.

//On the other hand, purpose grouping means creating extensions to do specific tasks, which makes it easier to work with large types. For example, you might have an extension specifically to handle loading and saving of that type.

//Protocol extensions are used everywhere in Swift, which is why you’ll often see it described as a “protocol-oriented programming language.” We use them to add functionality directly to protocols, which means we don’t need to copy that functionality across many structs and classes.

//Of course, the Swift developers don’t want to write this same code again and again, so they used a protocol extension: they wrote a single allSatisfy() method that works on a protocol called Sequence, which all arrays, sets, and dictionaries conform to. This meant the allSatisfy() method immediately became available on all those types, sharing exactly the same code.

//Protocol extensions are used everywhere in Swift, which is why you’ll often see it described as a “protocol-oriented programming language.” We use them to add functionality directly to protocols, which means we don’t need to copy that functionality across many structs and classes.

//BOnus

let numbers = [4, 8, 15, 16]
let allEven = numbers.allSatisfy { $0.isMultiple(of: 2) }
allEven
let numbers2 = Set([4, 8, 15, 16])
let allEven2 = numbers2.allSatisfy { $0.isMultiple(of: 2) }
allEven2

let numbers3 = ["four": 4, "eight": 8, "fifteen": 18, "sixteen": 16]
let allEven3 = numbers3.allSatisfy { $0.value.isMultiple(of: 2) }
allEven3


//Mark:- How is protocol-oriented programming different from object-oriented programming?

//Getting down to the raw facts, there is no practical difference between the two: both can place functionality into objects, use access control to limit where that functionality can be called, make one class inherit from another, and more.

//In fact, the only important difference between the two is one of mindset: POP developers lean heavily on the protocol extension functionality of Swift to build types that get a lot of their behavior from protocols. This makes it easier to share functionality across many types, which in turn lets us build bigger, more powerful software without having to write so much code.

import UIKit

var str = "Hello, playground"

//CLasses

//Classes are similar to structs in that they allow you to create new types with properties and methods, but they have five important differences
//The first difference between classes and structs is that classes never come with a memberwise initializer. This means if you have properties in your class, you must always create your own initializer.

class Dog {
    var name:String
    var breed:String
    init(name:String,breed:String) {
        self.name = name
        self.breed = breed
    }
}
let popp = Dog(name: "shoty", breed: "pamerian")
//inheritance
//The second difference between classes and structs is that you can create a class based on an existing class – it inherits all the properties and methods of the original class, and can add its own on top.This is called class inheritance or subclassing

//For safety reasons, Swift always makes you call super.init() from child classes – just in case the parent class does some important work when it’s created.

class Poddle:Dog {
     init(name: String) {
        super.init(name: name, breed: "poddle")
    }
}

class Abc {
    func makeNoise() {
        print("Woof!")
    }
}

class DEF:Abc {
    override func makeNoise() {
        print("no not gonna happen")
    }
}
//Poddle.init(name: "pkol")

//Child classes can replace parent methods with their own implementations – a process known as overriding.

let p1 = DEF()
p1.makeNoise()

//sometimes you want to disallow other developers from building their own class based on yours.
//final
//when you declare a class as being final, no other class can inherit from it. This means they can’t override your methods in order to change your behavior – they need to use your class the way it was written.

final class FFS {
    
}

//Copying objects
//The third difference between classes and structs is how they are copied. When you copy a struct, both the original and the copy are different things – changing one won’t change the other. When you copy a class, both the original and the copy point to the same thing, so changing one does change the other.
class Singer {
    var name = "Taylor Swift"
    
    func printGreeting() {
           print("Hello, I'm \(name)")
       }
    
    deinit {
        print("\(name) is no more!")
    }
}
//struct Singer {
//    var name = "Taylor Swift"
//}

var singer = Singer()
print(singer.name)
var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singer.name)

//deinitailizers
//The fourth difference between classes and structs is that classes can have deinitializers – code that gets run when an instance of a class is destroyed.

for _ in 1...3 {
    let person = Singer()
    person.printGreeting()
}

//Mutability
//The final difference between classes and structs is the way they deal with constants. If you have a constant struct with a variable property, that property can’t be changed because the struct itself is constant.
//
//However, if you have a constant class with a variable property, that property can be changed. Because of this, classes don’t need the mutating keyword with methods that change properties; that’s only needed with structs.
class Singer2 {
    var name = "Taylor Swift"
}

let taylor = Singer2()
taylor.name = "Ed Sheeran"
print(taylor.name)


//
//Classes and structs are similar, in that they can both let you create your own types with properties and methods.
//One class can inherit from another, and it gains all the properties and methods of the parent class. It’s common to talk about class hierarchies – one class based on another, which itself is based on another.
//You can mark a class with the final keyword, which stops other classes from inheriting from it.
//Method overriding lets a child class replace a method in its parent class with a new implementation.
//When two variables point at the same class instance, they both point at the same piece of memory – changing one changes the other.
//Classes can have a deinitializer, which is code that gets run when an instance of the class is destroyed.
//Classes don’t enforce constants as strongly as structs – if a property is declared as a variable, it can be changed regardless of how the class instance was created.


//Classes do not come with synthesized memberwise initializers.
//One class can be built upon (“inherit from”) another class, gaining its properties and methods.
//Copies of structs are always unique, whereas copies of classes actually point to the same shared data.
//Classes have deinitializers, which are methods that are called when an instance of the class is destroyed, but structs do not.
//Variable properties in constant classes can be modified freely, but variable properties in constant structs cannot.


// Structs are value types, which means they hold simple values such as the number 5 or the string “hello”.
//classes are reference types, which means they refer to a value somewhere else.

struct Calculator {
    var currentTotal = 0
}
var baseModel = Calculator()
var casio = baseModel
var texas = baseModel
casio.currentTotal = 556
texas.currentTotal = 384
print(casio.currentTotal)
print(texas.currentTotal)

class Hairdresser {
    var clients = [String]()
}
var tim = Hairdresser()
tim.clients.append("Jess")
var dave = tim
dave.clients.append("Sam")
print(tim.clients.count)
print(dave.clients.count)

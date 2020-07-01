import UIKit

var str = "Hello, playground"


var people = ["players", "haters", "heart-breakers", "fakers"]
var actions = ["play", "hate", "break", "fake"]

for i in 0 ..< people.count {
    //print(people[i]+" gonna ")
    var str = "\(people[i]) gonna "
    for _ in 0 ..< actions.count {
        str += " \(actions[i])"
        //print(actions[i])
    }
    print(str)
    //print()
}


//var counter = 0
//
//while true {
//    print("Counter is now \(counter)")
//    counter += 1
//
//    if counter == 556 {
//        break
//    }
//}


let studioAlbums = 2.6

switch studioAlbums {
case 0...1:
    print("You're just starting out")

case 2...3:
    print("You're a rising star")

case 4...5:
    print("You're world famous!")

default:
    print("Have you done something new?")
}


struct Person {
    var clothes: String
    var shoes: String
}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")

var taylorCopy = taylor
taylorCopy.shoes = "flip flops"

print(taylor)
print(taylorCopy)

//Classes

//You don't get an automatic memberwise initializer for your classes; you need to write your own.
//You can define a class as being based off another class, adding any new things you want.
//When you create an instance of a class it’s called an object. If you copy that object, both copies point at the same data by default – change one, and the copy changes too.

//Values vs References
//
//When you copy a struct, the whole thing is duplicated, including all its values. This means that changing one copy of a struct doesn't change the other copies – they are all individual. With classes, each copy of an object points at the same original object, so if you change one they all change. Swift calls structs "value types" because they just point at a value, and classes "reference types" because objects are just shared references to the real value.
//
//This is an important difference, and it means the choice between structs and classes is an important one:
//
//    If you want to have one shared state that gets passed around and modified in place, you're looking for classes. You can pass them into functions or store them in arrays, modify them in there, and have that change reflected in the rest of your program.
//    If you want to avoid shared state where one copy can't affect all the others, you're looking for structs. You can pass them into functions or store them in arrays, modify them in there, and they won't change wherever else they are referenced.
//
//If I were to summarize this key difference between structs and classes, I'd say this: classes offer more flexibility, whereas structs offer more safety. As a basic rule, you should always use structs until you have a specific reason to use classes.

import UIKit

var str = "Hello, playground"

//Optionals

//Null references – literally when a variable has no value – were invented by Tony Hoare way back in 1965. When asked about it in retrospect, he said “I call it my billion-dollar mistake” because they lead to so many problems.

//An optional integer might have a number like 0 or 40, but it might have no value at all – it might literally be missing, which is nil in Swift.
//Swift’s optionals are one of its most powerful features, while also being one of the confusing. Their core job is simple: they allow us to represent the absence of some data – a string that isn’t just empty, but literally doesn’t exist.

var age: Int? = nil

age = 10

//Any data type can be optional in Swift:

//An integer might be 0, -1, 500, or any other range of numbers.
//An optional integer might be all the regular integer values, but also might be nil – it might not exist.
//A string might be “Hello”, it might be the complete works of Shakespeare, or it might be “” – an empty string.
//An optional string might be any regular string value, but also might be nil.
//A custom User struct could contain all sorts of properties that describe a user.
//An optional User struct could contain all those same properties, or not exist at all.

//Making that distinction between “it could be any possible value for that type” and “it could be nil” is the key to understanding optionals, and it’s not easy sometimes.


//Unwrapping optionals

var name:String? = nil

//name.count
if let unwrapped = name {
    print(unwrapped.count)
} else {
    print("Not FOUND !!!! Unwrapping optionals")
}

//Unwrapping with guard

//An alternative to if let is guard let, which also unwraps optionals. guard let will unwrap an optional for you, but if it finds nil inside it expects you to exit the function, loop, or condition you used it in.

//However, the major difference between if let and guard let is that your unwrapped optional remains usable after the guard code.
func greet(_ name:String?){
    guard let unwrap = name else {
        print("You didn't provide a name!!")
        return
    }
    
    print("hello, \(unwrap)")
}

//Force unwrapping
let str1 = "5"
let num = Int(str1)!

//Optionals represent data that may or may not be there, but sometimes you know for sure that a value isn’t nil. In these cases, Swift lets you force unwrap the optional: convert it from an optional type to a non-optional type.

//Swift will immediately unwrap the optional and make num a regular Int rather than an Int?. But if you’re wrong – if str was something that couldn’t be converted to an integer – your code will crash.

//As a result, you should force unwrap only when you’re sure it’s safe – there’s a reason it’s often called the crash operator.

//Implicitly unwrapped optionals

//Like regular optionals, implicitly unwrapped optionals might contain a value or they might be nil. However, unlike regular optionals you don’t need to unwrap them in order to use them: you can use them as if they weren’t optional at all.

//Implicitly unwrapped optionals are created by adding an exclamation mark after your type name, like this:

let ager: Int! = nil


//Because they behave as if they were already unwrapped, you don’t need if let or guard let to use implicitly unwrapped optionals. However, if you try to use them and they have no value – if they are nil – your code crashes.

//implicitly unwrapped optionals exist because sometimes a variable will start life as nil, but will always have a value before you need to use it. Because you know they will have a value by the time you need them, it’s helpful not having to write if let all the time.

//That being said, if you’re able to use regular optionals instead it’s generally a good idea.

//Nil coalescing

//The nil coalescing operator unwraps an optional and returns the value inside if there is one. If there isn’t a value – if the optional was nil – then a default value is used instead. Either way, the result won’t be optional: it will either by the value from inside the optional or the default value used as a back up.

func userName(for id: Int) -> String? {
    if id == 1 {
        return "taylor swift"
    } else {
        return nil
    }
}

let n = userName(for: 11) ?? "Anonymous"

//Optional chaining

//if you want to access something like a.b.c and b is optional, you can write a question mark after it to enable optional chaining: a.b?.c.
//When that code is run, Swift will check whether b has a value, and if it’s nil the rest of the line will be ignored – Swift will return nil immediately. But if it has a value, it will be unwrapped and execution will continue.

let names = ["John", "Paul", "George", "Ringo"]
names.first?.uppercased()

//That question mark is optional chaining – if first returns nil then Swift won’t try to uppercase it, and will set beatle to nil immediately.

//optional try

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

if let pass = try? checkPassword("passwordd") {
    print("result was \(pass)")
} else {
    print("nope! nope!! nope!!!")
}


//Failable initializers

//This is a failable initializer: an initializer that might work or might not. You can write these in your own structs and classes by using init?() rather than init(), and return nil if something goes wrong. The return value will then be an optional of your type, for you to unwrap however you want.

struct Perdon {
    var id: String
    
    init?(id : String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

let p = Perdon(id: "ioopiop")
p

//Typecasting
//If we want to loop over the pets array and ask all the dogs to bark, we need to perform a typecast: Swift will check to see whether each pet is a Dog object, and if it is we can then call makeNoise().

//This uses a new keyword called as?, which returns an optional: it will be nil if the typecast failed, or a converted type otherwise.

class Animal {}
class Fish: Animal{}
class Dog: Animal {
    func woof() {
        print("woof woof!")
    }
}

let pets = [Dog(), Fish(), Dog(), Fish()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.woof()
    }
}


//
//Optionals let us represent the absence of a value in a clear and unambiguous way.
//Swift won’t let us use optionals without unwrapping them, either using if let or using guard let.
//You can force unwrap optionals with an exclamation mark, but if you try to force unwrap nil your code will crash.
//Implicitly unwrapped optionals don’t have the safety checks of regular optionals.
//You can use nil coalescing to unwrap an optional and provide a default value if there was nothing inside.
//Optional chaining lets us write code to manipulate an optional, but if the optional turns out to be empty the code is ignored.
//You can use try? to convert a throwing function into an optional return value, or try! to crash if an error is thrown.
//If you need your initializer to fail when it’s given bad input, use init?() to make a failable initializer.
//You can use typecasting to convert one type of object to another.

//
//    It lets us focus on the “happy path” – the behavior of our function when everything has gone to plan, which is to print the meaning of life.
//    guard requires that we exit the current scope when it’s used, which in this case means we must return from the function if it fails. This is not optional: Swift won’t compile our code without the return.
//
//It’s common to see guard used one or more times at the start of methods, because it’s used to verify conditions are correct up front. This makes our code easier to read than if we tried to check a condition then run some code, then check another condition and run some different code.
//
//So, use if let if you just want to unwrap some optionals, but prefer guard let if you’re specifically checking that conditions are correct before continuing.















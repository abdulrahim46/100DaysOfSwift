import UIKit

var str = "Hello, playground"


//Functions


func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""

    print(message)
}


printHelp()


func square(number: Int) {
    print(number * number)
}

square(number: 12)



func sq(sq:Int) -> Int {
    let a = sq * sq
    return a
}
sq(sq: 3)
square(number: 3)

func Str(to name:String) -> String{
    return name
}

Str(to: "okokokok")


func greet(_ person: String, nicely: Bool = true) {
        if nicely == true {
            print("Hello, \(person)!")
        } else {
            print("Oh no, it's \(person) again...")
        }
    }
greet("Talore")
greet("tatat", nicely: false)

//Variadic functions

//In mathematics and in computer programming, a variadic function is a function of indefinite arity, i.e., one which accepts a variable number of arguments.


print("okok","okie dokie","nope she's not interested","stop day dreaming bro!")

func sqwe(num:Int...){
    for n in num {
        print("\(n) is num to \(n * n)")
    }
}

sqwe(num: 1,2,3,4,5,6,7)


enum PasswordError: Error {
    case obvious
}

func pass(_ pa:String) throws -> Bool{
    
    if pa == "password"{
        throw PasswordError.obvious
    }
    
    return true
}
 do {
    try pass("123")
    print("success")
} catch {
    print("jhjghjdhsj")
}

func mun(mi: inout Int){
    mi *= 3
}

var mu = 2
mun(mi: &mu)







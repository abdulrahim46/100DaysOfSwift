import UIKit

var str = "Hello, playground"

//ARRAY

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john,paul,george,ringo]

//SETs

//Sets are collections of values just like arrays, except they have two differences:
//
//Items aren’t stored in any order; they are stored in what is effectively a random order.
//No item can appear twice in a set; all items must be unique.

let colors = Set(["black","blue","red"])

let colors2 = Set(["red", "green", "blue", "red", "blue"])

colors.count
colors.contains("eee")
//TUPLES

//Tuples allow you to store several values together in a single value. That might sound like arrays, but tuples are different:
//
//You can’t add or remove items from a tuple; they are fixed in size.
//You can’t change the type of items in a tuple; they always have the same types they were created with.
//You can access items in a tuple using numerical positions or by naming them, but Swift won’t let you read numbers or names that don’t exist.

var name = (first:"taylor",last:"swift")

name.0
name.last
//name.2 error!
//name = (first:"abdul",key:"rahim") cannot change value types in tuples
name.0


//If you need a specific, fixed collection of related values where each item has a precise position or name, you should use a tuple:

let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")

//If you need a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly, you should use a set:
let set = Set(["aardvark", "astronaut", "azalea"])

//If you need a collection of values that can contain duplicates, or the order of your items matters, you should use an array:
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]


//Dictionaries

//Dictionaries are collections of values just like arrays, but rather than storing things with an integer position you can access them using anything you want.
//
//The most common way of storing dictionary data is using strings. For example, we could create a dictionary that stores the height of singers using their name:

let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

heights["Taylor Swift"]
heights["Taylor"]//return nil

//If you try to read a value from a dictionary using a key that doesn’t exist, Swift will send you back nil – nothing at all. While this might be what you want, there’s an alternative: we can provide the dictionary with a default value to use if we request a missing key.

heights["Taylor", default: 0]

//Collections

//Arrays, sets, and dictionaries are called collections, because they collect values together in one place.
//
//If you want to create an empty collection just write its type followed by opening and closing parentheses. For example, we can create an empty dictionary with strings for keys and values like this:

var teams = [String: String]()
teams["king"] = "ohohohoh"
teams

var arr = [String]()

var words = Set<String>()
var numbers = Set<Int>()

var scores = Dictionary<String, Int>()
var results = Array<Int>()


//Enums

//Enumerations – usually called just enums – are a way of defining groups of related values in a way that makes them easier to use.

//For example, if you wanted to write some code to represent the success or failure of some work you were doing, you could represent that as strings:

enum Result {
    case success
    case failure
}

let res = Result.failure

//Enum associated values


enum Activity {
    case talking(about:String)
    case counting(to:Int)
}

let some = Activity.counting(to: 10)
let talking = Activity.talking(about: "football")

//Enum raw values

enum planets: String {
    case sun = "str"
    case moon
    case eb3
    case mars
}

planets.eb3.rawValue
let earth = planets.init(rawValue: "mars")



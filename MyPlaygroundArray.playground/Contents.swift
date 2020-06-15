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

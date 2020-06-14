import UIKit

var str = "Hello, playground"

str = "hey there!"

var str1 = """
this is so cool \
lets see this
"""


var pi = 3.141414
var cf = true

//string interpolation

var score = 85
var str2 = "your score on math test is \(score)"

var results = "the test results are here: \(str2)"

//As you’ll see later on, string interpolation isn’t just limited to placing variables – you can actually run code inside there.

//Constants

let taylor = "swift"

let album: String = "Reputation"
let year: Int = 1989
let height:Double = 1.78
let taylorRocks: Bool = true

//
//You make variables using var and constants using let. It’s preferable to use constants as often as possible.
//Strings start and end with double quotes, but if you want them to run across multiple lines you should use three sets of double quotes.
//Integers hold whole numbers, doubles hold fractional numbers, and booleans hold true or false.
//String interpolation allows you to create strings from other variables and constants, placing their values inside your string.
//Swift uses type inference to assign each variable or constant a type, but you can provide explicit types if you want.

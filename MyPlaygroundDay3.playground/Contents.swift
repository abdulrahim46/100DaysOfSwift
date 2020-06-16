import UIKit

var str = "Hello, playground"


let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore

let remainder = 13 % secondScore


//Swift supports operator overloading, which is a fancy way of saying that what an operator does depends on the values you use it with. For example, + sums integers like this:


let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fake"


let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf


var score = 95
score -= 5


var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

firstScore == secondScore
firstScore != secondScore

firstScore < secondScore
firstScore >= secondScore


"Taylor" <= "Swift"

//The ternary operator


//Swift has a rarely used operator called the ternary operator. It works with three values at once, which is where its name comes from: it checks a condition specified in the first value, and if it’s true returns the second value, but if it’s false returns the third value.

//The ternary operator is a condition plus true or false blocks all in one, split up by a question mark and a colon, all of which which makes it rather hard to read. Here’s an example:
let firstCard = 11
let secondCard = 10


print(firstCard != secondCard ? "this is it" : "this is not it")


//switch


//Swift will only run the code inside each case. If you want execution to continue on to the next case, use the fallthrough keyword like this:

let weather = "sunny"

switch weather {
case "sunny":
    print("yahooo!")
    fallthrough
case "rain":
    print("okay let's go")
    break
case "adad":
    print("okaojfndfnbjngkroejor0394085-2049")
default:
    print("boring weather")
}


//range operator

let score1 = 49

switch score1 {
case 0..<50:
    print("give me 50")
case 50...85:
    print("give me 100")
default:
    print("okokokokoko dokie")
}

//
//Swift has operators for doing arithmetic and for comparison; they mostly work like you already know.
//There are compound variants of arithmetic operators that modify their variables in place: +=, -=, and so on.
//You can use if, else, and else if to run code based on the result of a condition.
//Swift has a ternary operator that combines a check with true and false code blocks. Although you might see it in other code, I wouldn’t recommend using it yourself.
//If you have multiple conditions using the same value, it’s often clearer to use switch instead.
//You can make ranges using ..< and ... depending on whether the last number should be excluded or included.


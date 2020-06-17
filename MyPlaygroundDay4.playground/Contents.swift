import UIKit

var str = "Hello, playground"


//for loops


//Swift has a few ways of writing loops, but their underlying mechanism is the same: run some code repeatedly until a condition evaluates as false.
//
//The most common loop in Swift is a for loop: it will loop over arrays and ranges, and each time the loop goes around it will pull out one item and assign to a constant.

let count = 1...10

for i in count {
    print(i)
}

var arr = ["abc","ahjk", "okokoo"]

for i in arr {
    print(i)
    arr.append("arr1")
}
arr.count


//If you don’t use the constant that for loops give you, you should use an underscore instead so that Swift doesn’t create needless values:
print("Players gonna ")

for _ in 1...5 {
    print("play")
}

let names = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

for _ in names {
    print("[CENSORED] is a secret agent!")
}

//while loop
//A second way of writing loops is using while: give it a condition to check, and its loop code will go around and around until the condition fails.

var num = 1

while num <= 12 {
    print("winner winner chicken dinner!")
    num += 1
}


//repeat loop
var nums = 0
repeat {
    print("hey")
    nums += 1
} while nums < 10

repeat {
    print("This is false")
} while false

//break loop

//You can exit a loop at any time using the break keyword. To try this out, let’s start with a regular while loop that counts down for a rocket launch:

var countDown = 10

while countDown >= 0 {
    print(countDown)
    if countDown == 4 {
        print("shutOFF!")
        break
    }
    countDown -= 1
}

print("Blast off!")

//breaking from all loops
outer:for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
        if product == 50 {
            break outer
        }
    }
}

//continue

for i in 1...10 {
    if i % 3 == 1 {
        print("shitbrik!")
        continue
    }

    print(i)
}

//infinite loop

var count2 = 0
while true {
    print("   *")
    count2 += 1
    
    if count2 == 200 {
        break
    }
}



//Loops let us repeat code until a condition is false.
//The most common loop is for, which assigns each item inside the loop to a temporary constant.
//If you don’t need the temporary constant that for loops give you, use an underscore instead so Swift can skip that work.
//There are while loops, which you provide with an explicit condition to check.
//Although they are similar to while loops, repeat loops always run the body of their loop at least once.
//You can exit a single loop using break, but if you have nested loops you need to use break followed by whatever label you placed before your outer loop.
//You can skip items in a loop using continue.
//Infinite loops don’t end until you ask them to, and are made using while true. Make sure you have a condition somewhere to end your infinite loops!




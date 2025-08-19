import Foundation
import SwiftUI

//FOR
//In Swift, the for loop is used to repeat operations a certain number of times.
let fruits = ["Apple", "Banana", "Orange", "Mango", "Pineapple"]
for fruit in fruits{
    print("I Like \(fruit)")
}

//Example2 For with Range

for i in 1..<5 {
    print(i)
}
for j in 10...13 {
    print(j)
}

//WHILE
//The while loop runs as long as the condition is true.
var number = 1

while number <= 5 {
    print(number)
    number += 1
}

//REPEAT-WHILE
//The repeat-while loop first runs once and then checks the condition. In other words, it guarantees to run at least once.

var x = 1

repeat {
    print(x)
    x += 1
} while x <= 5

//Example1 While Loop – User Interaction / Infinite Loop Control

let correctPassword = "12345"
var userInput: String?

while userInput != correctPassword {
    print("Enter password:")
    userInput = "12345"
}

print("✅ Access Granted")

//BREAK
//break terminates the loop completely. Even if the condition is not met, break exits the loop as soon as it encounters it.

for i in 1...10 {
    if i % 5 == 0 {
        print("🎯 First multiple of 5: \(i)")
        break
    }
    print("Checking \(i)")
}

//CONTINUE
//continue skips that step of the loop and moves on to the next iteration.

for i in 1...10 {
    if i % 2 == 0 {
        continue
    }
    print("Odd number: \(i)")
}

//Example2 break + continue using togather
//Example: For numbers 1 to 10:
//Skip even numbers (continue).
//If the number reaches 7, stop completely (break).

for i in 1...10 {
    if i % 2 == 0 {
        continue
    }
    if i == 7 {
        print("Stopped at \(i)")
        break
    }
    print(i)
}

//BREAK-CONTINUE in WHILE LOOP

var number1 = 0

while number1 < 10 {
    number1 += 1
    
    if number1 == 3 {
        continue  // pass 3
    }
    
    if number1 == 8 {
        break     //  end the loop on 8
    }
    
    print(number1)
}




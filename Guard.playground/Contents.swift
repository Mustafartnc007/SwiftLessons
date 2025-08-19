import SwiftUI

//GUARD is a  condition control mechanism.
//If the condition is not met, get out of here! : If the "if" condition is met, the code inside is executed. If the "guard" condition is not met, the else block inside is executed, and the function usually exits early.
func squareCalc(x:Int?){
    guard let x = x else {
        print("Please enter a valid number")
        return
    }
    print("square of the number = \(x*x)")
}
//If the number is not nil, it is unwrapped and continues on its way. If it is nil, the else block is executed and the function exits.

squareCalc(x:3)


// A-) OPTIONAL UNWRAPPING
func bilgiYazdir(name: String?, age: Int?) {
    guard let name = name, let age = age else {
        print("Missing Informantion!")
        return
    }
    print("NAME: \(name), AGE: \(age)")
}
bilgiYazdir(name: "james" , age: 30 )

// B-) CONDITION CHECKING
func ageChecking(age: Int) {
    guard age >= 18 else {
        print("Under 18 Years old!!")
        return
    }
    print("You have permission to enter the club")
}
ageChecking(age: 17)

// C-) USING WITH LOOPS
let numbers = [1, 2, -3, 4, -5]

for number in numbers {
    guard number > 0 else {
        print("Negative number found: \(number)")
        continue
    }
    print("Positive number: \(number)")
}
// D-) HIGH LEVEL EXAMPLE

struct User {
    var name: String?
    var email: String?
    var age: Int?
}

func saveUser(_ user: User) {
    guard let name = user.name else {
        print("User's name address was not entered")
        return
    }
    guard let email = user.email else {
        print("User's email address was not entered")
        return
    }
    guard let age = user.age, age >= 18 else {
        print("User's age is under 18 or he user's age is not specified.")
        return
    }

    print("User Has been saved: \(name), \(email), \(age)")
}

let mustafa = User(name: "Mustafa", email: "sample@email.com", age: 25)
saveUser(mustafa)
let ayse = User(name: "ayse", email: nil, age: 22)
saveUser(ayse)

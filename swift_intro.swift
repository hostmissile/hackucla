// Intro to Swift

import UIKit

// Variables
var score: Int 				// cannot use uninitialized variables
var name: String

var maxScore = 1000			// type inference makes maxScore of type Int
var schoolName = "UCLA"

// var vs let
// var is a normal variable and let is a constant
let skyColor = "Blue"
let pi: Double = 3.14
let raining = false

// Arrays
var names1:[String] = [String]()
var names2 = ["Annie", "Billy"]
names2.append("Carl")

// Control Flow
score = 25
if score > 25 {
    print("greater than 25!")
}

// Loops
for i in 0...10 {
    print(i)
}

var array = ["item 1", "item 2"]
for item in array {
    print(item)
}

var count = 1
while count < 10 {
    count += 1
}
print(count)

// Methods
// Read in order of function declaration:
// This is a function called sayHelloWorld that has no parameters and returns a String
func sayHelloWorld() -> String {
    return "hello, world"
}

var helloWorld = sayHelloWorld()

func printHelloWorld() {
    print("hello, world")
}

printHelloWorld()

// This is a function called greet that takes in a parameter called person, which is a String, and returns a String
func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}

greet(person: "Joe Bruin")

func greet(person: String, student: Bool) -> String {
    if student {
        return "\(person) is a student"
    } else {
        return "\(person) is not a student"
    }
}

print(greet(person: "Tim", student: true))


// Classes
// NSObject is the base class of everything in iOS
class Car:NSObject {
    var numSeats: Int
    
    // Note: override is needed to override the superclass's declaration of this function
    override init()
    {
        self.numSeats = 4
        super.init()
    }
    
    func honk() {
        print("Car is honking!")
    }
}

var c = Car()
c.honk()
print("Car has numSeats: \(c.numSeats)")

class TrendyCar:Car {
    var numWheels: Int
    
    // Overriding the superclass's init function
    override init() {
        self.numWheels = 10
        super.init()
        self.numSeats = 10
    }
    
    // TrendyCar's own init function with a parameter
    // Note: does not need 'override' because no subclass has this function signature
    init(numWheels: Int)
    {
        self.numWheels = numWheels
        super.init()
    }
    
    // Again overriding the superclass's 'honk' method
    override func honk() {
        print("TrendyCar is honking!")
    }
}

var trendyCar = TrendyCar()
trendyCar.honk()
print("TrendyCar has numSeats: \(trendyCar.numSeats) numWheels: \(trendyCar.numWheels)")

trendyCar = TrendyCar(numWheels: 18)
print("TrendyCar has numSeats: \(trendyCar.numSeats) numWheels: \(trendyCar.numWheels)")

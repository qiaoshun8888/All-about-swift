// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func ContainsCharacter(#string: String, #characterToFind: Character) -> Bool {
    for character in string {
        if characterToFind == character {
            return true
        }
    }
    return false
}
ContainsCharacter(string: "Hello World", characterToFind: "W")

func join(#s1: String, #s2: String, joiner: String = " ") -> String {
    return s1 + joiner + s2;
}
join(s1: "Hello", s2: "World")

func alignRight(var string: String, count: Int, pad: Character) -> String {
    let amountToPad = count - countElements(string)
    for _ in 1...amountToPad {
        string = pad + string
    }
    return string
}
alignRight("hello", 10, "-")

func swapTwoInts(inout a: Int, inout b: Int) {
    let temp = a
    b = a
    a = temp
}
var (someInt, anotherInt) = (3, 107)
swap(&someInt, &anotherInt)
println("someInt is now \(someInt)\nanotherInt is now \(anotherInt).")

/**
 * enclosing functions
 */
func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int {
        return input + 1
    }
    func stepBackward(input: Int) -> Int {
        return input - 1
    }
    return backwards ? stepBackward : stepForward
}
var currentValue = -4
let moveNearerToZero = chooseStepFunction(currentValue > 0)
while currentValue != 0 {
    println("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}
println("Zero!!!")

/**
 * closure
 */
func backwards(s1: String, s2:String) -> Bool {
    return s1 > s2
}
let names = ["Apple", "Amazon", "Google", "LinkedIn", "Facebook", "Twitter", "MicroSoft", "ZZZ"]
var reversed = sort(names, backwards)

reversed = sort(names, { (s1: String, s2: String) -> Bool in
    return s2 > s1
    })

reversed = sort(names, { s1, s2 in return s1 > s2 })
reversed

reversed = sort(names, { s1, s2 in s1 < s2 })
reversed

reversed = sort(names, { $0 > $1 })
reversed

reversed = sort(names, <)
reversed

let digitNames = [
    0: "Zero", 1: "one", 2: "Two", 3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"]
let numbers = [16, 58, 510]
let strings = numbers.map {
    (var number) -> String in
    var output = ""
    while number > 0 {
        output = digitNames[number % 10]! + output
        number /= 10
    }
    return output
}

func makeIncrementor(forIncrement amount: Int) -> () -> Int{
    var runningTotal = 0
    func incrementor() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementor
}
let incrementByTen = makeIncrementor(forIncrement: 10)
incrementByTen()
incrementByTen()
incrementByTen()
let alsoIncrementByTen = incrementByTen
alsoIncrementByTen()


























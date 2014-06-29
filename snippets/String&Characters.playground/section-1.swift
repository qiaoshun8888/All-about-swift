// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
// "Imagination is more important than knowledge" - Einstein
let dollarSign = "\x24"        // $,  Unicode scalar U+0024
let blackHeart = "\u2665"      // ♥,  Unicode scalar U+2665
let sparklingHeart = "\U0001F496"  // 💖, Unicode scalar U+1F496”

let emptyString = ""
if emptyString.isEmpty {
    println("Nothing to see here")
}
for character in "Dog!🐶" {
    println(character)
}

var string1 = "I'm string1"
let string2 = " and I'm string2"
string1 += string2

let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"

let question1 = "ahahah Q"
let question2 = "ahahah Q"
if question1 == question2 {
    println("they are the same")
}

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]
var act1Count = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1") {
        act1Count++
    }
}
println("There are \(act1Count) scenes in Act1")

var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("mansion") {
        mansionCount++
    }
    else if scene.hasSuffix("cell") {
        cellCount++
    }
}
println("\(mansionCount) mansion scenes; \(cellCount) cell scenes")

let normalString = "Could you help me with this question?"
normalString.uppercaseString
normalString.lowercaseString































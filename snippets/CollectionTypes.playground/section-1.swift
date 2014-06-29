// Playground - noun: a place where people can play

import UIKit

var shoppingList: String[] = ["Eggs", "Milk"]
println("The shopping list contains \(shoppingList.count) items")
if shoppingList.isEmpty {
    println("The shopping list is empty")
}
else {
    println("The shopping list is not empty")
}
shoppingList.append("Flour")
shoppingList += "Baking Powder"
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]

var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"

for (index, item) in enumerate(shoppingList) {
    println(index, item)
}
shoppingList[4...6] = ["Bananas", "Apples"]
for (index, item) in enumerate(shoppingList) {
    println(index, item)
}
// shoppingList now contains 6 items

shoppingList.insert("Maple Syrup", atIndex: 0)
for (index, item) in enumerate(shoppingList) {
    println(index, item)
}
let mapleSyrup = shoppingList.removeAtIndex(0)
for (index, item) in enumerate(shoppingList) {
    println(index, item)
}
let apples = shoppingList.removeLast()

let threeDoubles = Double[](count: 3, repeatedValue: 0.0)
var anotherThreeDoubles = Array(count: 3, repeatedValue: 2.5)
let sixDoubles = threeDoubles + anotherThreeDoubles

var airports: Dictionary<String, String> = ["TYO": "Tokyo", "DUB": "Dublin"]
println("The dictionary of airports contains \(airports.count) items")
airports["LHR"] = "London"
println("Now the dictionary of airports contains \(airports.count) items")
airports["LHR"] = "London Heathrow"

if let airportName = airports["DUB"] {
    println("The name of the airport is \(airportName)")
}
else {
    println("That airport is not in the airports dictionary")
}

if let removedValue = airports.removeValueForKey("DUB") {
    println("The removed airport's name is \(removedValue)")
}
else {
    println("The airports dictionary does not contain a value for DUB")
}

for (airportCode, airportName) in airports {
    println(airportCode, airportName)
}

for airportCode in airports.keys {
    println(airportCode)
}

for airportName in airports.values {
    println(airportName)
}

let airportCodes = Array(airports.keys)
let airportNames = Array(airports.values)

var nameOfInteger = Dictionary<Int, String>()
nameOfInteger[16] = "sixteen"
nameOfInteger = [:]




























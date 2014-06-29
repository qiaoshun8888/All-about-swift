// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var a = [1, 2, 3]
var b = a
var c = a

// “copying only takes place when you perform an action that has the potential to modify the length of the array. This includes appending, inserting, or removing items, or using a ranged subscript to replace a range of items in the array."
a += 777
a[0] = 22

if b === c {
    println("b and c share the same elements")
}

b.unshare()
b[0] = -105

println(a[0])
println(b[0])
println(c[0])

if b === c {
    println("b and c share the same elements")
}
else {
    println("b and c don't share the same elements any more")
}

b[1...2]
c[1...2]

b[1..2] == c[1..2]

if b[1..2] === c[1..2] {
    println("b and c share the same elements in the range of [1...2]")
}
else {
    println("b and c don't share the same elements in the range of [1...2]")
}

class StepCounter {
    var totalSteps: Int = 0 {
    willSet(newTotalSteps) {
        println("About to set totalSteps to \(newTotalSteps)")
    }
    didSet {
        if totalSteps > oldValue {
            println("Added \(totalSteps - oldValue) steps")
        }
    }
    }
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 200
stepCounter.totalSteps = 360
stepCounter.totalSteps = 500

struct Point {
    var x = 0.0, y = 0.0
    mutating func moveByX(x deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}
var somePoint = Point(x: 1.0, y: 3.0)
somePoint.moveByX(x: 2.0, y: 0.0)
println("The point is not at (\(somePoint.x), \(somePoint.y)).")

enum TriStateSwitch {
    case Off, Low, High
    mutating func next() {
        switch self {
        case Off:
            self = Low
        case Low:
            self = High
        case High:
            self = Off
        }
        println("TriStateSwitch now is \(self)")
    }
    
    func value() -> String {
        switch self {
        case Off:
            return "Off"
        case Low:
            return "Low"
        case High:
            return "High"
        }
    }
}
var ovenLight = TriStateSwitch.Off
ovenLight.value()

ovenLight.next()
ovenLight.value()

ovenLight.next()
ovenLight.value()

ovenLight.next()
ovenLight.value()


struct LevelTracker {
    static var highestUnlockedLevel = 1
    static func unlockLevel(level: Int) {
        if level > highestUnlockedLevel {
            highestUnlockedLevel = level
        }
    }
    static func levelIsUnlocked(level: Int) -> Bool {
        return level <= highestUnlockedLevel
    }
    var currentLevel = 1
    mutating func advanceToLevel(level: Int) -> Bool {
        if LevelTracker.levelIsUnlocked(level) {
            currentLevel = level
            return true
        }
        else {
            return false
        }
    }
}

class Player {
    var tracker = LevelTracker()
    let playerName: String
    func completedLevel(level: Int) {
        LevelTracker.unlockLevel(level + 1)
        tracker.advanceToLevel(level + 1)
    }
    init(name: String) {
        playerName = name
    }
}

var player = Player(name: "John")
println("Now the highest level is \(LevelTracker.highestUnlockedLevel)")
player.completedLevel(1)
println("Now the highest level is \(LevelTracker.highestUnlockedLevel)")
player.completedLevel(2)
println("Now the highest level is \(LevelTracker.highestUnlockedLevel)")
player.completedLevel(3)
println("Now the highest level is \(LevelTracker.highestUnlockedLevel)")
player.completedLevel(4)
println("Now the highest level is \(LevelTracker.highestUnlockedLevel)")

player = Player(name: "Emily")
if player.tracker.advanceToLevel(6) {
    println("player is now on level 6")
}
else {
    println("level 6 has not yet been unlocked")
}


struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}
let threeTimesTable = TimesTable(multiplier: 3)
println("six times three is \(threeTimesTable[6])")


struct Matrix {
    let rows: Int, columns: Int
    var grid: Double[]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(count: rows * columns, repeatedValue: 0.0)
    }
    func indexIsValidForRow(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValidForRow(row, column: column), "Index out of range")
            return grid[row * columns + column]
        }
        set {
            assert(indexIsValidForRow(row, column: column), "Index out of range")
            grid[row * columns + column] = newValue
        }
    }
}
var matrix = Matrix(rows: 2, columns: 2)
matrix[0, 1] = 1.5
matrix[1, 0] = 3.2
matrix
// matrix[2, 2] = 4.4


class Vehicle {
    var numberOfWheels: Int
    var maxPassengers: Int
    func description() -> String {
        return "\(numberOfWheels) wheels; up to \(maxPassengers) passengers"
    }
    init() {
        numberOfWheels = 0
        maxPassengers = 0
    }
}





























































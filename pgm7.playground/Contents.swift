import UIKit

var str = "Hello, playground"
print(#"6 is found by \#(3*2)"#)

var a = "Hello World"
print(a.remove(at: a.index(a.startIndex , offsetBy: 2)))
print(Int.max)

let greeting = "Hello, world!"
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let beginning = greeting[..<index]
// beginning is "Hello"

// Convert the result to a String for long-term storage.
let newString = String(beginning)

class Counter {
    var count = 0
    func increment()-> Int {
        count += 1
        return count
        
    }
    func increment(by amount: Int)-> Int {
        count += amount
        return count
    }
    func reset()-> Int {
        count = 0
        return count
    }
}

var counter=Counter()
var c = counter.increment()
print(c)
c = counter.increment(by: 2)
print(c)
c = counter.increment(by: 2)
print(c)
c = counter.reset()
print(c)

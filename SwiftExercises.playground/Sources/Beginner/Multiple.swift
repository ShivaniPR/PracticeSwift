import Foundation
import XCTest

// You are given an array numbers. Compute the smallest number multiple with the property that all the number in the array divide it evenly.

class Multiple {
    let numbers = [3, 6, 4, 15, 30]
    
    func getSmallestMultiple() -> Int {
            let num = numbers.sorted()
            var ans = 0
            var count = 0
            var n = num[0]
            let len = numbers.count
            for i in 1...30{
                n = n * i
                count = 0
                for j in numbers{
                    if n%j == 0{
                        count += 1
                    }
                    if count == len{
                        ans = n
                        break
                    }
                }
                n = num[0]
            }
            return ans // your code here
        }
    }

class MultipleTests: XCTestCase {
    var multiple: Multiple!
    
    override func setUp() {
        super.setUp()
        multiple = Multiple()
    }

   
    func testMultiple() {
        XCTAssertEqual(multiple.getSmallestMultiple(), 60)
    }
}

public func runMultipleTests() {
    MultipleTests.defaultTestSuite.run()
}


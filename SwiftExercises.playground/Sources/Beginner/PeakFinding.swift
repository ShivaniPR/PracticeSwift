import Foundation
import XCTest

// You are given an array of numbers which increase up to a point and then decreases until the end of the array.
// Find the position where the array stops increasing any further.

class PeakFinding {
let numbers = [1, 2, 3, 5, 9, 4, 3, 2, 1]
var ans = 0
    
func find() -> Int {
   var count = 0
            for i in 0..<9 {
                var n = numbers[i]
                var r = numbers[i+1]
                if ( n > r){
                    ans = i
                    break
                }
            }
            return ans // your code here
        }
}


class PeakFindingTests: XCTestCase {
    var peakFinding: PeakFinding!
    
    override func setUp() {
        super.setUp()
        peakFinding = PeakFinding()
    }

   
    func testPeakFinding() {
        XCTAssertEqual(peakFinding.find(), 4)
    }
}

public func runPeakFindingTests() {
    PeakFindingTests.defaultTestSuite.run()
}

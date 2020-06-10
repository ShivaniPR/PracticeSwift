import Foundation
import XCTest

// You are given an array of numbers representing the height above the horizon of the mountains from Beautiful British Columbia.
// Count the number of peaks in the beautiful view. Any number with smaller neighbouring numbers counts as a peak.

class PeakCounting {
    let numbers = [1, 2, 3, 2, 1, 3, 5, 2, 3, 1]
    
    func count() -> Int {
        let len = numbers.count - 1
        var count = 0
        for i in 1..<len{
            var n = numbers[i]
            var l = numbers[i-1]
            var r = numbers[i+1]
            if ( n > l && n > r){
                count += 1
            }
        }
        return count // your code here
    }
}

class PeakCountingTests: XCTestCase {
    var peakCounting: PeakCounting!
    
    override func setUp() {
        super.setUp()
        peakCounting = PeakCounting()
    }

   
    func testPeakCounting() {
        XCTAssertEqual(peakCounting.count(), 3)
    }
}

public func runPeakCountingTests() {
    PeakCountingTests.defaultTestSuite.run()
}

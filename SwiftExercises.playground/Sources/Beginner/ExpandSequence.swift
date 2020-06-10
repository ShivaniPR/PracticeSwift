import Foundation
import XCTest

// You are given an array numbers. Expand the numbers into an a palindrome landscape of mountains.
// For numbers = [2,3,2,4], palindromeMountains = [1,2,1,2,3,1,2,1,2,3,4,3,2,1] 

class ExpandSequence {
    let numbers = [2,3,2,4]
    var k = 0
    var palindromeMountains:[Int]=[]
    var shortenpalindromeMountains:[Int]=[]
    
    func expand() -> [Int] {
        for i in numbers{
            for j in 1..<i{
                palindromeMountains.append(j)
            }
            k = i
            while(k > 0){
                palindromeMountains.append(k)
                k -= 1
            }
        }
        var x = palindromeMountains.count
        for i in 0..<x-1 {
            var n = palindromeMountains[i]
            var r = palindromeMountains[i+1]
            if (n == r){
               continue
            }
            else{
                shortenpalindromeMountains.append(n)
            }
        }
        shortenpalindromeMountains.append(palindromeMountains[x-1])
        return shortenpalindromeMountains // your code here
    }
}

class ExpandSequenceTests: XCTestCase {
    var expandSequence: ExpandSequence!
    
    override func setUp() {
        super.setUp()
        expandSequence = ExpandSequence()
    }

   
    func testExpandSequence() {
        XCTAssertEqual(expandSequence.expand(), [1, 2, 1, 2, 3, 2, 1, 2, 1, 2, 3, 4, 3, 2, 1])
    }
}

public func runExpandSequenceTests() {
    ExpandSequenceTests.defaultTestSuite.run()
}


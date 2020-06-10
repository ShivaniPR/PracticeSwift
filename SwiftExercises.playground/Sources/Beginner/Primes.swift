import Foundation
import XCTest

// Print the first N prime numbers.

class Primes {
    let N = 7
    var count=0
    var a:[Int]=[]
    var max = 0
    func find() -> [Int] {
        for i in 2...100{
            count = 0
            for j in 1...i{
                if i%j == 0{
                    count+=1
                }
            }
            if(count < 3){
                max+=1
                a.append(i)
                if(max == N){
                    break
                }
            }
        }
        return a // your code here
    }
}

class PrimesTests: XCTestCase {
    var primes: Primes!
    
    override func setUp() {
        super.setUp()
        primes = Primes()
    }

   
    func testPrimes() {
        XCTAssertEqual(primes.find(), [2,3,5,7,11,13,17])
    }
}

public func runPrimesTests() {
    PrimesTests.defaultTestSuite.run()
}


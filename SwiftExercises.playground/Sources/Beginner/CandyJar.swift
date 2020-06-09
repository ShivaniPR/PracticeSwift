import Foundation
import XCTest

// You are playing a game with a jar full of candies against an opponent.
// At each step both you and your opponent can take between one and three candies out of the jar.
// Whoever makes the last move wins. Given numberOfCandies, print true if you are sure you can win and false otherwise.

class CandyJar {
    let numberOfCandies: Int!
    var number = 0
    init(numberOfCandies: Int) {
        self.numberOfCandies = numberOfCandies
    }
    
    func canWin() -> Bool {
        var candies = numberOfCandies!
        var count = 0
        while( candies > 0){
            number = Int.random(in: 1 ... 3 )
            candies = candies - number
            count += 1
        }
        if(count%2 == 0)
        {
            return false
        }
        return true // your code here
    }
}


class CandyJarTests: XCTestCase {
    var candyJar: CandyJar!
    
    override func setUp() {
        super.setUp()
        candyJar = CandyJar(numberOfCandies: 4)
    }

   
    func testCandyJar() {
        XCTAssertFalse(candyJar.canWin())
    }
}

public func runCandyJarTests() {
    CandyJarTests.defaultTestSuite.run()
}

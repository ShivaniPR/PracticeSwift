import Foundation
import XCTest

// Your printer broke for some reason and prints everything upside down.
// Your task is to write a program that turns a string upside down,
// in order for the printer to work properly again.

class UpsideDown {

    let textToPrint = ".nwod edispu ma I"
    
    func reverse() -> String {
        
        let text = String(textToPrint.reversed())
        return text // your code here
    }

}

class UpsideDownTests: XCTestCase {
    var upsideDown: UpsideDown!
    
    override func setUp() {
        super.setUp()
        upsideDown = UpsideDown()
    }

   
    func testUpsideDown() {
        XCTAssertEqual(upsideDown.reverse(), "I am upside down.")
    }
}

public func runUpsidedownTests() {
    UpsideDownTests.defaultTestSuite.run()
}

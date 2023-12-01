//___FILEHEADER___

import XCTest
@testable import Advent_of_Code___Day_1

final class AdventOfCodeTests: XCTestCase {
    func testGivenInputWhenRequestedCalibrationInputShouldReturnValue(){
        let input = "6798seven"
        let document = CalibrationDocument()
        
        let result = 68
        
        XCTAssertEqual(document.getCalibrationValue(input), result)
    }
    
    func testGivenInputOneDigitShouldReturnDigitTwice() {
        let input = "nsodkn5pdksn"
        let document = CalibrationDocument()
        
        let result = 55
        
        XCTAssertEqual(document.getCalibrationValue(input), result
        )
    }
}

//
//  CalibrationDocument.swift
//  Advent of Code - Day 1
//
//  Created by Vito Borghi on 01/12/2023.
//

import Foundation

struct CalibrationDocument {
    
    func getCalibrationValue(_ input: String) -> Int {
        let first = input.filter{ $0.isNumber }.first.flatMap{ String($0) }
        let last = input.filter{ $0.isNumber }.last.flatMap{ String($0) }
        
        guard let first = first else { return -1 }
        guard let last = last else { return -1}
        
        var result = ""
        
        return Int(first+last) ?? -1
    }
}

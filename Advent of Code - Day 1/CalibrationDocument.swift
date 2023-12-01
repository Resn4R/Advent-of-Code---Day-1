//
//  CalibrationDocument.swift
//  Advent of Code - Day 1
//
//  Created by Vito Borghi on 01/12/2023.
//

import Foundation

struct CalibrationDocument {
    
    var values: Set<String> = []
    
    private func convertValue(_ input: String) -> Int {
        let first = input.filter{ $0.isNumber }.first.flatMap{ String($0) }
        let last = input.filter{ $0.isNumber }.last.flatMap{ String($0) }
        
        guard let first = first else { return -1 }
        guard let last = last else { return -1 }
                
        return Int(first+last) ?? -1
    }
    
    private mutating func convertRawDataToValues(rawData: String) {
        values = Set(rawData.components(separatedBy: "\n"))
    }
    
    mutating func getCalibrationValue(from rawData: String) -> Int {
        
        var sum = 0
        
        guard rawData.contains("\n") else { return convertValue(rawData) }
        
        convertRawDataToValues(rawData: rawData)
        
        values.forEach { value in
            sum += convertValue(value)
        }
        return sum
    }
    
}

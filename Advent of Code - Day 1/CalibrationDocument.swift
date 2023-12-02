//
//  CalibrationDocument.swift
//  Advent of Code - Day 1
//
//  Created by Vito Borghi on 01/12/2023.
//

import Foundation

struct CalibrationDocument {
    

    static let spelledOutNumbers = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    
    static let conversionTable = [
        "one":"o1ne",
        "two":"t2wo",
        "three":"th3ree",
        "four":"fo4ur",
        "five":"fi5ve",
        "six":"si6x",
        "seven":"se7en",
        "eight":"eig8ht",
        "nine":"ni9ne"
    ]
    
    var values: [String] = []

    private func convertValue(_ input: String) -> Int {
        let first = input.filter{ $0.isNumber }.first.flatMap{ String($0) }
        let last = input.filter{ $0.isNumber }.last.flatMap{ String($0) }
        
        guard let first = first else { return -1 }
        guard let last = last else { return -1 }
                
        return Int(first+last) ?? -1
    }
    
    private mutating func convertRawDataToStrings(from rawData: String) {
        values = rawData.components(separatedBy: .newlines)
    }
    
    private mutating func convert(string value: String, Todigit number: String) -> String {
        value.replacingOccurrences(of: number, with: Self.conversionTable[number]!)
    }
    
    mutating func getCalibrationValue(from rawData: String) -> Int {
        var sum = 0
        convertRawDataToStrings(from: rawData)
        
        for i in 0..<values.count {
            
            Self.spelledOutNumbers.forEach { number in
                if values[i].contains(number) {
                    values[i] = convert(string: values[i], Todigit: number)
                }
            }

            sum += convertValue(values[i])
        }
        return sum
    }
}

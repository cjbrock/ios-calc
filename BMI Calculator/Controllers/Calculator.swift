//
//  Calculator.swift
//  BMI Calculator
//
//  Created by Corinna Moore on 6/4/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation

struct Calculator {
    var bmi: BMI?
    
    func getBMI() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    mutating func calculateBMI(_ height: Float, _ weight: Float){
        bmi?.value = weight / pow(height, 2)
    }
    
}




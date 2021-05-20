//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Samay Sagar on 20/5/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit
struct CalculatorBrain {
    var bmiValue: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmi = weight / pow(height,2)
        
        switch bmi {
        case ..<18.5:
            bmiValue = BMI(value: bmi, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        case 18.5...24.9:
            bmiValue = BMI(value: bmi, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        default:
            bmiValue = BMI(value: bmi, advice: "Eat less pies", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
        
    }
    
    func getBMI() -> String {
        let bmitoDec = String(format: "%.1f", bmiValue?.value ?? 0.0)
        return bmitoDec
    }
    
    func getAdvice() -> String {
        return bmiValue?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmiValue?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
}

//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Alicja Gruca on 08/05/2022.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(weight: Float, height: Float){
        let bmiValue = weight / (height * height)
        if bmiValue < 18.8 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor.blue)
        }
        else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: UIColor.green)
        }
        else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: UIColor.red)
        }
        
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    
}

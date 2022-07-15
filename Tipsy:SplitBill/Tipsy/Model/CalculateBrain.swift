//
//  calculateBrain.swift
//  Tipsy
//
//  Created by Alicja Gruca on 16/07/2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct CalculateBrain {
    var tipValue: Double = 0.1
    var numberOfPeople: Int = 2
    var billAmount: Double = 0.0
    var result: Double = 0.0
    
    
    mutating func setTipValue(tipValue: Double){
        self.tipValue = tipValue
    }
    
    mutating func setNumberOfPeople(numberOfPeople: Int){
        self.numberOfPeople = numberOfPeople
    }
    
    mutating func setBillAmount(billAmount: Double){
        self.billAmount = billAmount
    }
    
    mutating func getResult() -> String{
        result = billAmount * (1 + tipValue) / Double(numberOfPeople)
        return String(format: "%.2f", result)
    }
    
    
}

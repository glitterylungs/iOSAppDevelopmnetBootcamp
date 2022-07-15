//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var calculateBrain = CalculateBrain()

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroTipButton: UIButton!
    @IBOutlet weak var tenTipButton: UIButton!
    @IBOutlet weak var twentyTipButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!


    @IBAction func tipChanged(_ sender: UIButton) {
        //wyłączamy klawiature
        billTextField.endEditing(true)
        //odznaczamy wszystki buttony
        zeroTipButton.isSelected = false
        tenTipButton.isSelected = false
        twentyTipButton.isSelected = false
        // zaznaczamy ten kliknięty
        sender.isSelected = true
        var selectedButtonName = sender.title(for: .normal) ?? "0 "
        selectedButtonName.removeLast()
        calculateBrain.setTipValue(tipValue:(Double(selectedButtonName) ?? 0.0)/100)
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        let stepperValue = sender.value
        splitNumberLabel.text = String(format: "%.0f", stepperValue)
        calculateBrain.setNumberOfPeople(numberOfPeople: Int(stepperValue))
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {

        if billTextField.text != "" {
            calculateBrain.setBillAmount(billAmount: Double(billTextField.text!)!)
            
            self.performSegue(withIdentifier: "goToResult", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.resultValue = calculateBrain.getResult()
            destinationVC.numberOfPeople = calculateBrain.numberOfPeople
            destinationVC.tipValue = calculateBrain.tipValue
        }
            
        
    }
    
}



//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    
    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var zeroPctButton: UIButton!
    
    @IBOutlet weak var tenPctButton: UIButton!
    
    @IBOutlet weak var twentyPctButton: UIButton!
    
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    
  
    var tip : Double = 0.0
    var totalbill : Double = 0.0
    
    
    @IBAction func tipChanged(_ sender: UIButton)
    {
        let selected = sender.currentTitle!
        
        
        if( selected == "20%")
        {
            twentyPctButton.isSelected = true
            tenPctButton.isSelected = false
            zeroPctButton.isSelected = false
            tip = 0.20
            
        } else if(selected == "10%"){
                twentyPctButton.isSelected = false
                tenPctButton.isSelected = true
                zeroPctButton.isSelected = false
            tip = 0.10
        }
        else if(selected == "0%"){
                twentyPctButton.isSelected = false
                tenPctButton.isSelected = false
                zeroPctButton.isSelected = true
            tip = 0.0
        }
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
       
        splitNumberLabel.text = String(Int(sender.value))
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
     let myDouble =    ( ((Double(billTextField.text!)!) * Double(tip) ) + ((Double(billTextField.text!)!) ) ) / (Double(splitNumberLabel.text!)!)
        
        let doubleStr = String(format: "%.2f", myDouble)
        
        
    
        totalbill = Double(doubleStr)!
        //print(totalbill)
        
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
}



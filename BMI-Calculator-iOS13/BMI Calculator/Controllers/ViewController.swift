//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
        var heightValue = round(sender.value * 100) / 100
        print(heightValue)
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        var weightNumber = Int(sender.value)
        print(weightNumber)
        
    }
}


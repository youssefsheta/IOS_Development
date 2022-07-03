//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Youssef Walaa Sheta on 21/06/2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var settingsLabel: UILabel!
    
    let calculate = CalculatorViewController()
    override func viewDidLoad() {
        super.viewDidLoad()

       // totalLabel.text = calculate.billTextField.text!
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "returnToMain", sender: self)
       
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

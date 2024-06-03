//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let roundedValue = String(round(sender.value * 100)/100.0)
        heightLabel.text = "\(roundedValue)m"
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let roundedValue = String(Int(sender.value))
        weightLabel.text = "\(roundedValue)kg"
    }
}

